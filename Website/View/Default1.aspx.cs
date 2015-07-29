using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MultipleLanguage;
using DataAccess.Classes;

public partial class View_Default1 : BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            List<TheLoai> listTL = TheLoai.LayTheoIDParent("3");
            if (listTL != null && listTL.Count != 0)
            {
                rptProduct.DataSource = listTL;
                rptProduct.DataBind();
            }

            BaiViet baiviet = BaiViet.LayTheoID("14");
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


            baiviet = BaiViet.LayTheoID("15");
            if (baiviet != null)
            {
                if (Session["lang"].ToString().Equals("vn"))
                {
                    hlPromotion.NavigateUrl = "/vn/article/promtion-15-1.html";
                }
                else if (Session["lang"].ToString().Equals("en"))
                {
                    hlPromotion.NavigateUrl = "/en/article/promtion-15-1.html";
                }
                else if (Session["lang"].ToString().Equals("ru"))
                {
                    hlPromotion.NavigateUrl = "/ru/article/promtion-15-1.html";
                }
                PromtionImage.ImageUrl = baiviet.HinhAnh;
            }

            LoadFirstAlbum();

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

    private void LoadFirstAlbum()
    {
        ImageAndClips data = ImageAndClips.LayTheoID("10");
        if (data != null)
        {
            List<Img> listimgs = new List<Img>();
            string listimg = data.ImgOrClip;
            string[] str = listimg.Split('\'');
            int i = 1;
            foreach (var item in str)
            {
                if (item.ToString() != "")
                {
                    Img dataimg = new Img();
                    dataimg.HinhAnh = item.ToString();
                    listimgs.Add(dataimg);

                    i++;
                }
            }
            dlListimages.DataSource = listimgs;
            dlListimages.DataBind();
        }
    }
}