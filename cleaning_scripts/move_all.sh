dirs="wikifiles/*/"
for pagedir in $dirs 
do
       echo $pagedir
       #mkdir processed_wikifiles/${pagedir:10}
       cp $pagedir'wikipage'_*.txt processed_wikifiles/${pagedir:10}
done
