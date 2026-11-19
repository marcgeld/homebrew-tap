class Swol < Formula
  desc "SwiftWakeOnLan cli"
  homepage "https://github.com/marcgeld/SwiftWakeOnLan"
  url "https://github.com/marcgeld/SwiftWakeOnLan/releases/download/v0.0.5/swol-macos.zip"
  sha256 "43a848730f8e8971c81886d5926b505ed69383b03c8504a085b2ff526a12c66f"
  license "Apache-2.0"

  depends_on macos: :tahoe

  def install
    bin.install "swol"
  end

  test do
    output = shell_output("#{bin}/swol 2>&1", 1)
    assert_match "Usage:", output
  end
end
