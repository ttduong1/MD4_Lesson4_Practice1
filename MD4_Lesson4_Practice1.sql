use QuanLySinhVien;
select Address, count(StudentID) as 'Số lượng học viên' from student group by Address;
select S.StudentID, S.StudentName, AVG(Mark) from Student S join Mark M on S.StudentID = M.StudentID group by S.StudentID, S.StudentName;

select S.StudentID, S.StudentName, AVG(Mark) from Student S join MArk M on S.StudentID = M.StudentID group by S.StudentID, S.StudentName
having AVG(Mark) > 15;

select S.StudentID, S.StudentName, AVg(Mark) from Student S join Mark M on S.StudentID = M.StudentID group by S.StudentID, S.StudentName
having AVG(Mark) >= all (select avg(Mark) from mark group by Mark.StudentID);
