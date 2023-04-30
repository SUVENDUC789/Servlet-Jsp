<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<%@page isErrorPage="true" %>

<!DOCTYPE html>
<html lang="en">

<head>

    <title>Error 404</title>

    <style>
        .error{
            color: rgb(65, 63, 133);
            background: #e2e2e2;
            padding: 40dvb;
        }
        *{
            padding: 0px;
            margin: 0px;
        }
    </style>
</head>

<body >
    <div class="error">
        <h1>Error 404 Not found... </h1>

        <p>Somethink went to wrong</p>
        <p>Note : {...<%= exception %>...}</p>

    </div>
</body>

</html>