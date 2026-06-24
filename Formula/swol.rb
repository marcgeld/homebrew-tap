class Swol < Formula
  desc "SwiftWakeOnLan cli"
  homepage "https://github.com/marcgeld/SwiftWakeOnLan"
  url "https://github.com/marcgeld/SwiftWakeOnLan/releases/download/v0.0.3/swol-macos.zip"
  sha256 "9dfee4affa1244408962035d18318d2e22d5d32e531aab603541e0ebb0e1024b"
  license "Apache-2.0"

  def install
    bin.install "swol"
  end

  test do
      output = shell_output("#{bin}/swol 2>&1", 1)
      assert_match "USAGE", output
  end
end
