﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataAccess.Classes;
using System.Text;
using DataAccess.Connect;
using MultipleLanguage;
using DataAccess.Help;

public partial class Vn_Photos : BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
        }
    }
    protected void ListPager_PreRender(object sender, EventArgs e)
    {
        List<ImageAndClips> lisrImgs = ImageAndClips.ImageAndClips_LayTatCa("6", 1);

        if (lisrImgs != null && lisrImgs.Count != 0)
        {
            dlListImg.DataSource = lisrImgs;
            dlListImg.DataBind();
        }
    }

    protected void rptArticleList_DataBound(object sender, EventArgs e)
    {
        ListPager.Visible = (ListPager.PageSize < ListPager.TotalRowCount);
    }

    public string ShowImg(object input, string colunmName)
    {
        ImageAndClips data = input as ImageAndClips;
        switch (colunmName)
        {
            case "ImgOrClip":
                StringBuilder sb = new StringBuilder();
                string url01 = "";
                string listimg = data.ImgOrClip;
                string[] str = listimg.Split('\'');

                url01 = str[0].ToString();
                sb.Append(String.Format("<img id=\"photo1\" class=\"img\"  src='{1}' />", data.ID, url01));
                return sb.ToString();

            case "ImageDuongDan":
                if (Session["lang"].ToString().Equals("vn"))
                {
                    return "/vn/s-gallery/" + DataAccess.Help.Helper.RejectMarks(data.Ten_En) + "-" + data.ID + ".html";
                }
                else if (Session["lang"].ToString().Equals("en")) { return "/en/s-gallery/" + DataAccess.Help.Helper.RejectMarks(data.Ten_En) + "-" + data.ID + ".html"; }
                else if (Session["lang"].ToString().Equals("ru")) { return "/ru/s-gallery/" + DataAccess.Help.Helper.RejectMarks(data.Ten_En) + "-" + data.ID + ".html"; }
                else if (Session["lang"].ToString().Equals("cn")) { return "/cn/s-gallery/" + DataAccess.Help.Helper.RejectMarks(data.Ten_En) + "-" + data.ID + ".html"; }
                return "/vn/s-gallery/" + DataAccess.Help.Helper.RejectMarks(data.Ten_En) + data.ID + ".html";

            case "ImageTieuDe":
                if (Session["lang"].ToString().Equals("vn")) { return data.Ten_Vn; }
                else if (Session["lang"].ToString().Equals("en")) { return data.Ten_En; }
                else if (Session["lang"].ToString().Equals("ru")) { return data.Ten_Ru; }
                else if (Session["lang"].ToString().Equals("cn")) { return data.Ten_Cn; }
                return data.Ten_Vn;

            default:
                return "";
        }
    }

}