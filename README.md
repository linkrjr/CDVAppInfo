# Application Info plugin for Phonegap #
By Ronaldo Gomes

## Adding the Plugin to your project ##
Copy the .h and .m file to the Plugins directory in your project. Copy the .js file to your www directory and reference it from your html file(s). 


## Using the plugin ##
The plugin creates the object `window.plugins.appInfo` that makes the following three methods available:

- version(successCallback, errorCallback) - returns the application version
- build(successCallback, errorCallback) - returns the application build number
- customKey(key, successCallback, errorCallback) - returns any available key with string value


`successCallback` and `errorCallback` are callback functions. Success is passed the settings value as a string.

Eg.:

    window.plugins.appInfo.version(function(value) {
            alert("The app version is: " + value);
        }, function(error) {
		    alert("Error: " + error);
	    }
	);

## Registering the plugin ##

Open Cordova.plist/config.xml file in Xcode, depending on the version of cordova/phonegap you are running, and add the following line to the plugins section.
    
    <plugin name="AppInfo" value="CDVAppInfo"/>

## Features to be added ##

- Ability to return Array or Dictionaty keys

## BUGS AND CONTRIBUTIONS ##
The latest release version is available [on GitHub](https://github.com/linkrjr/CDVAppInfo)
If you have a patch, fork my repo and send me a pull request. Submit bug reports on GitHub, please.
	
## Licence ##

The MIT License

Copyright (c) 2011 Tue Topholm / Sugee

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.