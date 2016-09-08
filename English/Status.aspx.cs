using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class English_Status : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["ssid"] == null && Request.QueryString["FID"] == null)
        {
            Response.Redirect("~/English/Default.aspx");
        }
        else
        {
            try
            {
                lblHeading.Text = "Fir progress of " + Request.QueryString["FID"].ToString();
                recieved.InnerText = Session["recieved"].ToString();
                action.InnerText = Session["action"].ToString();
            }
            catch (NullReferenceException exc)
            {
                Response.Redirect("~/English/Default.aspx");
                Session.Clear();
            }
        }
        Session.Clear();
    }
}