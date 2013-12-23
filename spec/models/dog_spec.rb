require 'spec_helper'

describe Dog do
  let(:blank_values) { [nil, ''] }

  it { should have_valid(:name).when('Spot') }
  it { should_not have_valid(:name).when(*blank_values) }

  it { should have_many(:pairings) }
  it { should have_many(:owners).through(:pairings) }

end
