<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Status.aspx.cs" Inherits="English_Status" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderMain" Runat="Server">
    <asp:Label ID="lblHeading" runat="server" Text=""></asp:Label>
    <br />
    <table id="statusFIR" runat="server" class="auto-style1">
        <tr>
            <td id="recieved" runat="server">&nbsp;</td>
            <td id="action" runat="server">&nbsp;</td>
        </tr>
    </table>
    <br />
    
</asp:Content>

