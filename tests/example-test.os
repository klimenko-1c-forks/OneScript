﻿Перем юТест;

Функция Версия() Экспорт
	Возврат "0.1";
КонецФункции

Функция ПолучитьСписокТестов(ЮнитТестирование) Экспорт
	
	юТест = ЮнитТестирование;
	
	ВсеТесты = Новый Массив;
	
	ВсеТесты.Добавить("ТестДолжен_ПроверитьВерсию");
	ВсеТесты.Добавить("НесуществующийМетод");
	ВсеТесты.Добавить("МетодОшибка");
	
	Возврат ВсеТесты;
КонецФункции

Процедура ТестДолжен_ПроверитьВерсию() Экспорт
	юТест.ПроверитьРавенство("0.1", Версия());
КонецПроцедуры

Процедура МетодОшибка() Экспорт
	юТест.ПроверитьРавенство(1,2);
КонецПроцедуры
