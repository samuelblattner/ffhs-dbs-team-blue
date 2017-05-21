package ch.ffhs.starview.bookings;

import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.scene.layout.Pane;

public class MainForm{
    @FXML
    private Pane content;

    @FXML
    private void initialize() throws Exception {
        Pane connectionPane = FXMLLoader.load(getClass().getResource("ConnectionPane.fxml"));
        setContent(connectionPane);
    }

    public void setContent(Pane content) {
        this.content.getChildren().clear();
        this.content.getChildren().add(content);
        content.prefWidthProperty().bind(this.content.widthProperty());
        content.prefHeightProperty().bind(this.content.heightProperty());
        this.content = content;
    }
}
