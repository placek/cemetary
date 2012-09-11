require 'spec_helper'

describe Sepulchre do
  describe "validations" do
    context "valid entry" do
      subject { entry }
      it { should be_valid }
    end
    context "entry without decedent" do
      subject { entry(decedent: nil) }
      it { should_not be_valid }
    end
    context "entry without decedent" do
      subject { entry(burial: nil) }
      it { should_not be_valid }
    end
  end

  def entry options = {}
    attributes = { decedent: generate(:decedent), burial: generate(:date) }.merge(options)
    Sepulchre.new attributes
  end
end
