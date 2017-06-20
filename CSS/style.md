### CSS

#### Padding bug
Different padding on mac and windows, set the line height to the font size

#### Css variables
[Can i use](http://caniuse.com/#feat=css-variables)

Different from Sass or Less variables, there are real variables,
you can change them in JavaScript during the page lifecycle.

````
/* Define */
:root {
  --base: #ffc600;
  --spacing: 10px;
  --blur: 10px;
}
/* Usage */
img {
  padding: var(--spacing);
  background: var(--base);
  filter: blur(var(--blur));
}

// Modify
document.documentElement.style.setProperty('--base', '#000');
````
