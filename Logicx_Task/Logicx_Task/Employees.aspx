<%@ Page Title="" Language="C#" MasterPageFile="~/Main_Master.Master" AutoEventWireup="true" CodeBehind="Employees.aspx.cs" Inherits="Logicx_Task.Employees" %>
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
            width: 330px;
        }
        .auto-style4 {
            width: 330px;
        }
        .auto-style5 {
            height: 26px;
            width: 830px;
        }
        .auto-style6 {
            width: 830px;
        }
        .auto-style8 {
            height: 26px;
            width: 187px;
        }
        .auto-style9 {
            width: 187px;
        }
        .auto-style10 {
            width: 330px;
            height: 33px;
        }
        .auto-style11 {
            width: 187px;
            height: 33px;
        }
        .auto-style12 {
            height: 33px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <br />
    <br />

    <div style="font-size:x-large" align="center"> All Employees</div>
        <br />
    <br />
    <br />
    <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
        <asp:View ID="View1" runat="server">
            <table class="auto-style1">
                 <tr>
                     <td class="auto-style3">&nbsp;</td>
                     <td class="auto-style5">
                         <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add Employee" Width="220px" />
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                         <asp:TextBox ID="TextSearch" runat="server"></asp:TextBox>
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         <asp:Button ID="BtnSearch" runat="server" Font-Size="Small" OnClick="BtnSearch_Click" Text="Search" />
                     </td>
                     <td class="auto-style2">&nbsp;</td>
                 </tr>
                 <tr>
                     <td class="auto-style3">&nbsp;</td>
                     <td class="auto-style5">
                         <asp:GridView ID="grd" runat="server"  Width="826px" OnRowDeleting="grd_RowDeleting" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical"  >
                             <AlternatingRowStyle BackColor="#DCDCDC" />
                             <Columns>
                                 <asp:ButtonField ButtonType="Button" CommandName="Delete" HeaderText="Delete" ShowHeader="True" Text="Deletet" />
                                 <asp:HyperLinkField DataNavigateUrlFields="Id" DataNavigateUrlFormatString="Update.aspx?id={0}" HeaderText="Edit" Text="Edit" />
                             </Columns>
                             <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                             <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                             <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                             <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                             <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                             <SortedAscendingCellStyle BackColor="#F1F1F1" />
                             <SortedAscendingHeaderStyle BackColor="#0000A9" />
                             <SortedDescendingCellStyle BackColor="#CAC9C9" />
                             <SortedDescendingHeaderStyle BackColor="#000065" />
                         </asp:GridView>
                 
                         <!-- Add this modal dialog section below the GridView code -->
                           <%--  <div id="editModal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="editModalLabel" aria-hidden="true">
                                 <div class="modal-dialog">
                                     <div class="modal-content">
                                         <div class="modal-header">
                                             <h5 class="modal-title" id="editModalLabel">Edit Employee Details</h5>
                                             <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                 <span aria-hidden="true">&times;</span>
                                             </button>
                                         </div>
                                         <div class="modal-body">
                                             <!-- Add form fields for editing employee details here -->
                                             <div class="form-group">
                                                 <label for="txtEmployeeName">Name:</label>
                                                 <input type="text" id="txtEmployeeName" class="form-control" />
                                             </div>
                                             <div class="form-group">
                                                 <label for="txtEmployeeAge">Age:</label>
                                                 <input type="text" id="txtEmployeeAge" class="form-control" />
                                             </div>
                                             <!-- Add other form fields as needed -->
                                         </div>
                                         <div class="modal-footer">
                                             <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                                             <button type="button" class="btn btn-primary" onclick="updateEmployeeDetails()">Save</button>
                                         </div>
                                     </div>
                                 </div>
                             </div>--%>
                 
                     </td>
                     <td class="auto-style2">&nbsp;</td>
                 </tr>
                 <tr>
                     <td class="auto-style4">&nbsp;</td>
                     <td class="auto-style6">&nbsp;</td>
                     <td>&nbsp;</td>
                 </tr>
             </table>
        </asp:View>

        <asp:View ID="View2" runat="server">
            <h3>Do You Want Delete <asp:Label ID="LblName" runat="server" BackColor="White" Font-Bold="True" ForeColor="Red"></asp:Label> ?</h3>
            <p>
                <asp:Button ID="BtnDelete" runat="server" Text="Delete" class="btn btn-success" OnClick="BtnDelete_Click" BackColor="Red" Font-Size="Medium" BorderColor="Black" BorderStyle="Double"/>

                <asp:Button ID="BtnCancel" runat="server" Text="Cancel"  class="btn btn-danger" OnClick="BtnCancel_Click" BackColor="Blue" BorderColor="Black" BorderStyle="Double" Font-Size="Medium" />
            </p>
            <p>
                <asp:HiddenField ID="hf" runat="server" />
            </p>
            <p>
                &nbsp;</p>
        </asp:View>
        
    </asp:MultiView>

   <%-- <div class="container">
        <div class="modal fade" id="mymodel" role="dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">Edit Employee</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <div class="modal-body">
                    <label>Name</label>
                    <asp:TextBox ID="txtname" CssClass="form-control" placeholder="Name" runat="server"/>
                    <label>Email</label>
                    <asp:TextBox ID="txtEmail" CssClass="form-control" placeholder="Email" runat="server"/>
                    <label>Date Birth</label>
                    <asp:TextBox ID="txtDate" CssClass="form-control" placeholder="Date Birth" runat="server"/>
                    <label>Salary</label>
                    <asp:TextBox ID="txtSalary" CssClass="form-control" placeholder="Salary" runat="server"/>
                    <label>Status</label>
                    <asp:CheckBox ID="CheckBox1" runat="server" />
                 </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-danger">Close</button>
                    <asp:Button ID="btnsave" CssClass="btn btn-primary" Text="Save" runat="server"/>
                </div>
            </div>
        </div>
    </div>
    <asp:Button Text="Open model " CssClass="btn btn-primary" ID="modal" OnClick="modal_Click" runat="server"/>
    --%>
    <br />
    <br />s

     
   
    <%--<script>
        function showEditModal(rowIndex) {
             // Get the employee details from the GridView using the row index
             var employeeName = document.getElementById('<%= grd.ClientID %>').rows[rowIndex + 1].cells[0].innerText;
             var employeeAge = document.getElementById('<%= grd.ClientID %>').rows[rowIndex + 1].cells[1].innerText;
             // Get other employee details as needed
            
             // Populate the modal dialog with the employee details
             document.getElementById('txtEmployeeName').value = employeeName;
             document.getElementById('txtEmployeeAge').value = employeeAge;
             // Set other form fields in the modal dialog
            
             // Display the modal dialog
             $('#editModal').modal('show');
}
    </script>--%>
</asp:Content>

