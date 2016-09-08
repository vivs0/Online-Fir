using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
using System.Data;

public partial class English_Final : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection("Server=.\\SQLEXPRESS;Database=FIR_db; User Id = sa; Password = 2611798");
    SqlCommand cmd;
    SqlCommand cmd2;
    SqlCommand getID;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["ssid"] == null && Request.QueryString["ssid"] == null)
        {
            Response.Redirect("~/English/Default.aspx");
        }
        txtComplainerFirstName.Text = Session["fname"].ToString();
        txtComplainerLastName.Text = Session["lname"].ToString();
        txtComplainerFatherName.Text = Session["fhname"].ToString();
        txtComplainerState.Text = Session["state"].ToString();
        txtComplainerCity.Text = Session["city"].ToString();
        txtComplainerArea.Text = Session["subregion"].ToString();
        txtComplainerAddress.Text = Session["address"].ToString();
        txtContactNo.Text = Session["contact"].ToString();

        FirAccused.Text = Session["FirSuspect"].ToString();
        FIRDate.Text = Session["FIRDate"].ToString();
        FirSummary.Text = Session["FIRSummary"].ToString();
        FirPlace.Text = Session["FIRRegion"] + "," + Session["FIRCity"] + "," + Session["FIRstate"].ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cmd = new SqlCommand("insert into fir_complain(fir_state, fir_city, fir_area, accused_name, incident_date, fir_summary, fir_date)values(@a,@b,@c,@d,@e,@f,@date)", conn);
        cmd.Parameters.AddWithValue("@a", Session["FIRstate"].ToString());
        cmd.Parameters.AddWithValue("@b", Session["FIRCity"].ToString());
        cmd.Parameters.AddWithValue("@c", Session["FIRRegion"].ToString());
        cmd.Parameters.AddWithValue("@d", Session["FirSuspect"].ToString());
        cmd.Parameters.AddWithValue("@e", Session["FIRDate"].ToString());
        cmd.Parameters.AddWithValue("@f", Session["FIRSummary"].ToString());
        cmd.Parameters.AddWithValue("@date", DateTime.Now.ToString("d"));
        conn.Open();
        cmd.ExecuteNonQuery();

        getID = new SqlCommand("select top 1 c_fir_id from complainer order by id desc", conn);
        SqlDataReader sdr = getID.ExecuteReader();
        sdr.Read();
        string str = sdr["c_fir_id"].ToString();
        sdr.Close();

        cmd2 = new SqlCommand("update complainer set complainer_name = @g, complainer_father_husband_name = @h, complainer_mobile = @i, complainer_state = @j, complainer_city = @k, complainer_area = @l, complainer_address = @m where c_fir_id = @n", conn);
        cmd2.Parameters.AddWithValue("@g", Session["fname"] + " " + Session["lname"].ToString());
        cmd2.Parameters.AddWithValue("@h", Session["fhname"].ToString());
        cmd2.Parameters.AddWithValue("@i", Session["contact"].ToString());
        cmd2.Parameters.AddWithValue("@j", Session["state"].ToString());
        cmd2.Parameters.AddWithValue("@k", Session["city"].ToString());
        cmd2.Parameters.AddWithValue("@l", Session["subregion"].ToString());
        cmd2.Parameters.AddWithValue("@m", Session["address"].ToString());
        cmd2.Parameters.AddWithValue("@n", str.ToString());
        cmd2.ExecuteNonQuery();
        conn.Close();
        Session["firID"] = str.ToString();
        Response.RedirectPermanent("SubmitSuccess.aspx?ssid="+Session["ssid"].ToString()+"&fir_id="+Session["firID"].ToString());
    }
}