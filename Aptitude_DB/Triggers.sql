--Exam tablosundan herhangi bir kayd�n silinmesini engelleyen trigger
create trigger DeleteExamTR 
on [Aptitude].[Exam]
for Delete
as
Print ('You can not delete this data !')
rollback transaction -- yapt��� i�lemi geri ald�r�yor
go


--delete from [Aptitude].[Exam]
--where ExamID = 13

--Questionn tablosundan herhangi bir kay�t silinmeye �al���ld���nda kayd� silmeyip IsActive'inin false yapan trigger
Create Trigger SetInActiveQuest�on
On [Aptitude].[Question]
Instead Of Delete
As
declare @questionId int
begin
select @questionId=QuestionID from deleted
Update [Aptitude].[Question] Set IsActive = 0 
Where QuestionID =@questionId
end
go


--delete from [Aptitude].[Question]
--where QuestionID = 4
-- QuestionID si 4 olan sorunun IsActive k�sm� silinmesi yerine False oldu.