using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Android.App;
using Android.Content;
using Android.OS;
using Android.Provider;
using Android.Runtime;
using Android.Support.V7.App;
using Android.Views;
using Android.Webkit;
using Android.Widget;
using Java.Lang;

namespace CQuiz.Activities
{
    [Activity(Label = "ActivityAboutUs")]
    public class ActivityAboutUs : AppCompatActivity
    {
        ImageView imgInst;
        TextView txtInst;
        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);
            SetContentView(Resource.Layout.AboutUS);
            txtInst = (TextView)FindViewById(Resource.Id.textInst);
            imgInst = (ImageView)FindViewById(Resource.Id.imageInst);

            txtInst.Click += TxtInst_Click;
            imgInst.Click += ImgInst_Click;
        }
        private void ImgInst_Click(object sender, EventArgs e)
        {
            Intent intent = new Intent(Intent.ActionView);
            var uri = Android.Net.Uri.Parse("https://www.instagram.com/c_androiderc__/?hl=ru");
            intent.SetData(uri);
            StartActivity(intent);
        }
        private void TxtInst_Click(object sender, EventArgs e)
        {
            Intent intent = new Intent(Intent.ActionView);
            var uri = Android.Net.Uri.Parse("https://www.instagram.com/c_androiderc__/?hl=ru");
            intent.SetData(uri);
            StartActivity(intent);
        }

    }
}
