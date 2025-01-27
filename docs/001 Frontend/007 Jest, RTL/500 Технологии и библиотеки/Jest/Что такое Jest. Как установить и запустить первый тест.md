---
title: Что такое Jest? Как установить и запустить первый тест?
draft: false
tags:
  - "#JavaScript"
  - "#Jest"
  - "#Jest-preview"
  - "#testing"
info:
  - https://jestjs.io/ru/docs/getting-started
---
![](https://www.youtube.com/watch?v=f4aedP8dLDI&list=PLOQDek48BpZGQDwniQxsyygkdWqeXZyhr)

Jest - это среда для тестирования JavaScript.
Для установки Jest в проект необходимо ввести команду в консоль:

```bash
npm install --save-dev jest

yarn add --dev jest
```

После установки необходимо обновить секцию scripts вашего package.json:

```json
“scripts” : {
     “test”: “jest”
}
```

С этого момента мы уже можем запустить наши тесты.
Инициализируем Jest в корне проекта
~~~bash
cd app
jest --init
~~~

// Зачем нужно тестировать код ?
Бывает что после рефакторинга какого-то компонента в одном месте он стал работать лучше. 
А в другом просто отвалился. Тесты это покажут без прокликивания всей логики вручную после каждого изменения кода. Тесты имитируют пользовательские действия автоматизированно.

_____

## Что такое Jest?

Как указано на домашней странице проекта:  

> Jest — это восхитительная среда тестирования JavaScript с упором на простоту.

И действительно, Jest очень простой. Он не требует дополнительных настроек, легкий в понимании и применении, а так же имеет довольно хорошую документацию. Отлично подходит для проектов использующих #NodeJS, #React, #Angular, #Vue, #Babel, #TypeScript и не только.  
Также он имеет открытый исходный код и поддерживается компанией Facebook.  

## Установка

Для установки Jest в ваш проект выполните:  

```bash
npm install --save-dev jest
```

Если вы используете yarn:  

```bash
yarn add --dev jest
```

После установки можете обновить секцию scripts вашего package.json:  
  
```json
“scripts” : {
     “test”: “jest”
}
```

С помощью такого простого вызова мы уже можем запустить наши тесты (на самом деле jest потребует существование хотя бы одного теста).  
  
Также можно установить глобально (но так делать я бы не рекомендовал, так как по мне глобальная установка модулей является плохой практикой):  
  
```bash
npm install jest --global
```

И соответственно для yarn:  

```bash
yarn global add jest
```

После этого вы можете использовать jest непосредственно из командной строки.  
  
При помощи вызова команды jest --init в корне проекта, ответив на несколько вопросов, вы получите файл с настройками jest.config.js. Или можно добавить конфигурацию прямиком в ваш package.json. Для этого добавьте в корень json ключ «jest» и в соответствующем ему объекте можете добавлять необходимые вам настройки. Сами опции мы разберем позже. На данном этапе в этом нет необходимости, поскольку jest можно использовать «сходу», без дополнительных конфигураций.  

## Первый тест

Давайте создадим файл first.test.js и напишем наш первый тест:  
  
```tsx
//first.test.js
test('My first test', () => {
    expect(Math.max(1, 5, 10)).toBe(10);
});
```

И запустим наши тесты с помощью npm run test или непосредственно командой jest (если он установлен глобально). После запуска мы увидим отчет о прохождении тестов.  
  
```bash
 <b>PASS</b>  ./first.test.js
  ✓ My first test (1 ms)

Test Suites: 1 passed, 1 total
Tests:       1 passed, 1 total
Snapshots:   0 total
Time:        0.618 s, estimated 1 s
```

Давайте «сломаем» наш тест и запустим jest повторно:  
  
```tsx
//first.test.js
test('My first test', () => {
    expect(Math.max(1, 5, 10)).toBe(5);
});
```

Как мы видим, теперь наш тест не проходит проверки. Jest отображает подробную информацию о том, где возникла проблема, какой был ожидаемый результат, и что мы получили вместо него.  
  
Теперь давайте разберём код самого теста. 

## Синтаксис

### Описание

Функция _test_ используется для создания нового теста. Она принимает три аргумента (в примере мы использовали вызов с двумя аргументами). Первый — строка с названием теста, его jest отобразит в отчете. Второй — функция, которая содержит логику нашего теста. Также можно использовать 3-й аргумент — таймаут. Он является не обязательным, а его значение по умолчанию составляет 5 секунд. Задаётся в миллисекундах. Этот параметр необходим когда мы работаем с асинхронным кодом и возвращаем из функции теста промис. Он указывает как долго jest должен ждать разрешения промиса. По истечению этого времени, если промис не был разрешен — jest будет считать тест не пройденным. Подробнее про работу с асинхронными вызовами будет в следующих частях. Также вместо _test()_ можно использовать _it()_. Разницы между такими вызовами нету. _it()_ это просто алиас на функцию _test()_.  
  
Внутри функции теста мы сначала вызываем _expect()_. Ему мы передаем значение, которое хотим проверить. В нашем случае, это результат вызова _Math.max(1, 5, 10)_. _expect()_ возвращает объект «обертку», у которой есть ряд методов для сопоставления полученного значения с ожидаемым. Один из таких методов мы и использовали — _toBe_.  

### Методы

Давайте разберем основные из этих методов:  
  
- **toBe()** — подходит, если нам надо сравнивать примитивные значения или является ли переданное значение ссылкой на тот же объект, что указан как ожидаемое значение. Сравниваются значения при помощи _Object.is()_. В отличие от === это дает возможность отличать 0 от -0, проверить равенство NaN c NaN.
- **toEqual()** — подойдёт, если нам необходимо сравнить структуру более сложных типов. Он сравнит все поля переданного объекта с ожидаемым. Проверит каждый элемент массива. И сделает это рекурсивно по всей вложенности.  
      
    ```tsx
    test('toEqual with objects', () => {
        expect({ foo: 'foo', subObject: { baz: 'baz' } })
            .toEqual({ foo: 'foo', subObject: { baz: 'baz' } });  // Ок
        expect({ foo: 'foo', subObject: { num: 0 } })
            .toEqual({ foo: 'foo', subObject: { baz: 'baz' } });  // А вот так ошибка.
    });
    
    test('toEqual with arrays', () => {
        expect([11, 19, 5]).toEqual([11, 19, 5]); // Ок
        expect([11, 19, 5]).toEqual([11, 19]); // Ошибка
    });
    ```
    
- **toContain()** — проверят содержит массив или итерируемый объект значение. Для сравнения используется оператор ===.  
      
    ```tsx
    const arr = ['apple', 'orange', 'banana'];
    expect(arr).toContain('banana');
    expect(new Set(arr)).toContain('banana');
    expect('apple, orange, banana').toContain('banana');
    ```
    
- **toContainEqual()** — проверяет или содержит массив элемент с ожидаемой структурой.  
    
    ```tsx
    expect([{a: 1}, {b: 2}]).toContainEqual({a: 1});
    ```
    
- **toHaveLength()** — проверяет или свойство length у объекта соответствует ожидаемому.  
      
    ```tsx
    expect([1, 2, 3, 4]).toHaveLength(4);
    expect('foo').toHaveLength(3);
    expect({ length: 1 }).toHaveLength(1);
    ```
    
- **toBeNull()** — проверяет на равенство с null.
- **toBeUndefined()** — проверяет на равенство с undefined.
- **toBeDefined()** — противоположность _toBeUndefined_. Проверяет или значение !== undefined.
- **toBeTruthy()** — проверяет или в булевом контексте значение соответствует true. Тоесть любые значения кроме false, null, undefined, 0, NaN и пустых строк.
- **toBeFalsy()** — противоположность _toBeTruthy()_. Проверяет или в булевом контексте значение соответствует false.
- **toBeGreaterThan()** и **toBeGreaterThanOrEqual()** — первый метод проверяет или переданное числовое значение больше, чем ожидаемое >, второй проверяет больше или равно ожидаемому >=.
- **toBeLessThan()** и **toBeLessThanOrEqual()** — противоположность _toBeGreaterThan()_ и _toBeGreaterThanOrEqual()_
- **toBeCloseTo()** — удобно использовать для чисел с плавающей запятой, когда вам не важна точность и вы не хотите, чтобы тест зависел от незначительной разницы в дроби. Вторым аргументом можно передать до какого знака после запятой необходима точность при сравнении.  
      
    ```tsx
    const num = 0.1 + 0.2; // 0.30000000000000004
    expect(num).toBeCloseTo(0.3);
    expect(Math.PI).toBeCloseTo(3.14, 2);
    ```
    
- **toMatch()** — проверяет соответствие строки регулярному выражению.  
    
    ```tsx
    expect('Banana').toMatch(/Ba/);
    ```
    
- **toThrow()** — используется в случаях, когда надо проверить исключение. Можно проверить как сам факт ошибки, так и проверить на выброс исключения определенного класса, либо по сообщению ошибки, либо по соответствию сообщения регулярному выражению.  
      
    ```tsx
    function funcWithError() {
        throw new Error('some error');
    }   
    expect(funcWithError).toThrow();
    expect(funcWithError).toThrow(Error);
    expect(funcWithError).toThrow('some error');
    expect(funcWithError).toThrow(/some/);
    ```
    
- **not** — это свойство позволяет сделать проверки на НЕравенство. Оно предоставляет объект, который имеет все методы перечисленные выше, но работать они будут наоборот.  
    
    ```tsx
    expect(true).not.toBe(false);
    expect({ foo: 'bar' }).not.toEqual({});
    
    function funcWithoutError() {}
    expect(funcWithoutError).not.toThrow();
    ```

Давайте напишем пару простых тестов. 

### Практический пример

#### 1ый пример

Для начала создадим простой модуль, который будет содержать несколько методов для работы с окружностями.  
  
```tsx
// src/circle.js
const area = (radius) => Math.PI * radius ** 2;
const circumference = (radius) => 2 * Math.PI * radius;
module.exports = { area, circumference };
```

Далее добавим тесты:  
  
```tsx
// tests/circle.test.js
const circle = require('../src/circle');

test('Circle area', () => {
    expect(circle.area(5)).toBeCloseTo(78.54);
    expect(circle.area()).toBeNaN();
});

test('Circumference', () => {
    expect(circle.circumference(11)).toBeCloseTo(69.1, 1);
    expect(circle.circumference()).toBeNaN();
});
```

В этих тестах мы проверили результат работы 2-х методов — _area_ и _circumference_. При помощи метода _toBeCloseTo_ мы сверились с ожидаемым результатом. В первом случае мы проверили или вычисляемая площадь круга с радиусом 5 приблизительно равна 78.54, при этом разница с полученым значением (оно составит 78.53981633974483) не большая и тест будет засчитан. Во втором мы указали, что нас интересует проверка с точностью до 1 знака после запятой. Также мы вызвали наши методы без аргументов и проверили результат с помощью _toBeNaN_. Поскольку результат их выполнения будет NaN, то и тесты будут пройдены успешно.  

#### 2ой пример

Разберём ещё один пример. Создадим функцию, которая будет фильтровать массив продуктов по цене:  

```tsx
// src/productFilter.js
const byPriceRange = (products, min, max) =>
         products.filter(item => item.price >= min && item.price <= max);
module.exports = { byPriceRange };
```

И добавим тест:  
  
```tsx
// tests/product.test.js
const productFilter = require('../src/producFilter');

const products = [
    { name: 'onion', price: 12 },
    { name: 'tomato', price: 26 },
    { name: 'banana', price: 29 },
    { name: 'orange', price: 38 }
];

test('Test product filter by range', () => {
    const FROM = 15;
    const TO = 30;
    const filteredProducts = productFilter.byPriceRange(products, FROM, TO);

    expect(filteredProducts).toHaveLength(2);
    expect(filteredProducts).toContainEqual({ name: 'tomato', price: 26 });
    expect(filteredProducts).toEqual([{ name: 'tomato', price: 26 }, { name: 'banana', price: 29 }]);
    expect(filteredProducts[0].price).toBeGreaterThanOrEqual(FROM);
    expect(filteredProducts[1].price).toBeLessThanOrEqual(TO);
    expect(filteredProducts).not.toContainEqual({ name: 'orange', price: 38 });
});
```

В этом тесте мы проверям результат работы функии _byRangePrice_. Сначала мы проверили соответствие длины полученого массива ожидаемой — 2. Следующая проверка требует, чтобы в массиве находился элемент — { name: 'tomato', price: 26 }. Объект в массиве и объект переданный _toContainEqual_ — это два разных объекта, а не ссылка на один и тот же. Но _toContainEqual_ сверит каждое свойство. Так как оба объекта идентичные — проверка пройдет успешно. Далее мы используем _toEqual_ для провеки структуры всего массива и его элементов. Методы _toBeGreaterThanOrEqual_ и _toBeLessThanOrEqual_ помогут нам проверить price первого и второго элемента массива. И, наконец, вызов _not.toContainEqual_ сделает проверку, не содержится ли в массиве элемент — { name: 'orange', price: 38 }, которого по условию там быть не должно.  
  
В данных примерах мы написали несколько простых тестов используя функции проверки описанные выше. В следующих частях мы разберём работу с асинхронным кодом, функции jest которые не затрагивались в этой части туториала, поговорим о его настройке и многое другое.
