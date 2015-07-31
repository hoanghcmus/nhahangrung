<%@ Page Title="" Language="C#" MasterPageFile="~/View/CofMaster.master" AutoEventWireup="true"
    CodeFile="Videos.aspx.cs" Inherits="View_Videos" %>

<%@ Register Src="~/View/UserControl/UC_Paging.ascx" TagName="UC_Paging" TagPrefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CofHeadCPH" runat="Server">
    <link href="/Styles/CSS/Desktop.Module.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CofMainCPH" runat="Server">
    <div class="body-right-content">
        <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
            <ContentTemplate>


                <asp:ListView ID="dlVideos" runat="server" ItemPlaceholderID="ItemPlaceholderIDArticleList" OnDataBound="rptArticleList_DataBound">
                    <LayoutTemplate>

                        <asp:PlaceHolder runat="server" ID="ItemPlaceholderIDArticleList"></asp:PlaceHolder>
                    </LayoutTemplate>

                    <ItemTemplate>
                        <div class="item_videos">
                            <div class="url_videos">
                                <a class="fancybox-media" href="<%#Eval("ImgOrClip")%>">
                                    <img src='<%#Eval("HinhAnh") %>' alt="Hình ảnh" />
                                    <img class="play" alt="ICon here" src="/Design/play.png" /></a>
                            </div>
                            <div class="name_videos">
                                <h4><a class="fancybox-media" href="<%#Eval("ImgOrClip")%>">
                                    <%#ShowVideo(Container.DataItem, "VideoTieuDe") %></a>
                                </h4>

                                <p class="meta">
                                    <strong><%=Resources.Resource.description %>:</strong>
                                    <%#ShowVideo(Container.DataItem, "VideoMoTa") %>
                                </p>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:ListView>

                <asp:DataPager ID="ListPager" PagedControlID="dlVideos" runat="server" PageSize="20" OnPreRender="ListPager_PreRender" class="control-pager">
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
<asp:Content ID="Content3" ContentPlaceHolderID="CofFootCPH" runat="Server">
    <%--Scroll down ...px  --%>
    <script type="text/javascript">
        $(document).ready(function () {
            $(window).scrollTop(400);
        });
    </script>
</asp:Content>
