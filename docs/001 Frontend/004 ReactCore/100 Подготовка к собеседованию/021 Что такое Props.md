---
title: Что такое Props?
draft: false
tags:
  - "#React"
  - "#props"
  - "#immutable"
info:
  - https://ru.legacy.reactjs.org/docs/components-and-props.html
---
_Props (`properties`)_ - это объект, содержащий свойства компонента, переданные ему из родительского компонента. Props передаются в качестве аргументов в функцию компонента или записываются в свойство `props` классового компонента.

_Props используются для передачи данных и настроек между компонентами. Родительский компонент может передать дочернему компоненту любые значения, включая простые типы данных, такие как строки и числа, а также объекты и функции._

Пример:

```jsx
function Greeting(props) {
  return <h1>Hello, {props.name}!</h1>
}

function App() {
  return <Greeting name="John" />
}
```

Здесь мы создали компонент `Greeting`, который принимает свойство `name` через объект `props`. Затем мы передали значение "John" в свойство `name` при создании экземпляра компонента `Greeting` в компоненте `App`

Props в React являются неизменяемыми _`immutable`_ и не могут быть изменены внутри компонента. Если необходимо изменить значение свойства, то это должно быть сделано в родительском компоненте, который передает свойство.

---

[[004 ReactCore|Назад]]