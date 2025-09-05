class NaggingNancy < Formula
  desc "Terminal-based reminders and task management with TUI interface"
  homepage "https://github.com/ivyascorp-net/nagging-nancy"
  url "https://github.com/ivyascorp-net/nagging-nancy/archive/refs/tags/v0.0.5.tar.gz"
  sha256 "65d65c285ef65638967abd5faaecbb8b93a56679e86e683bc59b59b6d7d60bee"
  license "MIT"
  version "0.0.5"
  head "https://github.com/ivyascorp-net/nagging-nancy.git", branch: "main"

  depends_on "go" => :build

  on_macos do
    depends_on "terminal-notifier" => :recommended
  end

  on_linux do
    depends_on "libnotify" => :recommended
  end

  def install
    ldflags = %W[
      -s -w
      -X main.version=#{version}
      -X main.buildTime=#{time.utc.strftime("%Y-%m-%d_%H:%M:%S")}
      -X main.gitCommit=#{tap.user}
    ]

    system "go", "build", *std_go_args(ldflags:), "./cmd/nancy"
  end

  def caveats
    <<~EOS
      To enable desktop notifications:
      
      On macOS:
        Install terminal-notifier for native notifications:
          brew install terminal-notifier
      
      On Linux:
        Install libnotify for desktop notifications:
          sudo apt-get install libnotify-bin  # Ubuntu/Debian
          sudo yum install libnotify           # RHEL/CentOS
          sudo pacman -S libnotify             # Arch Linux
      
      Usage:
        nancy add "Task description"         # Add a new reminder
        nancy list                          # List all reminders
        nancy interactive                   # Launch TUI interface
        nancy --help                        # Show all commands
    EOS
  end

  test do
    # Test that the binary was installed and runs without error
    assert_match version.to_s, shell_output("#{bin}/nancy --version")
    
    # Test basic functionality - help command should work
    system "#{bin}/nancy", "--help"
    
    # Test adding and listing reminders
    system "#{bin}/nancy", "add", "Test reminder from Homebrew"
    output = shell_output("#{bin}/nancy list")
    assert_match "Test reminder from Homebrew", output
    
    # Test that config directory is created
    assert_predicate testpath/".config/nancy", :exist?
  end
end