class ApplicationController < ActionController::Base
  before_action :foo

  def foo
    puts "foo"
  end
end
