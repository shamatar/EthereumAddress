Pod::Spec.new do |s|
s.name             = "EthereumAddress"
s.version          = "1.0.0"
s.summary          = "Ethereum address module in vanilla Swift for iOS ans macOS"

s.description      = <<-DESC
Ethereum address module in vanilla Swift for iOS ans macOS, intended for mobile developers of wallets, Dapps and Web3.0
DESC

s.homepage         = "https://github.com/shamatar/EthereumAddress"
s.license          = 'Apache License 2.0'
s.author           = { "Alex Vlasov" => "alex.m.vlasov@gmail.com" }
s.source           = { :git => 'https://github.com/shamatar/EthereumAddress.git', :tag => s.version.to_s }
s.social_media_url = 'https://twitter.com/shamatar'

s.swift_version = '4.1'
s.module_name = 'EthereumAddress'
s.ios.deployment_target = "9.0"
s.osx.deployment_target = "10.11"
s.source_files = "EthereumAddress/Classes/*.{swift}", "EthereumAddress/EthereumAddress.h"
s.public_header_files = "EthereumAddress/EthereumAddress.h"
s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }

s.dependency 'CryptoSwift', '~> 0.13'
end
