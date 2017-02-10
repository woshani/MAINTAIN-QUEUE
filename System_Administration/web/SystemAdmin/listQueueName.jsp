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
    String hfcN = session.getAttribute("HEALTH_FACILITY_CODE").toString();
    String sql = "select queue_type,queue_name,queue_description,user_id,quota,status,created_by,created_date,hfc_cd,discipline_code,subdiscipline_code from pms_queue_name where hfc_cd = '"+hfcN+"'";
    ArrayList<ArrayList<String>> dataQN;
    dataQN = conn.getData(sql);
%>
<table class="table table-filter table-striped" style="background: #fff; border: 1px solid #ccc;" id="QNtable">
        <thead>
        <th>Queue Type Code</th>
        <th>Queue Name Code</th>
        <th>Staff ID</th>
        <th>Description</th>
        <th>Quota</th>
        <th>Status</th>
        <th>Created by</th>
        <th>Created date</th>
        <th>Health Facility</th>
        <th>Discipline</th>
        <th>Sub-discipline</th>
        </thead>
        <tbody>
            <%
                for(int i = 0;i< dataQN.size();i++){%>
                 <tr data-status="pagado" data-toggle="modal" data-id="1" data-target="#names">
                    <td id="tyCd"><%=dataQN.get(i).get(0) %></td>
                    <td id="nmCd"><%=dataQN.get(i).get(1) %></td>
                    <td id="id"><%=dataQN.get(i).get(3) %></td>
                    <td id="desc"><%=dataQN.get(i).get(2) %></td>
                    <td id="quota"><%=dataQN.get(i).get(4) %></td>
                    <td id="status23"><%=dataQN.get(i).get(5) %></td>
                    <td id="createdBy"><%=dataQN.get(i).get(6) %></td>
                    <td id="createdDate"><%=dataQN.get(i).get(7) %></td>
                    <td id="hfc"><%=dataQN.get(i).get(8) %></td>
                    <td id="disipline"><%=dataQN.get(i).get(9) %></td>
                    <td id="subdicipline"><%=dataQN.get(i).get(10) %></td>
                </tr>
                <%
                }
            %>
        </tbody>
    </table>
