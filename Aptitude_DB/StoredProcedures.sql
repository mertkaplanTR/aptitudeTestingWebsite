--Categories
Create Procedure InsertCategory(@CategoryName nvarchar(50),@BaseCategoryID int)
As
Insert into [Aptitude].[Category] (CategoryName,BaseCategoryID) Values (@CategoryName,@BaseCategoryID)
Go
exec InsertCategory 'Programming',null
go
exec InsertCategory 'C Programming',1
go
exec InsertCategory 'C# Programming',1
go
exec InsertCategory 'C++ Programming',1
go
exec InsertCategory 'Engineering',null
go
exec InsertCategory 'Networking Questions',4
go
exec InsertCategory 'Database Questions',4
go
exec InsertCategory 'Civil Engineering Questions',4
go
exec InsertCategory 'Medical/Science',null
go
exec InsertCategory 'Medical/Science',null
go
exec InsertCategory 'Microbiology',9
go
exec InsertCategory 'Biochemistry',9
go
exec InsertCategory 'Biotechnology',9
go
Create Procedure UpdateCategory(@CategoryID int,@CategoryName nvarchar(50),@BaseCategoryID int)
As
Update [Aptitude].[Category] 
Set [CategoryName] = @CategoryName,[BaseCategoryID]=@BaseCategoryID Where CategoryID = @CategoryID 
go
Create Procedure DeleteCategory (@CategoryID int)
As
Delete From [Aptitude].[Category] Where [CategoryID] = @CategoryID
Go

--Subjects
Create Procedure InsertSubject(@SubjectName nvarchar(50),@CategoryID int)
As
Insert Into [Aptitude].[Subject] (SubjectName,CategoryID) Values (@SubjectName,@CategoryID)
Go
exec InsertSubject 'Arrays',2
go
exec InsertSubject 'Strings',2
go
exec InsertSubject 'Pointers',2
go
exec InsertSubject 'OOPS Concepts',7
go
exec InsertSubject 'Objects and Classes',7
go
exec InsertSubject 'Constructors and Destructors',7
go
exec InsertSubject '.NET Framework',3
go
exec InsertSubject 'Interfaces',3
go
exec InsertSubject 'Networking Basics',5
go
exec InsertSubject 'IOS and Security Device Manager',5
go
exec InsertSubject 'Introduction the Database',6
go
exec InsertSubject 'Introduction the SQL',6
go
exec InsertSubject 'Micro Organisms',10
go
exec InsertSubject 'Bacteria Morphology',10
go
exec InsertSubject 'Water, pH and Macromolecules',11
go
exec InsertSubject 'Structure and Properties of Amino Acids',11
go

Create Procedure UpdateSubject(@SubjectID int,@SubjectName nvarchar(50),@CategoryID int)
As
Update [Aptitude].[Subject]
Set [SubjectName] = @SubjectName , CategoryID = @CategoryID 
Where [SubjectID] = @SubjectID
Go

Create Procedure DeleteSubject(@SubjectID int)
As
Delete From [Aptitude].[Subject] Where SubjectID = @SubjectID 
Go

--Questions
-- IsACtive kýsmý => Database den herhangi bir kayýt silmek yerine kullanýcýya gösterilmemesi gereken sorularýn 
--IsActive alanýný false yaparak bu soruyu kullanýcýya vermeyiz kullanýcý sadece IsActive i true olan sorularý görür

Create Procedure InsertQuestion(@QDescription nvarchar(350),@IsActive bit,@SubjectID int)
As
Insert Into [Aptitude].[Question] (QDescription,IsActive,SubjectID) Values (@QDescription,@IsActive,@SubjectID)
Go
exec InsertQuestion 'What will happen if in C program you assign value to an array element whose subscript exceeds the size of array?',1,1
go
exec InsertQuestion 'In C, if you pass an array as an argument to a function, what actually gets passed?',1,1
go
exec InsertQuestion 'What does the following declaration mean? int (*ptr)[10];',1,1
go
exec InsertQuestion 'An array elements are always stored in ________ memory locations.',1,1
go
exec InsertQuestion 'What is the maximum number of dimensions an array in C may have?',1,1
Go
exec InsertQuestion 'Array passed as an argument to a function is interpreted as',1,1
Go
exec InsertQuestion 'If the two strings are identical, then strcmp() function returns',1,1
Go
exec InsertQuestion 'Which of the following function is used to find the first occurrence of a given string in another string?',1,1
Go
exec InsertQuestion 'int a[5] = {1,2,3} What is the value of a[4]?',1,1
Go
exec InsertQuestion 'String concatenation means,',1,1
Go
exec InsertQuestion 'Which of the following function sets first n characters of a string to a given character?',1,2
Go
exec InsertQuestion 'If the two strings are identical, then strcmp() function returns',1,2
Go
exec InsertQuestion 'The library function used to find the last occurrence of a character in a string is',1,2
Go
exec InsertQuestion 'Which of the following function is used to find the first occurrence of a given string in another string?',1,2
Go
exec InsertQuestion 'Which of the following function is more appropriate for reading in a multi-word string?',1,2
Go
exec InsertQuestion 'Is there any difference between the two statements?char *ch = "IndiaBIX"; - char ch[] = "IndiaBIX";',1,2
Go
exec InsertQuestion 'The function sprintf() works like printf(), but operates on ____',1,2
Go
exec InsertQuestion 'Pointer is special kind of variable which is used to stored __________ of the variable.',1,3
Go
exec InsertQuestion 'Pointer variable is declared using preceding _________ sign.',1,3
Go
exec InsertQuestion 'Consider the 32 bit compiler. We need to store address of integer variable to integer pointer. What will be the size of integer pointer ?',1,3
Go
exec InsertQuestion 'How many bytes are occupied by near, far and huge pointers (DOS)?',1,3
Go
exec InsertQuestion 'In which header file is the NULL macro defined?',1,3
Go
exec InsertQuestion 'What would be the equivalent pointer expression for referring the array element a[i][j][k][l]',1,3
Go
exec InsertQuestion 'Which of the following type of class allows only one object of it to be created?',1,4
Go
exec InsertQuestion 'Which of the following is not a type of constructor?',1,4
Go
exec InsertQuestion 'Which of the following statements is correct?',1,4
Go
exec InsertQuestion 'Which of the following is not the member of class?',1,4
Go
exec InsertQuestion 'Which of the following concepts means determining at runtime what method to invoke?',1,4
Go
exec InsertQuestion 'Which of the following term is used for a function defined inside a class?',1,4
Go
exec InsertQuestion 'How many instances of an abstract class can be created?',1,4
Go
exec InsertQuestion 'Why reference is not same as a pointer?',1,6
Go
exec InsertQuestion 'A constructor that accepts __________ parameters is called the default constructor.',1,6
Go
exec InsertQuestion 'Can a class have virtual destructor?',1,6
Go
exec InsertQuestion 'Destructor has the same name as the constructor and it is preceded by ______ .',1,6
Go
exec InsertQuestion 'For automatic objects, constructors and destructors are called each time the objects',1,6
Go
exec InsertQuestion 'Copy constructor must receive its arguments by __________ .',1,6
Go
exec InsertQuestion 'Which of the following statements is incorrect?',1,5
Go
exec InsertQuestion 'Which of the following statements is incorrect?',1,5
Go
exec InsertQuestion 'Which of the following keywords is used to control access to a class member?',1,5
Go
exec InsertQuestion 'Which of the following components of the .NET framework provide an extensible set of classes that can be used by any .NET compliant programming language?',1,7
Go
exec InsertQuestion 'Which of the following .NET components can be used to remove unused references from the managed heap?',1,7
Go
exec InsertQuestion 'Which of the following assemblies can be stored in Global Assembly Cache?',1,7
Go
exec InsertQuestion 'Code that targets the Common Language Runtime is known as',1,7
Go
exec InsertQuestion 'Which of the following is the root of the .NET type hierarchy?',1,7
Go
exec InsertQuestion 'A class implements two interfaces each containing three methods.The class contains no instance data. Which of the following correctly indicate the size of the object created from this class?',1,8
Go
exec InsertQuestion 'Which of the following statements is correct about an interface used in C#.NET?',1,8
Go
exec InsertQuestion 'Which of the following statements is correct about Interfaces used in C#.NET?',1,8
Go
exec InsertQuestion 'Which of the following statements is correct about an interface used in C#.NET?',1,8
Go
exec InsertQuestion 'Which of the following statements is correct about an interface?',1,8


Go
exec InsertQuestion 'How long is an IPv6 address?',1,9
Go
exec InsertQuestion 'What command is used to create a backup configuration?',1,9
Go
exec InsertQuestion 'To back up an IOS, what command will you use?',1,9

Go
exec InsertQuestion 'What protocol does PPP use to identify the Network layer protocol?',1,9
Go
exec InsertQuestion 'Which protocol does DHCP use at the Transport layer?',1,9
Go
exec InsertQuestion 'Where is a hub specified in the OSI model?',1,9
Go
exec InsertQuestion 'Which of the following commands sets the secret password to Cisco?',1,9
Go
exec InsertQuestion 'Which of the following commands displays the configurable parameters and statistics of all interfaces on a router?',1,9
Go
exec InsertQuestion 'Which command will delete the contents of NVRAM on a router?',1,9
Go
exec InsertQuestion 'What keystroke will terminate setup mode?',1,9
Go
exec InsertQuestion 'How many simultaneous Telnet sessions does a Cisco router support by default?',1,9
Go


exec InsertQuestion 'The DBMS acts as an interface between what two components of an enterprise-class database system?',1,11
Go
exec InsertQuestion 'The following are components of a database except ________ .',1,11
Go
exec InsertQuestion 'An on-line commercial site such as Amazon.com is an example of a(n) ________ .',1,11
Go
exec InsertQuestion 'SQL stands for ________ .',1,11
Go
exec InsertQuestion 'The following are functions of a DBMS except ________ .',1,11
Go
exec InsertQuestion 'Helping people keep track of things is the purpose of a(n) ________ .',1,11
Go
exec InsertQuestion 'You can add a row using SQL in a database with which of the following?',1,12
Go
exec InsertQuestion 'The command to remove rows from a table "CUSTOMER" is:',1,12
Go
exec InsertQuestion 'The SQL WHERE clause:',1,12
Go
exec InsertQuestion 'A view is which of the following?',1,12
Go
exec InsertQuestion 'The command to eliminate a table from a database is:',1,12
Go
exec InsertQuestion 'Which of the following is valid SQL for an Index?',1,12
Go
exec InsertQuestion 'The phospholipids present in cytoplasm membrane of the archaeo-bacteria is',1,13
Go
exec InsertQuestion 'The oldest eukaryotic organisms are considered to be',1,13
Go
exec InsertQuestion 'The phospholipids present in cytoplasm membrane of eubacteria is mainly',1,13
Go
exec InsertQuestion 'Which were the investigators lived at the same time?',1,13
Go
exec InsertQuestion 'Mycoplasmas are different from the other prokaryotes by',1,13
Go
exec InsertQuestion 'Which of the following bacteria lack a cell wall and are therefore resistant to penicillin?',1,14
Go
exec InsertQuestion 'A cluster of polar flagella is called',1,14
Go
exec InsertQuestion 'The cooci which mostly occur in single or pairs are',1,14
Go
exec InsertQuestion 'Genetic system is located in the prokaryotes in',1,14
Go
exec InsertQuestion 'Which is most likely to be exposed on the surface of a gram-negative bacterium?',1,14
Go
exec InsertQuestion 'Which of the following organic groups are found in naturally occuring amino acids?',1,15
Go
exec InsertQuestion 'The pH of a solution is determined by',1,15
Go
exec InsertQuestion 'The reactions of molecules',1,15
Go
exec InsertQuestion 'A Bronsted acid becomes __________ upon losing a proton.',1,15
Go
exec InsertQuestion 'Who discovered and described the blood groups (ABO) classification?',1,15
Go
exec InsertQuestion 'Hydrogen bonds in a-helices are',1,16
Go
exec InsertQuestion 'Which of the following is an example of tertiary structure in a protein?',1,16
Go
exec InsertQuestion 'The major element of secondary structure in myoglobin and hemoglobin is',1,16
Go
exec InsertQuestion 'What was the first protein whose complete tertiary structure was determined?',1,16
Go
exec InsertQuestion 'The nature of peptide bond can be best explained as',1,16
Go


Create Procedure UpdateQuestion(@QuestionID int,@QDescription nvarchar(350),@SubjectID int, @IsActive bit)
As
Update [Aptitude].[Question]
Set [QDescription] = @QDescription, [IsActive] = @IsActive, [SubjectID] = @SubjectID Where QuestionID = @QuestionID
Go

Create Procedure DeleteQuestion(@QuestionID int)
As
Delete From [Aptitude].[Question] Where QuestionID = @QuestionID 
Go




--Options
Create Procedure InsertOption(@OptionName char,@OptionDescription NVARCHAR(150),@IsAnswer bit,@QuestionID int)
As
Insert Into [Aptitude].[Option] (OptionName,OptionDescription,IsAnswer,QuestionID)
                         Values (@OptionName,@OptionDescription,@IsAnswer,@QuestionID)
Go
exec InsertOption 'A','The element will be set to 0.',0,1
exec InsertOption 'B','The compiler would report an error.',0,1
exec InsertOption 'C','The program may crash if some important data gets overwritten.',1,1
exec InsertOption 'D','The array size would appropriately grow.',0,1
Go
exec InsertOption 'A','Value of elements in array.',0,2
exec InsertOption 'B','First element of the array.',0,2
exec InsertOption 'C','Base address of the array.',1,2
exec InsertOption 'D','Address of the last element of array.',0,2
Go
exec InsertOption 'A','ptr is array of pointers to 10 integers.',0,3
exec InsertOption 'B','ptr is a pointer to an array of 10 integers.',1,3
exec InsertOption 'C','ptr is an array of 10 integers.',0,3
exec InsertOption 'D','ptr is an pointer to array.',0,3
Go
exec InsertOption 'A','Sequential.',1,4
exec InsertOption 'B','Random.',0,4
exec InsertOption 'C','Sequential and Random.',0,4
exec InsertOption 'D','None of the Above.',0,4
Go
exec InsertOption 'A','2',0,5
exec InsertOption 'B','8',0,5
exec InsertOption 'C','20',0,5
exec InsertOption 'D','Theoratically no limit. The only practical limits are memory size and compilers.',1,5
Go
exec InsertOption 'A','Address of the array.',0,6
exec InsertOption 'B','Values of the first elements of the array.',0,6
exec InsertOption 'C','Address of the first element of the array.',1,6
exec InsertOption 'D','Number of element of the array.',0,6
Go
exec InsertOption 'A','1',0,7
exec InsertOption 'B','0',1,7
exec InsertOption 'C','-1',0,7
exec InsertOption 'D','None of these.',0,7
Go
exec InsertOption 'A','strchr().',0,8
exec InsertOption 'B','strrchr().',0,8
exec InsertOption 'C','strstr().',1,8
exec InsertOption 'D','None of these.',0,8
Go
exec InsertOption 'A','3',0,9
exec InsertOption 'B','1',0,9
exec InsertOption 'C','2',0,9
exec InsertOption 'D','Garbage Value',1,9
Go
exec InsertOption 'A','Combining two strings.',1,10
exec InsertOption 'B','Extracting a substring out of a string.',0,10
exec InsertOption 'C','Partitioning the string into two strings.',0,10
exec InsertOption 'D','Merging two strings.',0,10
Go
exec InsertOption 'A','strinit()',0,11
exec InsertOption 'B','strnset()',1,11
exec InsertOption 'C','strset()',0,11
exec InsertOption 'D','strcset()',0,11
Go
exec InsertOption 'A','-1',0,12
exec InsertOption 'B','1',0,12
exec InsertOption 'C','0',1,12
exec InsertOption 'D','Null',0,12
Go
exec InsertOption 'A','strnstr()',0,13
exec InsertOption 'B','laststr()',0,13
exec InsertOption 'C','strrchr()',1,13
exec InsertOption 'D','strstr()',0,13
Go
exec InsertOption 'A','strchr()',0,14
exec InsertOption 'B','strrchr()',0,14
exec InsertOption 'C','strstr()',1,14
exec InsertOption 'D','strnset()',0,14
Go
exec InsertOption 'A','printf();',0,15
exec InsertOption 'B','gets();',1,15
exec InsertOption 'C','scanf();',0,15
exec InsertOption 'D','puts();',0,15
Go
exec InsertOption 'A','Yes',1,16
exec InsertOption 'B','No',0,16
Go
exec InsertOption 'A','Data file',0,17
exec InsertOption 'B','stderr',0,17
exec InsertOption 'C','string',1,17
exec InsertOption 'D','stdin',0,17
Go
exec InsertOption 'A','Address',1,18
exec InsertOption 'B','Data Type',0,18
exec InsertOption 'C','Value',0,18
exec InsertOption 'D','Variable Name',0,18
Go
exec InsertOption 'A','^',0,19
exec InsertOption 'B','*',1,19
exec InsertOption 'C','%',0,19
exec InsertOption 'D','|',0,19
Go
exec InsertOption 'A','4 Bytes',0,20
exec InsertOption 'B','8 Bytes',0,20
exec InsertOption 'C','10 Bytes',0,20
exec InsertOption 'D','2 Bytes',1,20
Go
exec InsertOption 'A','	near=2 far=4 huge=4',1,21
exec InsertOption 'B','near=4 far=8 huge=8',0,21
exec InsertOption 'C','near=2 far=4 huge=8',0,21
exec InsertOption 'D','near=4 far=4 huge=8',0,21
Go
exec InsertOption 'A','stdio.h',0,22
exec InsertOption 'B','stddef.h',0,22
exec InsertOption 'C','stdio.h and stddef.h',1,22
exec InsertOption 'D','math.h',0,22
Go
exec InsertOption 'A','((((a+i)+j)+k)+l)',0,23
exec InsertOption 'B','*(*(*(*(a+i)+j)+k)+l)',0,23
exec InsertOption 'C','(((a+i)+j)+k+l)',1,23
exec InsertOption 'D','((a+i)+j+k+l)',0,23
Go
exec InsertOption 'A','Virtual class',0,24
exec InsertOption 'B','Abstract class',0,24
exec InsertOption 'C','Singleton class',1,24
exec InsertOption 'D','Friend class',0,24
Go
exec InsertOption 'A','Copy constructor',0,25
exec InsertOption 'B','Friend constructor',1,25
exec InsertOption 'C','Default constructor',0,25
exec InsertOption 'D','Parameterized constructor',0,25
Go
exec InsertOption 'A','Base class pointer cannot point to derived class.',0,26
exec InsertOption 'B','Derived class pointer cannot point to base class.',1,26
exec InsertOption 'C','Pointer to derived class cannot be created.',0,26
exec InsertOption 'D','Pointer to base class cannot be created.',0,26
Go
exec InsertOption 'A','Static function',0,27
exec InsertOption 'B','Friend function',1,27
exec InsertOption 'C','Const function',0,27
exec InsertOption 'D','Virtual functions',0,27
Go
exec InsertOption 'A','Data hiding',0,28
exec InsertOption 'B','Dynamic Typing',0,28
exec InsertOption 'C','Dynamic binding',1,28
exec InsertOption 'D','Dynamic loading',0,28
Go
exec InsertOption 'A','Member Variable',0,29
exec InsertOption 'B','Member function',1,29
exec InsertOption 'C','Class function',0,29
exec InsertOption 'D','Classic function',0,29
Go
exec InsertOption 'A','1',0,30
exec InsertOption 'B','5',0,30
exec InsertOption 'C','13',0,30
exec InsertOption 'D','0',1,30
Go
exec InsertOption 'A', 'A reference can never be null.',0,31
exec InsertOption 'B','A reference once established cannot be changed.',0,31
exec InsertOption 'C','Reference doesnt need an explicit dereferencing mechanism.',0,31
exec InsertOption 'D','All of the above.',1,31
Go
exec InsertOption 'A','Friend keyword can be used in the class to allow access to another class.',0,32
exec InsertOption 'B','Friend keyword can be used for a function in the public section of a class.',0,32
exec InsertOption 'C','Friend keyword can be used for a function in the private section of a class.',0,32
exec InsertOption 'D','Friend keyword can be used on main().',1,32
Go
exec InsertOption 'A','one',0,33
exec InsertOption 'B','two',0,33
exec InsertOption 'C','no',1,33
exec InsertOption 'D','four',0,33
Go
exec InsertOption 'A','Yes it is',1,34
exec InsertOption 'B','No it is not',0,34
Go
exec InsertOption 'A','!',0,35
exec InsertOption 'B','?',0,35
exec InsertOption 'C','~',1,35
exec InsertOption 'D','$',0,35
Go
exec InsertOption 'A','enter and leave scope',1,36
exec InsertOption 'B','inherit parent class',0,36
exec InsertOption 'C','are constructed',0,36
exec InsertOption 'D','are destroyed',0,36
Go
exec InsertOption 'A','either pass-by-value or pass-by-reference',0,37
exec InsertOption 'B','only pass-by-value',0,37
exec InsertOption 'C','only pass-by-reference',1,37
exec InsertOption 'D','	only pass by address',0,37
Go
exec InsertOption 'A','Friend keyword can be used in the class to allow access to another class.',0,38
exec InsertOption 'B','Friend keyword can be used for a function in the public section of a class.',0,38
exec InsertOption 'C','Friend keyword can be used for a function in the private section of a class.',0,38
exec InsertOption 'D','Friend keyword can be used on main().',1,38
Go
exec InsertOption 'A','Default',0,39
exec InsertOption 'B','Break',0,39
exec InsertOption 'C','Protected',1,39
exec InsertOption 'D','Asm',0,39
Go
exec InsertOption 'A','.NET class libraries',1,40
exec InsertOption 'B','Common Language Runtime',0,40
exec InsertOption 'C','	Common Language Infrastructure',0,40
exec InsertOption 'D','Component Object Mode',0,40
Go
exec InsertOption 'A','Common Language Infrastructure',0,41
exec InsertOption 'B','CLR',0,41
exec InsertOption 'C','Garbage Collector',1,41
exec InsertOption 'D','Class Loader',0,41
Go
exec InsertOption 'A','Private Assemblies',0,42
exec InsertOption 'B','Private Assemblies',0,42
exec InsertOption 'C','Shared Assemblies',1,42
exec InsertOption 'D','Public Assemblies',0,42
Go
exec InsertOption 'A','Unmanaged',0,43
exec InsertOption 'B','Unmanaged',0,43
exec InsertOption 'C','Legacy',0,43
exec InsertOption 'D','Managed Code',1,43
Go
exec InsertOption 'A','System.Object',1,44
exec InsertOption 'B','System.Type',0,44
exec InsertOption 'C','System.Base',0,44
exec InsertOption 'D','System.Parent',0,44
Go
exec InsertOption 'A','12 bytes',0,45
exec InsertOption 'B','24 bytes',1,45
exec InsertOption 'C','0 byte',0,45
exec InsertOption 'D','8 bytes',0,45
Go
exec InsertOption 'A','One class can implement only one interface.',0,46
exec InsertOption 'B','From two base interfaces a new interface cannot be inherited.',0,46
exec InsertOption 'C','Interfaces cannot be inherited.',0,46
exec InsertOption 'D','Properties can be declared inside an interface.',1,46
Go
exec InsertOption 'A','All interfaces are derived from an Object class.',0,47
exec InsertOption 'B','Interfaces can be inherited.',1,47
exec InsertOption 'C','All interfaces are derived from an Object interface.',0,47
exec InsertOption 'D','Interfaces can contain only method declaration.',0,47
Go
exec InsertOption 'A','A class cannot implement an interface partially.',0,48
exec InsertOption 'B','An interface can contain static methods.',1,48
exec InsertOption 'C','An interface can contain static data.',0,48
exec InsertOption 'D','Multiple interface inheritance is not allowed.',0,48
Go
exec InsertOption 'A','One interface can be implemented in another interface.',0,49
exec InsertOption 'B','An interface can be implemented by multiple classes in the same program.',0,49
exec InsertOption 'C','A class that implements an interface can explicitly implement members of that interface.',1,49
exec InsertOption 'D','The functions declared in an interface have a body.',0,49
Go
exec InsertOption 'A','32 bits',0,50
exec InsertOption 'B','128 bytes',0,50
exec InsertOption 'C','64 bits',0,50
exec InsertOption 'D','128 bits',1,50
Go
exec InsertOption 'A','copy running backup',0,51
exec InsertOption 'B','copy running-config startup-config',1,51
exec InsertOption 'C','config mem',0,51
exec InsertOption 'D','wr mem',0,51
Go
exec InsertOption 'A','backup IOS disk',0,52
exec InsertOption 'B','copy ios tftp',0,52
exec InsertOption 'C','copy tftp flash',0,52
exec InsertOption 'D','copy flash tftp',1,52
Go
exec InsertOption 'A','line telnet 0 4',0,53
exec InsertOption 'B','line aux 0 4',0,53
exec InsertOption 'C','line vty 0 4',1,53
exec InsertOption 'D','line con 0',0,53
Go
exec InsertOption 'A','IP',0,54
exec InsertOption 'B','TCP',0,54
exec InsertOption 'C','UDP',1,54
exec InsertOption 'D','ARP',0,54
Go
exec InsertOption 'A','Session layer',0,55
exec InsertOption 'B','Physical layer',1,55
exec InsertOption 'C','Data Link layer',0,55
exec InsertOption 'D','Application layer',0,55
Go
exec InsertOption 'A','enable secret password Cisco',0,56
exec InsertOption 'B','enable secret cisco',0,56
exec InsertOption 'C','enable secret Cisco',1,56
exec InsertOption 'D','enable password Cisco',0,56
Go
exec InsertOption 'A','show running-config',0,57
exec InsertOption 'B','show startup-config',0,57
exec InsertOption 'C','show interfaces',1,57
exec InsertOption 'D','show versions',0,57
Go
exec InsertOption 'A','delete NVRAM',0,58
exec InsertOption 'B','delete startup-config',0,58
exec InsertOption 'C','erase NVRAM',0,58
exec InsertOption 'D','erase start',1,58
Go
exec InsertOption 'A','Ctrl+Z',0,59
exec InsertOption 'B','Ctrl+^',0,59
exec InsertOption 'C','Ctrl+C',1,59
exec InsertOption 'D','Ctrl+Shift+^',0,59
Go
exec InsertOption 'A','2',0,60
exec InsertOption 'B','3',0,60
exec InsertOption 'C','4',0,60
exec InsertOption 'D','5',1,60
Go
exec InsertOption 'A','Database application and the database',1,61
exec InsertOption 'B','Data and the database',0,61
exec InsertOption 'C','The user and the database application',0,61
exec InsertOption 'D','Database application and SQL',0,61
Go
exec InsertOption 'A','user data',0,62
exec InsertOption 'B','metadata',0,62
exec InsertOption 'C','reports',1,62
exec InsertOption 'D','indexes',0,62
Go
exec InsertOption 'A','single-user database application',0,63
exec InsertOption 'B','multiuser database application',0,63
exec InsertOption 'C','e-commerce database application',1,63
exec InsertOption 'D','data mining database application',0,63
Go
exec InsertOption 'A','Structured Query Language',1,64
exec InsertOption 'B','Sequential Query Language',0,64
exec InsertOption 'C','Structured Question Language',0,64
exec InsertOption 'D','Sequential Question Language',0,64
Go
exec InsertOption 'A','creating and processing forms',1,65
exec InsertOption 'B','creating databases',0,65
exec InsertOption 'C','processing data',0,65
exec InsertOption 'D','administrating databases',0,65
Go
exec InsertOption 'A','database',1,66
exec InsertOption 'B','table',0,66
exec InsertOption 'C','instance',0,66
exec InsertOption 'D','relationship',0,66
Go
exec InsertOption 'A','ADD',0,67
exec InsertOption 'B','CREATE',0,67
exec InsertOption 'C','INSERT',1,67
exec InsertOption 'D','MAKE',0,67
Go
exec InsertOption 'A','DELETE FROM CUSTOMER WHERE...',1,68
exec InsertOption 'B','SELECT FROM CUSTOMER WHERE ...',0,68
exec InsertOption 'C','REMOVE FROM CUSTOMER WHERE ...',0,68
exec InsertOption 'D','UPDATE FROM CUSTOMER WHERE ...',0,68
Go
exec InsertOption 'A','limits the column data that are returned.',0,69
exec InsertOption 'B','limits the row data are returned.',1,69
exec InsertOption 'C','Both A and B are correct.',0,69
exec InsertOption 'D','Neither A nor B are correct.',0,69
Go
exec InsertOption 'A','A virtual table that can be accessed via SQL commands',1,70
exec InsertOption 'B','A virtual table that cannot be accessed via SQL commands',0,70
exec InsertOption 'C','A base table that can be accessed via SQL commands',0,70
exec InsertOption 'D','A base table that cannot be accessed via SQL commands',0,70
Go
exec InsertOption 'A','REMOVE TABLE CUSTOMER;',0,71
exec InsertOption 'B','DROP TABLE CUSTOMER;',1,71
exec InsertOption 'C','DELETE TABLE CUSTOMER;',0,71
exec InsertOption 'D','UPDATE TABLE CUSTOMER;',0,71
Go
exec InsertOption 'A','CREATE INDEX ID;',1,72
exec InsertOption 'B','CHANGE INDEX ID;',0,72
exec InsertOption 'C','ADD INDEX ID;',0,72
exec InsertOption 'D','REMOVE INDEX ID;',0,72
Go
exec InsertOption 'A','phosphoglycerides',0,73
exec InsertOption 'B','polyisoprenoid',0,73
exec InsertOption 'C','polyisoprenoid branched chain lipids',1,73
exec InsertOption 'D','none of the above',0,73
Go
exec InsertOption 'A','diplomonads like Giardia',0,74
exec InsertOption 'B','archaea',1,74
exec InsertOption 'C','fungi',0,74
exec InsertOption 'D','animals',0,74
Go
exec InsertOption 'A','phosphoglycerides',0,75
exec InsertOption 'B','phosphoglycerides',1,75
exec InsertOption 'C','phospholipoprotein',0,75
exec InsertOption 'D','none of these',0,75
Go
exec InsertOption 'A','Koch and Pasteur',1,76
exec InsertOption 'B','Darwin and Woese',0,76
exec InsertOption 'C','Van Leeuenhoek and Ricketts',0,76
exec InsertOption 'D','Berg and Hooke',0,76
Go
exec InsertOption 'A','presence of chitin in cell walls',0,77
exec InsertOption 'B','presence of murrain in cell walls',0,77
exec InsertOption 'C','presence of proteins in cell walls',1,77
exec InsertOption 'D','absence of cell wall itself',0,77
Go
exec InsertOption 'A','Cyanobacteria',0,78
exec InsertOption 'B','Mycoplasmas',1,78
exec InsertOption 'C','Bdellovibrios',0,78
exec InsertOption 'D','Spirochetes',0,78
Go
exec InsertOption 'A','lophotrichous',0,79
exec InsertOption 'B','amphitrichous',0,79
exec InsertOption 'C','monotrichous',1,79
exec InsertOption 'D','petritrichous',0,79
Go
exec InsertOption 'A','Streptococci',0,80
exec InsertOption 'B','Diplococci',0,80
exec InsertOption 'C','Tetracocci',0,80
exec InsertOption 'D','	None of these',1,80
Go
exec InsertOption 'A','nucleoid',1,81
exec InsertOption 'B','chromatin',0,81
exec InsertOption 'C','nuclear material',0,81
exec InsertOption 'D','all of these',0,81
Go
exec InsertOption 'A','Pore protein (porin)',0,82
exec InsertOption 'B','Protein involved in energy generation',0,82
exec InsertOption 'C','Lipoteichoic acid',1,82
exec InsertOption 'D','Phospholipids',0,82
Go
exec InsertOption 'A','Guanidinium ',0,83
exec InsertOption 'B','Indole',0,83
exec InsertOption 'C','Imidazole acid',0,83
exec InsertOption 'D','All of these',1,83
Go
exec InsertOption 'A','concentration of salt ',1,84
exec InsertOption 'B','relative concentration of acids and bases',0,84
exec InsertOption 'C','dielectric constant of the medium',0,84
exec InsertOption 'D','environmental effect',0,84
Go
exec InsertOption 'A','are the reactions of the functional groups',1,85
exec InsertOption 'B','are independent of the functional groups',0,85
exec InsertOption 'C','require an enzyme in all cases',0,85
exec InsertOption 'D','all of the above',0,85
Go
exec InsertOption 'A','highly reactive',1,86
exec InsertOption 'B','its conjugate acid',0,86
exec InsertOption 'C','its conjugate base',0,86
exec InsertOption 'D','a hydronium ion',0,86
Go
exec InsertOption 'A','Theodor Kocher',0,87
exec InsertOption 'B','Karl Landsteiner',1,87
exec InsertOption 'C','Otto Warburg',0,87
exec InsertOption 'D','Karl Hooper',0,87
Go
exec InsertOption 'A','more numerous than Vander Waals interactions',0,88
exec InsertOption 'B','not present at Phe residues',0,88
exec InsertOption 'C','analogous to the steps in a spiral staircase',0,88
exec InsertOption 'D','roughly parallel to the helix axis',1,88
Go
exec InsertOption 'A','A multimeric protein',1,89
exec InsertOption 'B','An a-helix',0,89
exec InsertOption 'C','A P-pleated sheet',0,89
exec InsertOption 'D','A globular domain',0,89
Go
exec InsertOption 'A','the P-strand',0,90
exec InsertOption 'B','the a-helix',0,90
exec InsertOption 'C','the reverse turn',0,90
exec InsertOption 'D','All of these',1,90
Go
exec InsertOption 'A','Lysozyme',0,91
exec InsertOption 'B','Myoglobin',1,91
exec InsertOption 'C','Pancreatic ribonuclease',0,91
exec InsertOption 'D','Pancreatic DNase',1,91
Go
exec InsertOption 'A','partial double bond',0,92
exec InsertOption 'B','truly double bond',1,92
exec InsertOption 'C','Hydrogen bond',0,92
exec InsertOption 'D','Van der waals force',0,92
Go


Create Procedure UpdateOption(@OptionID int,@OptionName nvarchar(50),@OptionDescription int,@IsAnswer bit,@QuestionID int)
As
Update [Aptitude].[Option]
Set  [OptionName] = @OptionName , OptionDescription = @OptionDescription, QuestionID=@QuestionID  
Where OptionID = @OptionID
Go

Create Procedure DeleteOption(@OptionID int)
As
Delete From [Aptitude].[Option] Where OptionID = @OptionID 
Go



--Users
Create Procedure InsertUser(@FirstName nvarchar(50),@LastName nvarchar(50),@Email nvarchar(60),@Password nvarchar(60))
As
Insert Into [Aptitude].[User] (FirstName,LastName,Email,[Password]) Values (@FirstName,@LastName,@Email,@Password)
Go

Create Procedure UpdateUser(@UserID int,@FirstName nvarchar(50),@LastName nvarchar(50),@Email nvarchar(60),@Password nvarchar(60))
As
Update [Aptitude].[User]
Set FirstName = @FirstName , LastName = @LastName , Email = @Email , [Password] = @Password 
Where UserID = @UserID 
Go

Create Procedure DeleteUser(@UserID int)
As
Delete From [Aptitude].[User] Where UserID = @UserID
Go


--GetSubCategoryy
Create Procedure GetSubCategoriesByID (@CategoryID as int)
As
Select c.[CategoryID],c.[CategoryName]
From [Aptitude].[Category] as C
Where C.BaseCategoryID = @CategoryID
Go
Exec GetSubCategoriesByID @CategoryID = 4
Go

-- Kategoriye ait konularý getiren SP
Create Procedure GetCategoryIDShowSubjects(@CategoryID as int)
As
select S.[SubjectName]
from [Aptitude].[Subject] as S
Join [Aptitude].[Category] as C
on S.CategoryID = C.CategoryID 
Where C.BaseCategoryID = @CategoryID or C.CategoryID = @CategoryID
Exec GetCategoryIDShowSubjects @CategoryID = 9
Go

-- SubjectID parametresi altýndaki sorularý gosteren SP


Create Procedure GetSubjectsbyID(@SubjectID as int)
As
Select [SubjectName]
from [Aptitude].[Subject]
Where [SubjectID] = @SubjectID 


Exec GetSubjectsbyID @SubjectID = 1 
go

Create Procedure GetSubjectsByCategoryID(@CategoryID as int) 
As
Select Asub.SubjectID, Asub.SubjectName, Count(Q.[QuestionID]) as QuestionNumber
From [Aptitude].[Subject] as ASub
Join [Aptitude].[Question] as Q
on ASub.SubjectID = Q.SubjectID
Where Q.IsActive = 1 and Asub.CategoryID = @CategoryID
group by Asub.SubjectID,Asub.SubjectName
Go


--exec GetSubCategoriesByID @CategoryID = 5



Create Procedure ShowQuestionsByID(@SubjectID as int)
As
Select [QuestionID],[QDescription]
From [Aptitude].[Question] as Q
Join [Aptitude].[Subject] as S
on Q.SubjectID = S.SubjectID
Where Q.SubjectID = @SubjectID
Go
Exec ShowQuestionsByID @SubjectID = 7
go



Create Procedure showOptionsbyID(@QuestionID as int)
As
Select O.[OptionID],O.[IsAnswer], O.[OptionName],O.OptionDescription
From [Aptitude].[Option] as O
Join [Aptitude].[Question] as Q
on O.QuestionID = Q.QuestionID
where Q.QuestionID = @QuestionID
Go

Exec showOptionsbyID @QuestionID = 40
go

Create Procedure LogInUserSP(@UserID as nvarchar)
As
Select u.[FirstName],u.[LastName],u.[UserID],u.[Email]
From [Aptitude].[User] as u
Where u.UserID = @UserID
Go 

exec LogInUserSP '3'