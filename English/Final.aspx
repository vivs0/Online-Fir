<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Final.aspx.cs" Inherits="English_Final" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 214px;
        }
        .auto-style3 {
            width: 143px;
        }
        .auto-style4 {
            width: 214px;
            height: 28px;
        }
        .auto-style5 {
            width: 143px;
            height: 28px;
        }
        .auto-style6 {
            height: 28px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderMain" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label19" runat="server" Text="Personal Detail"></asp:Label>
            </td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label7" runat="server" Text="Name :"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="txtComplainerFirstName" runat="server" Height="22px" Width="230px" ReadOnly="True"></asp:TextBox>
            </td>
            <td>
                <asp:TextBox ID="txtComplainerLastName" runat="server" Height="22px" Width="230px" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label8" runat="server" Text="Father/Husband Name :"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="txtComplainerFatherName" runat="server" Height="22px" Width="230px" ReadOnly="True"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label9" runat="server" Text="Address :"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="txtComplainerAddress" runat="server" Height="83px" TextMode="MultiLine" Width="230px" ReadOnly="True"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label10" runat="server" Text="State :"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="txtComplainerState" runat="server" Height="22px" Width="230px" ReadOnly="True"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label11" runat="server" Text="City :"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="txtComplainerCity" runat="server" Height="22px" Width="230px" ReadOnly="True"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label12" runat="server" Text="Area / Region :"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="txtComplainerArea" runat="server" Height="22px" Width="230px" ReadOnly="True"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label13" runat="server" Text="Contact No. :"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="txtContactNo" runat="server" Height="22px" Width="230px" ReadOnly="True"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label14" runat="server" Text="FIR Detail"></asp:Label>
            </td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label15" runat="server" Text="Place where Incident happened :"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="FirPlace" runat="server" Height="80px" TextMode="MultiLine" Width="230px" ReadOnly="True"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label16" runat="server" Text="Name of Accused :"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="FirAccused" runat="server" Height="74px" TextMode="MultiLine" Width="230px" ReadOnly="True"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Label ID="Label17" runat="server" Text="Date of Incident :"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:TextBox ID="FIRDate" runat="server" Height="22px" Width="230px" ReadOnly="True"></asp:TextBox>
            </td>
            <td class="auto-style6"></td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label18" runat="server" Text="FIR Summary :"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="FirSummary" runat="server" Height="63px" TextMode="MultiLine" Width="230px" ReadOnly="True"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

