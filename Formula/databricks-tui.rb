class DatabricksTui < Formula
  desc "Terminal dashboard for Databricks"
  homepage "https://github.com/pjhamera/databricks-tui"
  version "0.28.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pjhamera/databricks-tui/releases/download/v#{version}/databricks-tui-macos-arm64.tar.gz"
      sha256 "20cc4b2fc3871c961861a5dcf9bb2a4f5591ff65b9d2267b4da91d92bcacd7f7"
    else
      url "https://github.com/pjhamera/databricks-tui/releases/download/v#{version}/databricks-tui-macos-x86_64.tar.gz"
      sha256 "d1fee07ba597af089b9ac541c7b0a33be55373ddbecfff789d2bd45571796643"
    end
  end

  on_linux do
    url "https://github.com/pjhamera/databricks-tui/releases/download/v#{version}/databricks-tui-linux-x86_64.tar.gz"
    sha256 "f9bd6529eb4ca07202f3046406ef4a4969e4db62df7e90c14eb73945100aa8d3"
  end

  def install
    bin.install "databricks-tui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/databricks-tui --version")
  end
end
