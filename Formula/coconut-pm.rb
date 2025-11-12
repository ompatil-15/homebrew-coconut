class CoconutPm < Formula
  desc "Secure, local-first CLI password manager with Zero Knowledge Architecture"
  homepage "https://github.com/ompatil-15/coconut"
  url "https://github.com/ompatil-15/coconut/archive/v1.0.0.tar.gz"
  sha256 "440d5b84ade063612157aef92548cd00cac18e704310229e7f14da3e15ce76e4"
  license "Apache-2.0"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "."
  end

  test do
    system "#{bin}/coconut", "--version"
  end
end