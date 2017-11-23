
# nipple

A script to end up icons generation struggle in Xcode.

## Usage

Basically, *nipple.sh* is the only file you need from this repository.

You can download it [here](https://dl.dropbox.com/s/8zup7zpnvl2uy6c/nipple.sh) or just copy-paste source code to your local file. As soon as you get *nipple.sh* (or whatever you named it) on your machine, you can use it as following

```
cd /path/where/you/want/your/icons/folder
bash /path/to/nipple.sh /path/to/your/icon.png
```

And that's it. You will see *icons* folder in folder you are currently in.


## Convenience

To run your script without typing ```bash path/to/nipple.sh``` everytime, you can do the following

```
cd /path/to/your/nipple/file
cp nipple.sh ~/bin/
chmod +x ~/bin/nipple.sh
```
If you do not have ```~/bin``` directory, jsut create it yourself with

```
mkdir ~/bin
```

That will allow you to call script as a regular console command

```
nipple.sh /path/to/your/1024px/icon.png
```
