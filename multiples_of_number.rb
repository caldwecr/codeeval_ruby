## Approach
## Simple solution
def smallest_multiple(x, n)
  current = 1
  while (current * n) < x
    current += 1
  end
  current * n
end

File.open(ARGV[0], 'r') do |fl|
  while line = fl.gets do
    nums = line.split ','
    puts smallest_multiple nums.first.to_i, nums[1].to_i
  end
end