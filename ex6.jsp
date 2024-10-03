<%@ page import="java.io.*"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Exercicio 6</title>
</head>
<body>
    <div class="navbar">
        <a href="ex1.jsp">Exercicio 1</a>
        <a href="ex2.jsp">Exercicio 2</a>
        <a href="ex3.jsp">Exercicio 3</a>
        <a href="ex4.jsp">Exercicio 4</a>
        <a href="ex5.jsp">Exercicio 5</a>
        <a href="ex6.jsp" class="active">Exercicio 6</a>
        <a href="ex7.jsp">Exercicio 7</a>
        <a href="ex8.jsp">Exercicio 8</a>
    </div>

    <div class="main-container">
        <form action="" method="POST">
            <label for="">Informe seu cargo atual</label>
            <select name="position">
                <option value="manager">Gerente</option>
                <option value="engineer">Engenheiro</option>
                <option value="technician">Tecnico</option>
                <option value="other">Outro</option>
            </select>

            <label for="">Informe seu salario atual</label>
            <input type="number" name="salary" required>

            <input type="submit" value="Calcular novo salario">

            <%
                if (request.getMethod().equals("POST")) {
                    String position = request.getParameter("position");
                    double salary = Double.parseDouble(request.getParameter("salary"));
                    double newSalary = 0;

                    if (position.equals("manager"))
                        newSalary = salary * 1.1;
                    else if (position.equals("engineer"))
                        newSalary = salary * 1.2;
                    else if (position.equals("technician"))
                        newSalary = salary * 1.3;
                    else
                        newSalary = salary * 1.4;

                    if (newSalary > 0) {
                        out.println("<p>Novo salario: " + String.format("%.2f", newSalary) + "</p>");
                    }
                }
            %>
        </form>
    </div>
    
</body>
</html>