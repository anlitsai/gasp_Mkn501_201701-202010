a=`cat no_Mkn501_science_target_list.txt `

dir=$1
echo $dir

f=`for i in $a;do find ./$dir|grep $i;done`
echo $f
rm -rf $f
