class Askafm < Formula
  desc "CLI for Apple Foundation Models"
  homepage "https://github.com/marcgeld/AskAFM"
  url "https://github.com/marcgeld/AskAFM/releases/download/v0.0.1/askafm-macos.zip"
  sha256 "90c77fe503740993e868aaadd1359c3c895086a9f912097ba78e47883af12134"
  license "Apache-2.0"

  def install
    bin.install "askafm"
  end

  test do
      output = shell_output("#{bin}/askafm --help")
      assert_match "USAGE", output
  end
end
