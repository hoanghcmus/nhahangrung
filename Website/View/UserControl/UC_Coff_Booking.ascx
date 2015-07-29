<%@ Control Language="C#" AutoEventWireup="true" CodeFile="UC_Coff_Booking.ascx.cs" Inherits="En_En_Control_UC_CheckRate" %>

<div class="booking">
    <asp:UpdatePanel ID="UpdatePanelBooking" runat="server">
        <ContentTemplate>

            <asp:Label ID="lbBookingMess" runat="server" CssClass="booking-mess"></asp:Label>
            <div class=" booking-wrap">
                <div class="booking-header">
                    <h1><%=Resources.Resource.table_booking_online %>
                    </h1>
                </div>
                <div class="booking-info">
                    <div class="line-fix-parent-width info-input">
                        <%--<asp:TextBox ID="txtHoTen" runat="server" CssClass="input" placeholder="Họ tên"></asp:TextBox>--%>
                        <asp:TextBox ID="custumerName" runat="server" CssClass="input" placeholder="<%$ Resources:Resource, name %>"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="validateName" runat="server" ControlToValidate="custumerName" ValidationGroup="booking" ErrorMessage="Vui lòng nhập họ tên!" CssClass="error">*</asp:RequiredFieldValidator>
                    </div>

                    <div class="line-fix-parent-width info-input">
                        <%--<asp:TextBox ID="txtDiaChi" runat="server" CssClass="input" placeholder="Địa chỉ"></asp:TextBox>--%>
                        <asp:TextBox ID="Address" runat="server" CssClass="input" placeholder="<%$ Resources:Resource, address %>"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="validateAddress" runat="server" ControlToValidate="Address" ValidationGroup="booking" ErrorMessage="Vui lòng nhập địa chỉ!" CssClass="error">*</asp:RequiredFieldValidator>
                    </div>

                    <div class="line-fix-parent-width info-input">
                        <%--<asp:TextBox ID="txtDienThoai" runat="server" CssClass="input" placeholder="Điện thoại"></asp:TextBox>--%>
                        <asp:TextBox ID="Phone" runat="server" CssClass="input" placeholder="<%$ Resources:Resource, phone %>"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="validatePhone" runat="server" ControlToValidate="Phone" ValidationGroup="booking" ErrorMessage="Vui lòng nhập số điện thoại!" CssClass="error">*</asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="validatePhoneExp" runat="server" CssClass="error" Operator="DataTypeCheck" ControlToValidate="Phone" ValidationGroup="booking" Type="Integer">không phải số</asp:CompareValidator>
                    </div>

                    <div class="line-fix-parent-width info-input">
                        <%--<asp:TextBox ID="txtSoNguoi" runat="server" CssClass="input" placeholder="Số người"></asp:TextBox>--%>
                        <asp:TextBox ID="Amount" runat="server" CssClass="input" placeholder="<%$ Resources:Resource, amount %>"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="validateAmount" runat="server" placeholder="Số người" ControlToValidate="Amount" ValidationGroup="booking" ErrorMessage="Vui lòng nhập số người!" CssClass="error">*</asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="validateAmountExp" runat="server" CssClass="error" Operator="DataTypeCheck" ControlToValidate="Amount" ValidationGroup="booking" Type="Integer">không phải số</asp:CompareValidator>
                    </div>

                    <div class="line-fix-parent-width info-input info-input-short">
                        <%--<asp:TextBox ID="txtNgay" runat="server" CssClass="input" placeholder="Ngày"></asp:TextBox>--%>
                        <asp:TextBox ID="Date" runat="server" CssClass="input chose-date" placeholder="<%$ Resources:Resource, date %>" onfocus="datNgay();" onclick="datNgay();"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="validateDate" runat="server" ControlToValidate="Date" ValidationGroup="booking" ErrorMessage="Vui lòng nhập ngày!" CssClass="error">*</asp:RequiredFieldValidator>
                    </div>

                    <div class="line-fix-parent-width info-input">
                        <%--<asp:TextBox ID="txtGio" runat="server" CssClass="input" placeholder="Giờ"></asp:TextBox>--%>
                        <asp:TextBox ID="Hour" runat="server" CssClass="input" placeholder="<%$ Resources:Resource, hour %>"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="validateHour" runat="server" ControlToValidate="Hour" ValidationGroup="booking" ErrorMessage="Vui lòng nhập giờ!" CssClass="error">*</asp:RequiredFieldValidator>
                    </div>

                    <div class="line-fix-parent-width">
                        <asp:Button ID="btnReserv" runat="server" Text="<%$ Resources:Resource, submit %>" CssClass="btnBooking" OnClick="btnReserv_Click" ValidationGroup="booking" />
                        <asp:Button ID="btnFormat" runat="server" Text="<%$ Resources:Resource, delete %>" CssClass="btnBooking" OnClick="btnFormat_Click" />
                    </div>
                </div>
            </div>

        </ContentTemplate>
    </asp:UpdatePanel>
</div>


<%-- Script cho datepicker chọn ngày tháng --%>
<link href="/Styles/multies/jquery.datetimepicker.css" rel="stylesheet" />
<script src="/Styles/multies/jquery.datetimepicker.js"></script>
<script src="/Styles/multies/jquery.easyui.min.js"></script>
<script>
    $(document).ready(function () {
        $('.chose-date').datetimepicker({
            lang: 'vi',
            timepicker: false,
            format: 'd/m/Y'
        });
    });

    function datNgay() {
        $('.chose-date').datetimepicker({
            lang: 'vi',
            timepicker: false,
            format: 'd/m/Y'
        });
    }
</script>
