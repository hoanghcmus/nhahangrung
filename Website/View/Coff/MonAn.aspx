﻿<%@ Page Title="" Language="C#" MasterPageFile="~/View/CofMaster.master" AutoEventWireup="true" CodeFile="MonAn.aspx.cs" Inherits="View_MonAn" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CofHeadCPH" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CofMainCPH" runat="Server">
    <div class="article-category-title c-article-category-title">
        <h1>
            <asp:Literal ID="ltrCtTitle" runat="server"></asp:Literal>
        </h1>
    </div>
    <div class="body-right-content">
        <div class="c-block-intro-content-wrap">
            <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
                <ContentTemplate>

                    <asp:ListView ID="rptArticleList" runat="server" ItemPlaceholderID="ItemPlaceholderIDArticleList" OnDataBound="rptArticleList_DataBound">
                        <LayoutTemplate>

                            <asp:PlaceHolder runat="server" ID="ItemPlaceholderIDArticleList"></asp:PlaceHolder>
                        </LayoutTemplate>
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
                    </asp:ListView>
                    <div class="pager">
                        <asp:DataPager ID="ListPager" PagedControlID="rptArticleList" runat="server" PageSize="9" OnPreRender="ListPager_PreRender" class="control-pager">
                            <Fields>

                                <asp:NumericPagerField ButtonType="Link" />

                                <asp:TemplatePagerField></asp:TemplatePagerField>
                            </Fields>
                        </asp:DataPager>
                </ContentTemplate>

                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="ListPager" />
                </Triggers>
            </asp:UpdatePanel>

        </div>
    </div>

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="CofFootCPH" runat="Server">
    <script src="/Styles/FancyBox-2.1.5/lib/jquery.mousewheel-3.0.6.pack.js" type="text/javascript"></script>
    <script src="/Styles/FancyBox-2.1.5/source/jquery.fancybox.pack.js" type="text/javascript"></script>
    <script src="/Styles/FancyBox-2.1.5/source/jquery.fancybox.js" type="text/javascript"></script>
    <script src="/Styles/FancyBox-2.1.5/source/helpers/jquery.fancybox-buttons.js" type="text/javascript"></script>
    <script src="/Styles/FancyBox-2.1.5/source/helpers/jquery.fancybox-media.js" type="text/javascript"></script>
    <script src="/Styles/FancyBox-2.1.5/source/helpers/jquery.fancybox-thumbs.js" type="text/javascript"></script>

    <script type="text/javascript">
        $(document).ready(function () {
            $(".fancy-box").fancybox({
                maxWidth: 1349,
                maxHeight: 630,
                fitToView: false,
                width: '819px',
                height: '630px',
                autoSize: false,
                closeClick: false,
                openEffect: 'none',
                closeEffect: 'none'
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
