<%-- 
    Document   : maintainQueueList
    Created on : Feb 7, 2017, 7:34:01 PM
    Author     : shay
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<h4>Maintain Queue List
    <span class="pull-right">
        <a alt="Add Items" data-placement="top" data-toggle="modal" data-target="#list"><i class=" fa fa-plus" style=" padding-right: 5px;"></i></a>
    </span>
</h4>
<div id="QLdiv">
    <table class="table table-filter table-striped" style="background: #fff; border: 1px solid #ccc; "id="QLtable">
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
</table>
</div>

<script>
    $(document).ready(function(){
       $.ajax({
           type: "post",
           url: "listQueueList.jsp",
           timeout: 3000,
           success: function (returnHtml) {
               //console.log(returnHtml);
               $('#QLdiv').html(returnHtml);
                        
                    },error: function (jqXHR, textStatus, errorThrown) {
                        
                        console.log("ERROR: "+errorThrown);
                    }
       }); 
    });
</script>

