// Вы когда-нибудь слышали «чистый архитектор», вы, должно быть, слышали это, но знаете ли вы, что это такое? «Чистая архитектура» — это проект мобильной системы, которая строго следует принципу проектирования, называемому разделением задач, точнее, этот стиль архитектуры фокусируется на разделении программного обеспечения.на слои, чтобы упростить разработку и обслуживание самой системы, когда слои хорошо разделены, отдельные части можно разбирать, а также разрабатывать и обновлять независимо друг от друга. Чистая архитектура — одно из самых мощных решений для создания чистых приложений с независимыми уровнями данных, которые могут использовать несколько команд. Работа над полученным приложением также будет масштабируемой, читаемой и тестируемой, и ее можно будет легко поддерживать в любое время, как мы видим на диаграмме, у нас есть три основных уровня: три архитектуры «данные, домен» и функциональный уровень, который такой же, как презентация. Уровень у нас также есть два дополнительных вспомогательных уровня. Ресурсы в общей библиотеке. Уровень представления. Этот уровень представляет содержимое приложения и запускает события, которые изменяют состояние приложения. Этот уровень состоит из трех частей. Часть страниц, которая включает в себя часть управления состоянием страниц приложения, которая содержит файлы, связанные с управлением состоянием. которые мы используем, такие как «BloC или RiverPod» или другие элементы управления состоянием, а также части виджетов, которые включают в себя все конкретные виджеты, которые мы используем на уровне домена страниц.