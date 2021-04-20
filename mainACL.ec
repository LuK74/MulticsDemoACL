&version 2
abbrev
&trace &command off
cwd Tools
ec compileWaitEntry.ec
cwd <
add_search_rules Tools
cwd ACL>Playground
ec IndicatorCompile
cwd <<
&trace &command on
&print What about the ACL mechanism in Multics ?
&print
&print In an Unix System, the access to our files and directories are defined b
\cy 9 bit
&print Example : file.txt --> rw_r_r_
&print
&print This kind of permission means that the file.txt
&print can be read and write by the owner
&print
&print But it can only be read by Others,
&print and user in the same group as the file.txt
&print
&print In Multics, we're not using this kind of syntax,
&print we're using a mechanisme similar to what we can see in the Network field
&print
&print By default, every segments (files, directories or anything else)
&print isn't accessible by anyone for any type of operation
&print
&print In order to give permissions to some user to do some operation
&print on a given segment, we need to add an entry to
&print the Access Control List linked to this Segment.
&print
&print An Acces Control List entry will look like that :
&print - rw User.Project.InstanceTag
&print In this example we can easily recognize our modes (r : read, w : write)
&print The unknown part would be this "User.Project.InstanceTag"
&print
&print In Multics, when a User logs in, he will not only give his username
&print but also the project on which he want to be connected
&print For example, when installing the Multics Simulator you'll be asked
&print to login as Repair.SysAdmin
&print It means that you'll be connected as the Repair user, in the SysAdmin
&print project
&print
&print So what about our "User.Project.Instance", this line allow us to
&print identify the person we want to give the rights to read and write
&print
&print User will corresponds to the username, project to the project
&print name on which the user is currently connected
&print
&print We'll not talk about Instance which a bit difficult to describe
&print and this is not necessary to our explanation
&print
&print For the demonstration, I'll switch to our ACL demo directory
wait_entry
cwd ACL
