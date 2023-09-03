# 2.0.0-beta-2(03-09-2023)

## Release Highlights

- [x] Docs Update for v2.0.0-beta()
- [x] Minor UI and Code Fixes
- [x] Example app revamp to include all Widgets.

# 2.0.0 (01-09-2023)

## Release Highlights
2.0.0 (Feature Update) will focused on adding more UI components and will reduce the complexity of creating Custom UI from this Package.
New Widgets  `NeuBottomNav` will also be included along with other bug fixes and Performance improvements and Improved code for better testability
### Breaking Changes
- [x] `NeuCard` is depriciated now and will be Removed in the Following Versions. (For better Styling Freedom use `NeuContainer` instead).
- [x] `NeuTextButton` contains some breaking changes as the `Widget` child properties is removed completely and replaced with `Text` Property focusing only on keeping Texts in the `NeuTextButton`. (For Complex UI design choose `NeuContainer`).
- [x] `NeuBottomNav` requires adding some additional `Scaffold` and `SafeArea` flags as of now. 
- [x] Removed the property `paddingData` from `NeuIconButton`
### Changes
- [x] Migrated to NeuContainer instead of Material Container in all widgets of this Package `NeuTextButton`  `NeuSearchBar` & `NeuIconButton`.
- [x] Changed the Initial UI Lookup Styling for widgets like `NeuTextButton` & `NeuSearchBar`.
### Features
- [x]  `NeuBottomNav` -UI styling done and dusted (Navigation Part Under Development RN).
- [x] OnPressed animation added in v2.0.0 for `NeuTextButton` & `NeuIconButton` (accessable by the `enableAniamtion` and `animationDuration` flags).

### Documentation
- [x] `example/main.dart` revamp to contain all NeuWidgets.
- [ ] Code Snippets and Set-up process explained for all the widgets

### Issues Fixed
- [x] closes #28 
- [x] closes #24 
- [x] closes #29 
- [x] closes #28 
- [x] closes #25 
- [ ] closes #26 
- [ ] closes #33 


# 1.0.0 (15-04-2023)

## Release Highlights
### (Contains Breaking Changes)
- [x] docs: Update README to the Current Standard. 
- [x] docs: Add Updated API Documentation for All NeuWidgets.
- [x] feat: add textalign property in neuTextButton.
- [x] feat: Add a Container for Creating Custom Widgets in Neubrutalist style
- [x] feat: add nested widget support to provide more flexibility
- [ ] feat: add OnHover Animation
- [ ] feat: Add Widget Tests
- Issues Closed
  - [x] closes #12 
  - [x] closes #15 - Added Nested widget Support 
  - [x] closes #14 - Added NeuContainer
  - [x] closes #17  -  `shadowGeometry` -> `blurGeometry` 
  - [x]closes #13 - Added Fresh Docs 

# 0.2.0 (19-03-2023)
## Release Highlights:
- [x] Added 2 New Widgets `neuIconButton` and `neuSearchBar`
- [x] Fixed the bug causing no response on onPressed function in `neuTextButton`
 

# 0.1.2 (17-03-2023)
## Release Highlights:
- [x] Fix Pubspec


# 0.1.1 (17-03-2023)
## Release Highlights:
- [x] Added 2 amazing Widgets
- [x] Added More Documentation.
- [x] Added Example Section.
- [x] Fixes for NeuImageButton.
