
# nipple

A script generates all desired icon sizes for iOS app from large '.png' image.

iOS app icon resizing is a frustration for developers. Unlike other icons in *Assets.xcassets*, **AppIcon** cann't be a vector or even just one large sized image to get it futher resized by Apple App Store. The script takes large squared image of an app and generates images for all sizes needed for iPhone and iPad applications.

*Minimum image size is 180px, because it is the largest size needed for an app.*

## Usage

The script can be downloaded [here](https://dl.dropbox.com/s/8zup7zpnvl2uy6c/nipple.sh?dl=1) or just copy-pasted to local file. As soon as the file is on local machine, it can be used as following

```
cd /path/where/you/want/your/icons/folder
bash /path/to/nipple.sh /path/to/your/icon.png
```

And that's it. Icons will be generated in place within an *icons* folder. They are ready to be used in an Xcode project.

## Convenience tips

To run your script without typing ```bash path/to/nipple.sh``` everytime, you can do the following

```
cd /path/to/your/nipple/file
cp nipple.sh ~/bin/
chmod +x ~/bin/nipple.sh
```

That will allow you to call script as a regular console command

```
nipple.sh /path/to/your/1024px/icon.png
```
