# Ti.Keyboard for Appcelerator Titanium SDK 6.2.2.GA+

Because with Appcelerator Titanium you have to call the `blur()` function on a specific `Ti.UI.TextField`
or `Ti.UI.TextArea` element, it can be a bit difficult and over-complicated to keep track of the latest
active element where the virtual keyboard has been triggered from and call manually `blur()` on it in
order to hide any virtual keyboard.

This helps to hide any visible/active keyboard from anywhere for iOS and Android.

## Example

```javascript
var win = Ti.UI.createWindow({
	backgroundColor : 'white'
});
var textfield = Ti.UI.createTextField({
	hintText : "Text"
});
win.add(textfield);
win.open();

var button = Ti.UI.createButton({
	title : "Hide",
	top : 10
});
button.addEventListener("click", function() {
	var keyboard = require('ti.keyboard');
	keyboard.hide();
});
win.add(button);
```
