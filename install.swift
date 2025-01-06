import Foundation

// MARK: - Constants
let fileManager = FileManager.default
let templateName = "Module MVVM.xctemplate" // Tên file template
let sourcePath = fileManager.currentDirectoryPath + "/\(templateName)"
let destinationPath = NSHomeDirectory() + "/Library/Developer/Xcode/Templates/File Templates/Custom Templates/\(templateName)"

// MARK: - Helper Functions
func installTemplate() {
    do {
        // Create detination folder if it not exist
        let destinationFolder = (destinationPath as NSString).deletingLastPathComponent
        if !fileManager.fileExists(atPath: destinationFolder) {
            try fileManager.createDirectory(atPath: destinationFolder, withIntermediateDirectories: true, attributes: nil)
            print("✅ Created destination folder at: \(destinationFolder)")
        }

        // Delete old template if exist
        if fileManager.fileExists(atPath: destinationPath) {
            try fileManager.removeItem(atPath: destinationPath)
            print("♻️ Removed existing template at: \(destinationPath)")
        }

        // Copy file template mới
        if fileManager.fileExists(atPath: sourcePath) {
            try fileManager.copyItem(atPath: sourcePath, toPath: destinationPath)
            print("🎉 Template installed successfully at: \(destinationPath)")
        } else {
            print("❌ Source template file not found at: \(sourcePath)")
        }
    } catch {
        print("❌ Error during installation: \(error.localizedDescription)")
    }
}

// MARK: - Main
installTemplate()
