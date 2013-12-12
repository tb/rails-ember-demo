require 'spec_helper'
require 'rspec_api_documentation/dsl'

resource "Companies" do
  header "Accept", "application/json"
  header "Content-Type", "application/json"

  let(:company) { create :company }

  get "/api/companies" do
    before { 2.times { create :company } }

    example "Listing companies" do
      do_request

      status.should == 200
    end
  end

  post "/api/companies" do
    parameter :name, "Company name", required: true, scope: 'company'
    parameter :address, "Address", required: true, scope: 'company'
    parameter :city, "City", required: true, scope: 'company'
    parameter :country, "Country", required: true, scope: 'company'
    parameter :email, "Email", required: true, scope: 'company'
    parameter :phone, "Phone", required: true, scope: 'company'

    let(:company) { build :company }
    let(:name) { company.name }
    let(:address) { company.address }
    let(:city) { company.city }
    let(:country) { company.country }
    let(:email) { company.email }
    let(:phone) { company.phone }

    let(:raw_post) { params.to_json }

    example_request "Creating an company" do
      company.id = Company.last.id
      response_body.should == CompanySerializer.new(company).to_json
      status.should == 201
    end
  end

  put "/api/companies/:id" do
    parameter :name, "Company name", required: true, scope: 'company'
    parameter :address, "Address", required: true, scope: 'company'
    parameter :city, "City", required: true, scope: 'company'
    parameter :country, "Country", required: true, scope: 'company'
    parameter :email, "Email", required: true, scope: 'company'
    parameter :phone, "Phone", required: true, scope: 'company'

    let(:company) { create :company }
    let(:id) { company.id }
    let(:name) { "New name" }

    let(:raw_post) { params.to_json }

    example_request "Updating a company" do
      response_body.should == ""
      status.should == 204
    end
  end

  get "/api/companies/:id" do
    let(:id) { company.id }

    example_request "Getting a specific company" do
      response_body.should == CompanySerializer.new(company).to_json
      status.should == 200
    end
  end

  delete "/api/companies/:id" do
    let(:id) { company.id }

    example_request "Deleting a company" do
      status.should == 204
    end
  end
end