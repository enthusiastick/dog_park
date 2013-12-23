require 'spec_helper'

describe Owner do
  let(:blank_values) { [nil, ''] }
  let(:bad_emails) { ['eben@','@gmail.com', 'foo']}

  it { should have_valid(:firstname).when('Marc') }
  it { should_not have_valid(:lastname).when(*blank_values) }

  it { should have_valid(:lastname).when('Maron') }
  it { should_not have_valid(:lastname).when(*blank_values) }

  it { should have_valid(:email).when('eben@gmail.com') }
  it { should_not have_valid(:email).when(*blank_values) }
  it { should_not have_valid(:email).when(*bad_emails) }

  it { should have_many(:pairings) }
  it { should have_many(:dogs).through(:pairings) }

end
