using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DAL.Entities
{
    public class Repository : IRepository
    {
        Logicx_TaskEntities1 db = new Logicx_TaskEntities1();

        //private readonly Logicx_TaskEntities db=new Logicx_TaskEntities();
        //public Repository(Logicx_TaskEntities _context)
        //{
        //    _context = db;
        //}

        public void add(Employee entity)
        {
            var emp = new Employee
            {
                Name = entity.Name,
                Email = entity.Email,
                Birth_Date = entity.Birth_Date,
                Salary = entity.Salary,
                Status = entity.Status,
            };
            db.Employees.Add(emp);
            db.SaveChanges();
        }

        public void delete(Employee entity)
        {
            var emp = FindbyId(entity.Id);
            db.Employees.Remove(emp);
            db.SaveChanges();
        }

        public Employee FindbyId(int id)
        {
            var emp = db.Employees.Find(id);
            return emp;
        }

        public System.Collections.Generic.IEnumerable<Employee> GetAll()
        {
            return db.Employees.ToList();
        }

        public System.Collections.Generic.IEnumerable<Employee> GetByName(string name)
        {
            var emp = db.Employees.Where(x => x.Name == name);
            return emp.ToList();
            //var emp = from em in db.Employees
            //          where em.Name.Contains(TextSearch.Text)
            //          select em;
        }



        public void update(Employee entity)
        {
            throw new NotImplementedException();
        }

    }
}