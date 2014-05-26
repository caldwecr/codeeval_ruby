def largest_sum arr
  sum = 0
  best = count = sum
  arr.each do |num_as_s|
    num = num_as_s.to_i
    sum = [sum + num, num].max
    if sum > best
      best = sum
    end
    if count == 0
      best = sum
    end
    count+= 1
  end
  best
end

File.open(ARGV[0], 'r') do |fl|
  while line = fl.gets do
    nums = line.split ','
    puts largest_sum nums
  end
end