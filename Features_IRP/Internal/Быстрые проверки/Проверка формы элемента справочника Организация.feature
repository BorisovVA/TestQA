#language: ru

@tree
@БыстрыеПроверки

Функционал: Проверка формы элемента справочника Организация

Как тестировщик я хочу
проверить доступмность вкладок налоги и валюты
чтобы убедиться в том что пользователь не ошибется с вводом данных

Сценарий: проверка доступности вкладок Налоги И валюты в справочнике Организации
	* Открытие элементы
		И В командном интерфейсе я выбираю 'Справочники' 'Организации'
		Тогда открылось окно 'Организации'
		И я нажимаю на кнопку с именем 'FormCreate'
		Тогда открылось окно 'Организация (создание)'
	* Установка галочки Наша компания и проверка присутствия на форме Валют и Налогов
		И я устанавливаю флаг с именем 'OurCompany'
		И элемент формы "Валюты" присутствует на форме
		И элемент формы "Вид налога" присутствует на форме
	* Снятие галочки Наша компания и проверка отсутствия на форме валют и налогов 
		И я снимаю флаг с именем 'OurCompany'
		И элемент формы "Валюты" существует и не видим на форме
		И элемент формы "Вид налога" существует и не видим на форме

Сценарий: проверка цункциональной опции Использовать организации
	И Я устанавливаю в константу "UseCompanies" значение "Ложь"
	И В командном интерфейсе я выбираю 'Продажи' 'Заказы покупателей'
	Тогда открылось окно 'Заказы покупателей'
	И я нажимаю на кнопку с именем 'FormCreate'
 	И элемент формы "Организация" отсутствует на форме	
	