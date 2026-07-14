class DatabricksTui < Formula
  desc "Terminal dashboard for Databricks"
  homepage "https://github.com/pjhamera/databricks-tui"
  version "0.20.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pjhamera/databricks-tui/releases/download/v#{version}/databricks-tui-macos-arm64.tar.gz"
      sha256 "df81be70f48435a197d9155d2782b851fe9992c1603a87c3eef9f86c7a417f2e"
    else
      url "https://github.com/pjhamera/databricks-tui/releases/download/v#{version}/databricks-tui-macos-x86_64.tar.gz"
      sha256 "5ec566eb642cd3ba842aeab0cfa1f1fbc77d3d2b202e9134e5f0a68d81483949"
    end
  end

  on_linux do
    url "https://github.com/pjhamera/databricks-tui/releases/download/v#{version}/databricks-tui-linux-x86_64.tar.gz"
    sha256 "661f0f4f48ae5ead2a5f9a021623d6e1849283ea8051be30b6a3180fe947d761"
  end

  def install
    bin.install "databricks-tui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/databricks-tui --version")
  end
end
