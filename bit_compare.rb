File.open(ARGV[0], 'r') do |fl|
  while line = fl.gets do
    line_a = line.split(',')
    num = line_a[0].to_i
    bit_offset_a = line_a[1].to_i - 1
    bit_offset_b = line_a[2].to_i - 1
    puts num[bit_offset_a] == num[bit_offset_b]
  end
end