cask "lulu-lumei-dock" do
  version "0.1.0"
  sha256 "802d8935dba0b6c38a47337f1e8ba69fe5ccf997c9f7756aa6952067f7a9e64d"

  url "https://github.com/vinlee19/lulu-lumei-dock/releases/download/v#{version}/lulu-lumei-dock-#{version}.zip"
  name "lulu-lumei-dock"
  desc "Menu-bar Dynamic Island for local AI coding agents"
  homepage "https://github.com/vinlee19/lulu-lumei-dock"

  app "Eureka.app"

  # 本版为 ad-hoc 签名（未公证）→ 安装后去掉隔离属性，免 Gatekeeper 拦截
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/Eureka.app"]
  end

  zap trash: [
    "~/Library/Application Support/Eureka",
  ]
end
