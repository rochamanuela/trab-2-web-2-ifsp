<%@ page import="java.io.*"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Exercicio 2</title>
</head>
<body>

    <div class="navbar">
        <a href="ex1.jsp">Exercicio 1</a>
        <a href="ex2.jsp">Exercicio 2</a>
        <a href="ex3.jsp">Exercicio 3</a>
        <a href="ex4.jsp">Exercicio 4</a>
        <a href="ex5.jsp">Exercicio 5</a>
        <a href="ex6.jsp">Exercicio 6</a>
        <a href="ex7.jsp">Exercicio 7</a>
        <a href="ex8.jsp">Exercicio 8</a>
    </div>

    <div class="main-container">
        <form action="" method="POST">
            <label for="">Qual o seu nome? </label>
            <input type="text" name="name" required>

            <label for="">Qual seu nivel? </label>
            <input type="number" name="level" min="1" max="3" step="1" required>
            
            <label for="">Quantas horas voce trabalhou? </label>
            <input type="number" name="hours" required>

            <input type="submit" value="Salvar">

            <%
                if (request.getMethod().equals("POST")) {
                    String name = request.getParameter("name");
                    double level = Double.parseDouble(request.getParameter("level"));
                    double hours = Double.parseDouble(request.getParameter("hours"));
                    double salary = 0;

                    if (level == 1) {
                        salary = hours * 12;
                    } else if (level == 2) {
                        salary = hours * 17;
                    } else if (level == 3) {
                        salary = hours * 25;
                    } else {
                        out.println("<p>Informe um nivel valido!</p>");
                    }

                    if (salary > 0) {
                        out.println("<p>Salario de " + name + ": " + String.format("%.2f", salary) + "</p>");
                    }
                }
            %>
        </form>
    </div>
    
</body>
</html>