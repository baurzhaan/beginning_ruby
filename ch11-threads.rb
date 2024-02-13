# Applications running on implementations with a GIL can be designed to use separate processes to achieve full parallelism, as each process has its own interpreter and in turn has its own GIL. Otherwise, the GIL can be a significant barrier to parallelism.

threads = []

10.times do
  thread = Thread.new do
    10.times { |i| print(i); $stdout.flush; sleep rand(2) }
  end

  threads << thread

  puts "Threads list: #{Thread.list}"
end

threads.each { |thread| thread.join }