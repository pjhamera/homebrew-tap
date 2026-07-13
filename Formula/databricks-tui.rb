class DatabricksTui < Formula
  desc "Terminal dashboard for Databricks"
  homepage "https://github.com/pjhamera/databricks-tui"
  version "0.17.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pjhamera/databricks-tui/releases/download/v#{version}/databricks-tui-macos-arm64.tar.gz"
      sha256 "74d8525377662776e6b01b3fc1550e6f442acca57f2cb933a3e24d85b9cc261c"
    else
      url "https://github.com/pjhamera/databricks-tui/releases/download/v#{version}/databricks-tui-macos-x86_64.tar.gz"
      sha256 "184798ef5fccbea137ac2f50d6ee6e33e1849e20803b0680ede86ec60a720c99"
    end
  end

  on_linux do
    url "https://github.com/pjhamera/databricks-tui/releases/download/v#{version}/databricks-tui-linux-x86_64.tar.gz"
    sha256 "a30a0e66fa6cb0760ef244dac8143fd73153285b0bdf2c4b6df33684b5eb8dbf"
  end

  def install
    bin.install "databricks-tui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/databricks-tui --version")
  end
end
