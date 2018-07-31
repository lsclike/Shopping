ActiveAdmin.register Product do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#

permit_params :name, :price, :image, :description, :category_id


controller do
  def scoped_collection
    super.includes(:category)
  end
end

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

  form do |f|
    inputs do
      f.input :category
      f.input :name
      f.input :price
      f.input :image
      f.input :description
    end
    actions
  end
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

end
