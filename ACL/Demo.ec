&version2
&print Now let's experiment everything we've seen on ourself
&print
&print We'll start by creating a PrivateInfo file
&print
create PrivateInfo
&print
&print We'll also erase its current ACL, in order to start from 0
&print
delete_acl PrivateInfo
&print
&print Now, what happen if we try to print its content ?
&print
print PrivateInfo
&print
&print As you can see, we cannot read its content
&print Because we've erased every ACL entries, the entry about
&print our right on the file has been erased too.
&print
&print Let's try to add some rule in order for us to have the right
&print to read its content
&print
set_acl PrivateInfo rw *.*.*
&print
print PrivateInfo
&print
&print As you can see, no errors about permissions has been returned,
&print it means that we've been allowed to read its content
&print
&print Now, let's try to keep us from reading or writing into this file
&print
set_acl PrivateInfo null DemoUser.*.*
&print
print PrivateInfo
&print
&print And as you can see, we can't read its content anymore
&print
delete PrivateInfo
wait_entry
