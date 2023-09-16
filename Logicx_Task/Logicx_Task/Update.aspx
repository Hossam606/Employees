 <%@ Page Title="" Language="C#" MasterPageFile="~/Main_Master.Master" AutoEventWireup="true" CodeBehind="Update.aspx.cs" Inherits="Logicx_Task.Update" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div style="text-align:center">
            <table class="auto-style1">
                  <tr>
                      <td class="auto-style3">&nbsp;</td>
                      <td class="auto-style9">Edit
                          <asp:Label ID="LblNameEdit" runat="server"></asp:Label>
                      </td>
                      <td class="auto-style2">&nbsp;</td>
                  </tr>
                 <tr>
                      <td class="auto-style3"></td>
                      <td class="auto-style8">ID</td>
                      <td class="auto-style2">
                          <asp:TextBox ID="TextId" runat="server" Font-Size="Medium" Width="169px" ReadOnly="True"></asp:TextBox>
                      </td>
                  </tr>
                  <tr>
                      <td class="auto-style3"></td>
                      <td class="auto-style8">Name</td>
                      <td class="auto-style2">
                          <asp:TextBox ID="TextName" runat="server" Font-Size="Medium" Width="169px"></asp:TextBox>
                      </td>
                  </tr>
                  <tr>
                      <td class="auto-style10"></td>
                      <td class="auto-style11">Email</td>
                      <td class="auto-style12">
                          <asp:TextBox ID="TextEmail" runat="server" Font-Size="Medium" Width="169px"></asp:TextBox>
                      </td>
                  </tr>
                  <tr>
                      <td class="auto-style4">&nbsp;</td>
                      <td class="auto-style9">Birth_Date</td>
                      <td>
                          <asp:TextBox ID="TextDate" runat="server" Font-Size="Medium" Width="169px"></asp:TextBox>
                      </td>
                  </tr>
                  <tr>
                      <td class="auto-style4">&nbsp;</td>
                      <td class="auto-style9">Salary</td>
                      <td>
                          <asp:TextBox ID="TextSalary" runat="server" Font-Size="Medium" Width="169px"></asp:TextBox>
                      </td>
                  </tr>
                  <tr>
                      <td class="auto-style4">&nbsp;</td>
                      <td class="auto-style9">Status</td>
                      <td>
                          <asp:CheckBox ID="CheckBox1" runat="server" />
                      </td>
                  </tr>
                  <tr>
                      <td class="auto-style4">&nbsp;</td>
                      <td class="auto-style9">&nbsp;</td>
                      <td>
                          <asp:Button ID="BtnUpdate" runat="server" BackColor="#339966" Font-Italic="True" Font-Size="Medium" ForeColor="Black"  Text="Update" OnClick="BtnUpdate_Click" />
                          &nbsp;&nbsp;
                          <asp:Button ID="ButBack" runat="server" OnClick="ButBack_Click" Text="Back" />
                      </td>
                  </tr>
                  <tr>
                      <td class="auto-style4">&nbsp;</td>
                      <td class="auto-style9">&nbsp;</td>
                      <td>
                 
                 
                 
                      </td>
                  </tr>
              </table>

    </div>

</asp:Content>
