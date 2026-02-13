class Colgrep < Formula
  desc "Semantic code search powered by late-interaction models"
  homepage "https://github.com/lightonai/next-plaid"
  version "1.0.6"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lightonai/next-plaid/releases/download/1.0.6/colgrep-aarch64-apple-darwin.tar.xz"
      sha256 "0195c494dca8ddf91fb443a4192a03ead73753ef7abbb30fb86e8aa4c3acc67a"
    else
      url "https://github.com/lightonai/next-plaid/releases/download/1.0.6/colgrep-x86_64-apple-darwin.tar.xz"
      sha256 "b5c88175941b267ff04d73999b08c4334fdb35c1d017538c6a3f0446eae75ef3"
    end
  end

  def install
    bin.install "colgrep"
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/lightonai/next-plaid/releases/download/1.0.6/colgrep-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "0f042f03bc24528a309ed3e94c578f70f9ae2475002cbfcecfe9a4166f5e4432"
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/colgrep --version")
  end
end
