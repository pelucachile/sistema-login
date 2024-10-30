<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>My Construction - Inicio</title>
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
            text-align: center;
        }
        .container {
            width: 80%;
            margin: 2rem auto;
            text-align: center;
        }
        .login-button {
            display: inline-block;
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            margin-top: 20px;
        }
        .login-button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <div class="header">
        <h1>Bienvenido a My Construction</h1>
    </div>
    
    <div class="container">
        <h2>Sistema de Gestión de Proyectos de Construcción</h2>
        <p>Por favor, inicie sesión para acceder al sistema.</p>
        <a href="login.jsp" class="login-button">Iniciar Sesión</a>
    </div>
</body>
</html>