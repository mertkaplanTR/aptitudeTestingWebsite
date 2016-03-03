--Exam tablosundan herhangi bir kaydýn silinmesini engelleyen trigger
create trigger DeleteExamTR 
on [Aptitude].[Exam]
for Delete
as
Print ('You can not delete this data !')
rollback transaction -- yaptýðý iþlemi geri aldýrýyor
go


--delete from [Aptitude].[Exam]
--where ExamID = 13

--Questionn tablosundan herhangi bir kayýt silinmeye çalýþýldýðýnda kaydý silmeyip IsActive'inin false yapan trigger
Create Trigger SetInActiveQuestþon
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
-- QuestionID si 4 olan sorunun IsActive kýsmý silinmesi yerine False oldu.