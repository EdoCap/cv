import Foundation

@main
public struct edoardo_webpage {
  public private(set) var text = "Hello, World!"
  
  public static func main() {
    let directoryPath = "\(FileManager.default.currentDirectoryPath)/Derived"
    let filePath = "\(directoryPath)/index.html"
    
    if let data = EdoardoCV.html.data(using: .utf8) {
      print("👉 Creating directory at \(directoryPath) ...")
      do {
        try FileManager.default.createDirectory(
          atPath: directoryPath,
          withIntermediateDirectories: true
        )
      } catch {
        print("❌ Failed to create directory")
      }
      print("👉 Creating file at \(filePath) ...")
      let didCreateFile = FileManager.default.createFile(atPath: filePath, contents: data)
      let fileCreationFeedback = didCreateFile ?
      "✅ File successfully created" :
      "❌ Failed to create file"
      print(fileCreationFeedback)
    } else {
      print("❌ Failed to create HTML data")
    }
  }
}
