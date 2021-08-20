class ApplicationController < ActionController::Base
  def hello
    render plain: "hello world! restart!"
  end
end
