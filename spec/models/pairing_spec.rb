require 'spec_helper'

describe Pairing do

  it { should belong_to(:owner) }
  it { should belong_to(:dog) }

end
