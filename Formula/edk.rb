class Edk < Formula
  desc "EnvDock CLI"
  homepage "https://github.com/envdock-spec/edk"
  version "1.1.1"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/envdock-spec/edk/releases/download/v0.1.0/envdock-cli-macos-arm64"
    sha256 "1b77c26bb417d80cf807e67b5f11667760b474b83cb9d06a48c891d37b95aea2"
  elsif OS.mac?
    url "https://github.com/envdock-spec/edk/releases/download/v0.1.0/envdock-cli-macos-x64"
    sha256 "c5c4a3ae65cc59d22216d3e8e30385c2bb09b259869f07f49690905a89a5406f"
  elsif OS.linux?
    url "https://github.com/envdock-spec/edk/releases/download/v0.1.0/envdock-cli-linux-x64"
    sha256 "d8d275b6e2102976df5e27cd6c1a69572114b78028326ec49f5650fa91ca832f"
  end

  def install
    bin.install Dir["*"].first => "edk"
  end
end
