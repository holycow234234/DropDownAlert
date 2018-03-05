# Swift Drop Down Alert
Inspired by snapchat, creates a text based alert, allowing for customization of the alert colour and text colour
 
How to use:

```
dropDownAlertView(messageText: String, textColour: UIColor ,alertColour: UIColor, currentView: UIViewController, navController: UINavigationController)
```

UINavigationController is optional, you only need to provide it if you want the alert show up below the nav bar.

Be sure to call this from the main thread (you probably knew that though didn't you?).

![screenshot](/Images/screenshot.png )

