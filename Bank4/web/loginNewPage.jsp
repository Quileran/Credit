<%@ page import="main.model.Helper" %>
<%@ page import="main.model.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    request.setCharacterEncoding("UTF-8");

    String errorMessage="";
    String login = request.getParameter("login");
    String password = request.getParameter("password");

    if (login!=null&&!login.isEmpty()) {
        System.out.println("login = "+login);
        User user =  Helper.authorize(login,password);
        if(user==null){
            errorMessage="Логин и пароль не проходит. Ожидание авторизации";
        }else {
            session.setAttribute("user", user);

            if (session.getAttribute("user")==null){
                System.out.println("в сессии атрибут user");
            }
            System.out.println("redirect "+request.getContextPath()+"/mainNewPage.jsp");


            boolean test = Helper.isClerk(user);

            if(test){
                response.sendRedirect(request.getContextPath()+"/mainNewPage.jsp");
            }else {
                response.sendRedirect(request.getContextPath()+"/clientNewPage.jsp");
            }

        }

    }
%>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">

    <meta name="viewport" content="width=device-width,initial-scale=1">

    <title>LR Bank - Вход</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
    <style>

        footer {
            padding: 10px 20px;
            background: #666;
            color: white;
            left: 0;
            bottom: 0;
            width: 100%;
            height: 50px;
        }
    </style>
</head>

<body>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

<nav class="navbar navbar-expand-lg navbar-light bg-light bg-dark" >
    <div class="container-fluid">
        <a class="navbar-brand"style="color: #CCCCCC" href="mainNewPage.jsp">LR Bank</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>


        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="indexNewPage.html" style="color: #CCCCCC">Главная</a>
                </li>
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" style="color: #CCCCCC" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                    Клиентам
                </a>
                <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <li><a class="dropdown-item" href="loginNewPage.jsp">Открыть счет</a></li>
                    <li><a class="dropdown-item" href="registoryNewPage.jsp">Получить кредитную карту</a></li>
                    <li><a class="dropdown-item" href="loginNewPage.jsp">Закрыть счет</a></li>
                    <li><hr class="dropdown-divider"></li>
                </ul>
                </li>
                </li>
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"style="color: #CCCCCC" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                    Сотрудникам
                </a>
                <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <li><a class="dropdown-item" href="registoryNewPage.jsp">Открыть счет</a></li>
                    <li><a class="dropdown-item" href="registoryNewPage.jsp">Получить кредитную карту</a></li>
                    <li><a class="dropdown-item" href="loginNewPage.jsp">Закрыть счет</a></li>
                    <li><hr class="dropdown-divider"></li>
                </ul>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="loginNewPage.jsp "style="color: #CCCCCC">Войти</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="registoryNewPage.jsp"style="color: #CCCCCC">Зарегистрироваться</a>
                </li>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="contactNewPage.jsp"style="color: #CCCCCC">Контакты</a>
                </li>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="creditNewPage.jsp"style="color: #CCCCCC">Кредит</a>
                </li>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="Ipoteka.jsp"style="color: #CCCCCC">Ипотека</a>
                </li>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="autocredit.jsp"style="color: #CCCCCC">Автокредит</a>
                </li>
            </ul>
            <form class="d-flex">
                <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-success" type="submit">Search</button>
            </form>
        </div>
    </div>
</nav>

<%

    if (!errorMessage.isEmpty()) {

%>



<section class="h-100">
    <div class="container h-100">
        <div class="row justify-content-sm-center h-100">
            <div class="col-xxl-4 col-xl-5 col-lg-5 col-md-7 col-sm-9">
                <div class="text-center my-5">
                    <h1><%=errorMessage%></h1>
                </div>
            </div>
        </div>

    </div>
</section>
<%

    }
%>

<section class="h-100">
    <div class="container h-100">
        <div class="row justify-content-sm-center h-100">
            <div class="col-xxl-4 col-xl-5 col-lg-5 col-md-7 col-sm-9">
                <div class="text-center my-5">

                    <img src="images/lock.png" alt="logo" style="box-shadow:0 0 10px rgba(0, 0, 0, 0.3);border:2px solid  #CCCCCC; border-radius: 15px; -webkit-border-radius: 15px; -moz-border-radius: 15px;" width="400">
                </div>
                <div class="card shadow-lg">
                    <div class="card-body p-5">
                        <center><h1 class="fs-4 card-title fw-bold mb-4">LR Bank Login</h1></center>
                        <form method="POST" class="needs-validation" novalidate="" autocomplete="off" action="loginNewPage.jsp">
                            <div class="mb-3">
                                <label class="mb-2 text-muted" for="login">Логин</label>
                                <input id="login" type="login" class="form-control" name="login" value="" required autofocus>
                                <div class="invalid-feedback">
                                    Логин неверный
                                </div>
                            </div>

                            <div class="mb-3">
                                <div class="mb-2 w-100">
                                    <label class="text-muted" for="password">Пароль</label>

                                </div>
                                <input id="password" type="password" class="form-control" name="password" required>
                                <div class="invalid-feedback">
                                    Пароль неверный
                                </div>
                            </div>

                            <div class="d-flex align-items-center">

                                <button type="submit" class="btn btn-primary ms-auto">
                                    Войти
                                </button>
                            </div>
                        </form>

                        <div class="card-footer py-3 border-0">
                            <div class="text-center">
                                <a href="registoryNewPage.jsp" class="text-dark">Registration</a>
                            </div>
                        </div>
                    </div>

                </div>

            </div>
        </div>
    </div>
</section>

<footer><center>
    <p>Company © LR Bank. Все права защищены.</p>
</center></footer>
</body>
</html>
