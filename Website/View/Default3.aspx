<%@ Page Title="" Language="C#" MasterPageFile="~/View/CofMaster.master" AutoEventWireup="true" CodeFile="Default3.aspx.cs" Inherits="View_Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CofHeadCPH" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CofMainCPH" runat="Server">
    <div class="c-block-intro">
        <div class="c-block-intro-wrap">
            <div class="c-block-intro-left">

                <asp:HyperLink ID="hlMore1" runat="server" CssClass="link">

                    <asp:Image ID="desImage" runat="server" CssClass="img" />
                    <div class="c-block-intro-left-title">
                        <h1><%=Resources.Resource.intro %></h1>
                    </div>
                </asp:HyperLink>

            </div>
            <div class="c-block-intro-right">
                <h1 class="c-block-intro-title">
                    <asp:HyperLink ID="hlMore" runat="server" CssClass="link">
                        <asp:Literal ID="ltrTieuDeBaiViet" runat="server"></asp:Literal>
                    </asp:HyperLink>
                </h1>
                <p class="c-block-intro-summary">
                    <asp:Literal ID="ltBaiVietGioiThieu" runat="server"></asp:Literal>
                </p>
                <div class="c-block-intro-read-more">

                    <asp:HyperLink ID="hlReadMore" runat="server" CssClass="link">
                        <%=Resources.Resource.more %>
                    </asp:HyperLink>
                </div>
            </div>
        </div>
    </div>

    <div class="c-block-intro">
        <div class="c-block-intro-head">
            <h1>THỰC ĐƠN</h1>
        </div>
        <div class="c-block-special">
            <h1>Nổi bật</h1>
        </div>
        <div class="c-block-intro-content">
            <div class="c-block-intro-content-wrap">
                <div class="c-special-item">
                    <div class="c-special-item-wrap">
                        <img src="/Design/s1.jpg" alt="Special item" class="img" />
                        <a href="javascript:void" class="link">
                            <div class="c-special-item-title">
                                <h1>Cà rốt ép</h1>
                                <p><b>Giá 36.000 VNĐ</b></p>
                            </div>
                        </a>
                    </div>
                </div>

                <div class="c-special-item">
                    <div class="c-special-item-wrap">
                        <img src="/Design/s1.jpg" alt="Special item" class="img" />
                        <a href="javascript:void" class="link">
                            <div class="c-special-item-title">
                                <h1>Cà rốt ép</h1>
                                <p><b>Giá 36.000 VNĐ</b></p>
                            </div>
                        </a>
                    </div>
                </div>

                <div class="c-special-item">
                    <div class="c-special-item-wrap">
                        <img src="/Design/s1.jpg" alt="Special item" class="img" />
                        <a href="javascript:void" class="link">
                            <div class="c-special-item-title">
                                <h1>Cà rốt ép</h1>
                                <p><b>Giá 36.000 VNĐ</b></p>
                            </div>
                        </a>
                    </div>
                </div>

                <div class="c-special-item">
                    <div class="c-special-item-wrap">
                        <img src="/Design/s2.jpg" alt="Special item" class="img" />
                        <a href="javascript:void" class="link">
                            <div class="c-special-item-title">
                                <h1>Trà chanh</h1>
                                <p><b>Giá 25.000 VNĐ</b></p>
                            </div>
                        </a>
                    </div>
                </div>

                <div class="c-special-item">
                    <div class="c-special-item-wrap">
                        <img src="/Design/s2.jpg" alt="Special item" class="img" />
                        <a href="javascript:void" class="link">
                            <div class="c-special-item-title">
                                <h1>Trà chanh</h1>
                                <p><b>Giá 25.000 VNĐ</b></p>
                            </div>
                        </a>
                    </div>
                </div>

                <div class="c-special-item">
                    <div class="c-special-item-wrap">
                        <img src="/Design/s2.jpg" alt="Special item" class="img" />
                        <a href="javascript:void" class="link">
                            <div class="c-special-item-title">
                                <h1>Trà chanh</h1>
                                <p><b>Giá 25.000 VNĐ</b></p>
                            </div>
                        </a>
                    </div>
                </div>

                <div class="c-special-item">
                    <div class="c-special-item-wrap">
                        <img src="/Design/s3.jpg" alt="Special item" class="img" />
                        <a href="javascript:void" class="link">
                            <div class="c-special-item-title">
                                <h1>Dâu tây</h1>
                                <p><b>Giá 40.000 VNĐ</b></p>
                            </div>
                        </a>
                    </div>
                </div>

                <div class="c-special-item">
                    <div class="c-special-item-wrap">
                        <img src="/Design/s3.jpg" alt="Special item" class="img" />
                        <a href="javascript:void" class="link">
                            <div class="c-special-item-title">
                                <h1>Dâu tây</h1>
                                <p><b>Giá 40.000 VNĐ</b></p>
                            </div>
                        </a>
                    </div>
                </div>

                <div class="c-special-item">
                    <div class="c-special-item-wrap">
                        <img src="/Design/s3.jpg" alt="Special item" class="img" />
                        <a href="javascript:void" class="link">
                            <div class="c-special-item-title">
                                <h1>Dâu tây</h1>
                                <p><b>Giá 40.000 VNĐ</b></p>
                            </div>
                        </a>
                    </div>
                </div>

            </div>
        </div>
    </div>

    <div class="c-block-intro">
        <div class="c-block-intro-head">
            <h1>MÓN ĂN NHẸ</h1>
        </div>
        <div class="c-block-intro-content">
            <div class="c-cuisin-wrap">
                <div class="c-cuisine-block">
                    <a href="javascript:void();" class="link">
                        <div class="c-cuisine-block-figure">
                            <img src="/Design/n1.jpg" alt="Cuisine item" class="img" />
                        </div>
                        <div class="c-cuisine-block-title">
                            <h1>Khoai tây chiên
                            </h1>
                        </div>
                        <div class="c-cuisine-block-des">
                            <p>
                                Được làm từ những trái khoai tây to, ngon và tươi, món ăn nhẹ này chắc chắc sẽ làm cho bạn ...
                            </p>
                        </div>
                        <div class="c-cuisine-block-price">
                            <p>
                                <b>Giá: 54.000 VNĐ </b>
                            </p>
                        </div>
                    </a>
                </div>

                <div class="c-cuisine-block">
                    <a href="javascript:void();" class="link">
                        <div class="c-cuisine-block-figure">
                            <img src="/Design/n2.jpg" alt="Cuisine item" class="img" />
                        </div>
                        <div class="c-cuisine-block-title">
                            <h1>Hamburger
                            </h1>
                        </div>
                        <div class="c-cuisine-block-des">
                            <p>
                                Bánh mì tròn, thịt bò, xà lách, cà chua, hành tây, sốt cà ketchup, hương vị đậm đà ...
                            </p>
                        </div>
                        <div class="c-cuisine-block-price">
                            <p>
                                <b>Giá: 45.000 VNĐ </b>
                            </p>
                        </div>
                    </a>
                </div>

                <div class="c-cuisine-block">
                    <a href="javascript:void();" class="link">
                        <div class="c-cuisine-block-figure">
                            <img src="/Design/n3.jpg" alt="Cuisine item" class="img" />
                        </div>
                        <div class="c-cuisine-block-title">
                            <h1>Mỳ ý
                            </h1>
                        </div>
                        <div class="c-cuisine-block-des">
                            <p>
                                Là một món ăn khó bỏ qua đối với những tín đồ của ẩm thực nước Ý, món mì Ý là sự kết hợp ...
                            </p>
                        </div>
                        <div class="c-cuisine-block-price">
                            <p>
                                <b>Giá: 86.000 VNĐ </b>
                            </p>
                        </div>
                    </a>
                </div>

            </div>
        </div>
    </div>


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CofFootCPH" runat="Server">
</asp:Content>

