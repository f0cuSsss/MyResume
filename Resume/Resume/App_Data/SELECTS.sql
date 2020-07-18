--CREATE PROCEDURE [dbo].[Procedure]
--AS
--	SELECT * FROM user
--RETURN 0


-- get user
--exec GetUserById @id = 2

-- get emails of user
--SELECT email FROM email WHERE id_user = 2

-- get phones of user
--SELECT number FROM phone_number WHERE id_user = 2

-- get languages of user
--exec GetLanguagesWithLvlByUserId @id_user = 2

--SELECT ed.[name], edh.speciality, edh.start_DT, edh.end_DT
--FROM [education] as ed
--JOIN [education_has_user] as edh ON edh.id_education = ed.id
--AND edh.id_user = 2