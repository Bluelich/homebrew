class Nave < Formula
  homepage "https://github.com/isaacs/nave"
  url "https://github.com/isaacs/nave/archive/v0.5.1.tar.gz"
  sha256 "8b9f76b97c07b6d3f623d0ccc9287e79e5107701bcf9eb12c82a02547ce4a70c"

  head "https://github.com/isaacs/nave.git"

  def install
    bin.install "nave.sh" => "nave"
  end

  test do
    assert_match "0.10.30", shell_output("#{bin}/nave ls-remote")
  end
end
