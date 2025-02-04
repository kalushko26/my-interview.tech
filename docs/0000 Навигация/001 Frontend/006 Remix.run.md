---
title: 006 Remix.run
draft: true
---

# Вопросы

* [Remix.run - Официальная документация](https://remix.run)
* [GitHub проекта](https://github.com/remix-run/remix)

https://habr.com/ru/companies/timeweb/articles/717156/
https://habr.com/ru/companies/timeweb/articles/720642/
___


### **1. Введение в Remix.run**

- [[Что такое Remix и какие основные цели он преследует|Что такое Remix и какие основные цели он преследует?]]
- [[Что означает аббревиатура PESPA в контексте Remix|Что означает аббревиатура PESPA в контексте Remix?]]
- [[Как Remix обеспечивает функциональность приложения без JavaScript|Как Remix обеспечивает функциональность приложения без JavaScript?]]
- [[С какими фреймворками разработчики Remix вдохновлялись|С какими фреймворками разработчики Remix вдохновлялись?]]
- [[Как Remix обеспечивает синхронизацию данных между сервером и клиентом|Как Remix обеспечивает синхронизацию данных между сервером и клиентом?]]
- [[В чем преимущества PESPA перед традиционными SPA|В чем преимущества PESPA перед традиционными SPA?]]
- [[Как реализовать бесконечную прокрутку с использованием useFetcher|Как реализовать бесконечную прокрутку с использованием useFetcher?]]
- [[Как организовать глобальные заголовки HTTP для всего приложения|Как организовать глобальные заголовки HTTP для всего приложения?]]
- [[Какие подходы к кэшированию данных поддерживает Remix|Какие подходы к кэшированию данных поддерживает Remix?]]

### **2. Интерфейс модуля роута / Route Module API**

- [[Какую роль выполняет функция, экспортируемая по умолчанию в модуле роута|Какую роль выполняет функция, экспортируемая по умолчанию в модуле роута?]]
- [[Для чего предназначен loader в Remix? Почему он выполняется только на сервере|Для чего предназначен loader в Remix? Почему он выполняется только на сервере?]]
- [[Какие аргументы передаются в loader? Приведите пример использования params|Какие аргументы передаются в loader ? Приведите пример использования params]]
- [[Как получить доступ к HTTP-заголовкам запроса в `loader`?|Как получить доступ к HTTP-заголовкам запроса в loader?]]
- [[Что такое context в loader и как он связывается с серверными адаптерами|Что такое context в loader и как он связывается с серверными адаптерами?]]
- [[Как утилита json упрощает возврат ответов из loader|Как утилита json упрощает возврат ответов из loader?]]
- [[Зачем использовать throw вместо return в loader. Как это влияет на UI|Зачем использовать throw вместо return в loader? Как это влияет на UI?]]
- [[Чем отличается action от loader. В каких случаях вызывается action|Чем отличается action от loader? В каких случаях вызывается action?]]
- [[Как определить пользовательские HTTP-заголовки для роута через headers|Как определить пользовательские HTTP-заголовки для роута через headers?]]
- [[Как работает объединение мета-тегов meta во вложенных роутах|Как работает объединение мета-тегов meta во вложенных роутах?]]
- [[Для чего используется links в модуле роута|Для чего используется links в модуле роута?]]
- [[Как CatchBoundary помогает обрабатывать ошибки в loader или action|Как CatchBoundary помогает обрабатывать ошибки в loader или action?]]
- [[Какие задачи решает ErrorBoundary и как получить доступ к ошибке в этом компоненте|Какие задачи решает ErrorBoundary и как получить доступ к ошибке в этом компоненте?]]
- [[Как импортировать статические ресурсы (CSS, изображения) в Remix|Как импортировать статические ресурсы (CSS, изображения) в Remix?]]

### **3. Маршрутизация / Routing**

- [[Какие основные концепции маршрутизации существуют в Remix|Какие основные концепции маршрутизации существуют в Remix?]]
- [[Как определяется иерархия компонентов на основе URL в Remix|Как определяется иерархия компонентов на основе URL в Remix?]]
- [[Что такое индексные роуты и в каких случаях они используются|Что такое индексные роуты и в каких случаях они используются?]]
- [[Как работает параметр index в URL|Как работает параметр ?index в URL?]]
- [[Как создать вложенный URL без вложенных макетов компонентов|Как создать вложенный URL без вложенных макетов компонентов?]]
- [[Что такое макеты без пути и как их реализовать|Что такое макеты без пути и как их реализовать?]]
- [[Как работают динамические сегменты в путях роутов|Как работают динамические сегменты в путях роутов?]]
- [[Для чего используются сплаты splat и как получить доступ к их данным|Для чего используются сплаты (splat) и как получить доступ к их данным?]]
- [[Как организовать структуру файлов для роутов, чтобы URL -sales-invoices-123-edit рендерил плоскую иерархию компонентов|Как организовать структуру файлов для роутов, чтобы URL /sales/invoices/123/edit/ рендерил плоскую иерархию компонентов?]]

### **4. Ресурсные роуты / Resource Routes**

- [[Чем ресурсные роуты отличаются от обычных UI-роутов|Чем ресурсные роуты отличаются от обычных UI-роутов?]]
- [[Какие сценарии использования ресурсных роутов вы можете назвать|Какие сценарии использования ресурсных роутов вы можете назвать?]]
- [[Как создать ресурсный роут для генерации PDF-файла|Как создать ресурсный роут для генерации PDF-файла?]]
- [[Как добавить расширение файла .pdf в URL ресурсного роута|Как добавить расширение файла .pdf в URL ресурсного роута?]]
- [[Как обрабатывать разные HTTP-методы POST, PUT, DELETE в ресурсных роутах|Как обрабатывать разные HTTP-методы POST, PUT, DELETE в ресурсных роутах?]]
- [[Приведите пример реализации веб-хука для GitHub в ресурсном роуте|Приведите пример реализации веб-хука для GitHub в ресурсном роуте]]

### **5. Загрузка данных / Data Loading**

- [[Как получить параметры динамического сегмента в loader|Как получить параметры динамического сегмента в loader?]]
- [[Как валидировать параметры роута перед использованием|Как валидировать параметры роута перед использованием?]]
- [[Как обработать ситуацию, когда данные в БД не найдены|Как обработать ситуацию, когда данные в БД не найдены?]]
- [[Как получить параметры строки запроса в loader|Как получить параметры строки запроса в loader?]]
- [[Какие методы управления состоянием данных предлагает Remix вместо React Query-SWR|Какие методы управления состоянием данных предлагает Remix вместо React Query-SWR?]]
- [[Почему не рекомендуется использовать несериализуемые данные в loader|Почему не рекомендуется использовать несериализуемые данные в loader?]]

### **6. Запись данных / Data Writes**

- [[Как обработать отправку формы с валидацией и отображением ошибок|Как обработать отправку формы с валидацией и отображением ошибок?]]
- [[Как реализовать индикатор загрузки при отправке формы|Как реализовать индикатор загрузки при отправке формы?]]
- [[Чем отличается поведение форм с методами GET и POST в Remix|Чем отличается поведение форм с методами GET и POST в Remix?]]
- [[Как использовать useTransition для отслеживания состояния отправки формы|Как использовать useTransition для отслеживания состояния отправки формы?]]
- [[Как реализовать анимацию сообщений об ошибках валидации|Как реализовать анимацию сообщений об ошибках валидации?]]

### **7. Оптимистичное обновление UI / Optimistic UI**

- [[Опишите стратегию реализации оптимистичного обновления UI в Remix|Опишите стратегию реализации оптимистичного обновления UI в Remix]]
- [[Как использовать useTransition.submission для мгновенного обновления данных|Как использовать useTransition.submission для мгновенного обновления данных?]]
- [[Как обработать ошибки при оптимистичном обновлении|Как обработать ошибки при оптимистичном обновлении?]]
- [[Как избежать «мигания» UI при успешной операции|Как избежать «мигания» UI при успешной операции?]]

### **8. Обработка ошибок / Error Handling**

- [[Как реализовать кастомную страницу 404 для несуществующих роутов|Как реализовать кастомную страницу 404 для несуществующих роутов?]]
- [[Чем отличается CatchBoundary от ErrorBoundary|Чем отличается CatchBoundary от ErrorBoundary?]]
- [[Как выбросить ошибку 404 из loader, если данные не найдены|Как выбросить ошибку 404 из loader, если данные не найдены?]]
- [[Как создать вложенный перехватчик ошибок для конкретного роута|Как создать вложенный перехватчик ошибок для конкретного роута?]]

### **9. Обработка ошибки 404 / Not Found Handling**

- [[Какие HTTP-статусы следует использовать для обработки «Не найдено»|Какие HTTP-статусы следует использовать для обработки «Не найдено»?]]
- [[Как предложить пользователю создать ресурс при переходе на несуществующий URL|Как предложить пользователю создать ресурс при переходе на несуществующий URL?]]

### **10. Переменные среды окружения / Environment Variables**

- [[Как безопасно использовать переменные окружения на клиенте|Как безопасно использовать переменные окружения на клиенте?]]
- [[Как передать переменные окружения в глобальный объект window|Как передать переменные окружения в глобальный объект window?]]
- [[Чем отличается работа с .env в режиме разработки и продакшена|Чем отличается работа с .env в режиме разработки и продакшена?]]

### **11. Стилизация / Styling**

- [[Как загружать стили только для активных роутов|Как загружать стили только для активных роутов?]]
- [[Как организовать стилизацию общих компонентов|Как организовать стилизацию общих компонентов (например, кнопок)?]]
- [[Как реализовать предварительную загрузку ресурсов|Как реализовать предварительную загрузку ресурсов (например, иконок)?]]
- [[Какие подходы к интеграции TailwindCSS-PostCSS-SASS поддерживает Remix|Какие подходы к интеграции TailwindCSS/PostCSS/SASS поддерживает Remix?]]
- [[Как использовать медиа-запросы в загрузке стилей?]]

### **12. TypeScript**

- [[Как настроить проверку типов в проекте на Remix|Как настроить проверку типов в проекте на Remix?]]
- [[Какие типы данных доступны из remix-run_node и remix-run_react|Какие типы данных доступны из @remix-run/node и @remix-run/react?]]
- [[Как типизировать данные, возвращаемые useLoaderData и useActionData|Как типизировать данные, возвращаемые useLoaderData и useActionData?]]

### **13. Компоненты / Components**

- [[Какие компоненты обязательны для корневого роута root.tsx|Какие компоненты обязательны для корневого роута root.tsx?]]
- [[Как Link в Remix отличается от стандартного HTML-тега a|Как Link в Remix отличается от стандартного HTML-тега a]]
- [[Что делает проп prefetch в компоненте Link|Что делает проп prefetch в компоненте Link?]]
- [[Как NavLink помогает визуально выделять активные ссылки|Как NavLink помогает визуально выделять активные ссылки?]]
- [[Чем отличается `Form` в Remix от нативного HTML-тега form|Чем отличается Form в Remix от нативного HTML-тега <form>?]]
- [[Как обрабатываются не-GET-POST запросы PUT, DELETE в Form|Как обрабатываются не-GET-POST запросы PUT, DELETE в Form?]]
- [[Для чего используется ScrollRestoration|Для чего используется ScrollRestoration?]]

### **14. Хуки / Hooks**

- [[Как получить данные из loader в компоненте через useLoaderData|Как получить данные из loader в компоненте через useLoaderData?]]
- [[В каких сценариях полезен useActionData|В каких сценариях полезен useActionData?]]
- [[Как программно отправить форму с помощью useSubmit|Как программно отправить форму с помощью useSubmit?]]
- [[Какие состояния state и типы type предоставляет useTransition|Какие состояния state и типы type предоставляет useTransition?]]
- [[Для чего предназначен useFetcher|Для чего предназначен useFetcher?]]
- [[Как получить информацию о всех активных роутах через useMatches|Как получить информацию о всех активных роутах через useMatches?]]
- [[Как useBeforeUnload помогает сохранять данные перед закрытием страницы|Как useBeforeUnload помогает сохранять данные перед закрытием страницы?]]

### **15. Куки / Cookies**

- [[Как создать куки в Remix? Какие параметры можно настроить|Как создать куки в Remix? Какие параметры можно настроить?]]
- [[Как подписать куки для защиты данных|Как подписать куки для защиты данных?]]
- [[Как прочитать значение куки в loader или action|Как прочитать значение куки в loader или action?]]
- [[Как обновить куки после изменения данных пользователя|Как обновить куки после изменения данных пользователя?]]
- [[Чем отличается cookie.parse от cookie.serialize|Чем отличается cookie.parse от cookie.serialize?]]

### **16. Сессии / Sessions**

- [[Какие типы хранилищ сессий поддерживает Remix|Какие типы хранилищ сессий поддерживает Remix?]]
- [[Как создать сессию на основе куки|Как создать сессию на основе куки?]]
- [[Как реализовать аутентификацию с использованием сессий|Как реализовать аутентификацию с использованием сессий?]]
- [[Что такое флэш-сообщения flash и как их использовать|Что такое флэш-сообщения flash и как их использовать?]]
- [[Как удалить данные сессии при выходе пользователя из системы|Как удалить данные сессии при выходе пользователя из системы?]]
- [[Чем createFileSessionStorage отличается от createCookieSessionStorage|Чем createFileSessionStorage отличается от createCookieSessionStorage?]]
- [[Как создать кастомное хранилище сессий с помощью createSessionStorage|Как создать кастомное хранилище сессий с помощью createSessionStorage?]]

### **17. Утилиты HTTP / HTTP Helpers**

- [[Как утилита redirect упрощает перенаправления|Как утилита redirect упрощает перенаправления?]]
- [[Какие статус-коды можно задать при использовании json|Какие статус-коды можно задать при использовании json?]]
- [[Как обработать ошибку 404 через json в loader|Как обработать ошибку 404 через json в loader?]]

### **18. Общие вопросы**



