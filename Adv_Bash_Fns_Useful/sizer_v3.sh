pacman -Qi | grep 'Name\|Size\|Description' | cut -d: -f2 | \

paste - - - | awk -F'\t' 'BEGIN{ s["MiB"]=1024; s["KiB"]=1;} \

{split($3, a, " "); print a[1] * s[a[2]], "KiB", $1}' | sort -n
