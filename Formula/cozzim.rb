# url · sha256 · version은 .github/workflows/release.yml이 새 버전마다 고친다.
class Cozzim < Formula
  desc "Book Cozzim meeting rooms from the terminal"
  homepage "https://coworkcity-cozzim.vercel.app"
  url "https://github.com/coworkcity-team/homebrew-tap/releases/download/cozzim-v0.1.0/cozzim-macos.tar.gz"
  sha256 "de221d503f51814c210fc014bc5864eebaaacc4cdf049285e9228239f04ac7f3"
  version "0.1.0"

  depends_on :macos

  def install
    bin.install "cozzim"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cozzim --version")
  end
end
