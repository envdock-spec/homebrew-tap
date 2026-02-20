class Edk < Formula
  desc "EnvDock CLI"
  homepage "https://github.com/envdock-spec/edk"
  version "1.0.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/envdock-spec/edk/releases/tag/libraries/envdock-cli-macos-arm64"
    sha256 "sha256:234198579cbacd99e39f329bf9074823f02947e3357c527cc90ba7863cef7bcc"
  elsif OS.mac?
    url "https://github.com/envdock-spec/edk/releases/tag/libraries/envdock-cli-macos-x64"
    sha256 "sha256:9205fd0baad801bc43f1877530344e0dc1e7bfaca3754641aa3b38829380039d"
  elsif OS.linux?
    url "https://github.com/envdock-spec/edk/releases/tag/libraries/envdock-cli-linux-x64"
    sha256 "sha256:77b06aa858d26d549c7bd091e00739112fc65a9ea59d3f72740d11376d189e92"
  end

  def install
    bin.install Dir["*"].first => "edk"
  end
end
