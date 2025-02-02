class Yomo < Formula
  desc "Streaming Serverless Framework for Low-latency edge computing applications"
  homepage "https://yomo.run"
  url "https://github.com/yomorun/yomo/archive/v0.4.1.tar.gz"
  sha256 "309095eadd8f1d8230a79ad47aa20728edcde55089077f210f06fa8a11627760"
  license "Apache-2.0"

  depends_on "go" => :build

  def install
    system "make", "build"
    bin.install "bin/yomo"
  end

  test do
    assert_equal "Run a YoMo Serverless Function in development mode",
    shell_output("#{bin}/yomo -h").lines.first.chomp
  end
end
