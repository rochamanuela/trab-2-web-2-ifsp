<%@ page import="java.io.*"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Exercicio 3</title>
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
            <label for="">Primeiro Numero</label>
            <input type="number" name="n1" required>
            
            <label for="">Segundo Numero</label>
            <input type="number" name="n2" required>
            
            <input type="submit" value="Verificar">

            <%
                if (request.getMethod().equals("POST")) {
                    int n1 = Integer.parseInt(request.getParameter("n1"));
                    int n2 = Integer.parseInt(request.getParameter("n2"));

                    if (n1 == n2)
                        out.println("<p>Os numeros sao iguais</p>");
                    else
                        out.println("<p>Os numeros sao diferentes</p>");
                }
            %>
        </form>
    </div>
    
</body>
</html>