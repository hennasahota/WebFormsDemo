using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebFormsDemo.Pages
{
    public partial class StudentForm : System.Web.UI.Page
    {
        private static List<Student> StudentsList = new List<Student>();
        protected void Page_Load(object sender, EventArgs e)
        {
            MessageLabel.Text = "";
        }

        protected void Add_Student_Click(object sender, EventArgs e)
        {
            MessageLabel.Text = "StudentID = " + StudentID.Text + " Name = " + StudentName.Text;
            if (Page.IsValid)
            {
                bool found = false;
                foreach (var item in StudentsList)
                {
                    if (item.StudentID == int.Parse(StudentID.Text))
                    {
                        found = true;
                    }
                }
                if (found)
                {
                    MessageLabel.Text = "Record already exists.";
                }
                else
                {
                    Student newstudent = new Student(int.Parse(StudentID.Text), StudentName.Text, double.Parse(StudentCredits.Text), StudentEmergencyContact.Text);

                    StudentsList.Add(newstudent);
                    StudentListView.DataSource = StudentsList;
                    StudentListView.DataBind();
                }
            }
        }

        protected void Clear_Fields_Click(object sender, EventArgs e)
        {
            //clear all fields
            StudentID.Text = "";
            StudentName.Text = "";
            StudentCredits.Text = "";
            StudentEmergencyContact.Text = "";            
        }
    }
}