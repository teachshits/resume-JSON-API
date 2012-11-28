load 'server.rb'
require 'json'
require 'test/unit'
require 'rack/test'

class ResumeAPITest < Test::Unit::TestCase
  include Rack::Test::Methods
  
  def app
    Sinatra::Application
  end
  
  def test_resume_all
    get '/api/resume'
    assert last_response.ok?
    assert_equal $RESUME, JSON.parse(last_response.body)
  end
  
  def test_resume_contact
    get '/api/resume/contact'
    assert last_response.ok?
    assert_equal $RESUME["contact"], JSON.parse(last_response.body)
  end
  
  def test_resume_education
    get '/api/resume/education'
    assert last_response.ok?
    assert_equal $RESUME["education"], JSON.parse(last_response.body)
  end
  
  def test_resume_jobs
    get '/api/resume/jobs'
    assert last_response.ok?
    assert_equal $RESUME["jobs"], JSON.parse(last_response.body)
  end
  
  def test_resume_skills
    get '/api/resume/skills'
    assert last_response.ok?
    assert_equal $RESUME["skills"], JSON.parse(last_response.body)
  end
  
end