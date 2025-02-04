---
title: Что такое `ARIA` роли в веб приложении?
draft: false
tags:
  - "#HTML"
  - "#доступность"
  - "#aria"
info:
---
![[Pasted image 20230704125342.png|600]]

_ARIA (Accessible Rich Internet Applications)_ - это набор стандартов и рекомендаций W3C, который предназначен для улучшения доступности веб-приложений для пользователей с ограничениями восприятия. Одним из ключевых компонентов ARIA являются роли, которые определяют, как элементы интерфейса должны быть воспринимаемы для пользователей с ограничениями восприятия, таких как слепые и слабовидящие пользователи, пользователи с ограниченной моторикой и т.д.

_ARIA-роли позволяют разработчикам добавлять дополнительные сведения о функциональности элементов интерфейса, которые не могут быть выявлены только на основе разметки HTML и CSS._ Например, роль "button" может быть присвоена элементу, который не является стандартной кнопкой HTML, но выполняет функцию кнопки в интерфейсе.

ARIA-роли определяют, как элементы интерфейса должны быть воспринимаемы для пользователей с ограничениями восприятия, и могут быть использованы для улучшения доступности следующих элементов:

- Кнопки
- Формы и поля ввода
- Меню и навигация
- Таблицы и списки
- Диалоговые окна
- Динамические области контента и многое другое.

ARIA-роли обычно задаются с помощью атрибута "role" и могут быть использованы в сочетании с другими ARIA-атрибутами, такими как "aria-label", "aria-describedby" и "aria-hidden", для дополнительной настройки доступности элементов интерфейса.

Пример использования ARIA-роли "button" для элемента, который не является стандартной кнопкой HTML:

```html
<div role="button" tabindex="0" aria-label="
Нажмите, чтобы выполнить действие">Выполнить действие
</div>
```

ARIA-роли являются важным инструментом для улучшения доступности веб-приложений и должны быть использованы в сочетании с другими технологиями доступности, такими как скринридеры и устройства управления курсором и клавиатурой.

---

[[001 HTML|Назад]]