class Codespace < Formula
  desc "Desktop app for managing Coder development environments"
  homepage "https://codespace.sh"
  version "0.1.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/codespacesh/homebrew-tap/releases/download/v#{version}/codespace-v#{version}-aarch64-apple-darwin"
      sha256 "PLACEHOLDER"
    else
      url "https://github.com/codespacesh/homebrew-tap/releases/download/v#{version}/codespace-v#{version}-x86_64-apple-darwin"
      sha256 "PLACEHOLDER"
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
