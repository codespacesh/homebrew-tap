cask "codespace" do
  version "0.3.55"

  if Hardware::CPU.arm?
    url "https://github.com/codespacesh/homebrew-tap/releases/download/v#{version}/Codespace-v#{version}-aarch64-apple-darwin.zip"
    sha256 "9ce534564aa251e868639038319eba63a93c2501542defd413a3430301db5072"
  else
    url "https://github.com/codespacesh/homebrew-tap/releases/download/v#{version}/Codespace-v#{version}-x86_64-apple-darwin.zip"
    sha256 "c6bc9ac384ade9c16dfacff2fd946afbb08c5b896e5857d8c75771e6ac0f5a91"
  end

  name "Codespace"
  desc "Desktop app for managing Coder development environments"
  homepage "https://codespace.sh"

  app "Codespace.app"

  zap trash: [
    "~/Library/Application Support/codespace",
    "~/Library/Caches/codespace",
  ]
end
