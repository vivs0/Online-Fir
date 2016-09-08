<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<%--<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>--%>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderMain" runat="server">
    <div class="container-fluid choose-language-container">
        <asp:Label ID="lbl1" runat="server" CssClass="lbl1" Text="अपनी भाषा चुनें" Height="50px" Width="200px"></asp:Label>
        <br />
        <asp:Label ID="Label1" runat="server" CssClass="lbl1" Text="Choose Your Language" Height="50px" Width="200px"></asp:Label>
        <br />
        <div class="row button-row">
            <div class="col-md-6 btn-col">
                <div class="btn-hindi"><asp:Button ID="Button1" CssClass="languageButtonHindi" Height="50px" Width="100px" runat="server" Text="हिंदी" OnClick="Button1_Click" /></div>
            </div>
            <div class="col-md-5">
                <div><asp:Button ID="Button2" CssClass="languageButtonEnglish" Height="50px" Width="100px" runat="server" Text="English" OnClick="Button2_Click" /></div>
            </div>
            <br />
        </div>
    </div>
    
</asp:Content>

