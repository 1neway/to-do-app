class CreateTasks < ActiveRecord::Migration
        def change
            create_table :tasks do |task|
                task.string :text
                task.integer :is_complete
                task.timestamps
        end
    end
end
