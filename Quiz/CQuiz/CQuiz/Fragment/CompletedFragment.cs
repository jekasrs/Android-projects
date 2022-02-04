using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Android;
using Android.App;
using Android.Content;
using Android.OS;
using Android.Runtime;
using Android.Util;
using Android.Views;
using Android.Widget;
namespace CQuiz.Fragment
{
    public class CompletedFragment : Android.Support.V4.App.DialogFragment
    {
        ImageView ThisImage;
        TextView RemarksTextView;
        TextView ScoreTextView;
        Button GoHomeButton;

        string remarks, score, image;

        public event EventHandler GoHome;

        public CompletedFragment(string _remarks, string _score, string _image)
        {
            remarks = _remarks;
            score = _score;
            image = _image;
        }
        public override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);
        }
        public override View OnCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState)
        {

            View view = inflater.Inflate(Resource.Layout.Completed, container, false);

            ThisImage = (ImageView)view.FindViewById(Resource.Id.image);
            RemarksTextView = (TextView)view.FindViewById(Resource.Id.remarksTextView);
            ScoreTextView = (TextView)view.FindViewById(Resource.Id.scoreTextView);
            GoHomeButton = (Button)view.FindViewById(Resource.Id.goHomeButton);
            GoHomeButton.Click += GoHomeButton_Click;

            RemarksTextView.Text = remarks;
            ScoreTextView.Text = score;

            if (image == "failed")
            {
                ThisImage.SetImageResource(Resource.Drawable.Lose);
            }
            return view;
        }

        private void GoHomeButton_Click(object sender, EventArgs e)
        {
            this.Dismiss();
            GoHome?.Invoke(this, new EventArgs());
        }
    }
}