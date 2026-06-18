class Framehood < Formula
  desc "Generate images, video and audio with Framehood from the terminal"
  homepage "https://framehood.ai"
  version "0.1.2"

  on_macos do
    on_arm do
      url "https://github.com/Framehood/framehood-cli/releases/download/v0.1.2/framehood_darwin_arm64.tar.gz"
      sha256 "28b691a361c2d437876ffdee92b52afb7350d75eaee06daab677acfbdb95ae9b"
    end
    on_intel do
      url "https://github.com/Framehood/framehood-cli/releases/download/v0.1.2/framehood_darwin_amd64.tar.gz"
      sha256 "26f513e6520d7789f4d04053dfd66ecfa08e58138683ffda96558148db4ece54"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Framehood/framehood-cli/releases/download/v0.1.2/framehood_linux_arm64.tar.gz"
      sha256 "99e18435aaa9d9a8d946570f618f45bbebb87774cd29f56bc7b3d10bd3d7c1d9"
    end
    on_intel do
      url "https://github.com/Framehood/framehood-cli/releases/download/v0.1.2/framehood_linux_amd64.tar.gz"
      sha256 "503b59336a2791bd8f7b567d5d1f077d9cd0b7d55b8f948b9e588575bcac3dde"
    end
  end

  def install
    bin.install "framehood"
  end

  test do
    system "#{bin}/framehood", "--version"
  end
end
