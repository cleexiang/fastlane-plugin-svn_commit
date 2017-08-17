module Fastlane
  module Helper
    class SvnCommitHelper
      # class methods that you define here become available in your action
      # as `Helper::SvnCommitHelper.your_method`
      #
      def self.show_message
        UI.message("Hello from the svn_commit plugin helper!")
      end
    end
  end
end
