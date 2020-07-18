using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Resume.Models
{
    public class ResumeObject
    {
        public int      Id_user { get; set; }
        public String   Firstname { get; set; }
        public String   Secondname { get; set; }
        public String   Patronymic { get; set; }
        public DateTime DOB { get; set; }
        public String   Ava_path { get; set; }

        public List<string> Emails { get; set; }
        public List<string> Phonenumbers { get; set; }
        public List<Languange> Languages { get; set; }


        public List<Education> Educations { get; set; }
        public List<string> Skills { get; set; }
        public List<Project> Projects { get; set; }
    }

    public class Languange
    {
        public string Name { get; set; }
        public string Lvl { get; set; }
    }

    public class Education
    {
        public string   Name { get; set; }
        public string   Speciality { get; set; }
        public DateTime Start_DT { get; set; }
        public DateTime End_DT { get; set; }
    }

    public class Project
    {
        public string Name { get; set; }
        public string Description { get; set; }
        public string Link { get; set; }
    }

}