ActiveAdmin.register Member do
  permit_params  :idnumber,
  :firstname,
  :middleinitial,
  :lastname,
  :nickname,
  :year,
  :course,
  :phone,
  :address,
  :birthday,
  :emergency_person,
  :emergency_phone,
  :fb_url,
  :member_status,
  :member_type,
  :points,
  :email,
  :password,
  :password_confirmation

  index do
    selectable_column
    id_column
    column :firstname
    column :lastname
    column :email
    column :points
    column :member_status
    column :member_type
    #column :current_sign_in_at
    #column :sign_in_count
    #column :created_at
    actions
  end

  filter :email
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at


  form do |f|
    f.inputs "Member Details" do
      f.input :idnumber
      f.input :firstname
      f.input :middleinitial
      f.input :lastname
      f.input :nickname
      f.input :year
      f.input :course
      f.input :phone
      f.input :address
      f.input :birthday
      f.input :fb_url
      f.input :member_status
      f.input :member_type
      f.input :emergency_person
      f.input :emergency_phone
      f.input :email
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end

  #fucking wrong thing
  #:encrypted_password,
  #REMOVE THIS FUCKING THING

  #:reset_password_token,
  #:reset_password_sent_at,
  #:remember_created_at,
  #:sign_in_count,
  #:current_sign_in_at,
  #:last_sign_in_at,
  #:current_sign_in_ip,
  #:last_sign_in_ip

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
