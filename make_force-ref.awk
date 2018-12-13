#!/usr/bin/awk -f

BEGIN { 
    FS = "[\\:\\-\\ \t]"
}

NR == FNR {
   rsid[$4] = $2
   next
}

$3 in rsid {
    print rsid[$3], $4
}
