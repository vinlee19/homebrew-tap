cask "lulu-lumei-dock" do
  version "0.1.3"
  sha256 "fac6869db09294aba968c8231bf791c5b1a9ccc8aaa99385046ae12c0fd6283a"

  url "https://github.com/vinlee19/lulu-lumei-dock/releases/download/v#{version}/lulu-lumei-dock-#{version}.zip"
  name "lulu-lumei-dock"
  desc "Menu-bar Dynamic Island for local AI coding agents"
  homepage "https://github.com/vinlee19/lulu-lumei-dock"

  app "lulu-lumei-dock.app"

  caveats <<~EOS
    lulu-lumei-dock 为 ad-hoc 签名（未做 Apple 公证）。首次打开若被 Gatekeeper 拦截，任选其一：
      • 右键点按「应用程序」里的 lulu-lumei-dock.app →「打开」→ 再次「打开」；
      • 或在终端执行：
          xattr -dr com.apple.quarantine "#{appdir}lulu-lumei-dock.app"
  EOS

  zap trash: [
    "~/Library/Application Support/Eureka",
  ]
end
