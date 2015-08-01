<%@ Page Title="Hỏi đáp" Language="C#" MasterPageFile="~/View/CofMaster.master" AutoEventWireup="true" CodeFile="QA.aspx.cs" Inherits="View_QA" %>

<%@ Register Src="../UserControl/UC_Paging.ascx" TagName="UC_Paging" TagPrefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CofHeadCPH" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CofMainCPH" runat="Server">

    <div class="article-category-title c-article-category-title">
        <h1>
            <asp:Literal ID="ltrCtTitle" runat="server" Text="<%$Resources:Resource,contact %>"></asp:Literal>
        </h1>
    </div>
    <div class="body-right-content c-body-right-content">
        <p>
            <%=Resources.Resource.contact_message %>
        </p>

        <div class="contact">
            <%-- View maps --%>

            <asp:UpdatePanel ID="UpdatePanelContact" runat="server">
                <ContentTemplate>
                    <table>
                        <tr>
                            <td colspan="2">
                                <asp:Label ID="succesfull" runat="server" Text="Label" Visible="false" CssClass="succesfull" />
                                <asp:Label ID="lbtitle" runat="server" Text="Label" Visible="false" CssClass="titletb" />
                            </td>
                        </tr>
                        <tr>
                            <td><%=Resources.Resource.fullname %> :
                            </td>
                            <td>
                                <asp:TextBox ID="txtHoTen" runat="server" CssClass="txt c-txt"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtHoTen"
                                    ValidationGroup="contact" ErrorMessage="->Vui lòng nhập họ tên!" CssClass="titletb">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td><%=Resources.Resource.email %> :
                            </td>
                            <td>
                                <asp:TextBox ID="txtEmail" runat="server" CssClass="txt c-txt" />
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail"
                                    ValidationGroup="contact" ErrorMessage="Email Không đúng!" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                                    CssClass="titletb">*</asp:RegularExpressionValidator>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtEmail"
                                    ValidationGroup="contact" ErrorMessage="->Vui lòng nhập email!" CssClass="titletb">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td><%=Resources.Resource.address %> :
                            </td>
                            <td>
                                <asp:TextBox ID="txtDiaChi" runat="server" CssClass="txt c-txt" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtDiaChi"
                                    ValidationGroup="contact" ErrorMessage="->Vui lòng nhập địa chỉ!" CssClass="titletb">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td><%=Resources.Resource.title %> :
                            </td>
                            <td>
                                <asp:TextBox ID="txtTieuDe" runat="server" CssClass="txt c-txt" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtTieuDe"
                                    ValidationGroup="contact" ErrorMessage="->Vui lòng nhập tiêu đề!" CssClass="titletb">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td valign="top"><%=Resources.Resource.content %>:
                            </td>
                            <td valign="top">
                                <asp:TextBox ID="txtNoiDung" runat="server" TextMode="MultiLine" CssClass="txtnd c-txtnd"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtNoiDung"
                                    ValidationGroup="contact" ErrorMessage="->Vui lòng nhập nội dung!" CssClass="titletb">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td></td>
                            <td>
                                <asp:Label ID="lbcapcha" runat="server" Text="Label" Visible="false" CssClass="titletb" />
                            </td>
                        </tr>
                        <tr>
                            <td valign="bottom"><%=Resources.Resource.confirm_code %>:
                            </td>
                            <td style="position: relative;">
                                <asp:TextBox ID="txtInputString" runat="server" CssClass="txtmin c-txtmin"></asp:TextBox>
                                <asp:Image ID="captchaImage" runat="server" CssClass="capcha" />
                                <asp:Button ID="btnRedefine" runat="server" Text="" CssClass="btnrefresh" OnClick="btnRedefine_Click" />

                            </td>
                        </tr>
                        <tr>
                            <td class="td"></td>
                            <td colspan="2">
                                <asp:Button ID="btnGui" runat="server" Text="<%$Resources:Resource,submit %>" CssClass="btn" OnClick="btnbtnGui_Click" ValidationGroup="contact" />
                            </td>
                        </tr>
                    </table>
                </ContentTemplate>
            </asp:UpdatePanel>

        </div>
    </div>



    <div class="qa">

        <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
            <ContentTemplate>

                <asp:ListView ID="rptArticleList" runat="server" ItemPlaceholderID="ItemPlaceholderIDArticleList" OnDataBound="rptArticleList_DataBound">
                    <LayoutTemplate>

                        <asp:PlaceHolder runat="server" ID="ItemPlaceholderIDArticleList"></asp:PlaceHolder>
                    </LayoutTemplate>
                    <ItemTemplate>
                        <div class="question bot5">
                            <img src="/Design/answer.png" alt="Question Icon" />
                            <a href="<%#Showinfo(Container.DataItem,"hienthilink") %>"><%#Eval("NoiDungHoi") %> (<i style="font-size: 12px;"> <%#Eval("HoTen") %> gửi ngày <%#Showinfo(Container.DataItem,"ngaygui") %></i> )</a>

                        </div>

                        <div class="answer bot10">
                            <%#Showinfo(Container.DataItem,"laytomtat") %>
                            <a href="<%#Showinfo(Container.DataItem,"hienthilink") %>">Chi tiết</a>
                        </div>

                    </ItemTemplate>
                </asp:ListView>

                <asp:DataPager ID="ListPager" PagedControlID="rptArticleList" runat="server" PageSize="10" OnPreRender="ListPager_PreRender" class="control-pager">
                    <Fields>
                        <asp:NextPreviousPagerField ButtonType="Link" ShowFirstPageButton="false" ShowPreviousPageButton="true" ShowNextPageButton="false" PreviousPageText="Trước" />
                        <asp:NumericPagerField ButtonType="Link" />
                        <asp:NextPreviousPagerField ButtonType="Link" ShowNextPageButton="true" ShowLastPageButton="false" ShowPreviousPageButton="false" NextPageText="Sau" />
                        <asp:TemplatePagerField></asp:TemplatePagerField>
                    </Fields>
                </asp:DataPager>

            </ContentTemplate>

            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="ListPager" />
            </Triggers>
        </asp:UpdatePanel>


    </div>


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CofFootCPH" runat="Server">
</asp:Content>

