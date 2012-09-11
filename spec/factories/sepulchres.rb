FactoryGirl.define do
  factory :sepulchre do
    decedent { FactoryGirl.generate(:decedent) }
    birth { FactoryGirl.generate(:date) }
    burial { FactoryGirl.generate(:date) }
    history { FactoryGirl.generate(:text) }
  end
end
