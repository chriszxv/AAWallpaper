platform :ios, '12.0'

use_frameworks!

inhibit_all_warnings!

workspace 'AAWallpaper.xcworkspace'

target 'AAWallpaper' do
  project 'AAWallpaper.xcodeproj'
  pod 'RxSwift', '= 5.1.1'
  pod 'RxCocoa', '= 5.1.1'
  pod 'RxGesture', '= 3.0.2'
  pod 'DeviceKit', '= 4.2.1'
end

post_install do |installer|
    installer.pods_project.targets.each do |target|
        installer.pods_project.targets.each do |target|
            target.build_configurations.each do |config|
                config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '12.0'
            end
        end
    end
end
