---
title: Разница между feature detection, feature inference и анализом строки user-agent
draft: false
tags:
  - "#DOM"
  - "#feature-detection"
  - "#feature-inference"
  - "#userAgent"
  - "#browser"
info:
---
![[Pasted image 20230701220250.png|600]]

Feature detection, feature inference и анализ строки user-agent - это три подхода для определения возможностей браузера в JavaScript.

_Feature detection_ - это подход, который использует код JavaScript для проверки наличия конкретной функциональности или возможности в браузере, прежде чем использовать ее в коде. Это позволяет создавать кросс-браузерный код, который будет работать в разных браузерах.

Пример использования feature detection:

```javascript
if ("localStorage" in window) {
  // localStorage доступен в браузере
  localStorage.setItem("key", "value")
} else {
  // localStorage не доступен в браузере
  // используем альтернативный способ хранения данных
}
```

В этом примере мы используем оператор `in` для проверки наличия объекта `localStorage` в глобальном объекте `window`. Если `localStorage` доступен, мы используем его для сохранения данных. Если нет, мы используем альтернативный способ хранения данных.
_Самый надежный подход_

_Feature inference_ - это подход, который использует знание о браузере для предположения о том, какие функции и возможности могут быть доступны. _Этот подход менее надежен, чем feature detection_, потому что он может привести к ошибкам, если предположения не верны.

Пример использования feature inference:

```javascript
if (document.createElement("canvas").getContext) {
  // браузер поддерживает canvas
} else {
  // браузер не поддерживает canvas
}
```

В этом примере мы предполагаем, что если браузер поддерживает метод `getContext()` для элемента `canvas`, то он поддерживает и сам `canvas`. Это предположение может быть верным для большинства современных браузеров, но может не работать во всех случаях.

_Анализ строки user-agent_ - это подход, который использует информацию из строки user-agent браузера для определения его возможностей и версии. _Этот подход также менее надежен, чем feature detection_, потому что строка user-agent может быть легко подделана или изменена.

Пример использования анализа строки user-agent:

```javascript
const isMobile = /iPhone|iPad|iPod|Android/i.test(navigator.userAgent)
if (isMobile) {
  // браузер работает на мобильном устройстве
} else {
  // браузер работает на десктопе или планшете
}
```

В этом примере мы используем регулярное выражение для поиска подстрок, связанных с мобильными устройствами, в строке user-agent браузера. Если такие подстроки найдены, мы предполагаем, что браузер работает на мобильном устройстве. Если нет, мы предполагаем, что браузер работает на десктопе или планшете.

---

[[003 JSCore|Назад]]