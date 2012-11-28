require 'rubygems'
require 'bundler/setup'
load "resume_data.rb"
require 'sinatra'
require 'json'

get %r{/resume\/?\z} do
  #return all
  content_type :json
  $RESUME.to_json
end

get '/resume/contact' do
  content_type :json
  $RESUME["contact"].to_json
end

get '/resume/education' do
  content_type :json
  $RESUME["education"].to_json
end

get '/resume/jobs' do
  content_type :json
  $RESUME["jobs"].to_json
end

get '/resume/skills' do
  content_type :json
  $RESUME["skills"].to_json
end