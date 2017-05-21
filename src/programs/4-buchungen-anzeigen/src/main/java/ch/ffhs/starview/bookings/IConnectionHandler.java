package ch.ffhs.starview.bookings;

import java.sql.Connection;

public interface IConnectionHandler {
    void setConnection(Connection connection);
}
