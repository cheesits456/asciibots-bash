# asciibots-bash

A zero-dependency bash implementation of https://github.com/walsh9/asciibots

<details>
  <summary>See Also</summary>

- [asciibots](https://github.com/walsh9/asciibots) - Original project by [walsh9](https://github.com/walsh9), written in JavaScript
- [go-asciibot](https://github.com/mattes/go-asciibot) - Golang implementation of original project by [mattes](https://github.com/mattes)
- [botsay](https://github.com/xyproto/botsay) - `cowsay` clone by [xyproto](https://github.com/xyproto) using generated robots instead of a cow
- [botsay](https://github.com/mdwhatcott/botsay) - another `cowsay` clone with robots by [mdwhatcott](https://github.com/mdwhatcott)

</details>

## Usage

Simply run the script to print a randomized robot ascii art to `stdout`

![Random](https://raw.githubusercontent.com/cheesits456/asciibots-bash/readme-images/random.png)

Call the script with a specific 3 or 5 digit hex code to get a particular combination printed to `stdout`. The final three digits indcate the robot's head, body, and its legs. The id may be preceded with 2 additional digits which will change its eyes and mouth.

### ID Examples

```
             _
            /     T___                 
     .---3-|      |[o]|     
     |      \_    \_-_/     
     | __1__/  o==|ooo|==o  
     ||     \_    |___|
     || _6__/     /| |\
     |||    \_   [_] [_]
     |||
ID: "316"

        __.--- Required (head: 0, body: 5, legs: 9)
       |||    
ID: "13059"
     ||
     ''------- Optional (mouth: 1, eyes: 3)
     ___T_
    | d b |
    |__=__|
}-. /\--o/\ .-{
   " |___| "
      |_|
     (ooo)
```

![ID Examples](https://raw.githubusercontent.com/cheesits456/asciibots-bash/readme-images/id-examples.png)

### Invalid Argument

If the specified argument is not 3 or 5 characters long or is not a valid hex code, the program will fall back to printing a random robot.
