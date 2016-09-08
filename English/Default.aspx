<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="English_Default" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        width: 275px;
    }
        .auto-style3 {
            width: 365px;
        }
        .auto-style4 {
            width: 205px;
        }
        .auto-style5 {
            width: 381px;
        }
        .auto-style7 {
            width: 217px;
        }
        .auto-style8 {
            width: 217px;
            height: 31px;
        }
        .auto-style9 {
            height: 31px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderMain" Runat="Server">
    <marquee class="marq" direction="left" scrolldelay ="100" truespeed onmouseover="this.stop()" onmouseout="this.start()">
    <asp:Label ID="Label1" runat="server" Text="Welcome to E - FIR Portal of Indian Police"></asp:Label></marquee>
    <br />
            <asp:UpdatePanel ID ="pan2" runat="server" >
            <ContentTemplate>
    <asp:RadioButtonList ID="RadioButtonList1" runat="server" CssClass="radioSelect" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" RepeatDirection="Horizontal" Width="345px">
        <asp:ListItem Value="1">FIR</asp:ListItem>
        <asp:ListItem Value="2">Trace FIR</asp:ListItem>
    </asp:RadioButtonList>
        <div class="container-fluid container-panel">
            <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style1">
            <tr>
                <td>
                    <asp:Label ID="traceFirID" runat="server" Text="FIR ID :" CssClass="labels"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtTracefirID" CssClass="textbox-custom" runat="server"  ValidationGroup="trace" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="txtTracefirID" Display="None" ErrorMessage="Field is required" ForeColor="Red" SetFocusOnError="True" ValidationGroup="trace"></asp:RequiredFieldValidator>
                    <asp:ValidatorCalloutExtender ID="RequiredFieldValidator14_ValidatorCalloutExtender" runat="server" Enabled="True" TargetControlID="RequiredFieldValidator14">
                    </asp:ValidatorCalloutExtender>
                </td>
                <td>
                    <asp:Button ID="Button2" runat="server" CssClass="btnSubmit" OnClick="Button2_Click" Text="Proceed" ValidationGroup="trace" Width="118px" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style5">
                    <asp:LinkButton CssClass="lnkbtn" ID="ForgetID" runat="server" OnClick="ForgetID_Click" ValidationGroup="trace" CausesValidation="False">Forget Fir Id</asp:LinkButton>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
            <asp:Panel ID="Panel2" runat="server">
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style7">
                                <asp:Label ID="Label14" runat="server" Text="First Name :" CssClass="labels"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="tracefname" runat="server" ValidationGroup="ComlainerGroupValidation" Width="189px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="tracefname" Display="None" ErrorMessage="Field is required" ForeColor="Red" SetFocusOnError="True" ValidationGroup="ComlainerGroupValidation"></asp:RequiredFieldValidator>
                                <asp:ValidatorCalloutExtender ID="RequiredFieldValidator15_ValidatorCalloutExtender" runat="server" Enabled="True" TargetControlID="RequiredFieldValidator15">
                                </asp:ValidatorCalloutExtender>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style7">
                                <asp:Label ID="Label15" runat="server" Text="Father's / Husband Name :" CssClass="labels"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="tracefhname" runat="server" ValidationGroup="ComlainerGroupValidation"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="tracefhname" Display="None" ErrorMessage="Field is required" ForeColor="Red" SetFocusOnError="True" ValidationGroup="ComlainerGroupValidation"></asp:RequiredFieldValidator>
                                <asp:ValidatorCalloutExtender ID="RequiredFieldValidator16_ValidatorCalloutExtender" runat="server" Enabled="True" TargetControlID="RequiredFieldValidator16">
                                </asp:ValidatorCalloutExtender>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style7">
                                <asp:Label ID="Label16" runat="server" Text="Contact No :" CssClass="labels"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="traceContact" runat="server" ValidationGroup="ComlainerGroupValidation"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ControlToValidate="txtContact" Display="None" ErrorMessage="Field is required" ForeColor="Red" SetFocusOnError="True" ValidationGroup="ComlainerGroupValidation"></asp:RequiredFieldValidator>
                                <asp:ValidatorCalloutExtender ID="RequiredFieldValidator17_ValidatorCalloutExtender" runat="server" Enabled="True" TargetControlID="RequiredFieldValidator17">
                                </asp:ValidatorCalloutExtender>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style8">
                                <asp:Label ID="Label17" runat="server" Text="FIR Date :" CssClass="labels"></asp:Label>
                            </td>
                            <td class="auto-style9">
                                <asp:TextBox ID="traceFIRDate" runat="server" ValidationGroup="ComlainerGroupValidation"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ControlToValidate="traceFIRDate" Display="None" ErrorMessage="Field is required" ForeColor="Red" SetFocusOnError="True" ValidationGroup="forget"></asp:RequiredFieldValidator>
                                <asp:ValidatorCalloutExtender ID="RequiredFieldValidator18_ValidatorCalloutExtender" runat="server" Enabled="True" TargetControlID="RequiredFieldValidator18">
                                </asp:ValidatorCalloutExtender>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style7">&nbsp;</td>
                            <td>
                                <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Proceed" ValidationGroup="forget" Width="118px" />
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
<br />
    <table id="table1" runat="server" class="auto-style1">
    <tr>
        <td class="auto-style2">
            <asp:Label ID="Label2" runat="server" Text="First Name :" CssClass="labels"></asp:Label>
        </td>
        <td class="auto-style3">
            <asp:TextBox ID="txtFirstName" placeholder="First Name" runat="server" ValidationGroup="ComlainerGroupValidation" CssClass="txtname"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFirstName" Display="None" ErrorMessage="Field is required" ForeColor="Red" SetFocusOnError="True" ValidationGroup="ComlainerGroupValidation"></asp:RequiredFieldValidator>
            <asp:ValidatorCalloutExtender ID="RequiredFieldValidator1_ValidatorCalloutExtender" runat="server" Enabled="True" TargetControlID="RequiredFieldValidator1">
            </asp:ValidatorCalloutExtender>
        </td>
        <td class="auto-style4">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label12" runat="server" Text="Last Name :" CssClass="labels"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="txtLastName" placeholder="Last Name" runat="server" CssClass="txtname"></asp:TextBox>
            </td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    <tr>
        <td class="auto-style2">
            <asp:Label ID="Label9" runat="server" Text="Father's :" CssClass="labels"></asp:Label>
        </td>
        <td class="auto-style3">
           
            <asp:TextBox ID="txtfatherHusbandName" runat="server" placeholder="Father's Name" ValidationGroup="ComlainerGroupValidation" CssClass="txtparentName"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtfatherHusbandName" Display="None" ErrorMessage="Field is required" ForeColor="Red" SetFocusOnError="True" ValidationGroup="ComlainerGroupValidation"></asp:RequiredFieldValidator>
            <asp:ValidatorCalloutExtender ID="RequiredFieldValidator8_ValidatorCalloutExtender" runat="server" Enabled="True" TargetControlID="RequiredFieldValidator8">
            </asp:ValidatorCalloutExtender>
        </td>
        <td class="auto-style4">
            &nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">
            <asp:Label ID="Label3" runat="server" Text="State :" CssClass="labels"></asp:Label>
        </td>
        <td class="auto-style3">
            <asp:DropDownList ID="ListState" CssClass="dropList" runat="server" ValidationGroup="ComlainerGroupValidation" Width="192px" AutoPostBack="True" OnSelectedIndexChanged="ListState_SelectedIndexChanged">
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="ListState" Display="None" ErrorMessage="Field is required" ForeColor="Red" SetFocusOnError="True" ValidationGroup="ComlainerGroupValidation"></asp:RequiredFieldValidator>
            <asp:ValidatorCalloutExtender ID="RequiredFieldValidator9_ValidatorCalloutExtender" runat="server" Enabled="True" TargetControlID="RequiredFieldValidator9">
            </asp:ValidatorCalloutExtender>
        </td>
        <td class="auto-style4">
            &nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">
            <asp:Label ID="Label4" runat="server" Text="City :" CssClass="labels"></asp:Label>
        </td>
        <td class="auto-style3">
            <asp:DropDownList ID="ListCity" CssClass="dropList" runat="server" ValidationGroup="ComlainerGroupValidation" Width="192px" OnSelectedIndexChanged="ListCity_SelectedIndexChanged" AutoPostBack="True">
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="ListCity" Display="None" ErrorMessage="Field is required" ForeColor="Red" SetFocusOnError="True" ValidationGroup="ComlainerGroupValidation"></asp:RequiredFieldValidator>
            <asp:ValidatorCalloutExtender ID="RequiredFieldValidator10_ValidatorCalloutExtender" runat="server" Enabled="True" TargetControlID="RequiredFieldValidator10">
            </asp:ValidatorCalloutExtender>
        </td>
        <td class="auto-style4">
            &nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">
            <asp:Label ID="Label10" runat="server" Text="Area Station :" CssClass="labels"></asp:Label>
        </td>
        <td class="auto-style3">
            <asp:DropDownList ID="ListAreaStation" CssClass="dropList" runat="server" ValidationGroup="ComlainerGroupValidation" Width="192px">
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="ListAreaStation" Display="None" ErrorMessage="Field is required" ForeColor="Red" SetFocusOnError="True" ValidationGroup="ComlainerGroupValidation"></asp:RequiredFieldValidator>
            <asp:ValidatorCalloutExtender ID="RequiredFieldValidator11_ValidatorCalloutExtender" runat="server" Enabled="True" TargetControlID="RequiredFieldValidator11">
            </asp:ValidatorCalloutExtender>
        </td>
        <td class="auto-style4">
            &nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2 address">
            <asp:Label ID="Label5" runat="server" Text="Full Address" CssClass="labels"></asp:Label>
        </td>
        <td class="auto-style3">
            <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine" placeholder="Address" ValidationGroup="ComlainerGroupValidation" CssClass="addresstxt"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="txtAddress" Display="None" ErrorMessage="Field is required" ForeColor="Red" SetFocusOnError="True" ValidationGroup="ComlainerGroupValidation"></asp:RequiredFieldValidator>
            <asp:ValidatorCalloutExtender ID="RequiredFieldValidator12_ValidatorCalloutExtender" runat="server" Enabled="True" TargetControlID="RequiredFieldValidator12">
            </asp:ValidatorCalloutExtender>
        </td>
        <td class="auto-style4">
            &nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">
            <asp:Label ID="Label6" runat="server" Text="Contact No. :" CssClass="labels"></asp:Label>
        </td>
        <td class="auto-style3">
            <asp:TextBox ID="txtContact" placeholder="Contact No." runat="server" ValidationGroup="ComlainerGroupValidation" CssClass="contacttxt"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="txtContact" Display="None" ErrorMessage="Field is required" ForeColor="Red" SetFocusOnError="True" ValidationGroup="ComlainerGroupValidation"></asp:RequiredFieldValidator>
            <asp:ValidatorCalloutExtender ID="RequiredFieldValidator13_ValidatorCalloutExtender" runat="server" Enabled="True" TargetControlID="RequiredFieldValidator13">
            </asp:ValidatorCalloutExtender>
        </td>
        <td class="auto-style4">
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtContact" Display="None" ErrorMessage="Invalid Phone Number" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\d{10}" ValidationGroup="ComlainerGroupValidation"></asp:RegularExpressionValidator>
            <asp:ValidatorCalloutExtender ID="RegularExpressionValidator2_ValidatorCalloutExtender" runat="server" Enabled="True" TargetControlID="RegularExpressionValidator2">
            </asp:ValidatorCalloutExtender>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style3">
            <asp:Button ID="Button1" CssClass="btnSubmit" runat="server" OnClick="Button1_Click" Text="Proceed" ValidationGroup="ComlainerGroupValidation" Width="118px" />
        </td>
        <td class="auto-style4">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style3">
            &nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style3">
            &nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
                    </div>    
            </ContentTemplate>

            </asp:UpdatePanel>
 </asp:Content>

