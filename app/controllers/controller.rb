require_relative '../../config/application'
class Controller

  def run(option, entries = nil)
    execute(option, entries)
  end
  
  def execute(option, entries)
    case option
    when "list"
      Task.list
    when "add"
      Task.add(entries)
    when "complete"
      Task.complete(entries)
    when "delete"
      Task.delete(entries)
    end
  end
end
 
option = ARGV[0]
entries = ARGV[1..-1].join(" ").to_s
 
todo = Controller.new
todo.run(option, entries)
