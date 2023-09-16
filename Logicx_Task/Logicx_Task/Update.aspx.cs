using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Logicx_Task
{
    public partial class Update : System.Web.UI.Page
    {
        Logicx_TaskEntities db = new Logicx_TaskEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                TextId.Text = Request.QueryString["id"];
 
                LblNameEdit.Text =TextId.Text;

                var myEmployee = db.Employees.FirstOrDefault(c => c.Id.ToString() == TextId.Text);

                TextName.Text = myEmployee.Name;
                TextEmail.Text = myEmployee.Email;
                TextDate.Text = myEmployee.Birth_Date.ToString();
                TextSalary.Text = myEmployee.Salary.ToString();
                CheckBox1.Checked = myEmployee.Status;
            }
            
        }

        protected void BtnUpdate_Click(object sender, EventArgs e)
        {
            var id =int.Parse( Request.QueryString["id"]);

            var myEmployee = db.Employees.Find(id);

            myEmployee.Name=TextName.Text ;
            myEmployee.Email =TextEmail.Text;
            myEmployee.Birth_Date = DateTime.Parse(TextDate.Text) ;
            myEmployee.Salary=decimal.Parse(TextSalary.Text);
            myEmployee.Status= CheckBox1.Checked;

            db.SaveChanges();
            Response.Redirect("Employees.aspx");
        }

        protected void ButBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("Employees.aspx");
        }

         
    }
} 	
