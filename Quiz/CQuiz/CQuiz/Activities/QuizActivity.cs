using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Android.App;
using Android.Content;
using Android.Media;
using Android.OS;
using Android.Preferences;
using Android.Runtime;
using Android.Support.V7.App;
using Android.Views;
using Android.Widget;
using CQuiz.DataModels;
using CQuiz.Fragment;
using CQuiz.Help;

namespace CQuiz.Activities
{
    [Activity(Label = "QuizActivity")]
    public class QuizActivity : AppCompatActivity
    {
        private MediaPlayer playersoundbackground;
        private MediaPlayer clicksound;
        private MediaPlayer victorysound;
        private MediaPlayer losesound;

        // Shared Preference
        ISharedPreferences prefs = Application.Context.GetSharedPreferences("pictures", FileCreationMode.Private);
        ISharedPreferencesEditor editor;

        ISharedPreferences prefsLevel = Application.Context.GetSharedPreferences("Levels", FileCreationMode.Private);
        ISharedPreferencesEditor editorLevel;



        Android.Support.V7.Widget.Toolbar toolbar;
        // burronradio
        RadioButton rdbA, rdbB, rdbC, rdbD;

        //textviews
        TextView txtA, txtB, txtC, txtD, question, numberqstn, timerqst;

        //Button
        Button nextbutton;

        // quustions
        List<Question> QuestionsList = new List<Question>();

        QuizHelper quizhelp = new QuizHelper();
        int quizPosition;
        string QuizTopic;
        double correctanswers = 0;

        int timerCounter = 0;
        DateTime date;
        System.Timers.Timer countDown = new System.Timers.Timer();

        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);

            SetContentView(Resource.Layout.QuestionQuiz);

            QuizTopic = Intent.GetStringExtra("topic");

            toolbar = (Android.Support.V7.Widget.Toolbar)FindViewById(Resource.Id.quiztoolbar1);
            SetSupportActionBar(toolbar);
            SupportActionBar.Title = QuizTopic;
            Android.Support.V7.App.ActionBar actionBar = SupportActionBar;
            actionBar.SetHomeAsUpIndicator(Resource.Drawable.outline_arrowback);
            actionBar.SetDisplayHomeAsUpEnabled(true);


            ConnectViews();
            SoundPlay(playersoundbackground);
            BeginQuiz();
            editor = prefs.Edit();
            editorLevel = prefsLevel.Edit();

            countDown.Interval = 1000;
            countDown.Elapsed += CountDown_Elapsed;
        }
        //every 1000 ms it happens
        private void CountDown_Elapsed(object sender, System.Timers.ElapsedEventArgs e)
        {
            timerCounter++;

            DateTime dt = new DateTime();
            dt = date.AddSeconds(-1);
            var DifferTime = date.Subtract(dt);
            date = date - DifferTime;

            // update ui
            RunOnUiThread(() =>
            {
                timerqst.Text = date.ToString("mm:ss");
            }
            );

            // END OF TIME
            if (timerCounter == 120)
            {
                countDown.Enabled = false;
                SoundStop(playersoundbackground);
                CompleteQuize();
            }
        }

        void ConnectViews()
        {
            rdbA = (RadioButton)FindViewById(Resource.Id.optionA);
            rdbB = (RadioButton)FindViewById(Resource.Id.optionB);
            rdbC = (RadioButton)FindViewById(Resource.Id.optionC);
            rdbD = (RadioButton)FindViewById(Resource.Id.optionD);

            txtA = (TextView)FindViewById(Resource.Id.optionAText);
            txtB = (TextView)FindViewById(Resource.Id.optionBText);
            txtC = (TextView)FindViewById(Resource.Id.optionCText);
            txtD = (TextView)FindViewById(Resource.Id.optionDText);

            question = (TextView)FindViewById(Resource.Id.textofQuestion);
            numberqstn = (TextView)FindViewById(Resource.Id.quizNumber);
            timerqst = (TextView)FindViewById(Resource.Id.timeCountTextView);

            nextbutton = (Button)FindViewById(Resource.Id.buttonNext);

            nextbutton.Click += Nextbutton_Click;
            rdbA.Click += RdbA_Click;
            rdbB.Click += RdbB_Click;
            rdbC.Click += RdbC_Click;
            rdbD.Click += RdbD_Click;


            playersoundbackground = MediaPlayer.Create(this, Resource.Raw.Quiztime);
            clicksound = MediaPlayer.Create(this, Resource.Raw.Click);
            victorysound = MediaPlayer.Create(this, Resource.Raw.Victory);
            losesound = MediaPlayer.Create(this, Resource.Raw.Lose);



        }

        private void Nextbutton_Click(object sender, EventArgs e)
        {
            SoundPlay(clicksound);
            if (!rdbA.Checked && !rdbB.Checked && !rdbC.Checked && !rdbD.Checked)
            {
                Toast.MakeText(this, "Пожалуйста, выберите ответ!", ToastLength.Short).Show();
            }
            else if (rdbA.Checked)
            {
                if (rdbA.Text == QuestionsList[quizPosition - 1].Answer)
                {
                    correctanswers++;
                }
                NextQuestion();
            }
            else if (rdbB.Checked)
            {
                if (rdbB.Text == QuestionsList[quizPosition - 1].Answer)
                {
                    correctanswers++;
                }
                NextQuestion();
            }
            else if (rdbC.Checked)
            {
                if (rdbC.Text == QuestionsList[quizPosition - 1].Answer)
                {
                    correctanswers++;
                }
                NextQuestion();
            }
            else if (rdbD.Checked)
            {
                if (rdbD.Text == QuestionsList[quizPosition - 1].Answer)
                {
                    correctanswers++;
                }
                NextQuestion();
            }

        }

        private void RdbA_Click(object sender, EventArgs e)
        {
            SoundPlay(clicksound);
            ClearChoisersRadio();
            rdbA.Checked = true;
        }
        private void RdbB_Click(object sender, EventArgs e)
        {
            SoundPlay(clicksound);
            ClearChoisersRadio();
            rdbB.Checked = true;
        }
        private void RdbC_Click(object sender, EventArgs e)
        {
            SoundPlay(clicksound);
            ClearChoisersRadio();
            rdbC.Checked = true;
        }
        private void RdbD_Click(object sender, EventArgs e)
        {
            SoundPlay(clicksound);
            ClearChoisersRadio();
            rdbD.Checked = true;
        }
        void ClearChoisersRadio()
        {
            rdbA.Checked = false;
            rdbB.Checked = false;
            rdbC.Checked = false;
            rdbD.Checked = false;
        }

        void BeginQuiz()
        {
            quizPosition = 1;
            QuestionsList = quizhelp.GetQuizQuestions(QuizTopic);
            question.Text = QuestionsList[0].QuizQuestion;
            rdbA.Text = QuestionsList[0].AnswA;
            rdbB.Text = QuestionsList[0].AnswB;
            rdbC.Text = QuestionsList[0].AnswC;
            rdbD.Text = QuestionsList[0].AnswD;
            numberqstn.Text = "Вопрос  " + quizPosition.ToString() + "/" + QuestionsList.Count.ToString();

            date = new DateTime();
            date = date.AddMinutes(2);
            timerqst.Text = date.ToString("mm:ss");
            countDown.Enabled = true;
        }

        void CompleteQuize()
        {
            SoundStop(playersoundbackground);
            timerqst.Text = "00:00";
            countDown.Enabled = false;

            string score = correctanswers.ToString() + '/' + QuestionsList.Count.ToString();
            double percent = (correctanswers / double.Parse(QuestionsList.Count.ToString())) * 100;
            string image = "null";
            string remark;
            if (percent >= 90)
            {
                remark = "Excellent!\n";
                SoundPlay(victorysound);
                PresentPicture();
                PresentProgressBar();

            }
            else if (percent >= 60)
            {
                remark = "Very good!\n";
                SoundPlay(victorysound);
                PresentPicture();
                PresentProgressBar();

            }
            else
            {
                image = "failed";
                remark = "It is sad!\n Прочитай еще раз теорию";
                SoundPlay(losesound);
            }

            CompletedFragment completedFragment = new CompletedFragment(remark, score, image);
            completedFragment.Cancelable = false;
            var trans = SupportFragmentManager.BeginTransaction();
            completedFragment.Show(trans, "Completed");
            completedFragment.GoHome += (sender, e) =>
            {
                Intent refresh = new Intent(this, typeof(MainActivity));
                StartActivity(refresh);
                this.Finish();

            };
        }

        void NextQuestion()
        {
            quizPosition++;
            if (quizPosition > QuestionsList.Count)
            {
                
                CompleteQuize();
                return;
            }

            int index = quizPosition - 1;
            ClearChoisersRadio();
            question.Text = QuestionsList[index].QuizQuestion;
            rdbA.Text = QuestionsList[index].AnswA;
            rdbB.Text = QuestionsList[index].AnswB;
            rdbC.Text = QuestionsList[index].AnswC;
            rdbD.Text = QuestionsList[index].AnswD;

            numberqstn.Text = "Вопрос " + quizPosition.ToString() + "/" + QuestionsList.Count.ToString();
        }

        public void SoundPlay(MediaPlayer sound)
        {
            sound.SetVolume(30, 30);
            sound.Start();
        }
        public void SoundStop(MediaPlayer sound)
        {
            sound.Stop();
        }
        int getNumberofPicture(string str)
        {
            if (str == "Пробный Quiz")
            {
                return 0;
            }
            else if (str == "Введение")
            {
                return 1;
            }
            else if (str == "Hello World")
            {
                return 2;
            }
            else if (str == "Переменные")
            {
                return 3;
            }
            else if (str == "Инициализация vs. Присваивание")
            {
                return 4;
            }
            else if (str == "Типы данных. Целочисленный тип данных")
            {
                return 5;
            }
            else if (str == "Действительные числа")
            {
                return 6;
            }
            else if (str == "Логический тип данных. Bool")
            {
                return 7;
            }
            else if (str == "Символьный тип данных. Char")
            {
                return 8;
            }
            else if (str == "Cтроки - массив «чаров»")
            {
                return 9;
            }
            else if (str == "Литералы")
            {
                return 10;
            }
            else if (str == "Условие If-Else")
            {
                return 11;
            }
            else if (str == "Цикл for")
            {
                return 12;
            }
            else if (str == "Цикл while")
            {
                return 13;
            }
            else if (str == "Тест по первой части")
            {
                return 14;
            }
            else return -1;
        }
        void PresentPicture()
        {

            if (getNumberofPicture(QuizTopic) == 0)
            {
                editor.PutInt("pictur1", 1);
                editor.Apply();
            }
            if (getNumberofPicture(QuizTopic) == 1)
            {
                editor.PutInt("pictur2", 1);
                editor.Apply();
            }
            if (getNumberofPicture(QuizTopic) == 2)
            {
                editor.PutInt("pictur3", 1);
                editor.Apply();
            }
            if (getNumberofPicture(QuizTopic) == 3)
            {
                editor.PutInt("pictur4", 1);
                editor.Apply();
            }
            if (getNumberofPicture(QuizTopic) == 4)
            {
                editor.PutInt("pictur5", 1);
                editor.Apply();
            }
            if (getNumberofPicture(QuizTopic) == 5)
            {
                editor.PutInt("pictur6", 1);
                editor.Apply();
            }
            if (getNumberofPicture(QuizTopic) == 6)
            {
                editor.PutInt("pictur7", 1);
                editor.Apply();
            }
            if (getNumberofPicture(QuizTopic) == 7)
            {
                editor.PutInt("pictur8", 1);
                editor.Apply();
            }
            if (getNumberofPicture(QuizTopic) == 8)
            {
                editor.PutInt("pictur9", 1);
                editor.Apply();
            }
            if (getNumberofPicture(QuizTopic) == 9)
            {
                editor.PutInt("pictur10", 1);
                editor.Apply();
            }
            if (getNumberofPicture(QuizTopic) == 10)
            {
                editor.PutInt("pictur11", 1);
                editor.Apply();
            }
            if (getNumberofPicture(QuizTopic) == 11)
            {
                editor.PutInt("pictur12", 1);
                editor.Apply();
            }
            if (getNumberofPicture(QuizTopic) == 12)
            {
                editor.PutInt("pictur13", 1);
                editor.Apply();
            }
            if (getNumberofPicture(QuizTopic) == 13)
            {
                editor.PutInt("pictur14", 1);
                editor.Apply();
            }
            if (getNumberofPicture(QuizTopic) == 14)
            {
                editor.PutInt("pictur15", 1);
                editor.Apply();
            }
            
        }
        void CountLevels()
        {
            int[] levels = new int[21];

            levels[0] = prefsLevel.GetInt("level1", 0);
            levels[1] = prefsLevel.GetInt("level2", 0);
            levels[2] = prefsLevel.GetInt("level3", 0);
            levels[3] = prefsLevel.GetInt("level4", 0);
            levels[4] = prefsLevel.GetInt("level5", 0);
            levels[5] = prefsLevel.GetInt("level6", 0);
            levels[6] = prefsLevel.GetInt("level7", 0);
            levels[7] = prefsLevel.GetInt("level8", 0);
            levels[8] = prefsLevel.GetInt("level9", 0);
            levels[9] = prefsLevel.GetInt("level10", 0);
            levels[10] = prefsLevel.GetInt("level11", 0);
            levels[11] = prefsLevel.GetInt("level12", 0);
            levels[12] = prefsLevel.GetInt("level13", 0);
            levels[13] = prefsLevel.GetInt("level14", 0);
            levels[14] = prefsLevel.GetInt("level15", 0);
            int sum = 0;
            for (int i = 0; i < 16; i++)
            {
                sum += levels[i];
            }

            editorLevel.PutInt("Level", sum);
            editorLevel.Apply();

        }
        void PresentProgressBar()
        {
            if (getNumberofPicture(QuizTopic) == 0)
            {
                editorLevel.PutInt("level1", 1);
                editorLevel.Apply();
            }
            else if (getNumberofPicture(QuizTopic) == 1)
            {
                editorLevel.PutInt("level2", 1);
                editorLevel.Apply();
            }
            else if (getNumberofPicture(QuizTopic) == 2)
            {
                editorLevel.PutInt("level3", 1);
                editorLevel.Apply();
            }
            else if (getNumberofPicture(QuizTopic) == 3)
            {
                editorLevel.PutInt("level4", 1);
                editorLevel.Apply();
            }
            else if (getNumberofPicture(QuizTopic) == 4)
            {
                editorLevel.PutInt("level5", 1);
                editorLevel.Apply();
            }
            else if (getNumberofPicture(QuizTopic) == 5)
            {
                editorLevel.PutInt("level6", 1);
                editorLevel.Apply();
            }
            else if (getNumberofPicture(QuizTopic) == 6)
            {
                editorLevel.PutInt("level7", 1);
                editorLevel.Apply();
            }
            else if (getNumberofPicture(QuizTopic) == 7)
            {
                editorLevel.PutInt("level8", 1);
                editorLevel.Apply();
            }
            else if (getNumberofPicture(QuizTopic) == 8)
            {
                editorLevel.PutInt("level9", 1);
                editorLevel.Apply();
            }
            else if (getNumberofPicture(QuizTopic) == 9)
            {
                editorLevel.PutInt("level10", 1);
                editorLevel.Apply();
            }
            else if (getNumberofPicture(QuizTopic) == 10)
            {
                editorLevel.PutInt("level11", 1);
                editorLevel.Apply();
            }
            else if (getNumberofPicture(QuizTopic) == 11)
            {
                editorLevel.PutInt("level12", 1);
                editorLevel.Apply();
            }
            else if (getNumberofPicture(QuizTopic) == 12)
            {
                editorLevel.PutInt("level13", 1);
                editorLevel.Apply();
            }
            else if (getNumberofPicture(QuizTopic) == 13)
            {
                editorLevel.PutInt("level14", 1);
                editorLevel.Apply();
            }
            else if (getNumberofPicture(QuizTopic) == 14)
            {
                editorLevel.PutInt("level15", 1);
                editorLevel.Apply();
            }

            CountLevels(); 
        }
    }
}
