# myMIUI APK & Framework i18n

## Available Languages
* English
* Chinese

## Missing Languages
* Greek
* Spanish
* Polish
* Portuguese
* Hebrew
* Dutch
* Russian
* German
* Italian
* Turkish
* Danish
* Norwegian
* French
* Arabic/Farsi
* Hungarian
* Korean
* Slovenian
* Vietnamese

## Quick Reference - Useful Git Commands:
```
git pull               - Issue this command prior to doing anything to your REPO.
                         This keeps it up to date with the remote repository.
git add .              - Issue this command from the ROOT of your REPO prior to pushing.
                         This looks for any untracked files and adds them.
git commit -m "Msg"    - Run this after the above command.
                         This will stage your changes into a ready to push message.
                         Type a helpful short message explaining what you changed.
git push               - Assuming you set up the repos correctly.
                         This will push your changes LIVE to YOUR REPO.
git status             - This will let you know of your current git status.
```

## How to Translate
GitHub is used for the management of myMIUI i18n Project.  
Git is a Distributed Version Control System that allows collaboration on the languages translation process with ease.

### Step 1 - Installing Git & Creating a GitHub account
[Learning how to use Git & GitHub](http://gitimmersion.com/)

### Step 2 - Forking myMIUI-HD2-i18n
In GitHub, on the [original myMIUI-HD2-i18n project page](https://github.com/Aternus/myMIUI-HD2-i18n) __click "Fork"__, then follow the wizard.  
If you need more help on how to Fork a project, [click here](https://help.github.com/articles/fork-a-repo).

### Step 3 - Setting your environment (Linux/Cygwin/GitBash)
__Replace any occurences of username with your username.__

#### Make a working directory
```
cd /
mkdir "myMIUI-HD2-i18n"
cd myMIUI-HD2-i18n
```
#### Clone the REPO you've just forked to your local directory
```
git clone https://github.com/username/myMIUI-HD2-i18n.git
```
#### Add the remote source REPO of myMIUI-HD2-i18n
```
git remote add source https://github.com/Aternus/myMIUI-HD2-i18n.git
```

### Step 4 - File Structure
```
/_aroma_langs           - myMIUI AROMA Installer Language Files
/_crowdin               - Crowdin Source as seen in MIUI 2.4.20
/_mymiui_apk            - myMIUI APK Language Files
/_mymiui_framework      - myMIUI Framework Language Files
```

### Step 5a - Translating - Core Concepts
In order to perform translations there are coupld core concepts you'll have to understand:

* Inside every APK there is a __"res"__ folder which includes all the resources from that APK.

* The folders inside the __"res"__ folder is structured as follows: __resourcetype__-__lc__-r__RC__  
```
resourcetype   - Resource Type
lc             - ISO Language Code (xx)
RC             - ISO Region Code (XX)
```
__NOTE:__ [Supported Languages and Regions in Android](http://colincooper.net/blog/2011/02/17/android-supported-language-and-locales/). Region is optional.

* __The resources loading priority is as follows:__  
```
[APK values-iw-rIL] > [APK values-iw] > [APK values] > [framework-res.apk values-iw-rIL] > [framework-res.apk values-iw] > [framework-res.apk values]
```

* __The following resource types should be translated:__  
```
values
drawable
raw
```

* Framework-res.apk is an APK with the __MAIN__ resources for the whole myMIUI ROM.  
If a resource is missing from the APK, the OS will try to load it from framework-res.apk.


### Step 5b - Translating APKs
Now that you understand the basic concept of translations for Android, we can get to work.  
Inside __/_mymiui_apk__ & __/_mymiui_framework__ you will find the folders with the names of the APK files, inside each of these should reside a __"res"__ folder.  
Inside is the __"res"__ folder most of the folders required for the translation have already been created,  
__if not__, please create the folder according to __your language and region__.

In general, to translate the APK you'll need to edit the files residing inside the folder with the __resource type__ of __"values"__.  
Although rare, but at times you'll be required to translate __"raw"__ and __"drawable"__ resource types.  
Its best to look at an already translated APK for more information and better understanding.

### Step 6 - Saving Changes & Commiting
After you've finished making the required changes, you'll have to add the changed files to the staging index and commit the changes to the repository.
```
git add .
git commit -m "Message describing what you've changed"
```

### Step 7 - Pushing (Uploading) your changes to GitHub & Sharing your changes
After you've finished your working session, its a good idea to share your work with others on your GitHub REPO.
```
git push origin master
```
Now that you have the new commits on GitHub its time to open your GitHub account and make a __"Pull Request"__ to the source myMIUI REPO.  
After getting your request, I will review the changes and merge them to the __myMIUI-HD2-i18n source REPO__.

### Step 8 - Being up-to-date with myMIUI-HD2-i18n source REPO
An important concept to grasp with Git is that it's a distributed version control system,  
which means you are responsible to stay up to date with what happens with the __source REPO__.  
Before working on any files, I strongly suggest pulling the latest changes from the source REPO.
```
git pull source
```

## Credits
Credits to the original guide on [Learning how to Translate MIUI](https://docs.google.com/document/d/1H8DoN6nnbsOGB_fauBiCcpyB4OAIEHjqEiJX322v45Y/edit).

#####################################################################
.     

# myMIUI AROMA Installer i18n

## Available Languages
* English - by aternus
* Greek - by jolas, zach.antre
* Spanish - by darkdyo
* Polish - by kubekpop
* Portuguese - by fadox
* Hebrew - by aternus
* Dutch - by uloga
* Russian - by sergey, aternus
* German - by waldemator
* Italian - by saint tropez
* Turkish - by metra01
* Danish - by pokeman
* Norwegian - by arvter
* French - by patrick lesimple

## Missing Languages
* Arabic/Farsi
* Hungarian
* Korean
* Slovenian
* Vietnamese

## How to Translate

__NOTE:__ The full list of locales is available at __/_aroma_langs__, you should use "en.lang" as the source file.

Translate all strings which appear to the __right__ to the equal sign (=)

Example:
text_next=Next __becomes__ text_next=Next_in_your_language

__NOTES:__

* In the string, there might be styling and new line characters.
* A new line character is represented by a backslash (\).
* Styling characters are similar to HTML/XML tags. They begin with a <tag> and end with a </tag> (where tag is the actual styling attribute).
* You don't need to translate the styling characters!
* You don't need to alter the new line characters!
