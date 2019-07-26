<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Welcome to login</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link href="<c:url value='/static/css/app.css' />" rel="stylesheet">
    </link>
    <link href="<c:url value='/static/css/uikit.css' />" rel="stylesheet">
    </link>
    <link href="<c:url value='/static/css/uikit-rtl.css' />" rel="stylesheet">
    </link>


    <link href="https://fonts.googleapis.com/css?family=Audiowide&amp;display=swap" rel="stylesheet">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/uikit/3.1.6/js/uikit.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/uikit/3.1.6/js/uikit-icons.min.js"></script>

</head>

<body>
    <div>
        <div>
            <nav id="navbar" class="uk-navbar-container tm-navbar-container" uk-navbar>

                <div class="uk-navbar-left">
                    <a class="logo uk-link-reset" href="<c:url value='/' />"></a>

                </div>
                <div class="uk-navbar-right">

                    <ul class="uk-navbar-nav">



                    </ul>

                </div>
        </div>
        </nav>

        <div class="uk-section uk-section-small uk-section-muted ">
            <div class="uk-container uk-container-expand">

                <h3></h3>

                <div class="uk-grid-match  uk-height-1-1" uk-grid>
                    <div>
                        <p></p>
                    </div>
                    <div class="uk-height-1-1 uk-align-center   ">
                        <h1 class="uk-heading-medium uk-text-center ">Welcome to login page </h1>
                        <p class="uk-text-center uk-text-lead ">Log in to connect to Music Shop Admin page </p>

                        <div class="uk-text-center">

                            <form action="admin" class=" uk-text-center " action="">

                                <div class="uk-margin uk-text-center">

                                    <div class="uk-inline uk-text-center">
                                        <span class="uk-form-icon" uk-icon="icon: user" placeholder="username"></span>
                                        <input class="uk-input" type="text">
                                    </div>
                                </div>

                                <div class="uk-margin">
                                    <div class="uk-inline">
                                        <span class="uk-form-icon uk-form-icon-flip" uk-icon="icon: lock"
                                            placeholder="password"></span>
                                        <input type="password" class="uk-input" type="text">
                                    </div>
                                </div>

                                <div class="uk-margin">
                                    <div class="uk-inline">
                                        <input class="uk-input uk-form-width-small uk-button uk-button-primary   "
                                            id="form-horizontal-text" type="Submit" value="Log in">
                                    </div>
                                </div>

                            </form>
                            <c:url var="addAction" value="/admin"></c:url>
                        </div>
                    </div>
                    <div>
                        <p></p>
                    </div>
                </div>
            </div>
        </div>




    </div>
    <script src="js/uikit.js"></script>
    <script src="js/uikit-icons.js"></script>
    <script src="jQuery/localjQuery.js"></script>
    <script src="ajax/a.js"></script>
</body>

</html>