using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL.Entities
{
    public interface IRepository
    {
        IEnumerable<Employee> GetAll();
        IEnumerable<Employee> GetByName(string name);
        Employee FindbyId(int id);
        void add(Employee entity);
        void delete(Employee entity);
        void update(Employee entity);

    }
}
