cask "adobe-illustrator-mod" do
    version "26.4.1"
    sha256 "3cf7fa0021a0f7ad15a55acd266c9cc69a29c6df26d0d5a84f472ef9b7660ca0"

    url "https://github.com/Zenfection/macos/releases/download/1.0/Adobe.Illustrator_26.4.1.dmg"
    name "Adobe Illustrator"
    desc "The industry-standard vector graphics software lets you create logos, icons, drawings, typography, and illustrations for print, web, video, and mobile."
    homepage "https://github.com/zenfection/macos"
    
    auto_updates true

    installer script: {
        executable:   "#{staged_path}/Install.app/Contents/MacOS/Install",
        args:         ["--mode=silent"],
        sudo:         true,
        print_stderr: false,
    }
    pkg "patch_26.4.1.pkg"
end
