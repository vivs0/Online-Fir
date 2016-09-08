using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

public partial class English_SubmitSuccess : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["ssid"] == null && Request.QueryString["firID"] == null)
        {
            Response.Redirect("~/English/Default.aspx");
        }
        else
        {
            Label3.Text = Session["firID"].ToString();
            Session.Clear();
        }
    }
}