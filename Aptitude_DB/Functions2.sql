
Create Function [Aptitude].[CheckUserExist](@Email as nvarchar(50), @Password as int)
RETURNS VARCHAR(250)
AS BEGIN
    DECLARE @Result int=0
	Select @Result= [Aptitude].[User].UserID
	from [Aptitude].[User]
	where [Aptitude].[User].Email =@Email AND [Aptitude].[User].[Password]=@Password
    RETURN @Result
END

