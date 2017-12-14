
# nipple

It is a simple script that generates all desired icon sizes for iPhone, iPad and Apple Watch applications.

iOS app icon resizing is a frustration for developers. Unlike other icons in *Assets.xcassets*, **AppIcon** can not be a vector or even just one large sized image to get it futher resized by Apple App Store. The script takes wide squared image of an app and generates images for all sizes needed.

*Minimum image size is 180px, because it is the largest size needed for an app. For Apple Watch, though, it is only 98pt*

## Usage

The script can be downloaded [here](https://dl.dropbox.com/s/8zup7zpnvl2uy6c/nipple.sh?dl=1) or just copied to a local file on your computer. As soon as the script was loaded, it can be used as following

```
cd /path/where/you/want/your/icons/folder
bash /path/to/nipple.sh /path/to/your/wide_icon.png
```

And that's it. Icons will be generated in place within an *icons* folder and ready to be used in an Xcode project.

## Convenience tips

To run the script without typing ```bash path/to/nipple.sh``` everytime, you can do the following

```
cd /path/to/your/nipple/file
cp nipple.sh ~/bin/
chmod +x ~/bin/nipple.sh
```

That will allow you to call script as a regular console command

```
nipple.sh /path/to/your/wide_icon.png
```
