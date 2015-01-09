root_path=$PWD"/"
dxshop_path=$root_path"../dxshop"
dxshop_ini=$root_path"../dxshop.ini"
config_dir=$root_path"../configFile"
dxuser_ini=$root_path"../dxusers.ini"
dxusers_path=$root_path"../dxusers"
#echo "删除源代码"
#rm -rf $dxshop_path
#rm -rf $dxusers_path
svn up $dxshop_path  --username=songyuchao --password=songyuchao
svn up $dxusers_path --username=songyuchao --password=songyuchao
#cp $config_dir/dxshop_config.py $dxshop_path/config.py
#cp $config_dir/dxusers_config.py $dxusers_path/config.py
