require 'spec_helper'

describe Passport do

  subject { build :passport }

  it { should belong_to(:company) }

  it { should have_attached_file(:file) }
  it { should validate_attachment_presence(:file) }
  it { should validate_attachment_size(:file).less_than(2.megabytes) }
  it { should validate_attachment_content_type(:file).
                  allowing('application/pdf').
                  rejecting('image/png', 'text/plain', 'text/xml') }

  its(:file_file_name) { 'passport.pdf' }

end
