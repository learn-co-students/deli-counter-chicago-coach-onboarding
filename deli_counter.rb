def line(queuers)
  if queuers.length == 0
    puts "The line is currently empty."
  else
    string = "The line is currently:"
    queuers.each_with_index do |name, index|
      string << " #{index + 1}. #{name}"
    end
    puts string
  end
end

def take_a_number(queue, new_queuer)
  current_position = queue.length > 0 ? queue.length + 1 : 1
  queue << new_queuer
  puts "Welcome, #{new_queuer}. You are number #{current_position} in line."
  queue
end

def now_serving(queue)
  if queue.length == 0
    puts "There is nobody waiting to be served!"
  else
    currently_serving = queue.shift
    puts "Currently serving #{currently_serving}."
  end
end
