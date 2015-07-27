<%@ Page Title="" Language="C#" MasterPageFile="~/View/ResMaster.master" AutoEventWireup="true" CodeFile="Default1.aspx.cs" Inherits="View_Default1" %>

<asp:Content ID="Head" ContentPlaceHolderID="ResHeadCPH" runat="Server">
</asp:Content>
<asp:Content ID="Main" ContentPlaceHolderID="ResMainCPH" runat="Server">
    <div class="line-fix-parent-width">
        <%-- Intro block --%>
        <div class="r-block-intro">
            <div class="r-block-intro-left">

                <asp:HyperLink ID="hlMore1" runat="server" CssClass="link">

                    <asp:Image ID="desImage" runat="server" CssClass="img" />
                    <div class="r-block-intro-left-title">
                        <h1><%=Resources.Resource.intro %></h1>
                    </div>
                </asp:HyperLink>

            </div>
            <div class="r-block-intro-right">
                <h1 class="r-block-intro-title">
                    <asp:HyperLink ID="hlMore" runat="server" CssClass="link">
                        <asp:Literal ID="ltrTieuDeBaiViet" runat="server"></asp:Literal>
                    </asp:HyperLink>
                </h1>
                <p class="r-block-intro-summary">
                    <asp:Literal ID="ltBaiVietGioiThieu" runat="server"></asp:Literal>
                </p>
                <div class="r-block-intro-read-more">

                    <asp:HyperLink ID="hlReadMore" runat="server" CssClass="link">
                        <%=Resources.Resource.more %>
                    </asp:HyperLink>
                </div>
            </div>
        </div>

        <div class="r-promotion">
            <asp:HyperLink ID="hlPromotion" runat="server" CssClass="link">
                <asp:Image ID="PromtionImage" runat="server" CssClass="img" alt="Promotion" />
            </asp:HyperLink>
        </div>
    </div>

    <div class="r-sp"></div>

    <%-- Gallery block --%>

    <div class="r-main-gallery-block">
        <div class="r-main-gallery-pre">
            <a href="javascript:void();" class="nextpre pre" id="gallery-forward">< </a>
        </div>
        <div class="r-mian-gallery-content scroll-img" id="r-gallery">

            <ul>
                <asp:Repeater ID="dlListimages" runat="server">
                    <ItemTemplate>
                        <li>
                            <a href="<%#Eval("HinhAnh") %>" class="imgshow link" rel="main-gallery">
                                <img src="<%#Eval("HinhAnh") %>" alt="Gallery item" class="img" />
                            </a>
                        </li>
                    </ItemTemplate>
                </asp:Repeater>

            </ul>


        </div>

        <div class="r-main-gallery-next">
            <a href="javascript:void();" class="nextpre next" id="gallery-backward">> </a>
        </div>

    </div>
    <%-- Cuisine content block --%>
    <div class="cuisine">

        <asp:Repeater runat="server" ID="rptProduct">
            <ItemTemplate>

                <div class="cuisine-item">
                    <a href="<%#ShowMainMenu(Container.DataItem,"MenuDuongDan") %>" class="link">
                        <img src="<%#Eval("HinhAnh") %>" alt="cuisine" class="img" />
                        <div class="cuisine-content">
                            <div class="cuisine-icon">
                                <img src="/Design/s-white-logo.png" alt="Cuisine icon" class="img" />
                            </div>
                            <div class="cuisine-title">
                                <h1><%#ShowMainMenu(Container.DataItem,"MenuTieuDe") %></h1>
                            </div>
                        </div>
                    </a>
                </div>

            </ItemTemplate>
        </asp:Repeater>


    </div>
</asp:Content>
<asp:Content ID="Foot" ContentPlaceHolderID="ResFootCPH" runat="Server">
</asp:Content>

