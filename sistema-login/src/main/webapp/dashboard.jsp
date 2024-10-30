<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    // Verificar si el usuario está logueado
    if(session.getAttribute("username") == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>My Construction - Dashboard</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            background: #f4f4f4;
        }
        .header {
            background: #333;
            color: white;
            padding: 1rem;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        .container {
            width: 80%;
            margin: 2rem auto;
            padding: 20px;
            background: white;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
        .logout-button {
            color: white;
            text-decoration: none;
            padding: 5px 10px;
            border: 1px solid white;
            border-radius: 4px;
        }
        .welcome-message {
            margin-bottom: 2rem;
        }
    </style>
</head>
<body>
    <div class="header">
        <h1>Dashboard</h1>
        <a href="LogoutServlet" class="logout-button">Cerrar Sesión</a>
    </div>
    
    <div class="container">
        <div class="welcome-message">
            <h2>Bienvenido, <%= session.getAttribute("username") %></h2>
        </div>
        
        <div class="content">
            <h3>Panel de Control</h3>
            <p>Aquí irá el contenido del dashboard...</p>
        </div>
    </div>
</body>
</html>