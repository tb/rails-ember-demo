class Api::PassportsController < ApplicationController
  inherit_resources
  defaults class_name: 'Passport'
  respond_to :json
  belongs_to :company

  def permitted_params
    params.permit(passport: [:title, :file])
  end
end
