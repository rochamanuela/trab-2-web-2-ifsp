<%@ page import="java.io.*"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Exercicio 7</title>
</head>
<body>
    <div class="navbar">
        <a href="ex1.jsp">Exercicio 1</a>
        <a href="ex2.jsp">Exercicio 2</a>
        <a href="ex3.jsp">Exercicio 3</a>
        <a href="ex4.jsp">Exercicio 4</a>
        <a href="ex5.jsp">Exercicio 5</a>
        <a href="ex6.jsp">Exercicio 6</a>
        <a href="ex7.jsp" class="active">Exercicio 7</a>
        <a href="ex8.jsp">Exercicio 8</a>
    </div>

    <div class="main-container">
        <form action="" method="POST">
            <label for="">Horas</label>
            <input type="number" name="hour" required>
            
            <label for="">Minutos</label>
            <input type="number" name="minute" required>
            
            <label for="">Segundos</label>
            <input type="number" name="second" required>

            <input type="submit" value="Calcular">

            <%
                if (request.getMethod().equals("POST")) {
                    int hour = Integer.parseInt(request.getParameter("hour"));
                    int minute = Integer.parseInt(request.getParameter("minute"));
                    int second = Integer.parseInt(request.getParameter("second"));

                    int total = (hour * 60 * 60) + (minute * 60) + second;

                    out.println("<p>Horario em segundos: " + total + "</p>");
                }
            %>
        </form>
    </div>
    
</body>
</html>