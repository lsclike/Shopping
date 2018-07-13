ActiveAdmin.register Product do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# belongs_to :category
permit_params :name, :price, :image


  index do
    column :name
    column :price
    column :image
    actions
  end

  show do
    attributes_table do
      row :name
      row :price
      row :image do |obj|
        image_tag obj.image_url, size: '100x100' if obj.image_url.present?
      end
    end
  end
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

end
