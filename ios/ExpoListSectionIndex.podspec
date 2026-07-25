Pod::Spec.new do |s|
  s.name           = 'ExpoListSectionIndex'
  s.version        = '1.0.0'
  s.summary        = 'Native iOS 26 alphabetical section indexes for Expo UI'
  s.description    = 'Adds SwiftUI sectionIndexLabel and listSectionIndexVisibility modifiers to Expo UI.'
  s.author         = 'Elcaten'
  s.homepage       = 'https://github.com/Elcaten/expo-list-section-index'
  s.platforms      = { :ios => '16.4' }
  s.swift_version  = '5.9'
  s.source         = {
    :git => 'https://github.com/Elcaten/expo-list-section-index.git',
    :tag => s.version.to_s
  }
  s.static_framework = true

  s.dependency 'ExpoModulesCore'
  s.dependency 'ExpoUI'

  s.pod_target_xcconfig = {
    'DEFINES_MODULE' => 'YES'
  }

  s.source_files = '**/*.{h,m,mm,swift,hpp,cpp}'
end
