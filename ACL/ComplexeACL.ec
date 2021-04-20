&version2
&print We can now conclude that ACL allows us a complexity
&print on permissions that we cannot reproduce with the
&print default permission mechanism of Unix
&print
&print As an example, we could imagine a file containing the
&print answer to some test that students from an highschool
&print are going to pass
&print
&print We would like to authorize students from the Class 1
&print to see the answers but not those from Class 2 and 3
&print (let's assume Class 1 has already pass the test)
&print
&print We also want to give access to every Math Teachers
&print except Mr.December whose account is currently compromised
&print
&print Let's create the file and name it TestAnswers
&print
create TestAnswers
&print
set_acl TestAnswers r *.Class1.*
set_acl TestAnswers rw *.MathTeachers.*
set_acl TestAnswers null December.MathTeachers.*
&print
list_acl TestAnswers
&print
&print As you can see, we've succeed to create a file with the
&print given constraints
&print
&print This is the strenght of ACL compare to Unix default permission
&print mechanism
&print
&print In order to reproduce this kind of constraints on a file using
&print Unix default permission, we would have to create some very specific
&print groups containing only the users we want to have those rights
&print
&print On a important site, with lots of user an groups, it would become
&print quickly very complex to handle those groups
delete TestAnswers
wait_entry
