# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Kommit < Formula
  desc "Therapeutic approach to git commits with AI-generated messages"
  homepage "https://github.com/cowboy-bebug/kommit"
  version "0.1.1"
  license "MIT"

  depends_on "git"
  depends_on "go" => "^1.24"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/cowboy-bebug/kommit/releases/download/v0.1.1/kommit_v0.1.1_darwin_amd64.tar.gz"
      sha256 "dcd03a6888fcc981a87fa986161045a3a0411ece417ab87bad961185c52b9c8c"

      def install
        bin.install "git-kommit"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/cowboy-bebug/kommit/releases/download/v0.1.1/kommit_v0.1.1_darwin_arm64.tar.gz"
      sha256 "8906a34e22ef4f7ad86e6d5b81c4399e4d076bef97647b95fb364dfdd48d1e3d"

      def install
        bin.install "git-kommit"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/cowboy-bebug/kommit/releases/download/v0.1.1/kommit_v0.1.1_linux_amd64.tar.gz"
        sha256 "b1e279933819037fefbc313732574ba300a23b78f458dd0e48c8c95491b02406"

        def install
          bin.install "git-kommit"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/cowboy-bebug/kommit/releases/download/v0.1.1/kommit_v0.1.1_linux_arm64.tar.gz"
        sha256 "d0d5d2cabe91f582b1d1b77df02a6482a3d12546f4dad4a3cf3c1d1c06e34805"

        def install
          bin.install "git-kommit"
        end
      end
    end
  end

  def caveats
    <<~EOS
      🧐 Your therapist is ready for session!

      To begin your repository's healing journey:
        git kommit init

      Remember to set your OpenAI API key:
        export OPENAI_API_KEY=your_openai_api_key

      Or use a dedicated key for Kommit:
        export KOMMIT_API_KEY=your_kommit_specific_key
    EOS
  end

  test do
    system "#{bin}/git", "kommit", "version"
  end
end
