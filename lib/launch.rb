calci = Calculate.new
print "$ "
input = gets.chomp
while input != 'exit' do 
    puts calci.extract_command(input)
    print "$ "
    input = gets.chomp
end