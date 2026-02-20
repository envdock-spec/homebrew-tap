class Edk < Formula
  desc "EnvDock CLI"
  homepage "https://github.com/envdock-spec/edk"
  version "1.0.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/envdock-spec/edk/releases/tag/libraries/envdock-cli-macos-arm64"
    sha256 "6df134120d520123ac8ddb6a9066a4d6c3e66d47e829ba74803d39e5749216f5"
  elsif OS.mac?
    url "https://github.com/envdock-spec/edk/releases/tag/libraries/envdock-cli-macos-x64"
    sha256 "a14a7c752d4e407478c80ab3dd9a477166c69acf265bad0aab170178393e8cc0"
  elsif OS.linux?
    url "https://github.com/envdock-spec/edk/releases/tag/libraries/envdock-cli-linux-x64"
    sha256 "ada2f20b76e95e84cddbd9bfb96f8cd743fc34a9ba26d8ed81b3128cc8068279"
  end

  def install
    bin.install Dir["*"].first => "edk"
  end
end
