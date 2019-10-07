# test_web_exchange_1C
Тest of web exchange between 1С bases

# Задание

Написать конфигурацию на платформе 1С 8.3, по учету товарных позиций, хранение остатков и реализации

## Документы:

\- Установка цен номенклатуры (закупка и розница); Приход товара на склад; Заказ клиента; Оплата заказа клиентом; Отгрузка товара клиенту; Возврат товара от клиента

Списание остатков партий товара выполнять по ФИФО с использованием управляемых блокировок.

## Отчеты:

\- состояние заказов в товарном и денежном варианте (в одном или двух отчетах)

\- движение товара по партиям с группировкой по документам

\- остатки товара на складе с расшифровкой по резервам заказов

## В задании важно учесть следующее:

\- синхронизация справочника "контрагенты" с помощью web-сервисов между двумя базами

В базе приемнике, в справочнике контрагентов добавить кнопку "Синхронизация с центральной базой", при нажатии кнопки из центральной базы должны загружаться новые контрагенты

# Решение

Конфигурация тестировалась на платформе 1С 8.3. 15.1194. Работает без режима совместимости. Основной режим запуска – управляемое приложение.

## Константы

ИспользоватьСклады – Булево – определяет доступность аналитики в разрезе складов.

ИспользоватОбмен – Булево – определяет доступность обмена.

ИспользоватьКлиентОбмена – Булево – это база-клиент (доступна кнопка "Синхронизация с центральной базой").

АдреснаяСтрокаВебСервиса – строка 100 – адрес WEB-Сервера – например: [<span class="underline">http://127.0.0.1/srv/ws/DataTrasfer.1cws?wsdl</span>](http://127.0.0.1/srv/ws/DataTrasfer.1cws?wsdl).

## Справочники

### Номенклатура

Содержит предопределенные элементы:

| Код | Группа          | Имя             | Наименование     |
| --- | --------------- | --------------- | ---------------- |
| 7   | БытоваяТехника  | Холодильник     | Холодильник      |
| 6   | БытоваяТехника  | Телевизор       | Телевизор        |
| 5   |                 | БытоваяТехника  | Бытовая Техника  |
| 4   | ПродуктыПитания | КрупаМанная     | Крупа Манная     |
| 3   | МБТ             | чайник          | чайник           |
| 2   |                 | МБТ             | МБТ              |
| 1   |                 | ПродуктыПитания | Продукты Питания |

### Контрагенты

Содержит предопределенные элементы:

| Код       | Группа     | Имя        | Наименование |
| --------- | ---------- | ---------- | ------------ |
| 000000001 |            | Покупатели | Покупатели   |
| 000000003 | Покупатели | КупимВсё   | Купим всё    |
| 000000002 |            | Поставщики | Поставщики   |

### Склады

Содержит предопределенные элементы:

| Код       | Группа | Имя           | Наименование   |
| --------- | ------ | ------------- | -------------- |
| 000000001 |        | ОсновнойСклад | Основной Склад |

## Документы

### Установка цен номенклатуры (закупка и розница)

связан с регистром сведений УстановкаЦен

### Заказ

### Оплата

### ПриходТовара

### ОтгрузкаТовара

### ВозвратТовара

## Регистр сведений 

"УстановкаЦен", переодичность – день, ресурс – цена, измерения: ТипыЦенНоменклатуры и Номенклатура

## Отчеты

* ОстаткиТоваров

* ОстаткиПартийТоваров

* ОстаткиТоваровСРезервами

* АнализПродаж

* ДвижениеТовараПоПартиям

* СостояниеЗаказовВДенежномВарианте

* СостояниеЗаказовВТоварномВарианте

# Развертывание и Тестирование
* Собираем из исходных файлов рабочую базу. (Скриптами или из конфигуратора - Конфигурация -  загрузить конфигурацию из файлов).
* Делаем копию для тестирования филиала.
* Публикуем Центральную базу как WEB-сервис.
* Запускаем 1С с рабочей базой в режмие Менеджер тестирования и загружаем фрейм-ворк vanessa-automation.
* Загружаем тесты и проводим тестирование
![](01.gif)
