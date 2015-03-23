ActiveAdmin.register Event do
  active_admin_import
  permit_params :eventid, :name, :organized_by, :venue, :schedule, :eventclass, :attendance, :addpoint

  def get_attendance
      return attendance
  end

  index do
    selectable_column
    id_column
    column :name
    column :organized_by
    column :venue
    column :schedule
    column :eventclass
    column :attendance
    column :addpoint
    actions
  end

  form do |f|
    f.inputs "Event Details" do
      f.input :name
      f.input :organized_by
      f.input :venue
      f.input :schedule
      f.input :eventclass
      f.input :attendance
      f.input :addpoint
    end
    f.actions
  end




  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end


end
