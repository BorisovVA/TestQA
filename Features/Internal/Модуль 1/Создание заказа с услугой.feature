#language: ru

@tree

Функционал: проверка возможности ввода Количество при заказе услуги

Как менеджер по продажам я хочу
не вводить количество при выборе услуги в документе Заказ
чтобы не тратить свое драгоценное время

Сценарий: Создание заказа с услугой
Контекст: 
Дано Я открыл новый сеанс TestClient или подключил уже существующий

Сценарий: создание документа заказ 
* Открытие формы создания документа
	И я закрываю все окна клиентского приложения
	И В командном интерфейсе я выбираю 'Продажи' 'Заказ'
	Тогда открылось окно 'Заказ (создание)'
* Заполнение шапки документа Заказ
	И из выпадающего списка с именем "ВидЦен" я выбираю точное значение 'Закупочная'
	И из выпадающего списка с именем "Организация" я выбираю точное значение 'ООО "1000 мелочей"'
	И я нажимаю кнопку выбора у поля с именем "Покупатель"
	Тогда открылось окно 'Контрагенты'
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование'              |
		| '000000014' | 'Магазин "Бытовая техника"' |
	И в таблице "Список" я выбираю текущую строку
	И из выпадающего списка с именем "Склад" я выбираю точное значение 'Большой'
* Заполнение табличной части документа Заказ	
	И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице "Товары" я нажимаю кнопку выбора у реквизита с именем "ТоварыТовар"
	Тогда открылось окно 'Товары'
	И я нажимаю на кнопку с именем 'ФормаСписок'
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование' |
		| '000000038' | 'Ремонт'       |
	И в таблице "Список" я выбираю текущую строку
* Проверка возможности внесения количества
	Когда Проверяю шаги на Исключение :
			|'И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст "1"'|

