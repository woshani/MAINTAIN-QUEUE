<%-- 
    Document   : queueTypeModal
    Created on : Feb 8, 2017, 10:58:59 AM
    Author     : shay
--%>
<%
    String user_id = session.getAttribute("USER_ID").toString();
    String hfc = session.getAttribute("HEALTH_FACILITY_CODE").toString();
//    out.print(session.getAttribute("USER_ID"));
    //out.print("-------------------------------------------------------------------------------"+session.getAttribute("HEALTH_FACILITY_CODE"));
//    out.print(session.getAttribute("USER_NAME"));
//    out.print(session.getAttribute("OCCUPATION_CODE"));
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- Modal Type -->
<div class="modal fade" id="type" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"><i class="fa fa-times fa-lg"></i></button>
                <h3 class="modal-title" id="lineModalLabel">Maintain Queue Type</h3>
            </div>
            <div class="modal-body">

                <!-- content goes here -->
                <form class="" id="Tform">
                    <div class="form-group">
                        <div>
                            <label for="typeCode">Queue Type Code *: </label>
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-control" placeholder="Queue Type Code " id="typeCode" maxlength="30">
                        </div>
                    </div>
                    <div>
                        <div>
                            <label for="typeDesc">Queue Type Description: </label>
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-control" placeholder="Queue Type Description" id="typeDesc" maxlength="200">
                        </div>
                    </div>

                    <div>
                        <div>
                            <label for="typeStat">Status *: </label>
                        </div>
                        <div class="form-group">
                            <select class="form-control" id="typeStat">
                                <option selected="" disabled="">Please Choose Status </option>
                                <option>Active</option>
                                <option>Inactive</option>
                            </select>
                        </div>
                    </div>
                </form>
                <!-- content goes here -->
            </div>
            <div class="modal-footer">
                <div class="btn-group btn-group-justified" role="group" aria-label="group button">
                    <div class="btn-group" role="group">
                        <button id="saveType" class="btn btn-primary btn-block btn-lg" role="button" data-dismiss="modal" >Save</button>
                    </div>
                    <div class="btn-group" role="group">
                        <button  id="delType" class="btn btn-danger btn-block btn-lg" data-dismiss="modal" role="button" data-dismiss="modal">Delete</button>
                    </div>
                </div>
                </form>
            </div>
        </div>
    </div>
</div>
<!-- Modal -->
<script>
    $('#saveType').on('click', function () {
        var code = $('#typeCode').val();
        var desc = $('#typeDesc').val();
        var stat = $('#typeStat').val();
        
        var uid = "<%=user_id%>";
        var hfc = "<%=hfc%>";
        console.log(hfc);
        var data = {cd: code,
            desc: desc,
            status: stat,
            user : uid,
            hfc : hfc
        };

        if (code === "" || stat === null) {
            bootbox.alert("Please Fill in the Compulsory input");
        } else {
            $.ajax({
                type: "post",
                url: "saveQueueType.jsp",
                data: data,
                timeout: 3000,
                success: function (data, textStatus, jqXHR) {
                    console.log(data);
                    bootbox.alert("Queue Type successfully been saved");
                    $.ajax({
                        type: "post",
                        url: "listQueueType.jsp",
                        timeout: 3000,
                        success: function (returnHtml) {
                            //console.log(returnHtml);
                            $('#QTdiv').html(returnHtml);

                        }, error: function (jqXHR, textStatus, errorThrown) {

                            console.log("ERROR: " + errorThrown);
                        }
                    });
                }, error: function (jqXHR, textStatus, errorThrown) {

                }
            });
        }




    });
    $('#delType').on('click', function () {

        var code = $('#typeCode').val();
        $.ajax({
            type: "post",
            url: "delQueueType.jsp",
            data: {"cd": code},
            timeout: 3000,
            success: function (data, textStatus, jqXHR) {
                console.log(data);
                bootbox.alert("Queue Type successfully been deleted");
                $.ajax({
                    type: "post",
                    url: "listQueueType.jsp",
                    timeout: 3000,
                    success: function (returnHtml) {
                        //console.log(returnHtml);
                        $('#QTdiv').html(returnHtml);

                    }, error: function (jqXHR, textStatus, errorThrown) {

                        console.log("ERROR: " + errorThrown);
                    }
                });
            }, error: function (jqXHR, textStatus, errorThrown) {

            }
        });
    });
</script>