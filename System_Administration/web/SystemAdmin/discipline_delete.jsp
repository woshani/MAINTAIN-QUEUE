<%-- 
    Document   : discipline_delete
    Created on : Feb 3, 2017, 6:34:44 PM
    Author     : user
--%>

<%@page import="Config.Config"%>
<%@page import="dBConn.Conn"%>
<%@page import="main.RMIConnector"%>
<%@page import="java.sql.*"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%
    Conn conn = new Conn();

    String id = request.getParameter("disciplineCode");

    RMIConnector rmic = new RMIConnector();
    String sql = "DELETE FROM adm_discipline WHERE discipline_cd = '" + id + "' ";

    boolean status = rmic.setQuerySQL(conn.HOST, conn.PORT, sql);

    if (status == true) {
        out.print("Success");
    } else {
        out.print("Failed");
    }
%>