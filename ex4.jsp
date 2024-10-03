<%@ page import="java.io.*"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Exercicio 4</title>
</head>
<body>

    <div class="navbar">
        <a href="ex1.jsp">Exercicio 1</a>
        <a href="ex2.jsp">Exercicio 2</a>
        <a href="ex3.jsp">Exercicio 3</a>
        <a href="ex4.jsp" class="active">Exercicio 4</a>
        <a href="ex5.jsp">Exercicio 5</a>
        <a href="ex6.jsp">Exercicio 6</a>
        <a href="ex7.jsp">Exercicio 7</a>
        <a href="ex8.jsp">Exercicio 8</a>
    </div>

    <div class="main-container">
        <form action="" method="POST">
            <label for="">Numero</label>
            <input type="number" name="number" required>
            <input type="submit" value="Verificar">

            <%
                if (request.getMethod().equals("POST")) {
                    int number = Integer.parseInt(request.getParameter("number"));

                    if (number % 2 == 0)
                        out.println("<p>O numero eh par</p>");
                    else
                        out.println("<p>O numero eh impar</p>");
                }
            %>
        </form>
    </div>
    
</body>
</html>