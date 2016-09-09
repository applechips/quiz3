# QUIZ 3

### Javascript Questions (not part of the app above):
Visit this page `http://vancouver.craigslist.ca` and write a piece of jQuery code that changes all the links on the home page to have a color red if the link's anchor text includes the pattern `eal` (5%)

Visit a Wikipedia page like this one: https://en.wikipedia.org/wiki/Rule_of_three_(computer_programming) then write a piece of jQuery code that will fadeOut any link you click on without following the link. (5%)

Write a Javascript code to do the following: Implement filter function in Javascript (5%)
```js
var isEven = function (x) { return x % 2 == 0; }; filter([1, 2, 3, 4], isEven); // => [2, 4]
```

----

### Bonus (to be added to the Rails application):
Add ability to attach images to ideas (use the Paperclip or CarrierWave gems) - 10%
Add a mailer to send an email to the idea creator when someone likes their ideas and make it happen in the background with DelayedJob - 15%
