class CreateAccountExtensions < ActiveRecord::Migration
  def self.up
    create_table :account_extensions do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :account_extensions
  end
end
