require 'rubygems'
require 'bundler/setup'
load "resume_data.rb"
require 'sinatra'
require 'json'

get '/' do
  send_file File.join(settings.public_folder, 'index.html')
end

get %r{/api/resume\/?\z} do
  #return all
  content_type :json
  $RESUME.to_json
end

get '/api/resume/contact' do
  content_type :json
  $RESUME["contact"].to_json
end

get '/api/resume/education' do
  content_type :json
  $RESUME["education"].to_json
end

get '/api/resume/jobs' do
  content_type :json
  $RESUME["jobs"].to_json
end

get '/api/resume/skills' do
  content_type :json
  $RESUME["skills"].to_json
end