<%-- 
    Document   : saveQueueType
    Created on : Feb 8, 2017, 12:01:51 PM
    Author     : shay
--%>

<%@page import="main.RMIConnector"%>
<%@page import="dBConn.Conn"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Conn conn = new Conn();
    RMIConnector rmic = new RMIConnector();
    String code = request.getParameter("cd");
    String desc = request.getParameter("desc");
    String stat = request.getParameter("status");
    String uid = request.getParameter("user");
    String hfc = request.getParameter("hfc");
    String checkData = "select queue_type from pms_queue_type where queue_type='"+code+"'";
    String sql = "";
    Boolean operation = false;
    ArrayList<ArrayList<String>> resultCheck;
    
    resultCheck = conn.getData(checkData);
    if(resultCheck.size() < 1){
        sql = "insert into pms_queue_type( queue_type,queue_type_name,status,created_by,created_date,hfc_cd) values('"+code+"','"+desc+"','"+stat+"','"+uid+"',NOW(),'"+hfc+"');";
    }else{
        sql = "update pms_queue_type set queue_type_name = '"+desc+"',status = '"+stat+"',created_by = '"+uid+"',created_date = NOW(),hfc_cd='"+hfc+"' where queue_type = '"+code+"'";
    }
    operation = rmic.setQuerySQL(conn.HOST, conn.PORT, sql);
    out.print(operation);
%>
