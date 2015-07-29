<%@ Page Title="" Language="C#" MasterPageFile="~/View/SpaMaster.master" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="View_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="SpaHeadCPH" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="SpaMainCPH" runat="Server">
    <div class="r-block-intro s-block-intro">

        <h1 class="r-block-intro-title s-block-intro-left-title">
            <asp:HyperLink ID="hlMore" runat="server" CssClass="link">
                <asp:Literal ID="ltrTieuDeBaiViet" runat="server"></asp:Literal>
            </asp:HyperLink>
        </h1>
        <p class="r-block-intro-summary s-block-intro-summary">
            <asp:Literal ID="ltBaiVietGioiThieu" runat="server"></asp:Literal>
        </p>
        <div class="r-block-intro-read-more s-block-intro-read-more">

            <asp:HyperLink ID="hlReadMore" runat="server" CssClass="link">
                        <%=Resources.Resource.more %>
            </asp:HyperLink>
        </div>

    </div>

    <div class="spa-main-block">
        <div class="spa-main-block-wrap">

            <asp:Repeater runat="server" ID="rptProduct">
                <ItemTemplate>

                    <div class="spa-block">
                        <img src="<%#Eval("HinhAnh") %>" alt="Restaurant" class="img" />
                        <a href="<%#ShowMainMenu(Container.DataItem,"MenuDuongDan") %>" class="link">
                            <div class="spa-block-title">
                                <div class="spa-block-hoavan">
                                    <img src="/Design/thoavan.png" alt="hoa van" class="img" />
                                </div>
                                <h3><%#ShowMainMenu(Container.DataItem,"MenuTieuDe") %></h3>
                            </div>
                        </a>
                    </div>


                </ItemTemplate>
            </asp:Repeater>

        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="SpaFootCPH" runat="Server">
</asp:Content>

