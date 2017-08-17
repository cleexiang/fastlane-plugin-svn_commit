describe Fastlane::Actions::SvnCommitAction do
  describe '#run' do
    it 'prints a message' do
      expect(Fastlane::UI).to receive(:message).with("The svn_commit plugin is working!")

      Fastlane::Actions::SvnCommitAction.run(nil)
    end
  end
end
