package ch.ffhs.starview.bookings;

import javafx.beans.property.SimpleStringProperty;
import javafx.beans.value.ObservableValue;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.DatePicker;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.util.Callback;

import java.sql.*;
import java.time.ZoneId;
import java.util.ArrayList;

public class BookingsPane implements IConnectionHandler {
    @FXML
    public DatePicker from;

    @FXML
    public DatePicker to;

    @FXML
    public TableView result;

    private Connection connection;

    @Override
    public void setConnection(Connection connection) {
        this.connection = connection;
    }

    @FXML
    public void handleQuery(ActionEvent actionEvent) {
        try {
            PreparedStatement statement = this.connection.prepareStatement(
                    "SELECT p.forename, p.surname, b.checkin, b.checkout FROM booking AS b" +
                    "  LEFT JOIN person AS p ON b.responsible_person_id = p.id" +
                    "  WHERE (b.checkin <= ?) AND (b.checkout >= ?);");
            statement.setDate(1,  new Date(Date.from(to.getValue().atStartOfDay(ZoneId.systemDefault()).toInstant()).getTime()));
            statement.setDate(2,  new Date(Date.from(from.getValue().atStartOfDay(ZoneId.systemDefault()).toInstant()).getTime()));
            ResultSet statementResult = statement.executeQuery();
            setResultTableView(statementResult);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    private void setResultTableView(ResultSet resultSet) throws SQLException {
        ObservableList<Object> resultData = FXCollections.observableArrayList();
        ResultSetMetaData metaData = resultSet.getMetaData();

        ArrayList<TableColumn> columns = new ArrayList<>();
        for(int columnIndex = 0; columnIndex < metaData.getColumnCount(); columnIndex++) {
            TableColumn column = new TableColumn(metaData.getColumnName(columnIndex + 1));
            int finalColumnIndex = columnIndex;
            column.setCellValueFactory(new Callback<TableColumn.CellDataFeatures<ObservableList,String>,ObservableValue<String>>(){
                public ObservableValue<String> call(TableColumn.CellDataFeatures<ObservableList, String> param) {
                    return new SimpleStringProperty(param.getValue().get(finalColumnIndex).toString());
                }
            });

            columns.add(column);
        }
        result.getColumns().setAll(columns);

        while(resultSet.next()) {
            ObservableList<String> row = FXCollections.observableArrayList();
            for(int columnIndex=1 ; columnIndex<=metaData.getColumnCount(); columnIndex++){
                row.add(resultSet.getString(columnIndex));
            }
            resultData.add(row);
        }
        result.setItems(resultData);
    }
}
