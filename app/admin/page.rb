ActiveAdmin.register Page do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :title, :body, :order, :is_published, :section_id, :menu_display
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

  index do
    column :id
    column :title, :sorted => :title
    column :section, :sorted => :section
    column :created_at, :sorted => :created_at
    column :order
    actions
  end

  form do |f|
    f.inputs "Details" do
      f.input :title, :label => 'Title'
      f.input :section, :label => 'Section'
      f.input :body, :label => 'Body'
      f.input :order, :label => 'Order'
      f.input :is_published, :label => 'Published'
      f.input :menu_display, :lable => 'Disply In Menu'
      f.actions
    end
  end

end