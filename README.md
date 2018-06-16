## cbman - clipboard manager
#### What's this
cbman is a clipboard manager bash script. It's used for appending and retrieving data to/from the clipboard.
Example use: fast jointment of links for use with download managers, such as aria2

* For usage info try:
`cbman.sh -h`
##### Requirements
* xclip
##### Functionalities
* Append current clipboard to cbman clipboard
* Retrieve the cbman clipboard
##### Misc
Some example aliases:
```
alias cbmc='cbman.sh -c'
alias cbml='cbman.sh -l'
alias cbmp='cbman.sh -p'
alias cbmr='cbman.sh -p && cbman.sh -r'
```
Don't forget that cbman.sh has to be in PATH for these to work.

You can also create hotkeys for easy access ex:
```bash /PATH_TO/cbman.sh -c```
