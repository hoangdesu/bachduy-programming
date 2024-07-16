module com.leagueclientjavafx {
    requires javafx.controls;
    requires javafx.fxml;
    requires javafx.media;
    requires org.json;

    opens com.leagueclientjavafx to javafx.fxml;
    exports com.leagueclientjavafx;
    exports com.leagueclientjavafx.controller;
    opens com.leagueclientjavafx.controller to javafx.fxml;
    exports com.leagueclientjavafx.model;
}