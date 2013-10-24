ObjC-FontAwesome
===================

This Project was originally made for iOS only by **Alex Usbergo**: https://github.com/alexdrone/ios-fontawesome

Font awesome is an iconic font. Read more about it on http://fortawesome.github.com/Font-Awesome/

This category brings the great **FontAwesome 4.0** font on iOS and OSX.
Font Awesome version 4.0 introduced an important naming convention change. We choosed to simplify the base library and we dropped support of FAIcon enum identifiers & FAImageView.

Usage
--------------------

First, make sure that:

- **On iOS:** you have `FontAwesome.otf` bundled in your project (this is done automatically is you are using CocoaPods) and that `UIAppFonts` key in the project's plist file contains a String item named `FontAwesome.otf`.

- **On OS X without CocoaPods:** `ATSApplicationFontsPath` key in the project's plist file contains a string (usually `Fonts`) and that on the Target Build Phases, you have a `Copy Files` phase with `Resources` as Destination, the previously defined key as Subpath (usually `Fonts`) and `FontAwesome.otf` in the list of files.

- **On OS X with CocoaPods:** CocoaPods copy the file directly into the `Resources/Fonts` folder. The `ATSApplicationFontsPath` key in the project's plist file must contains the string `Fonts`. If you need to integrate other fonts into your project, follow the `Copy Files` of the previous section, without adding FontAwesome.otf.

Then add the `NSString+FontAwesome` & `UIFont+FontAwesome` (or `NSFont+FontAwesome`) categories to the project. (they will be available automatically if you use Cocoapods).

**On iOS:**

	UILabel *label = [...]
	label.font = [UIFont fontAwesomeFontOfSize:20];
	
You can now use identifiers for all the different iconic characters

	label.text = [NSString fontAwesomeIconStringForIconIdentifier:@"fa-github"];
	
Full list of identifiers here http://fortawesome.github.com/Font-Awesome/#all-icons

**On OS X:**

	NSTextField *textField = [...]
	textField.font = [NSFont fontAwesomeFontOfSize:20];
	
ou can now use identifiers for all the different iconic characters

	textField.stringValue = [NSString fontAwesomeIconStringForIconIdentifier:@"fa-github"];


**That's it!**

For further information have a look to the small demo project!


Backward Compatibility
--------------------

#### FontAwesome 3 Icons Identifiers

This library is designed for FontAwesome 4 only that introduced a new naming convention (See http://fortawesome.github.io/Font-Awesome/whats-new/). `fa-[name]-[shape]-[o]-[direction]`

However, we provide a very basic compatibily mode (replacing the old `icon-` prefix by `fa-`), it will works well in a lot of case, but make sure your app is displaying the correct icon if you use Font Awesome 3.x identifiers.


#### FAImageView & FAIcon

Even if we like the idea behind FAIcon, it makes the library harder to maintain. A FAICon must point to the correct index of an array, index being the FAIcon enum value, but without direct mapping in code. We now have a simple NSDictionary that we can easily update as FontAwesome get new icons. Also we think that using the icons identifier is easier than using an alternate enum type.

FAImageView was a nice addition, we removed it because it was using FAIcon, and also we preffered this library to deal only with Fonts & String.

If you need any of those, go to [https://github.com/alexdrone/ios-fontawesome](https://github.com/alexdrone/ios-fontawesome)


License
-------------------

- This Project is Licensed under the MIT License.
- Original Project by Alex Usbergo is licensed under the MIT License.
- Font Awesome 4.0 (font) is licensed under the SIL Open Font License 1.1

Please see the LICENSE file.