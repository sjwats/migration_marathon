require 'spec_helper'

describe Author do
  it { should have_valid(:first_name).when('John', 'Sally') }
  it { should_not have_valid(:first_name).when(nil, '') }

  it { should have_valid(:last_name).when('Smith', 'Smithy') }
  it { should_not have_valid(:last_name).when(nil, '') }
end
