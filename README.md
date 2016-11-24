# ImagesAnimationDemo
用多张图片一行代码直接生成动画

今天学习源码时发现一个好用的方法，UIImage自带的，可以直接将多张图片生成动画，可以自定义间隔时间，还蛮方便的，效果如下：

![](https://github.com/Cloudox/ImagesAnimationDemo/blob/master/ImagesAnimationDemo.gif)

这里用到的是UIImage的

```objective-c
+ (UIImage *)animatedImageWithImages:(NSArray *)images duration:(NSTimeInterval)duration
```

方法，可以创建一个动态图片，duration为间隔时间，images为一个图片组成的数组，具体到这个例子中就是：

```objective-c
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(50, 100, SCREENWIDTH - 100, SCREENHEIGHT - 200)];
    [self.view addSubview:imageView];
    
    UIImage *image1 = [UIImage imageNamed:@"xia_off"];
    UIImage *image2 = [UIImage imageNamed:@"xia_on"];
    UIImage *image3 = [UIImage imageNamed:@"jinxuan_off"];
    UIImage *image4 = [UIImage imageNamed:@"jinxuan_on"];
    UIImage *image5 = [UIImage imageNamed:@"lan_off"];
    UIImage *image6 = [UIImage imageNamed:@"lan_on"];
    
    imageView.image = [UIImage animatedImageWithImages:@[image1, image2, image3, image4, image5, image6] duration:4];
```

简单好用，其实最方便的地方在于制作加载中的效果图，如下所示：

![](http://img.blog.csdn.net/20161124194910063)

中间的动画就是由三张图片用这个方法组装成的，其实只要图片弄得好，还是能简单地做出很好很好的效果的~

更多内容见[我的博客](http://blog.csdn.net/cloudox_)
