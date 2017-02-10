<%-- 
    Document   : saveQueueName
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
    String name = request.getParameter("name");
    String desc = request.getParameter("desc");
    String userid = request.getParameter("uid");
    String quota = request.getParameter("quota");
    String createdBy = request.getParameter("createdBy");
    String status = request.getParameter("status");
    String hfc = request.getParameter("hfc");
    String checkData = "select queue_type from pms_queue_name where queue_type='"+code+"' and queue_name='"+name+"'";
    String sql = "";
    Boolean operation = false;
    ArrayList<ArrayList<String>> resultCheck;
    
    resultCheck = conn.getData(checkData);
    if(resultCheck.size() < 1){
        sql = "insert into pms_queue_name( queue_type,queue_name,queue_description,user_id,quota,status,created_by,created_date,hfc_cd) values('"+code+"','"+name+"','"+desc+"','"+userid+"','"+quota+"','"+status+"','"+createdBy+"',NOW(),'"+hfc+"');";
    }else{
        sql = "update pms_queue_name set queue_description = '"+desc+"',user_id = '"+userid+"',quota ='"+quota+"',status = '"+status+"',created_by ='"+createdBy+"',created_date = NOW(),hfc_cd ='"+hfc+"' where queue_type = '"+code+"' and queue_name='"+name+"'";
    }
    operation = rmic.setQuerySQL(conn.HOST, conn.PORT, sql);
    out.print(operation);
%>
