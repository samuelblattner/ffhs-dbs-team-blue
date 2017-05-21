package ch.ffhs.starview.bookings;

import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.scene.layout.Pane;

import java.io.IOException;
import java.sql.Connection;

public class MainForm implements IConnectionHandler{
    @FXML
    private Pane content;

    @FXML
    private void initialize() throws Exception {
        FXMLLoader loader = new FXMLLoader(getClass().getResource("ConnectionPane.fxml"));
        Pane connectionPane = loader.load();
        ConnectionPane connectionPaneController = loader.getController();
        connectionPaneController.setConnectionHandler(this);
        setContent(connectionPane);
    }

    public void setContent(Pane content) {
        this.content.getChildren().clear();
        this.content.getChildren().add(content);
        content.prefWidthProperty().bind(this.content.widthProperty());
        content.prefHeightProperty().bind(this.content.heightProperty());
        this.content = content;
    }

    @Override
    public void setConnection(Connection connection) {
        try {
            FXMLLoader loader = new FXMLLoader(getClass().getResource("BookingsPane.fxml"));
            Pane bookingsPane = loader.load();
            BookingsPane bookingsPaneController = loader.getController();
            bookingsPaneController.setConnection(connection);
            setContent(bookingsPane);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
