#
# Be sure to run `pod lib lint WZEnvironmental.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'WZEnvironmental'
  s.version          = '0.2.0'
  s.summary          = 'A short description of WZEnvironmental.'
  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/WZLYiOS/WZEnvironmental'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '327847390@qq.com' => '327847390@qq.com' }
  s.source           = { :git => 'https://github.com/WZLYiOS/WZEnvironmental.git', :tag => s.version.to_s }
  s.requires_arc = true
  s.static_framework = true
  s.swift_version         = '5.0'
  s.ios.deployment_target = '9.0'
  s.source_files = 'WZEnvironmental/Classes/**/*'
end
