<!DOCTYPE html>

<%@ page pageEncoding="UTF-8" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<html lang="vi">
<head>
    <link href='<c:url value="/resources/images/icon/favicon.png"/>' rel="shortcut icon" type="image/png">
    <meta charset="UTF-8">
    <meta content="IE=edge" http-equiv="X-UA-Compatible">
    <title>Người dùng | InFashion</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">

    <link rel="stylesheet" href="<c:url value="/resources/css/owl.carousel.css" />">
    <link rel="stylesheet" href='<c:url value="/resources/css/bootstrap.min.css"/>'>
    <link rel="stylesheet" href='<c:url value="/resources/css/font-awesome.min.css"/>'>
    <link rel="stylesheet" href='<c:url value="/resources/admin/css/ionicons.min.css"/>'>
    <link rel="stylesheet" href='<c:url value="/resources/admin/css/plugin/jquery.bootgrid.min.css"/>'>
    <link rel="stylesheet" href='<c:url value="/resources/admin/css/bootgrid.custom.css"/>'>
    <link rel="stylesheet" href='<c:url value="/resources/admin/css/admin-lte.min.css"/>'>
    <link rel="stylesheet" href='<c:url value="/resources/admin/css/skin-blue.min.css"/>'>
    <link rel="stylesheet" href='<c:url value="/resources/admin/css/infashion.css"/>'>
    <!--[if lt IE 9]>
    <script src='<c:url value="/resources/admin/js/html5/html5shiv.min.js"/>'></script>
    <script src='<c:url value="/resources/admin/js/respond/respond.min.js"/>'></script>
    <![endif]-->
</head>
<body class="skin-blue sidebar-mini fixed">
	<div class="wrapper">
	<header class="main-header">
       <!-- Logo -->
       <a class="logo" href="#">
           <!-- mini logo for sidebar mini 50x50 pixels -->
           <span class="logo-mini"><b>IF</b>A</span>
           <!-- logo for regular state and mobile devices -->
           <span class="logo-lg"><b>InFashion</b> Admin</span>
       </a>

       <!-- Header Navbar -->
       <nav role="navigation" class="navbar navbar-static-top">
           <!-- Sidebar toggle button-->
           <a role="button" data-toggle="offcanvas" class="sidebar-toggle" href="#">
               <span class="sr-only">Toggle navigation</span>
           </a>
           <!-- Navbar Right Menu -->
           <div class="navbar-custom-menu">
               <ul class="nav navbar-nav">
                   <!-- Messages: style can be found in dropdown.less-->
                   <li class="dropdown messages-menu">
                       <!-- Menu toggle button -->
                       <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                           <i class="fa fa-envelope-o"></i>
                           <span class="label label-success">4</span>
                       </a>
                       <ul class="dropdown-menu">
                           <li class="header">You have 4 messages</li>
                           <li>
                               <!-- inner menu: contains the messages -->
                               <div class="slimScrollDiv" style="position: relative; overflow: hidden; width: auto; height: 200px;"><ul class="menu" style="overflow: hidden; width: 100%; height: 200px;">
                                   <li><!-- start message -->
                                       <a href="#">
                                           <div class="pull-left">
                                               <!-- User Image -->
                                               
                                               <img alt="User Image" class="img-circle" src='<c:url value="/resources/admin/img/user2-160x160.jpg"/>'>
                                           </div>
                                           <!-- Message title and timestamp -->
                                           <h4>
                                               Support Team
                                               <small><i class="fa fa-clock-o"></i> 5 mins</small>
                                           </h4>
                                           <!-- The message -->
                                           <p>Why not buy a new awesome theme?</p>
                                       </a>
                                   </li><!-- end message -->
                               </ul><div class="slimScrollBar" style="background: rgb(0, 0, 0) none repeat scroll 0% 0%; width: 3px; position: absolute; top: 0px; opacity: 0.4; display: block; border-radius: 7px; z-index: 99; right: 1px;"></div><div class="slimScrollRail" style="width: 3px; height: 100%; position: absolute; top: 0px; display: none; border-radius: 7px; background: rgb(51, 51, 51) none repeat scroll 0% 0%; opacity: 0.2; z-index: 90; right: 1px;"></div></div><!-- /.menu -->
                           </li>
                           <li class="footer"><a href="#">See All Messages</a></li>
                       </ul>
                   </li><!-- /.messages-menu -->

                   <!-- Notifications Menu -->
                   <li class="dropdown notifications-menu">
                       <!-- Menu toggle button -->
                       <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                           <i class="fa fa-bell-o"></i>
                           <span class="label label-warning">10</span>
                       </a>
                       <ul class="dropdown-menu">
                           <li class="header">You have 10 notifications</li>
                           <li>
                               <!-- Inner Menu: contains the notifications -->
                               <div class="slimScrollDiv" style="position: relative; overflow: hidden; width: auto; height: 200px;"><ul class="menu" style="overflow: hidden; width: 100%; height: 200px;">
                                   <li><!-- start notification -->
                                       <a href="#">
                                           <i class="fa fa-users text-aqua"></i> 5 new members joined today
                                       </a>
                                   </li><!-- end notification -->
                               </ul><div class="slimScrollBar" style="background: rgb(0, 0, 0) none repeat scroll 0% 0%; width: 3px; position: absolute; top: 0px; opacity: 0.4; display: block; border-radius: 7px; z-index: 99; right: 1px;"></div><div class="slimScrollRail" style="width: 3px; height: 100%; position: absolute; top: 0px; display: none; border-radius: 7px; background: rgb(51, 51, 51) none repeat scroll 0% 0%; opacity: 0.2; z-index: 90; right: 1px;"></div></div>
                           </li>
                           <li class="footer"><a href="#">View all</a></li>
                       </ul>
                   </li>
                   <!-- Tasks Menu -->
                   <li class="dropdown tasks-menu">
                       <!-- Menu Toggle Button -->
                       <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                           <i class="fa fa-flag-o"></i>
                           <span class="label label-danger">9</span>
                       </a>
                       <ul class="dropdown-menu">
                           <li class="header">You have 9 tasks</li>
                           <li>
                               <!-- Inner menu: contains the tasks -->
                               <div class="slimScrollDiv" style="position: relative; overflow: hidden; width: auto; height: 200px;"><ul class="menu" style="overflow: hidden; width: 100%; height: 200px;">
                                   <li><!-- Task item -->
                                       <a href="#">
                                           <!-- Task title and progress text -->
                                           <h3>
                                               Design some buttons
                                               <small class="pull-right">20%</small>
                                           </h3>
                                           <!-- The progress bar -->
                                           <div class="progress xs">
                                               <!-- Change the css width attribute to simulate progress -->
                                               <div aria-valuemax="100" aria-valuemin="0" aria-valuenow="20" role="progressbar" style="width: 20%" class="progress-bar progress-bar-aqua">
                                                   <span class="sr-only">20% Complete</span>
                                               </div>
                                           </div>
                                       </a>
                                   </li><!-- end task item -->
                               </ul><div class="slimScrollBar" style="background: rgb(0, 0, 0) none repeat scroll 0% 0%; width: 3px; position: absolute; top: 0px; opacity: 0.4; display: block; border-radius: 7px; z-index: 99; right: 1px;"></div><div class="slimScrollRail" style="width: 3px; height: 100%; position: absolute; top: 0px; display: none; border-radius: 7px; background: rgb(51, 51, 51) none repeat scroll 0% 0%; opacity: 0.2; z-index: 90; right: 1px;"></div></div>
                           </li>
                           <li class="footer">
                               <a href="#">View all tasks</a>
                           </li>
                       </ul>
                   </li>
                   <!-- User Account Menu -->
                   <li class="dropdown user user-menu">
                       <!-- Menu Toggle Button -->
                       <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                           <!-- The user image in the navbar-->
                           <img alt="User Image" class="user-image" src='<c:url value="/resources/admin/img/user2-160x160.jpg"/>'>
                           <!-- hidden-xs hides the username on small devices so only the image appears. -->
                           <span class="hidden-xs">Alexander Pierce</span>
                       </a>
                       <ul class="dropdown-menu">
                           <!-- The user image in the menu -->
                           <li class="user-header">
                               <img alt="User Image" class="img-circle" src='<c:url value="/resources/admin/img/user2-160x160.jpg"/>'>
                               <p>
                                   Alexander Pierce - Web Developer
                                   <small>Member since Nov. 2012</small>
                               </p>
                           </li>
                           <!-- Menu Body -->
                           <li class="user-body">
                               <div class="col-xs-4 text-center">
                                   <a href="#">Followers</a>
                               </div>
                               <div class="col-xs-4 text-center">
                                   <a href="#">Sales</a>
                               </div>
                               <div class="col-xs-4 text-center">
                                   <a href="#">Friends</a>
                               </div>
                           </li>
                           <!-- Menu Footer-->
                           <li class="user-footer">
                               <div class="pull-left">
                                   <a class="btn btn-default btn-flat" href="#">Profile</a>
                               </div>
                               <div class="pull-right">
                                   <a class="btn btn-default btn-flat" href="#">Sign out</a>
                               </div>
                           </li>
                       </ul>
                   </li>
                   <!-- Control Sidebar Toggle Button -->
                   <li>
                       <a data-toggle="control-sidebar" href="#"><i class="fa fa-gears"></i></a>
                   </li>
               </ul>
           </div>
       </nav>
   </header>

