class DatabricksTui < Formula
  desc "Terminal dashboard for Databricks"
  homepage "https://github.com/pjhamera/databricks-tui"
  version "0.27.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pjhamera/databricks-tui/releases/download/v#{version}/databricks-tui-macos-arm64.tar.gz"
      sha256 "7c728b19086018eeb121323ad0548853146b70ef2288964ce9c255c7fec57187"
    else
      url "https://github.com/pjhamera/databricks-tui/releases/download/v#{version}/databricks-tui-macos-x86_64.tar.gz"
      sha256 "b20eb1591e623be252dd57bc3585bb47b20105225992f0f5fa9d69c6207303fd"
    end
  end

  on_linux do
    url "https://github.com/pjhamera/databricks-tui/releases/download/v#{version}/databricks-tui-linux-x86_64.tar.gz"
    sha256 "294a7e1165b1f6d9e9b5ca8fc78fb95ab60620367096e82e24eaa44c7c75680b"
  end

  def install
    bin.install "databricks-tui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/databricks-tui --version")
  end
end
