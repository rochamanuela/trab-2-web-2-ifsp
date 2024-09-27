<%@ page import="java.io.*"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Exercicio 1</title>
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

            <label for="">Nota 1 </label>
            <input type="number" name="note1" min="0" max="10" step="0.01" required>
            
            <label for="">Nota 2 </label>
            <input type="number" name="note2" min="0" max="10" step="0.01" required>
            
            <label for="">Nota 3 </label>
            <input type="number" name="note3" min="0" max="10" step="0.01" required>

            <input type="submit" value="Salvar">

            <%
                if (request.getMethod().equals("POST")) {
                    String name = request.getParameter("name");
                    double note1 = Double.parseDouble(request.getParameter("note1"));
                    double note2 = Double.parseDouble(request.getParameter("note2"));
                    double note3 = Double.parseDouble(request.getParameter("note3"));

                    double media = (note1 + note2 + note3) / 3;
                    String result;

                    if (media >= 7) {
                        result = "Aprovado";
                    }
                    else {
                        result = "Reprovado";
                    }

                    out.println("Aluno: " + name);
                    out.println("Media aritmetica: " + String.format("%.2f", media));
                    out.println("Resultado: " + result);
                }
            %>
        </form>
    </div>
    
</body>
</html>