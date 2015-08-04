using DataAccess.Classes;
using DataAccess.Help;
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

            LoadAlbum();

            BaiViet baiviet = BaiViet.LayTheoID("23");
            if (baiviet != null)
            {
                if (Session["lang"].ToString().Equals("vn"))
                {
                    hlPrmo.NavigateUrl = "/vn/c-article/introduction-forest-restaurant-" + baiviet.ID + "-1.html";
                }
                else if (Session["lang"].ToString().Equals("en"))
                {
                    hlPrmo.NavigateUrl = "/en/c-article/introduction-forest-restaurant-" + baiviet.ID + "-1.html";
                }
                else if (Session["lang"].ToString().Equals("ru"))
                {
                    hlPrmo.NavigateUrl = "/ru/c-article/introduction-forest-restaurant-" + baiviet.ID + "-1.html";
                }

                desImage.ImageUrl = baiviet.HinhAnh;
            }

            List<HoiDap> listHoiDap = HoiDap.GetByStatusTopN(1,2);

            if (listHoiDap != null && listHoiDap.Count != 0)
            {
                rptListHoiDap.DataSource = listHoiDap;
                rptListHoiDap.DataBind();
            }
        }
    }
    private void LoadAlbum()
    {
        ImageAndClips data = ImageAndClips.LayTheoID("3");
        if (data != null)
        {
            List<Img> listimgs = new List<Img>();
            string listimg = data.ImgOrClip;
            string[] str = listimg.Split('\'');

            foreach (var item in str)
            {
                if (item.ToString() != "")
                {
                    Img dataimg = new Img();
                    dataimg.HinhAnh = item.ToString();
                    listimgs.Add(dataimg);
                }
            }

            int j = 1;
            foreach (Img img in listimgs)
            {
                if (j == 1)
                {
                    ltrListImages.Text += "<li>";
                }
                ltrListImages.Text += "<a href='" + img.HinhAnh + "' class='cl-gallery-item imgshow link' rel='main-gallery'>"
                                           + "<img src='" + img.HinhAnh + "' alt='Gallery item' class='img' />"
                                      + "</a>";



                if (j == 3)
                {
                    ltrListImages.Text += "</li>";
                    j = 1;
                    continue;
                }
                j++;

            }
        }
    }

    public string ShowInfo(object sender, string func)
    {
        HoiDap data = sender as HoiDap;
        switch (func)
        {
            case "hdlink":
                if (Session["lang"].ToString().Equals("vn"))
                {
                    return String.Format("/vn/hoi-dap/{0}-{1}.html", Helper.RejectMarks(data.TieuDe), data.ID);
                }
                else if (Session["lang"].ToString().Equals("en"))
                {
                    return String.Format("/en/hoi-dap/{0}-{1}.html", Helper.RejectMarks(data.TieuDe), data.ID);
                }
                else if (Session["lang"].ToString().Equals("ru"))
                {
                    return String.Format("/ru/hoi-dap/{0}-{1}.html", Helper.RejectMarks(data.TieuDe), data.ID);
                }
                return String.Format("/vn/hoi-dap/{0}-{1}.html", Helper.RejectMarks(data.TieuDe), data.ID);
            default: return "";
        }
    }
}
