class DatabricksTui < Formula
  desc "Terminal dashboard for Databricks"
  homepage "https://github.com/pjhamera/databricks-tui"
  version "0.35.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pjhamera/databricks-tui/releases/download/v#{version}/databricks-tui-macos-arm64.tar.gz"
      sha256 "4d7dd8fae13b5ed5d236af6d8125719b42ced68e4d3cb50c0404137cd6ebdfbc"
    else
      url "https://github.com/pjhamera/databricks-tui/releases/download/v#{version}/databricks-tui-macos-x86_64.tar.gz"
      sha256 "74add1c6002cd53a872c1c46b4b3539239b1533094a5a19e1bddbf15635aead4"
    end
  end

  on_linux do
    url "https://github.com/pjhamera/databricks-tui/releases/download/v#{version}/databricks-tui-linux-x86_64.tar.gz"
    sha256 "a667511863ca7dca710fb6d3c96e9c531428ac375f5caa7d1fc6f45e0810dc26"
  end

  def install
    bin.install "databricks-tui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/databricks-tui --version")
  end
end
