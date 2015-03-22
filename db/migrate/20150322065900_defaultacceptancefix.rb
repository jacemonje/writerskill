class Defaultacceptancefix < ActiveRecord::Migration
  def change
    change_column :members, :member_status, :string, default: "Applicant"
    end
end
