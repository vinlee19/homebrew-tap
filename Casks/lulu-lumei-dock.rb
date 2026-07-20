cask "lulu-lumei-dock" do
  version "0.1.5"
  sha256 "2aad624d75b5964891c92847a69edd5545af33a69b748cd1b6fde9df8fe56d8c"

  url "https://github.com/vinlee19/lulu-lumei-dock/releases/download/v#{version}/lulu-lumei-dock-#{version}.zip"
  name "lulu-lumei-dock"
  desc "Menu-bar Dynamic Island for local AI coding agents"
  homepage "https://github.com/vinlee19/lulu-lumei-dock"

  depends_on macos: :sonoma

  app "lulu-lumei-dock.app"

  zap trash: "~/Library/Application Support/Eureka"

  caveats <<~EOS
    lulu-lumei-dock 为 ad-hoc 签名（未做 Apple 公证）。首次打开若被 Gatekeeper 拦截，任选其一：
      • 右键点按「应用程序」里的 lulu-lumei-dock.app →「打开」→ 再次「打开」；
      • 或在终端执行：
          xattr -dr com.apple.quarantine "#{appdir}/lulu-lumei-dock.app"
  EOS
end
