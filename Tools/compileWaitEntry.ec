&version2
&trace &command off
abbrev
asr >sl3p>c_compiler>e
cc waitEntry.c -of wait_entry
sa wait_entry re *.*.*
