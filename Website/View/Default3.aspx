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
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CofFootCPH" runat="Server">
</asp:Content>

