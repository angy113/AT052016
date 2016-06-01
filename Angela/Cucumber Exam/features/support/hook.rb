Before('@login, @notfinditem') do 
  puts "This before hook is for scenario 1 of feature file 1 and scenario 2 of feature file 2"
end

After ('@login') do 
   puts "This after hook is only for scenario 1 of feature file 1"
end
