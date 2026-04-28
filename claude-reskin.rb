class ClaudeReskin < Formula
  desc "Claude Code skill for system reskinning and refactoring"
  homepage "https://github.com/tc6-01/claude-reskin"
  url "https://github.com/tc6-01/claude-reskin/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "50451c27ca5fe77b9633537a1339990a7903e3bf21ee8107ae963638a5ed3947"
  license "MIT"

  def install
    target = "#{Dir.home}/.claude/skills/reskin"
    mkdir_p target
    cp "SKILL.md", target
    cp_r "templates", target
    ohai "claude-reskin installed to #{target}"
    ohai "Use /reskin in Claude Code to activate."
  end

  test do
    assert_path_exists "#{Dir.home}/.claude/skills/reskin/SKILL.md"
  end
end
