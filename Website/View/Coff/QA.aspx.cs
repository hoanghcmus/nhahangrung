using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataAccess.Classes;
using DataAccess.Connect;
using DataAccess.StringUtil;
using MultipleLanguage;
using DataAccess.Help;

public partial class View_QA : BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            captchaImage.ImageUrl = new CaptchaProvider().CreateCaptcha();
        }
    }
    protected void refesh()
    {
        txtDiaChi.Text = "";
        txtHoTen.Text = "";
        txtEmail.Text = "";
        txtTieuDe.Text = "";
        txtNoiDung.Text = "";
        txtInputString.Text = "";
    }
    protected void btnbtnGui_Click(object sender, EventArgs e)
    {
        // Neu tat ca du lieu deu duoc nhap hop le 
        if (Page.IsValid)
        {
            CaptchaProvider captchaPro = new CaptchaProvider();
            if (captchaPro.IsValidCode(txtInputString.Text))
            {
                lbcapcha.Visible = false;
                bool rs = false;


                HoiDap data = new HoiDap();
                data.HoTen = txtHoTen.Text;
                data.Email = txtEmail.Text;
                data.TieuDe = txtTieuDe.Text;
                data.NoiDungHoi = txtNoiDung.Text;
                data.NoiDungDap = "";
                data.DiaChi = txtDiaChi.Text;
                data.NgayGui = DateTime.Now;
                data.TrangThai = 0;

                rs = HoiDap.Them(data);
                if (rs)
                {
                    succesfull.Visible = true;
                    refesh();
                    succesfull.Text = "Nội dung liên hệ của bạn đã được gủi đến Forest coffee. Chúng tôi sẽ trả lời liên hệ của bạn trong thời gian sớm nhất!";
                }
                else
                {
                    succesfull.Visible = true;
                    succesfull.Text = "Gửi ý kiến thất bại!";
                }
            }
            else
            {
                lbcapcha.Visible = true;
                succesfull.Visible = false;
                lbcapcha.Text = "Sai mã xác nhận!";
            }
        }
    }
    protected void btnRedefine_Click(object sender, EventArgs e)
    {
        //Response.Redirect(this.Request.Url.AbsoluteUri);
        captchaImage.ImageUrl = new CaptchaProvider().CreateCaptcha();
    }

    public string Showinfo(object input, string colunmName)
    {
        HoiDap data = input as HoiDap;
        switch (colunmName)
        {
            case "ngaygui":
                return data.NgayGui.ToString().Split(' ').First().ToString();
            case "hienthilink":
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

            case "laytomtat":
                if (data.NoiDungDap.Length < 300) { return Regex.Replace(data.NoiDungDap, "<img.*?>", ""); }
                else
                {
                    return StringUltility.GetStringByLenght(Regex.Replace(data.NoiDungDap, "<img.*?>", ""), 300) + "...";
                }
            default:
                return "";
        }
    }

    protected void ListPager_PreRender(object sender, EventArgs e)
    {
        List<HoiDap> listHoiDap = HoiDap.GetByStatus(1);

        if (listHoiDap != null && listHoiDap.Count != 0)
        {
            rptArticleList.DataSource = listHoiDap;
            rptArticleList.DataBind();
        }
    }

    protected void rptArticleList_DataBound(object sender, EventArgs e)
    {
        ListPager.Visible = (ListPager.PageSize < ListPager.TotalRowCount);
    }
}