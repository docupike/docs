# Quick tours

i-doit up ships **Quick tours** that fire automatically the first time a user lands on a major surface.
Each tour is a short series of pop-overs that point at the most important controls.
This page lists every tour and how to re-open one after you have dismissed it.

## How a tour behaves

The first time you reach a surface that has a tour, a centred modal opens with:

- a heading,
- a short paragraph,
- a *Skip tour* link, and
- a **Next** button.

Clicking **Next** advances through the steps; the final step shows **Done** instead.
Clicking **Skip tour** dismisses the whole tour without showing the remaining steps.

Once a tour is finished or skipped, it does not auto-open again on the same account.
You can replay any tour from the **Help (?)** popover in the top bar, see [Top bar](top-bar.md).

## The three tours

i-doit up currently bundles three tours.

### Finder tour, 4 steps

Triggered the first time you open `/finder`.
Walks through:

1. The **All classes** dropdown and the class sidebar.
2. The Finder table and how object rows are read.
3. The **Add +** button for creating a new object.
4. The **Edit ⌄** dropdown for bulk actions and saved searches.

### Object detail tour, 3 steps

Triggered the first time you open an [object detail page](object-details.md).
Walks through:

1. The header (back arrow, class icon, **Edit**, status, search-in-object, widgets toggle).
2. The categories sidebar with **All categories** as the default group.
3. The right-pane **Widgets** with the History widget at the top.

### Report Manager tour, 2 steps

Triggered the first time you open `/report` (see [Report Manager](../reporting/report-manager.md)).
Walks through:

1. What a report is and how saved reports are listed.
2. The **Add +** button to create a new report.

## Replay a tour

1. Click **?** in the top bar.
2. Pick the tour name from the *Quick tours* section of the popover.
3. The tour opens at step 1 of the selected surface.

If you are not on the matching surface when you replay a tour, i-doit up navigates you there first.

## Disable tours globally

There is no per-tenant kill-switch.
A user can either:

- Click *Skip tour* on the first step the very first time they hit a surface, or
- Replay and finish a tour once so the auto-open flag flips to *seen*.

## Further readings

- [Top bar](top-bar.md), the **?** menu where tours can be replayed.
- [Object details page](object-details.md)
- [Finder overview](../finder/finder.md)
- [Report Manager](../reporting/report-manager.md)
