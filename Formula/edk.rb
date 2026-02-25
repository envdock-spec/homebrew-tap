class Edk < Formula
  desc "EnvDock CLI"
  homepage "https://github.com/envdock-spec/edk"
  version "1.0.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/envdock-spec/edk/releases/download/v0.1.0/envdock-cli-macos-arm64"
    sha256 "f874db51873969ef0e11cf209ff65b6cfc60e136e247fee609023765cef273ea"
  elsif OS.mac?
    url "https://github.com/envdock-spec/edk/releases/download/v0.1.0/envdock-cli-macos-x64"
    sha256 "d290c309aaa1bfa396e206774f7d5737c4583f24a64ea792ddad8021236b1312"
  elsif OS.linux?
    url "https://github.com/envdock-spec/edk/releases/download/v0.1.0/envdock-cli-linux-x64"
    sha256 "9b359ce3e0e6e55ceeda92e7ca916077122526f462fa3496c0b53d95d40505ed"
  end

  def install
    bin.install Dir["*"].first => "edk"
  end
end
