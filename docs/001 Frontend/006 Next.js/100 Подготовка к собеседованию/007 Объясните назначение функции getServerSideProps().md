---
title: Объясните назначение функции `getServerSideProps()`
draft: false
tags:
  - NextJS
  - getServerSideProps
  - SSR
info:
  - https://nextjs.org/docs/pages/building-your-application/data-fetching/get-server-side-props
---
Функция `getServerSideProps` в Next.js используется для реализации рендеринга на стороне сервера (SSR) для динамических страниц. Когда пользователь запрашивает страницу, эта функция выполняется на сервере и динамически извлекает данные, позволяя странице быть предварительно отрендеренной с самыми актуальными данными.

Основные назначения и особенности функции `getServerSideProps`:

1. **Динамическое получение данных**: Функция позволяет получать данные непосредственно перед рендерингом страницы, что особенно полезно для контента, который часто меняется или зависит от данных из внешних источников.
2. **Обновление контента**: Поскольку данные извлекаются на сервере при каждом запросе, это обеспечивает, что контент всегда свежий, предоставляя пользователям реальное время опыта.
3. **SEO-оптимизация**: Так как страницы рендерятся на сервере и отправляются клиенту в виде полностью готового HTML, это улучшает индексацию поисковыми системами и оптимизацию для SEO.
4. **Безопасность и конфиденциальность**: Данные могут быть обработаны на сервере, что может быть полезно для защиты конфиденциальной информации и управления доступом к данным.
5. **Управление состоянием**: Функция может использоваться для управления состоянием приложения, передачи данных в компоненты страницы через пропсы.

Пример использования `getServerSideProps`:

```javascript
export async function getServerSideProps(context) {
  const res = await fetch(`https://api.example.com/data`);
  const data = await res.json();

  if (!data) {
    return {
      notFound: true,
    };
  }

  return {
    props: { data }, // будет передано компоненту страницы как пропсы
  };
}
```

В этом примере `getServerSideProps` выполняет запрос к внешнему API и передает полученные данные в компонент страницы в качестве пропсов. Если данные не найдены, функция возвращает `notFound: true`, что приводит к отображению страницы 404.

___

[[006 Next.js|Назад]]