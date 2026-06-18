class Framehood < Formula
  desc "Generate images, video and audio with Framehood from the terminal"
  homepage "https://framehood.ai"
  version "0.1.3"

  on_macos do
    on_arm do
      url "https://github.com/Framehood/framehood-cli/releases/download/v0.1.3/framehood_darwin_arm64.tar.gz"
      sha256 "865ead69f50b220aefb0609a8c43ac50b6602fc7f5fc7ef0cbf8ac23b5dda299"
    end
    on_intel do
      url "https://github.com/Framehood/framehood-cli/releases/download/v0.1.3/framehood_darwin_amd64.tar.gz"
      sha256 "130b779623fe9cffa2657b2ba27b4336317f702a9e64fa699540d9ffb9504418"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Framehood/framehood-cli/releases/download/v0.1.3/framehood_linux_arm64.tar.gz"
      sha256 "4c527fb1683bb95eaebc5e65284da846a4c5812875b474270c692e6d098524d2"
    end
    on_intel do
      url "https://github.com/Framehood/framehood-cli/releases/download/v0.1.3/framehood_linux_amd64.tar.gz"
      sha256 "77329aefcd7d3e74df06967bd7629d777df6d657e65b6db9432b0550716b2378"
    end
  end

  def install
    bin.install "framehood"
  end

  test do
    system "#{bin}/framehood", "--version"
  end
end
