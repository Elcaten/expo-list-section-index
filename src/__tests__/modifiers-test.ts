import { listSectionIndexVisibility, sectionIndexLabel } from '../modifiers';

describe('sectionIndexLabel', () => {
  it('creates a section index label modifier', () => {
    expect(sectionIndexLabel('A')).toEqual({
      $type: 'expoListSectionIndex.sectionIndexLabel',
      label: 'A',
    });
  });

  it('supports omitting a section from the index', () => {
    expect(sectionIndexLabel(null)).toEqual({
      $type: 'expoListSectionIndex.sectionIndexLabel',
      label: null,
    });
  });
});

describe('listSectionIndexVisibility', () => {
  it('defaults to automatic visibility', () => {
    expect(listSectionIndexVisibility()).toEqual({
      $type: 'expoListSectionIndex.listSectionIndexVisibility',
      visibility: 'automatic',
    });
  });

  it('creates a modifier for an explicit visibility', () => {
    expect(listSectionIndexVisibility('hidden')).toEqual({
      $type: 'expoListSectionIndex.listSectionIndexVisibility',
      visibility: 'hidden',
    });
  });
});
