--insert into [user] (firstname, secondname, dob, ava_path) values (N'Vladyslav', N'Parubchenko', '2000-11-15', '/Images/Ava.jpeg');


--insert into [language_lvl] ([name]) 
--values (N'Beginner'), (N'Elementary'), (N'Pre-Intermediate'), (N'Intermediate'), 
--			(N'Upper Intermediate'), (N'Advanced'), (N'Mastery'), (N'Native');

--insert into [language] ([name]) 
--values (N'English'), (N'Russian'), (N'Ukrainian');

--insert into [languages_has_user] ([id_user], [id_language], [id_lang_lvl]) 
--values (2, 1, 4), (2, 2, 8), (2, 2, 8);

--insert into [email] ([id_user], [email]) 
--values (2, N'vladislav.parubchenko@gmail.com');

--insert into [phone_number] ([id_user], [number]) 
--values (2, N'+380666352216'), (2, N'+380631058700');

--insert into [education] ([name]) 
--values  (N'Mykolayiv Construction College of Construction and Architecture'), 
--		(N'IT-STEP Academy');

--insert into [education_has_user] ([id_user], [id_education], [speciality], [start_DT], [end_DT]) 
--values  (2, 1, N'121 «Software Engineering»', '2016-09-01', '2020-06-30'),
--		(2, 2, N'Software developer', '2018-06-24', '2021-01-24');


--insert into [project] ([name], [description], [link]) 
--values 
--(N'Basic ASP.NET project', N'ASP.NET MVC 5 ~ JS, jQuery, Bootstrap, AJAX ~ MSSQL ~ ADO.NET', N'https://github.com/f0cuSsss/ASP.NET_MVC_Basic'),
--(N'Diagram builder (drawing a pie and bar chart)', N'WinForms', N'https://github.com/f0cuSsss/WF_DiagramBuilder'),
--(N'Travel agency database', N'MSSQL', N'https://github.com/f0cuSsss/Travel_DB'),
--(N'Telegram design. Conversation with a bot', N'WPF', N'https://github.com/f0cuSsss/WPF_ChatBot_TelegramDesign');

--insert into [projects_has_user] ([id_user], [id_project]) 
--values 
--(2, 1), 
--(2, 2), 
--(2, 3), 
--(2, 4);


--insert into [skills] ([name]) 
--values 
--(N'development of applications for Windows on the WinForms / WPF'),
--(N'cross-platform development of mobile applications on Xamarin Forms'),
--(N'MSSQL, MySQL'),
--(N'web application development / API on ASP.NET MVC, NodeJS'),
--(N'OOA, OOD, OOP'),
--(N'UML'),
--(N'ADO.NET, Entity Framework'),
--(N'JS, jQuery, AngularJS, ReactJS'),
--(N'AJAX, SMTP, REST'),
--(N'HTML, CSS, Bootstrap '),
--(N'Design patterns'),
--(N'git | Azure, Github');

--insert into [skills_has_user] ([id_user], [id_skill]) 
--values 
--(2, 1),
--(2, 2),
--(2, 3),
--(2, 4),
--(2, 5),
--(2, 6),
--(2, 7),
--(2, 8),
--(2, 9),
--(2, 10),
--(2, 11),
--(2, 12);

--insert into [certificates] () values ();

