using DataAccess.Classes;
using MultipleLanguage;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class View_Default2 : BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            List<TheLoai> listTL = TheLoai.LayTheoIDParent("36");
            if (listTL != null && listTL.Count != 0)
            {
                rptProduct.DataSource = listTL;
                rptProduct.DataBind();
            }


            BaiViet baiviet = BaiViet.LayTheoID("16");
            if (baiviet != null)
            {
                if (Session["lang"].ToString().Equals("vn"))
                {
                    ltrTieuDeBaiViet.Text = baiviet.TieuDe_Vn;
                    ltBaiVietGioiThieu.Text = baiviet.TomTat_Vn;
                    hlReadMore.NavigateUrl = "/vn/s-article/introduction-forest-restaurant-" + baiviet.ID + "-1.html";
                    hlMore.NavigateUrl = "/vn/s-article/introduction-forest-restaurant-" + baiviet.ID + "-1.html";

                }
                else if (Session["lang"].ToString().Equals("en"))
                {
                    ltrTieuDeBaiViet.Text = baiviet.TieuDe_En;
                    ltBaiVietGioiThieu.Text = baiviet.TomTat_En;
                    hlReadMore.NavigateUrl = "/en/s-article/introduction-forest-restaurant-" + baiviet.ID + "-1.html";
                    hlMore.NavigateUrl = "/en/s-article/introduction-forest-restaurant-" + baiviet.ID + "-1.html";

                }
                else if (Session["lang"].ToString().Equals("ru"))
                {
                    ltrTieuDeBaiViet.Text = baiviet.TieuDe_Ru;
                    ltBaiVietGioiThieu.Text = baiviet.TomTat_Ru;
                    hlReadMore.NavigateUrl = "/ru/s-article/introduction-forest-restaurant-" + baiviet.ID + "-1.html";
                    hlMore.NavigateUrl = "/ru/s-article/introduction-forest-restaurant-" + baiviet.ID + "-1.html";

                }

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