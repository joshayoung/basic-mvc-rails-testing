class AddDefaultToBooksAntique < ActiveRecord::Migration[5.2]
  def change
    change_column :books, :antique, :boolean, default: false
  end
end
