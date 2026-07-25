import { createModifier, type ModifierConfig } from '@expo/ui/swift-ui/modifiers';

const sectionIndexLabelModifier = 'expoListSectionIndex.sectionIndexLabel';
const listSectionIndexVisibilityModifier = 'expoListSectionIndex.listSectionIndexVisibility';

export type ListSectionIndexVisibility = 'automatic' | 'visible' | 'hidden';

export function sectionIndexLabel(label: string | null): ModifierConfig {
  return createModifier(sectionIndexLabelModifier, { label });
}

export function listSectionIndexVisibility(
  visibility: ListSectionIndexVisibility = 'automatic'
): ModifierConfig {
  return createModifier(listSectionIndexVisibilityModifier, { visibility });
}
