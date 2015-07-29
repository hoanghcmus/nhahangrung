<%@ Page Title="" Language="C#" MasterPageFile="~/View/SpaMaster.master" AutoEventWireup="true"
    CodeFile="DetailArticle.aspx.cs" Inherits="Vn_DetailArticle" %>

<asp:Content ID="Content2" ContentPlaceHolderID="SpaMainCPH" runat="Server">

    <div class="article-category-title">
        <h1>
            <asp:Literal ID="ltrCtTitle" runat="server"></asp:Literal>
        </h1>
    </div>
    <div class="article-content">

        <div class="content-detail">
            <h4>
                <asp:Label ID="lblTitle" runat="server" />
            </h4>
            <p class="meta">
                <%--<asp:Label ID="lblCreatedDate" runat="server" />--%>
                <asp:Label ID="lbLuotXem" runat="server" />
            </p>
            <div class="text">
                <asp:Literal ID="lblFullText" runat="server" />
            </div>

        </div>


        <div class="articlerang">
            <h4 id="RealtiveArticle" runat="server"><%=Resources.Resource.related_article %></h4>
            <asp:Repeater ID="dlarticlerang" runat="server">
                <ItemTemplate>
                    <div class="item">
                        <div class="Description">
                            <img src="/Design/s-white-logo.png" alt="article" />
                            <a href='<%#ShowRelatedArticle(Container.DataItem, "RelatedArticleDuongDan") %>'>
                                <%#ShowRelatedArticle(Container.DataItem, "RelatedArticleTieuDe") %>
                            </a>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>


    </div>

</asp:Content>

<asp:Content ID="Foot" runat="server" ContentPlaceHolderID="SpaFootCPH">
    <%--Scroll down ...px  --%>
    <script type="text/javascript">
        $(document).ready(function () {
            $(window).scrollTop(400);
        });
    </script>
</asp:Content>
