class CreateModelNames < ActiveRecord::Migration[7.2]
  def change
    create_table :model_names do |t|
      t.timestamps
    end
  end
end
