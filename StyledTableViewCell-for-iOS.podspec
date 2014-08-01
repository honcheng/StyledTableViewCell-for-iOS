#
#  Be sure to run `pod spec lint StyledTableViewCell-for-iOS.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|
  s.name         = "StyledTableViewCell-for-iOS"
  s.version      = "1.1"
  s.summary      = "Customize table view cell border and highlights"

  s.description  = <<-DESC
                   A longer description of StyledTableViewCell-for-iOS in Markdown format.

                   * Think: Why did you write this? What is the focus? What does it do?
                   * CocoaPods will be using this to generate tags, and improve search results.
                   * Try to keep it short, snappy and to the point.
                   * Finally, don't worry about the indent, CocoaPods strips it!
                   DESC

  s.homepage     = "https://github.com/honcheng/StyledTableViewCell-for-iOS"
  s.license      = "MIT (example)"
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author             = { "Muh Hon Cheng" => "honcheng@gmail.com" }
  s.social_media_url   = "http://twitter.com/honcheng"
  s.source       = { :git => "https://github.com/honcheng/StyledTableViewCell-for-iOS.git", :tag => "1.1" }
  s.platform     = :ios
  s.source_files  = 'StyledTableViewCell/'
  s.framework  = 'QuartzCore'
  s.requires_arc = true
end
