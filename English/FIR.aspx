<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="FIR.aspx.cs" Inherits="English_FIR" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderMain" Runat="Server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
        <div class="container-fluid container-panel">
                <div class="row">
                    <center><asp:Label ID="Label1" runat="server" Text="Is incident happen in the same state where you live ?" CssClass="labelsDisp"></asp:Label></center>
                </div>
                <div class="row">
                    <center><asp:RadioButtonList ID="RadioState" runat="server" RepeatDirection="Horizontal" Width="143px" AutoPostBack="True" OnSelectedIndexChanged="RadioState_SelectedIndexChanged" ValidationGroup="valFir" ForeColor="White">
                        <asp:ListItem Value="1">Yes</asp:ListItem>
                        <asp:ListItem Value="0">No</asp:ListItem>
                    </asp:RadioButtonList></center>
                    </div>
                <div class="row">
                    <center><asp:DropDownList AppendDataBoundItems="true" ID="DropCrimeState" runat="server" Height="16px" Width="180px" AutoPostBack="True" ValidationGroup="valFir" OnSelectedIndexChanged="DropCrimeState_SelectedIndexChanged" CssClass="dropList">
                        <asp:ListItem Value ="-1" Text="Select State" Selected ="True"></asp:ListItem>
                    </asp:DropDownList></center>
                <center><asp:Label ID="Labelstate" runat="server" BackColor="Transparent" Font-Size="13pt" Height="30px" Text="Label" Width="100px" ForeColor="White"></asp:Label></center>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="DropCrimeState" Display="None" ErrorMessage="Select State" InitialValue="-1" SetFocusOnError="True" ValidationGroup="valFir"></asp:RequiredFieldValidator>
                <asp:ValidatorCalloutExtender ID="RequiredFieldValidator4_ValidatorCalloutExtender" runat="server" Enabled="True" TargetControlID="RequiredFieldValidator4">
                </asp:ValidatorCalloutExtender>
                    </div>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="RadioState" Display="None" ErrorMessage="Select State" ValidationGroup="valFir" SetFocusOnError="True"></asp:RequiredFieldValidator>
                <asp:ValidatorCalloutExtender ID="RequiredFieldValidator1_ValidatorCalloutExtender" runat="server" Enabled="True" TargetControlID="RequiredFieldValidator1">
                </asp:ValidatorCalloutExtender>

                <div class="row">
                    <center><asp:Label ID="Label2" runat="server" Text="Is incident happen in the same city where you live ?" CssClass="labelsDisp"></asp:Label></center>
                 </div>
                <div class="row">
                    <center><asp:RadioButtonList ID="RadioCity" runat="server" RepeatDirection="Horizontal" Width="143px" AutoPostBack="True" OnSelectedIndexChanged="RadioCity_SelectedIndexChanged" ValidationGroup="valFir" ForeColor="White">
                        <asp:ListItem Value="1">Yes</asp:ListItem>
                        <asp:ListItem Value="0">No</asp:ListItem>
                    </asp:RadioButtonList></center>
                </div>
    
                <div class="row">
                    <center>
                <asp:DropDownList ID="DropCrimCity" runat="server" Height="16px" Width="180px" AutoPostBack="True" ValidationGroup="valFir" OnSelectedIndexChanged="DropCrimCity_SelectedIndexChanged" CssClass="dropList">
                    <asp:ListItem Text="Select City" Value="-1" Selected="True"></asp:ListItem>
                </asp:DropDownList>
                        </center>
                <center>
                    <asp:Label ID="Labelcity" runat="server" BackColor="Transparent" Font-Size="13pt" Height="30px" Text="Label" Width="100px" ForeColor="White"></asp:Label></center>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DropCrimCity" Display="None" ErrorMessage="Select City" InitialValue="-1" SetFocusOnError="True" ValidationGroup="valFir"></asp:RequiredFieldValidator>
                <asp:ValidatorCalloutExtender ID="RequiredFieldValidator5_ValidatorCalloutExtender" runat="server" Enabled="True" TargetControlID="RequiredFieldValidator5">
                </asp:ValidatorCalloutExtender>
                </div>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="RadioCity" Display="None" ErrorMessage="Select City" SetFocusOnError="True" ValidationGroup="valFir"></asp:RequiredFieldValidator>
                <asp:ValidatorCalloutExtender ID="RequiredFieldValidator2_ValidatorCalloutExtender" runat="server" Enabled="True" TargetControlID="RequiredFieldValidator2">
                </asp:ValidatorCalloutExtender>
            <div class="row">
                <center>
                <asp:Label ID="Label3" runat="server" Text="Is incident happen near the same region where you live ?" CssClass="labelsDisp"></asp:Label>
                </center></div>
            <div class="row">
                <center><asp:RadioButtonList ID="RadioRegion" runat="server" RepeatDirection="Horizontal" Width="143px" AutoPostBack="True" OnSelectedIndexChanged="RadioRegion_SelectedIndexChanged" ValidationGroup="valFir" ForeColor="White">
                    <asp:ListItem Value="1">Yes</asp:ListItem>
                    <asp:ListItem Value="0">No</asp:ListItem>
                </asp:RadioButtonList></center>
            </div>
            
            <div class="row">
                <center>
                <asp:DropDownList ID="DropCrimeRegion" runat="server" Height="16px" AppendDataBoundItems="True" Width="180px" AutoPostBack="True" ValidationGroup="valFir" CssClass="dropList">
                    <asp:ListItem Text="Select Region/Area" Value="-1" Selected="True"></asp:ListItem>
                </asp:DropDownList></center>
            </div>
            <div class="row">
                <center><asp:Label ID="Labelregion" runat="server" BackColor="Transparent" Font-Size="13pt" Height="30px" Text="Label" Width="100px" ForeColor="White"></asp:Label></center>
            </div>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="DropCrimeRegion" Display="None" ErrorMessage="Select Region/Area" InitialValue="-1" SetFocusOnError="True" ValidationGroup="valFir"></asp:RequiredFieldValidator>
                <asp:ValidatorCalloutExtender ID="RequiredFieldValidator6_ValidatorCalloutExtender" runat="server" Enabled="True" TargetControlID="RequiredFieldValidator6">
                </asp:ValidatorCalloutExtender>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="RadioRegion" Display="None" ErrorMessage="Select Region" SetFocusOnError="True" ValidationGroup="valFir"></asp:RequiredFieldValidator>
                <asp:ValidatorCalloutExtender ID="RequiredFieldValidator3_ValidatorCalloutExtender" runat="server" Enabled="True" TargetControlID="RequiredFieldValidator3">
                </asp:ValidatorCalloutExtender>
            <div class="row">
                <div class="col-md-6">
                    <asp:Label ID="Label6" runat="server" Text="Name of Accused :" CssClass="labelsDisp"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:TextBox ID="txtAccusedName" runat="server" Height="62px" OnTextChanged="txtFir0_TextChanged" TextMode="MultiLine" ValidationGroup="valFir" Width="255px"></asp:TextBox>
                </div>
            </div>
                <asp:TextBoxWatermarkExtender ID="txtAccusedName_TextBoxWatermarkExtender" runat="server" Enabled="True" TargetControlID="txtAccusedName" WatermarkText="use comma to separate more than one. If you don't know the name write NA">
                </asp:TextBoxWatermarkExtender>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtAccusedName" Display="None" ErrorMessage="Select Region/Area" InitialValue="-1" SetFocusOnError="True" ValidationGroup="valFir"></asp:RequiredFieldValidator>
                <asp:ValidatorCalloutExtender ID="RequiredFieldValidator9_ValidatorCalloutExtender" runat="server" Enabled="True" TargetControlID="RequiredFieldValidator9">
                </asp:ValidatorCalloutExtender>
            <br /><div class="row">
                <div class="col-md-6">
                   <asp:Label ID="Label4" runat="server" Text="Date when incident happened" CssClass="labelsDisp"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:TextBox ID="TextDate" runat="server" AutoPostBack="True" ValidationGroup="valFir"></asp:TextBox>
                </div>
            </div>
                <asp:CalendarExtender ID="TextDate_CalendarExtender" runat="server" Enabled="True" TargetControlID="TextDate">
                </asp:CalendarExtender>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextDate" Display="None" ErrorMessage="Select Proper Date" SetFocusOnError="True" ValidationGroup="valFir"></asp:RequiredFieldValidator>
                <asp:ValidatorCalloutExtender ID="RequiredFieldValidator7_ValidatorCalloutExtender" runat="server" Enabled="True" TargetControlID="RequiredFieldValidator7">
                </asp:ValidatorCalloutExtender>
                <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="CustomValidator" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
            <br /><div class="row">
                <div class="col-md-6">
                    <asp:Label ID="Label5" runat="server" Text="Brief summary about incident :" CssClass="labelsDisp"></asp:Label>
                </div>
                    <div class="col-md-6">
                        <asp:TextBox ID="txtFir" runat="server" TextMode="MultiLine" ValidationGroup="valFir" Height="62px" Width="255px"></asp:TextBox>
                    </div>
                </div>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtFir" Display="None" ErrorMessage="provide brief summary of incident" SetFocusOnError="True" ValidationGroup="valFir"></asp:RequiredFieldValidator>
                <asp:ValidatorCalloutExtender ID="RequiredFieldValidator8_ValidatorCalloutExtender" runat="server" Enabled="True" TargetControlID="RequiredFieldValidator8">
                </asp:ValidatorCalloutExtender>
                <br /><div class="row">
                <center><asp:Button ID="Button1" runat="server" Text="Proceed" ValidationGroup="valFir" OnClick="Button1_Click" style="height: 26px" CssClass="btnSubmit2" /></center>
            </div></div>
            </ContentTemplate>
        </asp:UpdatePanel>
</asp:Content>

