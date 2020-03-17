---
page_type: sample
products:
- office-outlook
- office-365
languages:
- javascript
extensions:
  contentType: samples
  technologies:
  - Add-ins
  createdDate: 3/23/2016 3:48:52 PM
---
# Пример расширений модуля Outlook для расчета оплачиваемых часов
В этом примере надстройки Outlook 2016 для Windows используется новая точка расширения модуля \<ExtensionPoint xsi:type="Module"> для Outlook. Этот пример кода интегрирует надстройку для определения оплачиваемого рабочего времени со встроенными модулями "Почта Outlook", "Календарь", "Задачи" и т. д.

## Содержание
* [Журнал изменений](#change-history)
* [Предварительные требования](#prerequisites)
* [Настройка проекта](#configure-the-project)
* [Запуск проекта](#run-the-project)
* [Разбор кода](#understand-the-code)
* [Вопросы и комментарии](#questions-and-comments)
* [Дополнительные ресурсы](#additional-resources)

## Журнал изменений
31 марта 2016 г. :
* Опубликована первая версия примера

4 апреля 2016 г. :
* Обновлен файл сведений

## Необходимые компоненты

* Outlook 2016 для Windows
* [NodeJS](https://nodejs.org/en) для обслуживания расширения модуля
* [npm](https://www.npmjs.com/) для установки зависимостей. Поставляется вместе с NodeJS.
* [GitBash](http://www.git-scm.com/downloads) для запуска программ командной строки
* Скопируйте этот репозиторий на локальный компьютер.

## Настройка проекта

Чтобы запустить этот пример, потребуется установить сертификат, так как команды надстроек используют протокол HTTPS. Так как в командах надстроек нет пользовательского интерфейса, вам не будет предложено принять недопустимый сертификат.

1. Запустите ```./gen-cert.sh```, чтобы создать сертификат.
2. Дважды щелкните ```ca.crt``` и установите его в хранилище "Доверенные корневые центры сертификации".

Запуск локального веб-сервера HTTPS для обслуживания файлов в расширении модуля:

1. Установите зависимости проекта, определенные в файле package.json, выполнив команду ```npm install``` в корневом каталоге проекта.
2. Запустите локальный сервер, выполнив команду ```node server.js```

## Запуск проекта

1. Запустите Outlook
2. Перейдите на вкладку "Файл", а затем выберите "Управление надстройками"
3. После открытия диспетчера надстроек выберите символ "+" и нажмите "Добавить из файла"
4. Нажмите "Обзор" и перейдите к каталогу, содержащему образец
5. Выберите манифест модуля (outlook-add-in-javascript-moduleextension.xml) и нажмите "Открыть"
6. Нажмите "Далее", а затем "Установить", чтобы установить модуль
7. Закройте диспетчера модулей

Загрузка нового модуля в Outlook может занять несколько секунд. Но он будет добавлен в список сочетаний клавиш панели навигации. При использовании компактной навигации сочетания клавиш выглядят так:

![Показаны команды надстроек в компактной панели навигации Outlook.](/readme-images/Outlook-Compact-Navigation-Bar.png)

Если вы не используете компактную навигацию, сочетания клавиш выглядят так:

![Показана развернутая панель навигации с одним расширением модуля.](/readme-images/Outlook-Navigation-Bar.png)

Щелкните **Оплачиваемое рабочее время** или значок модуля, чтобы открыть расширение модуля.
Outlook изменится, отображая пользовательский интерфейс модуля.

![Показан пользовательский интерфейс для расширения модуля.](/readme-images/Outlook-Billable-Hours-UI.png)

На ленте три кнопки. Выберите одну, чтобы изменить ставку оплаты,
и итоги в основном интерфейсе изменятся в соответствии с новым тарифом. 

## Разбор кода

В файле манифеста будет включено новое расширение модуля, которое задается в качестве типа расширения в ```"Модуль"```. Это [раздел манифеста](https://github.com/chbighammsft/Outlook-Add-in-JavaScript-ModuleExtension-1/blob/98443386d33191e620631efac4f4f4045cb3b75a/outlook-add-in-javascript-moduleextension.xml#L70), который нужно изменить.

    <!--New Extension Point - Module for a ModuleApp -->
        <ExtensionPoint xsi:type="Module">


## Вопросы и комментарии
Мы будем рады узнать ваше мнение об образце Outlook-Add-in-JavaScript-ModuleExtension. Своими мыслями можете поделиться на вкладке [Проблемы](https://github.com/OfficeDev/Outlook-Add-in-JavaScript-ModuleExtension/issues) этого репозитория.

Общие вопросы о разработке решений для Office 365 следует публиковать на сайте [Stack Overflow](http://stackoverflow.com/questions/tagged/Office365+API). Помечайте свои вопросы тегами [Office365] и [API].

## Дополнительные ресурсы
* [Надстройки Outlook с расширением модуля](http://dev.office.com/docs/add-ins/outlook/extension-module-outlook-add-ins)
* [Обзор платформы надстроек Office](https://msdn.microsoft.com/EN-US/library/office/jj220082.aspx)
* [Документация по API-интерфейсам Office 365](http://msdn.microsoft.com/office/office365/howto/platform-development-overview)
* [Средства для интеграции API-интерфейсов Microsoft Office 365](https://visualstudiogallery.msdn.microsoft.com/a15b85e6-69a7-4fdf-adda-a38066bb5155)
* [Центр разработчиков Office](http://dev.office.com/)
* [Проекты API Office 365 и примеры кода для начинающих](http://msdn.microsoft.com/en-us/office/office365/howto/starter-projects-and-code-samples)

## Авторские права
(c) Корпорация Майкрософт (Microsoft Corporation), 2016. Все права защищены.



Этот проект соответствует [Правилам поведения разработчиков открытого кода Майкрософт](https://opensource.microsoft.com/codeofconduct/). Дополнительные сведения см. в разделе [часто задаваемых вопросов о правилах поведения](https://opensource.microsoft.com/codeofconduct/faq/). Если у вас возникли вопросы или замечания, напишите нам по адресу [opencode@microsoft.com](mailto:opencode@microsoft.com).
