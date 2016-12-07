class ChangeDataTypeForMenuName < ActiveRecord::Migration[5.0]
  def self.up
    change_table :menus do |m|
      m.change :menu_name, :string
    end
  end
  def self.down
    change_table :menus do |m|
      m.change :menu_name, :integer
    end
  end
end
