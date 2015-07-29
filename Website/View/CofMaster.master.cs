using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class View_CofMaster : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            UC_MenuChung1.MenuType = "1";
            UC_MenuChung1.Website = 3;

            UC_MenuChung.MenuType = "2";
            UC_MenuChung.Website = 3;

            UC_SlideShow.Website = 3;
        }
    }
}
