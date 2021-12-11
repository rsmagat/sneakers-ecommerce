ActiveAdmin.register Province do

    # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :name, :provincial, :goods_and_services, :harmonized
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :provincial, :goods_and_services, :harmonized]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

end
