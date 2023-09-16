using DAL;
using DAL.Entities;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Logicx_Task
{
    public partial class AddEmployee : System.Web.UI.Page
    {

         Logicx_TaskEntities db = new Logicx_TaskEntities();

        //private readonly IRepository repository;
        //public AddEmployee(IRepository _repository)
        //{
        //    _repository = repository;
        //}
        protected void Page_Load(object sender, EventArgs e)
        {
            //IRepository repository = new Repository();
            //AddEmployee addEmployee = new AddEmployee(repository);
        }

        protected void BtnInsert_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                var emp = new Employee
                {
                    Name = TextName.Text,
                    Email = TextEmail.Text,
                    Birth_Date = DateTime.Parse(TextDate.Text),
                    Salary = decimal.Parse(TextSalary.Text),
                    Status = CheckBox1.Checked,
                };
                db.Employees.Add(emp);
                db.SaveChanges();

                Response.Redirect("Employees.aspx");
            }

            //if (Page.IsValid)
            //{
            //    var emp = new Employee
            //    {
            //        Name = TextName.Text,
            //        Email = TextEmail.Text,
            //        Birth_Date = DateTime.Parse(TextDate.Text),
            //        Salary = decimal.Parse(TextSalary.Text),
            //        Status = CheckBox1.Checked,
            //    };
            //     repository.add(emp);

            //}
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddEmployee.aspx");
        }
    }
}
//if (Page.IsValid)
//{
//    var emp = new Employee
//    {
//        Name = TextName.Text,
//        Email = TextEmail.Text,
//        Birth_Date = DateTime.Parse(TextDate.Text),
//        Salary = decimal.Parse(TextSalary.Text),
//        Status = CheckBox1.Checked,
//    };
//    db.Employees.Add(emp);
//    db.SaveChanges();

//    Response.Redirect("Home.aspx");
//}

