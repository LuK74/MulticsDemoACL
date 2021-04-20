&version2
&print Setup a standard playground
create FileNull
create FileRead
create FileWrite
create FileReadWrite
delete_acl FileNull
delete_acl FileRead
delete_acl FileWrite
delete_acl FileReadWrite
set_acl FileNull null *.*.*
set_acl FileRead r *.*.*
set_acl FileWrite w *.*.*
set_acl FileReadWrite rw *.*.*
&print
&print Ready to go
