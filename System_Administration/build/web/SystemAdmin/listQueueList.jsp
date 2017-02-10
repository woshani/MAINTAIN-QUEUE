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

    String sql = "select l.queue_type,l.queue_name,l.user_id,l.start_date,l.end_date,l.hfc_cd,l.discipline_cd,l.sub_discipline_cd,l.status,u.user_name,h.description from pms_queue_list l inner join adm_lookup_detail h on h.detail_reference_code = l.hfc_cd inner join adm_user u  on u.user_id = l.user_id;";
    ArrayList<ArrayList<String>> dataQL;
    dataQL = conn.getData(sql);
%>
<table class="table table-filter table-striped" style="background: #fff; border: 1px solid #ccc;" id="QLtable">
    <thead>
    <th>Queue Name</th>
    <th>Staff Name</th>
    <th>Health Facility</th>
    <th>Discipline</th>
    <th>Sub-Discipline</th>
    <th>Start Date</th>
    <th>End Date</th>
    <th>Status</th>
</thead>
<tbody>
    <%
    for (int i = 0; i < dataQL.size(); i++) {%>
    <tr data-status="pagado" data-toggle="modal" data-id="1" data-target="#list">
        <td><%=dataQL.get(i).get(1)%></td>
        <td><%=dataQL.get(i).get(9)%></td>
        <td hidden="true" id="userID"><%=dataQL.get(i).get(2)%></td>
        <td><%=dataQL.get(i).get(10)%></td>
        <td hidden="true" id="hfcCd"><%=dataQL.get(i).get(5)%></td>
        <td><%=dataQL.get(i).get(6)%></td>
        <td><%=dataQL.get(i).get(7)%></td>
        <td><%=dataQL.get(i).get(3)%></td>
        <td><%=dataQL.get(i).get(4)%></td>
        <td><%=dataQL.get(i).get(8)%></td>
    </tr>
    <%
        }
    %>
</tbody>
</table>
