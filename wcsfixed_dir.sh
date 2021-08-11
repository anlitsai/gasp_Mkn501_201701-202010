folder=$1
python test/wcs.py no_wcs_$folder -o wcsfixed_$folder
echo "... wcsfixed_$folder is fixed ..."
