---
title: Разница между теневым (Shadow) и виртуальным (Virtual) DOM?
draft: false
tags:
  - "#React"
  - "#ShadowDOM"
  - "#VirtualDOM"
info:
  - https://learn.javascript.ru/shadow-dom
---
![[Pasted image 20230704173739.png|600]]

_Теневой (Shadow) DOM_ и _Virtual DOM (виртуальное DOM)_ - это два разных концепта, которые используются в веб-разработке.

1. _Теневой (`Shadow`) DOM_ - это технология, которая позволяет создавать изолированные компоненты пользовательского интерфейса, которые могут быть вложены в другие веб-страницы или веб-приложения. _Теневой DOM представляет собой отдельную иерархическую структуру элементов HTML, которая находится внутри основной страницы. Каждый теневой DOM может содержать свой собственный CSS-код, JavaScript-код и обработчики событий_, что позволяет создавать более сложные и гибкие пользовательские интерфейсы.

![[Pasted image 20230909095929.png|600]]

То, что находится под `#shadow-root` – и называется «shadow DOM».

_Теневой DOM_ – это способ создать свой, изолированный, DOM для компонента.

1. `shadowRoot = elem.attachShadow({mode: open|closed})` – создаёт теневой DOM для `elem`. Если `mode="open"`, он доступен через свойство `elem.shadowRoot`.
2. Мы можем создать подэлементы внутри `shadowRoot` с помощью `innerHTML` или других методов DOM.

Элементы теневого DOM:

- Обладают собственной областью видимости идентификаторов
- Невидимы JavaScript селекторам из главного документа, таким как `querySelector`,
- Стилизуются своими стилями из теневого дерева, не из главного документа.

2. _Virtual DOM_ - это концепция, которая используется в React для улучшения производительности при работе с пользовательским интерфейсом. Виртуальное DOM - это легковесное представление реальной DOM-структуры, которое хранится в памяти и обновляется только при необходимости.

_Ключевая разница между теневым и виртуальным DOM заключается в том, что теневой DOM - это отдельная иерархическая структура элементов HTML, которая может быть вложена в другие веб-страницы или веб-приложения, а виртуальное DOM - это легковесное представление реальной DOM-структуры, которое используется в React для повышения производительности и упрощения процесса разработки и обслуживания пользовательского интерфейса._

---

[[004 ReactCore|Назад]]