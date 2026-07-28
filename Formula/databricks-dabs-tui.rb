class DatabricksDabsTui < Formula
  desc "Terminal UI for Databricks Declarative Automation Bundles"
  homepage "https://github.com/pjhamera/databricks-dabs-tui"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pjhamera/databricks-dabs-tui/releases/download/v#{version}/databricks-dabs-tui-macos-arm64.tar.gz"
      sha256 "f23bc41320d233d32aaf2c4d97cbf57c3538bd4850c241be8fac0bac3bcbd0a7"
    else
      url "https://github.com/pjhamera/databricks-dabs-tui/releases/download/v#{version}/databricks-dabs-tui-macos-x86_64.tar.gz"
      sha256 "c9cf1c8fef4c904ef1b7b9ba684ceb9327aac4448ae4ff96e0e1bc7ad42bbc71"
    end
  end

  on_linux do
    url "https://github.com/pjhamera/databricks-dabs-tui/releases/download/v#{version}/databricks-dabs-tui-linux-x86_64.tar.gz"
    sha256 "89959da44c5660632c548bbbe54ddb8635e6d24d3e0d1e525046531b2ff4728b"
  end

  def install
    bin.install "databricks-dabs-tui", "dbx-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/databricks-dabs-tui --version")
  end
end
