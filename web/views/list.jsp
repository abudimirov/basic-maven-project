<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Список пользователей</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha2/css/bootstrap.min.css" integrity="sha384-DhY6onE6f3zzKbjUPRc2hOzGAdEf4/Dz+WJwBvEYL/lkkIsI3ihufq9hk9K4lVoK" crossorigin="anonymous">
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha2/js/bootstrap.bundle.min.js" integrity="sha384-BOsAfwzjNJHrJ8cZidOg56tcQWfp6y72vEJ8xQ9w6Quywb24iOsW913URv1IS4GD" crossorigin="anonymous"></script>
</head>
<body>
    <header>
        <nav class="navbar navbar-light navbar-dark bg-primary">
            <div class="container">
                <a class="navbar-brand mb-0 h1" href="/">Приложение на Maven</a>
            </div>
        </nav>
    </header>
    <div class="container">
        <h1 class="mt-5">Список пользователей</h1>
            <%
                List<String> names = (List<String>) request.getAttribute("userNames");

                if (names != null && !names.isEmpty()) {
                    out.println("<ul class=\"list-group list-group-flush m-5\">");
                    for (String s : names) {
                        out.println("<li class=\"list-group-item\">" + s + "</li>");
                    }
                    out.println("</ul>");
                } else out.println("<div class=\"alert alert-danger\" role=\"alert\">Пока нет ни одного пользователя!</div>");
            %>
    </div>
</body>
</html>
