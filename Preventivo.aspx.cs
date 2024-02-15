using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Concessionaria
{
    public partial class Preventivo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Inizializza l'immagine dell'auto
                imgCar.ImageUrl = "https://upload.wikimedia.org/wikipedia/it/thumb/0/04/Logo_della_Ferrari_S.p.A..svg/640px-Logo_della_Ferrari_S.p.A..svg.png";
                imgCar.Width =500;
                imgCar.Height = 600;
            }
        }

        protected void btnCalculate_Click(object sender, EventArgs e)
        {
            // Calcola il prezzo base
            decimal basePrice = Convert.ToDecimal(ddlCar.SelectedValue);

            // Calcola il totale degli optional
            decimal optionalTotal = 0;
            foreach (ListItem item in cblOptions.Items)
            {
                if (item.Selected)
                {
                    optionalTotal += Convert.ToDecimal(item.Value);
                }
            }

            // Calcola il totale della garanzia
            decimal warrantyTotal = Convert.ToDecimal(txtWarrantyYears.Text) * 120;

            // Calcola il totale complessivo
            decimal totalPrice = basePrice + optionalTotal + warrantyTotal;

            // Visualizza i risultati
            lblBasePrice.Text = basePrice.ToString("C");
            lblOptionalTotal.Text = optionalTotal.ToString("C");
            lblWarrantyTotal.Text = warrantyTotal.ToString("C");
            lblTotalPrice.Text = totalPrice.ToString("C");
        }

        protected void ddlCar_SelectedIndexChanged(object sender, EventArgs e)
        {
            switch (ddlCar.SelectedItem.Text)
            {
                case "Macchina1":
                    imgCar.ImageUrl = "https://cdn.motor1.com/images/mgl/9mygWv/s3/ferrari-sp-8.jpg";
                    imgCar.Width = 1000;
                    lblCostoAuto.Text = "20000 Euro";
                    break;
                case "Macchina2":
                    imgCar.ImageUrl = "https://cdn.ferrari.com/cms/network/media/img/resize/5d725c7171ec043826a41a77-01_812-gts-fb_ppl_intro?width=1080";
                    imgCar.Width = 1000;
                    lblCostoAuto.Text = "25000 Euro";
                    break;
                case "Macchina3":
                    imgCar.ImageUrl = "https://cdn.ferrari.com/cms/network/media/img/resize/6195238a231148389a65f8f4-f150bdcoverthree1920x1080?";
                    imgCar.Width = 1000;
                    lblCostoAuto.Text = "30000 Euro";
                    break;
            }
        }
    }
}