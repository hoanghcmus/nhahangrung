<%@ Page Title="" Language="C#" MasterPageFile="~/View/CofMaster.master" AutoEventWireup="true" CodeFile="QA_Detail.aspx.cs" Inherits="View_QA_Detail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CofHeadCPH" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CofMainCPH" runat="Server">

    <div class="article-category-title c-article-category-title">
        <h1>
            <asp:Literal ID="ltrCtTitle" runat="server" ></asp:Literal>
        </h1>
    </div>
    <div class="product-container">
        <div class="qa">
            <div class="qa-detail question bot5">
                <img src="/Design/answer.png" alt="Question Icon" />
                <asp:Label ID="lbNoiDungHoi" runat="server"></asp:Label>
                <i style="font-size: 12px;">
                    <asp:Label ID="lbHoTen" runat="server"></asp:Label>
                    gửi ngày 
                    <asp:Label ID="lbNgayGui" runat="server"></asp:Label></i>

            </div>

            <div class="qa-detail answer bot10">
                <asp:Literal ID="ltNoiDungDap" runat="server"></asp:Literal>

            </div>
            <div class="qa-detail question">

                <a href="/<%=Session["lang"].ToString() %>/hoi-dap.html">
                    <img src="/Design/undo.png" alt="Turnback Icon" style="width: 18px; height: 18px;" />Quay lại mục hỏi đáp</a>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CofFootCPH" runat="Server">
</asp:Content>

