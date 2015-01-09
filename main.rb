#encoding=utf-8
$LOAD_PATH.unshift('/usr/local/rvm/gems/ruby-1.9.3-p551/gems')
require 'sinatra'
require 'erb'
set :public_folder, File.dirname(__FILE__) + '/static'

get "/" do
    erb :dashboard 
end   

get "/update" do
    p "update ....."
   result = system 'sh update.sh' 
   result ? @params[:message]="更新重启成功" : @params[:massage]="操作失败"
   erb :dashboard 
end

get "/restrat" do
    result = system 'sh restrat.sh'
    result ? @params[:message]="重启成功" : @params[:massage]="操作失败"
    erb :dashboard 
end  

get "/updagra" do
    result = system 'sh updagra.sh'
    result ? @params[:message]="更新成功" : @params[:massage]="操作失败"
    erb :dashboard 
end    
