# @_elcaten/expo-list-section-index

Adds native iOS 26 alphabetical section indexes to
[`@expo/ui`](https://docs.expo.dev/versions/v57.0.0/sdk/ui/swift-ui/) SwiftUI lists.

## Requirements

- Expo SDK 57 or newer
- `@expo/ui`
- iOS 26 or newer
- A development or production build; the native module is not included in Expo Go

The modifiers are no-ops on earlier iOS versions.

## Installation

```sh
npx expo install @expo/ui
npm install @_elcaten/expo-list-section-index
npx expo run:ios
```

You can also build the app with EAS Build.

## Usage

Apply `sectionIndexLabel` to every `Section` and
`listSectionIndexVisibility` to the containing `List`.

```tsx
import { listSectionIndexVisibility, sectionIndexLabel } from '@_elcaten/expo-list-section-index';
import { Host, List, Section, Text } from '@expo/ui/swift-ui';
import { listStyle } from '@expo/ui/swift-ui/modifiers';

const CONTACTS = [
  'Ada Lovelace',
  'Barbara Liskov',
  'Charles Babbage',
  'Dorothy Vaughan',
  'Edsger Dijkstra',
  'Frances Allen',
  'Grace Hopper',
  'Hedy Lamarr',
] as const;

export default function App() {
  return (
    <Host style={{ flex: 1 }}>
      <List modifiers={[listStyle('plain'), listSectionIndexVisibility('visible')]}>
        {CONTACTS.map((name) => {
          const letter = name.charAt(0);

          return (
            <Section key={name} title={letter} modifiers={[sectionIndexLabel(letter)]}>
              <Text>{name}</Text>
            </Section>
          );
        })}
      </List>
    </Host>
  );
}
```

`listSectionIndexVisibility` accepts `'automatic'`, `'visible'`, or `'hidden'`.
Pass `null` to `sectionIndexLabel` to omit a section from the index.
