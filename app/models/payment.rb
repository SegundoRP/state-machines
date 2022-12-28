class Payment < ApplicationRecord
  state_machine :state, initial: :pending do
    event :process do
      transition pending: :processing
    end

    event :fail do
      transition processing: :failed
    end

    event :success do
      transition processing: :successful
    end

    event :refund do
      transition successful: :refunded
    end
  end
end
