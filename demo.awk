
## execute procedure for each line 
awk '{print $1   $2}' list.txt

## use -F option to assign the delimiter 
awk -F, '{print $1}' list.txt ## here using commo as the delimiter. 

## use pattern and procedure in both
awk -F, '/CA/{print $1}' list.txt

## use of begin and end 
## Begin is executed before the reading of file lines, END is executed after the awk finishs all lines' reading. 
awk -F, 'BEGIN{print "begin awk task"}{print $1}END{END of awk task}' list.txt
