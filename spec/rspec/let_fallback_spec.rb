RSpec.describe RSpec::LetFallback do
  describe "::VERSION" do
    subject { described_class::VERSION }

    it { is_expected.to match(/^(?:[0-9]+\.){2}[0-9]+$/) }
  end
end
