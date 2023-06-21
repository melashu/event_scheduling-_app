ActiveAdmin.register AdminUser do
  permit_params :email, :first_name, :last_name, :password, :password_confirmation
  menu priority: 0


  index do
    selectable_column
    id_column
    column :email
    column :first_name
    column :last_name
    column :created_at
    actions
  end

  filter :email
  filter :first_name
  filter :last_name

  form do |f|
    f.inputs do
      f.input :first_name
      f.input :last_name
      f.input :email
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end
  
  show title: proc {|user| user.name.full} do |user|
    panel "#{user.name.full} detail" do
      attributes_table_for user do
        row :first_name
        row :last_name
        row :email
        row :created_at
      end 
    end
  end 
end
