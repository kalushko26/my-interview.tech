---
title: Разница между типами `void`, `never` и `unknown`
draft: false
tags:
  - "#TypeScript"
  - "#type"
  - "#void"
  - "#never"
  - "#unknown"
info:
---
В TypeScript есть три специальных типа: void , never и unknown , которые имеют свои особенности и используются в разных случаях.

1.  Тип void
Тип `void` используется *для обозначения отсутствия значения*. Он часто используется для указания типа возвращаемого значения функции, которая не возвращает никакого значения.

```tsx
function logMessage(message: string): void {
  console.log(message);
}
```

В этом примере функция `logMessage` принимает строку и ничего не возвращает. Тип `void` указывает на то, что функция не возвращает никакого значения.

2.  Тип never
Тип `never` используется *для обозначения ситуаций, когда функция никогда не завершится или когда она генерирует ошибку.* Например, функция, которая всегда бросает исключение, имеет тип `never`.

```tsx
function throwError(message: string): never {
  throw new Error(message);
}
```

В этом примере функция `throwError` принимает строку и всегдабросает исключение. Тип `never` указывает на то, что функция никогда не завершится нормально.

3.  Тип unknown
Тип `unknown` используется *для значений, тип которых неизвестен во время компиляции.* Это может произойти, например, если вы получаете данные из внешнего источника и не знаете, какой тип данных будет возвращен.

```tsx
let myVariable: unknown;

myVariable = 'hello world';
myVariable = 123;
```

В этом примере мы объявляем переменную `myVariable` типа `unknown` и затем присваиваем ей различные значения. Тип `unknown` позволяет нам сохранять значения различных типов, но мы не можем использовать эту переменную напрямую, пока мы не уточним ее тип.

```tsx
if (typeof myVariable === 'string') {
  console.log(myVariable.toUpperCase());
}
```

В этом примере мы проверяем тип переменной `myVariable` с помощью оператора `typeof` и затем вызываем метод `toUpperCase()`, только если тип переменной является строкой.

В целом, 
	тип void используется для указания отсутствия значения, 
	тип never используется для обозначения ситуаций, когда функция никогда не завершится или когда она генерирует ошибку, 
	а тип unknown используется для значений, тип которых неизвестен во время компиляции.

_____

[[005 TypeScript|Назад]]