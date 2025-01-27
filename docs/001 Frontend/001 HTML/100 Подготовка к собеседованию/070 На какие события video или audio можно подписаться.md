---
title: На какие события video или audio можно подписаться?
draft: false
tags:
  - "#HTML"
  - "#video"
  - "#audio"
info:
---
HTML5 видео и аудио элементы (теги `<video>` и `<audio>`) поддерживают ряд событий, на которые можно подписаться при помощи JavaScript. Некоторые из наиболее часто используемых событий:

1. `play` - событие, которое возникает, когда пользователь начинает воспроизведение медиа-контента;
2. `pause` - событие, которое возникает, когда пользователь приостанавливает воспроизведение медиа-контента;
3. `ended` - событие, которое возникает, когда медиа-контент достигает конца;
4. `timeupdate` - событие, которое возникает, когда изменяется текущее время воспроизведения медиа-контента;
5. `volumechange` - событие, которое возникает, когда изменяется уровень громкости медиа-контента;
6. `loadedmetadata` - событие, которое возникает, когда браузер загружает метаданные медиа-контента;
7. `error` - событие, которое возникает, когда возникает ошибка при загрузке медиа-контента.

Пример подписки на событие `play`:

```js
const myVideo = document.getElementById("my-video");
myVideo.addEventListener("play", function() {
  console.log("Воспроизведение начато");
});
```

В этом примере мы получаем элемент `<video>` с идентификатором "my-video" и добавляем к нему обработчик события `play`, который выводит сообщение в консоль при начале воспроизведения видео.

Также можно использовать атрибуты HTML для указания функций-обработчиков событий, например:

```html
<video onplay="handlePlay()" onpause="handlePause()" src="my-video.mp4"></video>
```

В этом примере мы указываем функции `handlePlay()` и `handlePause()` как обработчики событий `play` и `pause`

---

[[001 HTML|Назад]]