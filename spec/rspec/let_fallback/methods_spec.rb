RSpec.describe RSpec::LetFallback::Methods do
  describe "#let?" do
    context "with hash" do
      subject { some_object }

      let(:some_object) do
        {
          first_field: let?(:defined_one, 1),
          second_field: let?(:defined_two, "string")
        }
      end

      it { is_expected.to eq({ first_field: 1, second_field: "string" }) }

      context "with defined_one" do
        let(:defined_one) { 103 }

        it { is_expected.to eq({ first_field: 103, second_field: "string" }) }
      end
    end

    context "with variable" do
      subject { some_variable }

      let(:some_variable) { let?(:my_variable, { my: :hash }) }

      it { is_expected.to eq({ my: :hash }) }

      context "with my_variable" do
        let(:my_variable) { { overridden: :hash } }

        it { is_expected.to eq({ overridden: :hash }) }
      end
    end
  end
end
