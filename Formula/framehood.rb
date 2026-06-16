class Framehood < Formula
  desc "Framehood CLI — generate images, video and audio from your terminal"
  homepage "https://framehood.ai"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/Framehood/framehood-cli/releases/download/v0.1.0/framehood_darwin_arm64.tar.gz"
      sha256 "99ffb25d8a3028f8682cac7466b5dabd490d3c40915fca3a3395ffbb1efe2969"
    end
    on_intel do
      url "https://github.com/Framehood/framehood-cli/releases/download/v0.1.0/framehood_darwin_amd64.tar.gz"
      sha256 "ffd2ddc9599e8da1cc59020135a781f7266f678c697dac94a2acf3a14ab28ca7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Framehood/framehood-cli/releases/download/v0.1.0/framehood_linux_arm64.tar.gz"
      sha256 "2da5ec63c507db7693a4dc6dbcf3880103b0ae4554803b61bc289443b084d0c4"
    end
    on_intel do
      url "https://github.com/Framehood/framehood-cli/releases/download/v0.1.0/framehood_linux_amd64.tar.gz"
      sha256 "cbf96c955985e9b5c6f8065031d2be2ba8b7820fc3721ee93fb64ae25d595247"
    end
  end

  def install
    bin.install "framehood"
  end

  test do
    system "#{bin}/framehood", "--version"
  end
end
