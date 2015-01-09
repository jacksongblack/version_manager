#encoding=utf-8
root_path=$PWD"/"
dxshop_ini=$root_path"../dxshop.ini"
dxuser_ini=$root_path"../dxusers.ini"

killall -9 uwsgi
echo $dxshop_ini
uwsgi $dxshop_ini
uwsgi $dxuser_ini
sleep 3s
ps aux|grep uwsgi
