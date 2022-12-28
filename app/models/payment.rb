class Payment < ApplicationRecord
  state_machine :state, initial: :pending do
    event :process do
      transition pending: :process
    end
  end
end
