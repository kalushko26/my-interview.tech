---
title: Можно ли использовать TypeScript в серверной разработке?
draft: false
tags:
  - "#TypeScript"
  - "#tsconfig"
  - "#build"
  - "#NodeJS"
info:
---
Программы, написанные на TypeScript, подходят не только для фронтенд-разработки, но и для создания серверных приложений. Например, *на TS можно писать программы для платформы Node.js.* Это даёт программисту дополнительные средства по контролю типов и позволяет использовать другие возможности языка. Для создания серверных приложений на TS нужно лишь наладить правильный процесс обработки кода, на вход которого поступают TypeScript-файлы, а на выходе получаются JavaScript-файлы, подходящие для выполнения их в Node.js. 

*Для того чтобы организовать такую среду, сначала надо установить компилятор TypeScript:*

```node.js
npm i -g typescript
```

Параметры компилятора задают с помощью файла `tsconfig.json`, который определяет, кроме прочего, цель компиляции и место, в которое нужно поместиться готовые JS-файлы. В целом, этот файл очень похож на конфигурационные файлы babel или webpack:

```json
{
  "compilerOptions": {
    "target": "es5",
    "module": "commonjs",
    "declaration": true,
    "outDir": "build"
  }
}
```

Теперь, при условии, что компилятору есть что обрабатывать, нужно его запустить:

```node.js
tsc
```

И, наконец, учитывая то, что JS-файлы, пригодные для выполнения в среде Node.js, находятся в папке `build`, надо выполнить такую команду, находясь в корневой директории проекта:

```node.js
node build/index.js
```

____

[[005 TypeScript|Назад]]