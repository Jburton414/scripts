echo /tmp/.hashes/files/files/txtfile.txt | awk -F "/" '{print $(NF), "has " NF-2 " parents: " $(NF-(NF-2)), $(NF-(NF-3)), $(NF-(NF-4)), $(NF-(NF-5)) ; parents=NF-2;}'

echo /tmp/.hashes/files/files/txtfile.txt |\
awk -F "/" '{print $(NF), "has " NF-2 " parents: " $(NF-(NF-2)), $(NF-(NF-3)), $(NF-(NF-4)), $(NF-(NF-5)); parents=NF-2; print parents; }'

 
 
 
 (NF -( NF-$parents )) 
 
 for (i=2, i<=NF-1, i++) print $($i);
