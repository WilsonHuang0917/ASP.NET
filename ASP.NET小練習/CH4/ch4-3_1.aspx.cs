﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ch4_3_1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Font.Bold = true;//粗體
        Label1.Font.Italic = true;//斜體
        Label1.Text = "Lable元件測試";
    }
}