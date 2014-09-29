class CreateVjs < ActiveRecord::Migration
  def change
    create_table :vjs do |t|
      t.string :name
      t.string :age
      t.string :report

      t.timestamps
    end
  end
end
