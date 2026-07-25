import ExpoModulesCore
import SwiftUI

struct SectionIndexLabelModifier: ViewModifier, Record {
  @Field var label: String?

  func body(content: Content) -> some View {
#if compiler(>=6.2) && os(iOS)
    if #available(iOS 26.0, *) {
      content.sectionIndexLabel(label.map(Text.init))
    } else {
      content
    }
#else
    content
#endif
  }
}

enum ListSectionIndexVisibilityOption: String, Enumerable {
  case automatic
  case visible
  case hidden

  var swiftUIVisibility: Visibility {
    switch self {
    case .automatic:
      .automatic
    case .visible:
      .visible
    case .hidden:
      .hidden
    }
  }
}

struct ListSectionIndexVisibilityModifier: ViewModifier, Record {
  @Field var visibility: ListSectionIndexVisibilityOption = .automatic

  func body(content: Content) -> some View {
#if compiler(>=6.2) && os(iOS)
    if #available(iOS 26.0, *) {
      content.listSectionIndexVisibility(visibility.swiftUIVisibility)
    } else {
      content
    }
#else
    content
#endif
  }
}
