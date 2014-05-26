File.open(ARGV[0], 'r') do |fl|
  while line = fl.gets do
    puts line.downcase
  end
end