
# nipple

The script takes one large PNG image and creates **AppIcon.appiconset** with all  icons prefilled.

 ***Image must be square and not less than 1024 x 1024 px.***

*nipple.sh* was created to end up Xcode icons frustration. Every iOS dev familiar with a pain of filling **AppIcon** for iPhone, iPad and Apple Watch in a project, especially, when only large image provided. The script not only creates and fills images, an  **AppIcon** folder it provides is also smaller than the one that was filled within Xcode, because *nipple.sh* links same sizes to one image instead of copying.


## Usage

The script can be downloaded [here](https://dl.dropbox.com/s/u3h4b8805uq0xnw/nipple.sh?dl=1) or just copied to a local file on your computer. As soon as the script was loaded, it can be used as following

```
bash /path/to/nipple.sh /path/to/your/wide_icon.png
```

And that's it. A folder will appear in the folder where image is located.

Now  **AppIcon.appiconset** folder in project (within **Assets.xcassets** folder) can be simply replaced with the one that was created by script. Enjoy!

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
