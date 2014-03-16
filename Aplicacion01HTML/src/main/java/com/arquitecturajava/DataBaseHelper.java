package com.arquitecturajava;

import java.sql.Connection;
import java.sql.Statement;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DataBaseHelper {

	private static final String SERVER = "192.168.1.110:3306";

	private static final String DRIVER = "com.mysql.jdbc.Driver";
	private static final String URL = "jdbc:mysql://";
	private static final String DATABASE = "arquitecturajava";
	private static final String USER = "root";
	private static final String password = "java";

	public static int modificarRegistro(String sql) {
		Connection connection = null;
		Statement statement = null;
		int filaAfectadas = 0;
		try {
			Class.forName(DRIVER);
			connection = DriverManager.getConnection(URL + SERVER + "/"
					+ DATABASE, USER, password);
			statement = connection.createStatement();
			filaAfectadas = statement.executeUpdate(sql);
		} catch (ClassNotFoundException e) {
			System.out.println("Error driver : " + e.getMessage());
		} catch (SQLException e) {
			System.out.println("Error de SQL : " + e.getMessage());
		} finally {
			if (statement != null) {
				try {
					statement.close();
				} catch (SQLException e) {
				}
			}
			if (connection != null) {
				try {
					connection.close();
				} catch (SQLException e) {
				}
			}
		}
		return filaAfectadas;
	}

	public static ResultSet seleccionarRegistros(String sql) {
		Connection connection = null;
		Statement statement = null;
		ResultSet resultSet = null;
		try {
			Class.forName(DRIVER);
			connection = DriverManager.getConnection(URL + SERVER + "/"
					+ DATABASE, USER, password);
			statement = connection.createStatement();
			resultSet = statement.executeQuery(sql);
		} catch (ClassNotFoundException e) {
			System.out.println("Error driver : " + e.getMessage());
		} catch (SQLException e) {
			System.out.println("Error SQL : " + e.getMessage());
		}
		return resultSet;
	}
}
