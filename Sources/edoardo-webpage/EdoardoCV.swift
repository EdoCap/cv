import Foundation
import Html

struct EdoardoCV {
  static var html: String {
    render(document)
  }

  private static let document: Node = .document(
    .html(
      .body(
        .h1("Edoardo Cappello's CV"),
        .p("⚠️ WIP ⚠️")
      )
    )
  )
}
