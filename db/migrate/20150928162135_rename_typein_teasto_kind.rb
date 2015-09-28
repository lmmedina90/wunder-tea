class RenameTypeinTeastoKind < ActiveRecord::Migration
  def change
    rename_column :teas, :type, :kind
  end
end
