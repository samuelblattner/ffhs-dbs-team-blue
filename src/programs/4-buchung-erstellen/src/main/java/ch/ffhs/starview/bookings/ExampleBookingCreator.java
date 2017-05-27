package ch.ffhs.starview.bookings;

import org.jetbrains.annotations.Nullable;

import java.sql.*;
import java.util.ArrayList;

/**
 * Creates a booking
 */
public class ExampleBookingCreator implements Runnable {

    private static final String roomType = "Doppelzimmer";
    private static final Date checkin = Date.valueOf("2017-02-12");
    private static final Date checkout = Date.valueOf("2017-02-18");
    private static final String connectionString = "jdbc:mysql://86.119.36.10:41337/starview_robin?" +
                                                   "user=robin&" +
                                                   "password=ejNT3~K:8x*N&" +
                                                   "useSSL=false&" +
                                                   "useUnicode=true&" +
                                                   "useJDBCCompliantTimezoneShift=true&" +
                                                   "useLegacyDatetimeCode=false&" +
                                                   "serverTimezone=UTC";

    private Connection connection;

    ExampleBookingCreator() {
    }

    @Override
    public void run() {
        this.connection = connectDatabase();
        ArrayList<Integer> ids = this.getAvailableRooms();
        this.createBooking(ids);
    }

    private void createBooking(ArrayList<Integer> ids) {
        try {
            this.connection.setAutoCommit(false);
            this.connection.setSavepoint("read");
            PreparedStatement statement = this.connection.prepareStatement(
                    "SELECT DISTINCT r.name AS 'name', r.id AS 'id' FROM room AS r" +
                    "  INNER JOIN room_type AS rt ON r.room_type_id = rt.id AND rt.name = ?" +
                    "  RIGHT JOIN booking_room AS br ON r.id = br.room_id" +
                    "  RIGHT JOIN booking AS b ON br.booking_id = b.id" +
                    "  WHERE (b.checkin <= ?) AND (b.checkout >= ?) AND r.id = ?" +
                    "  FOR UPDATE;"
            );
            statement.setString(1, roomType);
            statement.setDate(2, checkout);
            statement.setDate(3, checkin);

            int roomId = ids.get(0);
            statement.setInt(4, roomId);

            PreparedStatement insertStatement = this.connection.prepareStatement(
                    "INSERT INTO booking " +
                    "(checkin, checkout, valid_until) VALUES" +
                    "(?, ?, DATE_ADD(NOW(), INTERVAL 15 MINUTE));"
            );

            insertStatement.setDate(1, checkin);
            insertStatement.setDate(2, checkout);
            insertStatement.executeQuery();

            ResultSet result = this.connection.prepareStatement("SELECT LAST_INSERT_ID();").executeQuery();
            result.next();
            int bookingId = result.getInt(1);

            insertStatement = this.connection.prepareStatement(
                    "INSERT INTO booking_room" +
                    "(booking_id, room_id) VALUES" +
                    "(?, ?);"
            );

            insertStatement.setInt(1, bookingId);
            insertStatement.setInt(2, roomId);
            insertStatement.executeQuery();
            this.connection.commit();
        } catch (SQLException e) {
            System.err.println("Couldn't create booking");
            System.err.println(e.toString());
        }
    }

    private ArrayList<Integer> getAvailableRooms() {
        ArrayList<Integer> returnValue = new ArrayList<Integer>();
        try {
            PreparedStatement statement = this.connection.prepareStatement(
                    "SELECT DISTINCT r.name AS 'name', r.id AS 'id' FROM room AS r" +
                    "  INNER JOIN room_type AS rt ON r.room_type_id = rt.id AND rt.name = ?" +
                    "  RIGHT JOIN booking_room AS br ON r.id = br.room_id" +
                    "  RIGHT JOIN booking AS b ON br.booking_id = b.id" +
                    "  WHERE (b.checkin <= ?) AND (b.checkout >= ?)"
            );
            statement.setString(1, roomType);
            statement.setDate(2, checkout);
            statement.setDate(3, checkin);

            ResultSet result = statement.executeQuery();
            while(result.next()) {
                String name = result.getString("name");
                int id = result.getInt("id");
                System.out.println(String.format("Found available room %s with ID %d", name, id));
                returnValue.add(id);
            }
        } catch (SQLException e) {
            System.err.println("Couldn't create statement to find available rooms.");
            System.err.println(e.toString());
        }
        return returnValue;
    }

    @Nullable
    private Connection connectDatabase() {
        try {
            return DriverManager.getConnection(connectionString);
        } catch (SQLException e) {
            System.err.println("Couldn't connect database.");
            System.err.println(e.toString());
        }
        return null;
    }
}
