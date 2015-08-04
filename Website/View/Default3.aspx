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
            <h1><%=Resources.Resource.menu %></h1>
        </div>
        <div class="c-block-special">
            <h1>
                <asp:Literal ID="ltrCtTitle" runat="server"></asp:Literal></h1>
        </div>
        <div class="c-block-intro-content">
            <div class="c-block-intro-content-wrap">

                <asp:Repeater runat="server" ID="rptMonNoiBat">
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

    <div class="c-block-intro">
        <div class="c-block-intro-head">
            <h1>
                <asp:Literal ID="ltrMonAnNhe" runat="server"></asp:Literal>
            </h1>
        </div>
        <div class="c-block-intro-content">
            <div class="c-cuisin-wrap">

                <asp:Repeater runat="server" ID="rptMonAnNhe">
                    <ItemTemplate>

                        <div class="c-cuisine-block">
                            <a href="<%#ShowArticleCat(Container.DataItem,"ArticleCatDuongDan") %>" class="link">
                                <div class="c-cuisine-block-figure">
                                    <img src="<%#Eval("AnhDaiDien") %>" alt="Cuisine item" class="img" />
                                </div>
                                <div class="c-cuisine-block-title">
                                    <h1><%#ShowArticleCat(Container.DataItem,"ArticleCatTenMon") %></h1>
                                </div>
                                <div class="c-cuisine-block-des">
                                    <p>
                                        <%#ShowArticleCat(Container.DataItem,"laytomtat") %>
                                    </p>
                                </div>
                                <div class="c-cuisine-block-price">
                                    <p>
                                        <b>
                                            <%#Convert.ToDecimal(Eval("Gia")) > 0 ? showMoney(Convert.ToDecimal(Eval("Gia")))+" VNĐ" : Resources.Resource.please_contact %>
                                        </b>
                                    </p>
                                </div>
                            </a>
                        </div>


                    </ItemTemplate>
                </asp:Repeater>

            </div>
        </div>
    </div>


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CofFootCPH" runat="Server">
</asp:Content>

