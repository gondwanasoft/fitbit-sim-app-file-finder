# fitbit-sim-app-file-finder

This is a crude Windows cmd (.bat) file that might, if you're lucky, show you where your clockface/app files are stored on the Fitbit OS simulator. This can be useful for checking locally-stored files (see /private/data) and inspecting the app snapshot.

Usage
-
`findsim [appname]`

* `appname` need not be complete, but should be sufficient to be unambiguous.

* If `appname` is ambiguous, multiple matches are possible.

* If `appname` contains one or more spaces, surround it with "".

* If you don't specify `appname` on the command line, you will be prompted for it.

Output
-
The output identifies the location of your app's manifest file, but everything in the numeric directory above it relates to your app.

Example session:
```
D:\Users\Peter\Documents\Development\Fitbit>findsim nag

Versa 2:
C:\Users\Peter\AppData\Roaming\Fitbit OS Simulator\mira\app\apps
1\assets\manifest.json

Versa 3:
C:\Users\Peter\AppData\Roaming\Fitbit OS Simulator\atlas\app\apps
1\assets\manifest.json

Press any key to continue . . .
```
