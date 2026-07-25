import ExpoModulesCore
import ExpoUI

private let sectionIndexLabelModifier = "expoListSectionIndex.sectionIndexLabel"
private let listSectionIndexVisibilityModifier =
  "expoListSectionIndex.listSectionIndexVisibility"

public final class ExpoListSectionIndexModule: Module {
  public func definition() -> ModuleDefinition {
    Name("ExpoListSectionIndex")

    OnCreate {
      ViewModifierRegistry.register(sectionIndexLabelModifier) { params, appContext, _ in
        try SectionIndexLabelModifier(from: params, appContext: appContext)
      }
      ViewModifierRegistry.register(listSectionIndexVisibilityModifier) { params, appContext, _ in
        try ListSectionIndexVisibilityModifier(from: params, appContext: appContext)
      }
    }

    OnDestroy {
      ViewModifierRegistry.unregister(sectionIndexLabelModifier)
      ViewModifierRegistry.unregister(listSectionIndexVisibilityModifier)
    }
  }
}
