<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>My Construction - Login</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background: #f4f4f4;
        }
        .login-container {
            background: white;
            padding: 2rem;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            width: 100%;
            max-width: 400px;
        }
        .form-group {
            margin-bottom: 1rem;
        }
        label {
            display: block;
            margin-bottom: 0.5rem;
            color: #333;
        }
        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 8px;
            border: 1px solid #ddd;
            border-radius: 4px;
            box-sizing: border-box;
        }
        .submit-button {
            width: 100%;
            padding: 10px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        .submit-button:hover {
            background-color: #45a049;
        }
        .error-message {
            color: red;
            margin-bottom: 1rem;
            text-align: center;
        }
        .back-link {
            display: block;
            text-align: center;
            margin-top: 1rem;
            color: #666;
            text-decoration: none;
        }
        .back-link:hover {
            color: #333;
        }
    </style>
</head>
<body>
    <div class="login-container">
        <h2 style="text-align: center;">Iniciar Sesión</h2>
        
        <!-- Mostrar mensaje de error si existe -->
        <%
            String error = request.getParameter("error");
            if (error != null && error.equals("1")) {
        %>
            <div class="error-message">
                Usuario o contraseña incorrectos
            </div>
        <%
            }
        %>
        
        <form action="LoginServlet" method="post">
            <div class="form-group">
                <label for="username">Usuario:</label>
                <input type="text" id="username" name="username" required>
            </div>
            
            <div class="form-group">
                <label for="password">Contraseña:</label>
                <input type="password" id="password" name="password" required>
            </div>
            
            <button type="submit" class="submit-button">Iniciar Sesión</button>
        </form>
        
        <a href="index.jsp" class="back-link">Volver al Inicio</a>
    </div>
</body>
</html>