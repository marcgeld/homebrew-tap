class Airbag < Formula
  desc "Lightweight macOS command sandbox"
  homepage "https://github.com/marcgeld/airbag"
  url "https://github.com/marcgeld/airbag/releases/download/v0.0.1/airbag-macos-arm64.zip"
  sha256 "578508d4ded22c002f91a796fb1e8bf066df7ffcc61fb9d71e7a0f6b9109f61a"
  license "Apache-2.0"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  def install
    bin.install "airbag"
  end

  test do
    output = shell_output("#{bin}/airbag --help")
    assert_match "USAGE: airbag", output
  end
end
