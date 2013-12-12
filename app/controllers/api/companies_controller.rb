class Api::CompaniesController < ApplicationController
  inherit_resources
  defaults class_name: 'Company'
  respond_to :json
end
