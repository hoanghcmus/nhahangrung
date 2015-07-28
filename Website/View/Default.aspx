<%@ Page Title="" Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Vn_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" style="overflow: hidden;">
<head id="Head" runat="server">
    <title>Nhà hàng Rừng tại Mũi Né</title>
    <link rel="Favicon" href="/Design/favico.ico" type="image/x-icon" />
    <link href="/Styles/CSS/Desktop.Global.css" rel="stylesheet" />
    <script type="text/javascript">
        function a() {
            //alert("inside");
            var h = $(window).height();
            alert("Chieu cao");
        }
        a();
    </script>
</head>
<body style="overflow: hidden">
    <form id="DefaultForm" runat="server">

        <div class="intro-container">
            <div class="intro-head">
                <div class="intro-head-wrap">
                    <div class="intro-head-info">

                        <div class="intro-webname">
                            <h1>Forestmuine</h1>
                        </div>
                        <div class="intro-hoavan">
                            <img src="/Design/hoavan.png" alt="Hoa van" class="img" />
                        </div>
                        <div class="intro-slogan">
                            <h3>Restaurant - Spa - Coffee</h3>
                        </div>
                    </div>
                </div>
            </div>
            <div class="intro-body">
                <div class="intro-body-wrap">
                    <div class="intro-main-block">
                        <div class="intro-block" style="">

                            <img src="/Design/i1.jpg" alt="Restaurant" class="img" />
                            <a href="/<%=Session["lang"].ToString() %>/home-1.html">
                                <div class="intro-block-title">
                                    <h3>Restaurant</h3>
                                    <div class="intro-block-hoavan">
                                        <img src="/Design/thoavan.png" alt="hoa van" class="img" />
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="intro-block">

                            <img src="/Design/i2.jpg" alt="Spa" class="img" />
                            <a href="/<%=Session["lang"].ToString() %>/home-2.html">
                                <div class="intro-block-title">
                                    <h3>Spa</h3>
                                    <div class="intro-block-hoavan">
                                        <img src="/Design/thoavan.png" alt="hoa van" class="img" />
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="intro-block">

                            <img src="/Design/i3.jpg" alt="Coffee" class="img" />
                            <a href="/<%=Session["lang"].ToString() %>/home-3.html">
                                <div class="intro-block-title">
                                    <h3>Coffee</h3>
                                    <div class="intro-block-hoavan">
                                        <img src="/Design/thoavan.png" alt="hoa van" class="img" />
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="intro-left-bottom-hv">
                            <img src="/Design/lhoavan.png" alt="hoa van" class="img" />
                        </div>
                        <div class="intro-right-top-hv">
                            <img src="/Design/rhoavan.png" alt="hoa van" class="img" />
                        </div>

                    </div>
                </div>
            </div>
            <div class="intro-foot">
                <div class="intro-foot-wrap">
                    <div class="intro-foot-left">
                        <p>
                            <span style="font-size: 17px;">Forestmuine</span> - 179 Nguyễn Đình Chiểu, Hàm Tiến, Phan Thiết, Bình Thuận                           
                        </p>
                        <p>
                            Tel: (062) 39 39 399 - (062) 6 25 20 77  -  Email: info.forestmuine@gmail.com
                        </p>
                    </div>
                    <div class="intro-foot-right">
                        <p>
                            © Copy right 2015 Forestmuine All right reserved.
                        </p>
                        <p>
                            Thiết kế bởi <a href="http://www.tinhthanh.com" target="_blank">Tính Thành</a>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
