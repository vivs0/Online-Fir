using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
public partial class English_Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lbl1.Text = SessionId().ToString();
    }
    string SessionId()
    {
        string str;
        str = Path.GetRandomFileName();
        str = str.Replace(".", "");
        return str;
    }

}