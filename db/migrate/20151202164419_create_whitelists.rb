class CreateWhitelists < ActiveRecord::Migration
  def change
    create_table :whitelists do |t|
      t.string :ip

      t.timestamps
    end
  end
end
