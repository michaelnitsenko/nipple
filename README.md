
# nipple

The script takes one large PNG image and creates **AppIcon.appiconset** with all  icons prefilled.

 ***Image must be square and not less than 1024 x 1024 px.***

The script does not only creates and fills images for an Xcode project, the  **AppIcon** folder it provides is also smaller compared to the one filled within Xcode, because *nipple* links the same file for containers of the same size instead of copying the file as Xcode does.


## Usage

```
/path/to/nipple /path/to/your/largest_icon.png
```

And that's it. A folder will appear near the specified image.

Now  **AppIcon.appiconset** folder in your project (within **Assets.xcassets** folder) can be simply replaced with the one that was created by script. Enjoy!
