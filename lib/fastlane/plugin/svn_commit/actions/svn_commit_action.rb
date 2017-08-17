module Fastlane
  module Actions
    class SvnCommitAction < Action
      def self.run(params)
        if params[:path].kind_of?(String)
          paths = params[:path].shellescape
        else
          paths = params[:path].map(&:shellescape).join(' ')
        end
        result = Actions.sh("svn commit -m #{params[:message].shellescape} #{paths}")
        UI.success("Successfully committed.")
        return result
      end

      def self.description
        "Commit to svn repos with fastlane"
      end

      def self.authors
        ["cleexiang"]
      end

      def self.return_value
        # If your method provides a return value, you can describe here what it does
      end

      def self.details
        # Optional:
        "commit to svn repos with fastlane"
      end
      def self.available_options
        [
          FastlaneCore::ConfigItem.new(key: :path,
                                       description: "The file you want to commit",
                                       is_string: false),
          FastlaneCore::ConfigItem.new(key: :message,
                                       description: "The commit message that should be used")
        ]
      end

      def self.is_supported?(platform)
        # Adjust this if your plugin only works for a particular platform (iOS vs. Android, for example)
        # See: https://github.com/fastlane/fastlane/blob/master/fastlane/docs/Platforms.md
        #
        # [:ios, :mac, :android].include?(platform)
        true
      end
    end
  end
end
