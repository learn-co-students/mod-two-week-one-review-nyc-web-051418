require 'rails_helper'

RSpec.describe Sea, :type => :model do
  describe "#waveheight" do
    subject { described_class.new(wave_height: 50).waveheight }

    it { is_expected.to eq "50 ft"}
  end
end
