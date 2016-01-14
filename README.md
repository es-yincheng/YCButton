效果：
![自定义button实时渲染](http://upload-images.jianshu.io/upload_images/1334943-2ed84a20d591ab5f.gif?imageMogr2/auto-orient/strip)

操作：
> - 1 引入YCButton.h,.m文件 或 自定义
- 2 拖个button到面板，将controller改成YCButton，
- 3 之后在属性面板便可以看到自定义属性，默认边框效果是关闭的，此时其他自定义属性即使设置了也不会起作用，必须先开启边框，边框宽度默认是1，颜色lightgray
- 4 圆角效果默认关闭，开启后默认圆角值是10，改变属性会实时显示效果，其他button属性都可以设置

自定义属性：
> Board Enable： 是否开启边框，     默认关闭 （必须开启其他属性才能生效）
    Board Color：   边框颜色，          默认浅灰色 
    Board With：    边框宽度，           默认为1     
    Masks To Bounds：  是否开启圆角，    默认关闭     （必须开启，圆角值才能生效）
Corner Radius：  圆角值，   默认为10


实现原理：
>#*` IB_DESIGNABLE`*
 在定义类的前面加上IB_DESIGNABLE宏,确保该控件在xib或storyboard上可以实时渲染
#*` IBInspectable`*
在定义类的属性前面加上IB_DESIGNABLE宏,确保该属性在xib或storyboard上可以展示
