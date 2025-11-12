class CoconutPm < Formula
  desc "Secure, local-first CLI password manager with Zero Knowledge Architecture"
  homepage "https://github.com/ompatil-15/coconut"
  url "https://github.com/ompatil-15/coconut/archive/v1.0.0.tar.gz"
  sha256 "6b96f4c38f3f18db467ba1a28a831d22cbac2f2160c0014f6726c6c7ffce8ca6`"
  license "Apache-2.0"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "."
  end

  test do
    system "#{bin}/coconut", "--version"
  end
end