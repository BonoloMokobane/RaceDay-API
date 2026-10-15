
USE RaceDayApiDB;
GO

SELECT
    UserID,
    FirstName,
    LastName,
    Email,
    Role,
    CASE
        WHEN PasswordHash IS NOT NULL
             AND LEN(PasswordHash) > 0
        THEN 'Hash stored'
        ELSE 'Missing hash'
    END AS PasswordStorage
FROM dbo.Users;
