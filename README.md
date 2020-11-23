# README

1.	Пока реализовано несколько точек входа:

Publisher:
http://localhost:3000/api/v1/publishers/1 - GET publisher show (id на конце может меняться)

http://localhost:3000/api/v1/publishers/1 - PATCH publisher update

Book:
http://localhost:3000/api/v1/books - GET book index

http://localhost:3000/api/v1/books/1 - GET book show (id на конце может меняться)

http://localhost:3000/api/v1/books - POST  book create

http://localhost:3000/api/v1/books/1 - PATCH book update

http://localhost:3000/api/v1/books/1 - DELETE book destroy

Shop:
http://localhost:3000/api/v1/shops - GET shop index

http://localhost:3000/api/v1/shops/1 - GET shop show

http://localhost:3000/api/v1/shops/1 - PATCH shop update

Selling:
http://localhost:3000/api/v1/sellings - GET selling index

http://localhost:3000/api/v1/sellings/1 - GET selling show

http://localhost:3000/api/v1/sellings/1 - PATCH selling update

2.	Для того чтобы отправить любой запрос в header-ах обязательно нужно прописать x-api-key: Slight иначе всегда будет отдаваться 403-я ошибка. Пример если использовать CURL:
curl -H "x-api-key: Slight" -X GET http://slight-testapp.herokuapp.com/api/v1/publishers

3.	Для инфо:
Подсчет атрибутов copies_in_stock, books_sold_count производится автоматически, но для этого должны быть заполнены атрибуты copies и selled_copies. Чтобы их заполнить необходимо отправить PATCH запрос на url: http://slight-testapp.herokuapp.com/api/v1/sellings/:id, где id это идентификатор продаж

4.	Реализовано несколько requests и models тестов

Для удобства использования, приложение задеплоено на heroku:
http://slight-testapp.herokuapp.com/api/v1/publishers/1
