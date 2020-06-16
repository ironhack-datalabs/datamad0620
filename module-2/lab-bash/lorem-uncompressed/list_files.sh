
#!/bin/bash
ls
for f in lorem/* ; do
    chrlen=${#f}
    echo "$f has $chrlen characters lenght"
done

top