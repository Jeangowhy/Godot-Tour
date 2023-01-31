
## Godot Docs 官方文档阅读指南
- [动画师救生手册 - 动画十二原则](https://www.bilibili.com/video/BV1x54y1e7J9)
- [GAMES101-现代计算机图形学入门-闫令琪](https://www.bilibili.com/video/BV1X7411F744/)
- [龚大的上帝视角看GPU教程](https://www.bilibili.com/video/BV1P44y1V7bu/)
- [The Book of Shaders](https://thebookofshaders.com/?lan=ch)
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
再附加到当前活动的场景树中，这不会触发节点卸载行为：

```py
# change sence
var cover = load("res://L1 Scene Tree/cover.tscn")
#get_tree().change_scene_to(cover)
#get_tree().change_scene("res://L1 Scene Tree/cover.tscn")

# sence as node
var acover: Node2D = cover.instance()
acover.position = self.rect_position
get_node("/root").add_child(acover)

# tween animation
var tween:SceneTreeTween = create_tween().set_trans(Tween.TRANS_ELASTIC)
tween.tween_property(acover, "modulate", Color.red, 3)
tween.tween_callback(acover, "queue_free")
```

所有 **Control** 子类者都具有 mouse_filter 属性，将其设置为 MOUSE_FILTER_STOP 就可以阻挡
鼠标事件穿透到后面的对象上，用来避免在某些情形下不会触发相应的事件。配合 **SceneTreeTween** 可以
创建转场动画效果。


可以在 3D 场景中使用 **CanvasLayer** 来显示 2D 节点内容，避免受到画布变换的影响，可以实现：

- Parallax Backgrounds: 视差效果，背景作为远景，相对前景内容移动较慢。
- UI: 游戏中的用户界面，或者 head-up display (HUD) ，它们应该固定在屏幕中，不随游戏世界变换。
- Transitions: 视觉变换，如渐变、混合效果，这些内容也固定位置。

在场景中添加 **WorldEnvironment** 节点，并创建一个 **Environment** 资源，设置背景属性：

- Background Mode 设置为 Canvas 模式；
- Background Canvas Max Layer 设置一个序数，层序小于这个值的 CanvasLayer 就会当作背景层；

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
            "shell_cmd": "%Godot% -s \"${file}\"",
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
    print("Hello!")
    quit()
```

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
进行信号绑定操作，包括添加参数绑定。

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

使用 InputMap 可以不考虑 Action 具体由什么设备触发，或者由多少个设备触发同一个 Action，同时
还可以实现运行时重新配置映射关系，根据用户喜好重新设置设备按键的功能。

就键盘输入而言，不同国家使用的键盘布局也不尽相同，按键物理位置分布有所差异。Godot 工程设置 Input Map
可以将以下 5 种输入事件映射到一个 Action 上：

- Key 键盘输入，与按键扫描码关联；
- Physical Key 键盘输入，与按键物理位置关联；
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



## UI 用户界面
- [User Interface(UI)](https://docs.godotengine.org/en/3.5/tutorials/ui/index.html)
- [BBCode in RichTextLabel](https://docs.godotengine.org/en/3.5/tutorials/ui/bbcode_in_richtextlabel.html)
- [Using Containers](https://docs.godotengine.org/en/3.5/tutorials/ui/gui_containers.html)
- [Introduction to GUI skinning](https://docs.godotengine.org/en/3.5/tutorials/ui/gui_skinning.html)
- [Bitmap Font Generator](https://www.angelcode.com/products/bmfont/)

官方提供了一个 Control Gallery 示范工程，用于演示各种控件、布局容器的使用，2D 控件支持主题设置，
定制控件外观非常方便。2D 对象使用 Anchors 模型进行图形的比例、多分辨率处理：

![Size and Anchors](https://docs.godotengine.org/en/3.5/_images/anchors.png)

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
除了四个边角的部分不缩放，居中的这块，和上下左右 4 块可以自由绽放以匹配不同大小的内容。


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



## Godot Animation
- [Animation Retargeting in Godot 4.0](https://godotengine.org/article/animation-retargeting-in-godot-4-0)
- [Movie Maker mode arrives in Godot 4.0](https://godotengine.org/article/movie-maker-mode-arrives-in-godot-4)
- [Creating movies](https://docs.godotengine.org/en/latest/tutorials/animation/creating_movies.html)
- [SceneTreeTween](https://docs.godotengine.org/en/stable/classes/class_scenetreetween.html)
- [Tween](https://docs.godotengine.org/en/stable/classes/class_tween.html)
- []()

！[Tween easing and transition types cheatsheet](https://raw.githubusercontent.com/godotengine/godot-docs/master/img/tween_cheatsheet.png)



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
- [Editor plugins](https://docs.godotengine.org/en/stable/tutorials/plugins/editor/index.html)
- [Conditionally Export Properties in Godot](http://kehomsforge.com/tutorials/single/gdConditionalProperty)
- [Import process](https://docs.godotengine.org/en/stable/tutorials/assets_pipeline/import_process.html)

Godot 自带的 GDScript 脚本和 Python 语法非常相似，但是在多线程支持上要好很多。

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

Godot Plugins 有多种类型：

- Editor plugins **EditorPlugin**
- Main screen plugins
- Import plugins **EditorImportPlugin**
- Spatial gizmo plugins **EditorSpatialGizmo**
- Inspector plugins **EditorInspectorPlugin**
- Visual Shader plugins **VisualShaderNodeCustom**

主屏插件通过编辑器插件的 **has_main_screen()**、**get_editor_interface ( )** 等方法实现，
配合 **EditorInterface** 接口类型对编辑器主界面进行扩展，像顶部的 2D、3D、Script、AssetLib 
一样，从整体上改变编辑器界面。因为 Godot IDE 界面就是使用引擎自身实现的，程序逻辑类似开发一个游戏。

另外，可视化着色器插件主要是通过 GDScript 脚本为 VisualShader 添加节点。

GDScript 脚本作为快速迭代开发的语言，它最大的优点就是使用上的便利，无编译时间开销，同时与 Godot
编辑器界面紧密结合，通过导出脚本符号，可以在编辑的属性检查器 Inspector 提供相应 GUI 控件操作。

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
    # local script as GDScript class
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


## GDScript grammar
- [GDScript grammar](https://docs.godotengine.org/en/stable/development/file_formats/gdscript_grammar.html)

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