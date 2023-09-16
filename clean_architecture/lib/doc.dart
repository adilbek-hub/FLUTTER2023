
//https://devmuaz.medium.com/flutter-clean-architecture-series-part-1-d2d4c2e75c47

// Вы когда-нибудь слышали «чистый архитектор», вы, должно быть, слышали это, но знаете ли вы, что это такое? «Чистая архитектура» — это проект мобильной системы, которая строго следует принципу проектирования, называемому разделением задач, точнее, этот стиль архитектуры фокусируется на разделении программного обеспечения.на слои, чтобы упростить разработку и обслуживание самой системы, когда слои хорошо разделены, отдельные части можно разбирать, а также разрабатывать и обновлять независимо друг от друга. Чистая архитектура — одно из самых мощных решений для создания чистых приложений с независимыми уровнями данных, которые могут использовать несколько команд. Работа над полученным приложением также будет масштабируемой, читаемой и тестируемой, и ее можно будет легко поддерживать в любое время, как мы видим на диаграмме, у нас есть три основных уровня: три архитектуры «данные, домен» и функциональный уровень, который такой же, как презентация. Уровень у нас также есть два дополнительных вспомогательных уровня. Ресурсы в общей библиотеке. Уровень представления. Этот уровень представляет содержимое приложения и запускает события, которые изменяют состояние приложения. Этот уровень состоит из трех частей. Часть страниц, которая включает в себя часть управления состоянием страниц приложения, которая содержит файлы, связанные с управлением состоянием. которые мы используем, такие как «BloC или RiverPod» или другие элементы управления состоянием, а также части виджетов, которые включают в себя все конкретные виджеты, которые мы используем на уровне домена страниц.

//Уровень домена является самой внутренней частью слоев и не зависит от других слоев, содержит интерфейсы репозитория сущностей и варианты использования. Уровень домена будет написан исключительно на Dart без элементов FLutter. Причина в том, что домен должен быть связан только с бизнесом. логика приложения, а не детали реализации, сущности должны быть нашими типами данных или классами, которые используются в разных частях нашего программного обеспечения, или, другими словами, мы определяем в нашей версии Clean, что наши сущности — это объекты, которые можно вернуть для использования. или мы можем отправить в API. Репозитории и уровень предметной области или абстрактные классы или контракты определяют свойства и методы, которые потребуются нашему проекту в конкретных случаях использования функций, включают бизнес-правила для конкретного приложения. Каждое событие представляет собой взаимодействие пользователя с системой, и мы можем назвать это вариантом использования. такие как регистрация, вход в систему и другие варианты использования взаимодействия - это не что иное, как мост между уровнями. Это одиночный вызов бизнес-логики. Закладывает модуль данных, который является частью самого внешнего уровня, и отвечает за извлечение данных. Это может быть в форме Вызовы API к серверу локальной базы данных. Он также содержит реализацию репозитория. Этот уровень состоит из трех частей. Одна из частей — репозиторий. Он включает в себя реальные реализации репозиториев на уровне домена. Репозитории отвечают за координацию данных из разных источников данных. другая часть источника данных состоит из удаленных и локальных источников данных. Удаленный источник данных будет выполнять HTTP-запрос к API, в то время как локальный источник данных будет кэшировать наши постоянные данные, а последняя часть — это модели, которые представляют структуру JSON и позволяют нам взаимодействовать. с нашими источниками данных.