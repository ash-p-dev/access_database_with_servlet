package com.example.servlets;

import java.io.IOException;
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

@WebServlet("/EditServlet")
public class EditServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String jdbcUrl = "jdbc:mysql://localhost:3306/practise";
        String username = "root";
        String password = "root";

        int id = Integer.parseInt(request.getParameter("id"));

        Connection conn = null;
        PreparedStatement statement = null;
        ResultSet resultSet = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(jdbcUrl, username, password);

            String sql = "SELECT * FROM employee WHERE id=?";
            statement = conn.prepareStatement(sql);
            statement.setInt(1, id);
            resultSet = statement.executeQuery();

            if (resultSet.next()) {
                // Retrieve data from the ResultSet
                String name = resultSet.getString("name");
                String address = resultSet.getString("address");
                String salary = resultSet.getString("salary");

                // Store data in request scope to pass to edit.jsp
                request.setAttribute("id", id);
                request.setAttribute("name", name);
                request.setAttribute("address", address);
                request.setAttribute("salary", salary);

                // Forward to edit.jsp
                request.getRequestDispatcher("/edit.jsp").forward(request, response);
            } else {
                response.getWriter().println("Record not found for id=" + id);
            }

        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            response.getWriter().println("Error fetching record: " + e.getMessage());
        } finally {
            try { if (resultSet != null) resultSet.close(); } catch (SQLException e) { e.printStackTrace(); }
            try { if (statement != null) statement.close(); } catch (SQLException e) { e.printStackTrace(); }
            try { if (conn != null) conn.close(); } catch (SQLException e) { e.printStackTrace(); }
        }
    }
}
