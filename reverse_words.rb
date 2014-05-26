# returns the words of the line in last to first order
def reverse_words line
  arr = line.to_s.split
  return arr.reverse.join(' ')
end

File.open(ARGV[0]).each_line do |line|
  # Exclude lines containing just \n from generating output
  if line.to_s.length > 1
    puts reverse_words line
  end
end