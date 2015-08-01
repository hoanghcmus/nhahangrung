using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataAccess.Classes;
using DataAccess.Connect;
using DataAccess.Help;
using MultipleLanguage;

public partial class View_Search : BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {

        }
    }

    public string DecodeUtf8(string s_Input)
    {
        byte[] u8_Utf = new byte[s_Input.Length];
        for (int i = 0; i < s_Input.Length; i++)
        {
            if (s_Input[i] > 255)
                return s_Input;

            u8_Utf[i] = (byte)s_Input[i];
        }
        return Encoding.UTF8.GetString(u8_Utf);
    }

    public string ShowInfo(object input, string colunmName)
    {
        TimKiem data = input as TimKiem;
        switch (colunmName)
        {
            case "hienthilink":
                if (data.Module.Equals("baiviet"))
                {
                    if (Session["lang"].ToString().Equals("vn"))
                    {
                        return String.Format("/vn/c-article/{0}-{1}-{2}.html", Helper.RejectMarks(data.TieuDe_Vn), data.ID, data.IDTheLoai);
                    }
                    else if (Session["lang"].ToString().Equals("en"))
                    {
                        return String.Format("/en/c-article/{0}-{1}-{2}.html", Helper.RejectMarks(data.TieuDe_En), data.ID, data.IDTheLoai);
                    }
                    else if (Session["lang"].ToString().Equals("ru"))
                    {
                        return String.Format("/ru/c-article/{0}-{1}-{2}.html", Helper.RejectMarks(data.TieuDe_Ru), data.ID, data.IDTheLoai);
                    }
                    return String.Format("/vn/c-article/{0}-{1}-{2}.html", Helper.RejectMarks(data.TieuDe_Vn), data.ID, data.IDTheLoai);
                }
                else if (data.Module.Equals("hoidap"))
                {
                    if (Session["lang"].ToString().Equals("vn"))
                    {
                        return String.Format("/vn/hoi-dap/{0}-{1}.html", Helper.RejectMarks(data.TieuDe_Vn), data.ID);
                    }
                    else if (Session["lang"].ToString().Equals("en"))
                    {
                        return String.Format("/en/hoi-dap/{0}-{1}.html", Helper.RejectMarks(data.TieuDe_En), data.ID);
                    }
                    else if (Session["lang"].ToString().Equals("ru"))
                    {
                        return String.Format("/ru/hoi-dap/{0}-{1}.html", Helper.RejectMarks(data.TieuDe_Ru), data.ID);
                    }
                    return String.Format("/vn/hoi-dap/{0}-{1}.html", Helper.RejectMarks(data.TieuDe_Vn), data.ID);
                }
                else
                    if (Session["lang"].ToString().Equals("vn"))
                    {
                        return String.Format("/vn/c-cuisine/{0}-{1}-{2}.html", Helper.RejectMarks(data.TieuDe_Vn), data.ID, data.IDTheLoai);
                    }
                    else if (Session["lang"].ToString().Equals("en"))
                    {
                        return String.Format("/en/c-cuisine/{0}-{1}-{2}.html", Helper.RejectMarks(data.TieuDe_En), data.ID, data.IDTheLoai);
                    }
                    else if (Session["lang"].ToString().Equals("ru"))
                    {
                        return String.Format("/ru/c-cuisine/{0}-{1}-{2}.html", Helper.RejectMarks(data.TieuDe_Ru), data.ID, data.IDTheLoai);
                    }
                return String.Format("/vn/c-cuisine/{0}-{1}-{2}.html", Helper.RejectMarks(data.TieuDe_Ru), data.ID, data.IDTheLoai);                
            case "hienthinoidung":
                if (data.Module.Equals("baiviet"))
                {
                    if (Session["lang"].ToString().Equals("vn"))
                    {
                        return "<span class='bv'>[.::Thông tin::.]  </span>" + data.TieuDe_Vn;
                    }
                    else if (Session["lang"].ToString().Equals("en"))
                    {
                        return "<span class='bv'>[.::Thông tin::.]  </span>" + data.TieuDe_En;
                    }
                    else if (Session["lang"].ToString().Equals("ru"))
                    {
                        return "<span class='bv'>[.::Thông tin::.]  </span>" + data.TieuDe_Ru;
                    }
                    return "<span class='bv'>[.::Thông tin::.]  </span>" + data.TieuDe_Vn;
                }
                else if (data.Module.Equals("hoidap"))
                {
                    return "<span class='hd'>[.::Hỏi & đáp::.]  </span>" + data.NoiDung_Vn;
                }
                else
                {
                    if (Session["lang"].ToString().Equals("vn"))
                    {
                        return "<span class='ma'>[.::Thực đơn::.]  </span>" + data.NoiDung_Vn;
                    }
                    else if (Session["lang"].ToString().Equals("en"))
                    {
                        return "<span class='ma'>[.::Thực đơn::.]  </span>" + data.NoiDung_En;
                    }
                    else if (Session["lang"].ToString().Equals("ru"))
                    {
                        return "<span class='ma'>[.::Thực đơn::.]  </span>" + data.NoiDung_Ru;
                    }
                    return "<span class='ma'>[.::Thực đơn::.]  </span>" + data.NoiDung_Vn;
                }
            default:
                return "";
        }
    }


    protected void ListPager_PreRender(object sender, EventArgs e)
    {

        //string keyword = Request.Form["keyword"] ?? "";
        string keyword = Request.QueryString["keyword"] ?? "";

        keyword = DecodeUtf8(keyword);
        List<TimKiem> listTimKiem = TimKiem.TimKiemTuBaiVietVaHoiDap(keyword);
        if (listTimKiem != null)
        {
            rptArticleList.DataSource = listTimKiem;
            rptArticleList.DataBind();
            if (listTimKiem.Count != 0)
            {
                lbMessage.Text = "<b class='tb'>Có " + listTimKiem.Count() + " kết quả được tìm thấy</b>";
            }
            else
            {
                lbMessage.Text = "<b class='tb'>Không có kết quả nào phù hợp với nội dung tìm kiếm :: <i style='color:blue;'>" + keyword + "</i> ::</b>";
            }
        }
    }

    protected void rptArticleList_DataBound(object sender, EventArgs e)
    {
        ListPager.Visible = (ListPager.PageSize < ListPager.TotalRowCount);
    }
}