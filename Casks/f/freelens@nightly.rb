cask "freelens@nightly" do
  arch arm: "arm64", intel: "amd64"

  version "2.1.0-0-nightly-2026-11-19"
  sha256 arm:   "000428dca76624aa4893d5c1fbe941375209ce750a3297567b9105cb7da867e6",
         intel: "7687833dfcd778d8977b91d3a1c0c0b7f47d9553966590b6c7359578e4ebc9a1"

  url "https://github.com/freelensapp/freelens-nightly-builds/releases/download/v#{version}/Freelens-#{version}-macos-#{arch}.dmg"
  name "Freelens"
  desc "Kubernetes IDE"
  homepage "https://freelens.app/"

  conflicts_with cask: "freelens"
  depends_on macos: :ventura

  app "Freelens.app"

  zap trash: [
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/app.freelens.freelens.sfl*",
        "~/Library/Application Support/Freelens",
        "~/Library/Logs/Freelens",
        "~/Library/Preferences/app.freelens.Freelens.plist",
        "~/Library/Saved Application State/app.freelens.Freelens.savedState",
      ],
      rmdir: "~/.freelens"
end
