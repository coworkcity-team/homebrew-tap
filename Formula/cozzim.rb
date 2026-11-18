# url · sha256 · version은 .github/workflows/release.yml이 새 버전마다 고친다.
class Cozzim < Formula
  desc "Book Cozzim meeting rooms from the terminal"
  homepage "https://coworkcity-cozzim.vercel.app"
  url "https://github.com/coworkcity-team/homebrew-tap/releases/download/cozzim-v0.2.0/cozzim-macos.tar.gz"
  sha256 "48201fcd6bebea2740a9e55b889eb5be1a1ce44188636c1479a16e24eafd865f"
  version "0.2.0"

  depends_on :macos

  def install
    bin.install "cozzim"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cozzim --version")
  end
end
