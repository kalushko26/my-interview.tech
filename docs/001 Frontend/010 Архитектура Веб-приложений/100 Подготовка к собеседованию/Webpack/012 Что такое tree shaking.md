---
title: Что такое tree shaking?
draft: false
tags:
  - "#webpack"
  - "#tree-shaking"
  - bundle
info:
---
![[Pasted image 20230704144525.png|600]]

_`Tree shaking`_ - это техника оптимизации кода в процессе сборки проекта, которая _позволяет удалять неиспользуемый код из конечной сборки._ Эта техника основывается на статическом анализе кода и определении, какие модули и функции не используются в приложении.

_Tree shaking используется для уменьшения размера конечной сборки и ускорения загрузки веб-страниц._ Она позволяет избежать загрузки неиспользуемого кода, который может замедлять выполнение JavaScript на стороне клиента.

Tree shaking широко используется в современных инструментах сборки JavaScript, таких как Webpack и Rollup. Эти инструменты используют статический анализ кода для определения, какие модули и функции не используются в приложении, и затем удаляют этот код из конечной сборки.

Однако, для того чтобы tree shaking работал, _код должен быть написан с определенными правилами. Например, код должен быть написан в виде модулей, а не в виде глобальных функций и переменных. Также необходимо избегать динамических импортов, которые могут затруднить статический анализ кода._

---

[[010 Архитектура Веб-приложений|Назад]]