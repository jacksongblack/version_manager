#encoding=utf-8
root_path=$PWD"/"
dxshop_path=$root_path"../dxshop"
dxshop_ini=$root_path"../dxshop.ini"
config_dir=$root_path"../configFile"
dxuser_ini=$root_path"../dxusers.ini"
dxusers_path=$root_path"../dxusers"
echo "杀死正在运行的进程"
killall -9 uwsgi
echo "进程被杀死，现在开始更新代码"
cd ../
svn up $dxshop_path  --username=songyuchao --password=songyuchao
svn up $dxusers_path --username=songyuchao --password=songyuchao
#cp $config_dir/dxshop_config.py $dxshop_path/config.py
#cp $config_dir/dxusers_config.py $dxusers_path/config.py
echo "代码更新完成,现在开始启动服务"
uwsgi $dxshop_ini
uwsgi $dxuser_ini
sleep 3s
ps aux |grep uwsgi

