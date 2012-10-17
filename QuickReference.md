# Quick Reference

## Git Commands:
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

## Translation Rules - XML:
```
\n                     - new line
\t                     - tab
\                      - escape character (use for ' " `)
/                      - slash (use for seperating text)
```

## RegEx:
```
##
# i18n: Remove Unused Strings (APKTool Warning Data as Input)
###########################################################
S: ^.+?'(.+?)'.+$
R: \1

S: \n
R: |

S: <string name="(string_name_1|string_name_n)".+?</string>
R:

##
# i18n: Fix Formatting Issues
###########################################################
S: (?!.+formatted="false".+)(?=.+(%s|%d).+(%s|%d).+)<string name="(.+?)">
R: <string name="\3" formatted="false">

##
# i18n: RegEx
###########################################################
##
# arrays.xml
##
Remove arrays with "values" in their name
S: <string-array name=".*?value?s.*?">(?s).*?</string-array>
R:

##
# strings.xml
##
<string name="[A-Za-z0-9].+?">(?!com\.|@)[^\x00]+?</string>

Removing Items
S: <item .*?>.*?</item>
R:

Removing Empty Tags
S: <string .*?/>
R:

Sorting:
S: <string(.*?name="[a-z].*?".*?)>(.*?)</string>
R: <string\1>\2</string>

Merging:
S: (<string.*?name=".*?".*?>)(.*?)(</string>)\n.*?\1.*?\3
R: \1\2\3

##
# plurals.xml
##

Merging:
S: (<plurals.*?name=".*?".*?>).*?(</plurals>).*?\1(.*?)\2
R: \1\3\2
```
