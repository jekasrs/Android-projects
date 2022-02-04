using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Android.App;
using Android.Content;
using Android.OS;
using Android.Runtime;
using Android.Views;
using Android.Widget;
using CQuiz.DataModels;

namespace CQuiz.Help
{
    public class QuizHelper
    {
        List<Question> Zero;
        List<Question> Enter;
        List<Question> HelloWorld;
        List<Question> Cin;
        List<Question> Cout;
        List<Question> Data;
        List<Question> ZeloeNumber;
        List<Question> BOOL;
        List<Question> STRINGCHAR;
        List<Question> IFELSE1;
        List<Question> IFELSE2;
        List<Question> ZICLE;
        List<Question> ZICLEFOR;
        List<Question> ZICLEWHILE;
        List<Question> IFELSEIF; 
        public List<Question> GetQuizQuestions(string topic)
        {
            List<Question> quizList = new List<Question>();


            if (topic == "Пробный Quiz")
            {
                InitializeZeroLesson();
                quizList = Zero;
            }
            else if (topic == "Введение")
            {
                InitializeEnterLesson();
                quizList = Enter;
            }
            else if (topic == "Hello World")
            {
                InitializeHelloWorldLesson();
                quizList = HelloWorld;
            }
            else if (topic == "Переменные")
            {
                InitializeCINLesson();
                quizList = Cin;
            }
            else if (topic == "Инициализация vs. Присваивание")
            {
                InitializeCOUTLesson();
                quizList = Cout;
            }
            else if (topic == "Типы данных. Целочисленный тип данных")
            {
                InitializeDataLesson();
                quizList = Data;
            }
            else if (topic == "Действительные числа")
            {
                InitializeZeloeNumberLesson();
                quizList = ZeloeNumber;
            }
            else if (topic == "Логический тип данных. Bool")
            {
                InitializeBOOLLesson();
                quizList = BOOL;
            }
            else if (topic == "Символьный тип данных. Char")
            {
                InitializeSTRINGCHARLesson();
                quizList = STRINGCHAR;
            }
            else if (topic == "Cтроки - массив «чаров»")
            {
                InitializeIFELSE1Lesson();
                quizList = IFELSE1;
            }
            else if (topic == "Литералы")
            {
                InitializeIFELSE2Lesson();
                quizList = IFELSE2;
            }
            else if (topic == "Условие If-Else")
            {
                InitializeIFELSEIFLesson();
                quizList = IFELSEIF;
            }
            else if (topic == "Цикл for")
            {
                InitializeZICLELesson();
                quizList = ZICLE;
            }
            else if (topic == "Цикл while")
            {
                InitializeZICLEFORLesson();
                quizList = ZICLEFOR;
            }
            else if (topic == "Тест по первой части")
            {
                InitializeZICLEWHILELesson();
                quizList = ZICLEWHILE;
            }
            
            return quizList;
            // questions

            void InitializeZeroLesson()
            {// пробный 
                Zero = new List<Question>();
                Zero.Add(new Question { QuizQuestion = "Вы хотите стать программистом С++ ?", Answer = "Да!", AnswA = "НЕТ", AnswB = "НЕЕЕТ", AnswC = "Нет!", AnswD = "Да!" });
            }
            void InitializeEnterLesson()
            {// введение 
                Enter = new List<Question>();
                Enter.Add(new Question { QuizQuestion = "Кто разработал язык программирования С ?", Answer = "Деннис Ритч", AnswA = "Бьёрн Страуструп", AnswB = "Билл Гейтс", AnswC = "Деннис Ритч", AnswD = "Бьёрн Страуструпм" });
                Enter.Add(new Question { QuizQuestion = "Кто создал язык С++ ?", Answer = "Бьёрн Страуструп", AnswA = "Деннис Ритч", AnswB = "Бьёрн Страуструп", AnswC = "Билл Гейтс", AnswD = "Линус Торвальдс" });
                Enter.Add(new Question { QuizQuestion = "Какая философия у языков семейства Си ?", Answer = "доверять программисту", AnswA = "не доверять программисту", AnswB = "проверяй но доверяй", AnswC = "доверять программисту", AnswD = "можно не проверять" });
                Enter.Add(new Question { QuizQuestion = "Почему С++ быстро обрел популярность ?", Answer = "достпно ООП", AnswA = "достпно ООП", AnswB = "доступно императивное программирование", AnswC = "доступно логическое программирование", AnswD = "простой язык" });
            }
            void InitializeHelloWorldLesson()
            {// hello world 
                HelloWorld = new List<Question>();
                HelloWorld.Add(new Question { QuizQuestion = "Точка с запятой ставится в конце каждой ... ?", Answer = "команды", AnswA = "команды", AnswB = "строчки", AnswC = "литерала", AnswD = "переменной" });
                HelloWorld.Add(new Question { QuizQuestion = "Для чего предназначен cout ?", Answer = "для вывода значений", AnswA = "для вывода значений", AnswB = "для завершения программы", AnswC = "для ввода значений", AnswD = "для запуска программы" });
                HelloWorld.Add(new Question { QuizQuestion = "Для чего предназначен cin ?", Answer = "для ввода значений", AnswA = "для вывода значений", AnswC = "для завершения программы", AnswB = "для запуска программы", AnswD = "для ввода значений" });
                HelloWorld.Add(new Question { QuizQuestion = "Какая команда говорит об удачном завершении программы ?", Answer = "return 0", AnswA = "int main", AnswB = "cin", AnswC = "return 0", AnswD = "cout" });
            }
            void InitializeCINLesson()
            {// переменная 
                Cin = new List<Question>();
                Cin.Add(new Question { QuizQuestion = "Переменная - это ?", Answer = "объект", AnswA = "тип данных", AnswB = "действие", AnswC = "литерал", AnswD = "объект" });
            }
            void InitializeCOUTLesson()
            {// инициализация и присваение 
                Cout = new List<Question>();
                Cout.Add(new Question { QuizQuestion = "Как присвоить значение переменной ?", Answer = "сначала инициализировать переменную потом присвоить значение", AnswA = "сначала присвоить значение потом инициализировать переменную", AnswB = "сначала инициализировать переменную потом присвоить значение", AnswC = "оба варианта верные", AnswD = "оба варианты неверные" });
                Cout.Add(new Question { QuizQuestion = "Можно ли использовать неинициализированные переменные ?", Answer = "только, когда они получат значение", AnswA = "можно", AnswB = "нельзя", AnswC = "можно, но осторожно", AnswD = "только, когда они получат значение" });
                Cout.Add(new Question { QuizQuestion = "Присваение и инициализация … ?", Answer = "отличаются", AnswA = "отличаются", AnswB = "не отличаются", AnswC = "являются «действием» и «противодействием»", AnswD = "взаимозаменяемые" });

            }
            void InitializeDataLesson()
            {//Типы данных. Целочисленный тип данных 
                Data = new List<Question>();
                Data.Add(new Question { QuizQuestion = "Void - это ?", Answer = "отсутсвие типа данных", AnswA = "переменная", AnswB = "строка", AnswC = "пустой тип данных", AnswD = "отсутсвие типа данных" });
                Data.Add(new Question { QuizQuestion = "Тип данных void тесно связан с ?", Answer = "функцией", AnswA = "методом", AnswB = "полем", AnswC = "функцией", AnswD = "структурой" });
                Data.Add(new Question { QuizQuestion = "К целочисленному типу данных относится ?", Answer = "int", AnswA = "char", AnswB = "int", AnswC = "string", AnswD = "bool" });
                Data.Add(new Question { QuizQuestion = "Какой тип данных может содержать только положительный числа ? ", Answer = "unsigned int", AnswA = "unsigned char", AnswB = "int", AnswC = "signed int", AnswD = "unsigned int" });

            }
            void InitializeZeloeNumberLesson()
            {
                //6. Действительные числа.
                ZeloeNumber = new List<Question>();
                ZeloeNumber.Add(new Question { QuizQuestion = "Что нельзя записать в double ?", Answer = "O0", AnswA = "0", AnswB = "00", AnswC = "10.00", AnswD = "O0" });
                ZeloeNumber.Add(new Question { QuizQuestion = "Float и double отличаются ?", Answer = "диапазоном и размером", AnswA = "диапазоном", AnswB = "размером", AnswC = "диапазоном и размером", AnswD = "ничем не отличаются" });
            }
            void InitializeBOOLLesson()
            {
                //7. Логический тип данных. Bool
                BOOL = new List<Question>();
                BOOL.Add(new Question { QuizQuestion = "К логическому типу данных относится", Answer = "bool", AnswA = "bool", AnswB = "int", AnswC = "double", AnswD = "unsigned" });
                BOOL.Add(new Question { QuizQuestion = "Соотнесите true и false ", Answer = "1 и 0", AnswA = "0 и 1", AnswB = "1 и 0", AnswC = "2 и 1", AnswD = "0 и 0" });
            }
            void InitializeSTRINGCHARLesson()
            {
                //8. Символьный тип данных. Char 
                STRINGCHAR = new List<Question>();
                STRINGCHAR.Add(new Question { QuizQuestion = "static_cast<int>('a')?", Answer = "97", AnswA = "a", AnswB = "A", AnswC = "97", AnswD = "ошибка компиляции" });
                STRINGCHAR.Add(new Question { QuizQuestion = "Можно ли присвоить переменной типа char число?", Answer = "Да, только так char ch(97)", AnswA = "Вариант 3 и 4 - правильные", AnswB = "Нет, нельзя", AnswC = "Да, только так char ch = 97", AnswD = "Да, только так char ch(97)" });
            }
            void InitializeIFELSE1Lesson()
            {
                //9. Cтроки   - массив «чаров»
                IFELSE1 = new List<Question>();
                IFELSE1.Add(new Question { QuizQuestion = "Что такое строка ?", Answer = "массив из char", AnswA = "массив из char", AnswB = "массив из int", AnswC = "массив из string", AnswD = "массив из double" });
                IFELSE1.Add(new Question { QuizQuestion = "Какой размер у строки \"Quiz\"?", Answer = "5", AnswA = "3", AnswB = "4", AnswC = "5", AnswD = "33" });

            }
            void InitializeIFELSE2Lesson()
            {// литералы 
                IFELSE2 = new List<Question>();
                IFELSE2.Add(new Question { QuizQuestion = "Что добавляется автоматически в строковый литерал ?", Answer = "пустой символ", AnswA = "первый символ", AnswB = "пустой символ", AnswC = "много нулей в конец", AnswD = "ничего не добавляется" });
                IFELSE2.Add(new Question { QuizQuestion = "Пример символьного литерала является ?", Answer = "‘a’", AnswA = "«12»", AnswB = "«1»", AnswC = "’12’", AnswD = "‘a’" });
                IFELSE2.Add(new Question { QuizQuestion = "Как записать 20 в 16 системе счисления ?", Answer = "0х14", AnswA = "0х14", AnswB = "0Y14", AnswC = "14", AnswD = "014" });
                IFELSE2.Add(new Question { QuizQuestion = "Можно ли изменить литерал ?", Answer = "нет, это константа", AnswA = "да, с помощью программ", AnswB = "иногда можно, иногда нельзя", AnswC = "можно, легко", AnswD = "нет, это константа" });
            }
            void InitializeZICLELesson()
            {// for 
                ZICLE = new List<Question>();
                ZICLE.Add(new Question { QuizQuestion = "Укажите процесс, который демонстрирует работу циклического алгоритма:", Answer = "Движение Земли вокруг своей оси", AnswA = "Развилка дорог", AnswB = "Обед человека в ресторане", AnswC = "Сборка нового автомобиля", AnswD = "Движение Земли вокруг своей оси" });
                ZICLE.Add(new Question { QuizQuestion = "Сколько раз будет выполняться цикл for (int i = 0; i < 10; i++) ?", Answer = "10", AnswA = "9", AnswB = "10", AnswC = "11", AnswD = "12" });
                ZICLE.Add(new Question { QuizQuestion = "Сколько раз будет выполняться цикл for (int i = 1; i <=10; i++) ?", Answer = "10", AnswA = "9", AnswB = "10", AnswC = "11", AnswD = "12" }); 
            }
            void InitializeZICLEFORLesson()
            {// while 
                ZICLEFOR = new List<Question>();
                ZICLEFOR.Add(new Question { QuizQuestion = "Укажите, сколько раз выполнится тело цикла с заданным заголовком: int D=10; (WHILE D<0) {D=D+3;} ?", Answer = "бесконечно", AnswA = "10", AnswB = "3", AnswC = "бесконечно", AnswD = "13" });
                ZICLEFOR.Add(new Question { QuizQuestion = "Назначение циклической структуры:", Answer = "повторение идущих подряд одинаковых команд некоторое число раз", AnswA = "повторение одной команды не более 10 раз", AnswB = "проверка условия в тексте", AnswC = "печать текста", AnswD = "повторение идущих подряд одинаковых команд некоторое число раз" });
                ZICLEFOR.Add(new Question { QuizQuestion = "Если говорят, что программа \"зациклилась\", то это значит..", Answer = "тело цикла выполняется бесконечно долго", AnswA = "тело цикла не выполняется", AnswB = "тело цикла выполняется только один раз", AnswC = "тело цикла выполняется два раза", AnswD = "тело цикла выполняется бесконечно долго" });
            }
            void InitializeZICLEWHILELesson()
            {// test 
                ZICLEWHILE = new List<Question>();
                ZICLEWHILE.Add(new Question { QuizQuestion = "Кто создал язык С++ ?", Answer = "Бьёрн Страуструп", AnswA = "Деннис Ритч", AnswB = "Бьёрн Страуструп", AnswC = "Билл Гейтс", AnswD = "Линус Торвальдс" });
                ZICLEWHILE.Add(new Question { QuizQuestion = "Какая философия у языков семейства Си ?", Answer = "доверять программисту", AnswA = "не доверять программисту", AnswB = "проверяй но доверяй", AnswC = "доверять программисту", AnswD = "можно не проверять" });
                ZICLEWHILE.Add(new Question { QuizQuestion = "Точка с запятой ставится в конце каждой ... ?", Answer = "команды", AnswA = "команды", AnswB = "строчки", AnswC = "литерала", AnswD = "переменной" });
                ZICLEWHILE.Add(new Question { QuizQuestion = "Для чего предназначен cout ?", Answer = "для вывода значений", AnswA = "для вывода значений", AnswB = "для завершения программы", AnswC = "для ввода значений", AnswD = "для запуска программы" });
                ZICLEWHILE.Add(new Question { QuizQuestion = "Для чего предназначен cin ?", Answer = "для ввода значений", AnswA = "для вывода значений", AnswC = "для завершения программы", AnswB = "для ввода значений", AnswD = "для запуска программы" });
                ZICLEWHILE.Add(new Question { QuizQuestion = "Void - это ", Answer = "отсутсвие типа данных", AnswA = "переменная", AnswB = "строка", AnswC = "пустой тип данных", AnswD = "отсутсвие типа данных" });
                ZICLEWHILE.Add(new Question { QuizQuestion = "Какой тип данных может содержать только положительный числа ? ", Answer = "unsigned int", AnswA = "unsigned char", AnswB = "int", AnswC = "signed int", AnswD = "unsigned int" });
                ZICLEWHILE.Add(new Question { QuizQuestion = "Что такое строка ?", Answer = "массив из char", AnswA = "массив из char", AnswB = "массив из int", AnswC = "массив из string", AnswD = "массив из double" });
                ZICLEWHILE.Add(new Question { QuizQuestion = "Укажите процесс, который демонстрирует работу циклического алгоритма:", Answer = "Движение Земли вокруг своей оси", AnswA = "Развилка дорог", AnswB = "Обед человека в ресторане", AnswC = "Сборка нового автомобиля", AnswD = "Движение Земли вокруг своей оси" });
                ZICLEWHILE.Add(new Question { QuizQuestion = "Укажите, сколько раз выполнится тело цикла с заданным заголовком: int D=10; (WHILE D<0) {D=D+3;} ?", Answer = "бесконечно", AnswA = "10", AnswB = "3", AnswC = "бесконечно", AnswD = "13" });
                ZICLEWHILE.Add(new Question { QuizQuestion = "Условный оператор применяется для программирования:", Answer = "Ветвящихся алгоритмов", AnswA = "Сложных алгоритмов", AnswB = "Линейных алгоритмов", AnswC = "Ветвящихся алгоритмов", AnswD = "Циклических алгоритмов" });
            }
            void InitializeIFELSEIFLesson()
            {// if else 
                IFELSEIF = new List<Question>();
                IFELSEIF.Add(new Question { QuizQuestion = "Что будет выведено на экран после выполнения фрагмента программы: if (7<=6) { cout<< 7} else { cout<< 6}", Answer = "6", AnswA = "7", AnswB = "6", AnswC = "11", AnswD = "13" });
                IFELSEIF.Add(new Question { QuizQuestion = "Условный оператор применяется для программирования:", Answer = "Ветвящихся алгоритмов", AnswA = "Сложных алгоритмов", AnswB = "Линейных алгоритмов", AnswC = "Ветвящихся алгоритмов", AnswD = "Циклических алгоритмов" });
                IFELSEIF.Add(new Question { QuizQuestion = "В каком из условных операторов допущена синтаксическая ошибка:", Answer = "if a > b", AnswA = "if (5>10)", AnswB = "if a > b", AnswC = "if (1< -10)", AnswD = "if (1 != -10)" });
            }
        }
    }
}