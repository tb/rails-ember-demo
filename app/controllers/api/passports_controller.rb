class Api::PassportsController < ApplicationController
  inherit_resources
  defaults class_name: 'Passport'
  respond_to :json

  def permitted_params
    params.permit(passport: [:title, :file, :company_id])
  end
end
