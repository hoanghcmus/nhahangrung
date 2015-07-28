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
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="SpaFootCPH" runat="Server">
</asp:Content>

