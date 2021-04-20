&version2
&- demo about acl entry order
&print You may have noticed before that when we
&print add an entry to the ACL of some file or
&print directory, its order in the list doesn't
&print depend on when or in which order we added
&print our entry
&print
&print Let's try to add several ACL in a random order
&print to see what we're talking about
&print
create TestFile
delete_acl TestFile
set_acl TestFile rwe *.*.*
set_acl TestFile rw DemoUser.*.*
set_acl TestFile rwe *.SysAdmin.*
set_acl TestFile rwe Intruder.Criminals.*
set_acl TestFile null December.Teachers.*
set_acl TestFile rw *.Teachers.*
&print
&print Now that we've added our ACL entries
&print let's list it to see in which order they're
&print returned
&print
list_acl TestFile
&print
&print Firstly, you may notice that this order isn't
&print similar to the order in which we added each entry
&print
&print But, this order has a real meaning, it will corresponds
&print to the order in which we look for a user when he's asking
&print to do some operation on the file or directory
&print
&print So, this is very important to have the right order, because
&print sometimes an entry can give an user some rights but another
&print entry can give him another rights too, or even remove him
&print some right
&print
&print And in order for our ACL to work correctly, each entry are sorted
&print using this principle : "Most specific entries first", it allow us
&print give general permissions using groups and "*" entry, and then to
&print deny or grant additional permission to specific users
delete TestFile
wait_entry
