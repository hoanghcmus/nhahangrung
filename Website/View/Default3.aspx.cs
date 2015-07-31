using DataAccess.Classes;
using DataAccess.Help;
using DataAccess.StringUtil;
using MultipleLanguage;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class View_Default3 : BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            BaiViet baiviet = BaiViet.LayTheoID("20");
            if (baiviet != null)
            {
                if (Session["lang"].ToString().Equals("vn"))
                {
                    ltrTieuDeBaiViet.Text = baiviet.TieuDe_Vn;
                    ltBaiVietGioiThieu.Text = baiviet.TomTat_Vn;
                    hlReadMore.NavigateUrl = "/vn/c-article/introduction-forest-restaurant-" + baiviet.ID + "-1.html";
                    hlMore.NavigateUrl = "/vn/c-article/introduction-forest-restaurant-" + baiviet.ID + "-1.html";
                    hlMore1.NavigateUrl = "/vn/c-article/introduction-forest-restaurant-" + baiviet.ID + "-1.html";
                }
                else if (Session["lang"].ToString().Equals("en"))
                {
                    ltrTieuDeBaiViet.Text = baiviet.TieuDe_En;
                    ltBaiVietGioiThieu.Text = baiviet.TomTat_En;
                    hlReadMore.NavigateUrl = "/en/c-article/introduction-forest-restaurant-" + baiviet.ID + "-1.html";
                    hlMore.NavigateUrl = "/en/c-article/introduction-forest-restaurant-" + baiviet.ID + "-1.html";
                    hlMore1.NavigateUrl = "/en/c-article/introduction-forest-restaurant-" + baiviet.ID + "-1.html";
                }
                else if (Session["lang"].ToString().Equals("ru"))
                {
                    ltrTieuDeBaiViet.Text = baiviet.TieuDe_Ru;
                    ltBaiVietGioiThieu.Text = baiviet.TomTat_Ru;
                    hlReadMore.NavigateUrl = "/ru/c-article/introduction-forest-restaurant-" + baiviet.ID + "-1.html";
                    hlMore.NavigateUrl = "/ru/c-article/introduction-forest-restaurant-" + baiviet.ID + "-1.html";
                    hlMore1.NavigateUrl = "/ru/c-article/introduction-forest-restaurant-" + baiviet.ID + "-1.html";
                }

                desImage.ImageUrl = baiviet.HinhAnh;
            }



            List<MonAn> listBV = MonAn.MonAn_LayTheoIDTheLoai(62);
            if (listBV != null && listBV.Count != 0)
            {
                rptMonNoiBat.DataSource = listBV;
                rptMonNoiBat.DataBind();

                if (Session["lang"].ToString().Equals("vn")) { ltrCtTitle.Text = listBV.First().TenTheLoai_Vn; }
                else if (Session["lang"].ToString().Equals("en")) { ltrCtTitle.Text = listBV.First().TenTheLoai_En; }
                else if (Session["lang"].ToString().Equals("ru")) { ltrCtTitle.Text = listBV.First().TenTheLoai_Ru; }

            }

            listBV = MonAn.MonAn_LayTheoIDTheLoai(63);
            if (listBV != null && listBV.Count != 0)
            {
                rptMonAnNhe.DataSource = listBV;
                rptMonAnNhe.DataBind();

                if (Session["lang"].ToString().Equals("vn")) { ltrMonAnNhe.Text = listBV.First().TenTheLoai_Vn; }
                else if (Session["lang"].ToString().Equals("en")) { ltrMonAnNhe.Text = listBV.First().TenTheLoai_En; }
                else if (Session["lang"].ToString().Equals("ru")) { ltrMonAnNhe.Text = listBV.First().TenTheLoai_Ru; }

            }

        }
    }

    protected string ShowMainMenu(object sender, string column)
    {
        TheLoai theloai = sender as TheLoai;

        switch (column)
        {
            case "MenuDuongDan":
                if (Session["lang"].ToString().Equals("vn")) { return theloai.DuongDan_Vn; }
                else if (Session["lang"].ToString().Equals("en")) { return theloai.DuongDan_En; }
                else if (Session["lang"].ToString().Equals("ru")) { return theloai.DuongDan_Ru; }
                return theloai.DuongDan_Vn;

            case "MenuTieuDe":
                if (Session["lang"].ToString().Equals("vn")) { return theloai.TieuDe_Vn; }
                else if (Session["lang"].ToString().Equals("en")) { return theloai.TieuDe_En; }
                else if (Session["lang"].ToString().Equals("ru")) { return theloai.TieuDe_Ru; }
                return theloai.DuongDan_Vn;

            default: return "";
        }
    }
    protected string ShowArticleCat(object sender, string column)
    {
        MonAn baiviet = sender as MonAn;

        switch (column)
        {
            case "laytomtat":
                if (baiviet.MoTa_Vn.Length > 100)
                {
                    if (Session["lang"].ToString().Equals("vn")) { return StringUltility.GetStringByLenght(baiviet.MoTa_Vn, 100) + "..."; }
                    else if (Session["lang"].ToString().Equals("en")) { return StringUltility.GetStringByLenght(baiviet.MoTa_En, 100) + "..."; }
                    else if (Session["lang"].ToString().Equals("ru")) { return StringUltility.GetStringByLenght(baiviet.MoTa_Ru, 100) + "..."; }

                    return StringUltility.GetStringByLenght(baiviet.MoTa_Vn, 100) + "...";
                }
                else
                {
                    if (Session["lang"].ToString().Equals("vn")) { return baiviet.MoTa_Vn; }
                    else if (Session["lang"].ToString().Equals("en")) { return baiviet.MoTa_En; }
                    else if (Session["lang"].ToString().Equals("ru")) { return baiviet.MoTa_Ru; }
                    return baiviet.MoTa_Vn + "...";
                }

            case "ArticleCatDuongDan":
                if (Session["lang"].ToString().Equals("vn"))
                {
                    return "/vn/c-cuisine/" + Helper.RejectMarks(Eval("TenMon_En").ToString()) + "-" + baiviet.ID + "-" + baiviet.MenuID + ".html";
                }
                else if (Session["lang"].ToString().Equals("en"))
                {
                    return "/en/c-cuisine/" + Helper.RejectMarks(Eval("TenMon_En").ToString()) + "-" + baiviet.ID + "-" + baiviet.MenuID + ".html";
                }
                else if (Session["lang"].ToString().Equals("ru"))
                {
                    return "/ru/c-cuisine/" + Helper.RejectMarks(Eval("TenMon_En").ToString()) + "-" + baiviet.ID + "-" + baiviet.MenuID + ".html";
                }

                return "/vn/c-cuisine/" + Helper.RejectMarks(Eval("TenMon_En").ToString()) + "-" + baiviet.ID + "-" + baiviet.MenuID + ".html"; ;

            case "ArticleCatTenMon":
                if (Session["lang"].ToString().Equals("vn")) { return HttpUtility.HtmlEncode(Eval("TenMon_Vn").ToString()); }
                else if (Session["lang"].ToString().Equals("en")) { return HttpUtility.HtmlEncode(Eval("TenMon_En").ToString()); }
                else if (Session["lang"].ToString().Equals("ru")) { return HttpUtility.HtmlEncode(Eval("TenMon_Ru").ToString()); }
                return HttpUtility.HtmlEncode(Eval("TenMon_Vn").ToString()); ;

            default: return "";
        }
    }


    public string showMoney(decimal input)
    {
        return StringUltility.createMoneyString(input.ToString("#"));
    }

}