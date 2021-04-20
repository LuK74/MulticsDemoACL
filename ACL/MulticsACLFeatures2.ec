&version2
&print
&print Next, let's talk about another cool feature
&print
&print Access Control List is based on the fact that
&print by default, we deny every operation for every user
&print of every projects
&print
&print Previously, we added a rule given the right to every
&print user to read the file PrivateInfo
&print
&print But, let's assume that we don't want a specific user
&print to read it
&print Let's call this user Intruder, and Criminals
&print the project on which he is connected
&print
&print We can deny him the right to read without modifying
&print our previous entry "r *.*.*"
&print
&print In order to do that, we'll define a new entry associated
&print specifically to this user, using Multics' ACL syntax
&print this would look like that : "Intruder.Criminals.*"
&print
&print With this entry, we'll associate the mode "null", which
&print corresponds to no permissions for any type of operation
&print
set_acl PrivateInfo null Intruder.Criminals.*
&print
&print Let's see, if it did work
&print
list_acl PrivateInfo
&print
&print As you can see, it did work, the entry is at the top
&print of the list
&print
wait_entry
