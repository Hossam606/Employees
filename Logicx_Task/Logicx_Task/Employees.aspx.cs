using DAL;
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
    public partial class Employees : System.Web.UI.Page
    {
         Logicx_TaskEntities db = new Logicx_TaskEntities();

        //IRepository repository;
        //public Employees(IRepository _repository)
        //{
        //    _repository = repository;
        //}
        protected void Page_Load(object sender, EventArgs e)
        {
           // repository.GetAll();
            grd.DataSource = db.Employees.ToList();
            grd.DataBind();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddEmployee.aspx");
        }

        protected void BtnSearch_Click(object sender, EventArgs e)
        {
            if (TextSearch.Text == "")
            {
                grd.DataSource = db.Employees.ToList();
                grd.DataBind();
            }
            else
            {
                var emp = db.Employees.Where(x => x.Name == TextSearch.Text);
                //var emp = from em in db.Employees
                //          where em.Name.Contains(TextSearch.Text)
                //          select em;
                grd.DataSource = emp.ToList();
                grd.DataBind();
            }

        }



        protected void grd_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            LblName.Text = grd.Rows[e.RowIndex].Cells[3].Text;
            hf.Value = grd.Rows[e.RowIndex].Cells[2].Text;
            MultiView1.ActiveViewIndex = 1;
        }

        protected void BtnCancel_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
        }

        protected void BtnDelete_Click(object sender, EventArgs e)
        {
            var emp = db.Employees.Find(int.Parse(hf.Value));
            db.Employees.Remove(emp);
            db.SaveChanges();
            Response.Redirect("Employees.aspx");
            //MultiView1.ActiveViewIndex = 0;

        }

         
    }
}