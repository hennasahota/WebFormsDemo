using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebFormsDemo
{
    public class Student
    {
        public int StudentID { get; set; }
        public string StudentName { get; set; }
        public double StudentCredit { get; set; }
        public string ErmgConPhone { get; set; }
        public Student()
        {
         
        }
        public Student(int sid,
                        string name,
                        double credit,                      
                        string phone)
        {
            StudentID = sid;
            StudentName = name;
            StudentCredit = credit;
            ErmgConPhone = phone;
        }
    }
}