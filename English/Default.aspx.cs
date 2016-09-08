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

public partial class English_Default : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection("Server=.\\SQLExpress;Database=FIR_db; User Id = sa; Password = 2611798");
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        table1.Visible = false;
        Panel1.Visible = false;
        Panel2.Visible = false;
        Panel2.Enabled = false;
        if (RadioButtonList1.SelectedValue == "1")
        {
            table1.Visible = true;
            Panel1.Visible = false;
        }
        else if(RadioButtonList1.SelectedValue=="2")
        {
            table1.Visible = false;
            Panel1.Visible = true;
        }
        if (!IsPostBack)
        {
            loadState();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["fname"] = txtFirstName.Text;
        Session["lname"] = txtLastName.Text;
        Session["fhname"] = txtfatherHusbandName.Text;
        Session["state"] = ListState.SelectedItem.Text;
        Session["city"] = ListCity.SelectedItem.Text;
        Session["subregion"] = ListAreaStation.SelectedItem.Text;
        Session["address"] = txtAddress.Text;
        Session["contact"] = txtContact.Text;
        Session["stateID"] = ListState.SelectedValue.ToString();
        Session["cityID"] = ListCity.SelectedValue.ToString();
        Session["ssid"] = SessionId().ToString();
        Response.Redirect("~/English/FIR.aspx?ssid="+Session["ssid"].ToString());
        
    }
    void loadState()
    {
        conn.Open();
        cmd = new SqlCommand("select stateid, statename from states", conn);
        ListState.DataSource = cmd.ExecuteReader();
        ListState.DataTextField = "statename";
        ListState.DataValueField = "stateid";
        ListState.DataBind();
        conn.Close();
    }

    void loadCity()
    {
        Int16 id = new Int16();
        id = Convert.ToInt16(ListState.SelectedValue.ToString());
        conn.Open();
        cmd = new SqlCommand("select districtid, districtname from districts where stateid=@a", conn);
        cmd.Parameters.AddWithValue("@a", id);
        ListCity.DataSource = cmd.ExecuteReader();
        ListCity.DataTextField = "districtname";
        ListCity.DataValueField = "districtid";
        ListCity.DataBind();
        conn.Close();
        
    }
    protected void ListCity_SelectedIndexChanged(object sender, EventArgs e)
    {
        Int16 cid = new Int16();
        cid = Convert.ToInt16(ListCity.SelectedValue.ToString());
        conn.Open();
        cmd = new SqlCommand("select subregionid, subregionName from subregions where districtid = @b", conn);
        cmd.Parameters.AddWithValue("@b", cid);
        ListAreaStation.DataSource = cmd.ExecuteReader();
        ListAreaStation.DataTextField = "subregionname";
        ListAreaStation.DataValueField = "subregionid";
        ListAreaStation.DataBind();
        conn.Close();
    }
    protected void ListState_SelectedIndexChanged(object sender, EventArgs e)
    {
        loadCity();
    }

    string SessionId()
    {
        string str;
        str = Path.GetRandomFileName();
        str = str.Replace(".", "");
        return str;
    }
    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (RadioButtonList1.SelectedValue == "1")
        {
            table1.Visible = true;
            Panel1.Visible = false;
        }
        else
        {
            table1.Visible = false;
            Panel1.Visible = true;
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        cmd = new SqlCommand("Select recieved, fir_action from fir_status where fir_id = @a", conn);
        cmd.Parameters.AddWithValue("@a", txtTracefirID.Text);
        conn.Open();
        SqlDataReader sdr;
        sdr = cmd.ExecuteReader();
        while (sdr.Read())
        {
            Session["recieved"] = sdr["recieved"].ToString();
            Session["action"] = sdr["fir_action"].ToString();
        }
        conn.Close();
        Session["ssid"] = SessionId().ToString();
        Response.Redirect("~/English/Status.aspx?ssid=" + Session["ssid"]+"&FID="+txtTracefirID.Text);
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        string a = "select p.c_fir_id from complainer p inner join fir_complain a on (p.c_fir_id = a.fir_id) where";
        string b = a + "(p.complainer_name like @a) and (a.fir_date = @b)";
        string c = b + "and(p.complainer_father_husband_name like @c) and(p.complainer_mobile = @d)";
        cmd = new SqlCommand(c, conn);
        cmd.Parameters.AddWithValue("@a", "%"+tracefname.Text+"%");
        cmd.Parameters.AddWithValue("@b", traceFIRDate.Text);
        cmd.Parameters.AddWithValue("@c", "%"+tracefhname.Text+"%");
        cmd.Parameters.AddWithValue("@d", traceContact.Text);
        conn.Open();
        string str = (string)cmd.ExecuteScalar();
        conn.Close();
        Session["trace"] = SessionId();
        if (str == null)
        {
            string result = "No FIR found by the details provided by you. Please kindly contact your nearest Police Station to recover your Fir or Register a new One.";
            Session["Result"] = result.ToString();
            Response.Redirect("~/English/TraceResult.aspx?ssid=" + Session["trace"].ToString());
        }
        else
        {
            string result = str;
            Session["Result"] = result.ToString();
            Response.Redirect("~/English/TraceResult.aspx?ssid=" + Session["trace"].ToString());
        }
    }
    protected void ForgetID_Click(object sender, EventArgs e)
    {
        Panel1.Enabled = false;
        Panel1.Visible = false;
        Panel2.Enabled = true;
        Panel2.Visible = true;
    }
}