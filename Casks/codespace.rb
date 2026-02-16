cask "codespace" do
  version "0.3.56"

  if Hardware::CPU.arm?
    url "https://github.com/codespacesh/homebrew-tap/releases/download/v#{version}/Codespace-v#{version}-aarch64-apple-darwin.zip"
    sha256 "1020601315c245c14ca27d84a0a203b3df159153571866d8f7c3dff20c494a63"
  else
    url "https://github.com/codespacesh/homebrew-tap/releases/download/v#{version}/Codespace-v#{version}-x86_64-apple-darwin.zip"
    sha256 "3ac7c693b1910512168d54b921a5eb8b82a1d38e37ec0c6dbb702d1402056c3d"
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
