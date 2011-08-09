class HelloGenerator < Rails::Generator::Base
  def manifest # this method is default entrance of generator
    puts "hello"
  end
end
