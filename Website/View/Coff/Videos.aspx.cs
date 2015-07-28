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

public partial class View_Videos : BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

        }
    }

    protected void ListPager_PreRender(object sender, EventArgs e)
    {
        List<ImageAndClips> lisClips = ImageAndClips.ImageAndClips_LayTatCa("18",1);

        if (lisClips != null && lisClips.Count != 0)
        {
            dlVideos.DataSource = lisClips;
            dlVideos.DataBind();
        }
    }

    protected void rptArticleList_DataBound(object sender, EventArgs e)
    {
        ListPager.Visible = (ListPager.PageSize < ListPager.TotalRowCount);
    }


    protected string ShowVideo(object sender, string column)
    {
        ImageAndClips data = sender as ImageAndClips;

        switch (column)
        {
            case "VideoMoTa":

                if (Session["lang"].ToString().Equals("vn")) { return data.MoTa_Vn; }
                else if (Session["lang"].ToString().Equals("en")) { return data.MoTa_En; }
                return data.MoTa_Vn;

            case "VideoTieuDe":
                if (Session["lang"].ToString().Equals("vn")) { return data.Ten_Vn; }
                else if (Session["lang"].ToString().Equals("en")) { return data.Ten_En; }
                return data.Ten_Vn;

            default: return "";
        }
    }
}