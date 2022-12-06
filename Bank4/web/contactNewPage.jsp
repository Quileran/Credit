<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">

    <meta name="viewport" content="width=device-width,initial-scale=1">

    <title>LR Bank - Контакты</title>
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
</nav><div class="accordion" id="accordionExample">
    <div class="accordion-item">
        <h2 class="accordion-header" id="headingOne">
            <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                Карта
            </button>
        </h2>
        <div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
            <div class="accordion-body">
                <center><strong>
                    <script type="text/javascript" charset="utf-8" async src="https://api-maps.yandex.ru/services/constructor/1.0/js/?um=constructor%3Afa5a0fdaeaaa306b41842af7f989e3fdc434cbe8337d5c396130d11626b76d56&amp;width=500&amp;height=400&amp;lang=ru_RU&amp;scroll=true"></script>
                </strong></center>
            </div>
        </div>
    </div>
    <div class="accordion-item">
        <h2 class="accordion-header" id="headingTwo">
            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                Контакты
            </button>
        </h2>
        <div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#accordionExample">
            <div class="accordion-body">
                <strong>Федеральное государственное автономное образовательное учреждение высшего образования «Российский университет транспорта»
                    Телефон: +7 495 681-13-40 (факс); +7 495 684-23-96 (регистрация корреспонденции)
                    E-mail: info@rut-miit.ru; tu@miit.ru (регистрация корреспонденции)
                    Местоположение: ГУК-1: 1222
                    Адрес: 127994, ГСП-4, г. Москва, ул Образцова, д. 9, стр. 9 (на карте  )

                    Приёмная комиссия
                    Телефон: +7 495 260-23-32
                    E-mail: pk@rut-miit.ru

                    Контакты структурных подразделений РУТ (МИИТ)
                    ИНСТИТУТ УПРАВЛЕНИЯ И ЦИФРОВЫХ ТЕХНОЛОГИЙ (ИУЦТ)
                    +7 495 684 21 21
                    +7 495 684 29 84
                    +7 495 631 27 55
                    ИНСТИТУТ ТРАНСПОРТНОЙ ТЕХНИКИ И СИСТЕМ УПРАВЛЕНИЯ (ИТТСУ)
                    +7 495 684 28 50
                    +7 495 684 24 08
                    +7 495 684 24 40
                    +7 495 684 29 95
                    ИНСТИТУТ ПУТИ, СТРОИТЕЛЬСТВА И СООРУЖЕНИЙ (ИПСС)
                    +7 495 684 28 04
                    ИНСТИТУТ ЭКОНОМИКИ И ФИНАНСОВ (ИЭФ)
                    +7 499 110-07-41
                    ЮРИДИЧЕСКИЙ ИНСТИТУТ (ЮИ)
                    +7 495 684 29 24
                    ИНСТИТУТ МЕЖДУНАРОДНЫХ ТРАНСПОРТНЫХ КОММУНИКАЦИЙ (ИМТК)
                    +7 925 720 62 10
                    РОССИЙСКАЯ ОТКРЫТАЯ АКАДЕМИЯ ТРАНСПОРТА (РОАТ)
                    +7 495 649-19-25
                    +7 495 649-19-26
                    МЕДИЦИНСКИЙ КОЛЛЕДЖ
                    +7 495 187 93 63
                    ПРАВОВОЙ КОЛЛЕДЖ
                    +7 495 684 29 24
                    МОСКОВСКИЙ КОЛЛЕДЖ ТРАНСПОРТА
                    +7 495 687 64 31
                    КОЛЛЕДЖ МЕЖДУНАРОДНЫХ ТРАНСПОРТНЫХ КОММУНИКАЦИЙ
                    +7 925 720 62 10
                    АКАДЕМИЯ ВОДНОГО ТРАНСПОРТА (АВТ)
                    +7 495 633 16 17
                    АКАДЕМИЯ «ВЫСШАЯ ИНЖЕНЕРНАЯ ШКОЛА»
                    +7 985 333 74 45
                    УПРАВЛЕНИЕ МЕЖДУНАРОДНОГО СОТРУДНИЧЕСТВА, УМС (For foreign citizens)
                    +7 495 684 24 74</strong>
            </div>
        </div>
    </div>
    <div class="accordion-item">
        <h2 class="accordion-header" id="headingThree">
            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                О нас
            </button>
        </h2>
        <div id="collapseThree" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#accordionExample">
            <div class="accordion-body">
                <strong><img src="images/contactFirst.png" width="1200" height="400"></strong>
                <strong><img src="images/contactSecong.png" width="1200" height="400"></strong>

            </div>
        </div>
    </div>
</div>



<footer><center>
    <p>Company © LR Bank. Все права защищены.</p>
</center></footer>
</body>
</html>

