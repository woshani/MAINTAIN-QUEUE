<%-- 
    Document   : healthFacility_main
    Created on : Feb 6, 2017, 4:38:38 PM
    Author     : user
--%>

<!-- Add Part Start -->
<!-- Add Button Start -->
<h4 style="padding-top: 30px;padding-bottom: 35px; font-weight: bold">
    HEALTH FACILITY MANAGEMENT
    <span class="pull-right">
        <button id="HFM_btnAddNew" class="btn btn-success" data-status="pagado" data-toggle="modal" data-id="1" data-target="#HFM_detail" style=" padding-right: 10px;padding-left: 10px;color: white;"><a data-toggle="tooltip" data-placement="top" title="Add Items" id="test"><i class=" fa fa-plus" style=" padding-right: 10px;padding-left: 10px;color: white;"></i></a>ADD Health Facility</button>
    </span>
</h4>
<!-- Add Button End -->


<!-- Add Modal Start -->
<div class="modal fade" id="HFM_detail" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
    <div class="modal-dialog" style="width: 60%">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"><i class="fa fa-times fa-lg" style="color: red"></i></button>
                <h3 class="modal-title" id="lineModalLabel">Add New Health Facility</h3>
            </div>
            <div class="modal-body">
                <form class="form-horizontal">
                    <div class="row">
                        <div class="col-md-12">
                            <!-- Text input-->
                            <div class="form-group" >
                                <label class="col-md-2 control-label" for="textinput">Health Facility Name</label>
                                <div class="col-md-8">
                                    <input type="text"  class="form-control" id="HFM_hfcName" placeholder="Name" maxlength="30"> 
                                </div>
                            </div>
                            
                            <!-- Text input-->
                            <div class="form-group" >
                                <label class="col-md-2 control-label" for="textinput">Health Facility Code</label>
                                <div class="col-md-8">
                                    <input type="text"  class="form-control" id="HFM_hfcCode" placeholder="Health Facility Code" maxlength="30">   
                                </div>
                            </div>
                            
                            <!-- Text input-->
                            <div class="form-group" >
                                <label class="col-md-2 control-label" for="textinput">Address-1</label>
                                <div class="col-md-10">
                                    <input type="text"  class="form-control" id="HFM_address1" placeholder="Address" maxlength="40">   
                                </div>
                            </div>
                            
                             <!-- Text input-->
                            <div class="form-group" >
                                <label class="col-md-2 control-label" for="textinput">Address-2</label>
                                <div class="col-md-10">
                                    <input type="text"  class="form-control" id="HFM_address2" placeholder="Address" maxlength="40">   
                                </div>
                            </div>
                           
                        </div>
                        
                         <!--pembahagi form menjadi dua horizontal-->
                        
                        <div class="col-md-6">
                            
                             <!-- Text input-->
                            <div class="form-group">
                                <label class="col-md-4 control-label" for="textinput">State</label>
                                <div class="col-md-8">
                                    <input id="HFM_state" maxlength="30"  type="text" placeholder="state" class="form-control input-md">
                                </div>
                            </div>
                             
                            <!-- Text input-->
                            <div class="form-group">
                                <label class="col-md-4 control-label" for="textinput">Postcode</label>
                                <div class="col-md-8">
                                    <input id="HFM_postcode" maxlength="30"  type="number" placeholder="postcode" class="form-control input-md">
                                </div>
                            </div> 
                            
                            <!-- Text input-->
                            <div class="form-group">
                                <label class="col-md-4 control-label" for="textinput">Fax No</label>
                                <div class="col-md-8">
                                    <input id="HFM_faxNo" maxlength="30"  type="number" placeholder="Fax no" class="form-control input-md">
                                </div>
                            </div>
                            
                            <!-- Text input-->
                            <div class="form-group">
                                <label class="col-md-4 control-label" for="textinput">Server</label>
                                <div class="col-md-8">
                                    <input id="HFM_server" maxlength="30"  type="text" placeholder="Health Facility Server" class="form-control input-md">
                                </div>
                            </div>
                            
                            <!-- Text input-->
                            <div class="form-group">
                                <label class="col-md-4 control-label" for="textinput">Category</label>
                                <div class="col-md-8">
                                    <input id="HFM_category" maxlength="30"  type="text" placeholder="Health Facility Category" class="form-control input-md">
                                </div>
                            </div>
                            
                            <!-- Text input-->
                            <div class="form-group">
                                <label class="col-md-4 control-label" for="textinput">Director Name</label>
                                <div class="col-md-8">
                                    <input id="HFM_director" maxlength="100"  type="text" placeholder="Director Name" class="form-control input-md">
                                </div>
                            </div>
                            
                        </div>
                        
                        <!--pembahagi form menjadi dua vertical-->
                        
                        <div class="col-md-6">
                            
                             <!-- Text input-->
                            <div class="form-group">
                                <label class="col-md-4 control-label" for="textinput">District</label>
                                <div class="col-md-8">
                                    <input id="HFM_district" maxlength="30"  type="text" placeholder="District" class="form-control input-md">
                                </div>
                            </div>
                             
                            <!-- Text input-->
                            <div class="form-group">
                                <label class="col-md-4 control-label" for="textinput">Tel No</label>
                                <div class="col-md-8">
                                    <input id="HFM_telNo" maxlength="30"  type="number" placeholder="Telephone Number" class="form-control input-md">
                                </div>
                            </div> 
                            
                            <!-- Text input-->
                            <div class="form-group">
                                <label class="col-md-4 control-label" for="textinput">Email</label>
                                <div class="col-md-8">
                                    <input id="HFM_email" maxlength="100"  type="email" placeholder="state" class="form-control input-md">
                                </div>
                            </div>
                            
                            <!-- Text input-->
                            <div class="form-group">
                                <label class="col-md-4 control-label" for="textinput">Report to</label>
                                <div class="col-md-8">
                                    <input id="HFM_reportTo" maxlength="30"  type="text" placeholder="Resport to" class="form-control input-md">
                                </div>
                            </div>
                            
                            <!-- Text input-->
                            <div class="form-group">
                                <label class="col-md-4 control-label" for="textinput">Subtype</label>
                                <div class="col-md-8">
                                    <input id="HFM_subtype" maxlength="30"  type="text" placeholder="Health Facility Subtype" class="form-control input-md">
                                </div>
                            </div>
                            
                            <!-- Text input-->
                            <div class="form-group">
                                <label class="col-md-4 control-label" for="textinput">Status</label>
                                <div class="col-md-8">
                                    <select class="form-control"  id="HFM_status">
                                        <option  value="1" >Active</option>
                                        <option  value="0" >Inactive</option>
                                    </select>
                                </div>
                            </div>
                            
                        </div>
                    </div>

                </form>
                <hr/>

                                <!-- content goes here -->
            </div>
            <div class="modal-footer">
                <div class="btn-group btn-group-justified" role="group" aria-label="group button">
                    <div class="btn-group" role="group">
                        <button type="submit" class="btn btn-success btn-block btn-lg" role="button" id="HFM_btnAdd">Add</button>
                    </div>
                    <div class="btn-group" role="group">
                        <button type="reset" id="HFM_btnReset" class="btn btn-default btn-block btn-lg" role="button" >Reset</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Add Modal End -->                         
<!-- Add Part End -->


<script>

    w3IncludeHTML();

    $(document).ready(function () {

        var isDisCodeExist = false;

        function HFM_reset() {

            document.getElementById("HFM_hfcName").value = "";
            document.getElementById("SDM_subdisciplineName").value = "";
            document.getElementById("SDM_subdisciplineCode").value = "";
            document.getElementById("SDM_type").value = "";

        }

        $('#HFM_btnReset').on('click', function () {
            HFM_reset();

        });

        $('#HFM_btnAddNew').on('click', function () {

            isDisCodeExist = false;
            HFM_reset();

        });

        $('#HFM_btnAdd').on('click', function () {

            var disciplineCode = $('#HFM_hfcName').val();
            var subdisciplineName = $('#SDM_subdisciplineName').val();
            var subdisciplineCode = $('#SDM_subdisciplineCode').val();
            var type = $('#SDM_type').val();
            var status = $('#SDM_status').val();

            if (disciplineCode === "" || disciplineCode === "Select Discipline Code" || disciplineCode === null) {
                alert("Fill in the Discipline Code");
                $('#HFM_hfcName').focus();

            } else if (subdisciplineName === "") {
                alert("Fill in the subdiscipline name");
                $('#SDM_subdisciplineName').focus();

            } else if (subdisciplineCode === "") {
                alert("Fill in the subdiscipline code");
                $('#SDM_subdisciplineCode').focus();

            } else if (status !== "1" && status !== "0") {
                alert("Select Any Status");

            } else if (isDisCodeExist === false) {
                alert("Please choose existing discipline");
                $('#HFM_hfcName').val("");
                $('#HFM_hfcName').focus();

            } else {

                var arrayData = $('#HFM_hfcName').val().split("|");
                disciplineCode = arrayData[0].trim();


                var data = {
                    disciplineCode: disciplineCode,
                    subdisciplineName: subdisciplineName,
                    subdisciplineCode: subdisciplineCode,
                    type: type,
                    status: status
                };

                $.ajax({
                    url: "subdiscipline_insert.jsp",
                    type: "post",
                    data: data,
                    timeout: 5000,
                    success: function (datas) {

                        if (datas.trim() === 'Success') {

                            $('#subdisciplineTable').load('subdiscipline_table.jsp');
                            $('#HFM_detail').modal('hide');
                            //alert("Insertion Success");
                            bootbox.alert({
                                message: "New subdiscipline is added",
                                title: "Process Result",
                                backdrop: true
                            });
                            reset();

                        } else if (datas.trim() === 'Failed') {

                            alert("Insertion failed!");
                            $('#HFM_detail').modal('hide');
                            reset();

                        } else {

                            //alert(datas.trim());
                            bootbox.alert({
                                message: datas.trim(),
                                title: "Process Result",
                                backdrop: true
                            });
                            $('#SDM_subdisciplineCode').val("");
                            $('#SDM_subdisciplineCode').focus();
                        }

                    },
                    error: function (err) {
                        console.log("Ajax Is Not Success: ");
                    }

                });
            }

        });

        $("#HFM_hfcName").on('keyup', function () { // everytime keyup event
            var input = $(this).val(); // We take the input value
            if (input.length >= 1) { // Minimum characters = 2 (you can change)
                $('#SDM_match').html('<img src="bootstrap-3.3.6-dist/image/ajax-loader.gif" />'); // Loader icon apprears in the <div id="SDM_match"></div>
                var dataFields = {input: input}; // We pass input argument in Ajax
                $.ajax({
                    type: "POST",
                    url: "SDM_result.jsp", // call the php file ajax/tuto-autocomplete.php
                    data: dataFields, // Send dataFields var
                    timeout: 3000,
                    success: function (dataBack) { // If success
                        $('#SDM_match').html(dataBack); // Return data (UL list) and insert it in the <div id="SDM_match"></div>
                        $('#SDM_matchList li').on('click', function () { // When click on an element in the list
                            //$('#HFM_hfcName').text($(this).text()); // Update the field with the new element
                            $('#HFM_hfcName').val($(this).text());
                            $('#SDM_match').text(''); // Clear the <div id="SDM_match"></div>
                            var arrayData = $('#HFM_hfcName').val().split("|");
                            isDisCodeExist = true;
                            console.log(arrayData);
                            console.log(arrayData[0].trim());
                            console.log(arrayData[1].trim());
                        });
                    },
                    error: function () { // if error
                        $('#SDM_match').text('Problem!');
                    }
                });
            } else {
                $('#SDM_match').text(''); // If less than 2 characters, clear the <div id="SDM_match"></div>
            }
        });



    });



</script>

