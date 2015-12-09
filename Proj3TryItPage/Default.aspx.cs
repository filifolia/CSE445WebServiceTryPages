using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Proj3TryItPage.ServiceReference1; //Required services
using Proj3TryItPage.ServiceReference2; //Elective services
using System.Net;
using System.IO;
using System.Runtime.Serialization;

namespace Proj3TryItPage
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            ServiceReference1.Service1Client client = new ServiceReference1.Service1Client();
            string modify = client.WordFilter(this.TextBox1.Text);
            this.Label1.Text = modify;

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            ServiceReference1.Service1Client client = new ServiceReference1.Service1Client();
            string[] forecast = client.Weather5day(this.TextBox2.Text);
            string forecastString = "Day 1: "+ forecast[0] + ", Day 2: " + forecast[1] + ", Day 3: " + forecast[2] + ", Day 4: " + forecast[3] + ", Day 5: " + forecast[0];
            this.Label2.Text = forecastString;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            ServiceReference2.Service1Client client = new ServiceReference2.Service1Client();
            string [] definitions = client.DictionaryDefine(this.TextBox3.Text);
            string alldef = "";
            foreach (string defs in definitions)
            {
                alldef = alldef + defs + "\n";
            }
            this.Label3.Text = alldef;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            ServiceReference2.Service1Client client = new ServiceReference2.Service1Client();
            string info = client.zipTimeService(this.TextBox4.Text);
            this.Label4.Text = info;
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            ServiceReference2.Service1Client client = new ServiceReference2.Service1Client();
            string info = client.temperatureCityCountry(this.TextBox5.Text, this.TextBox6.Text);
            this.Label5.Text = info;
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Uri baseUri = new Uri("http://webstrar46.fulton.asu.edu/page3/Service1.svc");
            UriTemplate myTemplate = new UriTemplate("convertFahrenheitToKelvin/{x}");
            //string[] input = this.TextBox6.Text;
            Uri completeUri = myTemplate.BindByPosition(baseUri, this.TextBox7.Text);
            WebClient channel = new WebClient();
            byte[] abc = channel.DownloadData(completeUri);
            Stream strm = new MemoryStream(abc);
            DataContractSerializer obj = new DataContractSerializer(typeof(string));
            string randString = obj.ReadObject(strm).ToString(); // convent to string
            this.Label6.Text = randString;



        }

    }
}