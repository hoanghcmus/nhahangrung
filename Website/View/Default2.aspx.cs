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

            BaiViet baiviet = BaiViet.LayTheoID("14");
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
}