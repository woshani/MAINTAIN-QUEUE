<%-- 
    Document   : system_admin
    Created on : Jan 19, 2017, 4:17:51 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="validateSession.jsp" %>
<!DOCTYPE html>
<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- header -->
    <div w3-include-html="libraries/header.html"></div>

    <!-- header -->
</head>

<body>
    <!-- menu top -->
    <div w3-include-html="libraries/topMenus.jsp"></div>

    <!-- menu top -->

    <div class="container-fluid">
        <div class="row">       
            <!-- menu side -->		
            <div w3-include-html="libraries/sideMenus.html"></div>
            <!-- menu side -->	

            <!-- main -->		
            <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main" style="background: #f2f4f8;">
                <div class="row">
                    <div class="col-md-6">
                        <a href="Lookup-Maintenance.jsp" class="thumbnail">
                            <div class="kotak text-center">
                                <i class="fa fa-search" aria-hidden="true" style="color: #333; font-size: 4em;"></i>
                                <h3>Lookup Code Maintenance</h3>
                            </div>
                        </a>
                    </div>
                    <div class="col-md-6">
                        <a href="user.jsp" class="thumbnail">
                            <div class="kotak text-center">
                                <i class="fa fa-users" aria-hidden="true" style="color: #333; font-size: 4em;"></i>
                                <h3>Maintain User Administration</h3>
                            </div>
                        </a>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-6">
                        <a href="" class="thumbnail">
                            <div class="kotak text-center">
                                <i class="fa fa-code" aria-hidden="true" style="color: #333; font-size: 4em;"></i>
                                <h3>CIS Code Maintenance</h3>
                            </div>
                        </a>
                    </div>
                    <div class="col-md-6">
                        <a href="" class="thumbnail">
                            <div class="kotak text-center">
                                <i class="fa fa-files-o" aria-hidden="true" style="color: #333; font-size: 4em;"></i>
                                <h3>Maintain Queue</h3>
                            </div>
                        </a>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-6">
                        <a href="Health_Facility_Maintenance.jsp" class="thumbnail">
                            <div class="kotak text-center">
                                <i class="fa fa-hospital-o" aria-hidden="true" style="color: #333; font-size: 4em;"></i>
                                <h3>Health Facility Code Maintenance</h3>
                            </div>
                        </a>
                    </div>
                    <div class="col-md-6">
                        <a href="" class="thumbnail">
                            <div class="kotak text-center">
                                <i class="fa fa-files-o" aria-hidden="true" style="color: #333; font-size: 4em;"></i>
                                <h3>?????</h3>
                            </div>
                        </a>
                    </div>
                </div>




            </div>

        </div>
        <!-- main -->		

    </div>
</div>



<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<div w3-include-html="libraries/script.html"></div>

<script src="http://www.w3schools.com/lib/w3data.js"></script>
<script>
    w3IncludeHTML();
</script>



</body></html>
