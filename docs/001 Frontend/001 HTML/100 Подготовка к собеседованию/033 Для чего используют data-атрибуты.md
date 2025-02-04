---
title: Для чего используют `data-`атрибуты?
draft: false
tags:
  - "#HTML"
  - "#data-"
  - "#DOM"
info:
  - https://developer.mozilla.org/ru/docs/Web/Guide/HTML/Using_data_attributes
---
![[Pasted image 20230704020353.png|600]]

До того, как JavaScript-фреймворки стали популярны, фронтенд-разработчики использовали `data-` атрибуты чтобы хранить дополнительные данные прямо в DOM без хаков вроде нестандартных атрибутов или дополнительных свойств в DOM. Атрибуты этого семейства предназначены для хранения частных данных пользователя, для которых не существует более подходящих атрибутов или элементов на странице или в приложении.

_На сегодняшний день использование data-атрибутов не поощряется._ Одной из причин является то, что пользователь может модифицировать данные в атрибуте, используя инспектор кода в браузере. Данные лучше хранить в самом JavaScript и обновлять DOM при помощи связывания данных через библиотеку или фреймворк.

Атрибуты `data-` используются для добавления пользовательских данных в элементы HTML. Они позволяют разработчикам добавлять произвольные данные в HTML элементы без необходимости создавать новые атрибуты или использовать костыльные решения.

Атрибуты `data-` могут содержать любые данные, включая строки, числа, объекты JavaScript и многие другие типы данных. Они могут использоваться для хранения информации, которая не отображается на странице, но может быть использована для обработки с помощью JavaScript.

Например, вы можете использовать атрибут `data-` для хранения информации, связанной с элементом, такой как идентификатор, название, описание или любые другие данные, которые могут быть полезны при обработке элемента на стороне клиента. Вы можете использовать эти данные для изменения внешнего вида элемента, для подключения дополнительных функций или для передачи данных на сервер.

Пример использования атрибута `data-`:

```HTML
<div class="product" data-id="1234" data-name="Product Name" data-price="29.99">
  <img src="product.jpg" alt="Product Image">
  <h3>Product Name</h3>
  <p>$29.99</p>
  <button>Add to Cart</button>
</div>
```

В этом примере мы добавили атрибуты `data-`, чтобы хранить информацию о продукте, такую как идентификатор, название и цена. Эти данные могут использоваться для добавления продукта в корзину, для отображения информации о продукте на странице или для выполнения других действий, связанных с продуктом.

---

[[001 HTML|Назад]]