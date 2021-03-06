Pod::Spec.new do |spec|
  spec.name         = 'PPCLINKAds-iOS-Lite-SDK'
  spec.version      = '5.2.0'
  spec.license 		= {"type" => "Copyright", "text" => "Copyright 2012 - 2018 PPCLINK. All rights reserved."}
  spec.homepage     = 'http://www.ppclink.com'
  spec.authors      = { 'Do Lam' => 'lamdgbk50@gmail.com' }
spec.summary      = '2019.04.20: Thêm facebook banner và fullscreen'
  spec.source = { :git => "git@bitbucket.org:ppclink/ppclink-ads-ios.git",
  				  :tag => "v#{spec.version}"}	
  
#  spec.frameworks 	= 'UIKit', 'CoreGraphics', 'CoreLocation', 'CoreTelephony', 'EventKit', 'EventKitUI',  'AudioToolbox', 'AVFoundation','CoreMedia', 'EventKit', 'EventKitUI', 'MediaPlayer', 'MessageUI', 'QuartzCore', 'SystemConfiguration', 'CoreMotion'  
  spec.weak_frameworks =  'CoreImage'
  spec.resources = "PPCLINKAds-SDK/*.xib" 
 # spec.resources = "PPCLINKAds-SDK/*.xib"	
  spec.platform = :ios, '9.0'
  spec.source_files = "PPCLINKAds-SDK/**/*.{h,m,a}"
  spec.vendored_libraries =  "PPCLINKAds-SDK/**/*.a"
  spec.vendored_frameworks = 'PPCLINKAds-SDK/**/*.framework'
  
  spec.exclude_files = "PPCLINKAds-SDK/MoPub/Adapter_StartApp/**/*.*", "PPCLINKAds-SDK/MoPub/Adapter_Vungle/**/*.*", "PPCLINKAds-SDK/MoPub/Adapter_InMobi/**/*.*" 

#  spec.libraries = 'z', 'sqlite3'  
  
#  spec.subspec 'VDFramework' do |s1|
#  	s1.source_files = 'PPCLINKAds-SDK/**/*.{h,m,a}'
#  end
spec.dependency 'Google-Mobile-Ads-SDK'
 # spec.dependency 'mopub-ios-sdk'
  spec.dependency 'FBAudienceNetwork'
 # spec.dependency 'AdColony'
  #spec.dependency 'ADXLibrary', '1.5.16', :git => 'https://adx-developer:developer2017@github.com/adxcorp/ADXLibrary_iOS.git'
  spec.dependency 'GoogleMobileAdsMediationTeads'
  spec.dependency 'GoogleMobileAdsMediationAppLovin'
  spec.dependency 'GoogleMobileAdsMediationAdColony'
  spec.dependency 'GoogleMobileAdsMediationInMobi'
  #spec.dependency 'GoogleMobileAdsMediationTapjoy'
  spec.dependency 'GoogleMobileAdsMediationUnity'
  spec.dependency 'GoogleMobileAdsMediationTestSuite'
  spec.dependency 'PersonalizedAdConsent'
  spec.dependency 'GoogleMobileAdsMediationFacebook'
  spec.dependency 'SDWebImage', '~> 5.0'
#  spec.dependency 'AdColony'
#  spec.dependency 'ChartboostSDK'
#  spec.dependency 'InMobiSDK'
#  spec.dependency 'VungleSDK-iOS'
  
  spec.xcconfig = { "OTHER_CFLAGS" => "-D __PPCLINKAds_Lite__", "LIBRARY_SEARCH_PATHS" => "\"$(PODS_ROOT)/**\"",
        "HEADER_SEARCH_PATHS" => "\"$(PODS_ROOT)/**\"",  "FRAMEWORK_SEARCH_PATHS" => "\"$(PODS_ROOT)/**\""}
end
