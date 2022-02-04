﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Android.App;
using Android.Content;
using Android.OS;
using Android.Runtime;
using Android.Support.V7.App;
using Android.Views;
using Android.Widget;

namespace CQuiz.Activities
{
    [Activity(Label = "DescriptionActivity", Theme = "@style/AppTheme")]
    public class DescriptionActivity : AppCompatActivity
    {
        TextView quizTopic;
        TextView quizTheory;
        Button startQuiz;

        // variables
        string Topic;

        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);

            SetContentView(Resource.Layout.TheoryTopic);

            quizTopic = (TextView)FindViewById(Resource.Id.topicView);
            quizTheory = (TextView)FindViewById(Resource.Id.themeDescription);
            startQuiz = (Button)FindViewById(Resource.Id.buttoStartQuiz);

            Topic = Intent.GetStringExtra("topic");
            quizTopic.Text = Topic;
            quizTheory.Text = GetTopicDescription(Topic);
            startQuiz.Click += StartQuiz_Click;
        }
        private void StartQuiz_Click(object sender, EventArgs e)
        {
            Intent intent = new Intent(this, typeof(QuizActivity));
            intent.PutExtra("topic", Topic);
            StartActivity(intent);
            Finish();
        }

        string GetTopicDescription(string topic)
        {
            string topicDescription = "";

            if (topic == "Пробный Quiz")
            {
                topicDescription = "Quiz C++ - разработан для того, чтобы вы обучились основам языка С++.\n" +
                    "Здесь вы получите замечательную теоретическую подготовку.\n" +
                    "Начнем первый Quiz!\n\n";
            }
            else if (topic == "Введение")
            {
                topicDescription = "Перед C++ был C\n" +
                    "\nC (произносится как «Си»)\n" +
                    "\nБыл разработан в 1972 году Денисом Ритчи [Dennis Ritchie]\n" +
                    "\nв Bell Telephone Laboratories как системный язык программирования, т. е. язык для написания операционных систем. Основной задачей Ритчи было создание легко компилируемого минималистического языка, который предоставлял бы эффективный доступ к памяти, относительно быстро выполнялся, и на котором можно было бы писать эффективный код.\n" +
                    "\nТаким образом, при разработке высокоуровневого языка был создан язык Си, который во многом относился к языкам низкого уровня, оставаясь при этом независимым от платформ, для которых мог быть написан код.\n" +
                    "\nC++\n" +
                    "\n(произносится как «Си плюс плюс»)\n" +
                    "\nБыл разработан Бьёрном Страуструпом [Bjarne Stroustrup] в Bell Labs в качестве дополнения к Cи в 1979 г. Он добавил множество новых фич в язык Си. Его популярность была вызвана объектно-ориентированностью языка. Об объектно-ориентированном программировании (ООП) и его отличиях от традиционных методов программирования мы поговорим несколько позже.\n" +
                    "\nФилософия языков семейства Си.\n" +
                    "\nСмысл философии языков С и C++ можно определить выражением «доверять программисту». Например, компилятор не будет вам мешать сделать что-то новое, что имеет смысл, но также не будет мешать вам сделать что-то такое, что может привести к сбою. Это одна из главных причин, почему так важно знать то, что вы не должны делать, как и то, что вы должны делать, создавая программы на языках С/С++\n";
            }
            else if (topic == "Hello World")
            {
                topicDescription = "Сейчас мы по традиции любого языка программирования напишем программу «привет мир». Для этого вам понадобится любой компилятор, можете найти онлайн компилятор в интернете или скачать Visual Studio для полноценной разработки на языку С++." +
                    "\nДля Visual Studio\n" +
                    "\nОткройте меню «Файл → Создать → Проект». Перейдите на вкладку «Общие» и выберите «Пустой проект». Придумайте проекту любое название, например «lesson1» и нажмите «OK»." +
                    "\nВ окне обозревателя решений (обычно он находится в левом верхнем углу) щелкните правой кнопкой на папке «файлы исходного кода». В диалоговом окне выберите пункт меню «Добавить → Создать элемент». Введите название для нового файла — main.cpp и нажмите кнопку «Добавить»." +
                    "\n\nКод первой программы\n" +
                    "Наберите следующий код:\n\n" +
                    "#include <iostream>\n" +
                    "#include <cstdlib> // для system\n" +
                    "int main()\n" +
                    "{\n" +
                    "std::cout << \"Hello, world!\" << std::endl;\n" +
                    "std::system(\"pause\");\n" +
                    "// Только для тех, у кого MS Visual Studio\n" +
                    "return 0;\n" +
                    "}\n" +
                    "\nОписание синтаксиса\n" +
                    "\nДиректива #include используется для подключения других файлов в код. Строка #include <iostream>, будет заменена содержимым файла «iostream.h», который находится в стандартной библиотеке языка и отвечает за ввод и вывод данных на экран." +
                    "\n\n#include <cstdlib> подключает стандартную библиотеку языка С. Это подключение необходимо для работы функции system." +
                    "\nВсе то, что находится внутри фигурных скобок функции int main() {} будет автоматически выполняться после запуска программы." +
                    "\n\nСтрока cout << \"Hello, world!\" << endl; говорит программе выводить сообщение с текстом «Hello, world» на экран." +
                    "\nОператор cout предназначен для вывода текста на экран командной строки. После него ставятся две угловые кавычки (<<). Далее идет текст, который должен выводиться. Он помещается в двойные кавычки. Оператор endl переводит строку на уровень ниже." +
                    "\n\nЕсли в процессе выполнения произойдет какой - либо сбой, то будет сгенерирован код ошибки, отличный от нуля.Если же работа программы завершилась без сбоев, то код ошибки будет равен нулю. Команда return 0 необходима для того, чтобы передать операционной системе сообщение об удачном завершении программы." +
                    "\n\n!В конце каждой команды ставится точка с запятой!";
            }
            else if (topic == "Переменные")
            {
                topicDescription = "На ум сразу приходят слова «переменять» - «поменять»\n" +
                    "\nОбъявление переменной в C++ происходит таким образом: сначала указывается тип данных для этой переменной а затем название этой переменной.\n" +
                    "\nint a; // объявление переменной a целого типа.\n" +
                    "\nfloat b; // объявление переменной b типа данных с плавающей запятой.\n" +
                    "\ndouble c = 14.2; // инициализация переменной типа double.\n" +
                    "\nchar d = 's'; // инициализация переменной типа char.\n" +
                    "\nbool k = true; // инициализация логической переменной k.\n" +
                    "\nПрограммируя на языке C++, мы создаем, обрабатываем и уничтожаем объекты." +
                    "\nОбъект — это часть памяти, которая может хранить значение. В качестве аналогии мы можем использовать почтовый ящик, куда мы помещаем информацию и откуда её извлекаем. Все компьютеры имеют оперативную память, которую используют программы." +
                    "\n\nПри создании объекта, часть оперативной памяти выделяется для этого объекта. Большинство объектов, с которыми мы будем работать в языке C++, являются переменными.";
            }
            else if (topic == "Инициализация vs. Присваивание")
            {
                topicDescription = "В языке C++ есть две похожие концепции, которые новички часто путают: присваивание и инициализация.\n" +
                    "После объявления переменной ей можно присвоить значение с помощью оператора присваивания (знак равенства =):\n" +
                    "\nint a; // это объявление переменной\n\n" +
                    "a = 8; // а это присваивание переменной a значения 8\n" +
                    "\nВ языке C++ вы можете объявить переменную и присвоить ей значение одновременно. Это называется инициализацией (или «определением»). \n " +
                    "int a = 8; // инициализируем переменную a значением 8" +
                    "\nПеременная может быть инициализирована только после операции объявления.\n" +
                    "Хотя эти два понятия близки по своей сути и часто могут использоваться для достижения одних и тех же целей, все же в некоторых случаях следует использовать инициализацию, вместо присваивания, а в некоторых — присваивание вместо инициализации." +
                    "\n" +
                    "\nПравило: если у вас изначально имеется значение для переменной, то используйте инициализацию, вместо присваивания.\n" +
                    "\nВ отличие от других языков программирования, языки Cи и C++не инициализируют переменные определенными значениями(например, нулем) по умолчанию. Поэтому, при создании переменной, ей присваивается ячейка в памяти, в которой уже может находиться какой-нибудь мусор! Переменная без значения(со стороны программиста или пользователя) называется неинициализированной переменной.\n" +
                    "\nИспользование неинициализированных переменных может привести к ошибкам, например:\n" +
                    "\n#include <iostream>\n" +
                    "\nint main()" +
                    "\n{ " +
                    "\n" +
                    "// Объявляем целочисленную переменную a" +
                    "\n" +
                    "int a;\n" +
                    "\n // Выводим значение переменной a на экран (a - это неинициализированная переменная)" +
                    "\nstd::cout << a;\n" +
                    "\nreturn 0;" +
                    "\n}";
            }
            else if (topic == "Типы данных. Целочисленный тип данных")
            {
                topicDescription = "Начнем с того, что может иметь тип данных\n" +
                    "Переменная типа void — это самый простой тип данных, который означает «отсутствие любого типа данных»." +
                    "\nСледовательно, переменные не могут быть типа void:" +
                    "\nТип void, как правило, используется в 2-х случаях:\n" +
                    "\nИспользование №1: Указать, что функция не возвращает значение:" +
                    "\nИспользование №2: указать, что функция не имеет никаких параметров (перешло из языка Cи):" +
                    "\nУказание типа void как «никаких параметров» является пережитком, сохранившимся еще со времен языка Cи.\n" +
                    "\nЦелочисленный тип данных — это тип, переменные которого могут содержать только целые числа (без дробной части, например: -2, -1, 0, 1, 2)." +
                    "\nВ языке C++ есть 6 основных целочисленных типов, доступных для использования:\n" +
                    "\n             Размер       Диапозон:\n" +
                    "" +
                    "\nshort int          2 - 32768/32767" +
                    "\nunsigned short int 2   0/65 535" +
                    "\nint\n4 - 2.147.483.648/2.147.483.647\n" +
                    "\nunsigned int       4   0/4.294.967.295" +
                    "\nlong int\n4 - 2.147.483.648/2.147.483.647\n" +
                    "\nunsigned long int  4   0/4.294.967.295\n" +
                    "" +
                    "\nДиапазон — это значения от и до, которые может хранить определенный тип данных. Диапазон целочисленной переменной определяется двумя факторами: её размером(измеряется в битах) и её знаком(может быть signed или unsigned)." +
                    "\n\nЦелочисленный тип signed(со знаком) означает, что переменная может содержать как положительные, так и отрицательные числа.\n" +
                    "По умолчанию, ключевое слово signed пишется перед типом данных." +
                    "\n\nЦелочисленный тип unsigned(без знака) может содержать только положительные числа.";
            }
            else if (topic == "Действительные числа")
            {
                topicDescription = "или типы данных с плавающей точкой!" +
                    "\nВ С++ существуют два типа данных с плавающей точкой: float и double.\n" +
                    "\n  	       Размер 	              Диапозон:\n" +
                    "\nfloat    	4\n-2 147 483 648.0 / 2 147 483 647.0\n" +
                    "\ndouble 		8\n" +
                    "\n	 -9 223 372 036 854 775 808.0 /\n 9 223 372 036 854 775 807.0\n" +
                    "\n" +
                    "\nТипы данных с плавающей точкой предназначены для хранения чисел с плавающей точкой. Типы данных float и double могут хранить как положительные, так и отрицательные числа с плавающей точкой." +
                    "\n\nУ типа данных float размер занимаемой памяти в два раза меньше, чем у типа данных double, а значит и диапазон принимаемых значений тоже меньше. Если тип данных float объявить с приставкой long, то диапазон принимаемых значений станет равен диапазону принимаемых значений типа данных double." +
                    "\n\n!В основном, типы данных с плавающей точкой нужны для решения задач с высокой точностью вычислений, например, операции с деньгами.";
            }
            else if (topic == "Логический тип данных. Bool")
            {
                topicDescription = "В реальной жизни перед нами очень часто возникают вопросы, на которые можно ответить однозначно:" +
                    "\n«Да» или «Нет»." +
                    "\nЯблоко является фруктом?" +
                    "\nДа!\n" +
                    "\nВам нравится спаржа?\n" +
                    "\nНет!\n" +
                    "\nРассмотрим утверждение:\n" +
                    "             \n«Яблоко — это фрукт».\n" +
                    "\nЯвляется ли это правдой? Да! Яблоко действительно является фруктом." +
                    "\nИли как насчет:\n" +
                    "             \n«Я люблю спаржу».\n" +
                    "Нет!\n" +
                    "\nПодобные стейтменты, которые имеют только два возможных исхода – да - правда или нет-ложь, настолько распространены, что многие языки программирования добавили специальный тип для работы с ними — логический тип данных.\n" +
                    "\nВ языке С++ это логический тип данных bool(от англ. «boolean»).\n" +
                    "\nПеременные логического типа — это переменные, диапазон которых состоит только из двух возможный значений: true(1) и false(0)." +
                    "\nДля объявления логической переменной используется ключевое слово bool:	" +
                    "\nbool b;\n" +
                    "\nИнициализировать логическую переменную или выполнить операцию присваивания можно с помощью ключевых слов true или false:" +
                    "\nНа самом деле, логические значения не сохраняются как true или false.Они обрабатываются в виде целых чисел: \n" +
                    "\nвместо true — единица, " +
                    "\nвместо false — ноль.";
            }
            else if (topic == "Символьный тип данных. Char")
            {
                topicDescription = "Переменная типа char занимает 1 байт." +
                    "\nОднако вместо конвертации значения типа char в целое число, оно интерпретируется как ASCII-символ.\n" +
                    "\nASCII(сокр.от «American Standard Code for Information Interchange») — это американский стандартный код для обмена информацией, который определяет способ представления символов английского языка(+несколько других) в виде чисел от 0 до 127.\n" +
                    "\n Например:" +
                    "\n код буквы 'а' — 97," +
                    "\n код буквы 'b' — 98.\n" +
                    "\nСимволы всегда помещаются в одинарные кавычки" +
                    "\nСледующие два стейтмента выполняют одно и то же (присваивают переменным типа char целое число 97):" +
                    "\nchar ch1(97); // инициализация переменной типа char целым числом 97" +
                    "\nchar ch2('a'); // инициализация переменной типа char символом 'a' (97)\n" +
                    "\nОператор static_cast\n" +
                    "\nЕсли вы хотите вывести символы в виде цифр, а не в виде букв, то вам нужно сообщить cout выводить переменные типа char в виде целочисленных значений.\n" +
                    "!!Не очень хороший способ это сделать — присвоить переменной типа int переменную типа char и вывести её!!\n" +
                    "\nСледующая программа просит пользователя ввести символ. Затем она выводит этот символ и его ASCII-код:\n" +
                    "\n#include <iostream>" +
                    "\nint main()" +
                    "\n{" +
                    "\nstd::cout << \"nput a keyboard character:\";" +
                    "\nchar ch;" +
                    "\nstd::cin >> ch;" +
                    "\nstd::cout << ch << \" has ASCII code \" << static_cast<int>(ch) << std::endl;" +
                    "\nreturn 0;" +
                    "\n}" +
                    "\n\nРезультат выполнения программы:" +
                    "\nInput a keyboard character: q" +
                    "\nq has ASCII code 113\n" +
                    "}";
            }
            else if (topic == "Cтроки - массив «чаров»")
            {
                topicDescription = "Char string[] = \"QuizLove\"; // объявление символьного массива (строки)" +
                    "\nТекст в кавычках и есть строковая константа. Кавычки используются для определения начала и конца строковой константы и её частью не являются.\n" +
                    "\nОбъявляется строка таким образом – создаем массив типа char, размер в квадратных скобках указывать не обязательно (его подсчитает компилятор), оператор = и в двойных кавычках пишем необходимый текст. То есть инициализируем массив строковой константой:\n" +
                    "\nПрограмма: \n\ninclude <iostream>\nusing namespace std;\n\nint main()\n{	\nsetlocale(LC_ALL, \"rus\");	" +
                    "\nchar str[] = \"Am I  a great progger ? \"; 	\n// '\\0' присутствует неявно	" +
                    "\ncout << str << endl;\n	" +
                    "\nreturn 0;\n" +
                    "}\n" +
                    "\nПрописывать нулевой символ не надо. Он присутствует неявно и добавляется в каждую такую строковую константу автоматически. Таким образом, при том, что мы видим 21 символов в строке, размер массива будет 22, так как \\0 тоже символ и занимает один байт памяти. Займет он последнюю ячейку этого символьного массива.\n" +
                    "\nЧтобы выводить русский текст пропишите перед объявлением массива символов функцию: \n		" +
                    "\nsetlocale(LC_ALL, \"Russian\");\n" +
                    "\nПока не задумывайтесь, над этой функцией!";
            }
            else if (topic == "Литералы")
            {
                topicDescription = "Когда в программе встречается некоторое число, например 1, то это число называется литералом, или литеральной константой. Константой, потому что мы не можем изменить его значение, и литералом, потому что его значение фигурирует в тексте программы. \n" +
                    "\nВиды литералов: \n" +
                    "\n1. целочисленный литерал \n" +
                    "\nЛитералы целых типов можно записать в десятичном, восьмеричном и шестнадцатеричном виде: \n" +
                    "\nНапример, число 20 в разных СС:\n" +
                    "\n20 //десятичный" +
                    "\n024 // восьмеричный" +
                    "\n0х14 // шестнадцатеричный\n" +
                    "2. действительные числа \n" +
                    "\nИх можно записывать с десятичной точкой, так и в научной (экспоненциальной) нотации." +
                    "\nНапример:\n" +
                    "\n3.14" +
                    "\n1.0E-3E" +
                    "\n3.слова true и false \n" +
                    "\nСлова true и false являются литералами типа bool.\n" +
                    "\n4.специальные знаки \n" +
                    "\nИх довольно много, самые часто встречающиеся — это" +
                    "\nновая строка \n\nгоризонтальная табуляция \\t" +
                    "\nодиночная кавычка \\'" +
                    "\nдвойная кавычка \"" +
                    "\n" +
                    "\n5.символьный литерал \n" +
                    "\nПредставимые литеральные символьные константы записываются как символы в одинарных кавычках.\n" +
                    "Например:\n'a'           '2'            ','           ' '\n" +
                    "\n6. строковый литерал\n" +
                    "\nСтроковый литерал – строка символов, заключенная в двойные кавычки. Такой литерал может занимать и несколько строк, в этом случае в конце строки ставится обратная косая черта. \n" +
                    "\nНапример:" +
                    "\nadfjrngviewgvgrfrfqwe \\n1234utuutuuuas\"\n" +
                    "\nФактически строковый литерал представляет собой массив символьных констант, где по соглашению языков С и С++последним элементом всегда является специальный символ с кодом 0(\\0) – пустой символ!";
            }
            else if (topic == "Условие If-Else")
            {
                topicDescription = "Существуют ситуации, когда программа должна выполнить команды в зависимости от разных ситуаций.\n\nК примеру, мы вводим с клавиатуры целое число. Если это число больше нуля, то программа должна вывести сообщение «На улице холодно!», иначе «На улице тепло!». Реализуем этот алгоритм на C++ с помощью конструкции ветвления.\n\nКонструкция условия выглядит следующим образом: \n\nif (ВЫРАЖЕНИЕ) {  \n	\nКОМАНДА 1 }\nelse {\nКОМАНДА 2\n}\n\nif и else - это операторы. Если условие(выражение) истинно, то сработает команда 1, иначе ( else ) сработает команда 2.\n\nКод программы для нашей задачи:\n\n#include <iostream>\n\nint main()\n{    setlocale(LC_ALL, «rus»);\n    double num;\n\n     std::cout << \"Введите произвольное число: \";\n     std::cin >> num;\n\n    if (num > 0) { // Если введенное число больше 0\n         std::cout << «На улице тепло!» <<  std::endl;\n    } else { // иначе\n         std::cout << «На улице холодно!» <<  std::endl;\n    }\n    return 0;\n}\n\nЗапустите программу и поиграйте с числами. \nОднако, мы с вами не учли все случаи. Программа не выводит сообщение, если пользователь вводит число 0.\n\nЭто важно запомнить, что программист должен рассматривать все случаи!\n\nИтак, полные код нашей программы выгладит, так: \n\n#include <iostream>\n\nint main()\n{\n    setlocale(LC_ALL, «rus»);\n    double num;\n\n     std::cout << \"Введите произвольное число: \";\n     std::cin >> num;\n\n    if (num > 0) { // Если введенное число больше 0\n        std::cout << «На улице тепло!» <<  std::endl;\n    } else  if (num < 0)  { // иначе если \n        std::cout << «На улице холодно!» <<  std::endl;\n    }\n    else { // иначе\n        std::cout << «На ноль!» << std::endl;\n    }\nv    return 0;\n}\n\nДа, вы можете комбинировать if else, чтобы обрабатывать не два случая, а три или даже 100 различных ситуаций. \nКаждому оператору if соответствует только один оператор else. Совокупность этих операторов — else if означает, что если не выполнилось предыдущее условие, то проверить данное. Если ни одно из условий не верно, то выполняется тело оператора else.\n\nХорошенько потренируйтесь, попробуйте придумать свой пример с ветвлением. Когда поймете, что поняли эту тему, можете смело приступать к следующему уроку.\n\n";
            }
            else if (topic == "Цикл for")
            {
                topicDescription = "В жизни мы часто делаем множество однообразных действий, например, каждый день ходим в школу или универ. Ну, а в программе, например нам нужно посчитать сумму чисел до 100!\n\nПописывать сумму каждого числа - не выгодно никому! \nДля этого существуют циклы. \nПервый цикл - это цикл for \n\nЕго структура: \nfor (счетчик = значение; счетчик < значение; шаг цикла) {\n    тело цикла;\n}\n\nИтерацией цикла называется один проход этого цикла.\n\nШаг цикла — это значение, на которое будет увеличиваться или уменьшаться счетчик цикла при каждом проходе.\n\nЭто значит команды в теле цикла будут повторяться до тех пор, пока счетчик не достигнет значения \n\nДавайте напишем код, с помощью которого можно посчитать сумму всех чисел от одного до 100! \n\n#include <iostream>\n\nint main()\n{\n   setlocale(LC_ALL, «rus»);\n    int i; // счетчик цикла\n    int sum = 0; // сумма чисел от 1 до 100.\n\n    for (i = 1; i <= 100; i++) // задаем начальное значение 1, конечное 1000 и задаем шаг цикла - 1.\n    {\n        sum = sum + i;\n    }\n    std::cout << \"Сумма чисел от 1 до 100 = \" << sum << std::endl;\n            return 0;\n}\n\nЗаметьте, что конечное значение счетчика я задал нестрогим неравенством ( <= — меньше либо равно), поскольку, если бы я поставил знак меньше, то цикл произвел бы 99 итераций, т.е. на одну меньше, чем требуется. \n\nПопробуйте сами написать программу, которая выводит сумму чисел от заданного числа до конечного числа - оба числа вводятся с клавиатуры. \n\n";
            }
            else if (topic == "Цикл while")
            {
                topicDescription = "Когда мы не знаем, сколько итераций должен произвести цикл, нам понадобится цикл while. Синтаксис цикла while в C++ выглядит следующим образом.\n\n while (Условие) {\n    Тело цикла;\n}\n\nДанный цикл будет выполняться, пока условие, указанное в круглых скобках является истиной. Решим ту же задачу с помощью цикла while. Хотя здесь мы точно знаем, сколько итераций должен выполнить цикл, очень часто бывают ситуации, когда это значение неизвестно.\n\nНиже приведен исходный код программы, считающей сумму всех целых чисел от 1 до 100.\n\n #include <iostream>\nusing namespace std;\n\nint main()\n{\n     setlocale(LC_ALL, «rus»);\n    int i = 0; // инициализируем счетчик цикла.\n    int sum = 0; // инициализируем счетчик суммы.\n    while (i < 1000)\n    {\n        i++;\n        sum += i;\n    }\n    std::cout << \"Сумма чисел от 1 до 100 = \" << sum <<  std::endl; \n    return 0;\n}\n\n";
            }
            else if (topic == "Тест по первой части")
            {
                topicDescription = "Настало время ИТОГО ТЕСТА!\nНе бойтесь, вы справитесь :) \n\n\nБольшинство программ на сегодняшний день подобны египетским пирамидам из миллиона кирпичиков друг на друге и без конструктивной целостности — они просто построены грубой силой и тысячами рабов.\nAlan Kay\n\nНа сегодня вы изучили азы программирования\nЭти кирпичики помогут вам подобраться к ООП, что обязательно \n нужно изучить каждому программисту!\n\nДо новых Quizов \n\n";
            }
            return topicDescription;
        }

    }

}
