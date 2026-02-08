class Vkscape < Formula
  desc "CLI/TUI tool for downloading your VK archive"
  homepage "https://github.com/yellalena/vkscape"
  url "https://github.com/yellalena/vkscape/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "0dcd8e3cc368cf08f627a75ab9ded4105f0753dffc166dadbdab0cc88228ac34"
  license ""

  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", bin/"vkscape", "."
  end

  test do
    system "#{bin}/vkscape", "--help"
  end
end
