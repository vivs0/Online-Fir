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

public partial class English_FIR : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection("Server=.\\SQLEXPRESS;Database=FIR_db; User Id = sa; Password = 2611798");
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["ssid"] == null && Request.QueryString["ssid"] == null)
        {
            Response.Redirect("~/English/Default.aspx");
        }
        if (!IsPostBack)
        {
            DropCrimeState.Visible = false;
            DropCrimCity.Visible = false;
            DropCrimeRegion.Visible = false;
            Labelstate.Visible = false;
            Labelcity.Visible = false;
            Labelregion.Visible = false;
        }
    }
    protected void RadioState_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (RadioState.SelectedValue == "1")
        {
            DropCrimeState.Visible = false;
            Label2.Text = "Is incident happen in the same city where you live ?".ToString();
            RadioCity.Visible = true;
            RadioCity.Enabled = true;
            RadioRegion.Visible = true;
            RadioRegion.Enabled = true;
            Labelstate.Visible = true;
            Labelstate.Text = Session["state"].ToString();
        }
        else
        {
            loadState();
            Labelstate.Visible = false;
            DropCrimeState.Visible = true;
            Label2.Text = "Select City where incident happened:".ToString();
            Label3.Text = "select Region/Area where incident happened:".ToString();
            DropCrimCity.Visible = true;
            DropCrimeRegion.Visible = true;
            RadioCity.Visible = false;
            RadioCity.Enabled = false;
            RadioRegion.Visible = false;
            RadioRegion.Enabled = false;
            RequiredFieldValidator2.Enabled = false;
            RequiredFieldValidator3.Enabled = false;
        }
    }
    protected void RadioCity_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (RadioCity.SelectedValue == "1")
        {
            DropCrimCity.Visible = false;
            DropCrimeRegion.Visible = false;
            RadioRegion.Visible = true;
            RadioRegion.Enabled = true;
            Labelcity.Visible = true;
            Labelcity.Text = Session["city"].ToString();
        }
        else
        {
            Labelcity.Visible = false;
            loadCity(Session["stateID"].ToString());
            DropCrimeRegion.Visible = true;
            DropCrimCity.Visible = true;
            RadioRegion.Visible = false;
            RadioRegion.Enabled = false;
        }
    }
    protected void RadioRegion_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (RadioRegion.SelectedValue == "1")
        {
            DropCrimeRegion.Visible = false;
            Labelregion.Visible = true;
            Labelregion.Text = Session["subregion"].ToString();
        }
        else
        {
            Labelregion.Visible = false;
            DropCrimeRegion.Visible = true;
            loadRegion(Session["cityID"].ToString());
        }
    }
    void loadState()
    {
        conn.Open();
        cmd = new SqlCommand("select stateid, statename from states", conn);
        DropCrimeState.DataSource = cmd.ExecuteReader();
        DropCrimeState.DataTextField = "statename";
        DropCrimeState.DataValueField = "stateid";
        DropCrimeState.DataBind();
        conn.Close();
    }

    void loadCity(string s)
    {
        DropCrimCity.Items.Clear();
        Int16 id = new Int16();
//        s = DropCrimeState.SelectedValue.ToString();
        id = Convert.ToInt16(s);
        conn.Open();
        cmd = new SqlCommand("select districtid, districtname from districts where stateid=@a", conn);
        cmd.Parameters.AddWithValue("@a", id);
        DropCrimCity.DataSource = cmd.ExecuteReader();
        DropCrimCity.DataTextField = "districtname";
        DropCrimCity.DataValueField = "districtid";
        DropCrimCity.DataBind();
        DropCrimCity.Items.Insert(0, new ListItem("Select City", "-1"));
        DropCrimCity.AppendDataBoundItems = true;
        conn.Close();
    }

    void loadRegion(string str)
    {
        DropCrimeRegion.Items.Clear();
        Int16 cid = new Int16();
        cid = Convert.ToInt16(str);
        conn.Open();
        cmd = new SqlCommand("select subregionid, subregionName from subregions where districtid = @b", conn);
        cmd.Parameters.AddWithValue("@b", cid);
        DropCrimeRegion.DataSource = cmd.ExecuteReader();
        DropCrimeRegion.DataTextField = "subregionname";
        DropCrimeRegion.DataValueField = "subregionid";
        DropCrimeRegion.DataBind();
        DropCrimeRegion.Items.Insert(0, new ListItem("Select Region/Area", "-1"));
        conn.Close();
    }
    protected void DropCrimeState_SelectedIndexChanged(object sender, EventArgs e)
    {
        loadCity(DropCrimeState.SelectedValue.ToString());
    }
    protected void DropCrimCity_SelectedIndexChanged(object sender, EventArgs e)
    {
        loadRegion(DropCrimCity.SelectedValue.ToString());
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if(RadioState.SelectedValue=="1")
        {
            Session["FIRstate"] = Labelstate.Text;
        }
        else
        {
            Session["FIRstate"] = DropCrimeState.SelectedItem.Text;
        }
        if (RadioCity.SelectedValue == "1")
        {
            Session["FIRCity"] = Labelcity.Text;
        }
        else
        {
            Session["FIRCity"] = DropCrimCity.SelectedItem.Text;
        }
        if (RadioRegion.SelectedValue == "1")
        {
            Session["FIRRegion"] = Labelregion.Text;
        }
        else
        {
            Session["FIRRegion"] = DropCrimeRegion.SelectedItem.Text;
        }
        Session["FirSuspect"] = txtAccusedName.Text;
        Session["FIRDate"] = TextDate.Text;
        Session["FIRSummary"] = txtFir.Text;
        Response.Redirect("Final.aspx?ssid="+Session["ssid"].ToString());
    }
    protected void txtFir0_TextChanged(object sender, EventArgs e)
    {

    }
    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {
        DateTime.UtcNow.ToLocalTime().ToString("dd-mm-yyyy");   
    }
}