package com.example.servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

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
        List<Data> dataList = new ArrayList<>();

        try {
            Class.forName("com.mysql.cj.jdbc.Driver"); // Load the MySQL JDBC driver
            conn = DriverManager.getConnection(jdbcUrl, username, password);

            String sql = "SELECT * FROM employee;";
            statement = conn.prepareStatement(sql);
            resultSet = statement.executeQuery();

            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String name = resultSet.getString("name");
                String address = resultSet.getString("address");
                String salary = resultSet.getString("salary");

                Data data = new Data(id, name, address, salary); // Create Data object
                dataList.add(data); // Add to list
            }

            // Set the list as a request attribute
            request.setAttribute("dataList", dataList);

            // Forward the request to the JSP
            request.getRequestDispatcher("/displayData.jsp").forward(request, response);

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
