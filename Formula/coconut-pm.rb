class CoconutPm < Formula
  desc "Secure, local-first CLI password manager with Zero Knowledge Architecture"
  homepage "https://github.com/ompatil-15/coconut"
  url "https://github.com/ompatil-15/coconut/archive/v1.0.0.tar.gz"
  sha256 "f52445f8c71b59b9d27752a520df49436f2a57c1a3048c2ee0ed25059597dad4"
  license "Apache-2.0"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "."
  end

  test do
    system "#{bin}/coconut", "--version"
  end
end