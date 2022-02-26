Parking Lite
---
Packages:
- bootloader
  - Содержит классы, необходимые для настройки приложения 
- controller
  - Содержит контроллеры
- entity
  - Содержит сущности баз данных
- exception
  - Содержит кастомные исключения
- model
  - Содержит используемые модели
- repo
  - Содержит используемые репозитории баз данных
- security
  - Содержит классы, необходимые для настройки безопасности приложения
- service
  - Содержит сервисы
- util
  - Содержит вспомогательные классы
---
Remark:
Если пользователь вошел как ADMIN, ему доступен просмотр данных любого пользователя, 
если как USER - только своих (рассматривается любой endpoint, содержащий /users/{id}).
---
Исключения. В программе используется особый вид исключений: GlobalException. Данные исключения
обрабатываются GlobalExceptionHandler.
Все исключения, если они будут возвращены на клиентскую сторону, должны быть либо упакованы в GlobalError,
либо явно возвращать строку "error" : "message".
---
Endpoints:
- [BasicAuthController](src/main/java/ru/yandex/dimas224/controller/BasicAuthController.java)
    -  <span style = "color:Green"> endpoint </span>: /login; <span style = "color:Cyan"> http method </span>: GET 
    Возвращает форму для введения данных о пользователе (username, login). При нажатии на кнопку, 
  пользователя перенаправляет запрос на аутентификацию.
    - <span style = "color:Green"> endpoint </span>: /logout; <span style = "color:Cyan"> http method </span>: GET, <span style="color:Red"> требования: </span> X-Auth-Token
    Перенаправляет запрос на logout
- [AuthController](src/main/java/ru/yandex/dimas224/controller/AuthController.java)
  - <span style = "color:Green"> endpoint </span>: /sec/auth/login, <span style = "color:Cyan"> http method </span>: POST, <span style = "color:Orange"> content type </span>: x-www-form-urlencoded, <span style = "color:Orange"> body </span>: username(String) & password(String)
  Аутентифицирует и авторизует пользователя. Возвращает jwt token в 
  заголовке X-Auth-Token и данные пользователя. Данный токен используется для идентификации
  пользователя.
  -  <span style = "color:Green"> endpoint </span>: /sec/auth/logout; <span style = "color:Cyan"> http method </span>: POST, <span style="color:Red"> требования: </span> X-Auth-Token
  Удаляет cookie, однако полученный токен по прежнему можно использовать при помощи заголовка
---
- [UserController](src/main/java/ru/yandex/dimas224/controller/UserController.java)
    - <span style = "color:Green"> endpoint </span>: /users; <span style = "color:Cyan"> http method </span>: POST, <span style="color:Orange"> body </span>: login (String), password (String), firstname (String), 
      lastname (String)
    Регистрация пользователя.
    - <span style = "color:Green"> endpoint </span>: /users; <span style = "color:Cyan"> http method </span>: GET, <span style="color:Red"> требования </span>: X-Auth-Token, ADMIN
    Возвращает список всех пользователей
    - <span style = "color:Green"> endpoint </span>: /users/{id}/bookings; <span style = "color:Cyan"> http method </span>: GET, <span style="color:Red"> требования </span>: X-Auth-Token, <span style="color: firebrick"> request params </span>: isActive (boolean)
    Возвращает брони пользователя. Если передан флаг **true**, возвращает текущие активные бронирования 
    пользователя с указанным id, в противном случае - неактивные.
    - <span style = "color:Green"> endpoint </span>: /users/{id}; <span style = "color:Cyan"> http method </span>: PATCH, <span style="color:Red"> требования </span>: X-Auth-Token, ADMIN, <span style="color: orange"> body </span>: role (Role: String)
    Меняет роль указанного пользователя. Поменять роль можно только другого 
    пользователя.
---
- [SpotController](src/main/java/ru/yandex/dimas224/controller/SpotController.java)
  - <span style = "color:Green"> endpoint </span>: /spots, <span style = "color:Cyan"> http method </span>: GET
  Возвращает список текущих мест
  - <span style = "color:Green"> endpoint </span>: /spots, <span style = "color:Cyan"> http method </span>: POST, <span style = "color:Orange"> body </span>: number (String), <span style="color:Red"> требования </span>: X-Auth-Token, ADMIN
  Создает новое место с указанными данными 
  - <span style = "color:Green"> endpoint </span>: /spots/{id}, <span style = "color:Cyan"> http method </span>: DELETE, <span style="color:Red"> требования </span>: X-Auth-Token, ADMIN
  Удаляет место с указанным id 
--- 
- [VehicleController](src/main/java/ru/yandex/dimas224/controller/VehicleController.java)
  - <span style = "color:Green"> endpoint </span>: /users/{userId}/vehicles, <span style = "color:Cyan"> http method </span>: POST, <span style = "color:Orange"> body </span>: number (String), <span style="color:Red"> требования </span>: X-Auth-Token
  Создает новое транспортное средство для указанного пользователя
  - <span style = "color:Green"> endpoint </span>: /users/{userId}/vehicles, <span style = "color:Cyan"> http method </span>: GET, <span style="color:Red"> требования </span>: X-Auth-Token
  Возвращает список транспортных средств указанного пользователя.
  - <span style = "color:Green"> endpoint </span>: /vehicles, <span style = "color:Cyan"> http method </span>: GET, <span style="color: firebrick"> request params </span>: isNew (boolean), <span style="color:Red"> требования </span>: X-Auth-Token, ADMIN
  Возвращает список всех транспортных средств. Если **isNew** равен **true**, возвращает список только новых средств, в противном случае - всех, кроме удаленных.
  - <span style = "color:Green"> endpoint </span>: /vehicles/{vehicleId}, <span style = "color:Cyan"> http method </span>: PATCH, <span style = "color:Orange"> body </span>: status (int), <span style="color:Red"> требования </span>: X-Auth-Token, ADMIN
  Изменяет статус указанного транспортного средства.
---
- [BookingController](src/main/java/ru/yandex/dimas224/controller/BookingController.java)
  - <span style = "color:Green"> endpoint </span>: /users/{user_id}/bookings, <span style = "color:Cyan"> http method </span>: POST, <span style = "color:Orange"> body </span>: spotId (int), vehicleId (int), begin (Instant), end (Instant), <span style="color:Red"> требования </span>: X-Auth-Token
  Создает новую бронь (забронировать можно на промежуток времени, кратный 30 минутам)
  - <span style = "color:Green"> endpoint </span>: /users/{user_id}/bookings/{booking_id}, <span style = "color:Cyan"> http method </span>: DELETE, <span style="color:Red"> требования </span>: X-Auth-Token
  Удаляет бронь (удаленные брони не попадают в историю бронирований)
  - <span style = "color:Green"> endpoint </span>: /bookings, <span style = "color:Cyan"> http method </span>: GET, <span style = "color:firebrick"> request params </span>: begin (String), end (String), <span style="color:Red"> требования </span>: X-Auth-Token
  Возвращает список свободных мест на указанное время.
  - <span style = "color:Green"> endpoint </span>: /bookings/all, <span style = "color:Cyan"> http method </span>: GET, <span style="color:Red"> требования </span>: X-Auth-Token, ADMIN
  Возвращает список всех активных броней
  - <span style = "color:Green"> endpoint </span>: /users/{user_id}/bookings/{booking_id/extend}, <span style = "color:Cyan"> http method </span>: POST, <span style="color:Orange"> body </span>: time (int), <span style="color:Red"> требования </span>: X-Auth-Token
  Продлевает бронь на переданное количество минут