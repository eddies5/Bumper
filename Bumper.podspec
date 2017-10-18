Pod::Spec.new do |s|
  s.name             = 'Bumper'
  s.version          = '0.1.0'
  s.summary          = 'Easy version number bump detection.'
  s.description      = <<-DESC
Bumper looks for version number increases at app start up and calls your code when and where you want when a bump occurs. Great for displaying "New Features" views on upgrades.
                       DESC

  s.homepage         = 'https://github.com/eddies5/Bumper'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Eddie Saenz' => 'eddie@eddiesaenz.net' }
  s.source           = { :git => 'https://github.com/eddies5/Bumper.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/eddies5'

  s.ios.deployment_target = '8.0'

  s.source_files = 'Bumper/Classes/**/*'
end
