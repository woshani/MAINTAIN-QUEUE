<%-- 
    Document   : listQueueType
    Created on : Feb 8, 2017, 11:09:35 AM
    Author     : shay
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="Config.Config"%>
<%@page import="dBConn.Conn"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    
    Config.getBase_url(request);
    Config.getFile_url(session);
    Conn conn = new Conn();
    String hfcL = session.getAttribute("HEALTH_FACILITY_CODE").toString();
    String sql = "select queue_type,queue_type_name,status,created_by,created_date,hfc_cd,discipline_code,subdiscipline_code from pms_queue_type where hfc_cd = '"+hfcL+"'";
    ArrayList<ArrayList<String>> dataQT;
    dataQT = conn.getData(sql);
%>
<table class="table table-filter table-striped" style="background: #fff; border: 1px solid #ccc;" id="QTtable">
        <thead>
        <th>Queue Type Code</th>
        <th>Description</th>
        <th>Status</th>
        <th>Created by</th>
        <th>Created date</th>
        <th>HFC</th>
        <th>Discipline</th>
        <th>Subdicipline</th>
        </thead>
        <tbody>
            <%
                for(int i = 0;i< dataQT.size();i++){%>
                 <tr data-status="pagado" data-toggle="modal" data-id="1" data-target="#type">
                    <td id="cd"><%=dataQT.get(i).get(0)%></td>
                    <td id="desc"><%=dataQT.get(i).get(1) %></td>
                    <td id="stat"><%=dataQT.get(i).get(2) %></td>
                    <td id="by"><%=dataQT.get(i).get(3) %></td>
                    <td><%=dataQT.get(i).get(4) %></td>
                    <td><%=dataQT.get(i).get(5) %></td>
                    <td><%=dataQT.get(i).get(6) %></td>
                    <td><%=dataQT.get(i).get(7) %></td>
                </tr>
                <%
                }
            %>
        </tbody>
    </table>
