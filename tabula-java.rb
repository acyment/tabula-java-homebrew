class TabulaJava < Formula
  desc "Text extraction from PDFs, using command-line Tabula core"
  homepage "https://github.com/tabulapdf/tabula-java"
  version "0.8.0"

  head "https://github.com/tabulapdf/tabula-java.git", :revision => "577916327edd480b81604b1df63a9a583b814f5c"

  depends_on "maven"

  def install
    system "mvn", "clean", "compile", "assembly:single"
    libexec.install "target", Dir["*.jar"]
    bin.write_jar_script libexec/"target/tabula-0.8.0-jar-with-dependencies.jar", "tabula-java"
  end
end