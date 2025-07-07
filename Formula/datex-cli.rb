class Datex < Formula
  desc      "DATEX - Command-line interface for Datex"
  homepage  "https://datex.unyt.org"
  url       "https://github.com/unyt-org/datex-cli.git",
            branch: "main"
  version   "main"
  license   "MIT"
  head      "https://github.com/unyt-org/datex-cli.git", branch: "main"

  def install
    ENV["DATEX_INSTALL"] = libexec

    system "bash", "-c",
           "curl -fsSL https://raw.githubusercontent.com/unyt-org/datex-cli/refs/heads/main/install.sh | bash"

    bin.install Dir["#{libexec}/bin/*"]
  end
end