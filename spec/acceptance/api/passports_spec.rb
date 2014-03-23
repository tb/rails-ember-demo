require 'spec_helper'
require 'rspec_api_documentation/dsl'

resource "Passports" do
  header "Accept", "application/json"
  header "Content-Type", "application/json"

  let(:passport) { create :passport }

  get "/api/passports?company_id=:company_id" do
    before { passport }

    let(:company_id) { passport.company.id }

    example "Listing company passports" do
      do_request

      #response_body.should include(PassportSerializer.new(passport).to_json)

      status.should == 200
    end
  end

  # FIXME https://github.com/zipmark/rspec_api_documentation/issues/39
  #post "/api/companies/:company_id/passports" do
  #  parameter :title, "Title", required: true, scope: 'passport'
  #  parameter :file, "PDF File", required: true, scope: 'passport'
  #
  #  let(:company_id) { passport.company.id }
  #  let(:title) { passport.title }
  #  let(:file) { fixture_file_upload 'passport.pdf', 'application/pdf' }
  #
  #  let(:raw_post) { params.to_json }
  #
  #  example_request "Creating an passport" do
  #    passport.id = Passport.last.id
  #    response_body.should == PassportSerializer.new(passport).to_json
  #    status.should == 201
  #  end
  #end
end