Pod::Spec.new do |spec|
  spec.name         = 'PPCLINKAds-iOS-SDK'
  spec.version      = '6.5.0'
  spec.license 		= {"type" => "Copyright", "text" => "Copyright 2012 - 2018 PPCLINK. All rights reserved."}
  spec.homepage     = 'http://www.ppclink.com'
  spec.authors      = { 'Do Lam' => 'lamdgbk50@gmail.com' }
spec.summary      = '2020.11.27: Mediation admob'
  
  spec.source = { :git => "git@bitbucket.org:ppclink/ppclink-ads-ios.git",
  				  :tag => "v#{spec.version}"}	
  
#  spec.frameworks 	= 'UIKit', 'CoreGraphics', 'CoreLocation', 'CoreTelephony', 'EventKit', 'EventKitUI',  'AudioToolbox', 'AVFoundation','CoreMedia', 'EventKit', 'EventKitUI', 'MediaPlayer', 'MessageUI', 'QuartzCore', 'SystemConfiguration', 'CoreMotion'  
  spec.weak_frameworks =  'CoreImage'
  
  spec.resources = "PpclinkAdsIos/Example/PpclinkAdsIos/PPCLINKAds-SDK/*.xib"	
 #spec.resource_bundles = {
  #   'PPCLINKAds-SDK' => ['PPCLINKAds-SDK/**/*.xib']
 #}
  spec.platform = :ios, '11.0'
  spec.source_files = "PpclinkAdsIos/Example/PpclinkAdsIos/PPCLINKAds-SDK/**/*.{h,m,a}"
  spec.vendored_libraries =  "PpclinkAdsIos/Example/PpclinkAdsIos/PPCLINKAds-SDK/**/*.a"
  spec.vendored_frameworks = 'PpclinkAdsIos/Example/PpclinkAdsIos/PPCLINKAds-SDK/*.framework'
  
  spec.exclude_files = "PpclinkAdsIos/Example/PpclinkAdsIos/PPCLINKAds-SDK/MoPub/Adapter_StartApp/**/*.*", "PpclinkAdsIos/Example/PpclinkAdsIos/PPCLINKAds-SDK/MoPub/Adapter_Vungle/**/*.*", "PpclinkAdsIos/Example/PpclinkAdsIos/PPCLINKAds-SDK/MoPub/Adapter_InMobi/**/*.*" 

  spec.dependency 'Google-Mobile-Ads-SDK', '9.5.0'
  #spec.dependency 'GoogleMobileAdsMediationAdColony', '4.7.1'
 # spec.dependency 'AdColony'
  #spec.dependency 'ADXLibrary', '1.5.16', :git => 'https://adx-developer:developer2017@github.com/adxcorp/ADXLibrary_iOS.git'
 # spec.dependency 'GoogleMobileAdsMediationTeads'
  spec.dependency 'GoogleMobileAdsMediationAppLovin', '11.3.3.0'
  
 #spec.dependency 'GoogleMobileAdsMediationInMobi', '9.2.1'
  #spec.dependency 'GoogleMobileAdsMediationTapjoy'
 # spec.dependency 'GoogleMobileAdsMediationUnity', '3.7.1'
  #spec.dependency 'GoogleMobileAdsMediationTestSuite'
  spec.dependency 'PersonalizedAdConsent'
  spec.dependency 'GoogleMobileAdsMediationFacebook', '6.10.0.0'
  #spec.dependency 'FBSDKCoreKit', '11.2.0'
  
  spec.xcconfig = { "LIBRARY_SEARCH_PATHS" => "\"$(PODS_ROOT)/**\"",
        "HEADER_SEARCH_PATHS" => "\"$(PODS_ROOT)/**\"",  "FRAMEWORK_SEARCH_PATHS" => "\"$(PODS_ROOT)/**\""}
  spec.user_target_xcconfig = { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES' }
end
