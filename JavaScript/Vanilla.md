### Vanilla

#### Listening for CSS transition end

It's very common that I want to listen for a CSS event to be finished to start another one.
It's very simple :

```JavaScript
object.addEventListener('transitionend', function(e){
    // You can test for example e.propertyName !== 'transform'
    // to know what kind of transition ended
})
```

#### Unicode Emojis
[Useful list](https://gist.github.com/endolith/157796#file-unicode-official-emojis-txt)

#### Array methods

Reference : [Mdn Array doc](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array)

**Array.prototype.filter()**
creates a new array with all of the elements of this array for which the provided filtering function returns true.

**Array.prototype.map()**
creates a new array with the results of calling a provided function on every element in this array.

**Array.prototype.sort()**
Sorts the elements of an array in place and returns the array.

**Array.prototype.reduce()**
Apply a function against an accumulator and each value of the array (from left-to-right) as to reduce it to a single value.
There is also a reduceRight (reduce from Right to Left)

**Array.prototype.map()**
Creates a new array with the results of calling a provided function on every element in this array.

**Array.prototype.some()**
Returns true if at least one element in this array satisfies the provided testing function.

**Array.prototype.every()**
  Returns true if every element in this array satisfies the provided testing function.

Wes Bos' JavaScript30 class has some very good examples for learning Array functions