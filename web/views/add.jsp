<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Регистрация</title>
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
        <%
            if (request.getAttribute("userName") != null) {
                out.println("<div class=\"alert alert-success\" role=\"alert\">\n" +
                        "    <strong>Пользователь '" + request.getAttribute("userName") + "' добавлен!</strong>\n" +
                        "</div>");
            }
        %>
        <h1 class="mt-5">Регистрация</h1>
        <div class="card m-5">
            <div class="card-body">
                <form method="post" class="needs-validation">
                    <div class="input-group mb-3">
                        <span class="input-group-text" id="user-name">Имя:</span>
                        <input type="text" class="form-control" name="name" placeholder="Имя пользователя" aria-label="Username" required>
                        <div class="invalid-feedback">
                            Пожалуйста, укажите имя.
                        </div>
                    </div>
                    <div class="input-group mb-3">
                        <span class="input-group-text" id="user-pass">Пароль:</span>
                        <input type="text" class="form-control" name="pass" placeholder="Пароль" aria-label="Password" required>
                        <div class="invalid-feedback">
                            Пожалуйста, укажите пароль.
                        </div>
                    </div>
                    <button class="btn btn-primary" type="submit">Отправить</button>
                </form>
            </div>
        </div>
    </div>
</body>
</html>

<script>
    (function () {
    'use strict'

    var forms = document.querySelectorAll('.needs-validation')

    Array.prototype.slice.call(forms)
    .forEach(function (form) {
    form.addEventListener('submit', function (event) {
    if (!form.checkValidity()) {
    event.preventDefault()
    event.stopPropagation()
    }

    form.classList.add('was-validated')
    }, false)
    })
    })()
</script>