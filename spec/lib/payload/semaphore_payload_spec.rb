require 'spec_helper'

describe SemaphorePayload do

  # let(:status_content) { SemaphoreExample.new(json).read }
  # let(:payload) { SemaphorePayload.new.tap{|p| p.status_content = status_content} }
  # let(:content) { payload.status_content.first }
  # let(:json) { "success.json" }

  # describe '#convert_content!' do
    # subject { payload.convert_content!(status_content) }

    # context 'when content is valid' do
      # let(:expected_content) { double }
      # before do
        # JSON.stub(:parse).and_return(expected_content)
      # end

      # it{ should == [expected_content] }
    # end

    # context 'when content is corrupt / badly encoded' do
      # before do
        # JSON.stub(:parse).and_raise(JSON::ParserError)
      # end

      # it 'should be marked as unprocessable' do
        # payload.processable.should be_false
      # end
    # end
  # end

  # describe '#parse_success' do
    # subject { payload.parse_success(content) }

    # context 'the payload contains a successful build status' do
      # it { should be_true }
    # end

    # context 'the payload contains a failure build status' do
      # let(:json) { "failure.json" }
      # it { should be_false }
    # end
  # end

  # describe '#parse_url' do
    # subject { payload.parse_url(content) }

    # it { should == 'https://semaphoreapp.com/projects/123/branches/456/builds/1' }
  # end

  # describe '#parse_build_id' do
    # subject { payload.parse_build_id(content) }
    # it { should == 1 }
  # end

  # describe '#parse_published_at' do
    # subject { payload.parse_published_at(content) }
    # it { should == Time.new(2012, 8, 16, 2, 16, 46, "-07:00") }
  # end

end
