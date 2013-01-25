shared_examples_for 'a project that updates only the most recent status' do
  let(:project) { described_class.new.tap {|c| c.save(validate: false) } }

  describe "#fetch_new_statuses" do
    let(:project_status) { double('project status') }
    let(:parsed_status) { ProjectStatus.new }

    def fetch_new_statuses
      project.fetch_new_statuses
    end

    before do
      project.stub(:status).and_return(project_status)
      project.stub(:parse_project_status).and_return(parsed_status)
      UrlRetriever.any_instance.stub(:retrieve_content)
    end

    context "when the parsed status is new" do
      before do
        project_status.stub(:match?).and_return(false)
      end

      it "creates a new status for the project" do
        expect { fetch_new_statuses }.to change(project.statuses, :count).by(1)
      end

      it "creates an online status" do
        fetch_new_statuses
        project.statuses.first.should be_online
      end
    end

    context "when the parsed status already exists" do
      before do
        project_status.stub(:match?).and_return(true)
      end

      it "does not create a new status for the project" do
        expect { fetch_new_statuses }.to_not change(project.statuses, :count)
      end
    end
  end
end
