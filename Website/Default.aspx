<%@ Page Language="C#" AutoEventWireup="true" Culture="auto" meta:resourcekey="PageResource1" UICulture="auto" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <script runat="server">
        protected void Page_Load(object sender, EventArgs e)
        {
            string lang = Session["lang"].ToString() ?? "vn";
            Response.Redirect("/" + lang + "/home.html");
        }
    </script>
</body>
</html>
