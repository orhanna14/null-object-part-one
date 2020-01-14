require "spec_helper"

describe NoSubscription do
  describe "#has_mentoring?" do
    it "returns false" do
      expect(NoSubscription.new.has_mentoring?).to be false
    end
  end

  describe "#charge" do
    it "does not charge anything" do
      no_subscription = NoSubscription.new
      credit_card = double("credit_card")
      credit_card.stub("charge")

      no_subscription.charge(credit_card)

      expect(credit_card).not_to have_received(:charge)
    end
  end

  describe "#price" do
    it "does not have a price" do
      no_subscription = NoSubscription.new

      expect(no_subscription.price).to eq 0
    end
  end
end

