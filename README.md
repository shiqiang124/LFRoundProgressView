## LFRoundProgressView

`LFRoundProgressView` base on [MBProgressHUD](https://github.com/jdg/MBProgressHUD) and [DACircularProgress](https://github.com/danielamitay/DACircularProgress)

`LFRoundProgressView` is a `UIView` subclass with circular `UIProgressView` properties.

It was originally built to be an imitation of Facebook's photo progress indicator.

View the included example project for a demonstration.

![Screenshot](https://github.com/shiqiang124/LFRoundProgressView/raw/master/screenshot.png)

## Installation

To use `LFRoundProgressView`:

- Copy over the `LFRoundProgressView` folder to your project folder.
- `#import "LFRoundProgressViewView.h"`

### Example Code

```objective-c

self.progressView = [[LFRoundProgressViewView alloc] initWithFrame:CGRectMake(140.0f, 30.0f, 40.0f, 40.0f)];
[self.view addSubview:self.progressView];
```

- You can also use Interface Builder by adding a `UIView` element and setting its class to `LFRoundProgressView`

## Notes

### Compatibility

iOS5.0+

### Automatic Reference Counting (ARC) support

`LFRoundProgressView` was made with ARC enabled by default.

## Contact


- [GitHub](http://github.com/shiqiang124)

If you use/enjoy `LFRoundProgressView`, let me know!


## License

### MIT License

Copyright (c) 2013 Daniel Amitay (http://danielamitay.com)

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
