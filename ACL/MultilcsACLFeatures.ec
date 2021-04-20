&version2
&print Let's use the same example as previously in
&print order to show some other cool features of ACL
&print
create PrivateInfo
&print
&print Let's also, delete every ACL entry added by the
&print create program
&print
delete_acl PrivateInfo
&print
&print As we've seen before, ACL entries use a specific
&print syntax to determine which user(s) is (or are)
&print concerned by the following entry
&print
&print You've certainly noticed the use of '*', which
&print usually means "everything" or "all"
&print
&print Using this, we can give permissions to severals projects
&print or users using only one entry
&print
&print Let's see some example
&print
&print If we want to give the permission to read a segment to every
&print user of every project, we could use the following entry
&print
&print r *.*.*
&print
&print Let's set it using the set_acl command
&print
set_acl PrivateInfo r *.*.*
&print
&print Now, let's what list_acl returns
&print
list_acl PrivateInfo
&print
&print As you can see, the entry has been added correctly
wait_entry
