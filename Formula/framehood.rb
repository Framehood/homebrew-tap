class Framehood < Formula
  desc "Generate images, video and audio with Framehood from the terminal"
  homepage "https://framehood.ai"
  version "0.1.1"

  on_macos do
    on_arm do
      url "https://github.com/Framehood/framehood-cli/releases/download/v0.1.1/framehood_darwin_arm64.tar.gz"
      sha256 "8a70144a60674a7bec3e49d5ba7442a078417956f1280174c1598e9775ddb52b"
    end
    on_intel do
      url "https://github.com/Framehood/framehood-cli/releases/download/v0.1.1/framehood_darwin_amd64.tar.gz"
      sha256 "890cd7131fe8260af445f8291a6bfb40e0a87b6190671d968e9289b3795a36f2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Framehood/framehood-cli/releases/download/v0.1.1/framehood_linux_arm64.tar.gz"
      sha256 "93ced686c31744829059bfb82f1d8b342c7e5ba27a2ccbf6a33ded3e41f11cf1"
    end
    on_intel do
      url "https://github.com/Framehood/framehood-cli/releases/download/v0.1.1/framehood_linux_amd64.tar.gz"
      sha256 "99be22096f93d36786cb95d13413f8676d67a6c6c74525214ee13cb2e3c726fd"
    end
  end

  def install
    bin.install "framehood"
  end

  test do
    system "#{bin}/framehood", "--version"
  end
end
