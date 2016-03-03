--Views
--Sadece Base Categorileri getiren View
Create View GetBaseCategoriesandSubCategory As
Select C.CategoryName,C.CategoryID,B.CategoryName as SubCategoryName,B.CategoryID as SubCategoryID
From [Aptitude].[Category] as B
Join [Aptitude].[Category] as C
on B.BaseCategoryID = C.CategoryID
Go

select distinct CategoryName,CategoryID
from GetBaseCategoriesandSubCategory
Go

--Hangi Subjectin hangi kategoriye ve base categoriye baðlý olduðunu gosteren View
Create View SubjectandCategory As
Select Asub.SubjectName,ACat.CategoryName,cb.CategoryName as 'BaseCategoryName'
From [Aptitude].[Subject] as ASub
Join [Aptitude].[Category] as ACat
on ASub.CategoryID = ACat.CategoryID
join Aptitude.Category as cb
on ACat.BaseCategoryID=cb.CategoryID
Go
select *
from SubjectandCategory
Go

exec GetSubCategoriesByID @CategoryID = 1

Go
Alter View SubjectandCategory As  
Select Asub.SubjectName,ACat.CategoryName,cb.CategoryName as 'Base Category Name'
From [Aptitude].[Subject] as ASub
Join [Aptitude].[Category] as ACat
on ASub.CategoryID = ACat.CategoryID
join Aptitude.Category as cb
on ACat.BaseCategoryID=cb.CategoryID
Go

--select *
--from SubjectandCategory
Go 

Go
Create View GetSubNameandQuestinCount As
Select Asub.SubjectName, Count(Q.[QuestionID]) as QuestionNumber 
From [Aptitude].[Subject] as ASub
Join [Aptitude].[Question] as Q
on ASub.SubjectID = Q.SubjectID
Where Q.IsActive = 1
group by Asub.SubjectName
Go

select *
from GetSubNameandQuestinCount
--order by 2 DESC 
Go

-- Sorularýn içinde "Which" kelimesini arayan ve bunu hangi subjectde ve kategoride kaç tane olduðunu gosteren View
Create View FindInsideQuestions As
Select COUNT(Q.[QuestionID]) as QuestionNumber, S.SubjectName , C.CategoryName
From [Aptitude].[Question] as Q
Join [Aptitude].[Subject] as S
on Q.SubjectID = S.SubjectID
Join [Aptitude].[Category] as C
on S.CategoryID = C.CategoryID
Where Q.QDescription like '%Which%'
Group By S.SubjectName, C.CategoryName
Go

--select * 
--from FindInsideQuestions
--order by 1 ASC