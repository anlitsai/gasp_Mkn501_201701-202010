echo "wchen123"
month=`pwd| cut -d / -f5`
rsync -av wchen@140.115.34.99:lulin_data/slt$month* ./
