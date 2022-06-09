Pod::Spec.new do |s|
  s.name             = 'DogTay1'
  s.version          = '1.0.0'
  s.summary          = 'Create a library for first time'
 
  s.description      = <<-DESC
This simple dog form. This library is for iPhone only. When click button will display a dialog box
                       DESC
 
  s.homepage         = 'https://github.com/adelinedog/dogFormView'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'TAY ANN MEI' => 't_rainbow_8@hotmail.com' }
  s.source           = { :git => 'https://github.com/adelinedog/dogFormView.git', :branch => "main", :tag => '1.0.0' }
 
  s.ios.deployment_target = '15.5'
  s.source_files = 'DogTay1/*.{swift, plist}'
  s.swift_version = '5.0'
 
end