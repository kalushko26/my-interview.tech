---
title: Паттерн написания модульных тестов
draft: false
tags:
  - "#testing"
  - "#unit-test"
  - AAA
info:
  - https://habr.com/ru/articles/795105/
  - https://manningbooks.medium.com/making-better-unit-tests-part-1-the-aaa-pattern-e016775ea6c6
---
`Unit-тестирование` - это процесс тестирования отдельных компонентов программного обеспечения (например, функций или методов классов) с целью проверки их корректности работы.

Для написания unit-тестов существует множество различных подходов . Один из распространенных подходов - это AAA (`Arrange, Act, Assert`) паттерн.

Жизненный цикл unit-теста

1. **Arrange** (настройка) - этап предварительной настройки работы с данными и внешними зависимостями. Может включать в себя методы/конфигурации:
	a. beforeEach() - функция, вызывающаяся перед каждым экземпляром теста;
	b. beforeAll() - функция, вызывающаяся один раз перед вызовом группы тестов (describe());
	c. объявление переменных и необходимых для прогона теста данных, как внутри самого теста, так и снаружи.
2. **Act** (выполнение) - этап вызова/выполнения тестируемого экземпляра.
3. **Assert** (проверка) - этап проверки на соответствие ожидаемого поведения тестируемого экземпляра. 
   Может включать в себя методы ф-ции expect():
   a. toBe() - сравнение примитивных значений или проверки референциальной идентичности экземпляров объекта.
   b. toBeTruthy() - используется для подтверждения наличия возвращаемого значения. Упадет в случае, если значение будет равным false, 0, '', null, undefined, NaN.
   c. другие методы и ф-ции jest https://jestjs.io/ru/docs/expect
4. **Cleanup** (очистка) - этап используется для очистки настроек тестового окружения. 
   Может включать в себя методы/конфигурации:
	a. afterEach() - функция вызывающаяся после вызова тестового экземпляра;
	b. afterAll() - функция, вызывающаяся один раз после вызова группы тестов (describe())

Пример написания unit-теста с использованием AAA-паттерна:

```jsx
// импортируем функцию, которую будем тестировать
const { sum } = require("./myModule")

// определяем тестовые данные
const a = 2
const b = 3

// описываем тест с помощью конструкции describe
describe("sum function", () => {
  // определяем тестовый случай с помощью конструкции it
  it("should return correct sum", () => {
    // подготавливаем данные для теста
    const expected = 5

    // выполняем действие, которое нужно протестировать
    const result = sum(a, b)

    // проверяем, что результат соответствует ожидаемому значению
    expect(result).toEqual(expected)
  })
})
```

В этом примере мы импортируем функцию `sum` из модуля `myModule`. Затем мы определяем тестовые данные `a` и `b`, которые будут использоваться в тесте. Далее мы описываем тестовый случай с помощью функции `describe` и определяем тест с помощью функции `it`. Внутри теста мы подготавливаем данные для теста, выполняем действие, которое нужно протестировать, и проверяем, что результат соответствует ожидаемому значению с помощью функции `expect`.

AAA-паттерн является одним из многих подходов к написанию unit-тестов, и его использование зависит от конкретных требований и предпочтений команды разработчиков.

---

[[007 Jest, RTL|Назад]]