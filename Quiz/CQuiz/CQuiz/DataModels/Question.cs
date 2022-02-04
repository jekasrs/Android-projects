using System;
namespace CQuiz.DataModels
{
    public class Question
    {
        public string QuizQuestion { get; set; }
        public string AnswA { get; set; }
        public string AnswB { get; set; }
        public string AnswC { get; set; }
        public string AnswD { get; set; }

        public string Answer { get; set; }
    }
}
