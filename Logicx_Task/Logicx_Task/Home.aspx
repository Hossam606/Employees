<%@ Page Title="" Language="C#" MasterPageFile="~/Main_Master.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Logicx_Task.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
         
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div style="font-size:x-large ; margin: 100px 0 55px 0;" align="center"> Welcome To Main Page For Our Employees</div>
        <br />
    <div style="text-align: center;">
        <asp:HyperLink ID="HyperLink1" href="Employees.aspx" CssClass="margin-left:50%" runat="server">Go To Our Employees</asp:HyperLink>
    </div>
        <br />
    <br />
    <div style="text-align: center;">
        <asp:Image ID="Image1" runat="server"  src="Images/finger.jpg" />
    </div>

</asp:Content>
