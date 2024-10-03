<%@ page import="java.io.*"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Exercicio 5</title>
</head>
<body>
    <div class="navbar">
        <a href="ex1.jsp">Exercicio 1</a>
        <a href="ex2.jsp">Exercicio 2</a>
        <a href="ex3.jsp">Exercicio 3</a>
        <a href="ex4.jsp">Exercicio 4</a>
        <a href="ex5.jsp" class="active">Exercicio 5</a>
        <a href="ex6.jsp">Exercicio 6</a>
        <a href="ex7.jsp">Exercicio 7</a>
        <a href="ex8.jsp">Exercicio 8</a>
    </div>

    <div class="main-container">
        <form action="" method="POST">
            <label for="">Selecione o modelo do carro</label>
            <select id="cars" name="selectedCar">
                <option value="carA">Carro A</option>
                <option value="carB">Carro B</option>
                <option value="carC">Carro C</option>
            </select>

            <label for="">Informe o percurso realizado em Km</label>
            <input type="number" name="route" required>

            <input type="submit" value="Verificar">

            <%
                if (request.getMethod().equals("POST")) {
                    String car = request.getParameter("selectedCar");
                    double route = Double.parseDouble(request.getParameter("route"));
                    double consumption = 0;

                    if (car.equals("carA"))
                        consumption = route / 8;
                    else if (car.equals("carB"))
                        consumption = route / 9;
                    else if (car.equals("carC"))
                        consumption = route / 12;

                    if (consumption > 0) {
                        out.println("<p>Consumo aproximado de combustivel " + String.format("%.2f", consumption) + "</p>");
                    }
                }
            %>
        </form>
    </div>
    
</body>
</html>