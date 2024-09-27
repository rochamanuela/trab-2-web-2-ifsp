<%@ page import="java.io.*"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Exercicio 6</title>
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
            <label for="">Informe o codigo de aumento</label>
            <select name="cod">
                <option value="1">Cod 1</option>
                <option value="3">Cod 3</option>
                <option value="4">Cod 4</option>
                <option value="8">Cod 8</option>
            </select>

            <label for="">Informe o valor atual do produto</label>
            <input type="number" name="price" required>

            <input type="submit" value="Calcular aumento">

            <%
                if (request.getMethod().equals("POST")) {
                    int cod = Integer.parseInt(request.getParameter("cod"));
                    double price = Double.parseDouble(request.getParameter("price"));
                    double newPrice = 0;

                    if (cod == 1)
                        newPrice = price * 1.15;
                    else if (cod == 3)
                        newPrice = price * 1.2;
                    else if (cod == 4)
                        newPrice = price * 1.35;
                    else
                        newPrice = price * 1.4;

                    if (newPrice > 0) {
                        out.println("<p>Novo preco do produto: " + String.format("%.2f", newPrice) + "</p>");
                    }
                }
            %>
        </form>
    </div>
    
</body>
</html>