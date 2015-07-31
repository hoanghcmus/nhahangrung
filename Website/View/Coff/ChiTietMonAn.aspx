<%@ Page Title="" Language="C#" MasterPageFile="~/View/CofMaster.master" AutoEventWireup="true" CodeFile="ChiTietMonAn.aspx.cs" Inherits="View_ChiTietMonAn" %>

<asp:Content ID="Header" ContentPlaceHolderID="CofHeadCPH" runat="Server">
    <link href="/Styles/Magiczoom/magiczoom.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Main" ContentPlaceHolderID="CofMainCPH" runat="Server">
    <div class="article-category-title c-article-category-title" style="margin-bottom: 0px;">
        <h1 style="text-align: right; text-transform: uppercase;">
            <asp:Literal ID="ltrCtTitle" runat="server"></asp:Literal>
        </h1>
    </div>
    <div class="body-right-content c-body-right-content">
        <div class="product-detail">
            <div class="product-detail-wrapper">

                <div class="figure">
                    <div class="figure-wrapper">

                        <a href="/img/r6-mix-1000.jpg" class="MagicZoom link" id="figureLarge" rel="zoom-width:0px; zoom-height:0px; zoom-distance:40" runat="server">
                            <img src="/img/r6-mix-290.jpg" id="figureThumb" class="" runat="server" /></a>
                    </div>

                    <div class="thumms">
                        <asp:Repeater ID="rptListImg" runat="server">
                            <ItemTemplate>
                                <div class="thumb <%#Container.ItemIndex == 0 ? "thumb-active" : "" %>">
                                    <a href="<%#Eval("HinhAnh") %>" rel="zoom-id:<%=figureLarge.ClientID %>" rev="<%#ToThumb(Eval("HinhAnh").ToString()) %>" class="link tlink">
                                        <img src="<%#ToThumb(Eval("HinhAnh").ToString()) %>" class="img" />
                                    </a>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                </div>

                <div class="product-infos">
                    <div class="line-fix-parent-width border-bot-pr">
                        <div class="product-label"><%=Resources.Resource.cuisine_name %>:</div>
                        <div class="product-info">
                            <asp:Literal ID="ltrTenSanPham" runat="server"></asp:Literal>
                        </div>
                    </div>
                    <div class="line-fix-parent-width border-bot-pr">
                        <div class="product-label"><%=Resources.Resource.price %>:</div>
                        <div class="product-info">
                            <asp:Literal ID="ltrPrice" runat="server"></asp:Literal>
                        </div>
                    </div>
                    <div class="line-fix-parent-width">
                        <div class="product-label"><%=Resources.Resource.description %>:</div>
                        <div class="product-info">
                            <asp:Literal ID="ltrMoTa" runat="server"></asp:Literal>
                        </div>
                    </div>

                </div>
                <div class="detail-info">
                    <div class="detail-title c-detail-title">
                        <h1><%=Resources.Resource.cuisine_detail %></h1>
                    </div>
                    <div class="detail-info-wraper c-detail-info-wraper">
                        <asp:Literal ID="ltrChiTietSanPham" runat="server">
                        </asp:Literal>
                    </div>
                </div>

                <div class="related-product">
                    <div class="detail-title c-detail-title">
                        <h1 style="text-transform: uppercase;"><%=Resources.Resource.related_cuisine %></h1>
                    </div>
                    <div class="c-block-intro-content-wrap">
                        <asp:Repeater ID="rptRelatedProduct" runat="server">
                            <ItemTemplate>
                               
                                <div class="c-special-item">
                                    <div class="c-special-item-wrap">
                                        <img src="<%#Eval("AnhDaiDien") %>" alt="Special item" class="img" />
                                        <a href="<%#ShowArticleCat(Container.DataItem,"ArticleCatDuongDan") %>" class="link">
                                            <div class="c-special-item-title">
                                                <h1><%#ShowArticleCat(Container.DataItem,"ArticleCatTenMon") %></h1>
                                                <p>
                                                    <b>
                                                        <%#Convert.ToDecimal(Eval("Gia")) > 0 ? showMoney(Convert.ToDecimal(Eval("Gia")))+" VNĐ" : Resources.Resource.please_contact %>
                                                    </b>
                                                </p>
                                            </div>
                                        </a>
                                    </div>
                                </div>

                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                </div>
            </div>

        </div>
    </div>
</asp:Content>
<asp:Content ID="Footer" ContentPlaceHolderID="CofFootCPH" runat="Server">
    <script src="/Styles/Magiczoom/magiczoomplus.js"></script>
    <%-- Load page content when click item on the right --%>
    <script type="text/javascript">
        $(document).ready(function () {
            $(".tlink").click(function () {
                $(".thumb-active").removeClass("thumb-active");
                $(this).parent().addClass("thumb-active");
            });
        });
    </script>
    <%--Scroll down ...px  --%>
    <script type="text/javascript">
        $(document).ready(function () {
            $(window).scrollTop(400);
        });
    </script>
</asp:Content>

