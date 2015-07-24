using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataAccess.Classes;
using DataAccess.Connect;
using DataAccess.Help;
using DataAccess.StringUtil;
using MultipleLanguage;

public partial class Vn_Default : BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            List<TheLoai> lt = TheLoai.LayTatCa();
            a.DataSource = lt;
            a.DataBind();
        }
    }
}