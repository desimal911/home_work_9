ActiveAdmin.register User do
  permit_params :email, :password, :first_name, :last_name, :birthday, :personal_data

  index do
    selectable_column
    id_column
    column :email
    column :first_name
    column :last_name
    column :birthday
    column :personal_data
    column :posts
    column :groups
    column :created_at

    actions
  end

  filter :email
  filter :first_name
  filter :last_name
  filter :birthday
  filter :posts
  filter :groups
  filter :created_at
  filter :updated_at

  form do |f|
    f.inputs do
      f.input :email
      f.input :password
      f.input :first_name
      f.input :last_name
      f.input :birthday
      f.input :personal_data
    end
    f.actions
  end
end
