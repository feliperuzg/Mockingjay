Pod::Spec.new do |spec|
  spec.name = 'Mockingjay'
  spec.version = '2.0.0'
  spec.summary = 'An elegant library for stubbing HTTP requests with ease in Swift.'
  spec.homepage = 'https://github.com/kylef/Mockingjay'
  spec.license = { :type => 'BSD', :file => 'LICENSE' }
  spec.author = { 'Kyle Fuller' => 'kyle@fuller.li' }
  spec.social_media_url = 'http://twitter.com/kylefuller'
  spec.source = { :git => 'https://github.com/kylef/Mockingjay.git', :tag => "#{spec.version}" }
  spec.ios.deployment_target = '8.0'
  spec.osx.deployment_target = '10.9'
  spec.requires_arc = true

  spec.subspec 'Core' do |core_spec|
    core_spec.dependency 'URITemplate', '~> 2.0'
    core_spec.source_files = 'Mockingjay/Mockingjay.{h,swift}',
        'Mockingjay/MockingjayProtocol.swift',
        'Mockingjay/{Matchers,Builders}.swift',
        'Mockingjay/NSURLSessionConfiguration.swift',
        'Mockingjay/MockingjayURLSessionConfiguration.m'
  end
end

