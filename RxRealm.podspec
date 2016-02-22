Pod::Spec.new do |s|

  s.name             = "RxRealm"
  s.version          = "0.0.3"
  s.summary          = "Reactive interface for Realm using RxSwift"

 # s.tvos.deployment_target = '9.0'
  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = "10.9"
  s.watchos.deployment_target = "2.0"

  s.description      = <<-DESC
                        A simple Realm reactive wrapper for RxSwift. For Swift 2.0 and iOS/OSX/watchOS platforms"
                       DESC

  s.homepage         = "https://github.com/carlosypunto/RxRealm"
  s.license          = 'MIT'
  s.author           = { "Carlos García" => "carlosypunto@gmail.com" }
  s.source           = { :git => "https://github.com/carlosypunto/RxRealm.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/carlos_a_secas'

  s.requires_arc = true

  s.default_subspec = "Core"

  s.subspec "Core" do |ss|
    ss.source_files  = "RxRealm/*.{swift,h}"
    ss.dependency "RxSwift", "~> 2.2.0"
    ss.dependency "RealmSwift", "~> 0.98"
    ss.framework  = "Foundation"
  end


end
