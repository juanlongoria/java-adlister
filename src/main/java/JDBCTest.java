import com.mysql.jdbc.Driver;

import java.sql.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


public class JDBCTest {
    private static List<String> getEmployerFirstNames(int numberOfNames) {
        List<String> firstNames = new ArrayList<>();

        try {
            // #1 Establish your Driver Connection
            DriverManager.registerDriver(new Driver());
            Connection connection = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/employees?allowPublicKeyRetrieval=true&useSSL=false",
                    "root",
                    "codeup"
            );

        // #2 Create statement object.

        Statement stmt = connection.createStatement();

        //3. Write your query in a string.

        String query = "SELECT first_name FROM employees LIMIT " + numberOfNames;

        //#4 Execute the query.
        //.executeQuery(String query) returns a ResultSet object. Mainly used for SELECT statements.
        //.execute(String query) - returns a boolean confirming whether or not the query was executed.
        //.executeUpdate(String query) - returns the number of rows that were affected.
        ResultSet rs = stmt.executeQuery(query);


        // #5 Handle the ResultSet
        while(rs.next()) {
            firstNames.add(rs.getString("first_name"));
        }

        } catch(SQLException e) {
            e.printStackTrace();
    }
    return firstNames;
    }

    public static void main(String[] args) {
        System.out.println(getEmployerFirstNames(15));
    }


}
