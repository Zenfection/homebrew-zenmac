cask "videoproc-mod" do
    version "6.0"
    sha256 "1fb8dfa324f2f8acafcc9abc5b898c0114246b85b2dfd9daedcc4bda12da61d8"
    url "https://github.com/Zenfection/macos/releases/download/1.0/VideoProc.Converter_#{version}.dmg"
    name "VideoProc Convert"
    desc "New video processing software designed to cut, trim, merge, adjust, transcode, edit 4k video with full hardware acceleration."
    homepage "https://github.com/zenfection/macos"

    auto_updates true
    depends_on macos: ">= :mojave"

    app "VideoProc Converter 4K.app"
end