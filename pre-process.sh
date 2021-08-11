folder=$1

./rm_no_Mkn501.sh $folder
python search_no_wcs.py $folder
./no_wcs_dir.sh $folder
./ycc_upload.sh $folder
