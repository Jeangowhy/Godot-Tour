
## Godot Docs 官方文档阅读指南
- [动画师救生手册 - 动画十二原则](https://www.bilibili.com/video/BV1x54y1e7J9)
- [GAMES101-现代计算机图形学入门-闫令琪](https://www.bilibili.com/video/BV1X7411F744/)
- [龚大的上帝视角看GPU教程](https://www.bilibili.com/video/BV1P44y1V7bu/)
- [The Book of Shaders by Patricio Gonzalez Vivo & Jen Lowe](https://thebookofshaders.com/?lan=ch)
- [Godot Demo Projects](https://godotengine.github.io/godot-demo-projects)

要阅读好 Godot 官方文档，需要掌握文档的使用方法，并且最好有计算机图形学基础，掌握 Python 脚本语言
可以快速掌握 GDScript 脚本。

Godot 除了自带的 GDScript 脚本外，通过模块扩展支持了多种语言开发，C# 支持需要下载集成 Mono 的版本，
推荐使用自带的 GDScript 脚本开发。

另外，提升动画艺术水平，学习一些动画原理很有必要，工具有 Spine、Blender、SketchBook、Krita、SAI 等等。

然而，还有一个较难的领域是现代 GPU 编程，即着色器程序开发，Godot 3.x 使用 OpenGL GLES 2/3，
未来 Godot 4.x 会使用 Vulkan。一个比较好的入门教材是 The Book of Shaders，尽管这是一个烂尾工程。

Godot 官方示范项目很赞，提供了许多基础功能的演示，Godot 3.x/4.x 版本分使用 master 或 4.0-dev 分支：

> git clone -b 4.0-dev --depth=1 git@github.com:godotengine/godot-demo-projects.git
> https://godotengine.github.io/godot-demo-projects

Godot 文档是非常从性化的，体现在以下几点：

Godot IDE 编辑器本身集成了在线手册，按 F1 或直接在代码中按下 Ctrl 单击关键字即跳转到相关手册文档。
信息非常详细，包括类对象的继承关系、成员、方法信息等等。例如全局空间 @GDScript 和 @GlobalScope 
包含所有脚本中可以直接使用的函数等，超链接跳转非常方便。

其次 Online Docs 文档是完整的在线文档，是完整的文档，新手建议从开头两部分内容开始：

- General 基本概念及介绍，学习一个游戏引擎最好要有数学、图形学、着色器编程等基础。
- Getting started 入门引导，通过简单的教程讲解基础的概念。
- Tutorials 各个系统功能的教程，详细介绍 Godot 的组成。
- Development 引擎开发文档，这部分可以学习 Godot 应用架构组成，场景文件以及 GDScript grammar 脚本语法声明规范。
- Community 社区资讯介绍。
- Class reference 类对象 API 手册。

迪士尼的 12 项动画基本原则是迪士尼动画制作人 Ollie Johnston 和 Frank Tomas 在 1981 年出版的
 The Illusion of Life: Disney Animation 书中介绍的原则。

- Squash and Stretch 通过挤压和拉伸生动地表达体积感的变化；
- Anticipation 预备动作为观众心理预期准备一个适应性提示；
- Staging 舞台布局在画面构图上精心安排好主次元素；
- Straight Ahead Action and Pose to Pose 使用关键帧来设置动画姿态并保持动作连贯；
- Follow Through and Overlapping Action 为受力拖拽、惯性元素提供动画效果；
- Slow In and Slow Out 缓入缓出（Ease In/Out），真实世界的动画是累积的而非突变的；
- Arcs 弧线运动，这是普遍存真实世界中的运动，如手臂的摆动，身体的弯曲等等；
- Secondary Action 次要动作是丰富动画内容的重要手段，例如人物搬运重物前可以添加一个摩擦手掌的动作；
- Timing and Weight 时间节奏和重量感，时间越短或帧数越少表示动作越快；
- Exaggeration 夸张地表现情绪气氛；
- Solid Drawing 立体造型，符合透视的画面才更真实；
- Appeale 吸引力，让画面更讨喜、比例更突出，使用画面简洁而突出重点，这也是动画与插画的区别；


## Godot Architecture 构架介绍
- [Introduction to Godot development](https://docs.godotengine.org/en/stable/development/cpp/introduction_to_godot_development.html)
- [Inheritance class tree](https://docs.godotengine.org/en/stable/development/cpp/inheritance_class_tree.html)
- [Overview of Godot's key concepts](https://docs.godotengine.org/en/stable/getting_started/introduction/key_concepts_overview.html)
- [Nodes and Scenes](https://docs.godotengine.org/en/stable/getting_started/step_by_step/nodes_and_scenes.html)
- [Using SceneTree](https://docs.godotengine.org/en/3.5/tutorials/scripting/scene_tree.html)
- [Using Viewports](https://docs.godotengine.org/en/3.5/tutorials/rendering/viewports.html)
- [Canvas layers](https://docs.godotengine.org/en/3.5/tutorials/2d/canvas_layers.html)
- [User Interface(UI)](https://docs.godotengine.org/en/3.5/tutorials/ui/index.html)
- [WebGL 可视化相机](https://webglfundamentals.org/webgl/lessons/zh_cn/webgl-visualizing-the-camera.html)
- [《迷失岛2》游戏框架开发01:实现场景转换｜Godot教程](https://www.bilibili.com/video/BV1jr4y1V7xJ/)

Godot 架构是模块化的，通过扩展模块可以实现各种功能，而各种编程语言则是通过以下三个模块实现的。
Godot 本身是 C++ 开发的，可以实现各种模块以扩展 Godot 功能，模块源代码位于 modules 子目录：

- GDScript 模块引入了 GDScript 脚本编程；
- Mono 模块引入 C# 语言；
- GDNative 模块引入原生语言，如通过 GDNative C++ Binding 使用 C++ 语言；

入门先阅读 Introduction to Godot development，- Architecture diagram 了解工程架构，搞清楚
**SceneTree** -> Nodes -> CanvasItem(Node2D, Control) and Spatial (3D Nodes) 基本关系。
Godot IDE 编辑器本身就是和游戏工程一样的应用，每个游戏可以看作一个场景树，它的节点是场景，而场景又
包含一组节点，节点是一个可以绑定脚本进行编程的对象。

![Architecture diagram](https://docs.godotengine.org/en/stable/_images/architecture_diagram.jpg)

Godot 编程体系的继承层次结构中，所有对象的父类是 **Object**，然后派生出各种功能的类对象，主要是
引用类和节点类两大块：

    ● Object
      +-- ● References
      |   +-- ● Resources
      +-- ● Node
      |   +-- ● CanvasItem
      |   |   +-- ● Control
      |   |   +-- ● Node2D
      |   +-- ● Spatial

Object 提供了最基本的能力，包括观察者编程模式 Signal 和 Notifications 两种机制的实现。
信号 **Signal** 在 Godot 中大量使用，这是观察者编程模式的一种实现，可以实现复杂逻辑的解耦。

相对于 Object、References、Resources 等类型，Node 是一个功能丰富的对象，因此它也更消耗 CPU，
所以，可以使用简单对象实现的功能，就尽量避免使用 Node 类型对象来实现。

官方提供了一个 Control Gallery 示范工程，用于演示各种控件、布局容器的使用，2D 控件支持主题设置，
定制控件外观非常方便。2D 对象使用 Anchors 模型进行图形的比例、多分辨率处理：

![Size and Anchors](https://docs.godotengine.org/en/3.5/_images/anchors.png)

Godot IDE 中的每个场景就是一个 Node 对象，每个节点可以附加脚，以实现程序化操控。

![Scene tree](https://docs.godotengine.org/en/3.5/_images/activescene.png)

在运行之前，可以设置工程，指定一个主场景：

    Project -> Project Settings -> Application -> Run -> Main Scene

场景中 Viewports 就相当于一个屏幕，游戏世界的内容会投射到这里形成图像。场景树顶点就是一个 Viewport，
在 Godot IDE 运行调试时，点开 Scene 面板中的 Remote 栏目即可以查看运行中的顶层节点，应用运行时，
它总是处于加载状态，而且不可以手动清除。

在 3D 场景中，用一个 Viewport 节点装载 2D 节点，然后将 Viewport 的纹理图像作为 3D 场景对象的
材质贴图使用，这是一种常用的 3D 表现 2D 内容的手段。注意，Viewport 的尺寸要足够容纳 2D 内容，如果
2D 节点位置超出 Viewport 的尺寸，则内容会被裁剪掉。另外，如果内容出现上下颠倒，可以设置 Reander
Target - V Flip 进行一次竖直方向的反转即可以解决。

Viewport 可以设置背景透明，赋值给 SpatialMaterial 材质的 Albedo 作为表面反射色，需要启用材质
的透明功能，Flags -> Transparent，否则带 Alpha 通道的贴图会出现黑色块。设置 

Viewport 可以装入 ViewportContainer 这个特殊容器，且只包含一个 Viewport 子节点，用来显示图像，
方便在编辑器中观察图像输出效果，并且可以用来显示多个视图图像输出。

在计算机模拟的世界中，需要虚构一台用于成像的相机，目的是模拟人的眼眼所看到的世界。视界中的光线入射
到视网膜形成图像，在模拟世界中的成像用 Viewport 这个概念表示，光线从远处透过视口，到达相机的位置，
就是一个坐标点，而光线与视口平面相交的点就对应一个像素。通过调整相机的参数，例如改变视域 FOV 就可以
改变成像结果。而视口又可以再进行几何变换，以控制图像的渲染。

![From "Ray tracing" on Wikipedia](https://jamie-wong.com/images/16-07-11/raytrace.png)

材质设置可以使用 **SpatialMaterial**，适当调整贴图 UV1 坐标绽放、偏移，使用纹理适合于模型表面。
Godot 支持每个材质使用两个 UV 通道，次级的 UV2 通常用于环境光遮挡或发射（烘焙光）。设置 Triplanar
启用 Triplanar Mapping，在使用重复纹理时非常有用。

在 2D 场景中使用 3D 场景也是类似的思路，只过不反过来，将 Viewport 中的纹理图像设置到 2D 节点的
纹理属性上，如 Sprite 或 TextureRect 等节点都可以指定 ViewportTexture 以使用 3D 场景产生的
纹理图像。注意，要得到 3D 场景的图像，必需设置 Camera，因为需要确实世界空间的投影关系才能得到相应
的平面图像，这一点和 2D 有些差别。为 3D 节点材质指定纹理贴图时，如漫反射纹理 Albedo Texture，
需要开启 resource_local_to_scene 选项，对应材质面板的 Resource -> Local To Scene 选项。

可以参考官方示范项目，Dynamic Split Screen Demo 演示了如何使用 Viewports 在同一个显示器中
显示两个玩家的独立摄像机视口，使用了着色器程序，有一定的复杂度。


当一个节点连接到 Root Viewport，它就成为场景树中的一个部分，最后节点被移除，过程会触发系列回调方法：

```py
_enter_tree() 
_ready() 
_exit_tree()
```

节点树所有节点会按位置先后、由表层到内层依次执行 enter_tree 方法，而 ready 和 exit_tree 方法，
则不同，会先由内层到外层的顺序执行，父级节点需要等待内层节点工作完成才能执行 ready 等动作。
节点从非活跃状态转变为活跃状态，此时才会处理所有程序逻辑，包括用户输入、信号、消息处理，播放声音等。

使用 load、preload 方法加载场景文件得到 **PackedScene**，传递给 change_scene_to() 方法就
可以切换场景，原场景内容就会卸载掉。使用 change_scene() 方法切换场景直接使用 res:// 指定场景文件。

```py
# Methods
Error change_scene(path: String)

Error change_scene_to(packed_scene: PackedScene)

# Properties
Viewport root 
         get_root() getter

    Node current_scene
         set_current_scene(value) setter
         get_current_scene() getter
```

场景可以使用 change 方法进行切换，这会触发原场景所有节点卸载动作，也可以将场景作为一个节点实例，
再附加到当前活动的场景树中，这不会触发节点卸载行为。以下代码片段演示了节点与节点树连接的事件流程，
以及通过 load() 方法加载场景，并作为节点加载它：

```py
extends CanvasItem

onready var list = $"/root/Node2D/ItemList"

func _enter_tree():
    print(self.name, " _enter_tree")
    if list != null:
        list.add_item(self.name + " _enter_tree")

func _ready():
    print(self.name, " _ready")
    list.add_item(self.name + " _ready")

func _exit_tree():
    print(self.name, " _exit_tree")
    list.add_item(self.name + " _exit_tree")

func _on_Button_pressed():
    print(self.name, " pressed")
    list.add_item(self.name + " pressed")
    
    scene_change()
    #self.queue_free()

func scene_change():
    # change sence
    var cover = load("res://L1 Scene Tree/cover.tscn")
    #get_tree().change_scene_to(cover)
    #get_tree().change_scene("res://L1 Scene Tree/cover.tscn")
    
    # sence as node
    var acover: Node2D = cover.instance()
    print("button: ",self)
    var child = acover.get_child(0) as Control
    #acover.position = get_local_mouse_position() 
    acover.position = get_global_mouse_position()  - child.rect_size / 2
    get_node("/root").add_child(acover)
    list.add_item("Load a scene as a node")
    
    var tween:SceneTreeTween = create_tween().set_trans(Tween.TRANS_ELASTIC)
    tween.tween_property(acover, "modulate", Color.red, 2)
    tween.tween_callback(acover, "queue_free")
```

所有 **Control** 子类者都具有 mouse_filter 属性，将其设置为 MOUSE_FILTER_STOP 就可以阻挡
鼠标事件穿透到后面的对象上，用来避免在某些情形下不会触发相应的事件。配合 **SceneTreeTween** 可以
创建转场动画效果。


在节点的脚本中，使用 get_tree() 方法获取场景树引用，要获取其它节点引用则使用 get_node() 方法。
这个方法可以简写为 $，如 $"/root"，又如 $SomeNode 等价于 get_node("SomeNode")。还有一个
更方便的方法创建节点引用，只需要在 Scene 节点列表中拖动节点到脚本中即可自动生成引用，按 Ctrl 拖放
时还可以生成 onready 引用：

```py
SceneTree get_tree() const
Node get_node(path: NodePath) const
```

参数中的 **NodePath** 是一个表示节点路径的字符串，根节点 /root 始终是同一个顶级的 Viewport。
可以使用点或两点表示当前节点位置和父级位置，除了使用 / 开头表示绝对路径，其它路径都相对当前节点：

```py
get_node(".")
get_node("..")
get_node("Backpack/Dagger")
get_node("../Swamp/Alligator")
get_node("/root/MyGame")
```

可以激活 Scene Unique Nodes 模式，在节点右键菜单中，这样就在原节点名前缀 % 号作为唯一名称来访问它。
使用拖动的方式，可以很方便地将节点从场景树中拖放到脚本中，会自动生成引用，按下 Ctrl 生成引用类似如下：

    onready var label = $"%Label"

Godot 工程中的脚本文件或者场景文件都是一种资源类型 Resource，使用 load 或 preload 方法加载，
根据不同的文件返回的各种子类型，就场景资源和脚本而言，它们分别是 PackedScene 和 GDScript 类型。
并且，资源类型不同，实例化方法也不同。

对于场景，使用 instance() 方法实例化，返回的类型就是 Node，打印时会将场景根节点的名称和父类型信息，
如 RootNode:[Node2D:724501] 这样的格式。而脚本资源的实例化就是使用脚本中通用的 new() 方法，返回
的类型就是 extends 继承的类型，因为不像场景那样有节点树，所以打印脚本类型信息中只显示了父类信息。
如果指定了 class_name，这个脚本的类型就是命名的类型，会在类型列表中显示。

基类方法 Object get_class() 用来获取对象的类型，这个方法不考虑脚本中通过 class_name 定义的类型，
而是获取引擎 C++ 内部定义的类型，类似地，is_class() 方法判断的也是内部类型。内部类类型信息记录在
**ClassDB** 这个信息类中，通过 **get_class_list()** 方法可以查询引擎现有的类型列表。

有趣的是 Godot 基于节点化的编程思维中，节点只是一种数据结构，而将脚本绑定到节点上运行，就使得节点
拥有了交互的能力。脚本附加到节点后，此时 **self** 关键字既引用了类实例，又引用场景树中的节点。做类型
判断时，如 is 关键字，判断的是引擎 C++ 内部实现的类型，或者脚本定义类型。尽管场景也可以继承其它场景，
但是这仅仅是复用节点树结构的一种方法，并不是编程语言的类型系统的继承。

GDScript 脚本使用单继承，每一个脚本文件就是一个类型定义，当然可以定义内部类类。这种结合了节点的 
Object-Oriented Programming (OOP) 编程语言真的很特别，省略了复杂 OOP 规则，没有了 C++ 中的
Private、Protected、Public 访问控制机制，语法结构使用 Python 风格，脚本中定义的变量就是类成员，
具体访问规则由开发者自行把握，通过 setget 可以控制成员的读写逻辑。使用脚本能快速迭代开发产品，只在
遇到性能瓶颈时，才考虑将脚本迁移为 C/C++ 等高效的语言实现：

```py
tool

# BasicScene defined in L0 Basic Guide/entry.gd
extends BasicScene

# (optional) class definition with a custom icon
class_name SceneL8, "res://icon.png"

const tscn = preload("res://L0 Basic Guide/entry.tscn") # class PackedScene
const gd   = preload("res://L0 Basic Guide/entry.gd")   # class GDScript

func _ready():
    
    print("basic scene ", tscn, tscn.instance())
    print("basic script ", gd, gd.new())

    var scene = get_tree().current_scene
    print(self, " current_scene ", scene, " is instacne of gd? ", self is gd)

    print("note ", Something.new().note)
    print("NOTE ", Something.NOTE)
    print("enum ", Something.UNIT_ALLY, Something.Named.ANOTHER_THING)

# Inner class

class Something:
    # Member variables
    var note = "This is InnerClass."

    # Constants
    const NOTE = "This is a constant."

    # Enums
    enum { UNIT_NEUTRAL, UNIT_ENEMY, UNIT_ALLY}
    enum Named {THING_1, THING_2, ANOTHER_THING = -1}
```



## GDNative C++ 开发
- [Godot API Headers](https://github.com/godotengine/godot-headers)
- [godot-cpp](https://github.com/godotengine/godot-cpp)
- [GDNative demos](https://github.com/godotengine/gdnative-demos) 
- [GDNative C++](https://docs.godotengine.org/en/latest/tutorials/scripting/gdnative/index.html)
- [Custom modules in C++](https://docs.godotengine.org/en/stable/development/cpp/custom_modules_in_cpp.html)
- [Godot Compiling](https://docs.godotengine.org/en/stable/development/compiling/index.html)
- [Godot Engine Download](https://downloads.tuxfamily.org/godotengine/)
- [Godot Engine – Multi-platform 2D and 3D game engine](https://github.com/godotengine/godot/releases)

Godot 本身是 C++ 开发的，使用 C++ 可以实现各种模块以扩展 Godot 功能。通过现有的 GDNative C++ Binding 
模块，可以使用 C++ 来开发 Godot 应用。源代码开发需要使用 Python，编译工具使用 SCons，支持 C++14 规范，
可以使用 `clang`, `gcc` 等兼容的编译器。

GDNative 是 Godot 用于和原生共享库交互的扩展模块，和编写 Godot C++ 模块不同，因为 Godot 已经包含了
GDNative 扩展模块，所以基于 GDNative 使用 C++ 开发时不需要重新编译 Godot 源代码。而为 Godot 开发
C++ 扩展模块则不同，需要重新编译 Godot 源代码。通过 GDNative 可以很方便地开发插件，而不必重新编译引擎。

需要注意的是，GDNative 要求严格的版本兼容，例如 Godot 3.4.x GDNative 就不兼容 3.3.x 或 3.5.x 版本。
所以在项目创建时，需要使用正确的 Godot API Headers 版本，GDNative demos 演示项目最好也选择兼容版本。

使用 git 克隆仓库时可以指定分支版本，注意 godot-cpp 依赖 godot-headers 仓库，并作为子模块，在初始化
项目时，需要递归获取子模块：

```sh
mkdir gdnative_cpp_example
cd gdnative_cpp_example
git init
git submodule add -b 3.x https://github.com/godotengine/godot-cpp
cd godot-cpp
git submodule update --init --recursive
# just download the repositories or clone them into your project folder,
# git clone --recursive -b 3.x https://github.com/godotengine/godot-cpp
```

下载 GDNative C++ Bindings 后，需要为 Python 环境安装 SCons 模块，然后再编译绑定模块，再
编译基于 GDNative 的共享库供 Godot 工程使用：

```sh
pip install SCons
# scons platform=PLATFORM
# Building the C++ bindings
cd godot-cpp
scons platform=windows generate_bindings=yes -j4
# Building the GDNative library project
cd ..
scons platform=windows target=release -j4
```

SCons 支持多平台编译，PLATFORM 可以指定 `windows`, `linux`, `osx`，编译 godot-cpp 生成文件
保存在 bin 和 gen 目录下，共享库可以供 GDNative demos 示范项目使用，其配置脚本 SConstruct 文件
已经设置好相关目录路径。先编译 godot-cpp，再编译项目使用的共享，库文件生成后保存于 `project/gdnative`。

```py
#!python
import os

opts = Variables([], ARGUMENTS)

# Define the relative path to the Godot headers.
godot_headers_path = "godot-cpp/godot-headers"
godot_bindings_path = "godot-cpp"

# Gets the standard flags CC, CCX, etc.
env = DefaultEnvironment()

# Define our options. Use future-proofed names for platforms.
platform_array = ["", "windows", "linuxbsd", "macos", "x11", "linux", "osx"]
opts.Add(EnumVariable("target", "Compilation target", "debug", ["d", "debug", "r", "release"]))
opts.Add(EnumVariable("platform", "Compilation platform", "", platform_array))
opts.Add(EnumVariable("p", "Alias for 'platform'", "", platform_array))
opts.Add(BoolVariable("use_llvm", "Use the LLVM / Clang compiler", "no"))
opts.Add(PathVariable("target_path", "The path where the lib is installed.", "project/gdnative/"))
opts.Add(PathVariable("target_name", "The library name.", "libdodgethecreeps", PathVariable.PathAccept))


# ellipsis ...

env.Append(
    CPPPATH=[
        godot_headers_path,
        godot_bindings_path + "/include",
        godot_bindings_path + "/include/gen/",
        godot_bindings_path + "/include/core/",
    ]
)

env.Append(
    LIBS=[
        env.File(os.path.join("godot-cpp/bin", "libgodot-cpp.%s.%s.64%s" % (platform, env["target"], env["LIBSUFFIX"])))
    ]
)

env.Append(LIBPATH=[godot_bindings_path + "/bin/"])
# ellipsis ...
```


## CLI 命令行工具
- https://docs.godotengine.org/en/stable/tutorials/editor/command_line_tutorial.html


命令行创建远程 git 工程：

```py
$user="jimboyeah"
$repo="godot-tour"
git init
curl -u "$user" https://api.github.com/user/repos -d "{`"$name`":`"$repo`"}"
git remote add origin git@github.com:$user/$repo.git
git add readme.md
git commit -m "Welcome to Godot Tour!"
git push origin master
```


配置 Sublime Text 以运行 GDScript 脚本：

- 先创建构建配置，执行菜单： Tools -> Build System -> New Build System ...
- 将以下 JSON 配置粘贴到配置文件中，并保存到 Packages\User\GDScript.sublime-build 文件
- 然后打开 GDScript 脚本，按 Ctrl+B 执行构建命令

```json
{
    "shell_cmd":"%Godot% --help",
    "file_regex": "^(.*.gd):(\\d+):(\\d+):",
    "selector": "text.plain, source.gd, source.gdscript",
    "encoding": "gbk",
    "quiet": true,
    "working_dir": "${file_path:${project_path}}",
    "env": {
        "PATH":"%PATH%;c:/download/games",
        "godot":"Godot_v3.5.1-stable_win64.exe",
    },
    "variants":
    [
        {
            "name": "Godot --help",
            "shell_cmd": "%Godot% --help",
        },
        {
            "name": "Godot Run GDScript",
            "shell_cmd": "%Godot% --no-window -s \"${file}\"",
        },
        {
            "name": "Godot Run Scene",
            "shell_cmd": "%Godot% -e \"${file}\"",
        },
    ]
}
```

新建测试脚本 sayhello.gd 以演示通过 Godot 命令运行：
注意，脚本必须继承 **SceneTree** 或 **MainLoop** 类型，这是 Godot 游戏的入口类型。

```py
#!/usr/bin/env -S godot -s
extends SceneTree

func _init():
    var a = Vector2 (-10, -10) 
    var b = Vector2 (1, 1)
    var format = "Normalized vector %s is %s, angle between %s and %s is %d degree"
    print(format % [a, a.normalized(), a, b, (a - b).angle()*180/PI])
    quit()


func _ready():
    quit() # why not? SceneTree no _ready() life cycle funtion
```


    Godot Engine v3.5.1.stable.official.6fed1ffa3 - https://godotengine.org
    Free and open source software under the terms of the MIT license.
    (c) 2007-2022 Juan Linietsky, Ariel Manzur.
    (c) 2014-2022 Godot Engine contributors.

    Usage: Godot_v3.5.1-stable_win64.exe [options] [path to scene or 'project.godot' file]

    General options:
      -h, --help                       Display this help message.
      --version                        Display the version string.
      -v, --verbose                    Use verbose stdout mode.
      --quiet                          Quiet mode, silences stdout messages. Errors are still displayed.

    Run options:
      -e, --editor                     Start the editor instead of running the scene.
      -p, --project-manager            Start the project manager, even if a project is auto-detected.
      --debug-server <address>         Start the editor debug server (<IP>:<port>, e.g. 127.0.0.1:6007)
      -q, --quit                       Quit after the first iteration.
      -l, --language <locale>          Use a specific locale (<locale> being a two-letter code).
      --path <directory>               Path to a project (<directory> must contain a 'project.godot' file).
      -u, --upwards                    Scan folders upwards for project.godot file.
      --main-pack <file>               Path to a pack (.pck) file to load.
      --render-thread <mode>           Render thread mode ('unsafe', 'safe', 'separate').
      --remote-fs <address>            Remote filesystem (<host/IP>[:<port>] address).
      --remote-fs-password <password>  Password for remote filesystem.
      --audio-driver <driver>          Audio driver ('WASAPI', 'Dummy').
      --video-driver <driver>          Video driver ('GLES3', 'GLES2').

    Display options:
      -f, --fullscreen                 Request fullscreen mode.
      -m, --maximized                  Request a maximized window.
      -w, --windowed                   Request windowed mode.
      -t, --always-on-top              Request an always-on-top window.
      --resolution <W>x<H>             Request window resolution.
      --position <X>,<Y>               Request window position.
      --low-dpi                        Force low-DPI mode (macOS and Windows only).
      --no-window                      Run with invisible window. Useful together with --script.
      --enable-vsync-via-compositor    When vsync is enabled, vsync via the OS' window compositor (Windows only).
      --disable-vsync-via-compositor   Disable vsync via the OS' window compositor (Windows only).
      --enable-delta-smoothing         When vsync is enabled, enabled frame delta smoothing.
      --disable-delta-smoothing        Disable frame delta smoothing.
      --tablet-driver                  Tablet input driver ('wintab', 'winink') (Windows only).

    Debug options:
      -d, --debug                      Debug (local stdout debugger).
      -b, --breakpoints                Breakpoint list as source::line comma-separated pairs, no spaces (use %20 instead).
      --profiling                      Enable profiling in the script debugger.
      --remote-debug <address>         Remote debug (<host/IP>:<port> address).
      --debug-collisions               Show collision shapes when running the scene.
      --debug-navigation               Show navigation polygons when running the scene.
      --debug-shader-fallbacks         Use the fallbacks of the shaders which have one when running the scene (GL ES 3 only).
      --frame-delay <ms>               Simulate high CPU load (delay each frame by <ms> milliseconds).
      --time-scale <scale>             Force time scale (higher values are faster, 1.0 is normal speed).
      --disable-render-loop            Disable render loop so rendering only occurs when called explicitly from script.
      --disable-crash-handler          Disable crash handler when supported by the platform code.
      --fixed-fps <fps>                Force a fixed number of frames per second. This setting disables real-time synchronization.
      --print-fps                      Print the frames per second to the stdout.

    Standalone tools:
      -s, --script <script>            Run a script.
      --check-only                     Only parse for errors and quit (use with --script).
      --export <preset> <path>         Export the project using the given preset and matching release template. The preset name should match one defined in export_presets.cfg.
                                       <path> should be absolute or relative to the project directory, and include the filename for the binary (e.g. 'builds/game.exe'). The target directory should exist.
      --export-debug <preset> <path>   Same as --export, but using the debug template.
      --export-pack <preset> <path>    Same as --export, but only export the game pack for the given preset. The <path> extension determines whether it will be in PCK or ZIP format.
      --doctool [<path>]               Dump the engine API reference to the given <path> (defaults to current dir) in XML format, merging if existing files are found.
      --no-docbase                     Disallow dumping the base types (used with --doctool).
      --build-solutions                Build the scripting solutions (e.g. for C# projects). Implies --editor and requires a valid project to edit.
      --gdnative-generate-json-api     Generate JSON dump of the Godot API for GDNative bindings.
      --test <test>                    Run a unit test ('string', 'math', 'basis', 'transform', 'physics', 'physics_2d', 'render', 'oa_hash_map', 'gui', 'shaderlang', 'gd_tokenizer', 'gd_parser', 'gd_compiler', 'gd_bytecode', 'ordered_hash_map', 'astar', 'xml_parser', 'theme').



## Signals & Notifications 信号与消息
- [Using signals](https://docs.godotengine.org/en/stable/getting_started/step_by_step/signals.html)
- [Godot notifications](https://docs.godotengine.org/en/3.5/tutorials/best_practices/godot_notifications.html)
- [GDScript grammar](https://docs.godotengine.org/en/stable/development/file_formats/gdscript_grammar.html)
- [Idle and Physics Processing](https://docs.godotengine.org/en/stable/tutorials/scripting/idle_and_physics_processing.html)
- [process and physics_process in Godot](http://kehomsforge.com/tutorials/single/process-physics-process-godot)

Godot 在基础类型 **Object** 实现了消息机制，用于响应各种 engine-level 的消息，比如，引擎要对 
CanvasItem 执行绘图功能，它不会直接去调用 darw() 方法，而是通过发送一个绘图消息，然后由需要响应
这一消息的 CanvasItem 进行绘图动作，而不需要响应绘图消息的对象就不会有相应的动作，对象之间实现了解耦。

```py
_notification(NOTIFICATION_DRAW)
```

典型的场景节点，它的整个生命周期中有一系列专用消息以及相应的专用函数，大多消息常量都定义在 Node：

```py
_ready() : NOTIFICATION_READY

_enter_tree() : NOTIFICATION_ENTER_TREE

_exit_tree() : NOTIFICATION_EXIT_TREE

_process(delta) : NOTIFICATION_PROCESS

_physics_process(delta) : NOTIFICATION_PHYSICS_PROCESS

_draw() : NOTIFICATION_DRAW
```

脚本中可以定义 `_notification(what:int)` 函数响应引擎发出的所有消息，通常只需要处理一部分消息，
只需要定义指定的响应函数，如上面罗列的响应函数对应一个消息。

如果脚本在没有场景的情况下初始化自己的节点子树，那么代码应该在初始化方法 `_init()` 这里执行，其他
属性或 SceneTree 独立初始化也应在此处运行。初始化方法在 `_ready` 或 `_enter_tree` 之前触发，
但在脚本创建并初始化其属性之后触发。

如果一个节点需要触发作为另一个节点的父节点发生的行为，无论它是否作为主/活动场景的一部分发生，可以使用
PARENTED 通知。

例如，将节点的方法连接到父节点上的自定义信号，而不会失败：

```py
extend Node

# "one" is an "initialized value". These DO NOT trigger the setter.
# If someone set the value as "two" from the Inspector, this would be an
# "exported value". These DO trigger the setter.
export(String) var test = "one" setget set_test

func _init():
    # "three" is an "init assignment value".
    # These DO NOT trigger the setter, but...
    test = "three"
    # These DO trigger the setter. Note the `self` prefix.
    self.test = "three"

func set_test(value):
    test = value
    print("Setting: ", test)


var parent_cache

func connection_check():
    return parent.has_user_signal("interacted_with")

func _notification(what):
    match what:
        NOTIFICATION_PARENTED:
            parent_cache = get_parent()
            if connection_check():
                parent_cache.connect("interacted_with", self, "_on_parent_interacted_with")
        NOTIFICATION_UNPARENTED:
            if connection_check():
                parent_cache.disconnect("interacted_with", self, "_on_parent_interacted_with")

func _on_parent_interacted_with():
    print("I'm reacting to my parent's interaction!")
```

信号是节点之间进行通信的手段，和消息一样，它们不仅仅在节点对象中使用。观察者模式中，有三个要素：

- 被观察者：是消息、信号的生产方，通过调用 emit_signal() 方法发布消息；
- 观察者：是消息、信号的消费方，调用被观察者的 connect() 方法注册处理函数，然后等待要处理的信号；
- 消息、信号：是一个数据集，通过一个名称将观察者与被观察者联系起来；

基础类 **Object** 中与信号相关的方法如下：

```py
void add_user_signal(signal: String, arguments: Array = [  ]) const 

Error connect(signal: String, target: Object, method: String, binds: Array = [  ], flags: int = 0) 

void disconnect(signal: String, target: Object, method: String)

void emit_signal(signal: String, ...) vararg
```

通过 add_user_signal 方法可以添加用户自定义信号，也可以通过 GDScript 脚本中 signal 关键字
定义用户信号，GDScript grammar 规范文档显示有两条与信号有关的规则：

    signalDecl = "signal" IDENTIFIER [ signalParList ] NEWLINE ;
    signalParList = "(" [ IDENTIFIER { "," IDENTIFIER } ] ")" ;

定义一个用户信号使用 **signal** 关键字，后跟信号标识符，还可以设置信号要传递的参数列表。

创建一个结构如下的场景用于演示自定义信号：

    +-- Node2D
        +-- Label
        +-- ButtonA
        +-- ButtonB

给根节点 Node2D 绑定以下脚本：

- 脚本定义了一个 SignalReceived 信号，它带一个整数作为参数；
- 定义了一个 `_on_pressed()` 方法用来响应按键动作；
- 当按按下时触发处理，并调用 emit_signal() 方法发布自定义信号；

```py
extends Node2D

signal SignalReceived(count)

var count = 0

func _ready():
    pass

func _on_pressed(name):
    $Label.text = name + " pressed"
    count += 1
    emit_signal("SignalReceived", count)
```

给两个按钮绑定以下脚本，脚本在按钮节点加载完成时，向根节点 Node2D 注册信号响应函数：

- connect() 方法注册 `_on_feedback()` 作为自定义信号的响应函数；
- 响应函数的参数将由 Node2D 在 emit_signal() 方法中传递过来，使用空数组表示连接信号时不绑定参数；
- 响应函数中使用 SceneTreeTween 做一个延时效果后，再更新按钮的文字，显示当前动作次数累计值；

```py
extends Button

func _ready():
    $"..".connect("SignalReceived", self, "_on_feedback", [], CONNECT_PERSIST)

func _on_feedback(count:int):
    var tween = create_tween()
    tween.tween_interval(1)
    tween.tween_callback(self, "_update_log", [count])
    
func _update_log(count:int):
    self.text = "count %s" % (count)
```

需要注意一点，两个按钮都会响应 SignalReceived 信号，所以按下任意一个按钮后，Node2D 会更新 Label
内容，然后发布自定义信号后，两个按钮都会响应这个信号，并更新按钮的文字。

另外，按键动作响应函数可以使用 Godot IDE 绑定信号，先选择场景节点，再在 Node -> Signals 面板
进行信号绑定操作，包括添加参数绑定。IDE 绑定信号就是在场景文件中添加一条 connection 信息，如：

    [connection signal="pressed" from="Node" to="Node" method="_some_func"]


信号还可以配合 yield() 方法使用，以下代码片段都是在等待信号，在信号出现前会暂停函数的执行：

```py
yield(get_tree(), "idle_frame") # 下一帧恢复执行
yield(get_node("AnimationPlayer"), "finished") #  动画 AnimationPlayer 播放完毕后继续执行
yield(get_tree().create_timer(5.0), "timeout") #  暂停5秒后执行
yield(button_func(), "completed") #   函数执行完毕后执行
yield($Button0, "pressed") #  按钮点击后执行
```


## InputMap 用户输入与映射
- [User Inputs](https://docs.godotengine.org/en/3.5/tutorials/inputs/index.html)
- []()
- []()

现代的游戏输入硬件非常丰富，三大游戏平台分别是：

- PC Game 台式机游戏；
- Console Game 主机游戏，如 PS2、XBox 等；
- Web Game 网页游戏，以浏览器页面为载体；

可用的输入设备也是五花八门，有传统的键盘、Joystick、Gamepad，也有仿真赛车方向盘，甚至是触屏虚拟手柄。
对于一个支持多端开发的游戏引擎，这么多的输入设备，如果直接硬编码，会给后期带来各种适配麻烦。而在输入
与游戏应用之间设置一个映射层，可以非常好地解耦。用户操作硬件产生各种 InputEvent，通过 InputMap
设置相应的 Action，在游戏逻辑中直接使用 Action 作为用户输入，不同的 Action 由什么硬件产生就不
再需要开发者关注。只需要设置好 Action 与 InputEvent 的映射关系，用户操作按映射关系产生相应的动作。

![Input Event Flow](https://docs.godotengine.org/en/3.5/_images/input_event_flow.png)


就键盘输入而言，不同国家使用的键盘布局也不尽相同，按键物理位置分布有所差异。Godot 工程设置 Input Map
可以将以下 5 种输入事件映射到一个 Action 上：

- Key 键盘输入，与按键扫描码关联，扫描码保存在 scancode 属性；
- Physical Key 键盘输入，与按键物理位置关联，扫描码保存在 physical_scancode 属性；
- Joy Button 手柄按键输入，用户每按一下就触发一次事件；
- Joy Axis 手柄轴输入，如方向轴，只要用户保持按键状态，事件就不断接收输入数据；
- Mouse Button 鼠标按键输入，包括滚轮，但不包含移动事件；

InputEventKey 事件接收到键盘输入的数据中，包含 scancode 和 physical_scancode，物理扫描码
记录的是按键在键盘的序号，101/102-key US QWERTY 标准键盘布局常用作参照。例如，WASD 常用于游戏，
使用 Physical Key 绑定时，就是以这些按键在标准键盘布局的位置对应的按键，而 Key 方式绑定具体的按键。

同一台机器上，除键盘输入外，手柄、鼠标等设备可能同时存在多个，需要指定设备号。


单次触发的事件和连续触发的轴事件有一个明显的差别，就是数据的持续性，全局的 Input 对象可以轮询按键状态，
Events versus polling 两种方式如下：

```py
func _input(event):
    if event.is_action_pressed("jump"):
        jump()


func _physics_process(delta):
    if Input.is_action_pressed("move_right"):
        # Move as long as the key/button is pressed.
        position.x += speed * delta
```

判断一个动作是否触发，Input 提供了两个检测方法，其中一个是 **is_action_just_pressed()**，它只在事件
刚触发时返回真值，后续只有在复位后再次触发时才返回真值。


用户输入时产生的事件数据保存在 InputEvent 类型及其子类中，不同的硬件事件使用不同的事件类型包装数据：

- **InputEvent** - 这是所有输入事件类型的基类；
- **InputEventWithModifiers** - 带有修饰按键的事件，键盘、鼠标事件等，修饰键有 Shift、Alt 等；
- **InputEventKey** - 键盘输入事件；
- **InputEventMouse** - 鼠标事件基类，包含鼠标在场景内的位置 position 以及全局屏幕位置 global_position；
- **InputEventGesture** - 手势事件；
- **InputEventMouseButton** - 鼠标按键事件，包含双击状态 doubleclick 或者滚动因数 factor 等等；
- **InputEventMouseMotion** - 鼠标移动事件，包含速度 speed 以及相对距离 relative 等等；

手柄事件和鼠标类似，有两种，InputEventJoypadButton, InputEventJoypadMotion，手柄的轴输入
是一个模拟量，通常在 [-1.0, 1.0] 的范围，手柄可以有多个轴，方向十字键就包含 X/Y 轴，这些数据分别
以 axis 和 axis_value 属性表示。

另外，触屏事件 **InputEventScreenTouch** 相当鼠标单击，**InputEventScreenDrag** 相当于鼠标移动。


对于未处理的事件，可以用两个方法进行处理，默认是激活的，不需要时可以在 `_ready()` 调用后设置为禁用：

```py
func _unhandled_input(event):
  print("unhandled input", event)

func _unhandled_key_input(event):
  print("unhandled key input", event)


void set_process_unhandled_input(enable: bool)

void set_process_unhandled_key_input(enable: bool)
```

使用 InputMap 可以不考虑 Action 具体由什么设备触发，或者由多少个设备触发同一个 Action，同时
还可以实现运行时重新配置映射关系，根据用户喜好重新设置设备按键的功能，或者通过代码触发 Action：

```py
var ev = InputEventAction.new()
# Set as move_left, pressed.
ev.action = "move_left"
ev.pressed = true
# Feedback.
Input.parse_input_event(ev)
```

以下是代码片段用于管理 Action，在场景中添加四个 Button，将节点名称改为对应的 Actoin 名称，点击
按键时，就触发重新映射 Action：

- 使用 has_action() 方法检测工程是否配置了指定 Action；
- 如果没有定义指定的 Action，就调用 add_action() 添加动作定义；
- 新的 Action 要和任意的事件对象建立映射关系，使用 action_add_event() 方法；
- 如果旧的映射关系不需要保留，调用 action_erase_events() 等方法擦除；

根据项目 Input Map 配置不同，按键会有两种扫描码，保存在 InputEventKey 的两个属性中，将其转换
为可阅读的字符时，需要按对 scancode、physical_scancode 属性进行相应处理。

```py
extends Node2D

onready var up: = $PanelContainer/GridContainer/move_up
onready var down: = $PanelContainer/GridContainer/move_down
onready var left: = $PanelContainer/GridContainer/move_left
onready var right: = $PanelContainer/GridContainer/move_right

var remap:Button = null
var actions:Array = ["move_up", "move_right", "move_down", "move_left"]

func get_key(event:InputEventKey):
    var key = OS.get_scancode_string(event.get_scancode_with_modifiers())
    var code = event.scancode | event.physical_scancode
    var fallback = OS.get_scancode_string(code)
    return key if key else fallback

func get_button_name(raw_name):
    var name = remap.name.split("_")[1]
    assert(name != null)
    return name.capitalize()

func reset_button():
    if remap != null:
        var event = InputMap.get_action_list(remap.name)[0] as InputEventKey
        remap.text = "%s(%s)" % [get_button_name(remap.name), get_key(event)]
        remap = null
    
func _ready():
    up.connect("pressed", self, "_on_pressed", [up])
    down.connect("pressed", self, "_on_pressed", [down])
    left.connect("pressed", self, "_on_pressed", [left])
    right.connect("pressed", self, "_on_pressed", [right])
    init_actions()

func init_actions():
    for act in actions:
        if not InputMap.has_action(act):
            InputMap.add_action(act)
    print_all_actions()
    print_action_events("move_up")

func print_all_actions():
    print("all actions has defined: ", InputMap.get_actions())

func print_action_events(action):
    print("events for %s:" % action, InputMap.get_action_list(action))

func _on_pressed(button:Button):
    reset_button()
    remap = button
    remap.text = "%s(%s)" % [get_button_name(remap.name), "..."]
    print(button)
    # set_process_unhandled_key_input(true)

func _unhandled_key_input(event):
    if event.scancode == KEY_ESCAPE:
        reset_button()
    
    if remap != null:
        var action = remap.name
        InputMap.action_erase_events(action)
        InputMap.action_add_event(action, event)
        remap.text = "%s(%s)" % [get_button_name(remap.name), get_key(event)]
        remap = null
    # set_process_unhandled_key_input(false)
```

一般的手柄轴输入处理与键盘模拟手柄方向轴输入：

```py
extends Node2D

onready var icon = $"."

var base = 60
var sprint = 0

func _input(event):
    if event.is_action_pressed("move_sprint"):
        sprint = base * 2
    else:
        sprint = 0

func _axis_simulate(delta):
    if Input.is_action_just_pressed("move_down"):
        print("move_down")
    
    # Simualte X axis by keyboard
    if Input.is_action_pressed("move_right"):
        icon.position.x += (base + sprint) * delta
    elif Input.is_action_pressed("move_left"):
        icon.position.x -= (base + sprint) * delta
    
    # Simualte Y axis by keyboard
    if Input.is_action_pressed("move_down"):
        icon.position.y += (base + sprint) * delta
    elif Input.is_action_pressed("move_up"):
        icon.position.y -= (base  + sprint) * delta

func _process(delta):
    #Input.get_action_strength("move_up")
    var axis_y = Input.get_axis("move_up", "move_down")
    var axis_x = Input.get_axis("move_left", "move_right")
    var velocity = Vector2(axis_x * (base + sprint), axis_y * (base + sprint))
    if Input.is_action_just_released("move_sprint"):
        print("speed [%d, %d] %s" % [axis_x, axis_y, velocity])
    # This is a shorthand for writing 
    # Input.get_action_strength("positive_action") - Input.get_action_strength("negative_action").
    icon.position += velocity * delta
```



## IO & Serialization 序列化与存档读档
- [Input and Output (I/O)](https://docs.godotengine.org/en/3.6/tutorials/io/index.html)

Godot 使用 res:// 和 user:// 两个文件路径协议，前者表示工程内部资源路径，后者表示用户操作系统
资源路径。游戏存档、用户配置等就需要使用后者，可以使用 OS.get_executable_path() 提供的路径将，
保存数据到相对于主程序的目录中。

典型的系统中默认路径位置如下：

|     Type     |                              Location                             |
|--------------|-------------------------------------------------------------------|
| Default      | Windows: %APPDATA%\Godot\app_userdata\[project]                   |
|              | macOS: ~/Library/Application Support/Godot/app_userdata/[project] |
|              | Linux: ~/.local/share/godot/app_userdata/[project]                |
|--------------|-------------------------------------------------------------------|
| Custom dir   | Windows: %APPDATA%\[project]                                      |
|              | macOS: ~/Library/Application Support/[project]                    |
|              | Linux: ~/.local/share/[project]                                   |
|--------------|-------------------------------------------------------------------|
| Custom       | Windows: %APPDATA%\[custom_user_dir_name]                         |
| dir and name | macOS: ~/Library/Application Support/[custom_user_dir_name]       |
|              | Linux: ~/.local/share/[custom_user_dir_name]                      |


编辑器使用的数据路径：

|       Type      |                   Location                  |
|-----------------|---------------------------------------------|
| Editor data     | Windows: %APPDATA%\Godot\                   |
|                 | macOS: ~/Library/Application Support/Godot/ |
|                 | Linux: ~/.local/share/godot/                |
|-----------------|---------------------------------------------|
| Editor settings | Windows: %APPDATA%\Godot\                   |
|                 | macOS: ~/Library/Application Support/Godot/ |
|                 | Linux: ~/.config/godot/                     |
|-----------------|---------------------------------------------|
| Cache           | Windows: %TEMP%\Godot\                      |
|                 | macOS: ~/Library/Caches/Godot/              |
|                 | Linux: ~/.cache/godot/                      |

存档首先要考虑什么数据需要保存，Godot 提供了分组功能，可以将需要持久化的节点归类。比如，Persist
分组用于表示需要保存数据的节点分类。在 Godot Node -> Group 面板中，添加这个分类，然后再打开
Group Editor 编辑分组，将需要持久化的节点添加到此分组中，再配置以下代码版本进行处理：

```py
var save_nodes = get_tree().get_nodes_in_group("Persist")
for i in save_nodes:
    # Now, we can call our save function on each node.
```

分组管理有两种方式：

- During design, by using the Node dock in the editor.
- During execution, by calling **Node.add_to_group()** **Node.remove_from_group()**.


分组功能还可以用于批量操作，SceneTree 提供相应的方法：

```py
Variant call_group(group: String, method: String, ...) vararg

void notify_group(group: String, notification: int)
```

GDScript 提供了 **to_json()** 和  **parse_json()** 两个方法来处理 JSON 数据文件，用于游戏
数据持久化处理非常方便。所谓序列化 Serialization 即将内存中的数据按一定的格式整理后保存起来，后续
可以逆向复原来数据，使游戏的运行状态与存档时一样。

持久化数据处理步骤如下：

- 设计一个 Dictionary 字典对象作保存必要的数据，例如父节点路径、自身类型数据等；
- 为需要持久化的节点定义 save() 方法，返回一个字典数据对象；
- 创建一个 save_game() 方法，按持久化分组中的节点，调用 save() 方法获取数据；
- 数据使用 **to_json()** 格式化然通过 File 对象保存到文件中，为了简化可以逐行保存；

逆向处理恢复存档步骤如：

- 先读取文件，确保数据文件正常、可用；
- 为了简化，先处理掉被标记为持久化分组的节点；
- 逐行读入数据，**parse_json()** 还原出数据字典；
- 根据数据创建新节点，将各种属性数据恢复到新节点，再添加到节点树对应的父节点下；

更高效的持久化使用二进制，File 提供了 **get_var** 和 **store_var** 方法来方块字变体类型数据。
还有数据打包工具 PacketPeer，这种方式不在二进制场景、资源文件中使用。



## UI 用户界面
- [User Interface(UI)](https://docs.godotengine.org/en/3.5/tutorials/ui/index.html)
- [BBCode in RichTextLabel](https://docs.godotengine.org/en/3.5/tutorials/ui/bbcode_in_richtextlabel.html)
- [Using Containers](https://docs.godotengine.org/en/3.5/tutorials/ui/gui_containers.html)
- [Introduction to GUI skinning](https://docs.godotengine.org/en/3.5/tutorials/ui/gui_skinning.html)
- [Bitmap Font Generator](https://www.angelcode.com/products/bmfont/)

官方提供了一个 Control Gallery 示范工程，用于演示各种控件、布局容器的使用，2D 控件支持主题设置，
定制控件外观非常方便。2D 对象使用 Anchors 模型进行图形的比例、多分辨率处理：

![Size and Anchors](https://docs.godotengine.org/en/3.5/_images/anchors.png)

现代的屏幕尺寸多变，如何解决在不同尺寸下图像布局保持不变？有几种方法可以处理这个问题，屏幕分辨率改变，
控件需要重新定位。有些人需要跟随屏幕底部，其他人则需要跟随屏幕顶部，或者可能是左右边距。

通过编辑控件的 Margin 边距属性来设置，每个控件有四个边距设置：左、右、下和上。默认情况下，它们都表示
相对于父控件左上角的距离，以像素为单位，如果没有父控件就相对于视口。

锚点 Anchors 也是四个值，是百分比，并且 Left 小于 Right，Top 小于 Bottom，当值全部为 0 表示
和父节点的左上角为锚定位，全设置为 1 表示锚定父节点的右下角，不会影响节点尺寸。

当 Left/Top 为 0，Bottom/Right 为 1，则表示锚定整个父节点空间。假设父节点尺寸 100x100，通过
Margin(0, 0, 100, 100) 设置，子节点同样设置为 100x100 却会有加倍的尺寸。因为，Margin 四个值
对应的是父节点的整个区域，边距 Right 锚定父节点的右侧，边距 Left 锚定父节点的左侧，依此解析，子
节点就会伸出父节点区域下侧、右侧各 100 像素的空间，边长加倍。

属性面板上只能设置 Anchors 的值为 [0, 1] 区间，通过 Layout Presets 可以修改，点击船锚图标
可以激活拖动节点时直接修改锚点位置。


控件可以选择使用主题，也可以在主题覆盖设置中进行修正。主题主要保存 5 类数据：

- Colors 颜色，主要用于背景、字体颜色，以及 modulation 用于调制控件颜色。
- Constants 整数常量，用于控件的数值或 boolean flags 属性，如 BoxContainer 的间隔。
- Fonts 字体，Godot 默认字体不支持中文，显示中文需要导入中文字体。
- Icon 图标，纹理图像，用作按钮控件的图标等等；
- Styleboxs 样式盒，包含一组配置项用于控件平面的绘图，不限用于 Panel 控件；

Godot 支持 BitmapFont, DynamicFont 两类字体，分别对应字体纹理和矢量字体，矢量字体渲染使用通过
FreeType library 实现，支持常用格式，包括：

- TrueType (.ttf)
- OpenType (.otf)
- Web Open Font Format 1 (.woff)
- and Web Open Font Format 2 (.woff2)

BitmapFont 则是按 BMFont 格式渲染字体纹理，位图字体也就是用图像保存文字图形，通常将文字一个接一个
紧密排列在一起，渲染文字时就按对应坐标输出其中的图案。使用 Bitmap Font Generator 工具可以很方便
地从现有矢量字体文件中导出位图字体，使用 Edit -> Select characters from text file 可以选择
文件内容中用到的字符，文件编码支持 UTF16，使用 UTF8 似乎有兼容问题。导出图片时配置为 32-bit 颜色
深度以保证 Alpha 通道生效，如果使用 8-bit 尝试可能导致字体符号透明区不能正确处理。


Godot 目前提供的四种样式盒可以给控件设置不同的外观属性：

- **StyleBoxEmpty** 空盒，只简单继承 StyleBox 提供的边距属性；
- **StyleBoxLine** 除了边距属性外，给控件增加一条线，可以设置线宽、颜色、位置等等；
- **StyleBoxFlat** 除了边距属性外，增加了背景填充、Skew 切变、边框、圆角、阴影等等；
- **StyleBoxTexture** 纹理样式盒，可以给控制设置纹理和 Normal Map，以及边距扩展等等；

Godot 给纹理样式图片提供了 9 宫格功能，TextureRegion，即通过一个矩形区将纹理按四边分割为 9 块，
除了四个边角的部分不缩放，居中的这块，和上下左右 4 块可以自由绽放以匹配不同大小的内容。注意，6 个
控制点与 4 条线之间的内容作为周边宫格显示的图像。可将项目设置 Ninepatch Mode 默认的 Scaling 
配置改为 Fixed 模式，以免边框部分被缩放导致变形。

Godot 4.x 版本中，Ninepatch Mode 配置已经移除，九宫格面板也改为 Sub-Regon -> Edit Region。



通常，主题数据以控件名进行分类，Manager Theme Item 主题条目管理器中可查看、编辑，或创建类型变体。
例如，一个 font_color 颜色，可能有 Label 类型，也可能有 RichTextLabel 类型，影响不同的控件。
主题是一种资源，创建时从 FileSystem 面板的右键菜单中选择 New Resource ... 并且选择 Theme 类型。
创建好的主题可以直接从 FileSystem 中拖放到控件属性面板中的 Theme 属性上，或拖放到场景树的节点上。
双击打开主题资源，在默认的主题预览面板中可以看到各种控件的外观，或者点击 Add Preview 添加要预览
的场景。点击主题编辑器右上角的 Manage Items... 打开主题数据管理器，将需要的使用的数据导入，或者
使用吸管在 Default Preview 视图中吸取展示的控件。

有时控件需要与主题定义的外观有所差异，就可以使用主题数据类型变体，Theme type variations。
每个控件节点都有主题属性重写 Theme Overrides，允许重新定义每个 UI 元素的样式。但在控件数量很多
的情况下，使用主题类型变体，则是更灵活的方法。变体需要扩展了另一种基本类型，替换基本类型的某些设置，
但又保留其他方面不变，变体还可以定义基础样式尚未定义的特性。例如，定义一个 GrayButton 变体以覆盖
基本的 Button 常规样式，并添加 Button 从未定义的 font_color。

例如，为 Label 创建一个主题变体，操作步骤如下：

- 双击主题文件打开主题编辑器；
- 点击面板的 Type 列表右侧的 + 号以打开 Add Item Type，输入一个新名称，如 MyLabel 作为类型变体；
- 点击标签栏右侧的工具图标，在 Base Type 中填写 Label，或者点击右侧 + 号挑选一个基础类型；

通过以上三个步骤就创建了新的主题类型变体，控件使用变体只需在 Theme Type Variation 属性中指定。
一个新创建的变体通常没有新数据，打开 Show Default 开关，可以显示已经继承的数据。


2D 界面元素可以使用布局容器进行排版，Godot 提供以下布局容器：

- AspectRatioContainer 图形比例保持布局；
- BoxContainer > HBoxContainer and VBoxContainer 用于纵横排列布局；
- CenterContainer 居中布局；
- EditorProperty 属性容器，用于给属性探测器 EditorInspector 中添加内容；
- FlowContainer > HFlowContainer and VFlowContainer 流式布局，节点前后紧密相连。
- GraphNode 包含多个输入、输出插槽，用于连接其它的 GraphNode，Godot 节点编程中有使用；
- GridContainer 多行、多列布局；
- MarginContainer 可调整边距；
- PanelContainer 面板布局；
- ScrollContainer 内容可滚动布局；
- SplitContainer > HSplitContainer and VSplitContainer 可活动的纵横方向分割；
- TabContainer 标签栏切换布局；
- ViewportContainer 特殊容器，只包含一个 Viewport 子节点，以显示其图形；

使用容器时，容器会按子节点的相关属性设置来处理进位置、大小的调整，子节点可以通过最小尺寸 Min Size，
或者 Size Flags 启用不同的行为模式来控制子节点的大小、位置，或者直接使用 Layout Presets 提供
的预配置来快速设置这些属性：

- Fill 充满整个容器；
- Expand 尽量扩展以占满容器；
- Shrink Center 紧凑排列到容器中央；
- Shrink End 紧凑排列到容器末尾；


Godot 的基础类 **Object** 提供了以下两个方法来读写子对象的属性，在属性探测器面板中，可以获取各种
属性的路径，使用鼠标右键菜单 Copy Property Path (Ctrl+Shift+C) 复制属性路径供以下方法使用。
例如，通过脚本修改 Label 控件的字体颜色、阴影，覆盖 RichTextLabel 控件的主题设置，属性面板位置
Theme Overrides -> Colors -> Default Color 和 Selection Color：

```py
void set(property: String, value: Variant)
Variant get(property: String) const

$RichTextLabel.set("custom_colors/default_color", Color.red)
$RichTextLabel.set("custom_colors/selection_color", Color.red)

$Label.set("custom_colors/font_color", Color.whitesmoke)
$Label.set("custom_colors/font_color_shadow", Color.darkorange)
$Label.set("custom_constants/shadow_offset_x", 2)
$Label.set("custom_constants/shadow_offset_y", 2)
```


往场景中添加一个 RichTextLabel 节点，并附加以下脚本可以实现 BBCode 内容显示，并且支持超链接：

```py
extends RichTextLabel

onready var rich = $"."

# Called when the node enters the scene tree for the first time.
func _ready():
    bbcode_enabled = true
    bbcode_text = """
    Bitmap Font Generator
    字体示范 
    Example: The word [url=https://www.bbcode.org]BBCode[/url] is clickable.
    [url=https://godotengine.org/][img]res://icon.png[/img][/url]
    The word BBCode is clickable, use meta_clicked signal to handle it.
    """
    connect("meta_clicked", self, "_on_meta_clicked", [], CONNECT_ONESHOT)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
    pass

func _on_dragged(offset):
    rich.bbcode_text += ":%d " % offset

func _on_meta_clicked(meta):
    print(meta)
    OS.shell_open(meta)
```

注意，在 Godot 4.x 中，如果编写图片连接时有缩进，行前空格或 TAB 可能会导致无法触发点击事件。




## Godot 2D Animation 平面动画
- [Animation Retargeting in Godot 4.0](https://godotengine.org/article/animation-retargeting-in-godot-4-0)
- [Movie Maker mode arrives in Godot 4.0](https://godotengine.org/article/movie-maker-mode-arrives-in-godot-4)
- [Creating movies](https://docs.godotengine.org/en/latest/tutorials/animation/creating_movies.html)
- [SceneTreeTween](https://docs.godotengine.org/en/stable/classes/class_scenetreetween.html)
- [Tween](https://docs.godotengine.org/en/stable/classes/class_tween.html)
- [Canvas layers](https://docs.godotengine.org/en/3.6/tutorials/2d/canvas_layers.html)
- [2D Sprite animation](https://docs.godotengine.org/en/3.5/tutorials/2d/2d_sprite_animation.html)
- [Abstract Platformer](https://kenney.nl/assets/abstract-platformer)
- [How to make your bullets look awesome in Godot - Advanced Trails](https://www.bilibili.com/video/BV1iA411A7gz/)
- [Godot Advanced Trails Examples](https://github.com/RPicster/Godot-Advanced-Trails-Examples)

官方文档推荐了一个动画资源 Abstract Platformer，这组资源可以用来做 TileMap、AnimatedSprite
之类的动画演示。或者，使用官文展示的一组青蛙 Sprites：

![Frog Spritesheet](https://docs.godotengine.org/en/3.5/_images/2d_animation_frog_spritesheet.png)

等距视角
所谓斜角地图即 Isometric, 确切的名称应该是<等距视角>, 和透视相对, 指视野内的物体, 无论远近都用同一大小来表现 (而透视却是远小近大）.


缓动曲线是用数学公式计算一个时间段内某一个变量的平滑变化产生动画的技术，例如，在 1s 时间内将节点
的 x 位置坐标从 0 慢慢增加到 100，这种平滑的变化有不同的公式产生不同的动画效果，曲线参考图如下：

！[Tween easing and transition types cheatsheet](https://raw.githubusercontent.com/godotengine/godot-docs/master/img/tween_cheatsheet.png)

使用 SceneTreeTween 和旧式的 Tween 对象创建缓动曲线动画变换效果，这是最基本的 2D 动画技术。

2D 动画涉及到的节点类型除了缓动程序，还包括但不仅限如下这些：

|     Objects      |         Base Type          |
|------------------|----------------------------|
| SpriteFrames     | Resource                   |
| AnimatedTexture  | Texture < Resource         |
| Sprite           | Node2D < CanvasItem < Node |
| AnimatedSprite   | Node2D < CanvasItem < Node |
| AnimatedSprite3D | Spatial < Node             |
| Animation        | Resource                   |
| AnimationPlayer  | Node                       |
| AnimationTree    | Node                       |

前两个是资源类型，用于包装动画图像资源。

SpriteFrames 包装动画帧图像资源，可以包含多个动画配置。

AnimatedTexture 是动态纹理资源，本身就具有动画播放能力。作为一个资源类型，类似使用图片纹理对象。
但可以设置多个帧，而不是一张静态图片，然后可以提供给 AnimatedSprite、TileMap 等需要图像资源的
节点使用。用户可以对帧率 FPS、每帧延时，或者暂停、单次播放 Oneshot 等进行设置。Godot 引擎架构中
负责视觉处理的 VisualServer 以动态纹理规定的速率按顺序绘制区域。好消息是，这不涉及引擎的额外逻辑。
坏消息是，用户几乎没有控制权。

例如，AnimatedTexture + AnimatedSprite 组合，这就有了双重动画，一边 AnimatedTexture 按自己
的动画节凑播放各帧图像，每一帧的图像输出又被 AnimatedSprite 重新制作的动画进行播放。也就是前者负责
变换图片，后者负责制作动画，二者组合得到最终效果。用在大量的自动动画背景中，单个批处理绘制调用就可完成渲染。


AnimatedSprite + SpriteFrames 组合制作图片帧动画，可以创建多个动画。对比单独使用 Sprite 节点，
它加载一张 Spritesheet 图像，则只能创建一个动画，但如果用好 **AnimationPlayer** 来控制其属性，
也可以创建多个动画资源。AnimatedSprite3D 则是在 3D 场景下创建的一个能展示帧动画的 2D 平面。

动画资源 Animation 保存的是动画相关数据，在 AnimationPlayer 编辑界面中以轨道的形式展示，也可以
通过编程方式设置动画轨道及关键帧数据：

```py
# This creates an animation that makes the node "Enemy" move to the right by
# 100 pixels in 0.5 seconds.
var animation = Animation.new()
var track_index = animation.add_track(Animation.TYPE_VALUE)
animation.track_set_path(track_index, "Enemy:position:x")
animation.track_insert_key(track_index, 0.0, 0)
animation.track_insert_key(track_index, 0.5, 100)
```

AnimationPlayer 节点作为关键帧动画，通过记录场景内其它节点的属性变化来生产动画，可以创建多个动画，
以对象属性轨道的方式编辑，它还可以用于各种动画 2D 动画：

- Cut-Out animations: 剪影动画，如皮影戏的效果；
- 2D Mesh animations: 绑定骨骼控制图像的变形；


视差，即远慢近快的视觉现象，是常被 2D 采用的一种动画技术，游戏、动画片中非常多应用，使用视差背景图节点
ParallaxBackground，就可以实现，继承自 CanvasLayer。将视差图层节点 ParallaxLayer 放置到视差
背影节点内，设置视差图层的 Motion 属性以确定视差效果。

最主要的 Scale 参数，决定了视差图层与相机运动的速度比例，0 表示固定不动，类似 CanvasLayer 图层
下的节点一样固定位置。设置 [0, 1] 表示比相机运动速度慢，通常就是远景的设置，大于 1 就是近景的设置。

场景中总是存在 Viewport，至少场景树的顶级有一个不可见的 Viewport，它设置了 canvas_transform，
允许对它所包含的 CanvasItem 施加一个自定义的 Transform2D 变换. Camera2D 的主要工作方式就是
改变这个 Transform2D 变换实现画布内容的变换控制。

![CanvasLayers](https://docs.godotengine.org/en/3.6/_images/canvaslayers.png)

在 3D 场景中也可以使用 **CanvasLayer** 来显示 2D 节点内容，避免受到画布因相机视角变换的影响，
可以实现的功能不仅以下功能：

- Parallax Backgrounds 视差效果。
- UI: 游戏中的用户界面，或者 head-up display (HUD) ，它们应该固定在屏幕中，不随游戏世界变换。
- Transitions: 视觉变换，如渐变、混合效果，这些内容也固定位置。

类似的，CanvasItem 提供了一个方法，**set_as_toplevel()** 可以将 2D 节点添加顶级状态，以避免
受到父级的变换影响，同时绘图时会覆盖在其它未标记为 Top Level 的基点。

场景中可以使用一个 **WorldEnvironment** 节点，同时只能有一个，包括继承的场景在内。然后为环境节点
创建一个 **Environment** 资源，用于配置环境，如设置背景属性：

- Background Mode 设置为 Canvas 模式；
- Canvas Max Layer 设置一个序数，层序小于这个值的 CanvasLayer 就会当作背景层；

Layer 序号越大，绘图顺序越靠后，就可以覆盖其它 Layer 更小的节点。2D 场景默认图层绘画顺序为 0，如果
CanvasLayer 序号设置为更小的值，如 -1 则会先行绘制，作为背景。CanvasLayers 拥有独立的绘图顺序，
由 Layer 序号决定，它们独立于场景树的节点顺序，可以在需要时调整。


场景中相机运动可以使用以下代码片段，使用鼠标移动来决定相机位置：

```py
exetends Node2D

onready var camera_2d = $Camera2D

func _input(event):
    if event is InputEventMouseMotion:
        #camera_2d.anchor_mode = Camera2D.ANCHOR_MODE_FIXED_TOP_LEFT
        camera_2d.position = (event.position - get_viewport().size/2) / 2
```


动画的基本原理就是连续的相似图像在人眼的视觉暂留产生的运动感觉，2D Sprite animation 就是将一组
相似的但又有关键区别的图像按指定时间间隔播放的动画效果，在场景中使用 **AnimatedSprite** 节点，
在属性探测器中设置节点的 Frames 属性，它关联一个 **SpriteFrames** 动画帧资源，包含多个动画配置，
可供 AnimatedSprite 或 AnimatedSprite3D 播放。


打开动画帧资源，在动画帧编辑面板中有一个默认的 default 动画，根据需要创建更多的动画，如行走、跳动
等等，然后为每个动画导入相关图片，可以是单张单个动作的图像，或者一张包含所有动作的 Sprites 图像，
即 Sprites Sheet 图像，要求各个动作图像大小相等，导入后需要通过画网格来定位。

然后，设置帧动画的播放速度 Speed，默认为 5 FPS，即每秒 5 帧，还可以勾选 Loop 表示循环播放不终止。
AnimatedSprite 播放完每一个动画时，会发布一个 **animation_finished** 信号，可以利用它来做
动画转换以完成动画组合。

```py
onready var animated_sprite = $ColorRect/AnimatedSprite


func _on_AnimatedSprite_animation_finished():
    print("AnimatedSprite finished ", animated_sprite.animation)


func _on_ColorRect_gui_input(event):
    if event is InputEventMouseButton and event.is_pressed():
        var ans = animated_sprite.frames.get_animation_names()
        var idx = ans.find(animated_sprite.animation)
        idx = (idx + 1) % ans.size()
        animated_sprite.play(ans[idx])
```

以下是定制 Sprite 实现的 MyAnimatedSprite 动画节点：

```py
extends Sprite
class_name MyAnimatedSprite

signal animation_finished

var timer:Timer = Timer.new()

export(int, 0, 120, 1) var FPS = 4
export(bool) var pause = false setget set_pause
export(bool) var loop = false
export(bool) var TextureMovtion = true setget set_TextureMovtion

func _enter_tree():
    timer.connect("timeout", self, "_on_Timer_timeout")
    add_child(timer)

func _ready():
    connect("animation_finished", self, "_on_animation_finished")
    set_animation()
    
func _input(event):
    if event.is_pressed() and event is InputEventMouseButton:
        var mouse = event as InputEventMouseButton
        var distance = position.distance_to(mouse.position)
        if distance > 32:
            return
        if mouse.button_index == BUTTON_LEFT:
            set_TextureMovtion(!TextureMovtion)
        else:
            set_pause(!pause)
    
    
func _on_Timer_timeout():
    var frames = hframes * vframes
    frame = (frame + 1) % frames 
    if frame == frames - 1:
        yield(get_tree(), "idle_frame") # wait next idle frame
        emit_signal("animation_finished")

func _on_animation_finished():
    if not loop:
        timer.stop()
    

func set_pause(state):
    pause = state
    set_animation()

func set_animation():
    if not pause and texture:
        timer.start(1.0 / FPS)
    else:
        timer.stop()

func set_TextureMovtion(state):
    TextureMovtion = state
    var at = texture as AnimatedTexture
    at.pause = !state
    property_list_changed_notify()
```


使用 **Sprite** 和 **AnimationPlayer** 搭配也可以实现 AnimatedSprite 一样的帧动画，只不过
AnimationPlayr 是记录节点的属性作为关键帧，一个动画包含多个关键帧。首先，给 Sprite 节点的纹理属性
指定一张 Spritesheet 图像，然后通过 Hframes 和 Vframes 两个属性将图像拆分作多个帧。然后，打开
底部 Animation 动画播放节点设置面板，创建一个动画，为 Sprite 节点的 Frames 属性添加一条轨道，
并在轨道中添加关键帧。可以通过右键菜单，也可以通过 Sprite 的属性面板的 Key 图标设置。

注意，AnimationPlayer 中的动画轨道是和属性的路径字符串关联的，如果对应的节点位置有变量，轨道中的
属性路径可能也需要更新，否则可能因找不到节点而导致原有的动画设置不能生效。

```py
extends Sprite

onready var player:AnimationPlayer = $AnimationPlayer
onready var timer = $Timer
onready var sprite = $"."

enum Direction { Left = -1, Right = 1 }
export(Direction) var direction = Direction.Left

func _on_Timer_timeout():
    player.current_animation = "fog jump"
    #player.play("fog jump")


func _on_AnimationPlayer_animation_started(anim_name):
    var tween = get_tree().create_tween().set_trans(Tween.TRANS_QUART)
    var up = Vector2(direction * 50.0, -30.0)
    var dn = Vector2(direction * 40.0, 30.0)
    tween.tween_property(sprite, "position", up, 0.3).as_relative().set_ease(Tween.EASE_OUT)
    tween.tween_property(sprite, "position", dn, 0.15).as_relative().set_ease(Tween.EASE_IN)


func _on_AnimationPlayer_animation_finished(anim_name):
    var vs = get_viewport().size
    if sprite.position.x > vs.x:
        sprite.scale.x = direction
        direction *= -1
    elif sprite.position.x < 0:
        sprite.scale.x = direction
        direction *= -1
```

2D/3D 动画最重要的一个节点是 **AnimationTree**，旧的 AnimationTreePlayer 由于太复杂已经丢弃。
动画树实现的功能是动画混合技术 Animation Blending，作为独立一小节讲解。


## Animation Blending 动画混合
- [Using AnimationTree](https://docs.godotengine.org/en/3.5/tutorials/animation/animation_tree.html)
- [Adobe Mixamo](https://www.mixamo.com)
- [Third Person Shooter demo](https://github.com/godotengine/tps-demo)
- [Retargeting 3D Skeletons](https://docs.godotengine.org/en/latest/tutorials/assets_pipeline/retargeting_3d_skeletons.html)
- [Animation Retargeting in Godot 4.0](https://godotengine.org/article/animation-retargeting-in-godot-4-0)

官方文档提供的第三人称射击游戏示范项目 Third Person Shooter demo 是学习动画混合的好例子。

Adobe Mixamo 是学习 3D 动画的一个资源网站，它用许多现成的模型和动画预设，可以实现自动化的骨骼
绑定及动画制作，只要上传自己的角色模型稍作校正就可以完成动画制作，现有的动画素材也是很好的学习资源。

动画混合是一种重要的计算机动画技术，基本的动画技术在使用上存在难以使用的的问题。例如，游戏中玩家角色
同时可以不同的动作，也就是不同的动画融合在一起。比如，简单的动画可能有步行、跳跃、攻击行为等，在简单
播放动画的技术中，它们都是独立的，一个播放完就进行下一个动画。但是，在游戏交互中要求远不止如此，可能
玩家在做跳跃动作时还突然想做出攻击动作，那么传统的动画就无法很好适应这种中间转播其它动画的操作。

游戏、动画工业对动画有大量的需求，动画制作完成后还有复用的需要，即将同一套动画应用于骨骼结构相似的
模型上。这里就存在动画重定向的问题，Animation Retargeting。基于骨骼绑定制作的动画，有一个特点，
就是模型不同的部分绑定不同的骨骼，通过调整骨骼姿态使用模型产生相应的姿态，记录到关键帧后就得到动画。
所以，动画重定向就需要将动画来源的骨骼与目标模型的骨骼做校对，以使用原动画的数据适用于新的模型上。

同样，2D 动画也有类似的动画复用问题，在 Godot 中使用 AnimationPlayer 节点制作的关键帧动画，其
目标节点是通过节点路径表示的，就是一个字符串，通过改变这个节点路径，就可以将动画应用于不同的节点上。

Godot 动画节点中最重要的一个节点是 **AnimationTree**，旧版本的 AnimationTreePlayer 由于太
复杂已经丢弃。动画树实现的功能是动画混合技术 Animation Blending，它的功能涉及内容较多，也是比较
复杂的一个节点。一般它和 AnimationPlayer 搭配使用，用于管理不同动画的切换播放。

AnimationTree 动画混合使用到三大类型节点：

- **Animation** 动画资源类型，动画树引用通过 anim_player 属性连接到 AnimationTree 上的动画。
- **AnimationRootNode** 根节点用来混合子节点，最常用的是 Blend Tree 混合树。
- **Blend Nodes** 混合节点用于 Blend Tree 混合树，多个输入端口接入的混合节点，最终混合成单个图。

动画树需要指定一个动画播放节点的路径以调用其动画配置，还需要设置一个顶层资源动画节点，以下 5 个继承自
AnimationRootNode < AnimationNode 的类型对应了 5 种不同的动画混合方法：

- **AnimationNodeAnimation**: 动画节点，只是简单地从已经连接的动画中选择要播放的动画。
- **AnimationNodeBlendTree**: 混合树可以混合不同的根节点，常常用它作为动画树的根节点使用。
- **AnimationNodeStateMachine**: 状态机可以包含多个根节点，它们都是状态，使用转换方法切换状态。
- **AnimationNodeBlendSpace2D**: 2D 混合空间，混合点可以在二维平面运动，可以混合多个动画。
- **AnimationNodeBlendSpace1D**: 1D 混合空间，简化版本，混合点只能一维方向变化，混合两个动画。

根运动技术 Root Motion 是指，即因角色动作导致需要移到模型位置，如果拼接两个动画，就需要处理前后
两个动画中的模型位置，使用前后连接流畅。假设，现成的模型动画基于原点定位，当一个使用 Root Motion 的动画播放到结束时，模型已经偏移原点。所以，当下一个动画跟着播放时，又瞬时回到了原点，这里就有位移差
要处理好才能将两个动画无缝拼接起来。3D 动画技术中，模型网格的骨架用于为角色提供推动力，动画师常用的
技术是使用根骨骼为其余骨骼提供运动。这允许角色的步行可以稳贴地板，产生真实的角色动画，而不会出现摩擦
地板的脚掌拖动现象。

对于一个动画而言，只是角色运动中的一个周期而已，当动画播放完一个周期，它又需要让图像恢复原位，再从头
来过，这样周而复始地播放。在实际使用中，动画循环播放应该产生连续的位移，而不是来回跳动。


Godot 中播放动画时，亦可以使用根骨骼作为根运动轨迹 Root Motion Track，这样将在视觉上取消骨骼变换，
动画将保持位置不变。根运动轨迹可以通过 get_root_motion_track() 获取再传递给 KinematicBody 的
**move_and_slide()** 方法以控制角色运动。

RootMotionView 是一个工具节点，放置在场景中当作地板，为角色动画提供参照，在游戏中时默认是禁用的。

使用官文展示的一组青蛙 Sprites 为例，它可以制作为一个跳跃动画，这个跳跃动作会产生位移：

![Frog Spritesheet](https://docs.godotengine.org/en/3.5/_images/2d_animation_frog_spritesheet.png)

假定制作了 jump_left 和 jump_right 两个跳跃动画，因为图像的青蛙是向左的，如果在 Sprte 显示
图像，可以通过设置 scale.x 为 -1 进行左右反转，从而得到向右的图像。使用 AnimationPlayer 制作
动画时，是可以知道角色移动距离的，那么在动画播放完成时，通过接收 animation_finished 信号，并在
信号触发时主动移动相应的距离，然后再开始下一轮的动画播放，这样移动就可以衔接起来。注意 Loop 方式开启
AnimationPlayer 就不会发出 animation_finished 信号。


以最简单的 1D 混合空间为例，给 AnimationTree 添加上 **AnimationNodeBlendSpace1D** 根节点，
打开 Bottom Panel 中的动画树面板，可以看到混合编辑器中只是一维的时间坐标轴，可以往不同的位置添加
动画节点，或者嵌套地添加其它 Animation Root 根节点用来混合更多的子节点。

直接通过 Create Points -> Add Animation 将两个青蛙跳跃动画添加到轴线上，然后设置 Blending 
Position，在两个动画定位点之间移动，即混合两个动画的数据。在正中中间时，因为动画使用的 scale.x
分别为 1 和反转时的 -1，所以结果会将青蛙的图形的 scale.x 混合为 0，使用得图像不可见。将混合点
移动到任意一侧，则结果就是完全输出最靠近的这个动画，另一个动画对结果完全没有影响。


同样使用青蛙的跳跃动画来演示状态机的使用，给动画树添加 StateMachine 根节点，然后在底面板的动画树
编辑器中，点击状态机管理界面中的 + 号增加动画节点，分别添加 jump_left、jump_right，还有动画树
默认提供的 RESET，即休息节点，没有动画的静止状态。然后，点击穿线箭头图标，看起来像飞机，给三个状态
添加连接线，使用 RESET 与其它两个动画实现双向连接，而两个跳跃动画相互不连接。

状态机中每个节点都是一个状态，对应的一个动画，点击状态节点上的播放图标就可以切换到这个状态。例如，
当前处于 jump_left 状态中，播放的就是向左跳跃动画。然后，再点击 jump_right 状态的播放图标，如果
在 Play Mode 设置为遍历模式 Travel，表示状态不会直接从 jump_left 切换到 jump_rigth 状态，
而是按连接线，先切换到 RESET 状态，再切换到 jump_right 动画状态。

A* 算法实现的遍历功能是 Godot 的 StateMachine 实现中的一个很好的特性，可以指示从当前状态转到
另一个状态图，同时访问所有中间状态。要使用状态遍历功能，首先，应该从动画树节点检索出状态机回放对象，
AnimationNodeStateMachinePlayback。注意，它是导出的属性，属性路径可以在动画树的属性面板中找
Parameters -> Playback，拖动属性到脚本编辑器中即可，然后使用 Object **get()** 方法获取。

```py
var state_machine = $AnimationTree.get("parameters/playback")
state_machine.travel("jump_left")
state_machine.start("jump_right")
```

对于已对配置好的动画树根节点，可以在动画树的属性探测器面板中点击 Tree Root 属性右侧的下拉菜单保存
到动画树资源文件中，以便后续再使用。Blend Tree 编辑器也可以保存节点资源配置，操作麻烦点：

- 点击 Blend Tree 属性探测器面板上下拉菜单，竖直的三个点图标，执行 Make Resource Built-in；
- 点击磁盘图标弹出菜单的 Save 执行关联式保存，这种方式会将节点关联到一个资源文件，保存项目时也会写入；
- 或者，直接点击 Save As... 另存资源文件，这种方式不会执行关联操作，保存项目时也不会主动写入这个文件；
- 对于已经关联保存的节点资源文件，可以再次执行 Make Resource Built-in 将资源数据内置，不再使用文件；

为了方便复用已经配置好的动画节点资源，根据需要选择这两种资源保存方式，关联式保存可以在修改节点后自动在
保存项目时更新资源文件，非关联式保存则可以避免这种自动更新，对于不需要或很少更新资源，就不需要关联。


**Blend Tree** 混合树可以混合不同的根节点，它总是有一个默认输出节点，AnimationNodeOutput，
可以将各种混合节点连接到输出节点，也可添加不同类型的混合节点，以混合多个动画：

- **AnimationNodeAdd2** 2 端口叠加混合，Add Amount 指定叠加比例，0.0 表示不叠加 add 端口。
- **AnimationNodeAdd3** 3 端口叠加混合，Add Amount 指定叠加比例，0.0 表示不叠加 ±add 端口。
- **AnimationNodeBlend2** 2 端口混合，Blend Amount 指定混合比例，0.0 表示不混合 bledn 端口。
- **AnimationNodeBlend3** 3 端口混合，Blend Amount 指定混合比例，0.0 表示不混合 ±bledn 端口。
- **AnimationNodeOneShot** 单次触发，Active 打开时，表示触发 shot 输入端口的动画。
- **AnimationNodeTimeScale** 时间缩放，对输入端的动画进行速度缩放，0 表示动画停止。
- **AnimationNodeTimeSeek** 动画时间定位，用于改变动画回放时间点。
- **AnimationNodeTransition** 是一个简单状态机，适用于不需要更高级的状态机的情况。

其中 NodeAdd2、NodeAdd3、NodeBlend2、OneShot 这三种混合方式都可以设置过滤器动画轨道，即可以
单独控制哪些轨迹通过混合功能，这对于将动画层叠在一起非常有用。点击 Edit Filters，勾选激活选项，
并设置需要作为过滤器的动画轨道，以混合使用这些轨道控制动画。

叠加与混合两种方式的差别在于，叠加方式是加法器，Add Mount 为 1.0 时 add 端口的动画会完全叠加在
in 端口输入的动画上，所以可以用来组织多个角色的动画，一个 Blend Tree 就可以安排多个角色的动画。
而混合方式 Blend 表示 Mixture 的意思，搅拌在一起，Blend Amount 设置为 1.0 表示混合的结果只
有 Blend 端口的动画，in 端口的动画完全没有。反之，0.0 表示只会播放 in 端口的动画，Blend 端口的
动画完全不考虑。其它值则表示在输入动画之间的混合状态。Blend3 的混合比例在 [-1.0, 1.0]，-1 和 1
分别表示只输出 -blend 和 +blend 端口输入的动画，设置为 0.0 表示只输出 in 端口的动画。

所有混合节点都作为导出属性，属性访问路径通过动画树的属性探测器面板获取，Parameters 包含所有已添加节点。

OneShot 混合根据动画是否启用 Loop 循环播放有不同表现，shot 端口输入的动画在不启动循环播放状态下，
播放完成时就会返回到 in 端口的动画状态。通常用来给角色添加开火的动作，所以叫做单次射击。

Transition 做简单的状态转换，可以添加多个状态，状态之间转换时间可以在 Xfade Time 属性中设置，
设置 Input Count 确定好输入端口数量，即状态数量，然后将动画连接到输入端口。然后通过导出的 current
属性设置当前状态，状态机就会从上一个状态转换到新的状态。此功能在 Godot 3.x 中还不完善，在属性面板中
添加输入端口后，会提示状态端口没有连接，编辑界面也没有及时更新，可以在添加端口后将 Transition 连接
到其它端口再断开试试，不行就可能需要重新加载动画树或场景。

Transition 提供了一个自动推进选项 Auto Advance，激活它，当前状态转换完成后，即动画播放完成后，
自动推进到下一个状态。如果所有状都激活了自动推进，就会像 Loop 模式一样循环播放各个状态的动画。

TimeSeek 做动画回放时间定位时，在设置好 seek_position 时间点后，会自动在下一处理帧进入睡眠模式，
通过设置 seek_position 值为 -1.0 使其不再有作用。

```py
# Play child animation from the start.
animation_tree.set("parameters/Seek/seek_position", 0.0)
# Alternative syntax (same result as above).
animation_tree["parameters/Seek/seek_position"] = 0.0

# Play child animation from 12 second timestamp.
animation_tree.set("parameters/Seek/seek_position", 12.0)
# Alternative syntax (same result as above).
animation_tree["parameters/Seek/seek_position"] = 12.0
```

混合树的可视化节点编辑目前操作上还不流畅，而且所有连接到 Output 节点，所有输入端口必需有连接，否则
不能正常播放动画。节点连接操作也不是很便利，必需先断开原有连接，才能连接新的节点。



## Noise World 噪声世界
- [Painting with Maths by Inigo Quilez](https://www.bilibili.com/video/BV1fU4y1273S/)
- [Raymarching distance fields - 2008 by Inigo Quilez](https://iquilezles.org/articles/raymarchingdf/)
- [Ray Marching and Signed Distance Functions](https://jamie-wong.com/2016/07/15/ray-marching-signed-distance-functions/)
- [The Book of Shaders by Patricio Gonzalez Vivo & Jen Lowe](https://thebookofshaders.com/11/?lan=ch)
- [网格噪声（Cellular Noise）](https://thebookofshaders.com/12/?lan=ch)
- [Generating Noise for applications](https://learn.microsoft.com/en-us/archive/blogs/hemipteran/generating-noise-for-applications)
- [Voronoi Noise Worley and Chebyshev](https://catlikecoding.com/unity/tutorials/pseudorandom-noise/voronoi-noise/)
- [Simplex Noise, keeping it simple](https://catlikecoding.com/unity/tutorials/simplex-noise/)
- [Voronoi Noise](https://iquilezles.org/articles/voronoise/)
- [Voronoi edges - 2012 by Inigo Quilez](https://iquilezles.org/articles/voronoilines/)
- [Distance functions - by Inigo Quilez](https://iquilezles.org/articles/distfunctions/)
- [A GPU Approach to Voronoi Diagrams](https://nullprogram.com/blog/2014/06/01/)
- https://developer.nvidia.com/gpugems/gpugems2/part-i-geometric-complexity/chapter-8-pixel-displacement-mapping-distance-functions
- [Voronoi and Worley (cellular) noise - Godot Shaders](https://godotshaders.com/snippet/voronoi/)
- [Voronoi Texture 体积着色器造云](https://www.bilibili.com/video/BV167411s7tt)
- [smoothstep desmos](http://www.desmos.com/calculator/309w4rkmpe)
- [3blue1brown 线性代数的本质](https://www.bilibili.com/video/BV1ys411472E)
- An Image Synthesizer. Ken Perlin (1985)
- Texturing and Modeling, Third Edition: A Procedural Approach. David S. Ebert, F. Kenton Musgrave, Darwyn Peachey, Ken Perlin, Steve Worley (2002)
- The Science of Fractal Images, Heinz-Otto Peitgen (1988)


计算机图形学其中一个问题是噪声，世界随处都可见的噪声看似杂乱无章，其实有迹可循。最简单的白噪声 White Noise
是一些毫无关联的像素构成，这些像素都是一个独立随机的点，自然办大量存在。而一些有规律的噪声，如细胞结构、树皮
纹理、水波等等。理解这些现象更恰的观念是混沌系统，混沌不等于随机，随机表示完全无法预测，而混沌则是整体有规律，
具体无法测。就细胞结构来说，整体上植物的细胞开状都像一个长方形盒子，这是可以预测的，但是具体每个细胞的大小分布
这些具体的数值是不能预测的。

在研究噪声问题之前，建议观看 Inigo Quilez 作品演示 Raymarching distance fields - 2008，
以及可以打开你天灵盖的《用数学绘画》 Painting with Maths 系列教学视频。

将噪声与傅里叶级数等等数学工具组合，可以创造一切可能，而不仅仅是游戏地形景观。一些成功的噪声研究为
软件工业提供了大量可产品化的算法，包括但不仅限于以下这些：

- Open Simplex 噪声算法，Godot 将其封装在 **OpenSimplexNoise** 类型；
- Voronoi 算法，维诺图（Voronoi Diagram）多边形结构可以很好地模拟生物细胞的随机特征；

Ken Perlin 在噪声算法有巨大贡献，Perlin Noise 柏林噪声是 Ken Perlin 1983 年提出，用于制作
迪士尼的动画电影 TRON 《电子世界争霸战》中制作光效的算法。他不满足于当时计算机产生的那种非常不自然的
纹理效果，因此提出了 Perlin 噪声。Prelin 由于出色的工作，获得了奥斯卡科技成果奖。

单形噪声 Simplex Value Noise 是 Ken Perlin 创造了佩林噪声之后发明的另一种噪声模式。这种类型的
噪声使用核求和而不是插值，kernel summation instead of interpolation，并且基于单纯形网格而
不是超立方体晶格。


程序噪声 Pseudorandom Noise 的生成方法大致可以分为两类：

- 基于晶格的方法（Lattice based）
    - 一种是值噪声（Value noise），是承上启下的一种算法，是白噪声与 Perlin Noise 的中间阶段。
    - 另一种是梯度噪声（Gradient noise），包括 Perlin，Simplex，Wavelet 噪声等等；
- 基于点的方法（Point based） Worley 噪声即 Voronoi 算法，用于模糊处理的高斯噪声（Gauss noise）；

白噪声的不平滑不协调是它的最大问题，要得到平滑的过渡最简单的方式就是模糊，或者说在不同点之间进行插值，
Value nosie 的基本算法特点就是基于晶格方法，所谓晶格就是形状规则的格子。

Value noise 噪声的基本原理如下：

- 想要在晶格中进行插值计算，首先需要定义在各晶格顶点上的值；
- 然后，根据输入点在晶格内的位置，进行二次线性插值得到最后的噪声图；

虽然在两个值之间进行线性插值的确可以获得很平滑的过渡效果，但是到三个值，乃至更多值的时候，晶格交界处
的过渡太生硬了，问题就出来了。

Perlin Noise 则将晶格梯度化，晶格的四顶点先定义随机的一个向量值，各顶点到内部点的位置对应又有 4
个向量值。噪声取值则根据顶点向量与顶点到内部点的向量点积（dot product; scalar product）得到。

Perlin Noise 算法的时间复杂度是 O(2^n)，生成噪声维度越高，计算复杂性增长越快，同时，在实现算法时
对排列组合表 Permutation 的操作也越复杂，插值运算也越多，代码操作时难度也越来越大。正因如此，2001 年，
Ken Perlin 对算法进行了改进，希望凭借新的数学基础理论，单形(Simplex)理论，以解决高维度的噪声生成
的计算量问题，所以最后的噪声就叫作 Simplex Noise。


单形是线段、三角形、四面体直至任意维度符号的一种概述，是 N-space 的一种细分。简单说，N 维单形就是能
铺满 N 维空间的最简单图形。对１D 空间来说，单形就是等长的线段，线段首尾相连平铺整个１D 空间，而对于
２D 空间来说，能平铺整个空间的最简单图形是等边三角形，对 3D 空间来说，能平铺整个空间的最简单图形是
四面体，依此类推度。单形有一个特性，N 维空间的单形有 N+１ 个顶点，N! 个单形能组成 N 维空间的超晶格体。


Worley noise 也叫 Voronoi/Cellular noise，算法是 Steven Worley 在 1996 年的论文提出的，
A Cellular Texture Basis Function，在这篇论文里，他描述了这种现在被广泛使用的程序化纹理技术。
Voronoi（Cellular Noise）网格噪声算法实质上是这样一个问题：距离场计算问题。在 UV 网格上随机选
一个点 P，如何判断它处在哪个多边开区块内？

Voronoi 图需要对平面划分，根据平面上设置的特征点（Site）把平面分成若干区域，同一个区域中的所有点
到某一点的距离最近，这些区域称为单元（Cell），相邻单元之间的分界线成为边（Edge），相邻两个或多个条
边的交点称为顶点（Vertice）。Voronoi 边上的点到两个 Site 的距离相等并小于到其它 Site 的距离，
而其顶点到多个（≥3）Site 的距离相等并小于到其它 Site 的距离。

这里距离场的距离是指，到一个特征点集最近的点的距离。比如说要写一个 4 个特征点的距离场，对每一个像素，
计算它到最近的特征点的距离。最粗暴的办法就是遍历所有共 4 个特征点，计算出与到当前像素点的距离，并
记录下最近的那个距离，这些记录下来的数据就表示一个距离场 Distance field。距离场早期在医疗行业的
放射设备成像上有应用，在物理引擎中，也会采用有向距离场来处理问题 Signed Distance Field。

Inigo Quilez 还用来作画，完全使用代码画一只有血有肉的蜗牛，展示在 Raymarching distance fields - 2008。

Voronoi 图生成时，需要先生成随机顶点作为特征点，并根据特征点生成多边形进行分区。沿两顶点画出平分线，
这条线即多边形的一个边，然后根据多边形对分区内的点进行插件处理。生成特征点越多计算复杂度越大，随后
Steven Worley 对算法进行了多次优化。


通过将空间分割成网格，并不需要计算每一个像素点到每一个特征点的距离，使用得计算得以简化。并且 GPU 中
每个像素点都在自己的线程中运行，把空间分割成网格（cells），每个网格对应一个特征点。另外，为避免网格
交界区域的偏差，需要计算像素点到相邻网格中的特征点的距离。这就是 Steven Worley 在论文中的主要思想。
最后，每个像素点只需要计算到九个特征点的距离：他所在的网格的特征点和相邻的八个网格的特征点。

所以，改进后的 Voronoi 算法不仅基于点又基于晶格。

Inigo Quile 也在 Voronoi edges - 2012 中提供了一个边线查找算法，算法提供了正确的距离度量。

在 2011 年, Stefan Gustavson 优化了 Steven Worley 的算法，提出 2x2 Worley 噪声优化，仅仅
对一个 2x2 的矩阵作遍历（而不是 3x3 的矩阵）。这显著地减少了工作量，但是会在网格边缘制造人工痕迹。
事实上这个问题在3x3上也存在，只是不明显。

Voronoi 噪声求解的函数中，显示到最近单元格点的距离的函数被命名为 F1，显示到第二个最近点的距离的
函数被命名为 F2，依此类推。不必限制自己只使用 F1 或 F2，也有可以使用以某种方式组合它们的函数。
最有趣的变体是 F2-F1 Voronoi。


在游戏工业上利用现代 GPU 硬件编程，即编写着色器是实现噪声程序普遍做法。现在，通过浏览器就可以编写
着色器语言程序，Shader Toy 就是这样的工具，作者 Inigo Quilez 也是计算机图形领域的大牛。

开源免费的动画工具 Blender 也不错，使用 OSL（Open Shading Language）着色器语言。Godot 上使用
OpenGL GLSL 2/3 着色器语言编程，只需要给对象创建一个 ShaderMaterial 材质即可。编写着色器涉及
数学方面的知识比较多，同时要求更高的艺术审美能力，才能制作出高质量的作品。

GLSL 本身没有提供随机函数，除了早期版本提供一系列噪声函数 noise1 ~ noise4，在新的 OpenGL 4.4
已经弃用，所以返回值总是为 0。要实现伪随机数，可以用取巧的方法，利用 fract 函数截取小数部分：


```js
float rand(vec2 co)
{
    return fract(sin(dot(co.xy, vec2(12.9898,78.233))) * 43758.5453);
}
```


着色器中有一个用于平滑插值的 smoothstep 曲线公式 y = 3x^2 - 2x^3，它可以由二次方程混合得到，
这件事确实让开始接触着色器编程的我觉得，数学上的函数这个概念真的和计算机结合非常密切。

假设有两条二次方程曲线：

    C: f(x) = x^2
    D: f(x) = 1 - (x-1)^2

并且有两个用于混合以上曲线的函数：

    E: f(x) = x
    F: f(x) = 1 - x

它们分别是正例、反比例函数。那么 smoothstep 曲线公式就可以按 CF + DE 混合，在 [0,1] 区间上混合
得到两条曲线的平滑过度，使得：

     smoothstep(min, max, a) 

始终可以将 a 映射到 [0,1]  这个标准化区间内，并实现两端的平滑。

Ken Perlin 对 Simplex Noise 算法的一个优化是将三次 Hermite 函数即 smoothstep() 函数替换
成了四次 Hermite 函数。使得函数曲线两端更“平”，所以噪声图每个格的边缘更加优雅地与另一个衔接。

    Cubic Hermite Curve： f(x) = 3x^2-2x^3
    Quartic Hermite Curve： f(x) = 6x^5-15x^4+10x^3

而这种数学工具的应用远不只是在算法的效率提升上的应用，程序化建模的基本工具也是数学。例如，球和圆有
什么本质差别呢，一个是 x^2 + y^2 = r^2，一个是 x^2 + y^2 + z^2 = r^2，当进行比例运算后，
就可以将一个圆变换为椭圆，将一个球变成一个饼状态，这是不是太有趣了。

而 Inigo Quilez 展示在 Raymarching distance fields - 2008 上的数学作画能力绝对可以开拓
你对于数学的原有认识，它就真的像上帝！




## Godot AI 有思想的精灵

Godot 中的 AI 寻路方案大概有以下几种：

- AStar 寻路类，对于自动生成的网格地图非常有用，结合多线程效率也高；
- Navigation2D 导航类，比较方便且实用，但是有较大的局限；
- RayCast2D 射线检测，对路径进行判断，有比较好的解决方案，但是算法复杂；
- 使用大量的 Area2D 对地图可行路径进行判断；



## GDScript MySprite 精灵类派生演示
- [GDScript Basics](https://docs.godotengine.org/en/3.5/tutorials/scripting/gdscript/gdscript_basics.html)
- [GDScript grammar](https://docs.godotengine.org/en/stable/development/file_formats/gdscript_grammar.html)
- [GDScript exports](https://docs.godotengine.org/en/3.5/tutorials/scripting/gdscript/gdscript_exports.html)
- [Using multiple threads](https://docs.godotengine.org/en/stable/tutorials/performance/threads/using_multiple_threads.html)
- [Singletons (AutoLoad)](https://docs.godotengine.org/en/3.5/tutorials/scripting/singletons_autoload.html)
- [When you should use an Autoload](https://docs.godotengine.org/en/3.5/tutorials/best_practices/autoloads_versus_internal_nodes.html)
- [Import process](https://docs.godotengine.org/en/stable/tutorials/assets_pipeline/import_process.html)
- [GDScript 2.0 reference](https://docs.godotengine.org/en/latest/tutorials/scripting/gdscript/gdscript_basics.html)
- [Godot 4 GDScript Features - GDScript 2.0](https://gdscript.com/articles/godot-4-gdscript/)
- [Data preferences](https://docs.godotengine.org/en/3.5/tutorials/best_practices/data_preferences.html)

Godot 自带的 GDScript 脚本和 Python 语法非常相似，但是在多线程支持上要好很多。

Godot 4 GDScript 2.0 Features:

- first-class functions
- lambdas
- new property syntax
- await keyword
- super keyword
- typed arrays
- built-in annotations
- automatically generate documentation

新版本的 GDScript 语法上有些变动，如 onready、export 这类关键字使用 @onready、@export 这样的
标注方式，并增加了一些新标注。在将 Godot 3.x 工程迁移到 Godot 4.x 时，可能因为这些语法兼容问题，
导致新版本中不能正确打开脚本，并显示脚本内容。

|        Annotation        |                           Description                           |
|--------------------------|-----------------------------------------------------------------|
| @tool                    | Enable the Tool mode.                                           |
| @onready                 | Defer initialization of variable until the node is in the tree. |
| @icon(path)              | Set the class icon to show in editor, used with class_name.     |
| @rpc                     | RPC modifiers. See high-level multiplayer docs.                 |
|--------------------------|-----------------------------------------------------------------|
| @export                  | Export hints for the editor. See GDScript exports.              |
| @export_enum             |                                                                 |
| @export_file             |                                                                 |
| @export_dir              |                                                                 |
| @export_global_file      |                                                                 |
| @export_global_dir       |                                                                 |
| @export_multiline        |                                                                 |
| @export_placeholder      |                                                                 |
| @export_range            |                                                                 |
| @export_exp_easing       |                                                                 |
| @export_color_no_alpha   |                                                                 |
| @export_node_path        |                                                                 |
| @export_flags            |                                                                 |
| @export_flags_2d_render  |                                                                 |
| @export_flags_2d_physics |                                                                 |
| @export_flags_3d_render  |                                                                 |
| @export_flags_3d_physics |                                                                 |



Godot 全局空间 @GDScript 和 @GlobalScope 包含所有脚本中可以直接使用的函数，用户要向全局空间
添加对象，可以使用工程设置自动加载，Singletons (AutoLoad)，自动加载得到位于全局空间的单态对象。

例如，将以下脚本保存到 Global.gd，并设置工程的 AutoLoad 加载它，即可以实现自动剧中窗口。运行程序
时，引擎将加载并附着 GlobalNS 到场景树上，初始化方法会被调用：

```py
extends Node

class_name GlobalNS

func _init():
    print("Global.gd _init")
    # Center window on screen
    var screen_size = OS.get_screen_size(OS.get_current_screen())
    var window_size = OS.get_window_size()
    var centered_pos = (screen_size - window_size) / 2
    OS.set_window_position(centered_pos)
```

从编译器原理的角度看，GDScript grammar 是一种 EBNF 范式，所以范式就是一种语法书写格式。
GDScript 脚本解析器根据这种语法来处理脚本，按规则解析后再执行脚本。

看懂 GDScript EBNF grammar 规范后也就相当于掌握了 Godot 脚本编程，来看开头部分：

    (* GDScript EBNF grammar.
       Uppercase words are terminals generated by the tokenizer.
       INDENT/DEDENT are not generated by the tokenizer yet, but they are added
       here for reading convenience.
       Naturally, this only cover syntax. Semantics can't be inferred from this
       description.
    *)

    program = [ inheritance NEWLINE ] [ className ] { topLevelDecl } ;

    inheritance = "extends" ( IDENTIFIER | STRING ) { "." IDENTIFIER } ;
    className = "class_name" IDENTIFIER [ "," STRING ] NEWLINE ;

    topLevelDecl
        = classVarDecl
        | constDecl
        | signalDecl
        | enumDecl
        | methodDecl
        | constructorDecl
        | innerClass
        | "tool"
        ;

这个部分是说，一个脚本程序 program 应该包含三个部分的内容，方括号表示可选项，花括号表示必选项：

- [ inheritance NEWLINE ] 可选的继承关系定义，独占一行，使用 **extends** 关键字；
- [ className ] 可选的类名定义，使用 **class_name** 关键字，后面可以指定一个图标；
- { topLevelDecl } 必选的顶级声明，包含类成员、常量、用户信号、枚举、方法、构造、内部类、编辑器工具等等；

工具脚本是会 Godot IDE 中运行的脚本，在开头使用 **tool** 关键字，通过 Engine.editor_hint 全局
状态判断当前运行环境是否是编辑器环境。另外，继承 **EditorScript** 的脚本可以直接在脚本编器中运行。
而要为编辑器提供更多功能，可以编写编辑器插件，继承 **EditorPlugin** 类型。Asset Library 提供了
现有的插件，在 Godot IDE 中可以直接搜索、安装各种插件。也可以手动下载插件，安装到项目的 addons 目录下。

```py
tool
extends EditorScript

func _run():
    print("Hello from the Godot Editor!")
```

GDScript 脚本作为快速迭代开发的语言，它最大的优点就是使用上的便利，无编译时间开销，同时与 Godot
编辑器界面紧密结合，通过 **export** 关键字导出脚本符号，可以在属性检查器 Inspector 产生相应的
GUI 控件对导致变量进行赋值等操作。在脚本中修改已导出的符号，可以主动调用 Object 提供的通知发布方法，
以使用 Inspector 检测到导出符号内容有变动并相应更新，使用属性面板内容及时反映出变化：

```py
void notify_property_list_changed()
```

要继承一个类，除了直接在 **extends** 关键字后面编写类名外，也可以使用 res:// 协议指定脚本资源文件。
给一个脚本设置 **class_name** 后，这个类型就具有名称，不是匿名类。如果继承 Node 或其子类型，就
可以直接当作场景树的节点使用，在给场景添加节点时，节点列表中也会显示这个对象。


```py
tool

extends Sprite
class_name MySprite, "res://icon.png"

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
    pass # Replace with function body.

# http://kehomsforge.com/tutorials/single/process-physics-process-godot
# Called every frame. 'delta' is the elapsed time since the previous frame.
# In Godot we sort of get this decoupling by having the 
# _physics_process() (fixed time step) and the _process() (as fast as possible) functions.
func _process(delta):
    if Engine.editor_hint:
        rotation_degrees += 90 * delta
    else:
        rotation_degrees -= 18 * delta

func _physics_process(delta):
    print(self.name)
    pass

# http://kehomsforge.com/tutorials/single/gdConditionalProperty
# Object._get_property_list() _get() _set()
```

每个脚本的本身是 **GDScript** 类型，是一种资源类型，需要与节点结合使用，即附加到场景树中的节点，
使节点可以通过脚本进行操控：

    Class: Script
    Inherits: Resource < Reference < Object
    Inherited by: GDScript , NativeScript , PluginScript , VisualScript

以下脚本演示如何通过全局函数 load 加载类型，然后在实例化后加载到场景树中：

```py
#extends "res://L3 GDScript/MySprite.gd"
extends MySprite

class_name MyObject, 'res://icon.png'

func _ready():
    # Anonymous types: local script as GDScript class
    var MyClass = load("res://L3 GDScript/MySprite.gd")
    var instance = MyClass.new()
    assert(instance.get_script() == MyClass)
    
    # attach scene tree
    instance.position += Vector2(100, 100)
    instance.texture = load("icon.png")
    get_node("..").call_deferred("add_child", instance)
```

继承声明使用 res:// 资源协议指定父类时，可能会在编辑器中检测到循环加载问题，但不影响使用：

    Parse Error: Script isn't fully loaded (cyclic preload?): res://L2 GDScript/MySprite.gd

创建的节点不再需要时，需要调用 queue_free() 或 free() 释放节点所占用内存，否则会成为孤儿节点占用内容。

全局函数与资源加载相关的有两个，要避免多次加载资源，可以将资源引用保存在变量中或者使用 preload() 方法：

```py
Resource load(path: String)

Resource preload(path: String)
```

## GDScript Plugins 插件扩展
- [Editor plugins](https://docs.godotengine.org/en/stable/tutorials/plugins/editor/index.html)
- [Conditionally Export Properties in Godot](http://kehomsforge.com/tutorials/single/gdConditionalProperty)
- [Plugin Demos](https://github.com/godotengine/godot-demo-projects/tree/master/plugins)
- [2.5D Demo Project with GDScript](https://godotengine.github.io/godot-demo-projects/misc/2.5d/)

工具脚本和插件是扩展 Godot IDE 能力的两种上基本方法。

编写编辑器插件，继承 **EditorPlugin** 类型，可以为编辑器提供更多功能。Asset Library 提供了
现有的插件，在 Godot IDE 中可以直接搜索、安装各种插件。也可以手动下载插件，安装到项目的 addons 目录下。

Godot Plugins 有多种类型：

- Editor plugins **EditorPlugin** 所有编辑器插件的基类；
- Main screen plugins 主屏插件；
- Import plugins **EditorImportPlugin** 资源导入插件；
- Spatial gizmo plugins **EditorSpatialGizmo** 空间节点辅助线框插件；
- Inspector plugins **EditorInspectorPlugin** 属性探测器插件；
- Visual Shader plugins **VisualShaderNodeCustom** 可视化着色器节点插件；

主屏插件通过编辑器插件的 **has_main_screen()**、**get_editor_interface ( )** 等方法实现，
配合 **EditorInterface** 接口类型对编辑器主界面进行扩展，像顶部的 2D、3D、Script、AssetLib 
一样，从整体上改变编辑器界面。因为 Godot IDE 界面就是使用引擎自身实现的，程序逻辑类似开发一个游戏。

另外，可视化着色器插件主要是通过 GDScript 脚本为 VisualShader 添加节点。


将脚本作为 Godot IDE 工具，在开发环境下就可以运行脚本进行自动化工作的处理，配合符号导出，与属性
探测器紧密结合。例如，以下实现一个 MyTitle 标签控件，在场景树中添加控件时，就会运行脚本完成控件的
基本设置，自动匹配当前工程的视口宽度。通过导出用于保存资源的变量，用户可以在属性探测器中给控件设置
一个纹理图片，控件将会自动将其添加到节点树中。

在工具脚本中，如果修改了导出的变量，为了使用属性探测器中能及时反映出变化，就需要使用 **Object** 
提供的 property_list_changed_notify() 方法发布通知。以下脚本中，在 AutoRefresh 为激活时，
脚本设置 ResourceInfo 变量的变化就可以及时反映在属性探测器上：

```py
tool

class_name MyTitle, "res://icon.png" extends Label

export var resource: Resource setget set_resource
export var ResourceInfo:String

## Auto Refresh inspector property list
export var AutoRefresh:bool = true

func set_resource(res: Resource):
    resource = res
    ResourceInfo = res.resource_path if res else ""
    
    if res is Texture:
        var tr = ClassDB.instance("TextureRect") # TextureRect.new()
        tr.texture = res
        for child in get_children():
            remove_child(child)
        add_child(tr)
    
    if AutoRefresh:
        .property_list_changed_notify()
    
func _ready():
    if Engine.editor_hint and not text:
        text = "MyTitle"
        rect_min_size = Vector2(ProjectSettings.get("display/window/size/width"), 64)
    # else:
    #   rect_min_size = Vector2(get_tree().root.size.x, 64)

func _init():
    set("align", ALIGN_CENTER)
    set("valign", ALIGN_CENTER)
    set("custom_colors/font_size", Color.whitesmoke)
    set("custom_colors/font_color", Color.whitesmoke)
    set("custom_colors/font_color_shadow", Color.darkorange)
    set("custom_constants/shadow_offset_x", 2)
    set("custom_constants/shadow_offset_y", 2)
    set("custom_constants/shadow_offset_y", 2)
    
    theme = load("res://L7 UI/theme.tres")
    theme_type_variation = "MyLabel"
```

需要注意，Node 数据可以由多种设置方式，在场景中创建节点后，用户可以在属性探测器中设置节点数据，或者
也可以通过工具脚本的形式设置数据，这些数据会保存在场景文件 TSCN 中，这是 Godot 场景的字符串保存格式。
列如，以下是一个 MyTitle 节点在场景文件中保存的格式：

    [node name="MyTitle" parent="." index="0"]
    text = "IO & Serialization"

MyTitle 标签在新创建时，text 为空，这时可以提供一个默认标题内容。但是，在后续重新打开场景时，
工具脚本会再次运行，此时如不不判断数据是否被改变，则可能会将用户在属性探测器中设置的数据覆盖。
已经在场景中设置好的数据会在类型构造过程中加载，在初始化方法 **_init()** 中就可以访问。

通过脚本添加的节点并不会出现在场景树面板上，也就是说脚本添加的生成的节点内容不会被记录到场景文件中，
节点类有一个 owner 属性，给节点的设置的所有者可以是任意级的父节点，只要是有效的父节点、增父节点等等，
这样，场景保存为 PackedScene，即 TSCN 文件时就会记录下已指定 owner 的节点数据，包括 owner 点。
通常在插件中调用 add_child() 添加节点时，附带设置 owner 以记录复杂的场景树结构。

不设置所有者的情况下调用 add_child()，则新添加的节点将在场景树中不可见，只在 2D/3D 视图中可见。
场景根节点 owner 为 null。

在编写插件时注意，Godot 可以切换不同的场景文件，所以只有节点已经附加到场景树中，即激活的节点才能
通过 get_tree() 获取到 ScreenTree 引用。编辑器切换到其它场景后，如果节点注册的事件还在工作，
就不能再使用 get_tree() 来获取场景树的引用，EditorPlugin 则总是可以通过 **get_tree()** 获取到。
要清楚，场景树在整个工程中只有一个，最顶层始终是 root 属性引用的 Viewport。场景却不断地切换，场景
根节点也不断变更，插件的 **get_edited_scene_root()** 方法获取当前处于编辑中的场景根节点。

插件接口提供了多个方法，用于获取 Godot IDE 界面的各个功能区，其中 **get_editor_viewport()**
获取到的是主编辑器界面，它包含 2D/3D，Script, AssetLib 乖乖。顶层视口下包含一个 **EditorNode**，
可以通过源代码观察其节点组织层次，

注意，EditorPlugin 只有在编辑器模式下才被实例化，在游戏运行模式执行实例化时返回空引用。另外，通过
get_selection() 返回的节点选择对象不能持久引用，在切换编辑场景时会失效。


```py
tool
extend Node2D

var editor = EditorPlugin.new().get_editor_interface()

func _ready():
    pass

func _enter_tree():
    var selection = editor.get_selection()
    selection.connect("selection_changed", self, "attach_to_scenetree")
    get_tree().connect("node_added", self, "_on_node_added", [], CONNECT_ONESHOT)


func _exit_tree():
    var selection = editor.get_selection()
    selection.disconnect("selection_changed", self, "attach_to_scenetree")


func _on_node_added(node:Node):
    if node is Label:
        print("_on_node_added %s (%s)" % [node, node.text])


func attach_to_scenetree():
    var selection = editor.get_selection()
    var nodes = selection.get_selected_nodes()
    var sceneroot = editor.get_edited_scene_root()
    var root = editor.get_tree().root  # Top most level viewport $"/root"

    if not nodes.size():
        return
    print("node owner is ", nodes[0].owner)
    
    var label = ClassDB.instance("Label") # Label.new()
    label.text = "LabelText"
    nodes[0].add_child(label)
    label.owner = nodes[0].owner if nodes[0].owner else nodes[0]

    # yield(editor.get_tree(), "idle_frame")
    # call_deferred("add_child", label)
```



Godot IDE 工程配置的插件面板提供了创建插件的操作，也可以手动在 Addons 目录下创建插件，创建一个
子目录保存插件文件，首先是插件配置文件，格式如下：

```sh
[plugin]

Plugin Name: MyPlugin
Subfolder: my_plugin
Description: A plugin to extend the Godot Engine.
Author: Your Name Here
Version: 1.0.0
Language: GDScript
Script Name: plugin.gd
Activate now: No
```

然后，就是插件的主要脚本编写，需要根据不同类型的插件去继承对应的插件基类。工程插件配置中，可以对插件
进行激活、禁用操作，而插件的对应响应方法是进入、脱离场景树事件，没有专用事件。

一个最简单的插件可以只包含两个方法，它向引擎注册自定义节点：

```py
tool
extends EditorPlugin

func _enter_tree():
    # When this plugin node enters tree, add the custom type
    add_custom_type("Heart", "Node2D", preload("res://addons/custom_node/heart.gd"), preload("res://addons/custom_node/heart_icon.png"))


func _exit_tree():
    # When the plugin node exits the tree, remove the custom type
    remove_custom_type("Heart")
```

自定义节点 Heart 功能如下，只是进行图案绘制：

```py
tool
extends Node2D

var heart = preload("res://addons/custom_node/heart.png")

func _draw():
    draw_texture(heart, -heart.get_size() / 2)


func _get_item_rect():
    # override
    return Rect2(-heart.get_size() / 2, heart.get_size())
```

其它一些专用插件基于这种基本结构实现，如资源导入插件 EditorImportPlugin，通过专用方法注册插件：

```py
tool
extends EditorPlugin

var import_plugin

func _enter_tree():
    import_plugin = preload("import_plugin.gd").new()
    add_import_plugin(import_plugin)


func _exit_tree():
    remove_import_plugin(import_plugin)
    import_plugin = null
```

以下示范 Main Screen 插件的实现，在 has_main_screen() 方法返回 true 表示这是一个主屏插件。

当用户在场景树中选择不同的节点时，引擎会调用 handles() 方法判断插件是否要处理这种节点，如果需要
处理，接下来就调用 make_visible() 准备切换到插件的主界面，并调用 edit() 执行编辑。除非用户界面
当前处于脚本编辑界面，即使插件表示需要处理当前节点，这时也不会触发后续的编辑行为： 

```py
bool handles(object: Object) virtual

void make_visible(visible: bool) virtual

void edit(object: Object) virtual
```

以下是一个 Main Screen 插件的实现，可以根据需要创建插件的面板所使用的场景文件，注意使用 tool 关键字
以使脚本在编辑器中可以被执行。使用 add_autoload_singleton() 等方法可以加载全局的 Singleton 对象，
但是这种方法加载的对象，在插件禁用后再激活时会出现不稳定问题：

```py
tool
extends EditorPlugin

var MainPanel = preload("res://addons/main_screen/main.tscn").instance()

# Replace this value with a PascalCase autoload name, as per the GDScript style guide.
const AUTOLOAD_NAME = "MyPluginAutoload"


func _enter_tree():
    
    # Add the main panel to the editor's main viewport.
    get_editor_interface().get_editor_viewport().add_child(MainPanel)

    # Hide the main panel. Very much required.
    make_visible(false)

    # The autoload can be a scene or script file.
    add_autoload_singleton(AUTOLOAD_NAME, "res://addons/main_screen/plugin.gd")


func _exit_tree():
    remove_autoload_singleton(AUTOLOAD_NAME)

    if MainPanel:
        MainPanel.queue_free()


func has_main_screen():
    return true

# If your plugin doesn't handle any node types, you can remove this method.
func handles(obj):
    #return obj is preload("res://addons/main_screen/handled_by_myself.gd")
    return true

func make_visible(visible):
    if MainPanel:
        MainPanel.visible = visible

func edit(object: Object):
    var label = Label.new()
    label.text = object.to_string()
    MainPanel.add_child(label)
    

func get_plugin_name():
    return "MainScreen Plugin"


func get_plugin_icon():
    # Must return some kind of Texture for the icon.
    return get_editor_interface().get_base_control().get_icon("Node", "EditorIcons")
```

插件提供了多个方法，用于往 Godot IDE 主界面添加任意的控件节点，如右上角的 Toolbar 区域，指定专用
容器，底部的 Bottom Panel 区域，又或者是停靠坞 DockSlot。并且需要在插件禁止时，调用相应的方法解除。
虽然，可以通过节点的 get_parent() 检测节点是否附加到界面，但是并不能直接通过 remove_child() 方法
直接移除节点，必需调用专用方法。加载场景时需要注意，使用 preload 重复加载同一资源可能导致循环加载，
出错导致场景中的脚本无法被执行：

```py
tool
extends Button

# When reactived plugin cause error:
# Autoload singleton 'MyPluginAutoload' has been removed.
#onready var ap:EditorPlugin = MyPluginAutoload
onready var plugin:EditorPlugin = EditorPlugin.new()
onready var panel:Node = load("res://addons/main_screen/main_panel.tscn").instance()

enum Location { NoneSet = 0, DockSlot= 1, Toolbar = 2, BottomBar = 3 }
var location

func _exit_tree():
    if panel:
        detach()
        panel.queue_free()
        print("panel ", panel)

func detach():
    if not panel.get_parent():
        return
    
    #panel.get_parent().remove_child(panel)
    match location:
        Location.DockSlot:
            plugin.remove_control_from_docks(panel)
        Location.BottomBar:
            plugin.remove_control_from_bottom_panel(panel)
        Location.Toolbar:
            plugin.remove_control_from_container(EditorPlugin.CONTAINER_TOOLBAR, panel)

func _on_Button_pressed():
    detach()
    location = Location.BottomBar
    plugin.add_control_to_bottom_panel(panel, "MyPlugin")


func _on_Button2_pressed():
    detach()
    location = Location.DockSlot
    plugin.add_control_to_dock(EditorPlugin.DOCK_SLOT_LEFT_BL, panel)


func _on_Button3_pressed():
    detach()
    location = Location.Toolbar
    plugin.add_control_to_container(EditorPlugin.CONTAINER_TOOLBAR, panel)
```



## GDScript grammar 语法规范文档
- [GDScript grammar](https://docs.godotengine.org/en/stable/development/file_formats/gdscript_grammar.html)
- [GDScript exports](https://docs.godotengine.org/en/3.5/tutorials/scripting/gdscript/gdscript_exports.html)
- [GDScript 2.0](https://docs.godotengine.org/en/latest/tutorials/scripting/gdscript/gdscript_basics.html)
- [GDScript 2.0 exports](https://docs.godotengine.org/en/latest/tutorials/scripting/gdscript/gdscript_exports.html)

GDScript grammar

This is the formal grammar of GDScript written in EBNF, for reference purposes.

Note

This grammar is descriptive only, derived from the reference documentation and 
current implementation. The GDScript parser is not generated from a grammar definition. 
Inconsistencies here likely mean an error in this grammar, not a bug in GDScript.

```rs
(* GDScript EBNF grammar.
   Uppercase words are terminals generated by the tokenizer.
   INDENT/DEDENT are not generated by the tokenizer yet, but they are added
   here for reading convenience.
   Naturally, this only cover syntax. Semantics can't be inferred from this
   description.
*)

program = [ inheritance NEWLINE ] [ className ] { topLevelDecl } ;

inheritance = "extends" ( IDENTIFIER | STRING ) { "." IDENTIFIER } ;
className = "class_name" IDENTIFIER [ "," STRING ] NEWLINE ;

topLevelDecl
    = classVarDecl
    | constDecl
    | signalDecl
    | enumDecl
    | methodDecl
    | constructorDecl
    | innerClass
    | "tool"
    ;

classVarDecl = [ "onready" ] [ export ] "var" IDENTIFIER [ ":" typeHint ]
    [ "=" expression ] [ setget ] NEWLINE ;
setget = "setget" [ IDENTIFIER ] [ "," IDENTIFIER] ;
export = "export" [ "(" [ BUILTINTYPE | IDENTIFIER { "," literal } ] ")" ] ;
typeHint = BUILTINTYPE | IDENTIFIER ;

constDecl = "const" IDENTIFIER [ ":" typeHint ] "=" expression NEWLINE ;

signalDecl = "signal" IDENTIFIER [ signalParList ] NEWLINE ;
signalParList = "(" [ IDENTIFIER { "," IDENTIFIER } ] ")" ;

enumDecl = "enum" [ IDENTIFIER ] "{" [ IDENTIFIER [ "=" INTEGER ]
    { "," IDENTIFIER [ "=" INTEGER ] } [ "," ] ] "}" NEWLINE ;

methodDecl = [ rpc ] [ "static" ] "func" IDENTIFIER "(" [ parList ] ")"
    [ "->" typeHint] ":" stmtOrSuite ;
parList = parameter { "," parameter } ;
parameter = [ "var" ] IDENTIFIER [ ":" typeHint ] [ "=" expression ] ;
rpc = "remote" | "master" | "puppet"
    | "remotesync" | "mastersync"  | "puppetsync";

constructorDecl = "func" IDENTIFIER "(" [ parList ] ")"
    [ "." "(" [ argList ] ")" ] ":" stmtOrSuite ;
argList = expression { "," expression } ;

innerClass = "class" IDENTIFIER [ inheritance ] ":" NEWLINE
    INDENT [ inheritance NEWLINE ] topLevelDecl { topLevelDecl } DEDENT ;

stmtOrSuite = stmt | NEWLINE INDENT suite DEDENT ;
suite = stmt { stmt };

stmt
    = varDeclStmt
    | ifStmt
    | forStmt
    | whileStmt
    | matchStmt
    | flowStmt
    | assignmentStmt
    | exprStmt
    | assertStmt
    | yieldStmt
    | preloadStmt
    | "breakpoint" stmtEnd
    | "pass" stmtEnd
    ;
stmtEnd = NEWLINE | ";" ;

ifStmt = "if" expression ":" stmtOrSuite { "elif" expression ":" stmtOrSuite }
    [ "else" ":" stmtOrSuite ] ;
whileStmt = "while" expression ":" stmtOrSuite;
forStmt = "for" IDENTIFIER "in" expression ":" stmtOrSuite ;

matchStmt = "match" expression ":" NEWLINE INDENT matchBlock DEDENT;
matchBlock = patternList ":" stmtOrSuite { patternList ":" stmtOrSuite };
patternList = pattern { "," pattern } ;
(* Note: you can't have a binding in a pattern list, but to not complicate the
grammar more it won't be restricted syntactically *)
pattern = literal | BUILTINTYPE | CONSTANT | "_" | bindingPattern
    | arrayPattern | dictPattern ;
bindingPattern = "var" IDENTIFIER ;
arrayPattern = "[" [ pattern { "," pattern } [ ".." ] ] "]" ;
dictPattern = "{" [ keyValuePattern ] { "," keyValuePattern } [ ".." ] "}" ;
keyValuePattern = STRING [ ":" pattern ] ;

flowStmt
    = "continue" stmtEnd
    | "break" stmtEnd
    | "return" [ expression ] stmtEnd
    ;

assignmentStmt = subscription "=" expression stmtEnd;
varDeclStmt = "var" IDENTIFIER [ "=" expression ] stmtEnd;

assertStmt = "assert" "(" expression [ "," STRING ] ")" stmtEnd ;
yieldStmt = "yield" "(" [ expression "," expression ] ")" ;
preloadStmt = "preload" "(" CONSTANT ")" ;

(* This expression grammar encodes precedence. Items later in the list have
higher precedence than the ones before. *)
exprStmt = expression stmtEnd ;
expression = cast [ "[" expression "]" ] ;
cast = ternaryExpr [ "as" typeHint ];
ternaryExpr = logicOr [ "if" logicOr "else" logicOr ] ;
logicOr = logicAnd { ( "or" | "||" ) logicAnd } ;
logicAnd = logicNot { ( "and" | "&&" ) logicNot };
logicNot = ( "!" | "not" ) logicNot | in;
in = comparison { "in" comparison };
comparison = bitOr { ( "<" | ">" | "<=" | ">=" | "==" | "!=" ) bitOr } ;
bitOr = bitXor { "|" bitXor } ;
bitXor = bitAnd { "^" bitAnd } ;
bitAnd = bitShift { "&" bitShift } ;
bitShift = minus { ( "<<" | ">>" ) minus } ;
minus = plus { "-" plus } ;
plus = factor { "+" factor } ;
factor = sign { ( "*" | "/" | "%" ) sign } ;
sign = ( "-" | "+" ) sign | bitNot ;
bitNot = "~" bitNot | is ;
is = call [ "is" ( IDENTIFIER | BUILTINTYPE ) ] ;
call = attribute [ "(" [ argList ] ")" ];
attribute = subscription { "." IDENTIFIER } ;
subscription = primary [ "[" expression "]" ] ;
primary = "true" | "false" | "null" | "self" | literal | arrayDecl
    | dictDecl | "(" expression ")" ;

literal = STRING | NUMBER | IDENTIFIER | BUILTINTYPE
    | "PI" | "TAU" | "NAN" | "INF" ;
arrayDecl = "[" [ expression { "," expression } "," ] "]" ;
dictDecl = "{" [ keyValue { "," keyValue } "," ] "}" ;
keyValue
    = expression ":" expression
    | IDENTIFIER "=" expression
    ;
```


## GDScript 1.0 exports
- [GDScript 1.0 exports](https://github.com/godotengine/godot-docs/blob/3.6/tutorials/scripting/gdscript/gdscript_exports.rst)
- [GDScript 2.0 exports](https://github.com/godotengine/godot-docs/blob/master/tutorials/scripting/gdscript/gdscript_exports.rst)



Introduction to exports
    ----------------------------------------------------------------------------

In Godot, class members can be exported. This means their value gets saved along
with the resource (such as the :ref:`scene <class_PackedScene>`) they're
attached to. They will also be available for editing in the property editor.
Exporting is done by using the ``export`` keyword::

    extends Button

    export var number = 5 # Value will be saved and visible in the property editor.

An exported variable must be initialized to a constant expression or have an
export hint in the form of an argument to the ``export`` keyword (see the
*Examples* section below).

One of the fundamental benefits of exporting member variables is to have
them visible and editable in the editor. This way, artists and game designers
can modify values that later influence how the program runs. For this, a
special export syntax is provided.

.. note::

    Exporting properties can also be done in other languages such as C#.
    The syntax varies depending on the language.

..
   See  ref `doc_c_sharp_exports` for information on C# exports.

Examples
    ----------------------------------------------------------------------------

::

```py
    # If the exported value assigns a constant or constant expression,
    # the type will be inferred and used in the editor.

    export var number = 5

    # Export can take a basic data type as an argument, which will be
    # used in the editor.

    export(int) var number

    # Export can also take a resource type to use as a hint.

    export(Texture) var character_face
    export(PackedScene) var scene_file
    # There are many resource types that can be used this way, try e.g.
    # the following to list them:
    export(Resource) var resource

    # Integers and strings hint enumerated values.

    # Editor will enumerate as 0, 1 and 2.
    export(int, "Warrior", "Magician", "Thief") var character_class
    # Editor will enumerate with string names.
    export(String, "Rebecca", "Mary", "Leah") var character_name

    # Named enum values

    # Editor will enumerate as THING_1, THING_2, ANOTHER_THING.
    enum NamedEnum {THING_1, THING_2, ANOTHER_THING = -1}
    export(NamedEnum) var x

    # Strings as paths

    # String is a path to a file.
    export(String, FILE) var f
    # String is a path to a directory.
    export(String, DIR) var f
    # String is a path to a file, custom filter provided as hint.
    export(String, FILE, "*.txt") var f

    # Using paths in the global filesystem is also possible,
    # but only in scripts in "tool" mode.

    # String is a path to a PNG file in the global filesystem.
    export(String, FILE, GLOBAL, "*.png") var tool_image
    # String is a path to a directory in the global filesystem.
    export(String, DIR, GLOBAL) var tool_dir

    # The MULTILINE setting tells the editor to show a large input
    # field for editing over multiple lines.
    export(String, MULTILINE) var text

    # Limiting editor input ranges

    # Allow integer values from 0 to 20.
    export(int, 20) var i
    # Allow integer values from -10 to 20.
    export(int, -10, 20) var j
    # Allow floats from -10 to 20 and snap the value to multiples of 0.2.
    export(float, -10, 20, 0.2) var k
    # Allow values 'y = exp(x)' where 'y' varies between 100 and 1000
    # while snapping to steps of 20. The editor will present a
    # slider for easily editing the value.
    export(float, EXP, 100, 1000, 20) var l

    # Floats with easing hint

    # Display a visual representation of the 'ease()' function
    # when editing.
    export(float, EASE) var transition_speed

    # Colors

    # Color given as red-green-blue value (alpha will always be 1).
    export(Color, RGB) var col
    # Color given as red-green-blue-alpha value.
    export(Color, RGBA) var col

    # Nodes

    # Another node in the scene can be exported as a NodePath.
    export(NodePath) var node_path
    # Do take note that the node itself isn't being exported -
    # there is one more step to call the true node:
    onready var node = get_node(node_path)

    # Resources

    export(Resource) var resource
    # In the Inspector, you can then drag and drop a resource file
    # from the FileSystem dock into the variable slot.

    # Opening the inspector dropdown may result in an
    # extremely long list of possible classes to create, however.
    # Therefore, if you specify an extension of Resource such as:
    export(AnimationNode) var resource
    # The drop-down menu will be limited to AnimationNode and all
    # its inherited classes.
```
It must be noted that even if the script is not being run while in the
editor, the exported properties are still editable. This can be used
in conjunction with a :ref:`script in "tool" mode <doc_gdscript_tool_mode>`.

Exporting bit flags
    ----------------------------------------------------------------------------

Integers used as bit flags can store multiple ``true``/``false`` (boolean)
values in one property. By using the export hint ``int, FLAGS, ...``, they
can be set from the editor::

    # Set any of the given flags from the editor.
    export(int, FLAGS, "Fire", "Water", "Earth", "Wind") var spell_elements = 0

You must provide a string description for each flag. In this example, ``Fire``
has value 1, ``Water`` has value 2, ``Earth`` has value 4 and ``Wind``
corresponds to value 8. Usually, constants should be defined accordingly (e.g.
``const ELEMENT_WIND = 8`` and so on).

Export hints are also provided for the physics and render layers defined in the project settings::

    export(int, LAYERS_2D_PHYSICS) var layers_2d_physics
    export(int, LAYERS_2D_RENDER) var layers_2d_render
    export(int, LAYERS_3D_PHYSICS) var layers_3d_physics
    export(int, LAYERS_3D_RENDER) var layers_3d_render

Using bit flags requires some understanding of bitwise operations.
If in doubt, use boolean variables instead.

Exporting arrays
    ----------------------------------------------------------------------------

Exported arrays can have initializers, but they must be constant expressions.

If the exported array specifies a type which inherits from Resource, the array
values can be set in the inspector by dragging and dropping multiple files
from the FileSystem dock at once.

::

```py
    # Default value must be a constant expression.

    export var a = [1, 2, 3]

    # Exported arrays can specify type (using the same hints as before).

    export(Array, int) var ints = [1, 2, 3]
    export(Array, int, "Red", "Green", "Blue") var enums = [2, 1, 0]
    export(Array, Array, float) var two_dimensional = [[1.0, 2.0], [3.0, 4.0]]

    # You can omit the default value, but then it would be null if not assigned.

    export(Array) var b
    export(Array, PackedScene) var scenes

    # Arrays with specified types which inherit from resource can be set by
    # drag-and-dropping multiple files from the FileSystem dock.

    export(Array, Texture) var textures
    export(Array, PackedScene) var scenes

    # Typed arrays also work, only initialized empty:

    export var vector3s = PoolVector3Array()
    export var strings = PoolStringArray()

    # Default value can include run-time values, but can't
    # be exported.

    var c = [a, 2, 3]
```

Setting exported variables from a tool script
    ----------------------------------------------------------------------------

When changing an exported variable's value from a script in
:ref:`doc_gdscript_tool_mode`, the value in the inspector won't be updated
automatically. To update it, call
:ref:`property_list_changed_notify() <class_Object_method_property_list_changed_notify>`
after setting the exported variable's value.

Advanced exports
    ----------------------------------------------------------------------------

Not every type of export can be provided on the level of the language itself to
avoid unnecessary design complexity. The following describes some more or less
common exporting features which can be implemented with a low-level API.

Before reading further, you should get familiar with the way properties are
handled and how they can be customized with
:ref:`_set() <class_Object_method__get_property_list>`,
:ref:`_get() <class_Object_method__get_property_list>`, and
:ref:`_get_property_list() <class_Object_method__get_property_list>` methods as
described in :ref:`doc_accessing_data_or_logic_from_object`.

.. seealso:: For binding properties using the above methods in C++, see
             :ref:`doc_binding_properties_using_set_get_property_list`.

.. warning:: The script must operate in the ``tool`` mode so the above methods
             can work from within the editor.

Properties
    ----------------------------------------------------------------------------

To understand how to better use the sections below, you should understand
how to make properties with advanced exports.

::

```py
    func _get_property_list():
        var properties = [] 
        # Same as "export(int) var my_property"
        properties.append({
            name = "my_property",
            type = TYPE_INT
        })
        return properties
```

* The ``_get_property_list()`` function gets called by the inspector. You
  can override it for more advanced exports. You must return an ``Array``
  with the contents of the properties for the function to work.

* ``name`` is the name of the property

* ``type`` is the type of the property from ``Variant.Type``.

.. note:: The ``float`` type is called a real (``TYPE_REAL``) in the ``Variant.Type`` enum.

Attaching variables to properties
    ----------------------------------------------------------------------------

To attach variables to properties (allowing the value of the property to be used
in scripts), you need to create a variable with the exact same name as the
property or else you may need to override the 
:ref:`_set() <class_Object_method__get_property_list>` and 
:ref:`_get() <class_Object_method__get_property_list>` methods. Attaching
a variable to to a property also gives you the ability to give it a default state.
::


```py
    # This variable is determined by the function below.
    # This variable acts just like a regular gdscript export.
    var my_property = 5

    func _get_property_list():
        var properties = [] 
        # Same as "export(int) var my_property"
        properties.append({
            name = "my_property",
            type = TYPE_INT
        })
        return properties
```

Adding default values for properties
    ----------------------------------------------------------------------------

To define default values for advanced exports, you need to override the ``property_can_revert()`` and ``property_get_revert()`` methods.

* The ``property_can_revert()`` method takes the name of a property and must return ``true`` if the property can be reverted. This will enable the Revert button next to the property in the inspector.

* The ``property_get_revert()`` method takes the name of a property and must return the default value for that property.

::

```py
    func _get_property_list():
        var properties = []
        properties.append({
            name = "my_property",
            type = TYPE_INT
        })
        return properties

    func property_can_revert(property):
        if property == "my_property":
            return true
        return false

    func property_get_revert(property):
        if property == "my_property":
            return 5
```

Adding script categories
    ----------------------------------------------------------------------------

For better visual distinguishing of properties, a special script category can be
embedded into the inspector to act as a separator. ``Script Variables`` is one
example of a built-in category.
::

```py
    func _get_property_list():
        var properties = []
        properties.append({
            name = "Debug",
            type = TYPE_NIL,
            usage = PROPERTY_USAGE_CATEGORY | PROPERTY_USAGE_SCRIPT_VARIABLE
        })
        
        # Example of adding a property to the script category
        properties.append({
            name = "Logging_Enabled",
            type = TYPE_BOOL
        })
        return properties
```

* ``name`` is the name of a category to be added to the inspector;

* Every following property added after the category definition will be a part
  of the category. 

* ``PROPERTY_USAGE_CATEGORY`` indicates that the property should be treated as a
  script category specifically, so the type ``TYPE_NIL`` can be ignored as it
  won't be actually used for the scripting logic, yet it must be defined anyway.

Grouping properties
    ----------------------------------------------------------------------------

A list of properties with similar names can be grouped.
::

```py
    func _get_property_list():
        var properties = []
        properties.append({
            name = "Rotate",
            type = TYPE_NIL,
            hint_string = "rotate_",
            usage = PROPERTY_USAGE_GROUP | PROPERTY_USAGE_SCRIPT_VARIABLE
        })

        # Example of adding to the group
        properties.append({
            name = "rotate_speed",
            type = TYPE_REAL
        })

        # This property won't get added to the group 
        # due to not having the "rotate_" prefix.
        properties.append({
            name = "trail_color",
            type = TYPE_COLOR
        })
        return properties
```

* ``name`` is the name of a group which is going to be displayed as collapsible
  list of properties;

* Every following property added after the group property with the prefix
  (which determined by ``hint_string``) will be shortened. For instance, 
  ``rotate_speed`` is going to be shortened to ``speed`` in this case.
  However, ``movement_speed`` won't be a part of the group and will not
  be shortened.

* ``PROPERTY_USAGE_GROUP`` indicates that the property should be treated as a
  script group specifically, so the type ``TYPE_NIL`` can be ignored as it
  won't be actually used for the scripting logic, yet it must be defined anyway.



## GDScript 2.0 exports
- [GDScript 1.0 exports](https://github.com/godotengine/godot-docs/blob/3.6/tutorials/scripting/gdscript/gdscript_exports.rst)
- [GDScript 2.0 exports](https://github.com/godotengine/godot-docs/blob/master/tutorials/scripting/gdscript/gdscript_exports.rst)

In Godot, class members can be exported. This means their value gets saved along
with the resource (such as the :ref:`scene <class_PackedScene>`) they're
attached to. They will also be available for editing in the property editor.
Exporting is done by using the ``@export`` annotation::

    extends Button

    @export var number = 5

In that example the value `5` will be saved and visible in the property editor.

An exported variable must be initialized to a constant expression or have a type specifier
in the variable. Some of the export annotations have a specific type and don't need the variable to be typed (see the
*Examples* section below).

One of the fundamental benefits of exporting member variables is to have
them visible and editable in the editor. This way, artists and game designers
can modify values that later influence how the program runs. For this, a
special export syntax is provided.

Exporting can only be done with built-in types or objects derived from the :ref:`Resource class <class_Resource>`.

.. note::

    Exporting properties can also be done in other languages such as C#.
    The syntax varies depending on the language. See :ref:`doc_c_sharp_exports`
    for information on C# exports.

Basic use
    ----------------------------------------------------------------------------

If the exported value assigns a constant or constant expression,
the type will be inferred and used in the editor.

::

    @export var number = 5

If there's no default value, you can add a type to the variable.

::

    @export var number: int

Export works with resource types.

::

    @export var character_face: Texture
    @export var scene_file: PackedScene

There are many resource types that can be used this way, try e.g.
the following to list them:

::

    @export var resource: Resource

Integers and strings hint enumerated values.

::

    # Editor will enumerate as 0, 1 and 2.
    @export_enum("Warrior", "Magician", "Thief") var character_class

If type is String, editor will enumerate with string names.

::

    @export_enum("Rebecca", "Mary", "Leah") var character_name: String

Named enum values
    ----------------------------------------------------------------------------

Editor will enumerate as THING_1, THING_2, ANOTHER_THING.

::

    enum NamedEnum {THING_1, THING_2, ANOTHER_THING = -1}
    @export var x: NamedEnum

Strings as paths
    ----------------------------------------------------------------------------

String as a path to a file.

::

    @export_file var f

String as a path to a directory.

::

    @export_dir var f

String as a path to a file, custom filter provided as hint.

::

    @export_file("*.txt") var f

Using paths in the global filesystem is also possible,
but only in scripts in tool mode.

String as a path to a PNG file in the global filesystem.

::

    @export_global_file("*.png") var tool_image

String as a path to a directory in the global filesystem.

::

    @export_global_dir var tool_dir

The multiline annotation tells the editor to show a large input
field for editing over multiple lines.

::

    @export_multiline var text

Limiting editor input ranges
    ----------------------------------------------------------------------------

Allow integer values from 0 to 20.

::

    @export_range(0, 20) var i

Allow integer values from -10 to 20.

::

    @export_range(-10, 20) var j

Allow floats from -10 to 20 and snap the value to multiples of 0.2.

::

    @export_range(-10, 20, 0.2) var k: float

The limits can be only for the slider if you add the hints "or_greater" and/or "or_lesser".

::

    @export_range(0, 100, 1, "or_greater", "or_lesser")

.. TODO: Document other hint strings usable with export_range.

Floats with easing hint
    ----------------------------------------------------------------------------

Display a visual representation of the 'ease()' function
when editing.

::

    @export_exp_easing var transition_speed

Colors
    ----------------------------------------------------------------------------

Regular color given as red-green-blue-alpha value.

::

    @export var col: Color

Color given as red-green-blue value (alpha will always be 1).

::

    @export_color_no_alpha var col: Color

Nodes
    ----------------------------------------------------------------------------

Nodes can't be directly exported. Instead you need to export
a node path, then use that node path with `get_node()`

::

    @export var node_path: NodePath
    var node = get_node(node_path)

If you want to limit the types of nodes, you can use the @export_node_path annotation.

::

    @export_node_path(Button, TouchScreenButton) var some_button

Resources
    ----------------------------------------------------------------------------

::

    @export var resource: Resource

In the Inspector, you can then drag and drop a resource file
from the FileSystem dock into the variable slot.

Opening the inspector dropdown may result in an
extremely long list of possible classes to create, however.
Therefore, if you specify an extension of Resource such as:

::

    @export var resource: AnimationNode

The drop-down menu will be limited to AnimationNode and all
its inherited classes.

It must be noted that even if the script is not being run while in the
editor, the exported properties are still editable. This can be used
in conjunction with a :ref:`script in "tool" mode <doc_gdscript_tool_mode>`.

Exporting bit flags
    ----------------------------------------------------------------------------

Integers used as bit flags can store multiple ``true``/``false`` (boolean)
values in one property. By using the ``@export_flags`` annotation, they
can be set from the editor::

    # Set any of the given flags from the editor.
    @export_flags("Fire", "Water", "Earth", "Wind") var spell_elements = 0

You must provide a string description for each flag. In this example, ``Fire``
has value 1, ``Water`` has value 2, ``Earth`` has value 4 and ``Wind``
corresponds to value 8. Usually, constants should be defined accordingly (e.g.
``const ELEMENT_WIND = 8`` and so on).

Export annotations are also provided for the physics, render, and navigation 
layers defined in the project settings::

    @export_flags_2d_physics var layers_2d_physics
    @export_flags_2d_render var layers_2d_render
    @export_flags_2d_navigation var layers_2d_navigation
    @export_flags_3d_physics var layers_3d_physics
    @export_flags_3d_render var layers_3d_render
    @export_flags_3d_navigation var layers_3d_navigation

Using bit flags requires some understanding of bitwise operations.
If in doubt, use boolean variables instead.

Exporting arrays
    ----------------------------------------------------------------------------

Exported arrays can have initializers, but they must be constant expressions.

If the exported array specifies a type which inherits from Resource, the array
values can be set in the inspector by dragging and dropping multiple files
from the FileSystem dock at once.

The default value **must** be a constant expression.

::

    @export var a = [1, 2, 3]

Exported arrays can specify type (using the same hints as before).

::

    @export var ints: Array[int] = [1, 2, 3]

    # Nested typed arrays such as `Array[Array[float]]` are not supported yet.
    @export var two_dimensional: Array[Array] = [[1.0, 2.0], [3.0, 4.0]]

You can omit the default value, but it would then be ``null`` if not assigned.

::

    @export var b: Array
    @export var scenes: Array[PackedScene]

Arrays with specified types which inherit from resource can be set by
drag-and-dropping multiple files from the FileSystem dock.

::

    @export var textures: Array[Texture] = []
    @export var scenes: Array[PackedScene] = []

Packed type arrays also work, but only initialized empty:

::

    @export var vector3s = PackedVector3Array()
    @export var strings = PackedStringArray()

Setting exported variables from a tool script
    ----------------------------------------------------------------------------

When changing an exported variable's value from a script in
:ref:`doc_gdscript_tool_mode`, the value in the inspector won't be updated
automatically. To update it, call
:ref:`notify_property_list_changed() <class_Object_method_notify_property_list_changed>`
after setting the exported variable's value.

Advanced exports
    ----------------------------------------------------------------------------

Not every type of export can be provided on the level of the language itself to
avoid unnecessary design complexity. The following describes some more or less
common exporting features which can be implemented with a low-level API.

Before reading further, you should get familiar with the way properties are
handled and how they can be customized with
:ref:`_set() <class_Object_method__get_property_list>`,
:ref:`_get() <class_Object_method__get_property_list>`, and
:ref:`_get_property_list() <class_Object_method__get_property_list>` methods as
described in :ref:`doc_accessing_data_or_logic_from_object`.

.. seealso:: For binding properties using the above methods in C++, see
             :ref:`doc_binding_properties_using_set_get_property_list`.

.. warning:: The script must operate in the ``tool`` mode so the above methods
             can work from within the editor.
