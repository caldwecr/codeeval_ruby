# http://en.wikipedia.org/wiki/Cycle_detection
def result_as_string x, arr
  y = x.to_i
  r = y.to_s + ' '
  while arr[y].to_i != x.to_i do
    r += arr[y].to_s + ' '
    y = arr[y].to_i
  end
  r.rstrip
end

def key_value_function_map sequence
  res = []
  i = nil
  sequence.each.with_index do |val, key|
    if key + 1 < sequence.length
      if res[val.to_i].nil?
        res[val.to_i] = sequence[key + 1]
      else
        i = val.to_i
        break
      end
    end
  end
  { shortened_sequence: res, loop_starting_index: i}
end

File.open(ARGV[0], 'r') do |fl|
  while line = fl.gets do
    nums = line.split ' '
    ss = key_value_function_map nums
    puts result_as_string(ss[:loop_starting_index], ss[:shortened_sequence])
  end
end