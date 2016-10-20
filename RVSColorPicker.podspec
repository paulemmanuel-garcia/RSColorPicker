
#
# Be sure to run `pod lib lint RVSColorPicker.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "RVSColorPicker"
  s.version          = "0.1.0"
  s.summary          = "Generate color easily."
  s.description      = <<-DESC
                            RVSColorPicker lets you generate one color or a palette of colors.
                            Furthermore, you could exclude some colors from the generation.
                            It is also possible to generate colors for white text.
                       DESC

  s.homepage         = "https://github.com/paulemmanuel-garcia/RSColorPicker"
  s.license          = 'MIT'
  s.author           = { "Paul-Emmanuel Garcia" => "garcia.paulemmanuel@gmail.com" }
  s.source           = { :git => "https://github.com/paulemmanuel-garcia/RSColorPicker.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/pemgarcia'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'RSColorPicker/*.{m,h}'

end
