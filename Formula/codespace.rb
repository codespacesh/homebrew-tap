class Codespace < Formula
  desc "Desktop app for managing Coder development environments"
  homepage "https://codespace.sh"
  version "0.3.50"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/codespacesh/homebrew-tap/releases/download/v#{version}/codespace-v#{version}-aarch64-apple-darwin"
      sha256 "617cb6416f3f9dea3d4294fb59d0fc50701fe6ee0f893a2667bab2cd4d6048f4"
    else
      url "https://github.com/codespacesh/homebrew-tap/releases/download/v#{version}/codespace-v#{version}-x86_64-apple-darwin"
      sha256 "3c41363f4452bf0337be53465350ad96c247e4d0cb216dc2a0d03872f72acdf1"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "codespace-v#{version}-aarch64-apple-darwin" => "codespace"
    else
      bin.install "codespace-v#{version}-x86_64-apple-darwin" => "codespace"
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/codespace --version", 2)
  end
end
