class Oberth < Formula
  desc "Git worktree service lifecycle manager"
  homepage "https://github.com/SheathedSharp/option-berth"
  version "1.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/SheathedSharp/option-berth/releases/download/v1.3.0/option-berth-v1.3.0-darwin-arm64.tar.gz"
      sha256 "a1162a5ab22f7f3a015ca49e7b83ccb97d620d0d05f960d7bd694427a621675b"
    end
    on_intel do
      url "https://github.com/SheathedSharp/option-berth/releases/download/v1.3.0/option-berth-v1.3.0-darwin-amd64.tar.gz"
      sha256 "65772224dc46abb2b8ad8e7dc5755dd6948d12d532054298ba4db45e7a9af8d3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/SheathedSharp/option-berth/releases/download/v1.3.0/option-berth-v1.3.0-linux-arm64.tar.gz"
      sha256 "976a5467024530b9e5d9c549ba9fe40847b8b8582b74ef06c560ae16953e231a"
    end
    on_intel do
      url "https://github.com/SheathedSharp/option-berth/releases/download/v1.3.0/option-berth-v1.3.0-linux-amd64.tar.gz"
      sha256 "60044c6f745ce71cdac75c0793dd2463ad095ee36eb03aff23b09121ba475a29"
    end
  end

  def install
    bin.install "oberth"
    bin.install "jev-attention"
  end

  test do
    assert_match "v#{version}", shell_output("#{bin}/oberth version")
  end
end
