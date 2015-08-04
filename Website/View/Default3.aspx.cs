using DataAccess.Classes;
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
                    hlReadMore.NavigateUrl = "/vn/article/introduction-forest-restaurant-" + baiviet.ID + "-1.html";
                    hlMore.NavigateUrl = "/vn/article/introduction-forest-restaurant-" + baiviet.ID + "-1.html";
                    hlMore1.NavigateUrl = "/vn/article/introduction-forest-restaurant-" + baiviet.ID + "-1.html";
                }
                else if (Session["lang"].ToString().Equals("en"))
                {
                    ltrTieuDeBaiViet.Text = baiviet.TieuDe_En;
                    ltBaiVietGioiThieu.Text = baiviet.TomTat_En;
                    hlReadMore.NavigateUrl = "/en/article/introduction-forest-restaurant-" + baiviet.ID + "-1.html";
                    hlMore.NavigateUrl = "/en/article/introduction-forest-restaurant-" + baiviet.ID + "-1.html";
                    hlMore1.NavigateUrl = "/en/article/introduction-forest-restaurant-" + baiviet.ID + "-1.html";
                }
                else if (Session["lang"].ToString().Equals("ru"))
                {
                    ltrTieuDeBaiViet.Text = baiviet.TieuDe_Ru;
                    ltBaiVietGioiThieu.Text = baiviet.TomTat_Ru;
                    hlReadMore.NavigateUrl = "/ru/article/introduction-forest-restaurant-" + baiviet.ID + "-1.html";
                    hlMore.NavigateUrl = "/ru/article/introduction-forest-restaurant-" + baiviet.ID + "-1.html";
                    hlMore1.NavigateUrl = "/ru/article/introduction-forest-restaurant-" + baiviet.ID + "-1.html";
                }

                desImage.ImageUrl = baiviet.HinhAnh;
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
}