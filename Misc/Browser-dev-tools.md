### Browser Dev Tools

These features should work in all browsers

#### Clear

```
console.clear();
```

#### Interpolation

```
console.log('My name is %s', 'nacho');
```

#### Interpolation

```
console.log('%c I am some great text', 'font-size:50px; background:red; text-shadow: 10px 10px 0 blue')
```

#### Levels
```
// warning!
console.warn('something wrong');

// Error :|
console.error('something really wrong');

// Info
console.info('Japan is slightly humid in summer ✈');
```
#### Testing

```
let p = document.querySelector('p');
console.assert(p.classList.contains('menu'), 'No menu class');
```

#### JavaScript Representation
Displays an interactive list of the properties of the specified JavaScript object.
If the object being logged is an HTML element, then the properties of its DOM representation are printed.

```
let p = document.querySelector('p');
console.dir(p);
```

#### Tables
Displays data as a table

```
const apples = [{name: 'Apple', langauge: 'English'},{name: 'Ringo', langauge: 'Japanese'}]
console.table(apples);
```

#### Timing
Simply create a timer to test code speed or asynchronous code for example.

```
console.time('calling data');
fetch('https://api.github.com/users/thomasprost')
  .then(response => response.json())
  .then(data => {
    console.timeEnd('calling data');
    console.log(data);
  });
```

### Firefox

#### Shortcuts

Take screenshot : Ctrl + Shift + s