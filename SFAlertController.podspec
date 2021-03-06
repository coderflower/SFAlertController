#
# Be sure to run `pod lib lint SFAlertController.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SFAlertController'
  s.version          = '0.1.3'
  s.summary          = '仿系统的UIAlertController,增加弹出自定义View功能.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/coderflower/SFAlertController'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '花菜' => 'developer.swifter@gmail.com' }
  s.source           = { :git => 'https://github.com/coderflower/SFAlertController', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'
  s.swift_version = '5.0'
  s.source_files = 'SFAlertController/Classes/**/*'
  s.static_framework = true
  s.default_subspec = "Source"
  s.subspec 'Source' do |source|
      source.source_files = 'SFAlertController/**/*.{h,m,swift}'
  end
  s.subspec 'Binary' do |binary|
      binary.vendored_frameworks = "Carthage/Build/iOS/Static/SFAlertController.framework"
      binary.user_target_xcconfig = { 'LIBRARY_SEARCH_PATHS' => '$(TOOLCHAIN_DIR)/usr/lib/swift/$(PLATFORM_NAME)' }
  end
  # s.resource_bundles = {
  #   'SFAlertController' => ['SFAlertController/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
