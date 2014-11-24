require_relative '../../config/application'
require_relative '../models/task'

class TasksController

  def self.add(task)
    Task.create(description: task, complete: 0)
    puts "#{task} ADDED."
    list
  end

  def self.delete(num)
    puts "#{Task.find(num).description} DELETED!"
    Task.destroy(num)
    list
  end

  def self.complete(num)
    t = Task.find(num)
    t.complete = 1
    t.save
    puts "#{Task.find(num).description} DONE!!!"
    list
  end

  def self.list
    if Task.count == 0
      puts "To-do list is empty."
    else
      Task.all.each do |todo|
        print "#{todo.id}. ["
        if todo.complete == 1
          print "x"
        else
          print " "
        end
        puts "] #{todo.description}"
      end
    end
  end
end