require 'spec_helper'

describe Deck do
  its(:cards){ should be_an_instance_of(Array) }
end
