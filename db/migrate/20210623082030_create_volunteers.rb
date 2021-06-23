class CreateVolunteers < ActiveRecord::Migration[6.1]
  def change
    create_table :volunteers do |t|
      t.integer :userId
      t.integer :naturalDisasterId
      t.integer :jobId

      t.timestamps
    end
  end
end
