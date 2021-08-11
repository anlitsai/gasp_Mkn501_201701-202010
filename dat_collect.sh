
iau_list=`cat iau_name.txt`

for i in $iau_list;do 
  iau_idx=`echo ${i:0:4}`;
  echo $iau_idx;
  dat_list=`find ./Rmag_InstMag/annu_w1_2*|grep dat|grep $iau_idx`;
  #echo $dat_list;
  date=`find ./Rmag_InstMag/annu_w1_2*|grep dat|grep $iau_idx|cut -d / -f3|cut -d _ -f3`;
  #echo $date;
  for j in $date;do
    file_out='g'$iau_idx'r_LuS_'$j'.dat';
    #echo $file_out;
    cat $dat_list > dat_collect/$file_out;
  done
done

