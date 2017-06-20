### ES6

Some features I forget sometimes, not all ES6 features

#### AJAX (Fetch API)

AJAX call in ES6 can be made through the fetch() API and returns Promises.

First then() gets the json (or other data format), second then() gets the data.
Example :

```Javascript
const url = "http://japanese-prefectures.json"
const prefectures = [];
fetch(url)
  .then(response => response.json())
  .then(data => prefectures.push(...data));
```

This example also uses the spread (...variable) feature of ES6 that is useful to use when creating a new array.
It's useful to pass variables to a function this way too.

#### Default Parameters

Finally !!

``` Javascript
let createMenu = function(height = 100, color = 'yellowgreen') {
  // stuff
}
```

#### Template

```
let name = `Your name is ${first} ${last}.`
```

It's multi-lines too so no need to add + sign between lines.