Pod::Spec.new do |spec|
  spec.name         = 'CommonCrypto'
  spec.version      = '0.0.1'
  spec.license      = { :type => 'MIT' }
  spec.homepage     = 'https://github.com/mbanasiewicz/CommonCrypto'
  spec.authors      = { 'Maciej Banasiewicz' => 'mbanasiewicz@gmail.com' }
  spec.summary      = 'CommonCrypto wrapper'
  spec.source       = { :git => 'git@github.com:mbanasiewicz/CommonCrypto.git' }
  spec.source_files = 'CommonCrypto/*.{h,swift}'
  spec.pod_target_xcconfig = {
    "MODULEMAP_FILE[sdk=iphoneos*]" => "$(SRCROOT)/CommonCrypto/iphoneos.modulemap",
"MODULEMAP_FILE[sdk=iphonesimulator*]" => "$(SRCROOT)/CommonCrypto/iphonesimulator.modulemap",
"MODULEMAP_FILE[sdk=watchos*]" => "$(SRCROOT)/CommonCrypto/watchos.modulemap",
"MODULEMAP_FILE[sdk=watchsimulator*]" => "$(SRCROOT)/CommonCrypto/watchsimulator.modulemap",
"MODULEMAP_FILE[sdk=macosx*]" => "$(SRCROOT)/CommonCrypto/macosx.modulemap",
"MODULEMAP_FILE[sdk=appletvos*]" => "$(SRCROOT)/CommonCrypto/appletvos.modulemap",
"MODULEMAP_FILE[sdk=appletvsimulator*]" => "$(SRCROOT)/CommonCrypto/appletvsimulator.modulemap"
}
  spec.framework    = 'Security'
end