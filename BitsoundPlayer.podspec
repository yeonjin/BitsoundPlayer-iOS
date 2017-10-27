Pod::Spec.new do |s|
  s.name         = "BitsoundPlayer"
  s.version      = "0.3.0"
  s.summary      = "소리 신호(Sound Beacon) 송신을 위한 iOS SDK framework"
  s.description  = <<-DESC
				    비트사운드가 무엇인가요?
				  	: 비트사운드는 소리에 디지털 정보를 실어서 모바일 앱에 전송하는 기술입니다. 사운들리를 통해 스마트 기기들은 마치 사람이 음성으로 대화하듯이 서로 대화할 수 있습니다. 개발자가 사운들리를 적용해서 쉽게 양방향 서비스를 만들 수 있도록 사운들리는 패키지된 소프트웨어를 제공합니다.
				  	왜 사운들리를 이용하나요?
				  	: 사운들리의 소리 신호(Sound Beacon)가 닿는 곳이라면 당신의 모바일 앱은 유저가 **무엇을 시청**하고 있는지, **어디에 위치하고 있는지**, **어떤 행동을 하고자 하는지**를 파악할 수 있습니다. 이런 맥락(Context)을 파악하게 되면 개인화된 서비스를 제공하거나, UX를 간편하게 개선할 수 있습니다.
				  	블루투스 등 다른 근거리 통신과 무엇이 다른가요?
				  	: * 사운들리 소리 신호(Sound Beacon)은 사람에게는 들리지 않는 높은 주파수(18.5~19.5kHz)의 소리로 데이터를 전송하기 때문에 원래 스피커가 송출하는 컨텐츠에 영향을 주지 않으며 서비스를 구현할 수 있습니다. 즉, 컨텐츠(영상, 음악)을 하나의 비콘처럼 활용할 수 있습니다.
				    * 사운들리 소리 신호(Sound Beacon)는 스피커/마이크가 있는 모든 기기에서 송수신 가능하므로 별도의 하드웨어 장비를 구축할 필요가 없습니다. 따라서 초기 투자 비용이 적고, 유지 보수가 쉽습니다.
				    * 공간을 구분할 수 있습니다. 옆 방의 소리가 다른 방에서 들리지 않는 것처럼 사운들리 소리 신호(Sound Beacon)은 소리의 특성으로 인해 공간 구분을 정확하게 할 수 있습니다.
				    * 소리는 블루투스(Bluetooth)와 다르게 앱 사용자가 임의로 사용 여부를 제한할 수 없습니다. 블루투스 활성 비율은 약 15% 이하기 때문에 블루투스로는 실질적으로 서비스 제공에 제한이 큽니다.
				    * 사운들리는 이와 같은 기술적 장점을 가지면서도 블루투스 이상의 정확한 송수신과 저전력 동작을 보장합니다.
				    어떻게 시작하나요?
				  	: Quick Start Guide(https://docs.bitsound.io/v1.0/docs/quick-start-guide)에서 시작하세요. 개발 워크플로가 정리되어 있습니다.
				  	Tutorial(https://docs.bitsound.io/v1.0/docs/tutorial)에서 사운들리의 기본 기능을 적용하는 과정을 샘플앱으로 따라해 볼 수 있습니다.
				  	Sample Scenarios(https://docs.bitsound.io/v1.0/docs/sample-scenarios)에서 내 앱의 시나리오를 찾으세요. 예제 코드를 제공해드립니다.
                   DESC

  s.homepage     = "https://docs.bitsound.io/v1.0/docs/introduction"
  s.license      = "Commercial"
  s.authors      = { "wonje,song" => "wonje@soundl.ly" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/soundlly/BitsoundPlayer-iOS.git", :tag => "#{s.version}" }
  s.ios.vendored_frameworks = 'BitsoundPlayer.framework'
  s.frameworks = 'Foundation', 'AudioToolbox', 'AVFoundation', 'CoreTelephony', 'UIKit'
  s.libraries = "stdc++"  
  s.dependency "BitsoundReceiver"
end
