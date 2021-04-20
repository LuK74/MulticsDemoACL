&version2
&print You may have noticed during your exploration of
&print Multics, that directories don't have the same
&print mode as files
&print
&print When we talk about directory, we'll talk about
&print 3 modes, s, m and a
&print
&print s stands for status
&print m for modify
&print and a for append
&print
&print Let's try some operation on a directory to have
&print a better idea of what those modes authorize
&print
create_dir Homework
create Homework>PhysicsHomework
create Homework>HistoryHomework
delete_acl Homework
&print
&print You can see that we've created a new directory
&print called Homework, and we've deleted his ACL
&print
&print For now, we shouldn't be able to do anything with
&print this directory, but let's try anyway
&print
ls -pn Homework
create Homework>MathHomework
delete_acl Homework>PhysicsHomework
&print
&print As you can see, none of the above operation succeeded
&print
&print If we want to list the file contained in the directory
&print we need to add us the "status" mode
&print
set_acl Homework s DemoUser.*.*
&print
ls -pn Homework
&print
&print Now it works. Then, if we want to add a MathHomework
&print to this directory, we need to add the "append" mode
&print to our rights
&print
set_acl Homework sa DemoUser.*.*
create Homework>MathHomework
&print
&print It does work too, and finally if we want to modify
&print some attributes of a file in this directory (like modify
&print its ACL), we'll need the "modify" mode
&print
set_acl Homework sma DemoUser.*.*
set_acl Homework>MathHomework rwe *.*.*
&print
&print We've now try each of the modes available for directories
delete Homework>PhysicsHomework
delete Homework>HistoryHomework
delete Homework>MathHomework
delete_dir Homework
wait_entry
