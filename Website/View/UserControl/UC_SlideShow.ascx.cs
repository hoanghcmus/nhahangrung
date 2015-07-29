﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataAccess.Classes;

public partial class UserControl_UC_SlideShow : System.Web.UI.UserControl
{
    public int Website { get; set; }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            PopulateControls();
        }
    }
    private void PopulateControls()
    {

        repslideshow.DataSource = SlideShow.LayTheoHienThiVaWebsite(2, Website);
        repslideshow.DataBind();
    }
}