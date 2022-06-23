dirs="processed_wikifiles/*/"
for pagedir in $dirs 
do
       echo $pagedir
       name=${pagedir:20}
       cat $pagedir*.txt > processed_wikifiles/all_${name%?}.txt
done
