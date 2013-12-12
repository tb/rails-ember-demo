class Api::CompaniesController < ApplicationController
  inherit_resources
  defaults class_name: 'Company'
  respond_to :json

  def permitted_params
    params.permit(company: [:name, :address, :city, :country, :email, :phone])
  end
end
