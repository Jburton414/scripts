#!/usr/bin/env bash
read -p "Enter a path: " path
echo $path | awk -F "/" '{print $(NF), "has " NF-2 " parents: " $(NF-(NF-2)), $(NF-(NF-3)), $(NF-(NF-4)), $(NF-(NF-5)) ;}'
