class CreatePollbooths < ActiveRecord::Migration[5.2]
  def change
    create_table :pollbooths do |t|
      t.string :email
      t.string :answer

      t.timestamps
    end
  end
end
