describe MyappSchema do
  describe 'query' do
    subject do
      described_class.execute(query_string, context: { current_user: current_user }, variables: {})
    end

    let(:current_user) { User.find(1) }
    let(:query_string) do
      %|{
        viewer {
          email
          shops {
            name
            site { url }
            items { name }
          }
        }
      }|
    end

    context "正常系" do
      it { p subject }
    end
  end
end
