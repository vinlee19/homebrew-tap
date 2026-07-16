cask "lulu-lumei-dock" do
  version "0.1.0"
  sha256 "802d8935dba0b6c38a47337f1e8ba69fe5ccf997c9f7756aa6952067f7a9e64d"

  url "https://github.com/vinlee19/lulu-lumei-dock/releases/download/v#{version}/lulu-lumei-dock-#{version}.zip"
  name "lulu-lumei-dock"
  desc "Menu-bar Dynamic Island for local AI coding agents"
  homepage "https://github.com/vinlee19/lulu-lumei-dock"

  app "Eureka.app"

  caveats <<~EOS
    lulu-lumei-dock 为 ad-hoc 签名（未做 Apple 公证）。首次打开若被 Gatekeeper 拦截，任选其一：
      • 右键点按「应用程序」里的 Eureka.app →「打开」→ 再次「打开」；
      • 或在终端执行：
          xattr -dr com.apple.quarantine "#{appdir}Eureka.app"
  EOS

  zap trash: [
    "~/Library/Application Support/Eureka",
  ]
end
