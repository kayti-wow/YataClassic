﻿if select(2, UnitClass('player')) ~= "SHAMAN" then
	return
end
local L = LibStub("AceLocale-3.0"):NewLocale("Yata", "ruRU", false)
if not L then return end

L["Advanced"] = "Дополнительно"
L["AdvancedDesc"] = "Дополнительные параметры для продвинутых пользователей"
L["AdvancedHeader"] = "Дополнительные параметры (используйте на свой страх и риск)"
L["Alpha"] = "Opacity" -- Requires localization
L["AlphaDesc"] = "Configures the opacity of the totem bar.  When set to 1 the bar will be completely opaque and when set to 0 the bar will be invisible" -- Requires localization
L["Appearance"] = "Внешний вид"
L["AppearanceDesc"] = "Настроить внешний вид панели"
L["AssignToCall"] = "Назначить тотем"
L["AssignToCallDesc"] = "Удерживайте эту кнопку и нажмите ЛКМ, чтобы назначить выбранный тотем в текущий набор тотемов. Если тотем уже присутствует в выбранном наборе, это действие исключит его из набора. "
L["Bindings"] = "Назначение"
L["BindingsDesc"] = "Настройка поведения при нажатии кнопки"
L["BrokerLock"] = "Переключатель панели заблокировано/разблокировано"
L["BrokerOptions"] = "Нажмите ПКМ для настройки"
L["CastOnly"] = "Использование (только)"
L["CastOnlyDesc"] = "Удерживайте эту кнопку и нажмите ЛКМ, чтобы вызвать тотем/использовать заклятие, не изменив порядок кнопок."
L["DeleteSetName"] = "Введите имя комплекта, чтобы удалить"
L["EnableAdvanced"] = "Включить дополнительные возможности?"
L["EnableAdvancedDesc"] = "Отметьте, чтобы использовать дополнительные возможности"
L["EnableAutoSwap"] = "Автоматическое переключение"
L["EnableAutoSwapDesc"] = "Когда отмечено, использование заклятия также поместит его на переднюю панель"
L["EnableCallSwap"] = "Перенос набора тотемов"
L["EnableCallSwapDesc"] = "Когда отмечено, вызов набора тотемов (например, Зов Стихий) также автоматически перенесет все тотемы этого набора на переднюю панель"
L["EnableMacro"] = "Enable Macro"
L["EnableMacroDesc"] = "Enables the creation of the Yata totem stomping macro"
L["EnableTimers"] = "Использование таймеров"
L["EnableTimersDesc"] = "Когда отмечено, Yata отражает таймеры и кулдаун ваших тотемов"
L["Gap"] = "Промежуток"
L["GapDesc"] = "Изменяет промежуток между кнопками"
L["HD"] = "Горизонтальная панель, раскрывается вниз"
L["HU"] = "Горизонтальная панель, раскрывается вверх"
L["HideBar"] = "Скрыть панель тотемов Yata"
L["HideBarDesc"] = "Когда отмечено, Yata продолжает функционировать (таймеры и кнопки работают), но панель с тотемами не отражается"
L["HideIndicators"] = "Скрыть отметки принадлежности наборам"
L["HideIndicatorsDesc"] = "Когда отмечено, блок отметок принадлежности наборам не отражается на тотемах. Вы можете увидеть какие тотемы входят в набор в подсказке (если отмечено) или вызвав весь набор на переднюю панель, использую назначенную клавишу"
L["Lock"] = "Блокировать панели"
L["LockDesc"] = "Снимите, чтобы передвинуть панели тотемов или таймеров"
L["Macro"] = "Macro"
L["MacroDesc"] = "Configure the Yata totem stomping macro.  This macro will automatically update to always drop the visible totems in a sequence"
L["MacroReset"] = "Macro Reset Button"
L["MacroResetDesc"] = "Sets the button that will reset the cast sequence if the macro is clicked while the button is pressed"
L["MultiTooltip"] = "Добавить тотемы в подсказку"
L["MultiTooltipDesc"] = "Когда отмечено, Yata отображает в подсказке тотемы входящие в набор"
L["Multicast"] = "Набор тотемов (напримерм, Зов Стихий)"
L["NewSetName"] = "Введите имя комплекта"
L["Orientation"] = "Расположение панели"
L["OrientationDesc"] = "Позволяет вам выбрать расположение панели и направление раскрытия кнопок"
L["PopScale"] = "Масштаб всплывающих кнопок"
L["PopScaleDesc"] = "Изменяет масштаб всплывающих кнопок, которые отражаются вне панели"
L["Reset"] = "Сброс"
L["ResetDesc"] = "Удалит ваш профиль и вернет Yata к настройкам по умолчанию"
L["Scale"] = "Масштаб панели"
L["ScaleDesc"] = "Изменяет масштаб панели"
L["ShowBlizzBar"] = "Отражать Blizzard-панель тотемов"
L["ShowBlizzBarDesc"] = "Когда отмечено, Yata не будет скрывать встроенную по умолчанию Blizzard-панель тотемов. Вы можете одновременно отражать две панели или скрыть панель Yata, указав это в опциях. Примечание: не работает, когда вы используете Dominos. Требует перезагрузку интерфейса!"
L["ShowCall"] = "Поместить все на переднюю панель"
L["ShowCallDesc"] = "Удерживайте эту кнопку и нажмите ПКМ на наборе тотемов (например, Зов Стихий), чтобы переместить все тотемы этой группы на переднюю панель"
L["ShowKeybind"] = "Отражать назначенные клавиши"
L["ShowKeybindDesc"] = "Когда отмечено, отражает назначенные клавиши"
L["Skin"] = "Скин"
L["SkinDesc"] = "Yata использует Button Facade, чтобы поддерживать различные скины. Вы можете выбрать любой скин или использовать стиль Blizzard"
L["SpellCount"] = "Видимые заклинания"
L["SpellCountDesc"] = "Изменяет количество заклинаний в ряду (колонке, при верт.расположении), которые всегда видимы"
L["Spells"] = "Все кнопки"
L["SwapButton"] = "Перенос на переднюю панель"
L["SwapButtonDesc"] = "Удерживайте эту кнопку и нажмите ЛКМ, чтобы перемесить выбранный тотем на переднюю панель"
L["TBTT"] = "Снизу вверх"
L["TLTR"] = "Слева направо"
L["TRTL"] = "Справа налево"
L["TTTB"] = "Сверху вниз"
L["TimerBar"] = "Настройка таймеров"
L["TimerBars"] = "Панели"
L["TimerBoth"] = "Также"
L["TimerFont"] = "Шрифт"
L["TimerFontDesc"] = "Укажите шрифт для отражения на панели таймров. Yata использует библиотеку LibSharedMedia для поддержки шрифтов"
L["TimerFontSize"] = "Размер шрифта"
L["TimerFontSizeDesc"] = "Укажите размер шрифта для панели таймров"
L["TimerGrowUp"] = "Панель растет вверх"
L["TimerGrowUpDesc"] = "Когда отмечено, новые полосы будут размещены сверху, снизу в противном случае"
L["TimerLength"] = "Длина"
L["TimerLengthDesc"] = "Укажите длину панели таймров"
L["TimerOrientation"] = "Расположение"
L["TimerOrientationDesc"] = "Расположение панели таймров"
L["TimerScale"] = "Масштаб"
L["TimerScaleDesc"] = "Масштаб панели таймров"
L["TimerSelf"] = "Кнопки"
L["TimerSpacing"] = "Интервал"
L["TimerSpacingDesc"] = "Интервал между отдельными полосками таймеров"
L["TimerStrata"] = "Порядок слоя"
L["TimerStrataDesc"] = "Порядок слоя панели таймеров. Более высоки порядок позволит отражать панель таймеров над другими элементами интерфейса"
L["TimerTexture"] = "Текстура"
L["TimerTextureDesc"] = "Yata использует библиотеку LibSharedMedia для установки текстуры панели таймеров. Вы можете выбрать текстуру через LSM или использовать встроенную от Blizzard"
L["TimerThickness"] = "Толщина"
L["TimerThicknessDesc"] = "Толщина отдельной полосы таймера"
L["TimerType"] = "Тип"
L["TimerTypeDesc"] = "Yata может отражать таймеры на самой кнопке или на отдельной панели"
L["Timers"] = "Таймеры"
L["TimersDesc"] = "Настройка таймеров"
L["Tooltip"] = "Тип подсказки"
L["TooltipDesc"] = "Укажите тип подсказки, которую вы желаете видеть, когда подводите мышку к кнопке"
L["TooltipFull"] = "Полная"
L["TooltipNone"] = "Без подсказки"
L["TooltipShort"] = "Короткая"
L["TotemSets"] = "Комплект тотемов"
L["TotemSetsButton"] = "Редактор комплектов"
L["TotemSetsButtonDesc"] = "Кликните, чтобы открыть редактор комплектов"
L["TotemSetsDesc"] = "Настройка комплектов тотемов"
L["VL"] = "Вертикально, раскрывается влево"
L["VR"] = "Вертикально, раскрывается вправо"
L["XDesc"] = "Sets the X position of the bar" -- Requires localization
L["YDesc"] = "Sets the Y position of the bar" -- Requires localization