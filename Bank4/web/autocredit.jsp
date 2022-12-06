<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">

  <meta name="viewport" content="width=device-width,initial-scale=1">

  <title>LR Bank - Автокредит</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
  <style>
    footer {
      padding: 10px 20px;
      background: #666;
      color: white;
      position: fixed;
      left: 0;
      right: 0;
      bottom: 0;
      z-index: 10;
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
</nav><center>
  <div class="card mb-3" style="max-width: 1000px;">
    <div class="row g-0">
      <div class="col-md-4">
        <img src="images/calculator.png" class="img-fluid rounded-start" alt="...">
      </div>
      <div class="col-md-8">
        <div class="card-body">
          <form action="">

            <h6 class="card-title">
              Возраст:  <input type="number" size="7" name="age" id="age" min="18" max="100" value="1" onchange="inmas()">
            </h6>

            <h6 class="card-title">
              Зарплата:  <input type="number" size="7" name="zp" id="zp" min="12000" max="99999999" value="1" onchange="inmas()">
            </h6>

            <h6 class="card-title">
              Сумма кредита в рублях:  <input type="number" size="7" name="sum" id="sum" min="1" max="9999999" value="1" onchange="inmas()">
            </h6>

            <h6 class="card-title">
              Процентная ставка в процентах:  <input type="number" size="4" name="proc" id="proc" min="1" max="1000" value="1" onchange="inmas()">
            </h6>

            <h6 class="card-title">
              Срок в месяцах:  <input type="number" size="4" name="srok" id="srok" min="1" max="1000" value="1" onchange="inmas()">
            </h6>

            <h6 class="card-title" size="4">
              <div>
                Кредитная история <input type="checkbox" id="var1" size="7" name="Yes" value="var1" checked />
                <label for="var1">Да</label>
                <input type="checkbox" id="var2" size="7" name="No" value="var2" />
                <label for="var2">Нет</label>
              </div>
            </h6>

            <h6 class="card-title">
              Количество детей:  <input type="number" size="4" name="det" id="det" min="0" max="100" value="1" onchange="inmas()">
            </h6>

            <div class="alert alert-primary" role="alert">
              <h6 class="card-title">
                Каждый месяц вам придется отдавать:  <div id="res" name="res"></div> рублей
              </h6>
              <h6 class="card-title">
                Сумма заёма:  <div id="sum2" name="sum"></div> рублей
              </h6>
            </div>


          </form>

        </div>
      </div>
    </div>
  </div>
</center>




<script>
  function inmas () {
    age = Number(document.getElementById("age").value);
    zp = Number(document.getElementById("zp").value);
    sum = Number(document.getElementById("sum").value);
    proc = Number(document.getElementById("proc").value)/100;
    srok = Number(document.getElementById("srok").value);
    det = Number(document.getElementById("det").value);
    itog = (sum + proc*sum)/srok;
    document.all ('res').innerHTML = itog;
    document.all('sum2').innerHTML = sum;
  }
</script>

<footer><center>
  <p>Company © LR Bank. Все права защищены.</p>
</center></footer>

</body>
</html>
