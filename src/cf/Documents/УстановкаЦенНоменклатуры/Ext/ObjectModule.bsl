﻿
Процедура ОбработкаПроведения(Отказ, Режим)
	// регистр УстановкаЦен
	Движения.УстановкаЦен.Записывать = Истина;
	Для Каждого ТекСтрокаТовары Из СписокНоменклатуры Цикл
		Движение = Движения.УстановкаЦен.Добавить();
		Движение.Период = Дата;
		Движение.ТипыЦенНоменклатуры = ТипЦенНоменклатуры;
		Движение.Номенклатура = ТекСтрокаТовары.Номенклатура;
		Движение.Цена = ТекСтрокаТовары.Цена;
	КонецЦикла;
КонецПроцедуры
