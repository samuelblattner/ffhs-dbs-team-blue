package ch.ffhs.starview.bookings;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.TextField;
import javafx.scene.layout.VBox;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionPane {
    @FXML
    public TextField connectionTextField;
    private IConnectionHandler connectionHandler;

    public void setConnectionHandler(IConnectionHandler handler) {
        connectionHandler = handler;
    }

    @FXML
    public void handleConnectAction(ActionEvent actionEvent) {
        try {
            Connection connection = DriverManager.getConnection(connectionTextField.getText());
            this.connectionHandler.setConnection(connection);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @FXML
    public void handleDefaultServerAction(ActionEvent actionEvent) {
        connectionTextField.setText("jdbc:mysql://86.119.36.10:41337/starview_robin?" +
                "user=robin&" +
                "password=ejNT3~K:8x*N&" +
                "useSSL=false&" +
                "useUnicode=true&" +
                "useJDBCCompliantTimezoneShift=true&" +
                "useLegacyDatetimeCode=false&" +
                "serverTimezone=UTC");
    }
}
