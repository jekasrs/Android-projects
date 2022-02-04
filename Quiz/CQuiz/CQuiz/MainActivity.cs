using Android.App;
using Android.OS;
using Android.Support.V7.App;
using Android.Runtime;
using Android.Widget;
using Android.Content;
using CQuiz.Activities;
using Android.Views;
using System.Collections.Generic;
using Java.Lang;
using System.Threading.Tasks;
using Java.Util;
using Microsoft.AppCenter;
using Microsoft.AppCenter.Analytics;
using Microsoft.AppCenter.Crashes;

namespace CQuiz
{
    [Activity(Label = "@string/app_name", Theme = "@style/AppTheme", MainLauncher = false)]
    public class MainActivity : AppCompatActivity
    {
        Android.Support.V7.Widget.Toolbar toolbar;
        Android.Support.V4.Widget.DrawerLayout drawerLayout;
        Android.Support.Design.Widget.NavigationView navigationView;

        // Shared Preference
        ISharedPreferences prefs = Application.Context.GetSharedPreferences("pictures", FileCreationMode.Private);
        ISharedPreferences prefsLevel = Application.Context.GetSharedPreferences("Levels", FileCreationMode.Private);

        LinearLayout Quiz0;
        LinearLayout Quiz1;
        LinearLayout Quiz2;
        LinearLayout Quiz3;
        LinearLayout Quiz4;
        LinearLayout Quiz5;
        LinearLayout Quiz6;
        LinearLayout Quiz7;
        LinearLayout Quiz8;
        LinearLayout Quiz9;
        LinearLayout Quiz10;
        LinearLayout Quiz11;
        LinearLayout Quiz12;
        LinearLayout Quiz13;
        LinearLayout Quiz14;

        ImageView img1;
        ImageView img2;
        ImageView img3;
        ImageView img4;
        ImageView img5;
        ImageView img6;
        ImageView img7;
        ImageView img8;
        ImageView img9;
        ImageView img10;
        ImageView img11;
        ImageView img12;
        ImageView img13;
        ImageView img14;
        ImageView img15;

        ProgressBar progressBar;
        TextView textViewLevel;
        protected override void OnCreate(Bundle savedInstanceState)
        {

            base.OnCreate(savedInstanceState);
            // Set our view from the "main" layout resource

            SetContentView(Resource.Layout.activity_main);

            // connecting toolbar
            toolbar = (Android.Support.V7.Widget.Toolbar)FindViewById(Resource.Id.toolbar1);

            SetSupportActionBar(toolbar);
            Android.Support.V7.App.ActionBar actionBar = SupportActionBar;
            SupportActionBar.Title = "Темы Qiuz";
            actionBar.SetHomeAsUpIndicator(Resource.Drawable.menuaction);
            actionBar.SetDisplayHomeAsUpEnabled(true);

            ConnectViews();

            // click event
            Quiz0.Click += Quiz0_Click;
            Quiz1.Click += Quiz1_Click;
            Quiz2.Click += Quiz2_Click;
            Quiz3.Click += Quiz3_Click;
            Quiz4.Click += Quiz4_Click;
            Quiz5.Click += Quiz5_Click;
            Quiz6.Click += Quiz6_Click;
            Quiz7.Click += Quiz7_Click;
            Quiz8.Click += Quiz8_Click;
            Quiz9.Click += Quiz9_Click;
            Quiz10.Click += Quiz10_Click;
            Quiz11.Click += Quiz11_Click;
            Quiz12.Click += Quiz12_Click;
            Quiz13.Click += Quiz13_Click;
            Quiz14.Click += Quiz14_Click;


            ShowPictures();
            ProgressProgressBar();

        }

        public override void OnCreate(Bundle savedInstanceState, PersistableBundle persistentState)
        {
            base.OnCreate(savedInstanceState, persistentState);
            AppCenter.Start("7fd23c4d-f65d-449d-9f02-52d92c4a3041",
                   typeof(Analytics), typeof(Crashes));
            
        }

        // when we click on smthing in menu 
        private void NavigationView_NavigationItemSelected(object sender, Android.Support.Design.Widget.NavigationView.NavigationItemSelectedEventArgs e)
        {
            ShowPictures();
            if (e.MenuItem.ItemId == Resource.Id.naviFirst)
            {
                InitQuiz1();
                drawerLayout.CloseDrawers();
            }
            else if (e.MenuItem.ItemId == Resource.Id.naviSecond)
            {
                InitQuiz2();
                drawerLayout.CloseDrawers();
            }
            else if (e.MenuItem.ItemId == Resource.Id.naviThird)
            {
                InitQuiz3();
                drawerLayout.CloseDrawers();
            }
            else if (e.MenuItem.ItemId == Resource.Id.naviFourth)
            {
                InitQuiz4();
                drawerLayout.CloseDrawers();
            }
            else if (e.MenuItem.ItemId == Resource.Id.naviFifth)
            {
                InitQuiz5();
                drawerLayout.CloseDrawers();
            }
            else if (e.MenuItem.ItemId == Resource.Id.naviSixth)
            {
                InitQuiz6();
                drawerLayout.CloseDrawers();
            }
            else if (e.MenuItem.ItemId == Resource.Id.naviSeventh)
            {
                InitQuiz7();
                drawerLayout.CloseDrawers();
            }
            else if (e.MenuItem.ItemId == Resource.Id.naviEighth)
            {
                InitQuiz8();
                drawerLayout.CloseDrawers();
            }
            else if (e.MenuItem.ItemId == Resource.Id.naviNinth)
            {
                InitQuiz9();
                drawerLayout.CloseDrawers();
            }
            else if (e.MenuItem.ItemId == Resource.Id.naviTenth)
            {
                InitQuiz10();
                drawerLayout.CloseDrawers();
            }
            else if (e.MenuItem.ItemId == Resource.Id.naviEleventh)
            {
                InitQuiz11();
                drawerLayout.CloseDrawers();
            }
            else if (e.MenuItem.ItemId == Resource.Id.naviTwelvth)
            {
                InitQuiz12();
                drawerLayout.CloseDrawers();
            }
            else if (e.MenuItem.ItemId == Resource.Id.naviThirteenth)
            {
                InitQuiz13();
                drawerLayout.CloseDrawers();
            }
            else if (e.MenuItem.ItemId == Resource.Id.naviFourteenth)
            {
                InitQuiz14();
                drawerLayout.CloseDrawers();
            }
            else if (e.MenuItem.ItemId == Resource.Id.AboutUs)
            {
                Intent intent = new Intent(this, typeof(ActivityAboutUs));
                StartActivity(intent);
                drawerLayout.CloseDrawers();
            }

        }


        void ConnectViews()
        {
            Quiz0 = (LinearLayout)FindViewById(Resource.Id.ZeroQuiz);
            Quiz1 = (LinearLayout)FindViewById(Resource.Id.FirstQuiz);
            Quiz2 = (LinearLayout)FindViewById(Resource.Id.SecondQuiz);
            Quiz3 = (LinearLayout)FindViewById(Resource.Id.ThirdQuiz);
            Quiz4 = (LinearLayout)FindViewById(Resource.Id.FourthQuiz);
            Quiz5 = (LinearLayout)FindViewById(Resource.Id.FifthQuiz);
            Quiz6 = (LinearLayout)FindViewById(Resource.Id.SixthQuiz);
            Quiz7 = (LinearLayout)FindViewById(Resource.Id.SeventhQuiz);
            Quiz8 = (LinearLayout)FindViewById(Resource.Id.EightsQuiz);
            Quiz9 = (LinearLayout)FindViewById(Resource.Id.NinthQuiz);
            Quiz10 = (LinearLayout)FindViewById(Resource.Id.TenthQuiz);
            Quiz11 = (LinearLayout)FindViewById(Resource.Id.EleventhQuiz);
            Quiz12 = (LinearLayout)FindViewById(Resource.Id.TvelwthQuiz);
            Quiz13 = (LinearLayout)FindViewById(Resource.Id.ThirteenthQuiz);
            Quiz14 = (LinearLayout)FindViewById(Resource.Id.FourteenthQuiz);

            img1 = (ImageView)FindViewById(Resource.Id.image1age);
            img2 = (ImageView)FindViewById(Resource.Id.image2age);
            img3 = (ImageView)FindViewById(Resource.Id.image3age);
            img4 = (ImageView)FindViewById(Resource.Id.image4age);
            img5 = (ImageView)FindViewById(Resource.Id.image5age);
            img6 = (ImageView)FindViewById(Resource.Id.image6age);
            img7 = (ImageView)FindViewById(Resource.Id.image7age);
            img8 = (ImageView)FindViewById(Resource.Id.image8age);
            img9 = (ImageView)FindViewById(Resource.Id.image9age);
            img10 = (ImageView)FindViewById(Resource.Id.image10age);
            img11 = (ImageView)FindViewById(Resource.Id.image11age);
            img12 = (ImageView)FindViewById(Resource.Id.image12age);
            img13 = (ImageView)FindViewById(Resource.Id.image13age);
            img14 = (ImageView)FindViewById(Resource.Id.image14age);
            img15 = (ImageView)FindViewById(Resource.Id.image15age);

            progressBar = (ProgressBar)FindViewById(Resource.Id.progressBar);
            progressBar = (ProgressBar)FindViewById(Resource.Id.progressBar);
            textViewLevel = (TextView)FindViewById(Resource.Id.textViewlevels);

            //for menu connecting
            drawerLayout = (Android.Support.V4.Widget.DrawerLayout)FindViewById(Resource.Id.drawerLayout1);
            navigationView = (Android.Support.Design.Widget.NavigationView)FindViewById(Resource.Id.navigationView1);
            navigationView.NavigationItemSelected += NavigationView_NavigationItemSelected;
        }

        // funtions - turn on activities
        void InitQuiz0()
        {
            Intent intent = new Intent(this, typeof(DescriptionActivity));
            intent.PutExtra("topic", "Пробный Quiz");
            StartActivity(intent);
        }
        void InitQuiz1()
        {
            Intent intent = new Intent(this, typeof(DescriptionActivity));
            intent.PutExtra("topic", "Введение");
            StartActivity(intent);

        }
        void InitQuiz2()
        {
            Intent intent = new Intent(this, typeof(DescriptionActivity));
            intent.PutExtra("topic", "Hello World");
            StartActivity(intent);

        }
        void InitQuiz3()
        {
            Intent intent = new Intent(this, typeof(DescriptionActivity));
            intent.PutExtra("topic", "Переменные");
            StartActivity(intent);

        }
        void InitQuiz4()
        {
            Intent intent = new Intent(this, typeof(DescriptionActivity));
            intent.PutExtra("topic", "Инициализация vs. Присваивание");
            StartActivity(intent);

        }
        void InitQuiz5()
        {
            Intent intent = new Intent(this, typeof(DescriptionActivity));
            intent.PutExtra("topic", "Типы данных. Целочисленный тип данных");
            StartActivity(intent);
        }
        void InitQuiz6()
        {
            Intent intent = new Intent(this, typeof(DescriptionActivity));
            intent.PutExtra("topic", "Действительные числа");
            StartActivity(intent);

        }
        void InitQuiz7()
        {
            Intent intent = new Intent(this, typeof(DescriptionActivity));
            intent.PutExtra("topic", "Логический тип данных. Bool");
            StartActivity(intent);

        }
        void InitQuiz8()
        {
            Intent intent = new Intent(this, typeof(DescriptionActivity));
            intent.PutExtra("topic", "Символьный тип данных. Char");
            StartActivity(intent);

        }
        void InitQuiz9()
        {

            Intent intent = new Intent(this, typeof(DescriptionActivity));
            intent.PutExtra("topic", "Cтроки - массив «чаров»");
            StartActivity(intent);

        }
        void InitQuiz10()
        {
            Intent intent = new Intent(this, typeof(DescriptionActivity));
            intent.PutExtra("topic", "Литералы");
            StartActivity(intent);
        }
        void InitQuiz11()
        {
            Intent intent = new Intent(this, typeof(DescriptionActivity));
            intent.PutExtra("topic", "Условие If-Else");
            StartActivity(intent);

        }
        void InitQuiz12()
        {
            Intent intent = new Intent(this, typeof(DescriptionActivity));
            intent.PutExtra("topic", "Цикл for");
            StartActivity(intent);

        }
        void InitQuiz13()
        {
            Intent intent = new Intent(this, typeof(DescriptionActivity));
            intent.PutExtra("topic", "Цикл while");
            StartActivity(intent);

        }
        void InitQuiz14()
        {
            Intent intent = new Intent(this, typeof(DescriptionActivity));
            intent.PutExtra("topic", "Тест по первой части");
            StartActivity(intent);

        }
     

        // what we click in app
        public override bool OnOptionsItemSelected(IMenuItem item)
        {
            switch (item.ItemId)
            {
                case Android.Resource.Id.Home:
                    drawerLayout.OpenDrawer((int)GravityFlags.Left);
                    return true;
                default:
                    return base.OnOptionsItemSelected(item);

            }
        }

        void ShowPictures()
        {
            int[,] numImage = new int[2, 15] { { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15}, { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0} };

            numImage[1, 0] = prefs.GetInt("pictur1", 0);
            numImage[1, 1] = prefs.GetInt("pictur2", 0);
            numImage[1, 2] = prefs.GetInt("pictur3", 0);
            numImage[1, 3] = prefs.GetInt("pictur4", 0);
            numImage[1, 4] = prefs.GetInt("pictur5", 0);
            numImage[1, 5] = prefs.GetInt("pictur6", 0);
            numImage[1, 6] = prefs.GetInt("pictur7", 0);
            numImage[1, 7] = prefs.GetInt("pictur8", 0);
            numImage[1, 8] = prefs.GetInt("pictur9", 0);
            numImage[1, 9] = prefs.GetInt("pictur10", 0);
            numImage[1, 10] = prefs.GetInt("pictur11", 0);
            numImage[1, 11] = prefs.GetInt("pictur12", 0);
            numImage[1, 12] = prefs.GetInt("pictur13", 0);
            numImage[1, 13] = prefs.GetInt("pictur14", 0);
            numImage[1, 14] = prefs.GetInt("pictur15", 0);

            if (numImage[1, 0] == 1)
            {
                img1.ImageTintMode = null;
            }
            if (numImage[1, 1] == 1)
            {
                img2.ImageTintMode = null;
            }
            if (numImage[1, 2] == 1)
            {
                img3.ImageTintMode = null;
            }
            if (numImage[1, 3] == 1)
            {
                img4.ImageTintMode = null;
            }
            if (numImage[1, 4] == 1)
            {
                img5.ImageTintMode = null;
            }
            if (numImage[1, 5] == 1)
            {
                img6.ImageTintMode = null;
            }
            if (numImage[1, 6] == 1)
            {
                img7.ImageTintMode = null;
            }
            if (numImage[1, 7] == 1)
            {
                img8.ImageTintMode = null;
            }
            if (numImage[1, 8] == 1)
            {
                img9.ImageTintMode = null;
            }
            if (numImage[1, 9] == 1)
            {
                img10.ImageTintMode = null;
            }
            if (numImage[1, 10] == 1)
            {
                img11.ImageTintMode = null;
            }
            if (numImage[1, 11] == 1)
            {
                img12.ImageTintMode = null;
            }
            if (numImage[1, 12] == 1)
            {
                img13.ImageTintMode = null;
            }
            if (numImage[1, 13] == 1)
            {
                img14.ImageTintMode = null;
            }
            if (numImage[1, 14] == 1)
            {
                img15.ImageTintMode = null;
            }
            
        }

        async void ProgressProgressBar()
        {
            int level = 0;
            progressBar.Progress = 1;
            level = prefsLevel.GetInt("Level", 0);
            textViewLevel.Text = level.ToString() + "/15";
            for (int i = 1; i < level * 10; i++)
            {
                await Task.Delay(10);
                progressBar.Progress += 1;
            }
        }



        private void Quiz14_Click(object sender, System.EventArgs e)
        {
            InitQuiz14();
        }
        private void Quiz13_Click(object sender, System.EventArgs e)
        {
            InitQuiz13();
        }
        private void Quiz12_Click(object sender, System.EventArgs e)
        {
            InitQuiz12();
        }
        private void Quiz11_Click(object sender, System.EventArgs e)
        {
            InitQuiz11();
        }
        private void Quiz10_Click(object sender, System.EventArgs e)
        {
            InitQuiz10();
        }
        private void Quiz9_Click(object sender, System.EventArgs e)
        {
            InitQuiz9();
        }
        private void Quiz8_Click(object sender, System.EventArgs e)
        {
            InitQuiz8();
        }
        private void Quiz7_Click(object sender, System.EventArgs e)
        {
            InitQuiz7();
        }
        private void Quiz6_Click(object sender, System.EventArgs e)
        {
            InitQuiz6();
        }
        private void Quiz5_Click(object sender, System.EventArgs e)
        {
            InitQuiz5();
        }
        private void Quiz4_Click(object sender, System.EventArgs e)
        {
            InitQuiz4();
        }
        private void Quiz3_Click(object sender, System.EventArgs e)
        {
            InitQuiz3();
        }
        private void Quiz2_Click(object sender, System.EventArgs e)
        {
            InitQuiz2();
        }
        private void Quiz1_Click(object sender, System.EventArgs e)
        {
            InitQuiz1();
        }
        private void Quiz0_Click(object sender, System.EventArgs e)
        {
            InitQuiz0();
        }

    }
}