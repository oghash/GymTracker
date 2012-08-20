class CreateSessionRoutines < ActiveRecord::Migration
  def change
    create_table :session_routines do |t|
      t.references :session
      t.references :routine
      t.integer :weight
      t.integer :reps

      t.timestamps
    end
    add_index :session_routines, :session_id
    add_index :session_routines, :routine_id
  end
end
