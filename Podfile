def import_pods
  pod 'CryptoSwift', '~> 0.13'
end

target 'EthereumAddress' do
  platform :osx, '10.11'

  use_frameworks!
  import_pods

  target 'EthereumAddressTests' do
    inherit! :search_paths

    use_frameworks!
    import_pods

  end

end
