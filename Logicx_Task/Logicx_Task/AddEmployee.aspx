<%@ Page Title="" Language="C#"   MasterPageFile="~/Main_Master.Master" AutoEventWireup="true" CodeBehind="AddEmployee.aspx.cs" Inherits="Logicx_Task.AddEmployee" %>
 
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 26px;
        }
        .auto-style3 {
            height: 26px;
            width: 501px;
        }
        .auto-style4 {
            width: 501px;
        }
        .auto-style6 {
            height: 26px;
            width: 179px;
        }
        .auto-style7 {
            width: 179px;
        }
        .auto-style8 {
            width: 501px;
            height: 33px;
        }
        .auto-style9 {
            width: 179px;
            height: 33px;
            table-layout: auto;
        }
        .auto-style10 {
            height: 33px;
        }
        .auto-style14 {
            height: 26px;
            width: 167px;
            table-layout: auto;
        }
        .auto-style15 {
            width: 167px;
            table-layout: auto;
        }
        .auto-style16 {
            height: 26px;
            width: 167px;
        }
        .auto-style17 {
            width: 167px;
            height: 33px;
            table-layout: auto;
        }
        .auto-style18 {
            width: 167px;
        }
        .auto-style19 {
            width: 501px;
            height: 82px;
        }
        .auto-style20 {
            width: 179px;
            table-layout: auto;
            height: 82px;
        }
        .auto-style21 {
            width: 167px;
            height: 82px;
        }
        .auto-style22 {
            height: 82px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     
        <div>

            <%--<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Employee]"></asp:SqlDataSource>--%>
            <br />
            <br />

        </div>

        <div style="font-size:x-large" align="center"> Employee Manage Form</div>
        <br />


        <table class="auto-style1">
            <tr>
                <td class="auto-style3"></td>
                <td class="auto-style6" style="table-layout: auto; font-family: Calibri; font-size: large;">Add Employee</td>
                <td class="auto-style16">
                    <br />
                    <br />
                </td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3"></td>
                <td class="auto-style6" style="border: 5px double #C0C0C0; padding: 5px; margin: 20px; table-layout: auto; border-collapse: collapse; border-spacing: 8px; empty-cells: inherit; caption-side: top; text-align: left; font-family: Andalus; font-size: medium; color: #808080;">Name</td>
                <td class="auto-style14" style="border: 5px double #C0C0C0; padding: 5px; margin: 20px; border-collapse: collapse; border-spacing: 8px; empty-cells: inherit; caption-side: top; text-align: left; font-family: Andalus; font-size: medium; color: #808080;">
                    <asp:TextBox ID="TextName" runat="server" Font-Size="Medium" Width="169px"></asp:TextBox>
                </td>
                <td class="auto-style2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style7" style="border: 5px double #C0C0C0; padding: 5px; margin: 20px; table-layout: auto; border-collapse: collapse; border-spacing: 8px; empty-cells: inherit; caption-side: top; text-align: left; font-family: Andalus; font-size: medium; color: #808080;">Email</td>
                <td class="auto-style15" style="border: 5px double #C0C0C0; padding: 5px; margin: 20px; border-collapse: collapse; border-spacing: 8px; empty-cells: inherit; caption-side: top; text-align: left; font-family: Andalus; font-size: medium; color: #808080;">
                    <asp:TextBox ID="TextEmail" runat="server" Font-Size="Medium" Width="169px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style7" style="border: 5px double #C0C0C0; padding: 5px; margin: 20px; table-layout: auto; border-collapse: collapse; border-spacing: 8px; empty-cells: inherit; caption-side: top; text-align: left; font-family: Andalus; font-size: medium; color: #808080;">Birth_Date</td>
                <td class="auto-style15" style="border: 5px double #C0C0C0; padding: 5px; margin: 20px; border-collapse: collapse; border-spacing: 8px; empty-cells: inherit; caption-side: top; text-align: left; font-family: Andalus; font-size: medium; color: #808080;">
                    <asp:TextBox ID="TextDate" runat="server" Font-Size="Medium" Width="169px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8"></td>
                <td class="auto-style9" style="border: 5px double #C0C0C0; padding: 5px; margin: 20px; table-layout: auto; border-collapse: collapse; border-spacing: 8px; empty-cells: inherit; caption-side: top; text-align: left; font-family: Andalus; font-size: medium; color: #808080;">Salary</td>
                <td class="auto-style17" style="border: 5px double #C0C0C0; padding: 5px; margin: 20px; border-collapse: collapse; border-spacing: 8px; empty-cells: inherit; caption-side: top; text-align: left; font-family: Andalus; font-size: medium; color: #808080;">
                    <asp:TextBox ID="TextSalary" runat="server" Font-Size="Medium" Width="169px"></asp:TextBox>
                </td>
                <td class="auto-style10">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style7" style="border: 5px double #C0C0C0; padding: 5px; margin: 20px; table-layout: auto; border-collapse: collapse; border-spacing: 8px; empty-cells: inherit; caption-side: top; text-align: left; font-family: Andalus; font-size: medium; color: #808080;">Status</td>
                <td class="auto-style15" style="border: 5px double #C0C0C0; padding: 5px; margin: 20px; border-collapse: collapse; border-spacing: 8px; empty-cells: inherit; caption-side: top; text-align: left; font-family: Andalus; font-size: medium; color: #808080;">
                    <asp:CheckBox ID="CheckBox1" runat="server" />
                </td>
                <td>
                    &nbsp;&nbsp;&nbsp; </td>
            </tr>
            <tr>
                <td class="auto-style19"></td>
                <td class="auto-style20">
                    <asp:Button ID="BtnInsert" runat="server" BackColor="#339966" Font-Italic="True" Font-Size="Medium" ForeColor="Black" OnClick="BtnInsert_Click" Text="Insert" Width="191px" />
                    </td>
                <td class="auto-style21">
                    &nbsp;
                    <asp:Button ID="Button1" runat="server" BackColor="#0000CC" Font-Size="Medium" ForeColor="Black" OnClick="Button1_Click" Text="Back" Width="191px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                </td>
                <td class="auto-style22">
                    </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style18">


       
                </td>
                <td>


       
                    &nbsp;</td>
            </tr>
        </table>
        <br />
        <br />
        <br />
        <br />
        <br />
     
</asp:Content>

