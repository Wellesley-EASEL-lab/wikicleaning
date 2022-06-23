dirs="wikifiles/*/"
for pagedir in $dirs 
do
	echo $pagedir
	for pageno in $pagedir*0.xml
		do
		txtname=${pageno%%xml}txt
		if [ -f $txtname ]
		then 
			echo "Skipping" $pageno;
		else 
			bash clean.sh $pageno;
		fi
	done
done
