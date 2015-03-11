class SetDefaultsForAll < ActiveRecord::Migration
  def change
    #events
    change_column :events, :organized_by, :string, default: "Writerskill"
    change_column :events, :attendance, :integer, default: 0
    change_column :events, :addpoint, :integer, default: 0

    #members
    change_column :members, :member_status, :string, default: "Accepted"
    change_column :members, :member_type, :string, default: "Regular"
    change_column :members, :points, :integer, default: 0

  end
end
