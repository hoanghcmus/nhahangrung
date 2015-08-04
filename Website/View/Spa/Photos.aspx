<%@ Page Title="" Language="C#" MasterPageFile="~/View/SpaMaster.master" AutoEventWireup="true"
    CodeFile="Photos.aspx.cs" Inherits="Vn_Photos" %>

<%@ Register Src="~/View/UserControl/UC_Paging.ascx" TagName="UC_Paging" TagPrefix="uc1" %>

<asp:Content ID="Content2" ContentPlaceHolderID="SpaMainCPH" runat="Server">

    <div class="article-category-title">
        <h1>
            <asp:Literal ID="ltrCtTitle" runat="server" Text="<%$Resources:Resource,picture %>"></asp:Literal>
        </h1>
    </div>

    <div class="body-right-content">



        <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
            <ContentTemplate>


                <asp:ListView ID="dlListImg" runat="server" ItemPlaceholderID="ItemPlaceholderIDArticleList" OnDataBound="rptArticleList_DataBound">
                    <LayoutTemplate>

                        <asp:PlaceHolder runat="server" ID="ItemPlaceholderIDArticleList"></asp:PlaceHolder>
                    </LayoutTemplate>

                    <ItemTemplate>

                        <div class="menu-item">
                            <a href="<%#ShowImg(Container.DataItem,"ImageDuongDan") %>" class="link">
                                <div class="menu-figure">
                                    <%#ShowImg(Container.DataItem,"ImgOrClip") %>
                                </div>

                                <div class="menu-title">
                                    <h1><%#ShowImg(Container.DataItem,"ImageTieuDe") %></h1>
                                </div>
                            </a>
                        </div>

                    </ItemTemplate>
                </asp:ListView>
                <asp:DataPager ID="ListPager" PagedControlID="dlListImg" runat="server" PageSize="20" OnPreRender="ListPager_PreRender" class="control-pager">
                    <Fields>
                        <asp:NextPreviousPagerField ButtonType="Link" ShowFirstPageButton="false" ShowPreviousPageButton="true"
                            ShowNextPageButton="false" />
                        <asp:NumericPagerField ButtonType="Link" />
                        <asp:NextPreviousPagerField ButtonType="Link" ShowNextPageButton="true" ShowLastPageButton="false" ShowPreviousPageButton="false" />
                        <asp:TemplatePagerField></asp:TemplatePagerField>
                    </Fields>
                </asp:DataPager>
            </ContentTemplate>
        </asp:UpdatePanel>


    </div>



</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="SpaFootCPH" runat="Server">

    <%--Scroll down ...px  --%>
    <script type="text/javascript">
        $(document).ready(function () {
            $(window).scrollTop(400);
        });
    </script>
</asp:Content>

