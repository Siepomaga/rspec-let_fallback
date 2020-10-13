RSpec.describe RSpec::LetFallback do
  describe "Version" do
    subject { described_class::Version::STRING }

    it { is_expected.to match(/^(?:[0-9]+\.){2}[0-9]+$/) }
  end
end
