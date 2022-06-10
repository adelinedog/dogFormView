Pod::Spec.new do |s|
  s.name             = 'DogTay1'
  s.version          = '1.0.2'
  s.summary          = 'Create a library for first time'
 
  s.description      = <<-DESC
This simple dog form. This library is for iPhone only. When click button will display a dialog box
                       DESC
 
  s.homepage         = 'https://github.com/adelinedog/dogFormView'
  s.license          = { :type => 'MIT', :file => 'LICENSE', :text => <<-LICENSE
MIT License
Copyright © 2022 Tay Ann Mei 
Permission is hereby granted, free of charge, to any person obtaining a copy 
of this software and associated documentation files (the "Software"), to deal 
in the Software without restriction, including without limitation the rights 
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell 
copies of the Software, and to permit persons to whom the Software is 
furnished to do so, subject to the following conditions: 
The above copyright notice and this permission notice shall be included in all 
copies or substantial portions of the Software. 
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR 
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, 
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE 
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER 
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, 
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE 
SOFTWARE.
LICENSE
 }
  s.author           = { 'TAY ANN MEI' => 't_rainbow_8@hotmail.com' }
  s.source           = { :git => 'https://github.com/adelinedog/dogFormView.git', :branch => "main", :tag => '1.0.2' }
 
  s.ios.deployment_target = '15.5'
  s.source_files = 'DogTay1/*.{swift, plist, txt, xib}'
  s.swift_version = '5.0'
  s.resource_bundles = {
    'DogTay1' => ['Pod/Classes/**/*.{storyboard,xib,xcassets,json,imageset,png}']
  }
 
end