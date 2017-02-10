<%-- 
    Document   : queueListModal
    Created on : Feb 8, 2017, 11:00:34 AM
    Author     : shay
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- Modal Detail -->
<div class="modal fade" id="list" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"><i class="fa fa-times fa-lg"></i></button>
                <h3 class="modal-title" id="lineModalLabel">Maintain Queue List</h3>
            </div>
            <div class="modal-body">

                <!-- content goes here -->
                <form class="" >
                    <div class="form-group">
                        <select class="form-control">
                            <option>Queue Name</option>
                            <option>Active</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <select class="form-control">
                            <option>Select Staff to be assigned</option>
                            <option>Active</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <input type="text" class="form-control" placeholder="Health Facility">
                    </div>
                    <div class="form-group">
                        <input type="text" class="form-control" placeholder="Discipline">
                    </div>
                    <div class="form-group">
                        <input type="text" class="form-control" placeholder="Sub-Discipline">
                    </div>
                    <div class="form-group">
                        <input type="text" class="form-control" placeholder="Start date - YYYY-MM-DD">
                    </div>
                    <div class="form-group">
                        <input type="text" class="form-control" placeholder="End date - YYYY-MM-DD">
                    </div>
                    <div class="form-group">
                        <select class="form-control">
                            <option>Status</option>
                            <option>Active</option>
                        </select>
                    </div>
                </form>
                <!-- content goes here -->
            </div>
            <div class="modal-footer">
                <div class="btn-group btn-group-justified" role="group" aria-label="group button">
                    <div class="btn-group" role="group">
                        <button type="submit" class="btn btn-primary btn-block btn-lg" role="button">Save</button>
                    </div>
                    <div class="btn-group" role="group">
                        <button type="button" id="saveImage" class="btn btn-danger btn-block btn-lg" data-dismiss="modal" role="button">Delete</button>
                    </div>
                </div>
                </form>
            </div>
        </div>
    </div>
</div>
<!-- Modal -->