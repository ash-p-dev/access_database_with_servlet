package com.example.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/GetDataServlet")
public class GetDataServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String jdbcUrl = "jdbc:mysql://localhost:3306/practise";
        String username = "root";
        String password = "root";

        Connection conn = null;
        PreparedStatement statement = null;
        ResultSet resultSet = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver"); // Load the MySQL JDBC driver
            conn = DriverManager.getConnection(jdbcUrl, username, password);

            String sql = "SELECT * FROM employee;";
            statement = conn.prepareStatement(sql);
            resultSet = statement.executeQuery();

            PrintWriter out = response.getWriter();
            out.println("<html><body>");
            out.println("<h2>Database Data:</h2>");
            out.println("<button onclick=\"window.location.href='AddUser.jsp';\">Add New User</button>");
            out.println("<table border='1'>");
            out.println("<tr><th>ID</th><th>Name</th><th>Address</th><th>Salary</th><th>Actions</th></tr>");

            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String name = resultSet.getString("name");
                String address = resultSet.getString("address");
                String salary = resultSet.getString("salary");

                out.println("<tr>");
                out.println("<td>" + id + "</td>");
                out.println("<td>" + name + "</td>");
                out.println("<td>" + address + "</td>");
                out.println("<td>" + salary + "</td>");
                out.println("<td>");
                out.println("<form action='EditServlet' method='post'>");
                out.println("<input type='hidden' name='id' value='" + id + "'>");
                out.println("<input type='submit' value='Edit'>");
                out.println("</form>");
                out.println("<form action='DeleteServlet' method='post'>");
                out.println("<input type='hidden' name='id' value='" + id + "'>");
                out.println("<input type='submit' value='Delete'>");
                out.println("</form>");
                out.println("</td>");
                out.println("</tr>");
            }

            out.println("</table>");
            out.println("</body></html>");

        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            response.getWriter().println("Error connecting to database or executing query: " + e.getMessage());
        } finally {
            // Close resources in reverse order of their creation
            try { if (resultSet != null) resultSet.close(); } catch (SQLException e) { e.printStackTrace(); }
            try { if (statement != null) statement.close(); } catch (SQLException e) { e.printStackTrace(); }
            try { if (conn != null) conn.close(); } catch (SQLException e) { e.printStackTrace(); }
        }
    }
}
