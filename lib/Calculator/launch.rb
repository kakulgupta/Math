#Launches the application
class Launch

  def initialize
     @calci = Parse.new
  end

  def start
    print "$ "
    input = gets.chomp
    while input != 'exit' do 
        puts calci.parsing(input)
        print "$ "
        input = gets.chomp
    end
  end

  def start_test
    input = Kernel.gets.chomp
    @calci.parsing(input)
  end

end