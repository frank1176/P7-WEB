<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Validation.aspx.cs" Inherits="P7.Validation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <appSettings>
      <add key="ValidationSettings:UnobtrusiveValidationMode" value="None" />
    </appSettings>
    <title></title>
    <style type="text/css">
        .auto-style8 {
            width: 314px;
            height: 26px;
        }
        .auto-style9 {
            width: 314px;
        }
        .auto-style11 {
            width: 381px;
        }
        .auto-style13 {
            height: 26px;
            width: 337px;
        }
        .auto-style14 {
            width: 783px;
        }
        .auto-style15 {
            width: 783px;
            height: 26px;
        }
        .auto-style16 {
            width: 337px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style11">
                <tr>
                    <td class="auto-style15">User Name:</td>
                    <td class="auto-style8">
                        <asp:TextBox ID="TextName" runat="server" Width="120px"></asp:TextBox>
                    </td>
                    <td class="auto-style13">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorName" runat="server" ControlToValidate="TextName" ErrorMessage="User name is required" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style15">Password:</td>
                    <td class="auto-style8">
                        <asp:TextBox ID="TextPassword" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style13">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword" runat="server" ControlToValidate="TextPassword" EnableTheming="True" ErrorMessage="Password is required" ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextPassword" ErrorMessage="Password must be exactly 6 characters" ForeColor="Red" ValidationExpression="\w{6}">*</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style14">Age:</td>
                    <td class="auto-style9">
                        <asp:TextBox ID="TextAge" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style16">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorAge" runat="server" ControlToValidate="TextAge" ErrorMessage="Age is required" ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextAge" ErrorMessage="Age should be in the range of 1 to 99 only" ForeColor="Red" MaximumValue="99" MinimumValue="1" Type="Integer">*</asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style14">Date of Birth:</td>
                    <td class="auto-style9">
                        <asp:TextBox ID="TextDOB" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style16">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorDOB" runat="server" ControlToValidate="TextDOB" ErrorMessage="Date of birth is required" ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="TextDOB" ErrorMessage="Date format required" ForeColor="Red" Operator="DataTypeCheck" Type="Date">*</asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style14">Credit Card Type:</td>
                    <td class="auto-style9">
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" RepeatDirection="Horizontal" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged">
                            <asp:ListItem>Visa</asp:ListItem>
                            <asp:ListItem>Master</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td class="auto-style16">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="RadioButtonList1" Display="Dynamic" ErrorMessage="must select one credit card" ForeColor="Red" InitialValue="None">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style14">Creadit Card Number:</td>
                    <td class="auto-style9">
                        <asp:TextBox ID="Textcard" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style16">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorCard" runat="server" ControlToValidate="Textcard" ErrorMessage="Credit card number is required" ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="Textcard" EnableClientScript="False" ErrorMessage="Invalid credit card format" ForeColor="Red">*</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style14">
                        <asp:Button ID="Button1" runat="server" Text="Submit" />
&nbsp;<asp:Button ID="Button2" runat="server" Text="Clear" />
                    </td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style16">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style14">
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
                    </td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style16">&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
