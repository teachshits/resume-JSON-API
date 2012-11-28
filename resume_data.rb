# Using "constants" and a global variable to allow the data to be accessed between the server script and the test suite.
# While not ideal, it is functional and a time saver when dealing with unfamiliar technologies (i.e. Sinatra and Heroku)
# and easier to deliver so that a potentially new database does not need to be installed and configured.

#everything except for CONTACTINFO is in an array to allow for easy additions to the category
CONTACTINFO = {
  "name" => "Alden Turner",
  "address" => "1921 Merner Ave.",
  "city" => "Cedar Falls",
  "state" => "IA",
  "zip" => "50613",
  "phone" => "319-504-2003",
  "email" => "alonzopt@gmail.com",
  "link" => [
    {
    "address" => "https://github.com/alonzopt",
    "title" => "Github"
    }
  ]
}

EDUCATION = [
    {
      "name" => "Iowa State University",
      "link" => "http://www.iastate.edu",
      "degree" => "Bachelor of Science",
      "graduation" => Time.utc(2010,5).to_i,
      "details" => "Double Major in Computer Science and Philosophy, Minor in English"
    }
  ]

TRADINGIN = {
  "name" => "Trading-In.com",
  "link" => "http://www.trading-in.com",
  "location" => "Ames, IA",
  "details" => "Front and back end development for a start up using Microsoft WISA stack; Microsoft SQL Server/T-SQL, C#, Entity Framework and LINQ, ASP.NET, HTML, Javascript with jQuery, and CSS controlled with SVN.",
  "positions" => [
      {
        "title" => "Lead Developer",
        "start" => Time.utc(2011,10).to_i,
        "end" => "Ongoing",
        "details" => "As Lead Programmer I am the primary troubleshooter, the primary contact for the other teams, coordinate the efforts of the small programming staff and I have redesigned and revised various subsystems. Some experience with PayPal Direct Payments and Express Checkout. Largest project was a back to front redesign of the main form for user-submitted content to use a series of dynamically loaded controls in addition to restructuring the associated database tables and stored procedures and reflecting these changes through out the entire system."
      },
      {
        "title" => "Independent Contractor",
        "start" => Time.utc(2011,7).to_i,
        "end" => Time.utc(2011,10).to_i,
        "details" => "As an independent contractor my primary duty was to coordinate and troubleshoot the integration of subsystems developed separately."
      }
    ]
}

CRU = {
  "name" => "Cru Wine Online",
  "link" => "http://www.cruwineonline.com",
  "location" => "Remote/St. Cloud, MN",
  "positions" => [
      {
        "title" => "Independent Contractor",
        "start" => Time.utc(2010,9).to_i,
        "end" => Time.utc(2012,3).to_i,
        "details" => "Front and back end development for a start up using Drupal; MySql, PHP, HTML, JavaScript with jQuery, and CSS. Projects include constructing several content types and templates, usage of the Google Feed API, automating site updates, writing an archive with a procedurally generated filter system, and creating a \"Favorite\" system for daily content. Solely responsible for the design, development, and testing of all projects, with the majority of work done remotely."
      }
    ]
}

SOLCTR = {
  "name" => "Iowa State IT Services",
  "link" => "http://it.iastate.edu/",
  "location" => "Ames, IA",
  "positions" => [
      {
        "title" => "Help Desk Assistant Level III",
        "start" => Time.utc(2005,8).to_i,
        "end" => Time.utc(2010,8).to_i,
        "details" => "Provided technical assistance to the students, faculty, and staff of Iowa State University, diagnosing and troubleshooting hardware, software, and networking issues, specializing in virus and malware removal.  Located, developed, and maintained procedures and tools to assist in the process of removing malware and viruses, which included programming in C# and AutoIt. Developed and implemented large group and one-on-one training for employees. Developed and maintained documentation on an internal wiki."
      }
    ]
}

KURE = {
  "name" => "KURE 88.5FM",
  "link" => "http://www.kure885.org/",
  "location" => "Ames, IA",
  "positions" => [
      {
        "title" => "Music Director",
        "start" => Time.utc(2008,8).to_i,
        "end" => Time.utc(2010,5).to_i,
        "details" => "As Music Director I was the main contact of the station for recording companies, distribution/promotion companies, and band representatives.  Additionally, I was responsible for the expansion and maintenance of the station's music library and for weekly reporting to the College Music Journal."
      },
      {
        "title" => "Programming Director",
        "start" => Time.utc(2007,8).to_i,
        "end" => Time.utc(2008,8).to_i,
        "details" => "As Programming Director responsibilities included the scheduling of on-air programming as well as the hiring, training, and dismissal of DJs."
      },
      {
        "title" => "DJ",
        "start" => Time.utc(2006,1).to_i,
        "end" => Time.utc(2010,5).to_i,
        "details" => "As a DJ I was responsible for a weekly two-hour show."
      }
    ]
}

JOBS = [TRADINGIN,CRU,SOLCTR,KURE]

SKILLS = [
  "C", 
  "C++", 
  "C#", 
  "Java", 
  "PHP", 
  "Python", 
  "Ruby", 
  "Visual Basic", 
  "SCHEME", 
  "ICE", 
  "AutoIt", 
  "CSS", 
  "HTML", 
  "ASP.NET", 
  "JavaScript (with jQuery)", 
  "Drupal", 
  "MongoDB", 
  "MySQL", 
  "T-SQL", 
  "LINQ", 
  "LaTeX"
]

$RESUME = {
  "contact" => CONTACTINFO,
  "education" => EDUCATION,
  "jobs" => JOBS,
  "skills" => SKILLS
}