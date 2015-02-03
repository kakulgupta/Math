#Launches the application
class Launch

  def initialize
    calci = Parse.new
    print "$ "
    input = gets.chomp

    while input != 'exit' do 
        puts calci.parsing(input)
        print "$ "
        input = gets.chomp
    end

  end
  
end