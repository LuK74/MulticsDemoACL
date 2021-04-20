&version2
&print For this demonstration, we'll imagine that on our Unix
&print system we have a file named PrivateInfo
&print
&print As its name says, it's private information that our
&print user want to keep for himself
&print
&print So, we can assume that it has the following rights
&print rw_ ___ ___ (read and write only for the user)
&print
&print We'll see how to create a similar file in Multics
&print
&print Firstly, let's create the file
&print
create PrivateInfo
&print Now that the file has been created, we can look at his ACL
&print In order to do that, we can use the command list_acl
&print
list_acl PrivateInfo
&print
&print As you can see, two entries are returned by this command
&print
&print By default, when you create a file, it will give it
&print the following entry : CurrentUser.CurrentProject.*
&print
&print This corresponds to the 1st entry returned by list_acl
&print
&print So we've have created a PrivateInfo file corresponding
&print to what we wanted
delete PrivateInfo
wait_entry
