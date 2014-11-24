require_relative 'config/application'
require_relative 'app/controllers/tasks_controller'

# puts "Put your application code in #{File.expand_path(__FILE__)}"

case ARGV[0]
when "list" then TasksController.list
when "delete" then TasksController.delete(ARGV[1])
when "complete" then TasksController.complete(ARGV[1])
when "add" then TasksController.add(ARGV[1])
end