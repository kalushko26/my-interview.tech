---
title: Разница между `HTTP 1` и `HTTP 2` ?
draft: false
tags:
  - HTTP/1
  - HTTP/2
  - HTTP/3
  - browser
  - HTTP
info:
  - https://habr.com/ru/articles/221427/
  - https://habr.com/ru/companies/selectel/articles/278167/
  - "[[0089 HTTP простым языком|HTTP]]"
  - https://ru.hexlet.io/blog/posts/http-3-proshloe-nastoyaschee-i-buduschee
  - https://habr.com/ru/companies/slurm/articles/575464/
---
_HTTP/2_ – это версия протокола HTTP, которая была выпущена в 2015 году и заменила предыдущую версию - HTTP/1.1. Основные отличия между протоколами HTTP/2 и HTTP/1.1:

1. _`Мультиплексирование`_: _`HTTP/2` позволяет использовать одно TCP-соединение для множества запросов и ответов одновременно, что устраняет необходимость в нескольких соединениях между клиентом и сервером, ускоряя передачу данных_.
2. _`Бинарный формат`_: _`HTTP/2` использует бинарный формат для передачи данных, в отличие от текстового формата, используемого в `HTTP/1.1`. Бинарный формат более компактный и эффективный для передачи данных._
3. _`Сжатие заголовков`_: _позволяет сжимать заголовки запросов и ответов, что уменьшает объем передаваемых данных и ускоряет передачу данных._
4. _`Server Push`_: _позволяет серверу отправлять ресурсы на клиент до того, как они будут запрошены, что уменьшает задержку при загрузке страницы._
5. _`Приоритезация`_: _позволяет определять приоритеты для каждого запроса, что позволяет ускорить передачу наиболее важных ресурсов._

---

[[200 Браузерное окружение|Назад]]