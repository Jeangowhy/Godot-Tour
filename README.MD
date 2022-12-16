# Contents

[TOC]


## 🟡🟠 Godot Docs 官方文档阅读指南
- [动画师救生手册 - 动画十二原则](https://www.bilibili.com/video/BV1x54y1e7J9)
- [GAMES101-现代计算机图形学入门-闫令琪](https://www.bilibili.com/video/BV1X7411F744/)
- [GAMES202-高质量实时渲染](https://www.bilibili.com/video/BV1YK4y1T7yY/)
- [GAMES202-高质量实时渲染](https://sites.cs.ucsb.edu/~lingqi/teaching/games202.html/)
- [GAMES104-现代游戏引擎：从入门到实践-王希](https://www.bilibili.com/video/BV1J3411n7WT/)
- [CSD 15-462 Computer Graphics - Carnegie Mellon University](https://www.cs.cmu.edu/afs/cs/academic/class/15462-f11/www/)
- [龚大的上帝视角看GPU教程](https://www.bilibili.com/video/BV1P44y1V7bu/)
- [The Book of Shaders by Patricio Gonzalez Vivo & Jen Lowe](https://thebookofshaders.com/?lan=ch)
- [Godot Download](https://godotengine.org/download/windows)
- [Godot Demo Projects](https://godotengine.github.io/godot-demo-projects)
- [Godot Demo Projects](https://github.com/godotengine/godot-demo-projects)

要阅读好 Godot 官方文档，需要掌握文档的使用方法，并且最好有计算机图形学基础，掌握 Python 脚本语言
可以快速掌握 GDScript 脚本。

- [Overview of the interface](https://docs.godotengine.org/en/latest/_images/editor-vocabulary-overview.png)

Godot 除了自带的 GDScript 脚本外，通过模块扩展支持了多种语言开发，C# 支持需要下载集成 Mono 的版本，
推荐使用自带的 GDScript 脚本开发，它相当一个支持多线程的 Python，并且支持六种 match 分支匹配模式。

- Constant pattern
- Variable pattern
- Wildcard pattern
- Binding pattern
- Array pattern
- Dictionary pattern
- Multiple patterns

另外，提升动画艺术水平，学习一些动画原理很有必要，工具有 Spine、Blender、SketchBook、Krita、SAI 等等。

然而，还有一个较难的领域是现代 GPU 编程，即着色器程序开发，Godot 3.x 使用 OpenGL GLES 2/3，
未来 Godot 4.x 会使用 Vulkan。一个比较好的入门教材是 The Book of Shaders，尽管这是一个烂尾工程。

Godot 官方示范项目很赞，提供了许多基础功能的演示，Godot 3.x/4.x 版本分使用 master 或 4.0-dev 分支：

> git clone -b 4.0-dev --depth=1 git@github.com:godotengine/godot-demo-projects.git

> git clone --depth=1 git@github.com:godotengine/godot-docs.git


Godot 文档是非常人性化的，体现在以下几点：

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


## 🟡🟠 Godot Architecture 构架介绍
- [Introduction to Godot development](https://docs.godotengine.org/en/stable/development/cpp/introduction_to_godot_development.html)
- [Optimization using Servers](https://docs.godotengine.org/en/3.3/tutorials/optimization/using_servers.html)
- [Inheritance class tree](https://docs.godotengine.org/en/stable/development/cpp/inheritance_class_tree.html)
- [Overview of Godot's key concepts](https://docs.godotengine.org/en/stable/getting_started/introduction/key_concepts_overview.html)
- [Nodes and Scenes](https://docs.godotengine.org/en/stable/getting_started/step_by_step/nodes_and_scenes.html)
- [Using SceneTree](https://docs.godotengine.org/en/3.5/tutorials/scripting/scene_tree.html)
- [Using Viewports](https://docs.godotengine.org/en/3.5/tutorials/rendering/viewports.html)
- [Canvas layers](https://docs.godotengine.org/en/3.5/tutorials/2d/canvas_layers.html)
- [User Interface(UI)](https://docs.godotengine.org/en/3.5/tutorials/ui/index.html)
- [What were the motivations behind creating GDScript?](https://docs.godotengine.org/en/latest/about/faq.html#doc-faq-what-is-gdscript)
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

Godot 本身支持多平台，通过源代码 platform 目录下对应各平台的实现，detect.py 脚本则用于检测当前
支持的平台，主程序入口则是在 main 目录下，入口方法是 **Main::start()**。SceneTree 类型就是一个
MainLoop 子类型，代表了游戏中的主循环，它会在程序入口中执行。

- OS_Unix    <- OS
- OS_UWP     <- OS
- OS_Windows <- OS
- OS_X11     <- OS_Unix
- OS_OSX     <- OS_Unix
- OSIPhone   <- OS_Unix
- OS_Android <- OS_Unix
- OS_JavaScript <- OS_Unix

不同平台的入口会包装 OS 类，例如 OS_Windows，但是 Web 平台特殊一点，因为它运行在浏览器上。因为
大多数系统都是类 Unix 操作系统，所以除了 Windows 平台，几乎都包装为一个 OS_Unix 类型。操作系统
与窗口的交互消息全部通过 Notification 机制转达场景树。Godot IDE 本身就是一个 EditorNode 节点，
它也是基于 Godot 引擎开发的一个游戏，只不过这个游戏是用来开发其它游戏的。

以下是入口代码的流程摘要，演示了 UWP 平台下的入口运行基本流程。Android 平台窗口消息传递方式差别
较大，MainLoop 的方法包装到了不同的函数内：

```cpp
bool Main::start() {

    MainLoop *main_loop = nullptr;
    if (editor) {
        main_loop = memnew(SceneTree);
    };

    SceneTree *sml = Object::cast_to<SceneTree>(main_loop);

    if (!project_manager && !editor) { // game
        // ...
    }

    if (editor) {
        EditorNode *editor_node = nullptr;
        editor_node = memnew(EditorNode);
        sml->get_root()->add_child(editor_node);
    }

    OS::get_singleton()->set_main_loop(main_loop);
}

void OS_UWP::run() {
    if (!main_loop)
        return;

    main_loop->init();

    uint64_t last_ticks = get_ticks_usec();

    int frames = 0;
    uint64_t frame = 0;

    while (!force_quit) {
        CoreWindow::GetForCurrentThread()->Dispatcher->ProcessEvents(CoreProcessEventsOption::ProcessAllIfPresent);
        if (managed_object->alert_close_handle)
            continue;
        process_events();      // get rid of pending events
        if (Main::iteration()) // -> VisualServer tick()
            break;
    };

    main_loop->finish();
}
```

整个引擎的消息处理循环结构就是 while 循环，Main::iteration() 函数就是游戏循环中要处理的工作，
在这里会发送各种通知，让节点有处理的机会。在入口方法中，会判断当前的运行状态，根据是否在编辑器状态
执行不同的代码。 


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

场景树中可以添加的所有节点类型统一在源代码 scene 目录下：

- /scene/main 主要节点类型，包括 SceneTree、CanvasLayer、ViewPort、Node、Timer、HTTPRequest；
- /scene/gui 控件类型，包括 Control 及子类的实现，如文件对话框 FileDialog 等；
- /scene/2d  二维节点类型，包括 Node2D 及子类的实现；
- /scene/3d  三维节点类型，包括 Spatial 及子类的实现；
- /scene/animation  动画节点类型，包括AnimationPlayer、AnimationTree 等等；
- /scene/audio  音频播放节点类型，包括 AudioStreamPlayer；
- /scene/resource 资源节点类型，包括 Animation、AudioStreamPlaybackSample 等等；

和 UnrealEngine 这样的大型引擎不同，Godot 引擎没有将二维图形作为一个独立的模块包装，而是在更底层
架构了一个服务系统，以不同的服务器为音频、图形、物理及空间位置相结合的音频等提供相应的渲染服务。最后，
音频合成数据将送往系统的音频驱动器，视频则交由 OpenGL 或 Vulkan 接口进行渲染。

- VisualServer (RenderingServer) 可视渲染服务；
- Physics2DServer 二维物理引擎服务；
- PhysicsServer 三维物理引擎服务；
- SpatialSound2DServer 二维空间的音频服务；
- SpatialSoundServer 三维空间的音频服务；
- AudioServer 所有音频服务的最终于合成器；

节点类型本身不包含绘图逻辑，只是存储数据、功能逻辑以及用户交实现等等。因为节点类型众多，从音频到图形，
从网络到 AI 算法相关都有，也就不可能直接在节点类型中编写绘图等具体行为的实现代码，这些复杂的细节将
交由各种服务器类型实现。

2D 场景中，需要一个画布来绘制所有的视觉元素。而在 3D 中，所有可见对象都需要一个 scenario，它代表
可视的三维世界，通过 Spatial **get_world()** 方法访问。所有视觉元素都会绘制到 Viewport 上，
可以将其附加到场景树上，也可以使用渲染引擎 **viewport_create()** 方法实例化一个 Viewport 对象。
使用自定义场景或者画布时，通过 **viewport_set_scenario()**、**viewport_attach_canvas()** 
方法将它们附加到视口中，**scenario_create()** 创建场景。

所有三维对象都由相关资源和实例组成，可以是网格、粒子系统、灯光或任何其他 3D 对象。所以，VisualServer 
实质上就是实时的游戏渲染引擎，最新版本 Godot 4.x 中，名字也改为了 **RenderingServer**。为了渲染 
3D 资源，必须调用渲染引擎方法 **instance_set_base()** 将资源附加到渲染引擎实例上，还必须附加场景。


```py
    # Create a visual instance (for 3D).
    var instance = VisualServer.instance_create()
    # Set the scenario from the world, this ensures it
    # appears with the same objects as the scene.
    var scenario = get_world().scenario
    VisualServer.instance_set_scenario(instance, scenario)
    # Add a mesh to it.
    # Remember, keep the reference.
    mesh = load("res://mymesh.obj")
    VisualServer.instance_set_base(instance, mesh)
    # Move the mesh around.
    var xform = Transform(Basis(), Vector3(20, 100, 0))
    VisualServer.instance_set_transform(instance, xform)
```

引擎内部，所有资源都有一个 Resource ID (RID)，是服务器内部为了管理资源内存分配实现的句柄。服务器
内部几乎每个功能都需要 RID 来访问实际资源。大多数 Godot 节点和资源类型都包含来自服务器内部的 RID，
它们可以通过不同的函数获得。事实上，继承 Resource 的任何类型都可以转型为 RID。但并非所有资源都包含
RID，这种情况下，转型得到的结果为空。

- CanvasItem.get_canvas_item()
- CanvasLayer.get_canvas()
- Viewport.get_viewport_rid()


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

虽然当前活动场景树只有一个，但是可以使用 Godot 的自动加载功能，工程配置 AutoLoad 栏目中设置，
可以实现将其它场景、或者脚本加载到全局空间运行，例如背景音乐需要避免转场中断，可以在自动加载场景中
播放 BGM 即可以解决。


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



## 🟡🟠 Project Settings 项目配置
- [Multiple resolutions](https://docs.godotengine.org/en/3.5/tutorials/rendering/multiple_resolutions.html)
- [Setting up the project](https://docs.godotengine.org/en/3.5/getting_started/first_2d_game/01.project_setup.html)

Godot 项目设置中 display/window/stretch/mode 拉伸模式会影响画面的呈现：

如果设置 Stretch Mode = Viewport 意味着将根视口的大小精确设置为“项目设置 Display 配置中指定
的基本大小。调整窗口大小时，会缩放此视口以适合屏幕，除非设置了保留宽高比为 Stretch Aspect = keep。
使用像素精度游戏时，或者为了渲染到较低的分辨率以提高性能，此模式很有用。设置 2D 伸展模式，则可以保持
图像在不同显示屏幕下布局缩放的一致性。

![Stretch Mode](https://docs.godotengine.org/en/3.5/_images/stretch.png)


在高分屏设备中，默认情况下，操作系统会认为 Godot 项目是 DPI 无关的。因为操作系统的 DPI 回退缩放
比应用程序内做缩放要快很多，即便使用 viewport 拉伸模式，所以这样做可以提高在低端系统上的性能。

不过操作系统的 DPI 回退缩放功能在全屏模式下并不好用。如果你想在 hiDPI 显示器下得到清晰的画面，又
或者想要支持全屏，那么推荐启用项目设置中的 Display > Window > Dpi > Allow Hidpi 以获得高清
画面。否则，可能在高分屏幕上看到像素化的画面，这是因为像素都按 DPI 比例缩放了。

注意，Allow Hidpi 选项仅在 Windows 和 macOS 上有效，其它平台会忽略这个选项。

Godot IDE 本身是打开这个选项的，与 DPI 相关的，可以在编辑器中设置缩放比例，高分屏默认为 200%。
在编辑器中运行项目时，只有在项目设置里启用 Allow Hidpi 才会让项目与 DPI 相关。

Godot 尚未支持手动设置 2D 缩放比例，所以无法在非游戏应用中支持 hiDPI。因此，推荐为非游戏应用禁用
Allow Hidpi 选项，操作系统会回退到低 DPI。


高分屏系统中，还可能出现调试游戏时，在没有启用 hiDPI 时，窗口位置超出右下角的情况。这种情况可以通过
修改编辑器配置 run/window_placement 改变窗口位置，默认是居中，是启用高分屏支持就没有问题。

虽然当前活动场景树只有一个，但是可以使用 Godot 的自动加载功能，工程配置 AutoLoad 栏目中设置，
可以实现将其它场景、或者脚本加载到全局空间运行，例如背景音乐需要避免转场中断，可以在自动加载场景中
播放 BGM 即可以解决。

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

VSync 垂直同步信号，又称场同步，显示器完整显示一个画面时产生的一个同步信号，可用于和 GPU 协作用途。
在旧式的 Cathode Ray Tube (CRT) 阴极射线显像管式显示中，一幅画面的显示需要电子枪从左到右，从上
到下，完整地扫描一遍显示屏才算完成，电子枪由高压电驱动发射电子束击打屏幕上的荧光点显示相应的图像。

游戏中打开垂直同步可以使得画面平滑、稳定，因为游戏画面的渲染需要等待显示器的同步信号。而关闭垂直同步，
则可以明显提高帧数，在高端设备上可以获得更快的速度，但是这可能带来图像不稳定的问题。一般图形引擎会
使用双缓冲区技术 Double buffering，即一个缓冲区连接到显示作为当前显示图像的数据源，另一个缓冲区
则作为下一帧图像的渲染输出缓冲区。在关闭 Vsync 的情况下，高端设备可能渲染好了画面，但显示器还示来得
及调用，又开发下一帧图像的渲染了。而下一帧图面又不一定完整，这就导致画面有断裂的现象。

FPS 低于游戏设计时，可能会有输入延迟和卡顿。在需要快速反应和复杂输入的游戏中，输入延迟尤其令人恼火。

为了提高设备性能厂家也在硬件上不断改良 VSync 技术：

- Adaptive VSync 由 Nvidia 发起，会根据监视到的 FPS 帧率来决定是否启用 VSync。
- Fast Sync 由 Nvidia 发起的更高级的自适应垂直同步形式，在必要时启用 VSync，并添加自动三重缓冲。
- Enhanced Sync 由 AMD 发起，会在帧率低于显示刷新率时禁用 VSync。

另外，还有 Nvidia 的 G-Sync 和 AMD 的 FreeSync，这两种 GPU 技术都可以将刷新率和数据与 GPU 
的帧速率同步。这些公司希望解决 VSync 的问题，特别是图像精度和均匀性，以及撕裂。但它们要求  GTX 1050
以及 AMD Radeon RX 200 级别以上的显卡。




## 🟡🟠 MT Downloader
- [Requests: HTTP for Humans](https://requests.readthedocs.io/en/latest/)

一个 Python 实现的多线程下载器，将链接地址复制到粘贴板上，执行它就会自动下载文件并保存到当前目录。
需要安装 clipboard 模块，使用 pip install clipboard 命令安装。

尽管 Python 有一个全局锁，不能并行多线程运行，但是在多线程下的程序也有各种问题需要注意的，比如，
print 函数打印信息到控制台上，尽管这个函数本身是线程安全的，但是可能因为线程切换导致缓冲区被破坏
而输出一些奇怪的字符，包括 NULL 字符，应该在打印操作后执行 flush 清空缓冲区，以免输出内容被破坏。

```py
import os
import clipboard
import requests
import threading
import concurrent.futures
import sys
import re
import pathlib

thread_local = threading.local()

def pagelist(items):
    for line in items:
        if not line:
            continue
        p = line.split()[-1].replace("P","")
        page = int(int(p) / 3) + 1
        url = line.split()[0]
        print(url)
        for no in range(page):
            print(url.replace(".html", "_%s.html" % no))

def checkfile(items):
    for item in items:
        file = item.split("/")[-1]
        if not item or os.path.exists(file):
            continue
        print(item)

def checkalbum(items):
    albumsum = 0
    error = 0
    for item in items:
        if not item:
            continue
        p = int(item.split()[-1].replace("P", ""))
        id = item.split('/')[-1].split('.')[0]
        match = pathlib.Path().cwd().glob("%s*" % id)
        count = len(sorted(match))
        state = "===Done!" if p == count else "---Miss!"
        print(state, item, " <== ", count)
        albumsum += p
        error += p - count
    print("Album: %d/%d,  error: %d " %((albumsum-error), albumsum, error))

def default_filter(content, url):
    root = "/".join(url.split("/")[:3])
    lines = content.decode().split('\r\n')
    contents = ""
    for line in lines:
        if len(contents)>0 and re.search(r"</?div", line) :
            break
        elif line.startswith('<p align="center">') or line.startswith('<div class="content"><p') or contents:
            contents += line
    match = re.findall(r'https?://[^" ]+', contents.replace('src="/', 'src="%s/' % root))
    for m in match:
        print("%s#/%s" %(m, url.split('/')[-1].replace("html","jpg")))
    sys.stdout.flush()
    return None #s.encode()


def argument(name):
    if "filter" in sys.argv:
        return ""
    for a in sys.argv[1:]:
        if a.startswith("%s=" % name):
            return a.replace("%s=" % name, "")
    return None

def content_filter(content, url):
    filter = argument("filter")
    if None == filter:
        return content
    elif "" == filter:
        return default_filter(content, url)
    else:
        lines = content.decode().split('\n')
        for line in lines:
            if line.find(f"{filter}") > -1:
                print(line) 
        return None

def get_session():
    if not hasattr(thread_local, "session"):
        thread_local.session = requests.Session()
    return thread_local.session


def download(url):
    session = get_session()
    headers = {
        'Accept-Encoding': 'gzip, deflate',
        'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36'
    }
    try:
        res = session.get(url, headers=headers)
        if not res.ok or res.text.find("页面出错")>-1:
            return print(url, " status", res.status_code, res.reason)
        save(url.split('/')[-1], res.content, url)
    except Exception as ex:
        print("%s %s" %(url, type(ex))) # class.__class__

def save(name, content, url):
    content = content_filter(content, url)
    if type(content) is not bytes:
        return None
    fd = os.open(name, os.O_BINARY|os.O_RDWR|os.O_CREAT)
    ret = os.write(fd, content)
    os.close(fd)
    print(['# save to: ', name, ret, content[:9]])
    # fd = open(name, "wb")
    # ret = fd.write(content)
    # fd.flush()
    # fd.close()

def download_all(urls):
    with concurrent.futures.ThreadPoolExecutor(max_workers=20) as executor:
        executor.map(download, urls)


if __name__ == "__main__":
    txt = clipboard.paste()
    items = txt.split('\r\n')
    if "checkfile" in sys.argv:
        checkfile(items)
    elif "pagelist" in sys.argv:
        pagelist(items)
    elif "checkalbum" in sys.argv:
        checkalbum(items)
    else:
        download_all(items)
```


## 🟡🟠 GDNative C++ 开发
- [Godot API Headers](https://github.com/godotengine/godot-headers)
- [godot-cpp](https://github.com/godotengine/godot-cpp)
- [GDNative demos](https://github.com/godotengine/gdnative-demos) 
- [GDNative C++](https://docs.godotengine.org/en/latest/tutorials/scripting/gdnative/index.html)
- [Custom modules in C++](https://docs.godotengine.org/en/stable/development/cpp/custom_modules_in_cpp.html)
- [Godot Compiling](https://docs.godotengine.org/en/stable/development/compiling/index.html)
- [Godot Engine Download](https://downloads.tuxfamily.org/godotengine/)
- [Godot Engine – Multi-platform 2D and 3D game engine](https://github.com/godotengine/godot/releases)
- [Godot Rust bindings - GDNative and GDExtension APIs](https://godot-rust.github.io/)
- [Platform Support](https://doc.rust-lang.org/nightly/rustc/platform-support.html)

通常，在产品需要快速迭代前期开发阶段，GDScript 主要的开发语言工具，只有在需要处理性能瓶颈问题时，
或者有潜在性能瓶颈的功能需要处理，才会考虑使用 C/C++ 或者 Rust 等语言进行静态编译，以获得高性能
模块，这当然是以软件结构复杂性为代价的。

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


Godot 4.x 引入 GDExtension 作为 GDNative 的替代模块，或者说是 GDNative 应用层的重构版本，
扩展的目标还为了减轻给 Godot 引擎开发插件的难度。GDExtension 是 C API，提供方法注册动态库中的类。
注册后的类，就可以供 Godot 引擎使用，因为是平台编译的共享库，所以能更好地集成到引擎内。配合现有的
godot-cpp 库，可以非常方便地使用 C++ 开发静态编译的模块。

    git clone --depth=1 git@github.com:godot-rust/book
    git clone --depth=1 git@github.com:godot-rust/gdnative
    git clone --depth=1 git@github.com:godot-rust/gdextension

当然，使用 Rust 语言绑定也是可行的方案。Rust 有望成为 C++ 的替代者，它的编程思想与 C++ 绝然不同：
只要能被证明是正确代码的才被允许，而 C++ 则是允许任何不能证明是错误的代码。

Rust 编译脚本中，需要根据具体情况添加 C++ 头文件的目录，因为 godot-rust 绑定依赖 godot-headers，
这些 C/C++ 头文件需要通过 Rust FFI 接口绑定，Rust 中常用的 API 绑定工具有以下这些：

- `bindgen` automatically generates Rust FFI bindings to C (and some C++) libraries.
- `cbindgen` creates C/C++11 headers for Rust libraries which expose a public C API.
- `cpp` rust-cpp - Embed C++ code directly in Rust.

其中，gdnative-sys 这个模块会包装 godot-headers，它会依赖一部分平台相关的头文件，可以直接修改
buider.rs 编译脚本，添加 clang_arg 指定编译器参数 -I 来指定头文件路径，但不推荐直接修改。

交叉编译涉及问题很多，通常根据当前平台的架构来编译是容易通过的，可以使用 rustup 查询当前的平台构架
及工具链。即使在交叉编译时，bindgen 也需要访问平台标头以了解平台的类型定义么。gdnative syscrate
尝试根据平台检测头文件路径，也许可以通过 C_INCLUDE_PATH 环境变量提供自定义路径。

```sh
> rustup toolchain install stable
> rustup toolchain install stable-x86_64-pc-windows-gnu
> rustup toolchain list
stable-x86_64-pc-windows-msvc (default)
stable-x86_64-pc-windows-gnu
> rustc --print target-list
...
x86_64-pc-windows-gnu
x86_64-pc-windows-gnullvm
x86_64-pc-windows-msvc
...
> cargo build --target=x86_64-pc-windows-msvc
```

```rust
let mut builder = bindgen::Builder::default()
    .header("godot_headers/gdnative_api_struct.gen.h")
    .allowlist_type("godot.*")
    .allowlist_function("godot.*")
    .allowlist_var("godot.*")
    .allowlist_type("GDNATIVE.*")
    .derive_default(true)
    .ignore_functions()
    .size_t_is_usize(true)
    .ctypes_prefix("libc")
    // .clang_arg("-IC:/mingw/include")
    .clang_arg("-IC:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.18362.0\\ucrt")
    .clang_arg("-IC:\\Program Files (x86)\\Microsoft Visual Studio\\2019\\Community\\VC\\Tools\\MSVC\\14.26.28801\\include")
    .clang_arg(format!("-I{}/godot_headers", manifest_dir));
```

错误的交叉编译配置，可以会导致类型不匹配等问题：

    error[E0308]: mismatched types - types differ in mutability


Rust 中使用 `cpp` crate 定义的 `cpp!` 宏来嵌入 C++ 代码，它通过获取所有的内联 C++ 代码并将
其写入一个单独的 cpp 文件来实现这一点，该文件将被编译为 Rust crate 的最终目标代码。

当将 Rust 库绑定到 C/C++ 时，核心逻辑层和 FFI 层之间应该存在明显的分离。在做好的情况下，FFI 代码
应该在单独的 crate，因此设计 Rust API 不会受到 FFI 的太多影响，并且选择可变性修饰符变得更加容易。

Rust 编译生成的库文件类型有以下这些：

- **lib** — Generates a library kind preferred by the compiler, currently defaults to rlib.
- **rlib** — A Rust static library.
- **staticlib** — A native static library.
- **dylib** — A Rust dynamic library.
- **cdylib** — A native dynamic library.
- **bin** — A runnable executable program.
- **proc-macro** — Generates a format suitable for a procedural macro library that may be loaded by the compiler.



## 🟡🟠 CLI 命令行工具
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



    Godot Engine v4.0.beta7.official.0bb1e89fb - https://godotengine.org
    Free and open source software under the terms of the MIT license.
    (c) 2007-2022 Juan Linietsky, Ariel Manzur.
    (c) 2014-2022 Godot Engine contributors.

    Usage: Godot_v4.0-beta7_win64.exe [options] [path to scene or 'project.godot' file]

    General options:
      -h, --help                                   Display this help message.
      --version                                    Display the version string.
      -v, --verbose                                Use verbose stdout mode.
      -q, --quiet                                  Quiet mode, silences stdout messages. Errors are still displayed.

    Run options:
      --, ++                                       Separator for user-provided arguments. Following arguments are not used by the engine, but can be read from `OS.get_cmdline_user_args()`.
      -e, --editor                                 Start the editor instead of running the scene.
      -p, --project-manager                        Start the project manager, even if a project is auto-detected.
      --debug-server <uri>                         Start the editor debug server (<protocol>://<host/IP>[:<port>], e.g. tcp://127.0.0.1:6007)
      --quit                                       Quit after the first iteration.
      -l, --language <locale>                      Use a specific locale (<locale> being a two-letter code).
      --path <directory>                           Path to a project (<directory> must contain a 'project.godot' file).
      -u, --upwards                                Scan folders upwards for project.godot file.
      --main-pack <file>                           Path to a pack (.pck) file to load.
      --render-thread <mode>                       Render thread mode ('unsafe', 'safe', 'separate').
      --remote-fs <address>                        Remote filesystem (<host/IP>[:<port>] address).
      --remote-fs-password <password>              Password for remote filesystem.
      --audio-driver <driver>                      Audio driver ['WASAPI', 'Dummy'].
      --display-driver <driver>                    Display driver (and rendering driver) ['windows' ('vulkan', 'opengl3'), 'headless' ('dummy')].
      --rendering-method <renderer>                   Renderer name. Requires driver support.
      --rendering-driver <driver>                  Rendering driver (depends on display driver).
      --gpu-index <device_index>                   Use a specific GPU (run with --verbose to get available device list).
      --text-driver <driver>                       Text driver (Fonts, BiDi, shaping)
      --tablet-driver <driver>                     Pen tablet input driver.
      --headless                                   Enable headless mode (--display-driver headless --audio-driver Dummy). Useful for servers and with --script.
      --write-movie <file>                         Run the engine in a way that a movie is written (by default .avi MJPEG). Fixed FPS is forced when enabled, but can be used to change movie FPS. Disabling vsync can speed up movie writing but makes interaction more difficult.
      --disable-vsync                              Force disabling of vsync. Run the engine in a way that a movie is written (by default .avi MJPEG). Fixed FPS is forced when enabled, but can be used to change movie FPS.

    Display options:
      -f, --fullscreen                             Request fullscreen mode.
      -m, --maximized                              Request a maximized window.
      -w, --windowed                               Request windowed mode.
      -t, --always-on-top                          Request an always-on-top window.
      --resolution <W>x<H>                         Request window resolution.
      --position <X>,<Y>                           Request window position.
      --single-window                              Use a single window (no separate subwindows).
      --xr-mode <mode>                             Select XR mode (default/off/on).

    Debug options:
      -d, --debug                                  Debug (local stdout debugger).
      -b, --breakpoints                            Breakpoint list as source::line comma-separated pairs, no spaces (use %20 instead).
      --profiling                                  Enable profiling in the script debugger.
      --gpu-profile                                Show a GPU profile of the tasks that took the most time during frame rendering.
      --gpu-validation                             Enable graphics API validation layers for debugging.
      --gpu-abort                                  Abort on graphics API usage errors (usually validation layer errors). May help see the problem if your system freezes.
      --remote-debug <uri>                         Remote debug (<protocol>://<host/IP>[:<port>], e.g. tcp://127.0.0.1:6007).
      --debug-collisions                           Show collision shapes when running the scene.
      --debug-paths                                Show path lines when running the scene.
      --debug-navigation                           Show navigation polygons when running the scene.
      --debug-stringnames                          Print all StringName allocations to stdout when the engine quits.
      --frame-delay <ms>                           Simulate high CPU load (delay each frame by <ms> milliseconds).
      --time-scale <scale>                         Force time scale (higher values are faster, 1.0 is normal speed).
      --disable-render-loop                        Disable render loop so rendering only occurs when called explicitly from script.
      --disable-crash-handler                      Disable crash handler when supported by the platform code.
      --fixed-fps <fps>                            Force a fixed number of frames per second. This setting disables real-time synchronization.
      --print-fps                                  Print the frames per second to the stdout.

    Standalone tools:
      -s, --script <script>                        Run a script.
      --check-only                                 Only parse for errors and quit (use with --script).
      --export-release <preset> <path>             Export the project in release mode using the given preset and output path. The preset name should match one defined in export_presets.cfg.
                                                   <path> should be absolute or relative to the project directory, and include the filename for the binary (e.g. 'builds/game.exe').
                                                   The target directory must exist.
      --export-debug <preset> <path>               Export the project in debug mode using the given preset and output path. The preset name should match one defined in export_presets.cfg.
      --export-pack <preset> <path>                Export the project data only using the given preset and output path. The <path> extension determines whether it will be in PCK or ZIP format.
      --convert-3to4 [<max_file_kb>] [<max_line_size>]              Converts project from Godot 3.x to Godot 4.x.
      --validate-conversion-3to4 [<max_file_kb>] [<max_line_size>]  Shows what elements will be renamed when converting project from Godot 3.x to Godot 4.x.
      --doctool [<path>]                           Dump the engine API reference to the given <path> (defaults to current dir) in XML format, merging if existing files are found.
      --no-docbase                                 Disallow dumping the base types (used with --doctool).
      --build-solutions                            Build the scripting solutions (e.g. for C# projects). Implies --editor and requires a valid project to edit.
      --dump-gdextension-interface                 Generate GDExtension header file 'gdnative_interface.h' in the current folder. This file is the base file required to implement a GDExtension.
      --dump-extension-api                         Generate JSON dump of the Godot API for GDExtension bindings named 'extension_api.json' in the current folder.
      --startup-benchmark                          Benchmark the startup time and print it to console.
      --startup-benchmark-file <path>              Benchmark the startup time and save it to a given file in JSON format.




## 🟡🟠 Signals & Notifications 信号与消息
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


## 🟡🟠 InputMap 用户输入与映射
- [User Inputs](https://docs.godotengine.org/en/3.5/tutorials/inputs/index.html)


现代的游戏输入硬件非常丰富，三大游戏平台分别是：

- PC Game 台式机游戏；
- Console Game 主机游戏，如 PS2、XBox 等；
- Web Game 网页游戏，以浏览器页面为载体；

可用的输入设备也是五花八门，有传统的键盘、Joystick、Gamepad，也有仿真赛车方向盘，甚至是触屏虚拟手柄，
Godot 就提供了一个 TouchScreenButton 用于触摸屏的输入。对于一个支持多端开发的游戏引擎，这么多的
输入设备，如果直接硬编码，会给后期带来各种适配麻烦。而在输入与游戏应用之间设置一个映射层，可以很好地解耦。
用户操作硬件产生各种 InputEvent，通过 InputMap 设置相应的 Action，在游戏逻辑中直接使用 Action 
作为用户输入，不同的 Action 由什么硬件产生就不再需要开发者关注。只需要设置好 Action 与 InputEvent 
的映射关系，用户操作按映射关系产生相应的动作。

![Input Event Flow](https://docs.godotengine.org/en/3.5/_images/input_event_flow.png)

用户转入会先进入标准 `Node._input()` 函数，任何节点中覆盖这个函数就可以处理用户的所有输入，只要
还没有使用 `Node.set_process_input()` 禁用输入处理。如果任何用户输入的是正要处理的事件，可以
调用 SceneTree 或 Viewport 的 `set_input_as_handled()` 函数告诉引擎，这个事件已经被处理好，
不必再传播，这确保可以过滤所有感兴趣的事件。对于游戏输入，`Node._unhandled_input()` 通常更适合，
因为它允许 GUI 拦截事件。

标准输入处理后，事件会流向 GUI 事件处理，控件可以在 `Control._gui_input()` 接收到 GUI 事件，
gui_input 信号会在此发布。如果控件处理好事件，应该调用 `Control.accept_event()` 避免事件再
传播。GUI 控件可以设置 mouse_filter 属性来避免鼠标穿透到下一层的控件上。

如果，前两步中还没有表明事件被处理好，事件就会送入 `_unhandled_input()` 及 `_unhandled_key_input()` 
函数中处理，只要没有通过以下方法禁用。

    void set_process_unhandled_input(const bool enable);

    void set_process_unhandled_key_input(const bool enable);

处理未经处理的输入是全屏游戏事件处理的理想选择，因此当 GUI 处于活动状态时，它们不会被接收。如果到
这一步还没表示该事件已经被处理，在启用 Object Picking 的情况下将摄影机指定给视口，则事件将会
投射到光线方向的物理世界。对于根视口，也可以在项目设置中启用此选项，如果此光线击中对象，它将调用
`CollisionObject._input_event()` 函数，默认情况下，主体会接收此回调，但区域不会，可以通过
区域属性进行配置。key_input 只包含键盘事件，鼠标、手柄按键、轴运动等不属于键盘事件。

最后，如果事件未处理，它将被传递到树中的下一个视口，否则将被忽略。GUI 事件也会在场景树中向上传播，
但由于这些事件针对特定控件，因此只有目标控件节点的直系上级节点才能接收事件。

需要注意，事件在节点中的传播是从后面、深层往根节点传播的，当一个节点调用 `accept_event()` 或者
`set_input_as_handled()` 函数后，只能阻止上层节点接收相应的事件，而不能阻止下层或后面的节点
接收事件。同时，节点还可以直接在 process 等函数中调用 Input 主动轮询输入状态，而不必被动接收事件。

![reverse depth-first order](https://docs.godotengine.org/en/3.5/_images/input_event_scene_flow.png)


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



## 🟡🟠 IO & Serialization 序列化与存档读档
- [Input and Output (I/O)](https://docs.godotengine.org/en/3.6/tutorials/io/index.html)

Godot 使用 res:// 和 user:// 两个文件路径协议，前者表示工程内部资源路径，后者表示用户操作系统
资源路径。游戏存档、用户配置等就需要使用后者，可以使用 OS.get_executable_path() 提供的路径将，
保存数据到相对于主程序的目录中。

典型的系统中用户数据默认路径位置如下：

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

Godot 提供了 File 和 Directory 对象处理文件读写，可以通过它们来创建、删除文件或目录，以下简单地
演示如何将节点数据保存到文件，以及读取后再恢复到节点上：

```py
var path = "user://save_game.json"

func _ready():
    save_button.connect("pressed", self, "save_game")
    load_button.connect("pressed", self, "load_game")


func save_game():
    # game state data
    var content = []
    for node in get_tree().get_nodes_in_group("Persist"):
        if node.get('text') == null:
            print("Node has no data, ignore it: ", node)
            continue
        var item = {
            path = $bg/note.get_path(),
            text = $bg/note.text
            }
        content.append(item)
    var file = File.new()
    var err = file.open(path, File.WRITE)
    if err:
        $bg/note.text = "Fail to open file: " + path
    file.store_string(to_json(content))
    file.close()
    $bg/note.text = "Save game to file:" + path

func load_game():
    var file = File.new()
    file.open(path, File.READ)
    var content = file.get_as_text()
    file.close()
    for variant in parse_json(content):
        print("load: ", variant)
        get_node(variant.path).text = variant.text
    return content


func _test_json():
    var path = "user://path/to/save.json"
    var file = File.new()
    var dir = Directory.new()
    if not file.file_exists(path):
        dir.make_dir_recursive(path)
        dir.remove(path)
        var json: String = to_json({NodePath=self.get_path()})
        var err = file.open(path, File.WRITE)
        if err != OK:
            return print("fail to write file: ", path)
        file.store_string(json)
        print("json save to file: ", path)
    else:
        file.open(path, File.READ)
        var json = file.get_as_text()
        var variant = parse_json(json)
        print("json read from file: ", path, "\n", variant)
    file.close()
```



## 🟡🟠 UI 用户界面
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

Godot 3.x 升级到 4.x 后，Anchor & Margin 两个属性合并，并使用 Anchors Preset 预配置替代。

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




## 🟡🟠 Maths 图形学的数学
- [Vector math](https://docs.godotengine.org/en/stable/tutorials/math/vector_math.html)
- [Viewport and canvas transforms](https://docs.godotengine.org/en/3.5/tutorials/2d/2d_transforms.html)
- [Matrices and transforms](https://docs.godotengine.org/en/stable/tutorials/math/matrices_and_transforms.html)
- [Using 3D transforms](https://docs.godotengine.org/en/3.5/tutorials/3d/using_transforms.html)
- [Matrix Transform Demo](https://github.com/godotengine/godot-demo-projects/tree/master/misc/matrix_transform)
- [3blue1brown 线性代数的本质](https://www.bilibili.com/video/BV1ys411472E)
- [张筑生《数学分析新讲》（共三册）](http://fdjpkc.fudan.edu.cn/d201353/2015/0408/c17008a34495/page.htm)
- [GAMES101-现代计算机图形学入门-闫令琪](https://www.bilibili.com/video/BV1X7411F744/)
- [CMU 15-462/662 计算机图形学 Computer Graphics](https://www.bilibili.com/video/BV1QZ4y1K7ga)
- Mathematical Logic for Computer Science
- [Eigen - C++ template library for linear algebra](https://eigen.tuxfamily.org/index.php)

掌握线性代数的重要性在图形学中特别明显，不像一些算法库，开发好了就可以直接调用，完全不用考虑数学问题。
而图形学中，随处都需要使用数学去解决实际问题，比如角色的正面朝向，投掷武器前如何面向敌人，相机角度的
控制，如何跟随玩家的角度作变换，等等问题，都需要线性代码来解决。

线性代数 Linear Algebra 是一个解决线性问题的工具，从几何的观点去理解线性代数是一个能直观感受什么
是线性的本质。核心是线性空间和线性变换，而不是算行列式。

以下是 Jean Dieudonné 一段话：

> 尽管一批教授和教科书编者用关于矩阵的荒唐至极的计算掩盖了线性代数的简明性，这鲜有与之相较更为初等的理论。
>
> There is hardly any theory which is more elementary than linear algebra, in 
> spite of the fact that generations of professors and textbook writers hav 
> obscured its simplicity by preposterous calculations with matrices.
>
> -- Jean Dieudonné

代数思想是进入线性代码的起步，从实数的四则运算到符号的代入是一个分界线。数学才从等式方程、不等式，
Equations，Inequalities，进入代数时代。

代数的运算也同样遵守优先规则，这些规则简称为 BODMAS!

- **B** - Brackets first
- **O** - Orders (i.e. Powers and Square Roots, etc.)
- **DM** - Division and Multiplication (left-to-right)
- **AS** - Addition and Subtraction (left-to-right)

即先算括号，再算阶数（即幂和平方根等），然后除法和乘法（从左到右），最后加法和减法（从左到右）。

或者叫做 PEMDAS !

- **P** Parentheses first
- **E** Exponents (ie Powers and Square Roots, etc.)
- **MD** Multiplication and Division (left-to-right)
- **AS** Addition and Subtraction (left-to-right)




### 🟢🔵 Functions 函数
- 数学分析(全二卷)(第7版) by B.A.卓里奇
- 张筑生《数学分析新讲》（全三册）
- [Maths is fun - Algebra](https://www.mathsisfun.com/algebra/index.html)

数学上的函数概念其实是映射关系，当年引入苏联教材时翻译作函数有些令人费解，这个词意思应该是依赖关系。
说到函数就必需有集合 Sets，两个集合中的数，通过函数映射规则产生对应关系，如下图：

![单射、满射和双射](https://www.shuxuele.com/sets/images/function-mapping.svg)

图中，将一对多的情况列为不是函数的例子，但在是复变函数，即以复数作为自变量和因变量的函数，就存在一
对多的映射关系。对于 A、B 两个集合元素之间的映射存在各种情况：

- 一般函数映射特点：A 集合元素一对一映射 B 集合元素，B 集合有多余元素；
- 单射 **Injective**：A 集合元素一对一映射 B 集合元素，且没有多对一的情况；
- 满射 **Surjective**：B 集合元素在 A 集合中都有一个元素对应；
- 满射 **Bijective**：A 和 B 集合的元素一一对应，没有多余，没有重复；

比如，对于 A、B 集合分别为 {1, 2, 3} 和 {2, 4, 9}，映射规则为"平方"，即 f(x) = x²，，那么这
就是一个满射，即一一对应映射关系的函数：

- A 集合作为输入称为定义域 **Domain**；
- B 集合作为函数的实际输出称为值域 **Range**；
- 而函数可能的输出称为培域 **Codomain**；

所以，函数是按映射规则将输入集合的元素与输出集合的元素上关联的功能，如图，表达为 x 的函数等于 x 的平方。

![What is a functions?](https://www.mathsisfun.com/sets/images/function-fx-x2.svg)

闭包 **Closure** 性质是：对某个集合的成员进行一种运算，输出结果仍然是这个集合的成员，则该称该集合为
这个运算下的闭包。在编程语言中，闭包一词也作为术语在使用，并且常见，但是含义有所差别，编程上更多是指
引用自由变量的函数。从某种角度上讲，如果自由变量算作同一个集合中的输入，那么也不违反闭包的数学定义。

复合函数 Function Composition 是指将函数的输出作为另一个函数的输入，记作 (g º f)(x)，意思是
g(f(x))。

和几何可以变换一样，函数也可以变换，Function Transformations，例如：g(x) = x² 在直角坐标中
显示为一条经过原点的向上弯曲的二次曲线，变换为 g(x) = x² + C 形式后，它的曲线就沿 y 轴向上移动
C 个偏移量，如果 C 小于 0，则向下偏移。

![Function Transformations](https://www.mathsisfun.com/sets/images/function-translation-a.gif)

函数的复合与变换在图形学中经常发生，几乎在每一个着色器中都需要使用。

逆函数，或称反函数，Inverse Functions，即运算规则完全相反的函数，比如，f(x)=2x+3，那么反函数
就是 f⁻¹(y)=(y-3)/2，将 f(x) 的结果作为反函数的输入就可以得到 x，记作 f(x) 与 f⁻¹(y) 互为
反函数。又如，Reciprocal 数的倒数互为反函数，1/x <=> 1/y，又如 sin(x) <=> sin⁻¹(y) 互为
反函数，注意这个负一不是指数，是反函数标记。

注意，不是所有函数都有反函数，x² 只在 x >= 0 时才有反函数，小于 0 时，不能通过开方 √(x) 求解负值，
即竖直对称的函数都没有反函数。



### 🟢🔵 Trigonomery 三角函数
- [Maths is fun - Trigonometry](https://www.mathsisfun.com/algebra/trigonometry.html)
- [Maths is fun - Trigonometry zh_CN](https://www.shuxuele.com/algebra/trigonometry.html)
- [Trigonometry](https://www.math.net/trigonometry)

Trigonometry 三角函数这个西方术语词源来自希腊的三角学，trigonon + metron，即三角形 + 测量。
这也是三角函数的最初用途，用它来测量。那时测量的可能是一棵大树高度，也可能是测量天空的星星。

进入近代数学让数域扩展到复数，也让三角函数走上了封神之路。自从欧拉公式的出现，三角函数就和复数关联，
一些纯代数的东西也能导出三角函数的影子，尤其是在复变函数领域，三角函数简直泛滥，因为三角函数本质上
与圆有关，也间接的导致复变函数中 π 泛滥。傅里叶将三角函数推向了另一个方向，他提出任意周期函数 s 都
可以用三角函数去表示，所以可以用三角函数描述所有曲线，甚至用来绘图，这就是傅里叶级数。由于三角函数
通用于描述各种波，物理上的各种波都用三角函数表示，比如薛定谔的波函数，量子力学，三角函数都要凑个热闹。

1579年，韦达出版了《应用于三角形的数学定律》，从理论的层面定义分析了三角函数，在这本书中就出现的韦达
定理有让无数中学生头疼的和差化积，积化和差公式。

17 世纪是牛顿莱布尼兹创造微积分的世纪，也在这个世纪，笛卡尔提出了笛卡尔坐标系，从此三角函数就有了
属于自己的图像，费马提出了导数的概念，不久之后三角函数就有了导数，而且三角函数的导数的特殊性。

基础的正弦、余弦、正切函数，Sine，Cosine 和 Tangent 的正三角形定义如图所示，此外有单位圆定义方式：

![Trigonometry](https://www.mathsisfun.com/algebra/images/sin-cos-tan.svg)

在单位圆的定义中，斜边对应半径，对边对应于竖直边，邻近边则对应于贴紧 X 轴的边。沿逆时针方向旋转半径，
角度为正，顺时针旋转为负，使用弧度表示一周为 2π 弧度，而用角度表示一周为 360°。

- Sine 和 Cosine 的值域都是 [-1, 1]，周期都是 2π。
- Sine 在 -π/2 到 π/2 区间是递增，而 Cosine 在 -π 到 0 区间是递增。

![sine graph](https://www.mathsisfun.com/algebra/images/sine-graph.svg)
![cosine graph](https://www.mathsisfun.com/algebra/images/cosine-graph.svg)
![tangent graph](https://www.mathsisfun.com/algebra/images/tangent-graph.svg)

Tangent 正切函数是根据角度 α 求解对边与邻边的比值，而反向三角函数 atan 则反过来根据比值求角度。

    sin(α) = opposite side / hypotenuse    = a / h
    cos(α) = adjacent side / hypotenuse    = a / h
    tan(α) = opposite side / adjacent side = a / b

最早的勾股定理就是对直角三角形连长的研究结论，勾三股四弦五，指的是直角三角形的两直角边为 3、4，那么
斜边长为 5。国外称为毕达哥拉斯定理 Pythagoras theorem，即斜边长的平方等于两直角边的平方和。

![Unit circle](https://www.mathsisfun.com/geometry/images/unit-circle-xy.svg)

对于单位圆，unit circle，根据勾股定理可得以下恒等式：

    x² + y² = 1²  <=>  x² + y² = 1

在单位圆上，x = cos(θ) 且 y = sin(θ)，代入上式就可以得到最重要的一条三角函数恒等式，也是圆的方程：

    cos(θ)² + sin(θ)² = 1

因为圆的关系，在图形学上，经常需要使用三角函数来作旋转变换操作。


    勾股定理       a² + b² = c²        （只适用于直角三角形）
                     
    余弦定理       a² + b² − 2ab cos(C) = c²

    正弦定理       a/sin A = b/sin B = c/sin C



### 🟢🔵 Vectors 向量
- [Vectors](https://www.math.net/vector)
- [Vectors - Maths is fun](https://www.mathsisfun.com/algebra/vectors.html)
- [Vectors - 3Blue1Brown](https://www.3blue1brown.com/lessons/vectors)
- [Math Typography](https://bisqwit.iki.fi/jutut/typography.html)

向量 Vector 也称为欧几里得向量、几何向量、矢量，指具有大小（magnitude）和方向的量。与向量对应的
量叫做数量 Scalar，物理学中称标量，或者叫一维向量，数量只有大小，没有方向，如重量、时间等，英文
的速度用 speed 表示标量，而 velocity 表示向量，一般说平均速度是指 average speed。

数学上向量的规范表达有三种方式，代数表示、几何表示、坐标表示。几何图上为带箭头的线段，箭头表向量的方向，
线段长度代表向量的大小。代数符号表达记作黑体字母，如 **𝒂**、**𝒃**、**𝒖**、**𝒗**，书写时在字母顶上
加一小箭头“→”表示指向，如 u⃗  v⃗  w⃗  x⃗ y⃗。如果给定向量的起点（A）和终点（B），可将向量记作 AB 并于
顶上加箭头符号表示方向。在文档中，为了简化输入，就直接表示为 **AB**。

向量空间也称为线性空间，是集合的载体，标量可以被组织在一起。标量通常被认为是实数，也存在标量乘以复数。
向量空间是线性代数的主题，维度通过它们可以很好地表征，粗略地说，它指定了空间中独立方向的数量。无限维
向量空间在数学分析中自然出现，作为函数空间，其向量是函数。这些向量空间通常具有附加结构，可以是拓扑结构，
允许考虑接近度和连续性问题。

此外，还有第三种量，张量 Tensor，标量、向量是张量的特殊形式，没有方向分量的张量就是标量，有模有方向
的张量就是向量，如果有两个方向就是并矢、并向量。

标量、向量、矩阵、张量这 4 个概念是维度不断上升的关系，用点、线、面、体的概念来比喻解释会直观一点：

- 点 —— 标量（scalar）
- 线 —— 向量（vector）
- 面 —— 矩阵（matrix）
- 体 —— 张量（tensor）

张量理论是数学的一个分支学科，在力学中有重要应用，术语起源于力学，最初用来表示弹性介质中各点应力状态，
后来张量理论发展成为力学和物理学的一个有力的数学工具。

向量 Vector 是 2D 或 3D 世界中处理问题的基本工具，在图形学上经常将它当作方向指示器来使用，一般
不关心向量的起点，或者说根据需要给它一个起点坐标。归一化 Normalized 是矢量中经常出现的操作，它将
约束矢量的模长为 1，即**单位向量**就是长度为 1 的向量，Unit vectors。

根据勾股定理，向量的模可以表示如下，用两条竖线表示，在数学记号中，在向量符号两侧都使用双竖线：

    |a| = √( x² + y² )

单位向量还经常用作表示法线 normals，法向量就是垂直于曲面的单位向量，用来指示方向，在光照技术、物体
碰撞等等操作中都需要用它来解决后续响应。

笛卡尔向量是特殊的单位向量，指向和个轴向，对应于笛卡尔坐标系中的 x/y/z 轴： 

    i=[1,0,0]ᵀ      j=[0,1,0]ᵀ      k=[0,0,1]ᵀ

实际应用中为了简化运算，需要引入`基底` Basis Vectors 的概念，为每个轴上定义一个单位向量。也就是
建立坐标系统进等距分割数轴时，沿 x 轴分割的一等分记作沿 x 正方向的单位向量 i，正式书写时，它应该
上面加个盖帽。还有 y 轴上的单位向量 j，同样也应该在上面加个盖帽，但是这里为了方便打字省略了。

这样一来，向量相加和数乘就可以理解为，对各轴单位向量的缩放再相加，这个思想既重要又基础。

可以这样理解线性，在一个平面中选取两个向量，保持其中一个不变，另外一个任意伸缩，那么这两个向量相加的
结果就是扫过这个平面上的一条直线。

当两个向量都进行伸缩时，那么它们就会扫过整个平面，而这些变化中的向量集合成的平面就叫作`张成空间` 
Span space。例外的情况是，这两个向量的方向重叠时，它们张成空间是一条直线。

同样，在三维空间上的三个不同方向的向量，它们张成的空间就是三维空间的体积。只要其中有两个向量其线，
那么张成空间就压缩为平面，如果三向量都共线，张成空间就压缩为一条线。有个极端的情况，即向量都为 0 向量，
张成空间就是原点。

当一个维度的的向量的增加或数乘不能增加张成空间的维度时，也即称为`线性相关` Linearly dependent，
或者理解为这个向量约束在其它向量张成的空间内。原文是 dependent 原单是依赖、束缚的意思，中文的相关
一词略显松垮不严谨。当某向量的加入可以增加原有向量的张成空间的维度，就是非线性约束，即`线性不相关`
 Linearly independent。

当我们要考虑很多向量的时候，使用箭头表达向量的方式会让空间显得过于拥挤，可以使用简化的圆点来表示，
只要原点指向圆点的位置符合原先的向量方向即是等价的。



在 Godot 2D 环境下，坐标朝向如下图所示，屏幕左上角为原点，右、下为正向。

![Coordinate systems (2D)](https://docs.godotengine.org/en/3.5/_images/vector_xy1.png)

例如，从原点到坐标 (4, 3) 位置就可以用向量表示为 Vector2(4, 3)。

编写以下这样的一个 sayhello.gd 脚本，使用 godot.exe --no-window -s sayhello.gd 命令执行，
就可以得到脚本运行输出的结果，并不需要运行整个 Godot 编辑器：

```py
extends SceneTree

func _init():
    var a = Vector2 (2, 5) 
    var b = Vector2 (3, 1)
    var format = "Normalized vector %s is %s, "
    var angle = "angle of %s - %s is %d degree"
    print(format % [a, a.normalized()])
    print(angle % [a, b, (a - b).angle()*180/PI])
    print(angle % [b, a, (b - a).angle()*180/PI])
    print("dot(%s, %s) = %s " % [a, b,  a.dot(b)])
    quit()
# Output:
# Normalized vector (2, 5) is (0.371391, 0.928477), 
# angle of (2, 5) - (3, 1) is 104 degree
# angle of (3, 1) - (2, 5) is -75 degree
# dot((2, 5), (3, 1)) = 11 
```

Godot Vector2.angle() 方法返回的值是 [-π, π] 之间的弧度值，X 轴正向为 0 度，逆时针方向为正。

向量的加减运算，就是按分量进行标量的加减运算，在图形上等效于两个向量首尾连接在一起，终点就表示结果。
减法，相当于将分量乘以 -1 反转 180° 方向再相加。如下图，蓝色向量表示 **a**，绿色向量表示 **b**：

```py
# create a vector with coordinates (2, 5)
var a = Vector2(2, 5)
# create a vector and assign x and y manually
var b = Vector2()
b.x = 3
b.y = 1

# Adding vectors
var c = a + b  # (2, 5) + (3, 1) = (5, 6)
```

![Vector Addition](https://docs.godotengine.org/en/3.5/_images/vector_add1.png)

向量与标量积，则等效于多次相加。理解这些内容，就可以用向量来做游戏的中运动。用一个向量表示速度，例如，
上图中的 **b** 表示速度，每次运行时间间隔后，物体就会从 **a** 位置移到 **a+b** 位置上。要表达
加速度，也是同一个道理，只需要在间隔时间内将加速与速度相加，即得到当前的速度。

向的减法可以用来求方向，假设 tank 是玩家，robot 是对手，二者位置分别用 **A** 和 **B** 向量表示，
要确定从玩家指向对手的方向，只需向量减法，红色向量为 **C** 即表示方向，从当前玩家的位置往这个方向射击
或者投掷武器就可以击中对手：

![Pointing toward a target](https://docs.godotengine.org/en/3.5/_images/vector_subtract2.png)

由 A 指向 B，就需要用 B - A，按向量加法的思维去理解，则先将 A 反转 180° 再相加，得到的就是一个
从原点出发的表示方向的向量。注意，减法的顺序不能反，含义完全不同，C = B - A，等价于 A + C = B，
A - B = -C，所以，结果是反转 180°。记作，负号在哪方，箭头就由哪方往外，B - A 记作 B <- A。

向量乘法形式定义有三种：

- **Scalar multiplication** 最简单的是标量积量，相当于多次加法，结果还是向量；
- **Dot product** 点积，几何意义是求解两个同方向的向量的模长的数量积，结果是标量；
- **Cross product** 叉积，求解的是另一个向量，方向与当前向量平面相互垂直；

前面已经解析过标量积，点积结果也一样是标量，将两个同方向的向量的模长相乘。对于不同方向的向量，通过
余弦值可以求正交投影长度，即投影长度即可获得同方向上的分量，物理上用来计算合力和功：

    a · b = |a| × |b| × cos(θ)

除了点积的几何意义的计算方法，还有在高维度上更常用的通过坐标计算的方式，定义如下：A、B 都是 n 维向量，
，点积定义为 sum(aᵢbᵢ)，i 取值为范围 [1, n]。如何证明这种定义与向量的几何点积运算两者等价呢？使用
余弦定理，在平面上的两个向量 A、B，首尾连接即可以构成一个三角形。而两向量的坐标已知，三条边长可通过
坐标求得，将坐标代入余弦定理公式中，即可以证明两者等价关系。

给定两个向量坐标 v = [v₁, v₂] 和 w = [w₁, w₂]，计算点积为 v ∙ w = v₁w₁ + v₂w₂，表达更简洁。
例如，给定 v = [3, 5]ᵀ 和 w = [-2, 7]ᵀ，计算 v · w 和 v · v，上标 T 表示矩阵转置，行变列。

向量点积在图形学中一大用途就是利用点积结果来判断夹角的大小，向量自身的点积就是模的平方：

- 点积结果为 0 表示两者互相垂直；
- 点积结果大于 0 表示两者同向；
- 点积结果小于 0 表示两者反方向；

对于多维向量点积，也一样的计算方法。在游戏中利用点积，可以判断对手是否处于可视角度上。

![between two vectors](https://docs.godotengine.org/en/3.5/_images/vector_dot3.png)


向量叉积 a x b 是一个向量，其模长等于向量 a 和 b 组成的平行四边形的面积，且方向垂直于此平面：

![Cross product](https://www.mathsisfun.com/algebra/images/cross-product-area.svg)
![Cross product](https://img2018.cnblogs.com/i-beta/1046925/202002/1046925-20200204181223998-1486309.png)

使用右手定则确定叉积方向，使拇指、食指、中指相互垂直，侧拇指代表叉积指向，食指和中指分别代表 a 和 b。
根据点积和叉积的线性关系含义，又分别将它们称为 Inner product 内积、Outer product 外积。

在二维平面中，叉积可以用以下公式计算，使用夹角和单位向量：

    a × b = |a| |b| sin(θ) n

1. `|a|` is the magnitude (length) of vector a
2. `|b|` is the magnitude (length) of vector b
3. `θ` is the angle between a and b
4. `n` is the unit vector at right angles to both a and b

使用行列式计算二维向量叉积：

            | x₁ y₁ |
    a x b = |       | = x₁y₂ - y₁x₂
            | x₂ y₂ |

在二维空间不能表示的叉积，放在在三维空间中，都可以按以行列式的方式计算，假定向量起点为原点 (0,0,0)，
向量 a = (x₁, y₁, z₁) 和向量 b = (x₂, y₂, z₂)，那么外积计算可表示为：

            | i  j  k  |
    a x b = | x₁ y₁ z₁ | = (y₁z₂ - z₁y₂)i - (x₁z₂ - z₁x₂)j + (x₁y₂ - y₁x₂)k
            | x₂ y₂ z₂ |

向量叉积在图形学上的作用：

- 可以计算表面的法向量 `N = (a x b)/|a x b|`；
- 可以计算平行六面体的体积；
- 判断点是否在同一平面，一点在此平面的向量和法向量做点积即可以判断；



### 🟢🔵 Vector in Godot 向量的应用
- [Advanced vector math](https://docs.godotengine.org/en/3.5/tutorials/math/vectors_advanced.html)

单位向量作为法向量 Normal 使用时不仅可以用来指示方向，利用法向量还可以作各种应用，不限于以下这些：

- 通过法向量求点到面的距离；
- 通过法向量求碰撞动作响应方向；

假设有一个过原点的平面，法向如图所示：

![distance from the point to the plane](https://docs.godotengine.org/en/3.5/_images/tutovec11.png)
![distance from the point to the plane - Away from the origin](https://docs.godotengine.org/en/3.5/_images/tutovec12.png)

尽管图片展示的是平面投影在二维的一条直线，但这个平面在 3D 世界，将整个空间分割为上下两部分，使用
2D 也一样可以演示。空间上任何一点都可以与这个法向量做点积运算，得到的结果为点到平面的距离。原理就是，
可以将空间上的点看作是从原点指向这个点的向量 P，和法向量进行点积 P·N，结果就是沿着法向上的长度积，
也就是到平面的距离。向量点积运算，可以交换两向量位置，结果还是一样。和法向量做点积也可以理解为，沿着
向量 P 方向上的长度积，结果还是一样多。无论选取哪个方向作参考，另外一个向量都需要先取得下次投影，再
算数量积。只是距离有正负值之分，在法向的空间点为正距离，反向则为负距离。

```py
var distance = normal.dot(point)
```

然而，空间上的平面并不总是经过原点的，当然这也不是大问题，只需添加一个偏移距离 D 就可以解决。记住，
平面不仅将空间一分为二，而且还具有极性。就像有完全重叠的两个平面，但它们的负半空间和正半空间被交换。
所以 Godot 考虑到这一点，将整个平面描述为法线 N 和距原点标量 D 的距离，平面由 N 和 D 表示。基本上，
使用 N 和 D 可以表示空间中的任何平面，无论是 2D 还是 3D，取决于 N 的维数，两者的数学原理相同。
从原点到平面的向量可以表示为 N * D，任意点到平面的距离只需要减去偏移值 D，而在 **Plane** 类型的
方法实现中，已经处理了这个偏移值：

```py
# var point_in_plane = N*D
var distance = N.dot(point) - D

# The same thing, using a built-in function:
var distance = plane.distance_to(point)

var inverted_plane = -plane
```

翻转平面的极性可以通过 -N 和 -D 来完成，这使用平面处于相同位置，但具有反转的正负半空间，这个取反
运算操作可以直接在 **Plane** 对象上执行，它实现了取反运算符。

所以，记住，平面就是这样，它的主要实际用途是计算空间点到它的距离。那么，为什么计算点到平面的距离有用呢？

它非常有用！看一些简单的例子：

- 在 2D 空间创建平面；
- 判断空间点是否在平面内；
- 判断 3D 物体是否碰撞；

平面显然不是凭空而来的，所以必须建造。在 2D 中构建平面，只需要法线（单位向量）和一个点，或者空间中
的两个点来决定一个平面。在法线和点的情况下，大部分工作都已完成，因为法线已经计算完毕，所以只需法线
和点之间的点积计算 D 即可。

对于通过空间中的两个点建立平面，意图是先通过两点计算法向量。所以，实际上有两个平面，分别穿过这两点，
共享相同的空间，但法线指向相反的方向。要从两点计算法线，必须首先获得方向向量，然后根据需要将其旋转
90° 至任意一侧：

```py
# Calculate direction vector from `a` to `b`.
var dvec = (point_b - point_a).normalized()
# Rotate 90 degrees.
var normal = Vector2(dvec.y, -dvec.x)
# Alternatively (depending the desired side of the normal):
# var normal = Vector2(-dvec.y, dvec.x)

var N = normal
var D = normal.dot(point_a)
# this works the same
# var D = normal.dot(point_b)
```

在 3D 空间上操作会复杂点。


向量在图形学上的一个重要应用就是判断点是否平面内部，下面是一个有用的 Plane 应用例子。假设你有一个
凸多边形 Convex polygon，没有面向内弯曲的多边形，例如，矩形、梯形、三角形。

对于多边形的每一线段，计算经过该段的平面。一旦建立了平面列表，就可以做一些简单的事情，例如，检查点
是否在多边形内。透过所有平面，如果我们能找到一个到该点的距离为正的平面，那么该点在多边形之外。否则，
点就在平面内部，因为凸多边形的特性，可以使得只要出现一次距离为正，就可以确定点在多边开外。

凸多边形的特性在于凸集 convex set，每两点之间的直线上的点都落在该集合中的点集合。

![Convex polygon](https://docs.godotengine.org/en/latest/_images/tutovec13.png)


```py
var inside = true
for p in planes:
    # check if distance to plane is positive
    if (p.distance_to(point) > 0):
        inside = false
        break # with one that fails, it's enough
```

再改进一下，类似的逻辑可以用来检测两个凸多边形是否重叠，这称为 Separating Axis Theorem (SAT)
分离轴定理，大多数物理引擎使用它来检测碰撞。分轴理论由 Hermann Minkowski 提出，可用于解决凸多边形
碰撞问题，该理论表明：如果存在一条轴线，凸面体在该轴上的投影不重叠，则凸面体间就不重叠。

对于点，仅检查平面是否返回正距离就足以判断该点是否在外部。对于另一个多边形，必须找到一个平面，其所有
点到该平面的距离都为正值。该检查先是用 A 平面与 B 的点进行的测试，然后用 B 平面与 A 的点进行：

![SAT & Convex](https://docs.godotengine.org/en/latest/_images/tutovec14.png)


```py
var overlapping = true

for p in planes_of_A:
    var all_out = true
    for v in points_of_B:
        if (p.distance_to(v) < 0):
            all_out = false
            break

    if (all_out):
        # a separating plane was found
        # do not continue testing
        overlapping = false
        break

if (overlapping):
    # only do this check if no separating plane
    # was found in planes of A
    for p in planes_of_B:
        var all_out = true
        for v in points_of_A:
            if (p.distance_to(v) < 0):
                all_out = false
                break

        if (all_out):
            overlapping = false
            break

if (overlapping):
    print("Polygons Collided!")
```

以上是使用平面空间分割实现的基本逻辑，对于非凸面体，通常只是通过将凹多边形分割成较小的凸多边形来处理，
或使用二叉空间分割 Binary Space Partitioning(BSP)（现在很少使用）等技术来处理。

通过凸面体上的面来检测重叠现象，这也适用于 3D 场景中多面体的碰撞检测，无法找到分离平面时就发生了碰撞。
如果发现了分离平面，那么这些形状肯定不会发生碰撞。

但是，在 3D 环境中，存在这种情况，即找不到分离平面，但物体确实没有碰撞在一起：

![box collision](https://docs.godotengine.org/en/latest/_images/tutovec22.png)
![box collision](https://docs.godotengine.org/en/latest/_images/tutovec23.png)

这种情况，需要添加额外的平面作为分离平面，进行测试。这些平面所在是多边形 A 的边和 B 的边之间的叉积，
即垂直于这些边确定的平面。


### 🟢🔵 Vector & Normal Mapping 向量与法线贴图
- [Tangent Space Normal Mapping](https://docs.cryengine.com/display/SDKDOC4/Tangent%2BSpace%2BNormal%2BMapping)
- [Normal map (Bump mapping)](https://docs.unity.cn/2020.3/Documentation/Manual/StandardShaderMaterialParameterNormalMap.html)
- [LearnOpenGL Advanced Lighting - Normal Mapping](https://learnopengl.com/Advanced-Lighting/Normal-Mapping)
- [Real Shading in UE4 by Brian Karis, Epic Games](https://blog.selfshadow.com/publications/s2013-shading-course/karis/s2013_pbs_epic_notes_v2.pdf)
- [Real-Time Rendering, Fourth Edition](http://www.realtimerendering.com/)
- OpenGL Programming Guide Eighth Edition - The Official Guide to Learning OpenGL, Version 4.3

3D 渲染中如果模式制作要真实，那么就会需要巨大量的网格 Mesh 面数，这直接给 GPU 渲染流水线出了一道
性能难题。为了给 GPU 减轻负担，通常可以采用材质贴图的方式来增加模型的真实感，同时大降低模型面数。
为了提供更轻量化的真实凹凸感，可以使用法线贴图 Normal Texture，还有置换映射 Displacement Mapping，
视差映射 Parallax Mapping 等技术，它们都属于凹凸映射范畴，**Bump Map**，都基于 Normal Map。

如下图，Normal Maps, Height Maps 都表示简单多边形网格表面上的细节的数据，但存储数据方式不同。

![Height Maps vs. Normal Maps](https://docs.unity.cn/2020.3/Documentation/uploads/Main/BumpMapHeightMapNormalMapComparison.jpg)

在现代游戏开发艺术工作流程中，艺术家将使用他们的 3D 建模程序，基于非常高分辨率的源模型生成法线贴图。
然后在游戏发行版本上使用低分辨率模型，并将法线贴图映射在模型上，通过法线贴图渲染原始的高分辨率细节。

![Normal mapping across three polygons, viewed as a 2D diagram](https://docs.unity.cn/2020.3/Documentation/uploads/Main/BumpMapBumpShadingDiagram.svg)

示意图上，上面的黑色长线条表示物体表面，绿色线条表示 Smooth shading 模式下的平滑法线走向，表面
交接点的红色箭头就是顶点的法向量。下面的偏紫色方块表示法线贴图上的像素值，以及像素对应的法线向量。

法线向量 Normal Vector 是影响光的折射传播的参考向量，每个网格的顶点 Vertex，或者网格构成的面都
有一个法线向量指示它们的朝向，改变法线向量就会改变这个面的光照细节呈现。


几乎所有引擎都会提供默认支持法线贴图的材质功能，法线贴图是一张保存法线信息的图片文件，直接打开看起来
就是紫色调的图像，或者是多彩的图像，这取决于法线贴图采用的格式或者参考坐标：

- World Space Normal Mapping
- Object Space Normal Mapping
- Tangent Space Normal Mapping

在 3D 场景中每个物体每个面的朝向都不同，法线指向也变化多端，不能以固定方向的形式保存法向量。所以使用
世界空间 World Space 保存的法线贴图，只有在场景不改变，表面保持原来朝向才适用。

对于复杂模型确实可以把朝向各个方向的法线储存在同一张贴图上，你可能看到过不只是蓝色的法线贴图，不过
用那样的法线贴图有个问题是，必须记住模型的起始朝向，如果模型运动了还要记录模型的变换，这非常不方便，
这就是 Object space 法线贴图的弊端。

另一个解决方案是使用切线空间 Tangent Space，这个坐标空间里，法线贴图中保存的向量总是指向 +Z 方向，
所有的法线向量都相对与这个 +Z 方向进行变换，这样就能始终使用同样的法线贴图，而不管朝向问题。所谓切线，
即垂直方向的线，如在一个圆的表面，切线就是过圆边上一点的直线，并且这个条与这点到圆心之间的连线垂直。
所以，切线空间上的向量都相对于物体表面法向量，这种法线贴图产生的色调是偏蓝色的，因为所有法线的基本指向
都偏向 Z 轴（0, 0, 1），对于法线映射而言，该矢量为“向上”，表示模型表面没有变化。

为了将法线向量保存到贴图文件中像素中的 RGB 三个分量中，则需要将 XYZ 坐标取值范围 [-1, 1] 重新映射
到 OpenGL 中通常使用的 RGBA 浮点数表示范围 [0.0, 1.0]。所以，为了表示负值，(0, 0, 1）会映射为
(0.5,0.5,1)，即 RGB(127,127,255)，就是蓝色分量为主色调的像素值。

在着色器中读取法线贴图时，就需要将 RGB 分量重新映射为 [-1, 1] 区间：

```c
// transforms from [-1,1] to [0,1]
// vec3 rgb_normal = normal * 0.5 + 0.5;

// obtain normal from normal map in range [0,1]
normal = texture(normalMap, fs_in.TexCoords).rgb;
// transform normal vector to range [-1,1]
normal = normalize(normal * 2.0 - 1.0);   
```

切线空间的法向就是 Z 轴方向，也就是物体表面法向量所指的方向，无论是什么物体的表面，都通过计算，将
法线贴图的坐标对应到表面。并且表面的凹凸不平的点对应的法向量按 Z 轴这个基本指向进行偏移，就可以控制
模型表面法线的偏移。

算法上用一个 TBN 矩阵就能将切线空间中的法线向量坐标转成世界坐标，使它们转向到最终的贴图表面的方向。
先在世界空间定义三个轴，Tangant（T）、Bitangent（B）及法线轴（N），TBN 构成一个 3x3 的矩阵。
直观地讲，模型顶点中的纹理坐标，就和切向共平面，即二维的 UV 纹理坐标，分别对应切线空间 TB 两轴。
模型中不同的三角面，都有对应的切线空间，TB 两轴所确定的平面就是三角形所在平面，N 等价平面法向量。

TBN 是转换矩阵，并且是正交矩阵，即矩阵转置就是逆矩阵，它将切线空间的向量坐标变换为其他空间的坐标。

                [ Tx Bx Nx ]
    [T, B, N] = [ Ty By Ny ]
                [ Tz Bz Nz ]

![TBN vectors](https://learnopengl.com/img/advanced-lighting/normal_mapping_tbn_vectors.png)
![Normal mapping surface edges](https://learnopengl.com/img/advanced-lighting/normal_mapping_surface_edges.png)

计算切向量和副切向量不像法向量那样简单，基于法线贴图的切线和副切线的方向与定义曲面 UV 纹理坐标对齐
的这个事实，可以用 UV 坐标来计算每个曲面的切线和副线向量。

```c
// git@github.com:JoeyDeVries/LearnOpenGL.git
// \src\6.pbr\1.2.lighting_textured\1.2.pbr.fs
// ----------------------------------------------------------------------------
// Easy trick to get tangent-normals to world-space to keep PBR code simplified.
// Don't worry if you don't get what's going on; you generally want to do normal 
// mapping the usual way for performance anways; I do plan make a note of this 
// technique somewhere later in the normal mapping tutorial.
vec3 getNormalFromMap()
{
    vec3 tangentNormal = texture(normalMap, TexCoords).xyz * 2.0 - 1.0;

    vec3 Q1  = dFdx(WorldPos);
    vec3 Q2  = dFdy(WorldPos);
    vec2 st1 = dFdx(TexCoords);
    vec2 st2 = dFdy(TexCoords);

    vec3 N   = normalize(Normal);
    vec3 T  = normalize(Q1*st2.t - Q2*st1.t);
    vec3 B  = -normalize(cross(N, T));
    mat3 TBN = mat3(T, B, N);

    return normalize(TBN * tangentNormal);
}
```

GLSL 偏导数函数（HLSL: ddx ddy，GLSL: dFdx dFdy）在片元着色器中的用于计算任何变量基于屏幕空间像素变化率的变化率。 
dFdx, dFdy — return the partial derivative of an argument with respect to x or y
- [An introduction to shader derivative functions](http://www.aclockworkberry.com/shader-derivative-functions/)

- dFdx(v) = 该像素点右边的v值 - 该像素点的v值 // v 可以是任意值
- dFdy(v) = 该像素点下面的v值 - 该像素点的v值
- fwidth（v） = abs( dFdx(v) + dFdy(v))

![Shader partial derivative functions](http://www.aclockworkberry.com/wp-content/uploads/2016/02/Shader-Derivatives-1.png)


切线空间的优点有几个，由于法线的单位长度属性和限制 Z 始终为正，重建一个 Z 分量只需要存储两个分量，
内存上就节省了 2 个字节而不是占用 4 个字节，另外一个字节通常用于对齐。并且有多种 GPU 支持的格式，
用于 2 通道纹理，通常为 1 字节而不是 2 字节。这些格式节省内存，减少内存带宽，并且解压缩成本也很低，
因此使用它们可以提高流和渲染性能。

由于切线空间法线总指向表面外部，因此假定单位长度，可以从 X 和 Y 分量重建法线 Z 坐标。坐标从 0..1 
扩展到 -1..1 范围后，就可以计算 Z = sqrt(1 - X²+Y²)。这使得可以使用两个通道纹理来存储法线贴图，
每个纹理像素为 2 个字节，大大提高了纹理压缩性能。

切线空间格式的法线贴图独立于基础几何体，即纹理也可以用于其他几何体，无论镜像、旋转、缩放或平移如何，
它都将自动与曲面对齐。而使用对象空间，或世界空间的法线贴图仅支持后两者。几何独立性允许高效重用，例如，
以平铺法线贴图的形式，从而节省更多内存并减少生产时间。

切线空间法线映射的基本思想也有其缺陷，对艺术家来说，拆开复杂模型并将接缝放在暴露较少的区域会很棘手。

对于场景中一个 XY 平面上的表面，法线贴图的像素颜色大概对应的法线方向如下，法线向量的 XY 偏移量对应
RGB 中的 RG 分量，手绘法线贴图可以参考：

- (0.5, 0.5, 1.0) 垂直向外，浅蓝；
- (0.5, 1.0, 0.6) 指向南边，浅绿；
- (1.0, 0.5, 0.6) 指向东边，粉红；
- (1.0, 0.0, 0.6) 指向东北，紫红；
- (0.0, 1.0, 0.6) 指向西南，青色；

只要面法向带蓝色，那么法线就是朝外的，正常。不带蓝色分量，就朝向内表面。






### 🟢🔵 Matrix & Determinant 矩阵与行列式
- [Linear Algebra](https://www.3blue1brown.com/topics/linear-algebra)
- [Solving Systems of Linear Equations Using Matrices](https://www.mathsisfun.com/algebra/systems-linear-equations-matrices.html)
- [Solving Systems of Linear Equations Using Matrices zh_CN](https://www.shuxuele.com/algebra/systems-linear-equations-matrices.html)
- [Determinant of a Matrix](https://www.mathsisfun.com/algebra/matrix-determinant.html)
- [Matrix Calculator](https://www.mathsisfun.com/algebra/matrix-calculator.html)
- [Determinant](https://www.math.net/determinant)
- [Matrix](https://www.math.net/matrix)

线性代数之所以叫线性代数，因为它就是用来解决线性问题的，而线性问题可以理解为，能用二维坐标中的线条表示的问题。

列表有一系列食品：

|    食品   |  单价 |
|-----------|------|
| Apple     | $3   |
| Cherry    | $4   |
| Blueberry | $2   |

销售量：

|           | Mon | Tue | Wed | thu |
|-----------|-----|-----|-----|-----|
| Apple     | 13  | 9   | 7   | 15  |
| Cherry    | 8   | 7   | 4   | 6   |
| Blueberry | 6   | 4   | 0   | 3   |
| Count     | $83 | $63 | $37 | $75 |

把它们当作两个只有一行的矩阵，计算周一的销售额，就是点积 dot product。反过来，假如知道当天的销售额，
而不知道某一个销售量，这就一个典型的线性代数问题。

    ($3, $4, $2) • (13, 8, 6) = $3×13 + $4×8 + $2×6 = $83

注意一点，实际上第二个圆括号的内容应该是竖直方向书写的，因为矩阵乘法是一行乘一列，每行元素和后者的
每列元素匹配。这里为了简便，就没有按照数学上的习惯书写。

矩阵（Matrix）是一个阵列排列的复数或实数集合，元素是实数的矩阵称为实矩阵，元素是复数的矩阵称为复矩阵。
注意，"因为这种表达方式有行有例，所以称之为行列式"这种由于名字暗示得出的是错误的理解。

这种，用矩阵的行、列中的各个数相乘再相加的得到的值叫行列式 The determinant，当然这只是一种形象的
名称，同时也是令人费解的名字。

简单的说，行列式就是一个定义在方阵上的函数 det: ℝ^(n×n) → ℝ，只是名字翻译作行列式。行列式这个值
可以帮助寻找到矩阵的逆矩阵，the inverse of a matrix，矩阵在线性方程、微积分等系统中有用的东西。

- 仅当行列式 ≠ 0 时，矩阵才可逆。
- 线性方程组系数矩阵的行列式 ≠ 0，则方程组有唯一的解；如果为 0，则方程组无解或有不同的解。

矩阵与行列式的区别有四点，下面就是具体介绍：

- 本质上，矩阵是一个数表，包含线性空间中的元素；而行列式是一个数值，n 阶的方阵。
- 符号上，矩阵用花括号表示，行列式用双竖线表示。
- 结构上，矩阵的行数和列数可以不一样，行列式的行数与列数一致。
- 运算上，一个数乘以行列式，只能乘以行列式的一行或者一列。一个数乘以矩阵，就要和矩阵的每个元素相乘。
  两个矩阵相等是指对应元素都相等；两个行列式相等不要求对应元素都相等，甚至阶数也可以不一样，只要运算
  代数和的结果一样就行了。行列式相等，就是值相等，行和列数目不必相等，数据也不必相等。矩阵相等，行和列
  数目必须相等，对应位置的数据也必须相等。行列式相加减，就是两个数值相加减，结果还是数值。矩阵相加减，
  对应位置的数据相加减。

对于一个 2×2 方阵，行列式(值)即为矩阵中的元素交叉相乘再求差值，两侧的竖线也表示这是一个绝对值：

        | a  b |
    A = |      |        The determinant is:      |A| = ad − bc
        | c  d |

对于更多维的方阵，只需要拆分第一行，单独与后面两行中的小方阵相乘，结果求和，更高维度依样处理：

![Det of 3x3 Matrix](https://www.mathsisfun.com/algebra/images/matrix-3x3-det.svg)


        | a  b  c |      a                  b                  c  
        |         |       x                 x                 x   
    A = | d  e  f | =>    | e  f |  -  | d     f |  +  | d  e |   
        |         |       |      |     |         |     |      |   
        | g  h  i |       | h  i |     | g     i |     | g  h |   

         |A| = a(ei − fh) − b(di − fg) + c(dh − eg)

![Det of 4x4 Matrix](https://www.mathsisfun.com/algebra/images/matrix-4x4-det.svg)

以上这种展开方法称为“拉普拉斯展开”，我喜欢它，因为模式很容易记住，当然还有其他方法。比如，萨鲁斯规则
Sarrus’s rule，这种方法是将行列式往右边循环扩展，从左上角往右下角连线的数乘积相加，再减去从右上角
往左下角连线的数乘积。

向量和行列式结合时，通常以列向量的形式编写，方便做计算，其中向量中的每个值表示向量的一个分量。

给定两个向量坐标 v = [v₁, v₂] 和 w = [w₁, w₂]，计算点积为 v ∙ w = v₁w₁ + v₂w₂，表达更简洁。
例如，给定 v = [3, 5]ᵀ 和 w = [-2, 7]ᵀ，计算 v · w 和 v · v，上标 T 表示矩阵转置，行变列。


矩阵的重要之处在于它将许多的代数问题给方便的表示，特别是利用矩阵的乘法将使代数问题得到简洁的表示和求解。
矩阵的加法定义为两个具有同样维度的矩阵之前进行的叠加运算，两个矩阵中行列坐标对应位置的数相加并保持结果
在同样的位置。

矩阵的乘法有两种，一种是**标量乘法**，即矩阵与一个标量相乘，矩阵中所有的元素都要乘上这个标量。另一种是
矩阵与矩阵之间的乘法，简称**矩阵乘法**，只有左侧矩阵的列数与右侧矩阵的行数一致时才可以进行。并且，行列
上的数一对一对相乘，结果求和再放到结果矩阵上。最终得到一个矩阵行数、列数分别和乘号左侧、右侧矩阵对应。
对于 m×n 矩阵与 n×p 矩阵相乘，n 必须相同，相乘结果是 m×p 矩阵。

![Matrix multiply](https://www.shuxuele.com/algebra/images/matrix-multiply-a.svg)
![Matrix multiply](https://www.shuxuele.com/algebra/images/matrix-multiply-b.svg)
![Matrix multiply](https://www.shuxuele.com/algebra/images/matrix-multiply-c.svg)

乘法的互换律在矩阵的领域通常是不适用的，矩阵乘法并非可互换，除特殊的单位矩阵外，它与任何矩阵相乘都
不会改变原矩阵。**单位矩阵** Identity matrix 是矩阵领域里的 "1"：

- 符号为大写字母 I。
- 单位矩阵是"方形"的（行与列数目相同）。
- 对角线上，即左上角到右下角的连线上全是 1，其他全是 0。
- 它是个特别的矩阵，任何矩阵和单位矩阵相乘，保持不变。

逆矩阵的定义如下，A 的逆（矩阵）是 A⁻¹，仅当：

    AA⁻¹ = A⁻¹A = I

但有些矩阵是没有逆矩阵的，当矩阵的行列式为 0 即不在逆矩阵。对于一个 2x2 矩阵来说，逆矩阵求法如下：

           -1                  
    [ a b ]      1   [  d  -b ]
    [     ]  = ----- [        ]
    [ c d ]     det  [ -c   a ]

即，将原矩阵的斜角元素换位，给另外两个数加负号，最后除以行列式。

例如，以下 2x2 矩阵的逆的求法，以及通过 AA⁻¹ = A⁻¹A = I 验证逆矩阵：

           -1
    [ 4 7 ]      1   [  6  -7 ]   [0.6 -0.7]     [0.6 -0.7][ 4 7 ]   [ 1 0 ]
    [     ]  = ----- [        ] = [        ] ==> [        ][     ] = [     ]
    [ 2 6 ]    24-14 [ -2   4 ]   [-0.2 0.4]     [-0.2 0.4][ 2 6 ]   [ 0 1 ]

矩阵并不总是有逆矩阵的，就像方程组并不总是有解一样。

- 首先，矩阵一定要是"方形"即可以计算行列式，才可能有逆矩阵。
- 同时，行列式不能是零，求解线程方程组时便要除以零了。

例如，以下这个矩阵就没有逆矩阵，行列式为 0，对于求解逆矩阵时，1/0 除法没有定义。

    [ 3 4 ]
    [     ]  ==> det = 3x8 - 4x6 = 0
    [ 6 8 ]

这种矩阵叫**降秩矩阵**，Singular，就是行列式为零的矩阵。从线性关系上来看，这很合理。来看矩阵第二行
的数字，它们不过是第一行的双倍，也就是说并没有提供新的信息。在线性相关上，还是原来的线性关系。它们就
是平面上的同一条直线，通过原方程式就可以将这个 2 倍系数约分掉，行列式的作用就是告诉这个线性关系。

对于高阶矩阵的逆，需要使用其它方法来求解：

- Inverse of a Matrix using Elementary Row Operations (Gauss-Jordan)
- Inverse of a Matrix using Minors, Cofactors and Adjugate
- Use a computer (such as the Matrix Calculator)

別忘了，我們的目的要得到線性方程的解，而不是逆矩陣的每一個元。如果尋覓逆矩陣公式的行動單純源於人類
天生想要探索未知世界的好奇心，尚可理解。不過，倘若只因為要解線性方程而計算逆矩陣，可就要奉勸諸位：
「你們的時間有限，所以不要浪費時間在逆矩陣的計算上。」正如 Steve Jobs 在美國史丹佛大學畢業典禮上說：

>Your time is limited, so don’t waste it living someone else’s life.”

用初等行运算来求逆矩阵是最基本的求逆方法，也称高斯－若尔当方法，"初等行运算"包括行相加，乘，对换位置
等等。注意只能做以下这些 "初等行运算"：

- 对换两行的位置，这和交换原线性方程的先后顺序一样；
- 把一行里的每个元素乘以或除以一个常数，这对应在原线性方程上同时两边乘一个系数；
- 一行加上另一行，并取代前者；

以后续要使用的矩阵为例，先将矩阵 A 与其单位矩阵 I 并排写下来，这个叫**增广矩阵**：

    [ 13  8  6 | 1 0 0 ]
    [  9  7  4 | 0 1 0 ]
    [  7  4  0 | 0 0 1 ]

接着尽力去把增广矩阵左边的矩阵变成单位矩阵，目标是把矩阵 A 变成单位矩阵，对角线变成全是 1。尽量先
将对角线外的数变成 0，再将对角线的数归一化。对增广矩阵右边的矩阵也做同样的运算，最终得到一个 A⁻¹。
这里很多的操作，只需要占一下矩阵计算器 "inv(A)" 键。


用余子式、代数余子式和伴随来求逆矩阵，步骤如下:

一、求余子式矩阵，
二、转成代数余子式矩阵，
三、转成伴随矩阵，
四、乘以行列式倒数。

所谓余子式矩阵，即一个用来存放“余子式”的矩阵。余子式是特殊的行列式，即选中原矩阵中的一个元素，比如
第一个元素，它位于第一行、第一列，那么就将这些行、例的元素排除掉，对余下的元素所构成的矩阵求行列式，
这个结果保存到余子式矩阵中。

所谓代数余子式矩阵，就是将"纵横交错"排列的正负号放在"余子式矩阵"上。换句话说，每隔一个格改变正负号，
第一个为正，第二个为负，等等，隔一行则顺序反过来。

伴随矩阵，即转置以上的矩阵。就是沿对角线对调元素的位置，在对角线上的元素不变。


矩阵相乘运算规则类似向量做点积运算，右侧矩阵中的向量为 Column Vector 表达，而不是一行的形式。
所以，回到前面食品销售数据处理上来，重点是要把价钱和销售量正确地使用矩阵表示出来：

                 [ 13 9  7  15 ]
    [$3 $4 $2] x [ 8  7  4  6  ] = [ $83 $63 $37 $75 ]
                 [ 6  4  0  3  ]

反过来，假如知道当天的销售额和和各种食品数量，但不知道售价，这就一个典型的线性代数问题。利用矩阵就
可以求解线性方程组。最主要的就是写出未知数的系数矩阵，这里就使用 xyz 替代掉价钱，并改写为如下形式：

    [ 13  8  6 ] [x]   [$83]
    [  9  7  4 ] [y] = [$63]
    [  7  4  0 ] [z]   [$37]
    [ 15  6  3 ]       [$75]

对于三元一次方程组，其实只要有和未知数一样多的方程即可以求解，以上多出来一条方程的数据可以去掉。通过
矩阵计算器，可以得到 det = -62。同样，利用矩阵计算器可以帮助自动进行大量的矩阵计算，求得 xyz。

这三个矩阵称为 "A", "X" 和 "B"，方程组的矩阵表示便是 AX = B，只不过将原来零散的方程集中以多维
数据呈现。而线性方程组的求解也变成了矩阵求逆的操作，通过逆矩阵求解就可以解线性方程组，公式是：

    X = A⁻¹B

这个公式的意思是：x、y 和 z 的值（X 矩阵）等于 **A 矩阵的逆**乘以 **B 矩阵**。矩阵与逆矩阵的关系
就是一个数与其倒数的关系，把矩阵与其逆相乘，结果是单位矩阵，就像是矩阵里的"1"。

如果矩阵等式 AX = B 每边都可以除以 A 得到 X=B/A 就最好了，但不能除矩阵。每边乘以 A⁻¹ 是可行的：

    XAA⁻¹ = BA⁻¹
       XI = BA⁻¹
        X = BA⁻¹

我们知道 AA⁻¹ = I，所以可以将 AA⁻¹ 作为 I 拿走，就如同从代数数式子 1x = ab 拿走 "1" 一样。
注意，做矩阵相乘次序是重要的，AB 几乎永远都不会等于 BA。如果式子是反序的，同样按照顺序：

       AX = B
    A⁻¹AX = A⁻¹B
       IX = A⁻¹B
        X = A⁻¹B



### 🟢🔵 Complexes 复数
- [闫令琪 GAMES101-现代计算机图形学入门 - 04 Transformation Cont.](https://www.bilibili.com/video/BV1X7411F744/?p=3)
- [Imaginary Numbers Are Real - Welch Labs](https://www.bilibili.com/video/BV1Ts411u7iH?p=5)
- [Imaginary Numbers Are Real - Welch Labs](https://www.welchlabs.com/resources/freebook)
- [How Imaginary Numbers Became “Real”](https://www.themathdoctors.org/how-imaginary-numbers-became-real)
- [A Short History of Complex Numbers - Orlando Merino](https://www.math.uri.edu/~merino/spring06/mth562/ShortHistoryComplexNumbers2006.pdf)
- [Imaginary Numbers](https://www.mathsisfun.com/numbers/imaginary-numbers.html)
- [Complex Plane](https://www.mathsisfun.com/algebra/complex-plane.html)
- [Imaginary Multiplication vs. Imaginary Exponents](https://betterexplained.com/articles/imaginary-multiplication-exponents/)
- [A Visual, Intuitive Guide to Imaginary Numbers](https://betterexplained.com/articles/a-visual-intuitive-guide-to-imaginary-numbers/)
- [数学里最美的公式： e^iπ+1=0 - Surein Aziz 博士](https://www.meipian.cn/588prp7)
- [复数的实矩阵表示 - Shenelry](https://zhuanlan.zhihu.com/p/160270375)
- [Maths - Rotation Theory](http://euclideanspace.com/maths/geometry/rotations/theory/index.htm)
- [Rotations And Infinitesimal Generators](https://www.reedbeta.com/blog/rotations-and-infinitesimal-generators/)

任意一个复数 𝑧 ∈ ℂ 都可以表示为 𝑧 = 𝑎 + 𝑏𝑖 的形式，其中 𝑎, 𝑏 ∈ ℝ 而且 𝑖² = −1．我们将 𝑎 称之
为这个复数的实部（Real Part），𝑏 称之为这个复数的虚部（Imaginary Part）。Imaginary 本身译作
“抽象的”更合适，它本身不虚，只是太抽象。历史上，高斯认为这个数的名字应该叫做侧数 lateral 更恰当。

![Complex Number](https://www.mathsisfun.com/numbers/images/complex-number.svg)

Girolamo Cardano (or Cardan) (1501-1576) 在 16 世纪发明了复数，但直到很久以后，这一观点才在
Leonhard Euler (1707-1783) 和 Carl Friedrich Gauss (1777-1855) 作品中确定下来。

Gauss 增写到虚数应该叫做侧数，这样可以避免被人误解：

    "That this subject [imaginary numbers] has hitherto been surrounded by 
    mysterious obscurity, is to be attributed largely to an ill adapted notation. 
    If, for example, +1, -1, and the square root of -1 had been called direct, 
    inverse and lateral units, instead of positive, negative and imaginary 
    (or even impossible), such an obscurity would have been out of the question."


其实 𝑧 = 𝑎 + 𝑏𝑖 就是对于 {1, 𝑖} 这个基底（Basis）的线性组合（Linear Combination），所以，
复数还是线性代数的范畴，可以用向量来表示一个复数，也可以用复数来表示向量。复数和向量一样有长度和方向，
magnitude (length) and direction。

复数最大的意义不在于虚数单位 i 的创造，而在于复数的创立正式将数学从一维抽象世界带入二维抽象世界去
看问题。设想一下，有个人有 2 个苹果，你拿走 3 个，请问还乘几个？在人类抽象功能发挥之前，这显然是不
可解决的问题。但是抽象一下，用“借”的方法，抽象地借走一个不存在的东西也是可以的，引入负数来解决它。
在复数创造出来之前，数学一直都是实数空间下的一维世界，它也不断地补充小数、有理数、无理数等等的概念。
从实数的演变，到复数的发明，这一切的本质都是代表了人类对未知的探索。

向量尽管也具有二维属性，但它在数学上的模型还是基于一维的实数，所以本质上是一维的数学思想。

复数引入的出发点是在人类无法解决对负数开方问题，即在解二次方程时遇到 √(-1) 无解问题，也就是实数无法
解决一个数的平方为负数的情况。而引入虚数后，使得 **i² = -1**，就可以用 √(-1) = i 代表二次方程的解。
在图形直观上，使用复数平面表达，水平轴为实数轴，竖直轴为虚数轴。虚数 i 通过复数乘法，可以在实数与虚数
之间变换，这种能力使得虚数与实数相乘在复数平面上表示为旋转的直观现象。

如下图，从实轴上的 1 开始，乘上虚数单位 i 就变成旋转 90° 到了虚轴上方。再乘 i 即得到 i² = -1，
就到了实轴的负数位置，又是旋转了 90°。同理，乘上负值的虚数，旋转角度就是负值。例如，(3 + 4i) 乘以
i 后得到 (-4 + 3i)，在复数平面上，前后两者坐标旋转了 90°。可以使用向量运算进行验证，对两个向量做
点积，结果为 0。所以，只是引入了虚数，复数和几何就完美结合在一起。

![Positive & Negative Rotation](https://betterexplained.com/wp-content/webp-express/webp-images/uploads/complex/positive_negative_rotation.png.webp)

至此，数学上出现了三个最常用的坐标形式：

- Cartesian Coordinates 笛卡尔坐标系统，即表示距离的 XY 轴直角坐标系；
- Polar Coordinates 极坐标系，即表示旋转角度与距离的关联；
- Complex Plane 复数平面，即实数与虚数二维坐标系统；

在复数二维世界中，具有了更维度解决问题的方法，向量的功能也完全在复数的范围之内，同样具有模和方向。
向量加减和复数加减完全一致，只需要将复数的分量对应相加减。例如，7+2i 与 3+5i 相减结果为 4-3i：

![Complex addition](https://www.mathsisfun.com/algebra/images/complex-plane-vector-add.svg)

复数的乘法却要比向量更简洁明了：

![Complex Multiplying](https://www.mathsisfun.com/algebra/images/foil-complex.svg)

两个复数相乘，两分量俩俩相乘再相加，归纳如图，"FOIL" 即 "Firsts, Outers, Inners, Lasts"：

    (a+b𝑖)(c+d𝑖) => ac + ad𝑖 + bc𝑖 + bd𝑖² => (ac − bd) + (ad + bc)𝑖

- Firsts: a × c
- Outers: a × d𝑖
- Inners: b𝑖 × c
- Lasts: b𝑖 × d𝑖

使用 Matlab 等工具可以很方便地执行复数的计算：

    >> a = sqrt(2) + sqrt(2)*i;
    >> a^2

    ans = 0.0000 + 4.0000i

    >> b = 1 + i;
    >> b^2

    ans = 0.0000 + 2.0000i

Matlab 向量计算则，直接使用方括号表示向量：

    >> dot([3 4], [-4 3])

    ans = 0

计算辐角使用复数参数，计算模长用 abs 函数，复数相乘的一个特点是辐角相加模相乘：

    >> rad2deg(angle(3+4i)) %phase angle

    ans = 53.1301

    >> rad2deg(angle(-4+3i))

    ans = 143.1301

    >> rad2deg(angle((-4+3i)*(3+4i)))

    ans = -163.7398

    >> abs((-4+3i)*(3+4i))  %magnitude

    ans = 25

    >> abs(-4+3i)

    ans = 5

对于除法，需要使用共轭复数。何谓共轭？共轭即为按一定的规律相配的一对，通俗点说就是孪生。共轭复数就是
两个实部相等，虚部互为相反数的复数，Conjugate complex number，一个复数的共轭表示为其符号上加一横，
为了输入方便，有时也可以这样表示，z* 与 z 共轭。一对共轭复数，在复平面上关于实轴对称。

轭，最早是用来表示拉车时，架在牛脖子上的曲木，古代拉车通常两头牛并驾齐驱，因此说这两头牛是“共轭”。

复数除法的诀窍就是在分式上同时乘以分母的共轭复数！一个复数与其共轭复数相乘可以用以下公式：

    (a + b𝑖)(a − b𝑖) = a² + b²：

证明过程也简单：

    (a + b𝑖)(a − b𝑖) = a² (- ab𝑖 + ab𝑖) -b²𝑖²
                     = a² - b²𝑖²
                     = a² + b²

计算 (2 + 3𝑖) 与 (4 − 5𝑖) 相除为例：

    (2 + 3𝑖) / (4 − 5𝑖) = (2 + 3𝑖)(4 + 5𝑖) / (4 - 5𝑖)(4 + 5𝑖)
                       = (8 - 15) + (10 + 12)𝑖 / (4² + 5²)
                       = -(7 + 22𝑖) / 41
                       = -7/41 + 22𝑖/41

复数的代数乘法看上去并没有什么特别的，借助复数的矩阵表示，可以重新理解它所表示的实际含义。

一个复数可以用来表示一个旋转、缩放变换，多个复数相乘，可以看作是多个旋转缩放变换的叠加。由于 2D 旋转
和缩放无顺序差别，所以复数相乘满足交换律。

构造一个从复数集合 ℂ 到特定矩阵集合 𝕄 的映射，使任意复数 𝑍 = 𝑎 + 𝑏𝑖 一一对应映射到矩阵 M：

    [ 𝑎  -𝑏 ]
    [ 𝑏   𝑎 ]

当然，这样的映射当然不是满射，即矩阵的维数不仅有 2x2，所以对值域加这个维数限制，则使之成为满射。
这样定义复数的矩阵表达，可以使复数的矩阵运算完全和一般矩阵无异，加、减、乘、除运算规则都一致。

复数表示的 2D 旋转如下，在复平面内，假设向量 𝑍 与实轴的夹角为 Θ，则：

    cos(Θ) = 𝑎 / √(𝑎² + 𝑏²)

    sin(Θ) = 𝑏 / √(𝑎² + 𝑏²)

提取因子，即可将以上两个条件代入复数 𝑍 = 𝑎 + 𝑏𝑖 对应的矩阵表达式中：

    [ 𝑎  -𝑏 ]               [ cos(Θ)  -sin(Θ) ]
               = √(𝑎² + 𝑏²) 
    [ 𝑏   𝑎 ]               [ sin(Θ)   cos(Θ) ]

所以，复数的矩阵形式代表的是一个旋转、缩放变换，旋转角度为 Θ，绽放比例为 √(𝑎² + 𝑏²)。



回到三角函数表达的单位圆方程，将其变换到复数平面上，它就可以用来任意角度旋转复数。

    cos(θ)² + sin(θ)² = 1

介绍一下极坐标(polar coordinate)，常用的 xy 两轴坐标称为 Cartesian 坐标，极坐标的也用 xy 轴，
不同的是，极坐标加入了旋转角度，用来 θ 表示沿 x 轴正方向逆时针旋转度数。在极坐标平面系统中的任意点
可以用半径和旋转角度来表示 (r,θ)，复平面内的点可以变换为极坐标的形式。

可用 x = r cos(θ) 和 y = r sin(θ) 来转化到笛卡尔坐标，所以复数极坐标 (r, θ) 表示如下：

    z = x + 𝑖y 
      = r cos(θ) + 𝑖 r sin(θ)
      = e^(𝑖θ)

特别的，如果 r = 1， 则 

    z = cos(θ) + 𝑖 sin(θ)

形如 r e^(𝑖θ) 的复数为极坐标形式，并且与之相对的 x+𝑖y 为笛卡尔形式. 1743 年，瑞士数学家欧拉
给出了著名的欧拉公式，对所有实数 θ 都成立。这就是用对数形式表示的欧拉公式，但是，要理解这个公式是
如何来的，我们需要一样东西，叫做泰勒级数 Taylor series。

    e^(𝑖θ) = cos(θ) + 𝑖 sin(θ)

特别当 θ = π 时，按复数平面规则运算，右边的值为 -1，欧拉公式的特殊形式更是被评为数学上最美的公式：

    e^(𝑖π) + 1 = ０

这个简洁公式包括了数学上最重要的 5 个常数：

- 0，1 自然数的基本单位；
- e 描述变化率的自然指数；
- π 圆周率；
- 𝑖 虚数的基本单位。

最奇怪的问题是：我们怎样取一个数的 𝑖 次方？指数上有虚数怎么算？那就是用对数形式导出的欧拉公式。

用几何的方法证明该等式，不同的 θ 值对应的极坐标 e^θ，特别注意复平面旋转角度 180° 落到 -1 的时刻。

由数学家布鲁克·泰勒发现的 Taylor series 在近似计算中有重要作用。函数 e^x 的泰勒级数扩展如下，
因为阶乘 0! 和 1! 的值都定义为 1，式子前两项为 1 + x:

    eˣ = x⁰/0! + x¹/1! + x²/2! + x³/3! + x⁴/4! ... xⁿ/n!

阶乘是基斯顿·卡曼（Christian Kramp，1760～1826）于 1808 年发明的运算符号，是数学术语。一个正
整数的阶乘（factorial）是所有小于及等于该数的正整数的积，并且 0 阶乘为 1。自然数 n 阶乘写作 n!。
1808年，基斯顿·卡曼引进这个表示法。

如果 n 比较大，结果几乎等于 e^x，且添加的求和项数越多，两个结果越靠近。在某些时候，计算器上的两个
结果是一样的，因为计算器精度无法检测它们之间的微小区别。当你对无穷多项求和时，两个结果是一模一样的。
当你对无穷多项求和时，两个结果是一模一样的。欧拉公式包含以下两个函数的泰勒级数，注意角度使用弧度。

    cos(x) = 1 - x²/2! + x⁴/4! - x⁶/6! + ...
    sin(x) = x - x³/3! + x⁵/5! - x⁷/7! + ...

现在，让我们将泰勒级数中的变量 x 换成 ix 就得到：

    eⁱˣ = (𝑖x)⁰/0! + (𝑖x)¹/1! + (𝑖x)²/2! + (𝑖x)³/3! + (𝑖x)⁴/4! ... (𝑖x)ⁿ/n!

某些 𝑖 的次方可以简化，例如，按定义 𝑖² = −1，𝑖³ = -𝑖 及 𝑖⁴ = 1，等等。上式简化后，涉及 𝑖 的项
合并在一起，简化式会包含两个级数与前面 sin(x) 和 cos(x) 的级数一样，将它们代入而得欧拉公式。



复数的引入，不仅仅解决了负数的开方问题，在各行业上也大放异彩。例如，信号处理领域利用傅里叶变换可以
实现频谱分析仪 Spectrum Analyzer，可以用来做音频、视频滤波处理。电子领域上，AC (Alternating Current)
交流电按正弦函数规律变化，直接使用正弦函数很难处理交流电的叠加，但是使用复数平面就容易解决的多。

还可以使用复数来放大 Mandelbrot Set 曼德布罗特集分形图形，分形之父创造的这种分形基于复数方程
zₙ+1 ＝ zₙ² + c，重复该步骤直到：

- 发散到无穷远处，根据发散的速度选择颜色；
- 不会发散，并形成实际的 Mandelbrot 集，显示为黑色。


### 🟢🔵 Quaternions 四元数
- [四元数的可视化 by 3Blue1Brown](https://www.bilibili.com/video/av33385105/)
- [Visualizing quaternions, an explorable video series](https://eater.net/quaternions/video/intro)
- [Understanding Quaternions](https://www.3dgep.com/understanding-quaternions/)
- [四元数与三维旋转 - Krasjet](https://krasjet.github.io/quaternion/quaternion.pdf)
- Visualizing Quaternions by Andrew J. Hanson
- [四元数——基本概念 - 杨智为](https://zhuanlan.zhihu.com/p/27471300)
- [四元数应用——转矩阵、Slerp插值与万向节](https://zhuanlan.zhihu.com/p/28189289)
- [如何形象地理解四元数？ - Yang Eninala](https://www.zhihu.com/question/23005815/answer/33971127)
- [维度：数学漫步 Dimensions: A Walk Through Mathematics (2008)](https://www.bilibili.com/video/BV1rx411J7EL)
- [GAMES105-计算机角色动画基础-刘利斌](https://www.bilibili.com/video/BV1GG4y1p7fF/)
- [08.游戏引擎的动画技术基础 GAMES104-现代游戏引擎：从入门到实践](https://www.bilibili.com/video/BV1jr4y1t7WR?t=3794.3)

![Hamilton plaque at Broombridge, Cabra](https://ingeniousireland.ie/wp-content/uploads/2011/10/Broombridge-plaque-BDolan-2010-web-600x450.jpg)

相比矩阵，用四元数处理 3D 旋转的优势是毋庸置疑的，但是 Quaternions 四元数概念复杂，难于理解。
四元数的定义和复数非常类似，唯一的区别就是四元数有三个虚部，而复数只有一个．所有的四元数 𝑞 ∈ ℍ，
ℍ 代表四元数的发现者 William Rowan Hamilton，都可以写成下面这种形式。

    𝑞 = 𝑎 + 𝑏𝑖 + 𝑐𝑗 + 𝑑𝑘 ∈ ℍ (𝑎, 𝑏, 𝑐, 𝑑 ∈ ℝ)

    𝑖² = 𝑗² = 𝑘² = 𝑖𝑗𝑘 = −1

    𝑖𝑗 = -𝑗𝑖 = 𝑘
    𝑗𝑘 = -𝑘𝑗 = 𝑖
    𝑘𝑖 = -𝑖𝑘 = 𝑗

一个四元数由一个实数和一个三维向量构成，四元数就是一个高阶复数，四元数其实就是基底 {1, 𝑖, 𝑗, 𝑘} 
的线性组合，也可以写成向量的形式。有说法指出，向量这个名字就是汉密尔顿发明的，向量的叉乘也是四元数的
副产物：

    q = (𝑣⃗ + 𝒘)ᵀ = ((x,y,z),𝒘)ᵀ

    q₁q₂ = (𝒘₁ + x₁𝑖 + y₁𝑗 + z₁𝑘) (𝒘₂ + x₂𝑖 + y₂𝑗 + z₂𝑘)
         = (𝒘₁𝒘₂ - x₁x₂ - y₁y₂ - z₁z₂) +
           (𝒘₁x₂ + x₁𝒘₂ + y₁z₂ - z₁y₂ )𝑖 +
           (𝒘₁y₂ + y₁𝒘₂ + z₁x₂ - x₁z₂ )𝑗 +
           (𝒘₁z₂ + z₁𝒘₂ + x₁y₂ - y₁x₂ )𝑘

        = (𝒘₁, 𝑣⃗₁) (𝒘₂, 𝑣⃗₂)
        = (𝒘₁𝒘₂ - 𝑣⃗₁ ∙ 𝑣⃗₂, 𝒘₁𝑣⃗₂ + 𝒘₂𝑣⃗₁ + 𝑣⃗₁ ⨉ 𝑣⃗₂)


其它表达形式及运算：

- 纯四元数   𝑞 = 0 + 𝑏𝑖 + 𝑐𝑗 + 𝑑𝑘, (𝑎, 𝑏, 𝑐, 𝑑 ∈ ℝ)
- 单位四元数 q = (𝒘, 𝑣⃗)ᵀ = (cos(Θ/2), 𝑢 sin(Θ/2))  |𝑢| = x² + y² + z² + 𝒘² = 1
- 共轭四元数 q* = (𝒘, -𝑣⃗)ᵀ
- 标量积    s𝒒 = (s𝒘, s𝑣⃗)ᵀ
- 加法     q₁ + q₂ = (𝒘₁+𝒘₁, 𝑣⃗₂+𝑣⃗₂)ᵀ
- 点积     q₁ · q₂ = (𝒘₁𝒘₁ + 𝑣⃗₂·𝑣⃗₂)
- 点积共轭  (q₁ · q₂)* = q₂* · q₁*
- 模长     |q| = √(𝒘₁𝒘₁ + 𝑣⃗₂·𝑣⃗₂) = √(q · q)
- 模长平方  |q|² = q · q* = q* · q
- 倒数     q⁻¹ = q* / |q|²
- 倒数积   qq⁻¹ = q⁻¹q = 1


在三维空间的旋转操作中，即工程中的刚体旋转问题，需要考虑物体如何旋转，是根据全局坐标系统，还是物体
局部坐标系统。一般操作上是以全局空间定义的，通常物体的初始状态下，本地坐标与全局坐标是对齐的。

Blender 中提供了三种旋转方式，向负轴向看，以逆时针旋转为正旋转角度：

- **Euler** The gizmo handles are aligned to the Euler axis, allowing you to see 
    the discreet XYZ axis underlying the Euler rotation, as well as possible Gimbal Lock.
- **Axis Angle** The X, Y, and Z coordinates define a point relative to the 
    object origin. This point and the origin define an axis around the W value 
    defines the rotation.
- **Quaternion** X, Y, Z and W correspond to the Quaternion components.

欧拉角旋转旋转轴与 XYZ 各坐标轴对齐，即各坐标轴就是旋转轴，按先后顺序旋转 有 6 种顺序组合，列表中
的名称中的各轴顺序与 Gimbal 设备中的各轴由内到外的套接顺序相同。例如，ZYX Euler 旋转就是优先读取
Z 轴旋转角度，最后读取 X 轴旋转角。或者可以这样理解，无论其它轴如何旋转，名字开头的这个轴总是绕物体
局部坐标对应轴作为旋转轴，而名字结尾的 X 则相当于全局空间的 X 坐标轴作为旋转轴。
名字中间的旋转轴就取决于另外两者的旋转状态，因为有优先级的关系，算法就可能存在 Gimbal Lock 现象。

![Gimbal](https://pic2.zhimg.com/v2-2f3d8c9c2de8c7f225ab65092598685d_b.webp)

以轴角表示旋转，Axis Angle 方式需要两个参数，旋转轴向量 𝑢 和旋转角度 Θ。即表示物体绕过原点的 𝑢 轴
旋转 Θ 角度。因该轴穿过原点，只需要一个三维单位矢量表示该轴方向。在三维空间中，旋转轴 𝑢 的坐标以及
旋转角组成四个自由度 (Degree of Freedom)，多于欧拉角的三个自由度。

轴角法有两个优点，两个硬伤：

- 优点一：同轴的两次旋转可以直接相加来等效为一次旋转。
- 优点二：定义简单，相对直观。
- 硬伤一：两个坐标系 xyz 和 x'y'z'，轴角法表示不唯一（角度规定在0-180）。当旋转角度为 0，旋转轴
  可以为任意方向。但是在应用中，一一对应很重要，这也就暴露出了轴角法表示的最致命的问题。
- 硬伤二：两次连续的旋转怎样合成呢？或者说是两个旋转如何做差呢？答案是没办法，除非借助其他表示方法。

下图演示了以微积分思想的三维旋转表达，d𝑢⃗/dθ = 𝑎⃗ x 𝑢⃗：

![Axis-Angle Rotations in 3D](https://www.reedbeta.com/blog/rotations-and-infinitesimal-generators/rotation03.png)

四元数旋转也定义了四个数，其中 W 定义一个角度，但它与轴角度截然不同。默认 w = 1.0 的前提下，旋转
1.0 相当 90°，但永远到达不了 180°，并且不是线性关系，设置系数 w = 0.5，旋转角度相当于加倍，
最大旋转角依然为 180°。

轴角旋转方式 Axis Angle (𝑣⃗, Θ) 可以对应到四元数旋转，但这种对应不是一一对应，即非满射关系，形式
也不同。

    q = (𝒘, 𝑣⃗)ᵀ = (cos(Θ/2), 𝑢 sin(Θ/2))
    Θ = 2argcos(𝒘)
    𝑢 = 𝑣⃗/|𝑣⃗|

按 𝑢 向量所对齐的轴旋转 𝑝 得到 𝑝' 可以表示为，q 或 -q 表示同样的旋转的两个方向，两个四元数旋转
可以变换成这两个四元数的叉积的旋转：

    (0, 𝑝')ᵀ = q (0, 𝑝')ᵀ q* = (-q) (0, 𝑝')ᵀ (-q*)

一个四元数值可以在几何学上解释为，定义 4D 空间中单位球体上的点。沿着球体的任何大圆移动，表示围绕固定
轴旋转，一个完整的圆匹配两个完整的旋转。

使用四元数进行旋转操作的优点：

- 提供球形旋转的平滑插值功能，Spherical Linear Interpolation (SLERP)；
- 解决万向节死锁（Gimbal Lock）问题；
- 仅需存储 4 个浮点数，相比矩阵更加轻量；
- 四元数无论是求逆、串联等操作，相比矩阵更加高效；

所以综合考虑，主流游戏或动画引擎都会组合缩放向量、旋转四元数、平移向量数据存储角色的运动。

总结一下已经得出的四元数特性：

- 四元数是四维空间中一个超球上面的点，满足 w²+x²+y²+z²=1。
- 四元数是复数虚部扩展的结果，复数的虚部为 1 个，而四元数虚部有 3 个，且两两互相正交。
- 由于 w²+x²+y²+z²=1 约束，四元数旋转只有 3 个自由度，且每个四元数可以对应一个特征向量，即 n。但请记住四元数并不是与特征向量一一对应。

在二维平面空间中圆表示为 x²+y²=1，在三维空间中球体表示为 x²+y²+z²=1，而四元数可表示一个超球体，
Hypersphere，而其中的 3 个虚部分即拥有三维空间，可以表示为一个球体。Grant Sanderson 尝试用
Stereographic projection 球极平面投影，降维投射的方式帮助理解四元数，将二维圆作为一维球极投影
得到一条投影线，球作为二维球极平面投影得到一个平面，超球作为三维球极平面投影得到一个球体。

由于四元数存在于四维空间，所以需要利用低维信息去理解高维信息。用三维球为例，代数方程为 x²+y²+z²=1，
虽然球上面的点是由 x，y，z 三个参数来确定，但实际上只需要两个，因为已经方程关系。假设 x 和 z 表示，
其中 y 可以通过 x 和 z 进行求解。所以将 y 轴信息给隐去，三维球就可以投影为平面上的圆，如下图所示。
图片来自 Visualizing Quaternions Chapter 8 Visualizing Spheres，教材用 q 表示四元向量。

![3D Sphere projection](https://pic2.zhimg.com/80/v2-8934d9751fb9f2485156b87b2d718171_1440w.webp)

> FIGURE 8.9 The standard sphere S² visualized as two filled 2D discs, the northern 
> and southern hemispheres, together with the equatorial circle (i.e., S¹ ) that 
> forms the border exactly between the two, at q₀ = 0, or equivalently at |q| = 1.

这张图的意思是，三维球在 xOz 平面上投影是一个圆，当球面一点投影在过圆心的平面与球面相交的圆上时，
y = 0，投影结果就是图上的圆。当投影位于圆内，则分两种情况，y > 0 处于北半球，y < 0 处于南半球，
两个半圆交界就是圆。所以，通过投影后的圆即可还原出整个球体。

![4D Sphere Projection](https://pic2.zhimg.com/80/v2-d636d27ab4a72b31925b1d610469b32d_1440w.webp)

> FIGURE 8.11 The quaternion S³ visualized as two solid 3D balls, the northern 
> and southern hemispheres, together with the equatorial S² that forms the border 
> exactly between the two, at q₀ = 0, or equivalently at |q| = 1.

推广到四维空间，w²+x²+y²+z²=1 中取 x、y、z 来表示超球 hypersphere 在三维空间上的投影。四维空间
的超球投影到三维超平面可能是一个 two-sphere，当投影点在整个 two-sphere 的交界时，w = 0。投影点
落在 two-sphere 的内部时，也分为两种情况，w > 0 和 w < 0。这两种情况下对应的特征向量是一样的，
所以我们将旋转矩阵向四元数转换时，是有两个对应值的，四元数的范围是 2 倍覆盖于 3D 旋转（2:1 mapping）。



### 🟢🔵 Calculus 微积分
- [Highlights of Calculus - Bilbert Strang](https://www.bilibili.com/video/BV13v411t7A6/)

微积分，包括微分和积分两种完全相反的问题处理思维，differential and integral，微分向细微处求解，
积分将细微变化累积成为一个完整的结构。

∫ₙᵐ


### 🟢🔵 Transformations 变换
- [Geometry Transformations](https://www.mathsisfun.com/geometry/transformations.html)
- [Matrices and transforms](https://docs.godotengine.org/en/3.5/tutorials/math/matrices_and_transforms.html)
- [Visualization - Geometric Algorithms](https://www.cs.usfca.edu/~galles/visualization/Algorithms.html)
- [GAMES101: 现代计算机图形学入门](https://sites.cs.ucsb.edu/~lingqi/teaching/games101.html)
- [GAMES101-现代计算机图形学入门-闫令琪](https://www.bilibili.com/video/av90798049)
- [Grant Sanderson - 3blue1brown 线性代数的本质](https://www.bilibili.com/video/BV1ys411472E)

图形学上的变换操作与矩阵运算密切联系，这需要掌握矩阵运算方法，主要是矩阵乘法。

这里说的变换是二维的仿射变换（Affine Transformation），即两种简单变换的叠加：线性变换加平移变换。
仿射变换后原来的直线还是直线，原来的平行线经过仿射变换之后还是平行线，这就是仿射。拉丁语 affine 
意思为“和…相关”，即和原型线性相关的变换。平移不是线性变换，因为平移并没发生线性关系的改变，如同一个
苹果放到另一个位置上，还是一个苹果，这个比喻可能不太恰当。

仿射变换变化基本包括：

- 缩放 Scale
- 平移 translation
- 旋转 rotate
- 反射 reflection
- 错切 shear mapping

仿射变换中集合中的一些性质保持不变：

- 凸性保持不变；
- 共线性：若几个点变换前在一条线上，则仿射变换后仍然在一条线上；
- 平行性：若两条线变换前平行，则变换后仍然平行；
- 共线比例不变性：变换前一条线上两条线段的比例，在变换后比例不变；

卡耐基梅隆大学计算机图形学 CMU 15-462/662 Computer Graphics 课件直观地演示了什么是线性变换。

![Linear Maps - Geometric Definition](http://15462.courses.cs.cmu.edu/fall2020/lecture/linearalgebra/slide_040)

课程对代数知识的讲解也非常全面，比如对方程组这个概念的解析，System of Linear Equations 即类似
以下一组方程，左手边是线性函数，右手边是常量。未知量有时也叫做自由度，degrees of freedom (DOFs)。
方程有时也叫做约束，方程组的目标是求解同时满足所有约束的 DOFs。

     x + 2y = 3
    4x + 5y = 6


对于一个集合 𝕏 的仿射变换可以定义为：

    f(x) = Ax + b, x ∈ 𝕏

二维平面上的点进行仿射变换只需要一个 2x2 矩阵，左乘两个矩阵具有连续几何变换作用，如下两种几何变换：

    [ 1 1 ]   [ 0 -1 ]   [ x ]     [ 1 -1 ] [ x ]   [ x - y]
    [ 0 1 ]   [ 1  0 ]   [ y ]  =  [ 1  0 ] [ y ] = [ x    ]

     Shear    Rotation   Input      Composition

代数化表达的各种线性变换矩阵：

    [ s 0 ]   [ 1 a ]   [  cosθ sinθ ]
    [ 0 s ]   [ a 1 ]   [ -sinθ cosθ ]
     Scale     Shear       Rotation

两个独立的变换等价于一个复合变换，按照矩阵乘法，旋转矩阵可以映射 [x, y] 为 [-y, x]，原先 x 映射
到了 -y 上，原先 y 映射到 x 轴上，也就是顺时针旋转 90 度。然后沿 x 轴切变为 [x - y, x]。注意，
这两个变换的矩阵运算顺序会影响结果。变换矩阵计算和书写顺序都从右往左，和复合函数 f(g(x)) 表达一致。
可以计算出等价的组合变换矩阵替代两个变换矩阵，但是现在记住两个矩阵相乘的几何意义更重要。

利用几何变换的意义去替代实际的运算，即通过跟踪向量基底的运动方向来理解矩阵运算产生的几何意义，这样
更有助于理解线性变换的意义。

图形学上，二维图像处理一般用 3x3 矩阵表达仿射变换的线性关系：

    [ x']   [ R₀₀ R₀₁ Tx ]   [ x ]
    [ y'] = [ R₁₀ R₁₁ Ty ] = [ y ]
    [ 1 ]   [ 0   0   1  ]   [ 1 ]

![Affine transformation - from Wiki](https://img-blog.csdnimg.cn/20190809112449680.png)


至于为何需要额外给矩阵添增加一个维度，即齐次坐标 Homogeneous coordinates，目的是为达成矩阵乘法
运算的条件，使能处理平移变换，增加 w 分量值意义取决于用途。

> “齐次坐标表示是计算机图形学的重要手段之一，它既能够用来明确区分向量和点，同时也更易用于进行仿射几何变换。”
> —— F.S. Hill, JR

- 2D point  = (x, y, 1)ᵀ
- 2D vector = (x, y, 0)ᵀ
- 3D point  = (x, y, z, 1)ᵀ
- 3D vector = (x, y, z, 0)ᵀ

Valid operation if w-coordinate of result is 1 or 0

- vector + vector = vector 向量相加还是向量
- point – point = vector 产生一个向量
- point + vector = point 移动一个点
- point + point = ?? 两点的中点 (x, y, w) --> (x/w, y/w, 1)，两点相加后 w 分量加倍，要变回 1 就需要除以 w。

通过齐次坐标，可以用它来区别点与向量，也可以在做运算时保持向量的平衡不变性质。

完整仿射变换包含 Geometric contraction、expansion、dilation、reflection、rotation、shear、
similarity transformations、spiral similarities 和 translation 等类别的组合，通常来讲，
可以简单地认为仿射变换由 Rotations、Translations、Dilations 和 Shears 四类组合而成。

在三维变换中，将二维变换推广使用，在 [4x4] 的仿射矩阵中，使用左上角的 [3x3] 作为缩放、切变、旋转
变换使用，多维度变换再组合到一块就是 3D 变换。对于旋转，通常也是按指定轴进行旋转，而不是按任意向量
进行旋转，这样会很复杂。

    [ x 0 0 0 ]  [ 1 0 0 x ]  [ 1     0     0 0 ]  [ cosα 0 sinα 0 ]  [ cosα -sinα 0 0 ]
    [ 0 y 0 0 ]  [ 0 1 0 y ]  [ 0  cosα -sinα 0 ]  [ 0    1    0 0 ]  [ sinα  cosα 0 0 ]
    [ 0 0 z 0 ]  [ 0 0 1 z ]  [ 0  sinα  cosα 0 ]  [-sinα 0 cosα 0 ]  [ 0     0    1 0 ]
    [ 0 0 0 1 ]  [ 0 0 0 1 ]  [ 0     0     0 1 ]  [ 0    0    0 1 ]  [ 0     0    0 1 ]
     S(x,y,z)     T(x,y,z)        Rx(α)                 Ry(α)                Rz(α)     

注意，旋转变换中的三角函数位置，对什么轴进行旋转操作，对应轴上的坐标就保留单位矩阵的取值。绕一个轴向
旋转，这个轴对应的矩阵系数就可以保持不变，即将位于对角线上的值设置为 1，行、列内其它的值设置为 0。

另外，旋转矩阵中的负号位置取决于坐标系统，以上这种写法适用于右手坐标系统，拇指指向 X，食指指向 Y，
中指指向 Z，并且三者相互垂直。即 XY 叉积指向 Z，而 YZ 叉积指向 X，ZX 叉积指向 Y。如沿 X 轴旋转，
负号跟着 Z 对应的矩阵元素，沿 Y 轴旋转，负号跟着 X 对应的矩阵元素，依次类推。使得向负轴方向看，
旋转角 α 的正负值始终和数学定义的正负方向一致，逆时针为正方向旋转。

关于旋转矩阵的推理求解过程，可以参考闫令琪的网课 GAMES101-现代计算机图形学入门  
![03 Transformation](https://www.bilibili.com/video/BV1X7411F744/?t=1111.3&p=3)

Euler angles 欧拉角旋转即按不同的轴向旋转，表示法以平驶飞机为主体参考对象：

- Z 轴 **Yaw**  - 偏航角，飞机绕垂直机身的中轴左右旋转的角度；
- Y 轴 **Pitch**- 俯仰角，飞机绕平行机翼方向的中轴上下摇摆机头的角度；
- X 轴 **Roll** - 横滚角，飞机绕行驶方向平行的中轴顺/逆时针旋动的角度。


3D 环境下三种旋转方式对比：

|     方式   |              优点                  |                 缺点                     |
|-----------|------------------------------------|-----------------------------------------|
| 矩阵旋转   | 使用齐次坐标可以算是平移，可按任意向量旋转 | 数据占用空间和时间上有些浪费，乘法操作增加计算量 |
| 欧拉角旋转  | 形象直观，只需要x、y、z轴的旋转角度       | 使用3个3x3的矩阵做变换，效率不如四元数        |
| 四元数旋转  | 4维的四元数可以绕原点任意旋转，可平滑插值 | 多了一个维度，比欧拉旋转复杂，不直观          |

欧拉角旋转通常要按照一个固定的坐标轴的优先顺序旋转，因此不同的顺序会造成不同的结果。这种优先处理方式
会造成万向节锁（Gimbal Lock）现象，因此种情形，欧拉旋转无法实现球面平滑插值。理论上，欧拉旋转可以
靠这各轴独立的旋转让一个物体指到任何一个想要的方向。

而万向节锁问题 gimbal lock，是在旋转过程中出现失去一个轴向上的自由度状态。

万向节，或平衡环架 Gimbal 是一具有枢纽的装置，作用是使得一物体能以单一轴旋转。由彼此垂直的枢纽轴
所组成的一组三只平衡环架，则可使架在最内的环架的物体维持旋转轴不变，而应用在船上的陀螺仪、罗盘、饮料
杯架等用途上，而不受船体因波浪上下震动、船身转向的影响。

![Gimbal](https://pic2.zhimg.com/v2-2f3d8c9c2de8c7f225ab65092598685d_b.webp)

这种装置在出现两个枢纽对齐重叠，就有引起一个自由度失效的问题。三维软件算法上处理不当，也会有类似现象。


仿射变换是二维平面重要的变换形式，在图形处理领域有广泛的应用，Godot 提供以下类型支持变换操作：

|    Class    |              Usage              |
|-------------|---------------------------------|
| Vector2     | Vector used for 2D math.        |
| Vector3     | Vector used for 3D math.        |
| Transform2D | 2D transformation (2×3 matrix). |
| Transform3D | 3D transformation (3×4 matrix). |

Godot 坐标系统中，按以下向量确定方向，x 轴指向 RIGHT，y 轴指向 UP，z 轴指向 BACK(backward)：

    Vector3.UP (0, 1, 0)
    Vector3.RIGHT (1, 0, 0)
    Vector3.FORWARD (0, 0, -1)

根据变换矩阵的维度不同，2D 或 3D，变换矩阵对象包含的只是一系列存储浮点数值的向量，也就是 xyz 三轴
对应的三个向量，通过下标可以访问这此矩阵元素，就像访问数组的元素一样。注意，变换矩阵只是定义如何变换，
而变换后的结果，如 3D 物体的旋转角度这些值则是另外的属性中存储的数据，在属性探测器 Transform 分组，
而变换矩阵数据则在 Matrix 分组中显示。变换后的属性值通过导出属性读取，如当前物体的旋转角度：

```py
var rotation:Vector3 = get("rotation_degrees")

var t = Transform2D()
# Translation
t.origin = Vector2(350, 150)
# Rotation
var rot = -0.5 # The rotation to apply.
t.x.x = cos(rot)
t.y.y = cos(rot)
t.x.y = sin(rot)
t.y.x = -sin(rot)
# Scale
t.x *= 3
t.y *= 3
transform = t # Change the node's transform to what we just calculated.
```

根据，数组在内存中的顺序结构，矩阵的第一个维度表示一行，第二维度表示列，如 t.x.y 表示 y 行 x 列。
一般不会直接修改变换矩阵的元素，而是通过方法来间接修改，最基本的就是旋转、缩放、平移三种仿射变换：

```py
Transform rotated(axis: Vector3, angle: float)
Transform scaled(scale: Vector3)
Transform translated(offset: Vector3)
```

```py
Transform affine_inverse()
Transform interpolate_with(transform: Transform , weight: float)
Transform inverse() 
bool is_equal_approx(transform: Transform )
Transform looking_at(target: Vector3, up: Vector3)
Transform orthonormalized()
Variant xform(v: Variant)
Variant xform_inv(v: Variant)
```

画布中的图像要显示到屏幕上，即从画布项目坐标系统转换到屏幕坐标系统，会经历以下四个变换。并且，画布
与 CanvasLayer 是可以嵌套的，即节点之间的层次受到本身坐标影响外，还受到 CanvasLayer 的影响：

- CanvasItem Coordinates
    - > CanvasItem Global Transform `CanvasItem.get_global_transform()`
    - > Canvas Layer Transform `CanvasItem.get_canvas_transform()`
    - > Viewport Global Canvas Transform
    - > Viewport Stretch Transform
- Screen Coordinates

注意，屏幕坐标是指程序窗口所占据的屏幕区域，左上角为原点，右下角为正方向。其中，Stretch Transform 
变换和项目设置 Stretch Mode 相关，可以通过 SceneTree 提供的方法手动给视口设置延申变换矩阵，目的是为了处理多分辨率显示的适应问题。

```py
void set_screen_stretch(mode: StretchMode, aspect: StretchAspect, minsize: Vector2, scale: float = 1)
```

使用 `CanvasItem.get_viewport_transform()` 获取 CanvasLayer、GlobalCanvas、Stretch 
三合一变换矩阵。

在输入事件`MainLoop._input_event()` 中，坐标数据是经过 Stretch Transform 变换后的值，这个
值对应的是窗口坐标。另外还提供了 `CanvasItem.make_input_local()` 函数方便转换到画布对象坐标。

默认状态下，输入事件中的鼠标位置是指全局空间下相对于当前节点的 CanvasLayer 的坐标，可以将其转换为
节点本地坐标，本地坐标方向与全局坐标不同，以左下角为原点，右上方向为正方向。全局坐标则以左上角为原点，
右下角为正方向，即上下反转关系。

```py
Vector2 get_global_mouse_position() const # 获取鼠标位于当前节点相对当前 CanvasLayer 的坐标

Vector2 get_local_mouse_position() const  # 获取鼠标位于当前节点本地坐标

InputEvent make_input_local(event: InputEvent) const # 输入事件的鼠标位置转换为当前节点本地坐标

Vector2 make_canvas_position_local(screen_point: Vector2) const
# Assigns screen_point as this node's new local transform.
```

本地坐标要转换为全局坐标，只需要按以下顺序做逆变换，即可以得到屏幕坐标。还可以模拟鼠标事件，将带有
指定坐标信息的鼠标事件投喂到 SceneTree 事件输入队列中：

```py
var screen_coord = get_viewport_transform() * (get_global_transform() * mouse.position)

var local_pos = Vector2(10, 20) # local to Control/Node2D
var ie = InputEventMouseButton.new()
ie.button_index = BUTTON_LEFT
ie.position = get_viewport_transform() * (get_global_transform() * local_pos)
get_tree().input_event(ie)
```


### 🟢🔵 Curve & Geometry 曲线与几何抽象思维
- [Geometry](https://www.mathsisfun.com/geometry/index.html)
- [从零开始学图形学 - 贝塞尔曲线](https://zhuanlan.zhihu.com/p/344934774)
- [曲线篇: 贝塞尔曲线](https://zhuanlan.zhihu.com/p/136647181)
- [Bezier Curve Demos](http://math.hws.edu/eck/cs424/notes2013/canvas/bezier.html)
- [Animated Bézier Curves](https://www.jasondavies.com/animated-bezier/)
- [【华中科技大学】计算机图形学 #万琳教授](https://www.bilibili.com/video/BV1V7411k74z?p=32)
- [GAMES101 现代计算机图形学入门  Geometry - 闫令琪](https://www.bilibili.com/video/BV1X7411F744/?p=11)
- [清华大学-计算机图形学基础 - 胡事民](https://www.bilibili.com/video/BV13441127CH/)
- [CS3621 Introduction to Computing with Geometry Notes](https://pages.mtu.edu/~shene/COURSES/cs3621/NOTES/)
- [Mesh Shimplification](https://pages.mtu.edu/~shene/COURSES/cs3621/SLIDES/Simplification.pdf)
- [Multiresolution Modeling A Very Brief Introduction](https://pages.mtu.edu/~shene/COURSES/cs3621/SLIDES/Multiresolution.pdf)

Bézier Curve 贝塞尔曲线是计算机图形学二维图形应用程序的数学曲线，曲线定义有起始点、终止点、控制点，
通过调整控制点，贝塞尔曲线的形状会发生变化。

1962 年，法国数学家 Pierre Bézier 第一个研究了这种矢量绘制曲线的方法，并给出了详细的计算公式，
因此按照公式绘制出来的曲线就用他的姓氏来命名，称为贝塞尔曲线。

二次 Bézier 曲线只需要一个控制点，可以画一条 1/4 圆弧。三次贝赛曲线，前两个是控制点坐标。可以通过
调节控制点的位置，进而调整整个曲线，比如使用两个控制点可以画 1/2 圆。

![Bézier curve](https://pic1.zhimg.com/80/c5e0a5463172222a82983fde34ccac5c_1440w.webp)

以二次 Bézier 曲线的实现过程解析，有起点、控制点和终点 P0、P1、P2，曲线的产生完全与这三个点位置相关。
为了确定画线，需要两个运动的参考点：

- R1 从 P0 到 P1 匀速移动；
- R2 从 P1 到 P2 匀速移动；

在期间 R1 R2 连线，其线段可能会长短变化，但只需按比例取 R1-R2 线上的点进行绘制即可得到平滑的曲线。
对于三次或更高阶的 Bézier 曲线，需要在参考点连线上再连参考线，依照处理，同样得到平滑曲线。

虽然贝塞尔曲线的阶数可以很高，但是阶数过高，调整控制点对曲线的影响就比较小，调整起来相当麻烦。于是，
通常用分段的贝塞尔曲线，保证每一小段不会太复杂。这样每次只用调小段，还可以做到只调局部不影响大局。

分段带来的唯一问题是，曲线在段与段的交界处，如何保证平滑？所谓平滑，就是一阶导数连续，左右导数的极限相同。
曲线 Anti-Aliasing，只需要在曲线附近做点插值就行，满足离曲线越近的像素的像素值越高，越远的越低，即可。

改进的样条曲线就是一种方便单独控制线段的曲线描述，最常用的是 B-Splines，即 Basis-Splines。样条中
每个顶点都有两个控制点，通过这两个控制点就可以改变线段的外观。

由样条曲线与平面结合，就可以产生任意的曲面，Non-Uniform Rational B-Splines (NURBS) 非均匀
有理 B 样条曲面是工业常用的曲面生成工具。通过曲线控制平面上的顶点偏移，从而构造出任意的曲面：

![Curve & surface](https://pages.mtu.edu/~shene/COURSES/cs3621/NOTES/surface/bs-local-mod-2.jpg)


曲面细分是指将一个模型的面合理的分成更多小的面，从而提升模型精度，提高渲染效果。而曲面简化是指将一个
模型的面合理的合成更少的面，从而降低模型精度，为特定情形下提供使用，如 Level Of Detail (LOD) 技术。

几何模型简化是图形学的难点，与之相反的是几何图形细分问题。细分的基本思想是在每条边上插入一个新的顶点，
随着细分次数的增加，折线逐渐变成一条光滑的曲线。曲面细分需要有几何规则和拓扑规则，几何规则用于计算新的
顶点位置，拓扑规则用于确定新顶点的连接关系。Catmull-Clark 细分是一种四边形网格的细分法则，每个面
计算生成一个新的顶点，每条边计算生成一个新的顶点，同时每个原始顶点更新位置。

时钟拨回到 1972 年, 在 Utah 大学的计算机科学课程上, 一位博士, 用贝塞尔曲线算法, 为这节课提交了
一个课程项目：A Computer Animated Hand，这只手, 是美国历史上最早记载的计算机生成动画(CG)。
这位博士就是卡特缪尔 Edwin Catmull，在此前 3 年，他刚拿到自己的物理系学位，凭借着对于图形的热情，
他成为了一家叫 Applicon 的做 CAD 软件的公司的雇员。直到他遇到了 Ivan Sutherland 而开始了计算机
科学博士学位的进修，仿佛重获新生，找到了将自己的艺术理想与理工科学结合的希望。Catmull 博士的毕业论文 
A subdivision algorithm for computer display of curved surfaces 至今超过一千引用。

Ivan Sutherland 是图灵奖得主、计算机先驱、冯诺伊曼奖章、工程与科学院院士、ACM会士、计算机历史博物馆会士，
伊凡·苏泽兰是计算机图形学之父，是 Sun 研究院的高级技术顾问，是隐藏在 Sun 团队背后真正的导师。


曲线是数学抽象思维的表达，通过数学语言来组织思考，并进行高度抽象思维，是一种从无到有的又准确的概括思维。
抽象是一个孤立的过程，是思考着逐渐将信息降维，以保留最普遍信息的一个过程。缺乏抽象思维，则面临被信息淹没。
缺乏逻辑，则难以建立问题与求解的关系。一边简化信息，一边建立问题与解的关系，才是最根本也是最重要的做法。

按以下将 6 项思维能力归类：

- 改变世界 <-- 创新思维
- 理解世界 <-- 整体思维、辩证思维、逻辑思维
- 感受世界 <-- 形象思维

可以把理解世界的 3 个基本的思维作为一个整体的抽象思维：

- 逻辑思维（一元思维、线形、明确的因果关系）
- 辩证思维（二元思维，对立统一的两个要素）
- 整体思维（多元思维，认为事物是相互联系的整体，既见树木又见森林）

思维是人脑借助于语言对事物的概括和间接的反应过程，看苹果是苹果，这就是`形象思维`。从一个苹果一根黄瓜
抽象出数字 1 的概念，进一步抽象出加减乘除四则运算的概念，这应该是大部分智力正常的人都能达到的。
然后从具体的数字运算抽象出用字母代替数字，出来方程、代数概念，这一步已经能淘汰一些人了。再抽象到集合，
抽象到函数，这一步能淘汰掉大半人以上。`函数`、`集合论`的抽象这一步过不去，就很难做进一步的抽象。函数
之上还有 epsilon-delta 语言，这是很多人第一次接触真正意义上的现代数理逻辑。是的，很多人的抽象思维
能力还根本没达到能读懂形式逻辑的地步，还有抽象代数，还有拓扑。

罗素说过，数学是符号加逻辑。大卫·希尔伯特 David Hilbert 说过，听别人讲解某些数学问题时，常觉得很难理解，
甚至不可能理解。这时便想，是否可以将问题化简些呢﹖往往，在终于弄清楚之后，实际上，它只是一个更简单的问题。


几何图形表达有显式、隐式两种基本形式：

- 隐式 Implicit：用解析式表示。易于判断点相对于面的位置，不易判断哪些点在面上。
    - 数学公式：解析几何使用数学公式表达几何体，缺点是不容易表示复杂形状。
    - Constructive Solid Geometry (CSG)：通过一系列基本几何的基本运算（例如布尔运算）来形成新的几何。
    - Distance Functions：如符号距离函数 Signed Distance Functions (SDF)。
    - Fractals 分形
- 显式 Explicit：显式给出或参数映射来定义几何表面。易于判断哪些点在面上，不易判断点相对于面的位置。
    - Point Cloud：点云是大量点的列表。它通过密集的点来给人以面的感觉。点云一般是扫描后得到的数据。
    - Polygon Mesh：多边形面是最常见的显式表示方式。

The Wavefront Object File（.obj）文件定义空间中的点、法线、纹理坐标等，然后组织起来表示多边形面。

距离函数描述空间中任何一个点到表面的最小距离，表面外部的为正数，表面内部为负数，SDF 为 0 的位置
就是物体的表面。使用距离函数对两个物体进行混合的做法是：先混合它们的 SDF，然后将结果恢复成形状。

例如 (x - a)² + (x - b)² = r² 表示一个圆形，但是对于一个没有接解过代数几何的人，是很难相像它
是什么的，这就是几何图形的隐式表达。即使受过高等数学教育的人，也难以想象一个复杂图形的代数表达。比如，
(R - √(x² + y²))² + z² = r² 就很难看出来是一个圆环。

但是，这种隐式几何图形的表达在计算处理时却非常有用，比如判断一个点是否在几何体内。

而一种比较直观的图形表达方式是图形的布尔运算，布尔是英国的数学家，在 1847 年发明了处理二值之间关系
的逻辑数学计算法，包括：

- 联合 unionwaov相交 intersection
- 相减 subtraction

在图形处理操作中引用了这种逻辑运算方法，以使简单的基本图形组合产生新的形体，还可以进行图形打散，并由
二维布尔运算发展到三维图形的布尔运算。

考虑图形关系的几种情况：

- 两图形没有相交部分，做布尔运算都简单。
- 其中一个图形包含另一个图形，这也是容易的情形，将其中一个图形反转方向绘制，这样得到的 Loop 就是镂空的。
- 当两个图形相交时，情况就复杂了。可能是点线相交，也可以是部分相交，根据不同的运算需求不一样。

Path 元素可能是所有 SVG 图形中最通用的形状，可能也是最难掌握的元素。图形学软件实现图形逻辑运算，
SVG 矢量图形对象布尔运算是常规需求，这是很有趣的问题，在一维的数学中 1+1=2，到了二维就是一个图和
另一图的运算。






## 🟡🟠 Godot 2D Animation 平面动画
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
- [Using TileMaps](https://docs.godotengine.org/en/3.6/tutorials/2d/using_tilemaps.html)
- [Using GridMaps](https://docs.godotengine.org/en/latest/tutorials/3d/using_gridmaps.html)
- [Real Time Navigation (3D)](https://docs.godotengine.org/en/3.6/tutorials/navigation/real_time_navigation_3d.html)

官方文档推荐了一个动画资源 Abstract Platformer，这组资源可以用来做 TileMap、AnimatedSprite
之类的动画演示。或者，使用官文展示的一组青蛙 Sprites：

![Frog Spritesheet](https://docs.godotengine.org/en/3.5/_images/2d_animation_frog_spritesheet.png)

TileMap 瓦片地图是 2D 游戏常见的技术，通过定义瓦片图集 TileSet，就是将图片按区域划分最小的区块，
然后，再用类似绘画的方式一样，将瓦片图绘制到 TileMap 上，最后得到的一个游戏关卡地图。技术上来讲，
TileMap 就是一个按格子分割的区域，用格子的形式来记录什么位置的格子要绘制什么图像。

TileMap 中的图像常采用斜角地图的形式，即 Isometric View，即等距视角下的地图，和透视相对，是指
视野内的物体，无论远近都用同一大小来表现，而绘画中常用的透视 Perspective 却是远小近大。

使用多个 TileMap 可以在同一块位置添加多张图像，以得到合适的场景。

为 TileMap 创建新的瓦片集，并点击打开编辑界面：

![TileMap Tool](https://docs.godotengine.org/en/3.6/_images/tilemap_tool.png)

先将源图片导入瓦片集中，然后点击 New Single Tile 创建第一个瓦片，通过拖动出一个矩形区 Region
定义好这个瓦片所使用的图像区域。要编辑已有的瓦片，点击 Edit 进行编辑状态，点击需要编辑的瓦片，然后
拖动鼠标重新定义瓦片区域。瓦片的其它属性，如名称等，可以在属性探测器面板中设置。

有了第一块瓦片，就可以将它绘制到 TileMap 中的网格上了。

对于代表玩家不能穿越的区域，可以给瓦片设置碰撞检测区，在瓦片编辑状态下，点击 Collision 定义一个
矩形，或者多边形作为碰撞检测时的参考区。

遮挡、导航形状区域定义用于 AI 寻路导航使用。


除了以上 Single Tile 方式单个地创建瓦片，还可以使用以下两种方式定义瓦片：

Atlas tiles：可以为图集一次定义一组瓦片，而不是一次添加一个，并且这种方式可以在绘画到 TileMap
时打开 Enabled Priority 以随机生成瓦片。并且，可以为其中任意的瓦片定义碰撞检测区。这种模式下，
可以在 Icon Mode 下选择一个图案作为在 TileMap 绘图列表的图标显示。而 Z-Index 模式则用来定义
各个瓦片的绘图时的 Z 深度值。还有优先级模式 Priority Mode 用来设置瓦片出现的随机概率值。


Autotiles：也类似地允许一次定义一组平铺，然后可以根据相邻单元格的内容添加规则来控制用于绘图的平铺，
瓦片选择由位掩码控制。单击 Bitmask 设置位掩码，然后单击要添加或删除掩码的瓦片进行设置：

- 左键单击瓦片的某个区域可添加 “on” 标记位，显示为红色；
- 右键点击设置 “off” 标记位，正常状态；
- Shift + 左键单击可设置 “ignore” 标记位；

Godot 使用 Autotiles 更新单元格时，首先会根据已设置的相邻单元格创建图案。它在 Autotiles 中搜索
具有与创建的图案匹配的位掩码的瓦片，如果找不到匹配的位掩码，将改用 “Icon” 瓦片。如果找到多个匹配，
将根据优先级设置随机选择其中一个。如何匹配 Bitmask 与图案的规则取决于 Autotile bitmask mode
属性，在探测器面板中设置，允许设置为：

- “2x2” 模式包含 4 个标记位，对应瓦片的四个角；
- “3x3 (minimal)” 模式包含 9 个标记位，四个角标记位功能同上；
- “3x3”。

必须满足所有 “open” 和 “off” 的标记位，才能匹配位掩码，但忽略 “ignore” 标记位。

另外，通过编程，可以批量修改 TileMap 的内容，TileSet 提供了方法根据 tile 名称获取 ID，然后可以
在 TileMap 中定位到全部分使用了 ID 对应的图像的格子坐标，这个坐标是格子的行列坐标，和世界坐标之间
可以相互转换。给 set_cell() 传递 -1 作为 tile ID 则可以清空格子内容。

通过这些方法，可以使用 TileMap 绘制各种对象的占位符号，然后编程替换成需要的节点对象。Godot 4.x
版本中，直接可以在 TileMap 中将场景当作 tile 使用。 

```py
# TileSet
int find_tile_by_name(name: String) const

# TileMap
Array get_used_cells_by_id(id: int) const
Vector2 world_to_map(world_position: Vector2) const
Vector2 map_to_world(map_position: Vector2, ignore_half_ofs: bool = false) const

# Node2D
Vector2 to_global(local_point: Vector2) const
Vector2 to_local(global_point: Vector2) const
```


缓动曲线是用数学公式计算一个时间段内某一个变量的平滑变化产生动画的技术，例如，在 1s 时间内将节点
的 x 位置坐标从 0 慢慢增加到 100，这种平滑的变化有不同的公式产生不同的动画效果，曲线参考图如下：

![Tween easing and transition types cheatsheet](https://raw.githubusercontent.com/godotengine/godot-docs/master/img/tween_cheatsheet.png)

使用 SceneTreeTween 和旧式的 Tween 对象创建缓动曲线动画变换效果，这是最基本的 2D 动画技术。

2D 动画涉及到的节点类型除了缓动程序，还包括但不仅限如下这些：

|     Objects      |         Base Type          |
|------------------|----------------------------|
| SpriteFrames     | Resource                   |
| AnimatedTexture  | Texture < Resource         |
| Animation        | Resource                   |
| Sprite           | Node2D < CanvasItem < Node |
| AnimatedSprite   | Node2D < CanvasItem < Node |
| AnimatedSprite3D | Spatial < Node             |
| AnimationPlayer  | Node                       |
| AnimationTree    | Node                       |

前两个资源类型用于包装动画图像资源，而 Animation 动画资源则作为动画轨道记录动画帧属性。

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

动画资源类型 **Animation** 保存的是动画相关数据，在 AnimationPlayer 编辑界面中以轨道的形式展示，
也可以通过编程方式设置动画轨道及关键帧数据：

```py
# This creates an animation that makes the node "Enemy" move to the right by
# 100 pixels in 0.5 seconds.
var animation = Animation.new()
var track_index = animation.add_track(Animation.TYPE_VALUE)
animation.track_set_path(track_index, "Enemy:position:x")
animation.track_insert_key(track_index, 0.0, 0)
animation.track_insert_key(track_index, 0.5, 100)
```

AnimationPlayer 节点作为关键帧动画，通过 Animation 资源类型记录场景内其它节点的属性变化来生产动画，
可以创建多个动画，以对象属性轨道的方式编辑，它还可以用于各种动画 2D 动画：

- Cut-Out animations: 剪影动画，如皮影戏的效果；
- 2D Mesh animations: 绑定骨骼控制图像的变形；

Animation 可以记录 6 种轨道数据，TrackType 定义的值如下：

● **TYPE_VALUE** 属性轨道，只记录可以插值的属性。
● **TYPE_TRANSFORM** 变换矩阵轨道，用于改变节点局部变换、骨骼姿态。
● **TYPE_METHOD** 方法调用轨道，设置要在动画播放时触发的函数，可以带参数。
● **TYPE_BEZIER** 贝塞尔曲线自定义插值轨道，可以对向量、颜色等属性的分量做动画。
● **TYPE_AUDIO** 音频轨道，使用 AudioStreamPlayer 播放音频流，可以在动画中修剪和预览该流。
● **TYPE_ANIMATION** 动画轨道，用于播放其它 AnimationPlayer 节点的动画。

动画播放器可以配合 Path2D、Path3D 以及 PathFollw 可以制作运动路径跟随，内嵌 RemoteTransform
作为子节点，它可以将自身的位置等状态，包含路径运动的产生的运动信息，发送给其它对象以实现路径跟随运动，
例如用路径控制运动学刚体 KinematicBody。


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

- Parallax Backgrounds 视差效果，配合 ParallaxLayer 节点设置背景图片，可以设置镜像延伸。
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


## 🟡🟠 Animation Blending 动画混合
- [Using AnimationTree](https://docs.godotengine.org/en/3.5/tutorials/animation/animation_tree.html)
- [Adobe Mixamo](https://www.mixamo.com)
- [Third Person Shooter demo](https://github.com/godotengine/tps-demo)
- [Retargeting 3D Skeletons](https://docs.godotengine.org/en/latest/tutorials/assets_pipeline/retargeting_3d_skeletons.html)
- [Animation Retargeting in Godot 4.0](https://godotengine.org/article/animation-retargeting-in-godot-4-0)
- [Better collada plugin for Blender](https://github.com/HungryProton/collada-exporter-2.8)
- [09.高级动画技术：动画树、IK和表情动画 | GAMES104-现代游戏引擎：从入门到实践](https://www.bilibili.com/video/BV1pY411F7pA)
- https://threejs.org/examples/#webgl_animation_skinning_additive_blending
- [spine-godot Runtime](http://esotericsoftware.com/spine-godot)
- [Spine Runtimes - spine-godot](https://github.com/EsotericSoftware/spine-runtimes)

官方文档提供的第三人称射击游戏示范项目 Third Person Shooter demo 是学习动画混合的好例子。

Adobe Mixamo 是学习 3D 动画的一个资源网站，它用许多现成的模型和动画预设，可以实现自动化的骨骼
绑定及动画制作，只要上传自己的角色模型稍作校正就可以完成动画制作，现有的动画素材也是很好的学习资源。

动画混合是一种重要的计算机动画技术，基本的动画技术在使用上存在难以使用的的问题。例如，游戏中玩家角色
同时可以不同的动作，也就是不同的动画融合在一起。比如，简单的动画可能有步行、跳跃、攻击行为等，在简单
播放动画的技术中，它们都是独立的，一个播放完就进行下一个动画。

典型的动画混合例子，就是将 3D 人物模型从走路动画过滤过渡到奔跑动画。但是，在游戏交互中要求远不止如此，
可能玩家在做跳跃动作时还突然想做出攻击动作，那么传统的动画就无法很好适应这种中间转播其它动画的操作。


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

根运动技术 **Root Motion** 是指，即因角色动作导致需要移到模型位置，拼接两个动画，就需要处理前后
两个动画中的模型位置，使其前后连接流畅。假设，现成的模型动画基于原点定位，当一个使用 Root Motion 
的动画播放到结束时，模型已经偏移原点。所以，当下一个动画跟着播放时，又瞬时回到了原点，这里就有位移差
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
AnimationPlayer 就不会发出 animation_finished 信号。另外，通过 AnimationTree 触发的动画
播放行为也不会生产 AnimationPlayer 的这些动画播放的相关信号，因为它们属于不同的对象。


以最简单的 1D 混合空间为例，给 AnimationTree 添加上 **AnimationNodeBlendSpace1D** 根节点，
打开 Bottom Panel 中的动画树面板，可以看到混合编辑器中只是一维的时间坐标轴，可以往不同的位置添加
动画节点，或者嵌套地添加其它 Animation Root 根节点用来混合更多的子节点。

直接通过 Create Points -> Add Animation 将两个青蛙跳跃动画添加到轴线上，然后设置 Blending 
Position，在两个动画定位点之间移动，即混合两个动画的数据。在正中中间时，因为动画使用的 scale.x
分别为 1 和反转时的 -1，所以结果会将青蛙的图形的 scale.x 混合为 0，使用得图像不可见。将混合点
移动到任意一侧，则结果就是完全输出最靠近的这个动画，另一个动画对结果完全没有影响。

2D 混合空间则可以在二维空间中设置混合点，在二维空间中至少放置 3 个动画点，以形成一个 2D 图形区域，
当混合点与动画点越接近时就得到这个动画点的更多混合量，直到完全输出这个动画点的动画：

![BlendSpace2D](https://docs.godotengine.org/en/3.5/_images/animtree8.gif)

2D 混合模式有三种选择，默认情况下，Blend Mode 为线性模式，通过在最近的三角形内插入点进行混合。
处理 2D 动画（逐帧）时，可能需要切换到离散模式 Discrete mode，下拉菜单中显示为 3 个点。或者，
如果希望在离散动画之间切换时保持当前播放位置，则使用有进位模式 Carry mode。

同样使用青蛙的跳跃动画来演示状态机的使用，给动画树添加 StateMachine 根节点，然后在底面板的动画树
编辑器中，点击状态机管理界面中的 + 号增加动画节点，分别添加 jump_left、jump_right，还有动画树
默认提供的 RESET，即休息节点，没有动画的静止状态。然后，点击穿线箭头图标，看起来像飞机，给三个状态
添加连接线，使用 RESET 与其它两个动画实现双向连接，而两个跳跃动画相互不连接。

例如，当前处于 jump_left 状态中，播放的就是向左跳跃动画。然后，再点击 jump_right 状态的播放图标，
如果 Play Mode 设置为遍历模式 Travel，表示状态不会直接从 jump_left 切换到 jump_rigth 状态，
而是按连接线，先切换到 RESET 状态，再切换到 jump_right 动画状态。

状态机中每个节点都是一个状态，对应的一个动画，点击状态节点上的播放图标就可以切换到这个状态。节点上
显示的文字就是状态名称，调用 **start()** 等方法做状态转换时，需要使用这个名称，不因为有空格导致
状态名称不匹配而不能播放动画。节点状态会一直保持播放状态，除非调用 **stop()** 方法停止。

注意，默认的 **RESET** 动画用于最初加载对象时的姿态，只有一个帧，并且不期待被用于时间轴的回放。
为了动画混合结果可以重播保持一致，要混合的属性需要设置初始值。所以，在状态机中执行了 RESET 动画
状态时，它可能会影响到其它和 RESET 相关的动画。

对于 Skeleton3D 骨骼使用位置/旋转/缩放 3D 轨迹时，初始值为复位骨骼 Bone Rest。对于其他属性，
初始值是 0，如果轨迹出现在 **RESET** 动画中，则使用其第一个关键帧的值。

2D 或者 3D 的旋转轨道设置的插值方式为线性角或者立方体角度时，Linear Angle or Cubic Angle，
可以用来限制旋转角度保持在与初始角度到 180 度的范围，这可以用来避免角色肢体发生违反生理现象的旋转。
可以在混合动画时防止骨骼穿透身体，因此，Skeleton3D 的 Bone Rest 值应尽可能接近可移动范围的中点。
这意味着，对于人形模型，最好以 T 形姿势导入。像上面的角色演示动画这样，可以看到动画按 Bone Rests
位置优化最短的旋转路径，而不是两个动画之间的最短旋转路径。

需要通过混合动画旋转 Skeleton3D 超过 180 度的情况，可以考虑使用 Root Motion 功能。通过动画树
获取到的 Root Motion 是一个变换矩阵对象，它包含了根骨骼的实时运动，可以将这个变换信息传递给角色
控制类型的运动处理方法就可以让动画前后流畅地拼接起来：

```py
func _process(delta):
    var motion:Transform = animation_tree.get_root_motion_transform()
    # This can be fed to functions to control the character movement, such as 
    # KinematicBody.move_and_slide (Godot 3.x)
    # CharacterBody3D.move_and_slide (Godot 4.x) 
```

状态转换模式设置决定了状态机如何切换动画，有 3 个切换模式：

- Immediate：立即模式，将立即切换到下一状态，当前状态将结束并融入新状态的开始。
- Sync：同步模式，将立即切换到下一个状态，但会 seek 寻找到新状态到与旧状态一致的回放位置。
- At End：结束时模式，将等待当前状态播放结束，然后切换到下一个状态动画的开始。


A* 算法实现的遍历功能是 Godot 的 StateMachine 实现中的一个很好的特性，可以指示从当前状态转到
另一个状态图，同时访问所有中间状态。要使用状态遍历功能或进行状态转换，首先，从动画树节点检索出状态机
回放对象 **AnimationNodeStateMachinePlayback**。注意，它通过导出的属性引用，属性导出路径可以
在动画树的属性面板中找 Parameters -> Playback，拖动属性到脚本编辑器中即可，然后使用 Object 
**get()** 方法获取。调用 **get_travel_path()** 可以获取遍历的路径：

```py
# AnimationNodeStateMachinePlayback
var playback_path = "parameters/playback" # or parameters/StateMachine/playback
var state_machine = $AnimationTree.get(playback_path)
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

以下是 Blend2 混合节点的效果演示：

![Blend2](https://docs.godotengine.org/en/latest/_images/blending5.webp)

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




## 🟡🟠 Color Theory 色彩理论
- [色彩构成理论基础](https://www.bilibili.com/video/BV1Vx411G7ZV)
- [色彩搭配基础理论](https://www.bilibili.com/video/BV1t7411o79q)
- [Jerry Vickery 光影色彩理论](https://www.bilibili.com/video/BV14t41127Xz)
- [色彩搭配的原理](https://www.bilibili.com/video/BV15b411q75C/)
- Contemporary Color : Theory and Use, Cengage Learning, by Steven Bleicher
- Color and Light: A Guide for the Realist Painter, Andrews McMeel Publishing, James Gurney
- [Victo Ngai 倪传婧 Mastering Color: Simple Steps to Create Vivid Art](https://www.bilibili.com/video/BV1At4y1S76A)
- 画家之眼 the Eye of the Painter and Elements of Beauty by Andrew Loomis
- [Key to Drawing 素描的诀窍 (美)伯特·多德森](https://book4you.org/book/15425289/667bb9)
- [The Complete Introduction to Drawing](https://book4you.org/book/3690965/5f8857)
- [观看之道 （Ways of Seeing, 1972）约翰·伯格](https://www.bilibili.com/video/av15938583/)
- [The fundamentals of understanding color theory](https://99designs.com/blog/tips/the-7-step-guide-to-understanding-color-theory/)

学习色彩理论目的是掌握色彩的应用，正确地使用色彩表达创作意图，以及色彩关系来影响或引导观众的注意力。

最简单的色彩应用就是文字的粗体，读者在看到一页满是文字的报纸，首先看到的就是大字标题。这就是色彩理论
最朴素的应用，而在商业中，色彩的应用远比这报纸的文字复杂的多。在现代社会，人类有限的时间里，有限的
注意力是一种极宝贵的资源。

体积感的表达和线条、颜色的使用密切相关。例如，在球体表面上平滑过度的暗部表达了这是平滑曲面，明暗变化
明显的位置就隐含了一条分界线。在暗部过度的区域填上一块特别暗的色块，就很容易给视觉造成一种深坑的感觉。
因为光线不能完全打在平滑的表面，更无法照进深凹的坑内。

美国美院基础教学法：五明度法，只需考虑形状，明度和形状之间的边缘，是一套适合初学者简单而规范的方法论。

颜色是眼睛能观察到的电磁波，波长越短能量越低，波长越短能量越高。按照红、澄、黄、绿、青、蓝、紫顺序排列，
绘画中主要是区分颜色对心理的冷暖感觉的影响。特定波长的能量可以被物体吸收，例如，火焰看起来越偏红、黄，
这些光是属于可以被人体吸收的热辐射光，这是暖色调。而能量更低的绿色、蓝色使心理感觉显得冷，如雪天的蓝，
又比如植物也会吸收能量而过滤掉非绿色的光线，反射出来的基本是绿色光。

早晨的天空多呈现蓝色，因为无云层,大气对太阳光主要起散射作用。紫光的波长最短，散射能力最大，在没有到
达地面之前就在外层大气中散射掉了，接近地面的紫光很少。而蓝光最多，所以我们在地面看天空是蓝色，而在
高空则逐渐变成紫色。

而傍晚天空多是火红色，因为日间太阳的能量使得空气上升造成云层密集，并且对短波长的蓝、绿光线有更强的
过滤作用，而红、黄光则更容易穿透云层。这些日积月累的自然现象已经是刻进 DNA 的信息，就如自然的条件
反射，即是冬天，眼睛看到红色就会有暖意。

眼睛看到的颜色不是光的颜色，而是光从物体表面反射的颜色。比如绿色植物，用来吸收光能的叶绿素对太阳光
有两个吸收高峰，分别是 440nm 附近的蓝区和 680nm 附近的红区，而对于处在 500 - 600 纳米之间的
绿光吸收的甚少，绿光就反射被眼睛接收到。

《色彩互动学》 Interaction of Color 本书记录了如何用实验的方法学习和教授颜色知识。从物理和生理上讲，
视觉感知到的颜色并不真实。这一事实让颜色在艺术创作中富有弹性。高效使用颜色，有必要逐步识认颜色如何欺人。
为此，本书以互动的方式来研究颜色系统。


用来绘画的颜料就是利用其对光线的反射形状，红黄蓝三种原色，使用这三种颜色可以混合得到任意的其它颜色。
所谓原色 Primary，正是指不能透过其他颜色混合调配而得出的基本色，在不同领域使用不同的原色，例如，
显示器光学三原色 RGB，是叠加色模型，色值越高就越亮。三原色相加为白色，属于无色系（黑白灰）。

![Additive color mixing](https://99designs-blog.imgix.net/blog/wp-content/uploads/2017/02/RBG-2-column.png?auto=format&q=60&fit=max&w=930)

原色两两混合就可以得到三种间接色：

    红+绿=黄     红+黄=橙
    绿+蓝=青     蓝+黄=绿
    蓝+红=紫     蓝+红=紫

颜料三原色（CMYK）：品红、黄、青(天蓝)，属于减色法，颜料用得越少，吸收的光线就越少，颜色越浅。三原色
可以混合出所有颜料的颜色，同时相加为黑色，黑白灰属于无色系。

![Subtractive color mixing](https://99designs-blog.imgix.net/blog/wp-content/uploads/2017/02/CMYK-915x915px.png?auto=format&q=60&fit=max&w=930)

传统美术色彩三原色：红，黄，蓝，属于减色法原理。为人们加入了感觉实际，是实际上的三原色。

绘画中更常用的是 HSV 色调模型：

- Hue：色相/色调，就是我们所说的颜色的含义。
- Saturation：饱和度，是指纯色的强度，换句话说，颜色是否显得更隐晦、暗淡或者更有活力。
- Value：亮度，色值与颜色的深浅相关。

色相、色调是同义词，但色调更加强调画面统一的色彩感受和色彩倾向，是画面给人的整体色彩印象。色调不统一，
画面中的色彩就是一盘散沙，画面中的每一块颜色都应该服从于整体的色调，在统一的色调下形成丰富的变化。

马赫带效应（Mach band effect）是一种主观的边缘对比效应。观察亮度不同的两块区域，边界处亮度对比加强，
使轮廓表现得特别明显。生理学对马赫带效应的解释是：人类的视觉系统有增强边缘对比度的机制。

![Mach band effect](https://pic4.zhimg.com/80/v2-dd31b2d7e50e5a6ecab13b2a89c719ff_1440w.webp)

在自然环境中，植物的花朵、果实通常是高饱和度的颜色，纯红、纯黄、纯黑等等。

绘画软件中常使用一个色环表示色彩模型，Hue 的取值 0° ~ 360° 循环表示 红、澄、黄、绿、青、蓝、紫、红，
再搭配一个矩形色块表示饱和度和亮度。

除了原色混合得到的间接色 Secondary Colors，第三类颜色就是复色，或称为三次色 Tertiary Colors。
它们是由色环中邻近的原色和间色混合而来，六种基本的复色分别是黄绿色、蓝绿色、蓝紫色、紫红色、红橙色、黄橙色。

![Pigment colours](https://public-media.interaction-design.org/images/uploads/user-content/1445/S9qTpVld44SchHmpmYf7mYgCmcOhXwGdb5eD56t8.jpeg)

可以注意到，绿色部分占据的位置是最多的，同时绿色也是可见光中分布最广的部分，相应地眼睛感光区中分布的
感知绿色的视锥细胞数量也最多。从能量集中角度看，不利于植物的光合作用采用，所以叶绿素采用能量更集中的光。
由于眼睛的绿色感光细胞分布更多，所以在晚上，绿色光更容易被感知，也就是说同样的强度的光，绿色会更明显。

阴影是可以主观取舍形状的，并不是每一个地方都要面面俱到；阴影是可以色彩倾向很强的，也要和画厚涂时候
一样注意冷暖；同一块阴影可能因为位置不同，颜色也会有变化。

在厚涂绘画过程中，通常会先上大块的底色，这和油画的前期铺色操作一样。先判断物体的纹理走向，在绘制纹理
前预先将大块的底色铺到画布上，然后再慢慢添加纹理细节。在铺底色时要大胆，不要考虑细节，只需要在保证轮
廓或明暗分界线正确的前提下无拘无束地绘画。

颜色理论中的搭配公式 Color Schemes：

1. *Monochromatic*：单色搭配，并使用饱和度和色值的知识来创造变化。该方案的好处是色彩能够保证匹配。
2. *Analogous*：相似色搭配，使用色轮中彼此相邻的色彩进行搭配，比如红色和橙色。
3. *Complementary*：互补色搭配，互补色在色轮中彼此相对，如蓝色和橙色，使用不同饱和度避免互补色方案呆板。
4. *Split Complementary*：分裂互补配色，使用相对颜色的两侧相邻颜色进行搭配。可以提升对比也更有趣。
5. *Triadic*：三元色搭配，采用三种均匀分布的颜色，在色轮上形成一个完美的三角形。
6. *Tetradic*：四元色搭配，使用的颜色在色轮上形成了一个矩形。可以将其中一个颜色用于主色，其余用于辅色。

![Complementary colors](https://99designs-blog.imgix.net/blog/wp-content/uploads/2017/02/Complementary-3-column.png?auto=format&q=60&fit=max&w=930)
![Analogous colors](https://99designs-blog.imgix.net/blog/wp-content/uploads/2017/02/Analogous-3-column.png?auto=format&q=60&fit=max&w=930)
![Triadic colors](https://99designs-blog.imgix.net/blog/wp-content/uploads/2017/02/Triadic-3-column.png?auto=format&q=60&fit=max&w=930)

经典的颜色行为准则：

1. 遇到扎眼的色彩搭配时，最简单的一个办法就是想办法确定色调。选择其中一种颜色，调整明暗度或饱和度。
2. 可读性 Readability 是任何设计的必备要素。清晰易读 Legible，避免繁杂，多用中性颜色平衡画面。
3. 每种颜色都会发出一个信息。重要的是要考虑到项目的色调，并选择合理的配色方案。
4. 你可以在各种有趣的地方找到配色方案，比如广告、配色网站以及一些有名的艺术作品。

色彩的七种对比即色相对比、明度对比、冷暖对比、补色对比、同色对比、色度对比和面积对比：

- *明度对比*：明度对比指黑、白、灰之间的关系，也是常说的素描明暗关系。黑、白两极之间的色阶非常明确，
            容易分辨。依明度关系分画面有高调、中调、低调之分。明度对比是构成色彩中层次感、体积感、
            空间感、重量感的重要因素，从画面层次感、空间感受的角度理解，明度关系使前景亮、远景暗；
            受光近的亮、受光远的暗。从体积感和重量感理解，越深的色调越重，越亮的色调越轻；层次越
            丰富的色调，体积感受越强，层次越简单的色调体积感越弱。
- *同色对比*：同色对比是色彩美学的核心。没有同色对比就没有色彩的互补规律，也没有色彩的和谐。同色对比
            中因纯度的强弱不同而形成对比，属“同类色对比”的色调。在观察和区别这类色彩时必须进行比较，
            区别出其色相的细微差别，而且注意其明度和纯度。不然，容易画得色彩雷同。一般说，不同色性
            和色相距离大的容易区别，而同类色接近的区分较难，通过这类训练，可以提高观察力和表现力。
- *色度对比*： 色度对比也称纯度对比，即强烈和暗淡色彩之间的对比。纯度较高的色彩以原色为最纯，加入相
            近的同类色彩也有较高的纯度。暗淡的色彩是加入了黑、白、灰或对比色使色彩减低了纯度。由不同
            色相、色性、明度、纯度等色彩组成的画面，它们之间产生不同程度的对比，形成画面的整体效果，
            一般较为常见。但此类对比，应该把一种色相作为主导色，把一种对比作为主要对比来统一全局，
            防止过于分散和杂乱。由于色彩和各种复杂关系，需要特别加强整体观念，从整个画面效果出发，
            有比较地表现出不同层次和主次关系。
- *色相对比*：色相对比是因色与色之间的差别而形成的对比。对比越强烈，色彩效果越鲜明，对感官刺激越大。
            红、黄、蓝三原色是最原始、最典型的色相对比。用冷暖来表示色彩的感觉和心理，主要源于人们
            的经验。“暖”色给人以热烈的气氛和温馨的感觉，“冷”色给人有凉爽和严肃的感觉。
- *冷暖对比*：色彩有冷暖之分。冷色泛指蓝绿色系，暖色指红黄色系，然而冷暖对比不是绝对的，关键取决于
            它同更冷的还是更暖的色相来比较。冷暖对比在色彩运用当中极为重要，是色彩的研究的关键所在。
            从色彩自身的功能来看，红、橙黄色使观者心跳加、血压升高，所以产生热的感觉。蓝、蓝绿、蓝紫色
            能使观者血压低、心跳慢，产生冷的感觉。色彩在冷暖感觉是色彩的物理、生理、心理及色彩本身
            综合性因素决定的。
- *补色对比*：在色相对比中，色彩互相联系衬托、互相补充，所以也叫互补色。补色对比 最强的是红与绿、黄
            与紫、蓝与橙，其它次之。所谓补色的对比是指看到任何一种特定颜色，眼睛都会同时产生对其
            补色的需要。如一张白纸单独看是白纸，在红纸上会感觉含绿、放在绿色纸上会感觉含红。补色对比
            搭配可构成互补色调，互补色相色调的色相感比对比色相色调效果要更强烈、更丰富、更完美、
            更有刺激性。互补色相色调能满足视觉色相的要求，取得视觉悟生理上的平衡，既对立又互补。
            互补色相如与明度、纯度相配合可构成审美价值很高的色彩效果。
- *面积对比*：面积对比是大与小之间对比。便面积对比不能单纯从体量上进行比较，要注意色彩视觉效果的均
            衡问题，而均衡度又随色彩明度的变化而变化。面积对比实质上是一幅作品中所含的色彩数量的
            比例对比。画面色彩面积的分布会产生不同程度的强弱对比，调节大小可以取得的色彩对比强弱、
            色彩的韵律节奏以及视觉上力的平衡。因此面积对比是具有结构性的，它是整个画面“明暗结构”
            和色彩结构“的重要组成部分。由于面积对比所起的重要作用，因此在构思构图时需要优先考虑。


视觉上的色彩错觉或误差是人们在感知外部世界时经常体验到的一种知觉状态。其具体表现在眼睛感知的色彩效果
（心理上的真实）与客观存在的色彩实体（物理上的真实）之间存在着一定的差距。色彩视错现象的产生除以生理
特征为前提条件外，还与物理因素、心理作用密切关联，并且各具特点。大体上分，色彩视错主要包括物理性视错与
心理性视错。

从生理学角度讲，物体对视觉的刺激作用突然停止后，人的视觉感应并非立刻全部消失，而是映像仍然暂时存留，
这种现象也称作“视觉残像”。视觉残像形成原理是，因为神经兴奋所留下的痕迹而引发，是眼睛连续注视的结果，
所以称之为“连续对比”。视觉残像又分为为正残像和负残像两类。

眼球中的视锥细胞包含能感应红色、绿色和蓝色的光化学物质。凝视某物体超过数秒之后，这些物质就会开始损耗，
然后视锥细胞开始向我们的大脑发送错误的信息，大脑依然会收到影像，这叫做*残影*。

所谓的正残像，又称“正后像”，是连续对比中的一种色觉现象。它是指在停止物体的视觉刺激后，视觉仍然暂时
保留原有物色映像的状态，也是神经兴奋有余的产物。如凝注红色，当将其移开后，眼前还会感到有红色浮现。
通常，残像暂留时间在 0.1 秒左右。影视艺术就是根据这一视觉生理特性的创作，如把每秒 24 个静止画面
连续放映时，眼睛就可体验到与生活中的运动节奏相对应的印象，因而使人感到栩栩如生。
 
所谓的负残像，又称“负后像”，是连续对比中的又一种色觉现象。它是指在停止物体的视觉刺激后，视觉依旧暂时
保留与原有物色成补色映像的视觉状态。通常，负残像地反映强度同凝视物色的时间长短有关，即持续时间越长，
负残像的转换效果越鲜明。例如，当久视红色后，视觉迅速移向白色时，看到的并非白色而是红色的补色——绿色。
如久视红色后，在转向绿色时，则会觉得绿色更绿。而凝注红色后，再移视橙色时，则会感到该色呈暗。


要观察这种现象，只需要在全黑的背景中用白色线画出格子，然后就可以观察到白色线条的交叉点会出现黑点残像现象。

![棋盘视错觉](https://picx.zhimg.com/80/bfa8d0ad15cf0ac735b9df38a5948411_1440w.webp)

先注视左侧的狐狸 30 秒时间，然后再注视右侧的狐狸，会在右侧的狐狸上发现一个红色的闪影。

![Fox](https://img3.jiemian.com/jiemian/original/20151011/144454807244297500_a700xH.jpg)

这张 19 世纪的紫罗兰雕刻画背后藏着拿破仑·波拿巴和他的第二任妻子玛丽·露易丝以及他们的儿子。观看这种
模糊的画像时，你的大脑被迫选择或是看画或是看脸，要同时看到这两样东西是很难的。提示：你可以找到拿破仑的帽子。

![](https://img1.jiemian.com/jiemian/original/20151011/14445479452906300_a700xH.jpg)

在大面积的背景色中，一个灰色点会自然地出现背景色的补色的倾向。

眼睛的观察力总会被大块的背景色影响，背景效应每天无时无刻不在发挥着作用，我们甚至都不会觉察到。比如，
在艺校中用来训练的灰度级色块，不同背景色下会表现出不同的效果。在全白的背景色下，黑色块会显得特别黑，
而其它浅灰色会显得模糊。而如果在全黑色背景下，白色就会显得特别光亮。所以，眼睛会分辨不了在不同背景色
中的两个相同的色块。

背景效应几乎时刻在欺骗眼睛，一个简单的列子就是使用黑白棋盘格，一半放在阴影下，另一半放在阳光下。由于
视觉经验，大脑会自动识别阳光下的黑色格子为黑色，但其实在阳光下的黑格子和阴影下的白色格子色值是相同的。

![棋盘视错觉](https://pic1.zhimg.com/80/v2-ea71587ad249dfec6a460e7815e112d6_1440w.webp)

Victo Ngai 倪传婧在其 Mastering Color 网课上举例：
在 HSV(309, 28, 40) 和 HSV(104, 30, 68) 两个背景色块中，分别放置饱和度、亮度都更低的两个色块
HSV(311, 17, 42) 和 HSV(104, 15, 62)，在背景效应下，这会让它们看下来是一样的颜色。

因为，降低了饱和度，颜色更难以区分色相，同时降低亮度又加强了这一变化。白色背景会让其它颜色看起来更暗，
而黑色背景则会让其它颜色看起来更亮。

所以，大脑通过眼睛看到的似乎一样的颜色，或者是不一样的颜色，都不一定是正确的，答案就在数字化图像中。
大脑只需要一个合理的颜色关系，眼睛自然需要降低颜色的高对比度，在绘画时，需要考虑这种特性。


参考 Color and Light by James Gurney - Separation of Light and Shadow。书中还比较了
直接观察与参考照片的绘画方式的区别，指出了参考照片进行绘画的不足。因为由于设备光线动态范围能力有限，
有些区域会出现纯白或纯黑，丢失大量细节。

Victo Ngai 倪传婧在其 Mastering Color 网课上指出几条最重要的色彩原理：

- **相对性原理** Relativity：色彩之间具有关联性，不可将色彩单独看待。眼睛的观察是感性的，背景效应解释了眼睛对颜色的观察并不完全准确。
- **一致性原理** Consistency：同一件作品中的颜色应该存在于同一个世界中，在作品中传达颜色一致性很重要。
  比如在一紫色水池中，水中的物体也应该是在紫色这个色调，否则，没有和紫色产生关系，物体看起来就像是游离在另一个空间。
- **色值对比原理** Value Contrast：使用明暗对比区域来引导观众的视线。在一幅暗调的画面中的亮色，或者一幅明亮色调画面中的暗色，会具有聚集作用。
- **强调色原理** Accent Color：适当的强调颜色可以突出画面重点，并具聚集目光。列如，冰天雪地中的红色，在蓝色调画面中的红就是最吸引目光的。
- **比例原理** Ratio：使用更强的饱和度选出一种颜色作为主导，特别是使用互补色配色方案时尤其是，否则其它颜色就会打架。

课程中，还演示了如何从参考作品或者图片中获取配色方案，并将其转化为自己的工作中使用的调色板，并加入自己的个性化元素。


素描的诀窍提到光的效果要点：

* 把亮的部分和暗的部分区域标记出来。开始时，把阴影部分的边界明确定出来，后续可以淡化、修改边界。 
* 用光影图案定造型。找出光影图案的四个基本要素:亮面、 暗面、投影和反射光。精心地勾画出这四个要素就可以产生很强的三维感。 
* 处理好硬边缘和软边缘。前者要有力度，后者要有柔度。两种边缘处理得好的话，可以产生非常逼真的效果。 
* 通过渲染光源和光的性质分析光。 
* 渲染氛围。要想让画更吸引人、更打动人，就要使用特殊效果的光，勾画特殊的投影，或是在重要部分的暗处投上光。 
* 比较色调，从而构建色调关系。色调是在彼此对比中才显出深浅。 
* 合并阴影形状。阴影是伟大的统一者，它可以把画中的不同部分连接起来。用一个阴影形状就可以把一群小的形状拉到一起，细节不再是最重要，而整体的效果却明显增强。 
* 用光来制作图案。当你开始把光和影作为形状看待的时候，它们就成为了制图的工具，勾画出各种图案。


《画家之眼》这本书的主题就是美的十二项基本要素：

- *统一*（unity）：这种一体性将画面的所有特质结合成单一表现或整体表现，意即将设计、色彩、线条、明暗、
        质感和主题巧妙安排，结合为一种全面性的表现。
- *简洁*（simplicity or clarity）：把跟主要构想无关的所有素材和细节变成次要，将主题简化为最
        基本的设计、形式与图案。
- *设计*（design）：意指块面、形式与色彩的整体关系。画面就是由设计创造出来的。
- *比例*（proportion）：意指画面中各个主题与各个部分的协调关系。比例失真（distortion）就不协调，
        不过某些失真或许是合理的，因为画家可能想要强调某个构想或情感。
- *色彩*（color）：这是美的要素中最有影响力的要素之一，而且在使用这项要素时，画家不能只以品位和
        好恶为准则，还必须了解色彩与明度的关系，以及创造写实与协调效果的基本调色原理。
- *韵律*（rhythm）：也可称为节奏，虽然这项要素常被轻视或误解，却对画作美感有极大的贡献。所有生物和
        非生物都有韵律，从最微小的形体到宇宙的循环无一例外。没有韵律，形体就静止不动，也毫无生气。
        如同自然界的运作，相近色或线条的重复，或是形状渐进扩大或缩小，都能为画作创造韵律。举例来说，
        树木本身枝丫和树叶的重复线条韵律，斑马背上的线条，或花瓣和花朵纹路的线条也能发现韵律。
- *形体*（form）：形体结构与整体的关系是一项基本艺术原理。万物存在的样态，不外乎形体或空间的实与虚，
        solid vs. void，而且两者不可或缺，无法独自存在。当画作中的物体形状经过巧妙的描绘和组合，
        并与开放区域形成适当的对比，譬如树与天空形成的对比，就会让画作具有“形体”。
- *质感*（texture）：意指对于表面的描绘。所有形体都有其表面特征，这一点就跟本身形体结构一样重要。
        以同样的表面特征描绘所有形体，就是千篇一律的毛病，当然不可能画出真正的美，是平庸之作常态。
- *明度*（value）：明度和色彩，两者密不可分。要画出美，两者缺一不可。适当的明度关系能为画面创造光感
        并增添统合感。不正确的明度关系就会对画面美感造成最大的破坏。
- *光感*（quality of light）：这项要素最重要不过，画作中的光感跟实际照射于画面上的光线融合，成为
        整张画作的一部分。光有许多种，室内光、室外光、阳光、漫射光和反射光。光源必须跟形体的塑造、色彩
        的性质与明度以及质感有关。如果画家没有真正理解光的原理，画作就可能只是颜料在画布（画纸）上
        的平面描绘，无法创造出画面的空间感。
- *主题*（subject）：这项要素提供给画家大好机会，充分发挥个人品位。画家可以从生活和大自然中，找到
        数不清的主题，从中挑选、设计和创造出自己专注的主题，展现画家本身对美的鉴赏力。
- *技法*（technique）：意指表现的方式而非表现本身。技法包括对于物体表面和质感的理解，以及对媒材
        及媒材应用之诸多方法的认识。技法是结合其他美的要素所做的个人表现。




## 🟡🟠 Environment & Lighting 环境与光照
- [Lights and shadow](https://docs.godotengine.org/en/3.5/tutorials/3d/lights_and_shadows.html)
- [Reflection probes](https://docs.godotengine.org/en/3.5/tutorials/3d/reflection_probes.html)
- [Global illumination probes](https://docs.godotengine.org/en/3.5/tutorials/3d/gi_probes.html)
- [Baked lightmaps](https://docs.godotengine.org/en/3.5/tutorials/3d/baked_lightmaps.html)
- [GAMES104-现代游戏引擎：从入门到实践-王希](https://www.bilibili.com/video/BV1J3411n7WT/)
- [GAMES202：《高质量实时渲染》闫令琪](https://www.bilibili.com/video/BV1YK4y1T7yY/)
- [实时阴影技术 Real-time Shadows](https://www.cnblogs.com/KillerAery/p/15201310.html)

不同于电影行业为了追求高质量的离线渲染 off-line rendering，游戏行业中是实时渲染，这就为硬件提出
了高度的性能要求，在一定的硬件性能条件下，实时渲染并不能一味为了做最佳图像质量，而是在质量与流畅体验
之间的权衡。

为了实现图像质量又好，游戏操作体验又流畅的双平衡，渲染中通过引用一些代运算成本的技术，例如引入法线
贴图替代高精度高面数的模型。光照系统中，引入各种探针来设置需要细致处理的光照空间，避免将有限的算力
用到性价比不高的区域上。

例如，Godot 引入了b以下光照探针、后期处理或其它相关技术：

- Real-time global illumination (GI) probe 全局照明探针，只处理指定区域的全局光。
- Reflection probes 反射光探针，只处理指定区域的反射光。
- Baked lightmaps 光照烘培，将光照效果以图片形式保存下来，运行时直接贴图还原光照效果。
- Screen-Space Reflections (SSR) 屏幕空间反射最有意义的场景在物体彼此接触时，如物体在地板上的倒影。
- Screen-Space Ambient Occlusion (SSAO) 屏幕空间环境光遮蔽，模拟场景环境光遮挡情况下的光照（阴影）。

![SSR](https://docs.godotengine.org/en/3.5/_images/environment_ssr.png)



### 🟢🔵 2D lights 二维灯光
- [2D lights and shadows](https://docs.godotengine.org/en/3.5/tutorials/2d/2d_lights_and_shadows.html)
- [2D lights and shadows demo](https://github.com/godotengine/godot-demo-projects/tree/master/2d/lights_and_shadows)
- [Trace Bitmap In Inkscape](https://inkscape.org/doc/tutorials/tracing/tutorial-tracing.html)
- [GPU Gems 1 - 11. Shadow Map Antialiasing](https://developer.nvidia.com/gpugems/gpugems/part-ii-lighting-and-shadows/chapter-11-shadow-map-antialiasing)

除了环境设置，在 2D 场景中，可以使用 **CanvasModulate** 对整个画布进行颜色调整，可以批量改变
场景中的 CanvasItem 的颜色，但是对 CanvasLayer 或子类 ParallaxBackground 无效，因为它们
是独立的画布对象，具有不同 layer 绘画顺序。同样，配合 Light2D 节点，又可以添加二维光照，使得场景
中与光照节点的纹理重叠的区域不被调制影响。

- **CanvasModulate** 通过颜色调制使场景变暗，或者调制成任何希望的色调。
- **Sprite** 设置纹理显示灯光斑点、背景和阴影投射器，其纹理本身不会能参与光线的计算。
- **Light2D** 照亮场景，二维灯光通常的工作方式是，在场景的其余部分添加选定的纹理以模拟照明。但它也可以以其他方式使用，例如掩盖场景的某些部分。
- **LightOccluder2D** 用于告诉着色器场景的哪些部分投射阴影。阴影仅显示在 Light2D 覆盖的区域上，其方向基于灯光的中心。

![2D lights and shadows demo](https://docs.godotengine.org/en/3.5/_images/light_shadow_main.png)

Sprite 本身不会投身阴影，只用于设置场景需要的纹理，但会受到 CanvasModulate 的调制。阴影本身需要
通过 LightOccluder2D 节点设置 OccluderPolygon2D 多边形来决定 Light2D 覆盖范围内的阴影投射。
LightOccluder2D 提供了一个 Show Behind Parent 选项，所以可以作为 Sprite 子节点以显示在父
节点纹理的底层，避免用于投射阴影的多边形遮挡内容。

阴影投射区多边需要手动绘制，不能结合 Inkscape 这类工具提供的 Trace Bitmap 功能自动生成的矢量图。
或者没提供像 Blender 那样的画笔绘制曲线的编辑器。

Light2D 通过纹理来建立光源的各种属性，主要是光源的颜色、辐射范围。纹理尺寸越大，或者 Scale 越大，
光线照射到的范围越广。可以使用图像纹理作，或者使用 AnimatedTexture 这样的动画纹理，以产生交替的
灯光效果。光源纹理的一般制作，使用中心放射过渡的纯色，中心透明度低表示光照强，周边透明度高表示弱光照。
通过纹理制作，可以模拟散光灯、射灯或者聚光灯，光源也提供 Color、Energy、Mode、Height 等调制属性。

虽然，光源可以设置 Height 来与 Sprite 中的法线贴图进行光线的交互，但 LightOccluder2D 却没有
提供高度属性，所以光源始终被多边形分隔为内外两个区，在多边形外面、内面的光线不会穿透多边形。

2D 光源可以使用 20 个灯光分层管理光线交互、阴影投射，只有光源中 Range、Shadow 设置的 **Item Cull**
遮罩层与 CanvasItem、LightOccluder2D 中的 **Light Mask** 使用了一致的分层，它们才会与相应的
光源、阴影产生交互效果。Light Mask 遮罩属性在编程技术上，使用的是 bit 位记录分层信息。光源与物体在
同一个比特位置 1 表示它们是同层交互关系，应该产生光线交互效果。

Godot 支持 Percentage Closer Filtering (PCF)，这是一种阴影贴图的抗锯齿优化算法技术。

阴影贴图 shadow mapping 是一种用于影片图像的高端渲染技术，但是在实时的视频游戏中，会出现严重的
锯齿化问题。并且，当光线几乎平行于阴影表面传播时，使用透视阴影贴图技术和增加阴影贴图分辨率并不能解决
锯齿问题，因为放大率接近无穷大。高端渲染软件通过使用一种称为 PCF 百分比渐进滤波的技术来解决混叠问题。

与法线纹理不同，阴影贴图不能预过滤去消除锯齿。相反，每个像素都要进行多个阴影贴图的比较，求平均值。
这种技术被称为 PCF，因为它计算的是更接近光线的曲面的百分比，而不是在阴影中。

![Figure 11-1 Percentage-Closer Filtering](https://developer.nvidia.com/sites/all/modules/custom/gpugems/books/GPUGems/elementLinks/fig11-01.jpg)

原始 PCF 算法要求将要着色的区域映射到阴影贴图空间，并随机采样该区域。该算法首先由 REYES 渲染引擎
实现，因此要着色的区域意味着四边的微多边形。

一般点光源会生成硬阴影，而面光源则会生成软阴影。当遮挡物越接近光线接受物体，会趋向于生成更硬的阴影，
远离的时候，会趋向于生成更软的阴影。调整 filter, filter smooth, gradient length 等属性改变
阴影的软硬程度。




### 🟢🔵 Texture Map 纹理贴图
- [Texture Mapping - GAMES101-现代计算机图形学入门-闫令琪](https://www.bilibili.com/video/BV1X7411F744?p=9)
- [GAMES101 随堂笔记-Lecture 09 Shading 3 Texture Mapping](https://blog.csdn.net/weixin_44848751/article/details/127887098)
- [Physically Based Rendering 3rd - 10 Texture](https://www.pbr-book.org/3ed-2018/Texture)
- [OpenGL Programming Guide > Chapter 9 Texture Mapping](http://www.glprogramming.com/red/chapter09.html)
- Fundamentals Of Computer Graphics - 11. Texture Mapping
- [OGLDev Tutorial 16: Basic Texture Mapping](https://ogldev.org/www/tutorial16/tutorial16.html)
- [LearnOpenGL - Textures](https://learnopengl.com/Getting-started/Textures)
- OpenGL 4.6 (Core Profile) 8.14 Texture Minification & 8.15 Texture Magnification
- [GPU Gems II - 28. Mipmap-Level Measurement](https://developer.nvidia.com/gpugems/gpugems2/part-iii-high-quality-rendering/chapter-28-mipmap-level-measurement)

纹理贴图是图形着色中的一种基本方法，贴图就是一张贴在图形上的图像。要将一张图片映射到一个图形，比如
三角形或者正方形上，这就需要一种确定映射关系的方法。图形学中，将渲染得到的图像中的每一个点称为像素，
相似地，对于纹理图像上的每个点称为纹素，pixel vs. texel。

当然，纹理不一定局限于图像文件，也可以是程序贴图纹理 Procedural Texturing，通过噪声函数算法生成，
Noise Function 旨在创建可以模拟自然元素的纹理，例如木材，大理石，花岗岩，金属，石头等。噪声函数
包括分形 fractal noise，湍流扰动函数 turbulence functions，Perlin noise，Voroni 等等。
在过去，由于过程纹理计算量很大，在实时绘制中很少使用，而 GPU 促进了噪声纹理在实时渲染中的广泛应用。


在 2D 纹理处理中需要使用 UV 坐标，3D 纹理则使用 UVW 坐标，因为表示位置的坐标使用 XYZ 表示，为了
区别开来，所以使用 UVW 三个量表示三个轴向，以和位置坐标区分。

Godot 中的纹理坐标以左上角为原点，右下角为正方向 ，与 OpenGL 有点差别，就是将 V 轴上下反转。

![UV Mapping](https://docs.godotengine.org/en/3.5/_images/iconuv.png)

以下是 OpenGL 的 UV 坐标，纹理是一张砖墙图像，将它映射到一个三角形图形上，只使用了纹理中间的部分：

![https://learnopengl.com/Getting-started/Textures](https://learnopengl.com/img/getting-started/tex_coords.png)

UV 坐标取值范围在 [0,1] 区间，在屏幕空间看起来就是 U 对应从左到右的方向，V 对应从上到下的方向。
在给 GPU 传递顶点数据时，一般包含位置坐标及顶点对应的 UV 坐标，这样就可以按 UV 坐标给表面贴纹理。
通过设置 UV Mapping 映射关系，可以将纹理图按坐标对应贴紧模式表面，可以原点、大小一一对齐，也可以
不对齐，例如，将图片原点对应到模型 UV 最大值指向的位置，而将图片的最大尺寸位置对应到模型原点，就
将纹理图反转。


在纹理映射处理的过程中，会遇到这样的两种问题，即纹理缩放问题：

- 纹理太小，图形太大，需要对纹理进行放大处理；
- 纹理太大，图形大小，需要对纹理重采样，让它变小；

这两种问题就是 Point Query vs. (Avg.) Range Query，纹理处理中的平均范围查询只是一种具体操作，
并不是范围查询的一般形式。

为了放大纹理适用图形，简单复制纹素会导致严重的锯齿问题，例如以下图左侧显示的这样：

![GL_NEAREST vs. GL_LINEAR](https://learnopengl.com/img/getting-started/texture_filtering.png)

而右侧，则使用了线性插值重采样，看起来效果明显好多了。线性插值是最简单的纹理放大方法，通过在纹素间
增加平滑变化值创造出更的纹素，纹理尺寸也相应变大，这些纹理重采样方法也叫做 Texture filtering。

高分辨率的像素坐标经纹理映射，只有大小一致的情况下才会落在纹素中心，通常不会落在纹素中心，即映射坐标
非整数值，如何计算红点处的纹理值？就是插值需要考虑的问题。

一个方法是基于三角形重心坐标的插值算法，Interpolation Across Triangles: Barycentric Coordinates。
三角形是二维环境下的单形，即可以通过三角形拼接铺满整个 2D 空间。三角形内的任意一点，可以表示为三角形
三个顶点坐标的线性组合：

    (x, y) = αA + βB + γC
         1 = α + β + γ      (α, β, γ non-negative)

三角形所在平面上任意一个点（x，y）都可以用三个顶点 A、B、C 坐标的线性组合来表示。当线性组合的系数非负，
且 α、β、γ 之和等于 1，则表示这个点在三角形内部，而三个系数则会用于计算插值。

对于一个已知面积的小三角型，可以求角任意点 αβγ 三个系数。假定某点（x，y）与三个顶点连接，将三角形
划分成三个小三角形，各自的面积为 Aᴬ Aᴮ Aᶜ，那么利用面积比可以求出系数 α、β、γ。

    α = Aᴬ ÷ (Aᴬ + Aᴮ + Aᶜ)
    β = Aᴮ ÷ (Aᴬ + Aᴮ + Aᶜ)
    γ = Aᶜ ÷ (Aᴬ + Aᴮ + Aᶜ)

![Geometric viewpoint — proportional areas](https://img-blog.csdnimg.cn/bcd7595c4bc64587a08351dd029f47ec.png)

三角形的重心（质心）标对应的系数就是（1/3, 1/3, 1/3），一般情况下，等密度的物体在均衡的重力场下，
重心和质心是重合的，这个点会将三角形分割成三个面积相等的小三角形。所以，相比于通过面积求系数，更快的
是直接通过顶点坐标来计算，通过向量叉乘可以推导以下式子。式子不重要，关键是理解通过重心坐标来插值。

    α = ((x - Ax)(By - Cy) + (y - By)(Cx - Bx))÷((Ax - Bx)(By - Cy) + (Ay - By)(Cx - Bx))
    β = ((x - Cx)(Cy - Ay) + (y - Cy)(Ax - Cx))÷((Bx - Cx)(Cy - Ay) + (By - Cy)(Ax - Cx))
    γ = 1 - α - β

![Barycentric Coordinates: Formulas](https://img-blog.csdnimg.cn/596fb2e34799442fa59e1f123493220a.png)

当一个点的重心坐标（α，β，γ）求出来以后，就可以求解任意属性 V 在此点的插值，只需要将三个顶点所定义
的属性和系数做乘法再相加，即可求出插值出来的属性值。属性可以是位置，纹理坐标，颜色，法线，深度等等。

但是要注意，在三维空间中，应该考虑投影产生的变形影响，尤其对于在三维空间中的属性，比如深度信息，应该
用三维空间坐标找到对应位置，然后在三维空间中对 A、B、C 的深度属性插值，然后再投影回来，这个过程需要
做一次逆变换就可以。

最简单的插值就是一维线性插值，Linear Interpolation，函数简写为 lerp。更复杂的插值可以有二次曲线、
三次曲线等插值方法。对纹理的插值缩放尺寸，这种操作就是超采样 supersampling。

假定在一个小三角形顶点上，刚好对应到相邻的纹素，那么这个小三角形中间区域的渲染得到的像素就需要在各
个顶点对应的纹素取值之间，进行线性的平滑插值。比如，两顶点之间只多渲染一个像素，而两个顶点的值分别为，
0.5 和 0.7，那么插值点就可以按两点的平均值计算得到 0.6。

对于二维图像，需要进行二线性插值，Bilinear interpolation，分别对应水平方向、竖直方向插值。三维
中还有三线性插值 Trilinear Interpolation。注意，这里的二、三不是指二次曲线或三次曲线，而是一次
的直线做了几回插值操作。

![Bilinear interpolation](https://img-blog.csdnimg.cn/5f070c0acce34afa8562c076fe289fd4.png)

超采样抗锯齿 Super-Sampling Anti-aliasing (SSAA) 是早期抗锯齿方法，比较消耗资源。一般按整数
倍放大，x2、x4、x8 等倍数。 超级采样抗锯齿中使用的采样法一般有两种：

- 顺序栅格超级采样 Ordered Grid Super-Sampling (OGSS)，采样时选取 2 个邻近像素。
- 旋转栅格超级采样 Rotated Grid Super-Sampling (RGSS)，采样时选取 4 个邻近像素。


对于高质量的纹理，比如 4K 纹理在给小图形着色时，就会面临完全不同的问题，一大块的纹素要如何适配一个
像素。这就是块查询问题。当然，不能直接用一个平均值去代表一整块的纹素，会造成严重的失真。

一个经典的解决方法是 Mipmap，它通过为高质量的纹理生成不同精细层级的缩小版纹理，很好地解决了纹理
适配问题，并且速度很快，但是它只能做正方形的处理，比如 1x1、64x64、512x512 这样的纹理尺寸。一般
每层重采样按 1/2 的大小缩小，Level 0 为原图，Level 1 为原图的 1/4 大小，依次类推，所以增加的
存储空间最大为原纹理大小的 1/3。

![Figure 9-4 : Mipmaps](http://www.glprogramming.com/red/images/Image114.gif)

Mipmap 重采样纹理可以预先生成，得到 Mipmap 层级纹理后，贴纹理时就需要有一个映射方法，根据图形的
大小来选择所需要的精细度层级，Computing Mipmap Level D。

![Computing Mipmap Level D](https://img-blog.csdnimg.cn/cbc21cd30b7f4e129dfd141783d1aa0e.png)

计算 Mipmap 层级需要用到偏微分，图上的式中看起来很复杂，但其实就是求解像素与纹素变化率的比值问题。
将像相邻素点投影到对应的纹素，图中的红点代表投射坐标，四个相邻像素构成的矩形就会在纹理上投射出一个
四边形。已知相邻两个像素中心的距离是 1，对应到右边纹理上有的距离 L 也就可以求出，只需要用变化大的
一边的值就可以计算出目标的 Mipmap Level。如果 L 同样为 1 就表示应该使用原纹理，如果 L 为 2 则
应该使用 Level 1 纹理，查询结果总会对应 D  = log2L 层纹理上的一个纹素。

因此，只需要算出 D，即在第几层正方形的区域对应一个像素，就可以得出这个区域内平均值是多少。


Mipmap 并不能处理一切纹理适配问题，当图形需要纹理在两个层级之间过渡需要时，如果直接在现有的两个层
级之间转换，这就会导致纹理从一个精细纹理直接改变为另一张精度只有一半的纹理，图像会出现不连续的现象。
这就需要对 Mipmap 进行三线性插值：先查询出两个层级的纹理各自的二线性插值，再在这两个值之间做一次
额外的层到层之间的插值。

三线性插值提供了一种类似可以提供任意层的 Mipmap 的效果，出来的效果就是一个很漂亮的连续渐变的层级。

![Mipmap Trilinear Interpolation](https://img-blog.csdnimg.cn/cc252947b2f1434cbc10db1dbf1cffb5.png)


很显然，非正方形的变换也不能用 Mipmap 处理，这种情况下应用 Mipmap 就会产生不良效果。

![Mipmap 锯齿及摩尔纹](https://img-blog.csdnimg.cn/f187e0f6755749c5a68961c80d8405a5.png)

这种现象产生的原因是变形方向与采样不适配，Mipmap 都是正方形区域缩放，只能做正方形的 Range Query。
然而真实情况并不是如此，见下图，不同 Screen space 的像素所对应的纹素延展方向不同，有方块，有长条，
方向也不一样，甚至是不规则图形。下图来源 Fundamentals Of Computer Graphics - 11. Texture Mapping

![Screen space to texture space](https://pic2.zhimg.com/80/v2-1003f344d0ffc9d683b66167e45c0359_1440w.webp)

Figure 11.18. The footprints in texture space of identically sized square areas 
in the image vary in size and shape across the image.

为了解决 Mipmap 不能解决非正方形变换的问题，又引入了各向异性过滤 Anisotropic Filtering 以解决
三线性插值弊端，在不同的方向上表现各不相同（考虑方向性）：

![Anisotropic Filtering](https://img-blog.csdnimg.cn/4b84789bb6074c46b9baff3903fa8deb.png)

Mipmap 操作的相当于是上图的对角线图片，每次长宽各缩小一半，而各向异性可以用不同的长宽比进行缩小，
包含上图除了对角线以外的图片，就可以应对非矩形区域做范围查询，额外存储开销是原来的三倍。


但是，对于一些斜着的图形，依然没有很好的方法去查询。为了解决任意变形纹理映射问题，又引入了更复杂的
纹理过滤方法，如 Elliptically Weighted Average (EWA) 椭圆加权平均过滤。效果上，比三线性滤波 
Trilinear Filter 要好了一大截。

对于任何一个形状，EWA 都可以将其拆成很多不同的圆形去覆盖这个形状。比如，查询一个椭圆，可将其拆成多个
圆形，每次去查询一个圆形，多次查询自然就可以得到一个区域，但是代价是“多次查询”。可见质量越高的效果，
性能开销越大。

![EWA filtering](https://img-blog.csdnimg.cn/ea8e695554e04d74bf530569f6d7c04a.png)



### 🟢🔵 IBL & Skybox 纹理贴图光照
- [Poly Haven - The Public 3D Asset Library](https://polyhaven.com/all)
- [LearnOpenGL - Cubemaps skybox](https://learnopengl.com/Advanced-OpenGL/Cubemaps)
- [OGLDev Tutorial 25: SkyBox](https://ogldev.org/www/tutorial25/tutorial25.html)
- [GAMES101 现代计算机图形学入门 - 闫令琪](https://www.bilibili.com/video/BV1X7411F744/?p=10)
- [详解球面环境映射 - Spherical Environment Mapping](https://zhuanlan.zhihu.com/p/84494845)
- [GPU Gems I - 19. Image-Based Lighting](https://developer.nvidia.com/gpugems/gpugems/part-iii-materials/chapter-19-image-based-lighting)
- [Programming with OpenGL: Advanced Rendering - 9.3.2 Sphere Mapping](https://www.opengl.org/archives/resources/code/samples/advanced/advanced97/notes/node93.html)
- Real-Time Rendering - 10.4 Environment Mapping
- [Real-Time Rendering 3rd 纹理贴图及相关技术提炼总结](https://zhuanlan.zhihu.com/p/27551369)
- [Real-Time Rendering 3rd 基于图像的渲染技术提炼总结](https://zhuanlan.zhihu.com/p/30345339)
- [Real-Time Rendering 3rd 全局光照 GI 技术进化编年史](https://zhuanlan.zhihu.com/p/29418992)

纹理贴图不仅可以用来给图形着色，它还有各式各样的用法，如下，按技术出现先后序：

- Bump Mapping 凹凸贴图，使用纹理变化来影响法线方向，增加图形表面的凹凸细节；
- Displacement Mapping 转换贴图，使用纹理来改变顶点的位置；
- Normal Mapping 法线贴图，是凹凸贴图的一种应用，使用纹理记录法线向量；
- Parallax Mapping 视差贴图，又称为 Offset Mapping，是凹凸贴图改进版，纹理将有更明显的深度。
- Relief Mapping 浮雕贴图，有人把它誉为凹凸贴图的极致。

视差贴图是针对 Normal Mapping 的改进，利用 Height Map 进行了近似的 Texture Offset。
而 Relief Mapping 是精确的 Texture Offset，所以在表现力上比较完美。



用纹理图像来模拟光照就是常见用法，纹理当作环境光使用，那么纹理中记录的就是光照信息。或者直接将纹理
当作 Environment Map 渲染到图形上。

Skybox 就是将环境光纹理保存在一个 Cube 上用来模拟天空大气的环境，原理就是假设一个无限远的盒子，
以玩家为中心，无论玩家移动了多远，天空盒都不会变近，这样就产生一种四周的环境真的非常大的假象。

![Cubemaps skybox](https://learnopengl.com/img/advanced/cubemaps_skybox.png)

使用了环境立方体贴图的技术叫做环境贴图技术，让物体有反射(reflection)和折射(refraction)属性。

更早期的做法是使用一个球体来保存环境光，Spherical enviroment map，它采用单张贴图表示整个环境，
缺点是球形贴图的周边精确度急剧下降。这种模型中，摄像机位于无穷远，而球体无穷小，同时假设相机的分辨率
可以任意高。相当于把一个擦得锃亮的完美球体放在环境的中央，然后在无穷远处用长焦镜头对它进行拍照。照片
就是中覆盖整个圆形区域的部分，它与纹理图像的顶、底、左、右边缘相切。这个圆形区域之外的区域不重要，因为
它们不会在环境纹理中使用。

![Sphere Mapping](https://pic3.zhimg.com/80/v2-1528a601b4105d6e1b4c935444ac75e2_1440w.webp)
![Sphere Mapping](https://www.opengl.org/archives/resources/code/samples/advanced/advanced97/notes/img130.gif)

假设反射球表面法线为 n，视角方向 v，反射向量 r，采样公式表达如下，通过反射向量求采样坐标：

    m = 2 √(r𝑥² + r𝑦² + (r𝑧 + 1)²)
    𝑢 = r𝑥/m + 1/2
    𝑣 = r𝑦/m + 1/2

反射球体仅在球体的正面显示整个环境，产生的圆形图像也称为光照探针（light probe），因为它捕获了球体
位置处的照明情况，拍摄球形探针是捕获基于图像的照明的有效方法。将球形贴图可以展开为一张矩形的经纬贴图，
但是，这种方式的图像会出现上下两端的畸变，而赤道部分则相对过度采样。

1986 年，Greene 推出了立方环境映射（cubic environment map），这种是当今最流行的方法，它的投影
直接在现代 GPU 的硬件中实现。Cubemaps 方式使用 6 张纹理图，则不会有球体贴图的畸变问题。天空盒也要以
球体的方式呈现环境贴图，所以是将一个盒子包裹着一个球体，在计算上不及直接使用球体方便。与球形映射不同，
立方体环境映射独立于视图，与经纬映射相比，它还具有更加统一的采样特性。


以下使用 Blender + Godot 创建一个 Cubemap。先在 Blender 创建一个 Cube，进入编辑模式：

- 激活 Face selection mode，并选择所有面；
- 执行 Mesh - Normals - Flip 将六个面的法线反转，指向立方体内部；
- 设置 Viewport Overlays - Normals 可以显示法线，以确认法线朝向；
- 执行 UV - Cube Projection 使各面的 UV 坐标铺满整个纹理空间；
- 执行 Mesh - Split - Faces by Edges 分离六个面；
- 执行 Mesh - Separate - By Loose Parts 将六个分离面独立为 Mesh 对象；
- 操持各个面选择状态，执行菜单导出 Export - Wavefront (.obj)，导出选项设置：
    - Limit to: Selected Only 只导出已选择的六个面；
    - Foward Axis: -Z
    - Up Axis: Y

右手系 (right-hand system)，使大拇指、食指、中指互成直角，大拇指、食指、中指分别指向 x、y、z 轴
正方向，并且中指指向自己。而左手系 (left-hand system)则是中指指向 z 轴负方向，并且中指指向前方。

Godot 坐标系统中，按以下向量确定方向，x 轴指向 RIGHT，y 轴指向 UP，z 轴指向 BACK(backward)：

    Vector3.UP (0, 1, 0)
    Vector3.RIGHT (1, 0, 0)
    Vector3.FORWARD (0, 0, -1)

Blender 虽然也使用右手系，但是它是 z 轴向上的，这点与 Godot 不同。通过以上的导出设置可以适配 Godot
正常使用的右手系，会自动将 Blender 的 -Z 对应到 Godot 的 -Y，即对齐底部，Blender 中显示的底部，
在 Godot 中依然是底部。

导出后，各个面的顺序可以直接打开 obj 文件查看，在 Blender 场景中修改 Mesh 名称会改变显示顺序，
但导出的顺序可能还按原来的数据顺序，可以按需要的顺序重新将 Mesh 添加到 Collection 集体中再导出。

Cube 与摄像机前进方向相同的一面为 Back，相反方向的一面为 Front，同样，左右两面也与摄像机的左右
对换。在贴纹理图时，按前面展示的 Skybox 的图像命名，对应 Cube 的面进行贴图。因为，摄像机需要透过
Cube 的内表面成像，有三个面的 UV 坐标需要对 U 轴反转，分别是 Top、Front、Right，另外 Buttom
需要 UV 同时反转。

这种简单通过 Cube 模拟的 Skybox 有缺点，就是摄像机向顶、底方向时，成像会有较明显的矩形边界。

然后，通过 GDScript 加载导出的 Mesh 并设置纹理：

```py
tool
extends Spatial
class_name SkyBox

onready var sky_mesh = load("res://assets/skybox/skybox.obj")

export(StreamTexture) var TextureLeft = null setget set_TextureLeft
func set_TextureLeft(value):
    TextureLeft = value
    set_mat()

export(StreamTexture) var TextureRight = null setget set_TextureRight
func set_TextureRight(value):
    TextureRight = value
    set_mat()

export(StreamTexture) var TextureFront = null setget set_TextureFront
func set_TextureFront(value):
    TextureFront = value
    set_mat()

export(StreamTexture) var TextureBack = null setget set_TextureBack
func set_TextureBack(value):
    TextureBack = value
    set_mat()

export(StreamTexture) var TextureBottom = null setget set_TextureBottom
func set_TextureBottom(value):
    TextureBottom = value
    set_mat()

export(StreamTexture) var TextureUp = null setget set_TextureUp
func set_TextureUp(value):
    TextureUp = value
    set_mat()

onready var _mesh:MeshInstance = $SkyMeshInstance

func create_mat(texture):
    var m = SpatialMaterial.new()
    m.flags_unshaded = true
    m.albedo_texture = texture
    return m

func set_mat():
    if _mesh:
        _mesh.queue_free()
    
    _mesh = MeshInstance.new()
    _mesh.name = "SkyMeshInstance"
    _mesh.mesh = sky_mesh
    add_child(_mesh)
    _mesh.owner = self
    print(_mesh.owner, sky_mesh)
    _mesh.set_surface_material(0, create_mat(TextureRight))
    _mesh.set_surface_material(1, create_mat(TextureLeft))
    _mesh.set_surface_material(2, create_mat(TextureFront))
    _mesh.set_surface_material(3, create_mat(TextureBack))
    _mesh.set_surface_material(4, create_mat(TextureBottom))
    _mesh.set_surface_material(5, create_mat(TextureUp))


func _ready():
    set_mat()
```



### 🟢🔵 Blinn-Phong 基础光照着色模型
- [GAMES101-现代计算机图形学入门-闫令琪](https://www.bilibili.com/video/BV1X7411F744?p=7)
- [GAMES202 作业 0: WebGL 框架的使用与 Blinn-Phong 着色模型 闫令琪](https://sites.cs.ucsb.edu/~lingqi/teaching/games202.html)
- [Learn OpenGL - Basic Lighting](https://learnopengl.com/Lighting/Basic-Lighting)
- [Learn OpenGL - Advanced Lighting](https://learnopengl.com/Advanced-Lighting/Advanced-Lighting)
- [Phong shading - HandWiki](https://handwiki.org/wiki/Phong_shading)
- [Blinn–Phong reflection model From HandWiki](https://handwiki.org/wiki/Blinn–Phong_reflection_model)
- [CS-116A: Introduction to Computer Graphics - Light and Color - Rob Bruce](http://www.cs.sjsu.edu/~bruce/fall_2016_cs_116a_lecture_light_and_color_part_1_of_2.html)

闫令琪的网课 GAMES202: 高质量实时渲染，作业零是 Blinn-Phong 着色模型编程的实验。这种着色器又叫
反射模型、修正模型，Blinn–Phong reflection model 或者 modified Phong reflection model，
是由 Jim Blinn于 1977 年在文章中对传统 phong 光照模型基础上进行修改提出的。它是一个经验模型，
并不完全符合真实世界中的光照现象，但由于实现起来简单方便，并且计算速度和得到的效果都还不错，因此在
早期被广泛的使用。

原模型作者是 Bùi Tường Phong (1942 – 1975)，他于 1973 年在犹他大学取得计算机科学博士学位，
并发明了 Phong 反射模型及 Phong Shading 着色算法，并广为 CG 界采用，作者 1975 死于白血病。

同样的模型，使用不同的着色算法会产生不同的效果，以下是三种最基础的不同着色频率的模型：

- Flat shding 按三角面着色，per-face，低频着色方法；
- Gouraud shading 按顶点着色，per-vertex，属于中频着色方法；
- Phong shding 按和像素着色，per-pixel，属于高频着色方法；

![Flat shading (left) versus Phong shading (right)](https://handwiki.org/wiki/images/8/84/Phong-shading-sample.jpg)


Blinn-Phong 光照模型将进入摄像机的光线分为三个部分，Ambient、Diffuse、Specular，即环境光、漫反射
和高光反射，每个部分使用一种方法来计算它的贡献度。就是说，只要将这三种光计算出来，就可以实现布林冯
光照模型效果。整个 Blinn-Phong 光照模型的结果就是 L𝑎 + L𝑑 + L𝑠 三者求和，以下逐个解析。

![Blinn-Phong reflection model](https://handwiki.org/wiki/File:Phong_components_version_4.png)


计算中需要先定义一些单位向量用于表示方向，更高效果要求的着色模型还会需要其它参数：

- **Viewer direction**，观察方向，使用 𝑣 表示，由着色点指向摄像机；
- **Surface normal**，表面法线方向，使用 𝑛 表示；
- **Light direction**，光线入射方向，使用 𝑙 表示，由着色点指向光源；

![Lights reflection](https://pic1.zhimg.com/80/v2-62c91756b8b182383578c6708db35da4_1440w.webp)

环境光也称间接光，光线经过周围环境表面多次反射后会在物体表面形成均匀统一的光照效果，利用它可以描述
物体基本外观亮度，在光照模型中，通常用一个常量来表示。公式表达如下，k𝑎、I𝑎 分别为环境光系数、光强度。

    L𝑎 = k𝑎 ⨉ I𝑎

一般上，对于个具有一定粗糙度的非光滑物体，当光线照射到物体时，光线会被均匀的反射到各个方向，这种反射光
称为漫反射。从微观角度看，模型分析每一点光照都设定这一点有无数方向完全随机的法线，也就是说，在漫反射中，
视角的位置是不重要的，因此可以认为漫反射光在任何反射方向上的分布都是一样的。而整体上，物体的一个面上，
大多数法线都与这个面垂直，光线反射遵循整体规律。

反射光与反射系数有关系，reflection coefficient，物体表面反射光线的能力，就是反射光强度与入射光
的强度之比值，取值 [0, 1]，受入射光的投射角度、强度、波长、物体表面材料的性质，以及反射光的观察角度
等因素影响。

漫射光的强度与**入射角度**，入射光线与法线的夹角，以及入射光线强度相关。Lambert Consine Law
兰伯特余弦定律指出，入射光角度越大，漫反射分量越小，当夹角接近 90°，认为漫反射几乎为零，全部都是
反射光。夹角大于 90° 时的余弦值小于 0，没有实际意义，取 0 值。

    f(Θ) = max(0, cosΘ) = max(0, 𝑙·𝑛)

点积 𝑙·𝑛 就是求向量 𝑙 在 𝑛 上的投影，即反射光线强度，Θ 为入射角。

光线强度会随着距离的增加而衰减，假设一个光源，在距离它单位圆上每一个点接收到光的强度是 I。那么根据
能量守恒定律，且不考虑衰减，在距离光源 r 位置的圆上每个点接收到光的强度就是 I/r²。所以，漫射光强
L𝑑 可以表达为以下公式，其中 k𝑑 为反射系数：

    L𝑑 = k𝑑 ⨉ (I/r²) ⨉ max(0, 𝑙·𝑛)

这个公式说的是，漫射光等于着色点处接收到的光能在反射系数、光线传播距离约束下的反射形成二次传播的光能。

![Diffuse and Specular](https://learnopengl.com/img/lighting/basic_lighting_specular_theory.png)

高光反射也称为镜面反射，当然并不说说只有镜面才有高光反射，只是说体表面越光滑，镜面反射越明显，理想
条件下，完全的镜面是没有漫射光的。当平行入射的光线射到这个物体表面时，仍会平行地向一个方向反射出来。
入射光线 𝑙 照射在光滑的平面上，会沿着 R 方向反射，当观察角度正好与 R 方向对齐时，这时的镜面反射光
最强，最明显。非完全光滑的表面上，高光反射的方向并非只有 R 一个方向，而是 R 周边的一小块区域，角度
越接近就越明显。可以得出一条结论：高光反射和表面光滑度、观察角度有关。

布林冯模型中认为，高光反射的强度与反射光线 R 和观察角度 𝑣 之间夹角的余弦值成正比。它的强度，相当于
求向量 𝑣 在 R 上的投影，即 𝑣·R。

但是，对于一个现成的场景，一般已知量是摄像机代表的观察方向，物体表面法线方向，以及光线入射方向。而
反射方向 R 是个未知量，虽然可以通过余弦定理求解，但是运算比较麻烦。

![Halfway vector](https://learnopengl.com/img/advanced-lighting/advanced_lighting_halfway_vector.png)

Blinn-Phong 对冯氏光照模型的一个改进，就是观察到了半程向量 half-angle vector 和法线方向接近，
就表明高光越明显，这一发现就避免了直接计算 R 值，而是计算更容易得到的半程向量 ℎ，计算方法如下：

    ℎ = (𝑙 + 𝑣)/|𝑙 + 𝑣|

也就是半程向量等于，入射方向与观察方向的向量和，除于两向量的模，相当于做 normalize 归一化处理。
最后，高光反射光可以表达为以下公式：

    L𝑠 = k𝑠 ⨉ (I/r²) ⨉ max(0, 𝑛·ℎ)ᵖ

高光反射与镜面程度有一些明显的视觉效果，镜面程度越高，高光越高并且面积会越小，明暗分界越清晰，通过
设置指数就可以实现这一些效果，一般指数项 p 取值 64 次方的情况下，高光范围的角度大概对应 35° 左右。
虽然，反射光这是使用的是幂运算，但是因为向量都是单位向量，点积最大值不会超过 1.0，所以指数值越大，
光斑反而会越小。

![basic lighting specular shininess](https://learnopengl.com/img/lighting/basic_lighting_specular_shininess.png)



### 🟢🔵 Shadow Map 阴影贴图
- [GAMES101 现代计算机图形学入门  Geometry - 闫令琪](https://www.bilibili.com/video/BV1X7411F744/?p=12)
- [GAMES202 高质量实时渲染 - 闫令琪](https://www.bilibili.com/video/BV1YK4y1T7yY)
- [Optimized StencilShadow Volumes Cass Everitt & Mark J. Kilgard](https://slidetodoc.com/optimized-stencil-shadow-volumes-cass-everitt-mark-j/)
- [GPU Gems 1 - Part II: Lighting and Shadows](https://developer.nvidia.com/gpugems/gpugems/part-ii-lighting-and-shadows)
- [GPU Gems 3 - Part II: Light and Shadows](https://developer.nvidia.com/gpugems/gpugems3/part-ii-light-and-shadows)
- [RTR4 图形学基础 - 阴影 - ShadowMap及其延伸 - 杨鼎超](https://zhuanlan.zhihu.com/p/384446688)
- [Planar Shadow 方向光 - Jeffrey Zhuang](https://zhuanlan.zhihu.com/p/94491734)
- [Planar Shadow 点光源 - Jeffrey Zhuang](https://zhuanlan.zhihu.com/p/94555744)
- [OGLDev Tutorial 40: Stencil Shadow Volume](https://ogldev.org/www/tutorial40/tutorial40.html)
- [游戏中的阴影基础 - 洛城](https://zhuanlan.zhihu.com/p/27572129)
- [GAMES202 L3&L4&L5：实时阴影（Real-time Shadows） - 戴子玲](https://zhuanlan.zhihu.com/p/471190375)
- Real-Time Rendering, Fourth Edition - Chapter 7 Shadows
- [阴影体(shadow volume)](https://blog.csdn.net/zhao_92221/article/details/46756645)
- [实时阴影技术 Real-time Shadows](https://www.cnblogs.com/KillerAery/p/15201310.html)
- [华中科技大学 计算机图形学 实时阴影 - 万琳](https://www.bilibili.com/video/BV1V7411k74z?p=72)

Planar Shadow 是一种直接通过几何变换，将图形作为阴影的一种低运算得的低效果的阴影模拟技术，相当于
将图形拍平到投射平面上，优缺点很明显：

- 优点：阴影边界可以很清晰，节省 RenderTexture (RT)，相比 shadow map 就需要 RT。
- 缺点：不适用于曲面，最好的应用环境是平坦地形。

阴影映射 Shadow Mapping 是 Williams 于 1978 年发明的一种流行的阴影算法，同 Frank Crow 于
1977 发明的体积阴影 Shadow volumes 相比，具有几个重要优势，特别是，阴影贴图可以在任意位置查询，
并且对几何复杂性不太敏感。

Shadow Volume 最大的优点是没有阴影锯齿问题，但它基于几何方法，有可能每帧都要构造和渲染阴影锥，
而且有些工作必须由 CPU 完成，并且，无法处理具有透明材质物体的阴影投射，如公告板，粒子系统，树叶等。
使得它在效率上没有 Shadow Map 高，因为后者计算都在 GPU 完成。

Shadow Volume 根据光源和遮蔽物的位置关系计算出场景中会产生阴影的区域，然后对所有物体进行检测，
以确定其会不会受阴影的影响。下图的绿色物体是遮蔽物，而灰色的区域就是 shadow volume，阴影区域内的
物体才会受阴影的影响。假如一个物体遮住了光源投射出阴影，就称物体为 Shadow Caster (SC)。而阴影投射
到另一个物体上形成阴影，另一个物体就称为 Shadow Receiver (SR)。

![Optimized StencilShadow Volumes Cass Everitt & Mark J. Kilgard](https://img-blog.csdn.net/20150704160224644)

图片来源：Optimized StencilShadow Volumes Cass Everitt & Mark J. Kilgard

![Z-pass vs. Z-fail](https://images0.cnblogs.com/i/292994/201408/042015297253279.png)

Shadow Volume 的一种实现是 Z-pass 算法，它可以在任何支持 stencil buffer 功能的 GPU 上运行。
基本原理如下，分为三个步骤：

- Pass1：enable z-buffer write 条件下渲染整个场景，得到所有物体的 depth map。
- Pass2：disable z-buffer write & enable stencil buffer write 条件下渲染所有 shadow volume。
    对视线穿越阴影区域边界进行计数，在深度测试结果为 pass 的前提下，穿越 front face 和 back face
    分别 +1 和 -1，正面即面对视点的这一面，计数结果即为 stencil 值。
- Pass3：根据每个象素的 stencil 值是否大于 0 判断其是否处于阴影当中，然后据此绘制阴影效果。

以上过程概括起来，Z-pass 算法就是从视点向物体引一条射线，当它可以穿越所有 shadow volume 区域，
即 stencil = 0，即表示视线可以看到物体，因为它不在 shadow volume 区域内。

Z-pass 算法遇到的问题是，摄像机本身是假定位于阴影体外，当本身出现在阴影区域内部时，算法就失效了。

Z-fail 算法是 John Carmack，Bill Bilodeau 和 Mike Songy 各自独立发明的，其目的就是解决
视点进入 shadow volume 后 Z-pass 算法失效的问题。它针对 Z-pass 第二步作了补充，在尝试测试结果
为 fail 的条件下，穿越 front face 和 back face 分别对 stencil 值 -1 和 +1，刚好是反向操作。


Shadow Map 是目前主流的阴影生成算法，这主要得益于它算法直观，并且能够充分利用现代硬件的光栅化能力。
这也是入门图形学的基础算法之一，算法思路是通过视点深度与光源尝试信息的比较，确定阴影区域。对于确定
光源来说，场景中某个点是否被其照亮，取决于从光源的视角看去，这个点是否可触及，以及从摄像视角来看，
这个点是否可见。当两者任意一方不可以触及一个位置，那么就可以确定一个阴影位置。

Shadow Map 算法被分成光源视角处理、摄像机视角处理两个阶段：

- 从光源视角出发，绘制整个场景，平行光用正交投影，点光用透视投影，Shadow Map 记录下物体表面的距离；
- 从摄像机视角出发，重新绘制场景，获取世界投影空间内的像素到光源的深度 d；
- 并根据光源投影矩阵的逆矩阵，将世界坐标空间变换回光源的投影空间，找出对应光源投影空间 UV 坐标；
- 利用光源投影空间的 UV 坐标采样 Shadow Map，得到光源视角下的深度信息 ；
- 比较两个深度值，若 d > z，则当前位置被遮挡，处于阴影内，否则未被遮挡；

![Shadow Map Projections](https://pic3.zhimg.com/80/v2-3f2c370b6b39cade31f8b3e4bf3d815e_1440w.webp)

回顾一下 z-buffer 算法，深度就是片元的到相机的距离信息，默认值 1.0 表示无限远，深度图就是一张
灰度图像。想象一下，如果把相机位置换成光源，那么“光看不到的地方就是阴影”，这就是阴影贴图的思想。
由于相机视角处理阶段，需要的数据只是深度值，所以可以把光照计算关掉，打开 z-test 和 z-write。

![Depth map in Shadow map](https://pic2.zhimg.com/80/v2-7fc6cceda943968a08e8ec83fa46fe41_1440w.webp)

注意，Shadow mapping 和 Shadow volume 里面使用的 depth map 是有区别的，前者以光源和视点、
后者以视点角度计算得到深度图。


阴影贴图是一种相对高效和直观的光照模拟技术，应用此技术有三大难点：

- 1） Omnidirectional Shadow Maps：全方向的阴影贴图
- 2） Depth Bias：比较深度时的偏差问题
- 3） Aliasing：阴影贴图的采样和重采样问题

由于纹理采样的离散性特点，以及浮点数的精度误差，不能直接比较相等值，等等因素都会导致阴影贴图走样，
产生所谓的“Shadow Acne”。特别是在灯光与投影平面夹角较大时，锯齿现象更严重。通常的解决方案是比较时
加上一个固定偏差值 bias，但是若偏差值选取过大，又会产生“Peter-Panning”问题，影子飞起来。自适应
方案是 Slope Scale Depth Bias，基于斜率计算当前深度要加的偏差。

![Slope Scale Depth Bias](https://pic2.zhimg.com/80/v2-713a366f76e8637c7b27efbc95027ccd_1440w.webp)

Shadow Map 产生锯齿的普遍原因在于，坐标变换是连续的，但光栅化后的像素位置则是离散的，不论阴影贴图
的精度有多高，都无法保证从屏幕空间的像素映射到光源空间时，能够找到一个位置完全匹配的像素。一个解决
访求是，百分比渐进滤波 Percentage-Closer Filtering (PCF)，当计算一个屏幕空间的像素是否处于
阴影当中时，需要考虑它投影到的 Shadow Map 位置附近的多个像素，使用阴影软化。


### 🟢🔵 Ray Trace 光线追踪
- [实时光线追踪技术：业界发展近况与未来挑战](https://zhuanlan.zhihu.com/p/102397700)
- [RTX Global Illumination (RTXGI)](https://developer.nvidia.com/rtx/ray-tracing/rtxgi)
- [DLSS 2.0 - 重新定义AI渲染 - 文刀秋二](https://zhuanlan.zhihu.com/p/116211994)
- [GAMES101 现代计算机图形学入门 Ray Tracing - 闫令琪](https://www.bilibili.com/video/BV1X7411F744?p=13)
- [GAMES202 高质量实时渲染 Real-Time Ray Tracing - 闫令琪](https://www.bilibili.com/video/BV1YK4y1T7yY?p=12)
- [GAMES101 L15：光线追踪 - 辐射度量学、渲染方程、全局光照](https://www.yuque.com/sugelameiyoudi-jadcc/okgm7e/eb2c162cc558657da2aea25b68a6c580)
- [CS190I: Introduction to Offline Rendering Fall 2020](https://sites.cs.ucsb.edu/~lingqi/teaching/cs190I.html)
- [CS291A: Real-Time High Quality Rendering Spring 2020](https://sites.cs.ucsb.edu/~lingqi/teaching/cs291a.html)
- [Physically Based Rendering: From Theory to Implementation", 3rd](http://www.pbr-book.org/3ed-2018/contents.html)
- [Peter Shirley, "Ray Tracing in One Weekend -- The Book Series"](https://raytracing.github.io/)
- [Computer Graphics Lecture Notes 17 - Photorealistic Effects](http://www.cs.kent.edu/~farrell/cg00/lectures/rendering/render.html)
- [The Cornell Box](http://www.graphics.cornell.edu/online/box/)
- [Introduction to Ray Tracing: a Simple Method for Creating 3D Images](https://www.scratchapixel.com/lessons/3d-basic-rendering/introduction-to-ray-tracing/how-does-it-work)
- [空间数据结构(四叉树/八叉树/BVH树/BSP树/k-d树)](https://www.cnblogs.com/KillerAery/p/10878367.html)

为了简化图像格式带来的问题，以将重心放到光线追踪的处理上，Ray Tracing in One Weekend 教程中
使用了 Portable PixMap (PPM) 便携像素图片格式保存图像。

PPM 是 Netpbm 项目定义的一系列的图片格式中的一个：

|       Type       |  Magic Number & Format  | Extension |        Colors       |
|------------------|-------------------------|-----------|---------------------|
| Portable BitMap  | P1 (ASCII)  P4 (binary) | .pbm      | 0–1 (black & white) |
| Portable GrayMap | P2 (ASCII)  P5 (binary) | .pgm      | 0–255 (gray scale)  |
| Portable PixMap  | P3 (ASCII)  P6 (binary) | .ppm      | 0–255 (RGB)         |

PPM 是其中一种支持彩色的格式，有字符串格式和 binary 两种保存格式，对应 P3、P6 两个魔术数字。例如，
以下为 ASCII 保存的 PPM 彩色图像，只有 3x2 个像素：

```sh
    P3
    # The magic number P3 means colors are in ASCII,
    # The magic number P6 means colors are in binary.
    3 2
    255
    # then 3 columns and 2 rows,
    # then 255 for max color,
    # then RGB triplets
    255 0   0   0   255   0   0 0 255
    255 255 0   255 255 255   0 0 0
```

图像数据部分，使用 ASCII 字符串表示 RGB 三个分量，并使用空格分隔，图像每一行像素对应文件的一行，
像素数据从左到右，从上到下，与图像对应。当然，完全可以不分行，只需要定义好 columns x rows 即可。

对于 binary 格式，直接使用字节数值表示 RGB，不需要使用空格分隔，使用 P6 格式就显得没那么可读，
可以用 GIMP、IrfanView 等工具生成：

    00000000:  5036 0a23 2043 7265 6174 6564 2062 7920  P6.# Created by 
    00000010:  4972 6661 6e56 6965 770a 3320 320a 3235  IrfanView.3 2.25
    00000020:  350a ff00 0000 ff00 0000 ffff ff00 ffff  5...............
    00000030:  ff00 0000                                ....

使用 ffmpeg 可以将图片合成为视频，或者 gif 动画，图片名称格式如 demo01.ppm：

    ffmpeg -f image2 -framerate 15 -i demo%02d.ppm -loop -0 animation.gif

图形渲染有两大典型应用场景：

- 离线渲染 offline，典型的是电影中应用 Ray tracing 等高端技术和大量的算力生产极高质量的图形。
- 实时光栅化渲染 real-time，典型的是游戏应用，需要权衡性能与体验，需要在保证流畅体验的前提下提高画质。

光线追踪的两种基本形式如下：

- Forward Tracing (light tracing) 向光线传播方向追踪；
- Backward Tracing (eye tracing) 向光线来路方向追踪；

眼睛观察到的世界，就是光线进入眼球，或者说眼球结构通过聚焦让感光细胞看到成像平面上的色彩。在成像平面
上，有无数多的点，每个点都会有光子被反射到眼睛的视网膜上：

![photons & eyes](https://www.scratchapixel.com/images/upload/introduction-to-ray-tracing/lighttoeyebounce.png)


抽象的光线要以代码的形式表达实在是抽象上抽象的工作，但是还是要回到数学工具上来，向量是必不少的工具。
Ray Tracing In One Weekend 教程将光线抽象地表达为一个射线类 ray class，这有助于直观地理解
光线追踪里的射线如何工作。

所有光线追踪器都会有 ray class 用于计算沿着光线前行的可以看到什么色彩。

![Figure 2: Linear interpolation](https://raytracing.github.io/images/fig-1.02-lerp.jpg)

先来假设一个函数 P(t) = A + t𝑏，这里 P 表示一个光子沿着光线上传播的 3D 坐标，A、𝑏 分别是光线的
传播起点和方向。光线参数 t 是一个实数，在代码中用 double 类型表示。使用不同的 t 可以使用光子 P(t) 
沿射线移动点。

使用负值 t 可以在 3D 空间上沿光线的向后的任何位置移动。对于正值 t，只得到起点 A 前面的部分，这就是
通常所说的半直线或射线。

    P(t) = origin + t∗direction

那么，函数 P(t) 可以表示光子的运动，用代码表示，就是 ray::at(t) 方法使原点发生变化，变化量就是
沿着前进方向的单位向量与参数 t 的乘积：

```c++
#ifndef RAY_H
#define RAY_H

#include "vec3.h"

class ray {
    public:
        ray() {}
        ray(const point3& origin, const vec3& direction)
            : orig(origin), dir(direction)
        {}

        point3 origin() const  { return orig; }
        vec3 direction() const { return dir; }

        point3 at(double t) const {
            return orig + t*dir;
        }

    public:
        point3 orig;
        vec3 dir;
};

#endif
// Listing 8: [ray.h] The ray class
```

有了这一层抽象后，接下来要做的事就是实现一个 ray tracer，最核心的是，假设它从相机位置发出射线，
穿过屏幕上的像素，并计算沿射线方向上可以看到的色彩。

当然，这里又引入了一层抽象，射线并非要真的穿透屏幕，而是 3D 空间抽象的相机成像平面，viewport，
这个平面记录的是所有可以看到的色彩，最终会渲染到 frame buffer 并输出到屏幕上。

所涉及的步骤是：

1. 计算从眼睛到像素的光线，
2. 确定光线与哪些对象相交，以及
3. 计算该交点的颜色。

![Ray trace diagram](http://suncio.me/images/RayTraceDiagram.svg)

所以，光线追踪问题又回到了数学工具的使用上，几何图形的处理问题上。 

例如下图，往成像平面每个像素打一道射线，并计算它会与什么光源接触，并将结果记录下来：

![Lighting shadow](https://www.scratchapixel.com/images/upload/introduction-to-ray-tracing/lightingshadow.gif)
![Pixeld render](https://www.scratchapixel.com/images/upload/introduction-to-ray-tracing/pixelrender.gif)

尝试开发光线跟踪器时，可以用一个简单的相机来启动和运行代码，制作一个简单的 ray_color(ray) 函数，
它只需要返回背景的颜色，例如一个简单渐变色即可。

对于一个光线 r 和球体 p 求交运算，就是将光线方程代入球体方程中，这是解析几何问题：

    Ray: r(t) = origin + t∗direction, t >= 0

    Sphere: p: (p - c)² - R² = 0

    Intersection: (origin + t*direction - c)² - R² = 0

![GAMES101 Lecture 13 - Ray Intersection With Sphere](https://cdn.nlark.com/yuque/0/2021/png/12962324/1617257130807-a02c66ae-5d27-43d1-b53e-1e513f77d011.png)

就是求解二次方程：

    at² + bt + c = 0, where
    a = direction · direction
    b = 2(o - c) · direction
    c = (o - c) · (o - c) - R²

    t = (-b ± √(b² - 4ac)) / 2a

对于任意隐式几何曲面，要求解与光线方程的交点，只需要将光线方程代入几何方程，并求解实数、正数根：

    Ray: r(t) = origin + t∗direction, t >= 0

    General implicit surface: p: f(p) = 0

    Substitute ray equation: f(origin + t*direction) = 0
    
    Solve for real, positive roots

对于显式几何体，一般就是三角的运算，三角形也是图形学中最基础最常用的几何体，模型中包含大量的三角或
四边形，但能通常不会直接将光线与每个面进行运算，这个运算量极大。反而是平面的运算有非常大的用途，AABB
算法中就需要计算光线与平面的交点。一个三角形就可以当作一个平面看待，通常使用法线向量和一个点表达。

平面的隐式表达有代数方程方式 ax + by + cz + d = 0，也有点、法线定义方式：

    p : (p - p‘) · N = 0

上式意思是：所有 p 集合的点满足，与平面上一点 p‘ 的差值与法线的叉积为 0。要与光线相交，只需要将
光线方程代入 p 参数，设 p = r(t) 并求解 t：

    t = (p‘ - origin)·N /(d·N) = 0, 0<=t


![GAMES101 Lecture 13 - Ray Intersection With Plane](https://cdn.nlark.com/yuque/0/2021/png/12962324/1617257167963-81fb43a2-ece1-4db3-8079-013020ed0b77.png)

Möller Trumbore Algorithm 算法可以判断一个点是否在三角形内部。

![GAMES101 Lecture 13 - Möller Trumbore Algorithm](https://cdn.nlark.com/yuque/0/2021/png/12962324/1617257174848-5dc69262-34b0-47ff-998f-9fb7c9415d5f.png)


真实应用场景下的光线追踪面对的是一个复杂的环境，可能有多光源，多物体，有无数的运算需要处理，算法是
必然需要做优化。Axis aligned bounding box (AABB) 轴对齐边界盒就是一个常用的空间求交简化算法。 
AABB 基本思想是，用一个盒子的三对面，上下、左右、前后各面假设为无限延申的平面，盒子自身是它们的交集。
然后，物体包裹在这个盒子内部，根据光线与三对面的关系来判断是否真正相交：

- 显然，如果光线没有击中盒子，即没有同时穿过三对面，则不可能与物体相交；
- 光线与三对面都相交，则光线可能与物体相关；

并且 2D、3D 同样适用，只需要计算光线进入、穿透位置，光线进入、穿透一对面的位置记为 tmin 和 tmax，
那么，光线进入、穿透盒子的位置(时间)就为：

    tₗ = max(tmin)
    tₒ = min(tmax)

只要满足 tₗ < tₒ 即表示光线在盒子有停留，也就是同时穿透了三对面。如果 tₒ < 0 表示物体在光线后方，
即没有相交。如果，tₗ < 0 并且 tₒ >= 0，即表示光源位于盒子内部。

一般，tₗ < tₒ && tₒ >= 0 就认为光线与 AABB 相交。

AABB 本质上是一种空间分割技术，Uniform Spatial Partitions (Grids)，也是树状数据结构算法。
在图形学上，基于树状数据结构的算法可以带来非常大的性能的提升，相关算法比较如下：

- BSP-tree 二叉树在游戏工业算是老功臣，是早期技术，将空间二等分，比较麻烦，如对象平面相交时。
- Quad-tree、Oct-tree 四叉树/八叉树均匀切分三维空间，对象分布均匀时插入和查询效率较高，时间复杂度 O(logN)。
- KD-tree 是定制的二叉树，K-Dimensional tree，节点记录一个 k 维坐标点。
- Bounding Volume Hierarchy (BVH) 层次包围盒是多叉树。

![GAMES101 Lecture 14 - Acceleration & Radiometry](https://cdn.nlark.com/yuque/0/2021/png/12962324/1617257855961-cd607ec6-e167-4ad9-aa80-6cd5ace37720.png)

BSP Trees 全称二维空间分割树 Binary Space Partioning trees，使用二叉树的叶节点保存空间中的
图元集合，主要用于 Z-depth 排序，实现背面剔除。因为在 90 年代初受硬件限制，只能使用 BSP 对空间中
的图元进行排序，以保证渲染图元的顺序是按照由后至前进行的，换句话说，Z 值最小的物体总是最后被渲染。

四叉树/八叉树这类紧密空间分割算法有一个问题是，物体有可能在边界处来回，从而导致物体总是在切换节点，
使得数据结构中频繁做节点的增删操作，影响性能。而松散四叉树/八叉树正是解决这种边界问题的一种方式，
它定义节点有出入口边界，inner boundary vs. outerboundary，边界区域作为一个缓冲地带避免频繁操作，
就像施密特触发器 Schmitt Trigger 工作原理一样。

KD 树的每层都是对应一个划分维度，取决于使用者如何定义各层使用哪个维度。树的每个节点代表一个超平面，
该超平面垂直于当前层划分维度的坐标轴，并在该维度上将空间划分为两部分，一部分在其左子树，另一部分在
其右子树每次只沿某一个轴划分。

例如，以下为一个 2D 平面的 KD-tree，第一层划分维度为 X 轴，过节点坐标竖直分割；第二层为 Y 轴，
过节点坐标水平分割；第三层又为 X 轴，过节点坐标竖直分割。

![KD-tree](https://img2018.cnblogs.com/blog/1409576/201905/1409576-20190524233211006-2118364092.png)

但是，这些节点树使用叶节点来记录空间中的物体，都存在一个问题：多个区域的分割线可能与同一物体有交集，
这会导致同一个物体记录在不同的节点中。并且，KD-tree 还有更严重的问题，很难处理三角形和盒子求交。
而直接对物体进行划分的 BVH 则可以解决这样的问题，子节点存包围盒，根节点代表大包围盒，叶节点记录物体，
并约束一个物体只在一个包围盒内，包围盒可能相交，但问题不大，只要合理规划降低包围盒重合区。例如，沿长
轴方向划分，平均地划分三角形数量。

![Spatial vs. Object Partitions](https://cdn.nlark.com/yuque/0/2021/png/12962324/1617257912908-d9c99f26-76ad-4bd2-8e1d-6e5cd9d82750.png)


在研究物理光照规律之前，需要了解一下辐射度量学理论的一些基础：

- **Solid angle** 立体角，球面上的投影面积与半径的平方之比，类似圆有 2𝜋 弧度，球体有 4𝜋 立体弧度。
- **Radiant Intensity** 辐射强度是单位立体角的辐射通量，不随半径变化，因为单位立体角对应面积占比恒定。
- **Irradiance** 辐照度，单位面积接收到的辐射通量，称为该处的辐照度，会随着光源半径增加而衰减。
- **Radiance** 辐射，单位投影面积或者单位立体角上的辐射通量，图形学中主要关心它代表的光线传播方向。
- **Incident Radiance** 入射辐射，指到达表面的单位立体角的辐照度。
- **Exiting Radiance** 出射辐射，离开表面的单位投影面积的辐射强度。

![Radiosity Concepts](https://cdn.nlark.com/yuque/0/2021/png/12962324/1617258508714-099b7136-5b79-470a-b69e-c7cead25bdd5.png)
![Differential solid angle](https://cdn.nlark.com/yuque/0/2021/png/12962324/1617258521227-d45f943e-ea8f-47d4-bb34-519b530998b3.png)

在图形学中，关心的是光源发射的能量、受光体接受到的能量、光线传播方向：

- Radiant Intensity - Light Emitted From A Source
- Irradiance - Light Falling On A Surface
- Radiance - Light Traveling Along A Ray

![Light Source vs. Surface vs. Ray](https://cdn.nlark.com/yuque/0/2021/png/12962324/1617257932482-f621be8d-d5ce-4b61-a0be-40544395199a.png)

光源上强调的是辐射强度越强，释放出来的能量越大，相对就越亮，光源一般只考虑对外的辐射，即 radiance。
受光物体接受到的能量为入射光 irradiance，对外辐射为 radiances 也称亮度 luminance，相当光源。


为了寻找一种能够更准确地渲染更具漫反射特征的环境的技术，20世纪80年代中期，Don Greenberg 和他在
康奈尔大学的合作者设计了图像合成的辐射度方法 radiosity method，这就是 The Cornell Box 中遵循
的渲染原理，这个盒子经常在图形学文章中看到。

![The Cornell Box](http://www.graphics.cornell.edu/online/box/box.jpg)

光能传递的基本原理如下：

    radiosity = ∑(emissions + reflections + transmissions)

- 在一个封闭系统环境中研究光能量的平衡；
- 封闭环境是指这样的一个环境：从给定表面发射、反射的所有能量都被其他表面反射和吸收；
- 可以定义曲面光能传递值：能量离开曲面的速率。

光能传递计算有两个步骤：

首先，根据环境中每个曲面的 path 与所有其他曲面面片之间的能量交互量（形状因子）计算其曲面光能传递。
这是一个独立于视图的过程；虽然相当耗时，但每个场景只需要执行一次（前提是能量平衡不变）。

然后，渲染场景时考虑 a）可见曲面 b）插值着色 (flat or Gouraud)。这是依赖于视图的过程，移动相机
位置意味着需要重新计算图像，但这几乎可以足够快地实现实时渲染。当然，通过适当的技巧，光能传递可以以
每秒 15-20 帧的速度动态生成渲染图像，可作为漫游的基础。

与光线追踪一样，光能传递理论也研究许多问题领域，以及积极研究的领域：

- 使用各种混合方法，结合镜面反射、真反射和透射效果是可能的；不幸的是，这些方法依赖于视图。
- 必须在允许交互式调整照明参数的系统中重新计算光能传递解决方案，如剧院和照明设计，灯光颜色修改。
- 光能传递解决方案（以及生成的图像）的质量在很大程度上取决于曲面面片的定义方式（曲面细分），以及在关键区域（尤其是阴影）中如何重新定义曲面面片。
- 与光线跟踪一样，该技术的计算效率可以通过各种方式提高，特别是通过动态重新定义形状因子（渐进细化）。



### 🟢🔵 Subsurface Scattering 次表面散射
- Real-Time Rendering - CH9 Physically Based Shading
- [The Last of Us 2 Wallpapers](https://wallpapercave.com/tlou2-wallpapers)
- [角色渲染技术——皮肤 - 洛城](https://zhuanlan.zhihu.com/p/27014447)
- [Real-Time Rendering 3rd 第七章 · 高级着色：BRDF及相关技术](https://zhuanlan.zhihu.com/p/28059221)
- [GPU Gems 3 真实感皮肤渲染技术总结](https://zhuanlan.zhihu.com/p/42433792)
- [GPU Gems 3 - 14. Advanced Techniques for Realistic Real-Time Skin Rendering](https://developer.nvidia.com/gpugems/gpugems3/part-iii-rendering/chapter-14-advanced-techniques-realistic-real-time-skin)

半透明材质与次表面散射（Translucent and Subsurface Scattering）在生活中无处不在：树叶、纸、
蜡烛、牛奶、布料、皮肤、贝壳、玛瑙等。非金属物体几乎都存在 Subsurface Light Transport (SSLT)
次表面光传输现象，生物皮肤犹为明显。

![Grapes](https://www.creativeshrimp.com/wp-content/uploads/2015/03/grapes_04.jpg)

动物皮肤是一个多层结构，其表面油脂层主要贡献了皮肤光照的反射部分，约占入射光中的 6%。而油脂层下的
表皮层、真皮层则主要贡献了次表面散射部分，约占入射光中的 94%。任何没有直接从皮肤表面反射出去的光，
都会直接进入次表面层。这种占主要主导因素的次表面散射属性，决定了皮肤半透明的特征以及柔软的视觉外观。

![Figure 14-3 A Multilayer Skin Model](https://developer.nvidia.com/sites/all/modules/custom/gpugems/books/GPUGems3/elementLinks/14fig03.jpg)
![Figure 14-4 Scattering and Absorption in Multiple Tissue Layers](https://developer.nvidia.com/sites/all/modules/custom/gpugems/books/GPUGems3/elementLinks/14fig04.jpg)

入射光与皮肤进行交互的过程中，被部分吸收（获取颜色）并经过多次散射，返回并从进入点周围的 3D 邻域处
表面离开。而有时光线会完全穿过像耳朵这样的薄薄区域，形成透射（Transmittance）。


Jensen 在 2001 年的论文 A Practical Model for Subsurface Light Transport 推导了许多
重要的物理公式，计算模型，渲染时的参数转换，以及测量了许多生活中常见材质的散射系数等等。

模拟半透明物体的方法有很多，例如：

- Volumetric Path Tracing
- Volumetric Photon Mapping
- Bidirectional Scattering Distribution Function (BSDF)
    - Bidirectional Reflectance Distribution Function (BRDF)
    - Bidirectional Transmittance Distribution Function (BTDF)
    - Bidirectional Surface Scattering Reflectance Distribution Function (BSSRDF)

![BSDF BRDF BTDF BSSRDF关系演示](https://pic2.zhimg.com/80/v2-715d6ac94c5775ad60a1570703d9921d_1440w.webp)

光线从一种介质射向另外一种介质时，可以根据光线行进路线分为两个部分：一部分光线在介质交界处发生了反射，
并未进入另外一种介质；另外一部分光线则进入了另一种介质，可能发展为次表面反射或折射。

反射光和入射光的辐射照度，radiance vs. irradiance，其比例是一个和入射角度、出射角度相关的函数，
这个函数就被称之为**双向反射分布函数** BRDF。而穿越介质部分的光照比例就称之为**双向透射分布函数** BTDF。
反射光与透射光总和，与入射光的辐射照度的比例就叫做**双向散射分布函数**，从能量守恒角度来说：

    BSDF = BRDF + BTDF

双向表面散射反射分布函数 BSSRDF 是目前的主流技术，简单来说，传统的 BRDF 模型是一种简化表达。两者
不同之处在于，BSSRDF 可以指定不同的光线入射位置和出射的位置。

- BRDF 模型中，一次反射光照的计算是在光线交点的法线半球上的球面积分。
- BSSRDF 模型中，每一次反射在物体表面上每一个位置都要做一次半球面积分，是一个嵌套积分。






### 🟢🔵 Environment & post-processing 环境与后期处理
- [Environment and post-processing](https://docs.godotengine.org/en/latest/tutorials/3d/environment_and_post_processing.html)
- [Environment and post-processing](https://www.bilibili.com/video/BV1Km4y1X765/)
- [Godot 4.0 gets SDF based real-time global illumination](https://godotengine.org/article/godot-40-gets-sdf-based-real-time-global-illumination)
- [Volumetric fog and fog volumes](https://docs.godotengine.org/en/latest/tutorials/3d/volumetric_fog.html)

Godot 3.x 重新设计提供了 Environment 资源，这是一个后期效果系统，每个场景中可以设置一个世界环境
节点用来加载一个环境配置资源，WorldEnvironment 在场景树中只能有一个，但可以加载不同的环境配置。

![project environment setting](https://docs.godotengine.org/en/3.5/_images/environment_default.png)

环境配置资源包括 sky, ambient lighting, tone mapping, effects, adjustments 等配置选项，
可以对现有的场景效果进行改头换脸般的后期处理。在一个工程中创建的环境配置资源本身不会起作用，除非将它
通过世界环境节点加载到场景树中。或者通过摄像机的环境属性中指定一个环境配置，这种设置可以覆盖世界环境。
可以通过工程设置，为工程指定一个默认环境配置，Project Settings -> Rendering -> Environment。


环境配置中，提供了以下多种属性以产生相应的后期效果，只挑选重点内容说明：

|       属性      |                        说明                       |
|-----------------|---------------------------------------------------|
| Background      | 背景色填充                                        |
| Ambient         | Light 环境光                                      |
| Fog             | 雾化效果                                          |
| Tonemap         | 色调映射                                          |
| Auto Exposure   | 自动曝光                                          |
| SS Reflections  | 屏幕空间反射光 Screen-Space Reflections (SSR)     |
| SSAO            | Screen-Space Ambient Occlusion 屏幕空间环境光遮蔽 |
| DOF Far Blur    | 基于深度场的远景模糊，Depth of Field (DoF)        |
| DOF Near Blun   | 基于深度场的近景模糊                              |
| Glow            | 辉光效果                                          |
| Adjustments     | 整体调整                                          |
|-----------------|---------------------------------------------------|
| Reflected Light | 反射光                                            |
| SSIL            | Screen-Space Indirect Light                       |
| SDFGI           | Signed Distance Fields Global Illumination        |
| Volumetric Fog  | 体积雾                                            |

其中，屏幕空间反射光及以下的选项都属于中后期效果处理，最后四种为 Godot 4.x 增加功能。

SDFGI 近似于动态实时光照贴图（dynamic real-time lightmap），但不需要展 UV 也不需要使用贴图。
开启 SDFGI 它会自动工作，并对静态物体生成全局光照。它不需要光线追踪，可以在绝大多数最新的 GPU 上
甚至几年前的中档廉价 CPU 上运行。SDFGI 的开发和测试使用 Geforce 1060，一直保持着 60fps 帧率。
SDFGI 也支持反射，无论是漫反射还是镜面反射，所以全 PBR 场景将不成问题。


🟡**Background** 即用来指定场景中空白区域的背景色，可以使用图像、颜色，或者程序化背景，会影响物体的
环境光与反射光，有多种模式：

- **Clear Color** 使用工程默认的清屏色填充背景，rendering/environment/default_clear_color。
- **Custom Color** 类似以上，但是由用户指定颜色。
- **Sky** 使用程序化背景，提供一个 PanoramaSky 360° 天空球，或者 ProceduralSky 梯度渐变太阳，
    提供了多种太阳选项设置。物体可以反射或吸收天空纹理的环境光，创建天空球时需要指定纹理。
- **Color+Sky** 可定义天空，但使用纯颜色填充背景，天空球仅作用为反射光和环境光。
- **Canvas** 画面模式可以配置 CanvasLayer 的渲染顺序使用。
- **Keep** 保持残影。
- **Camera feed** 

![Environment Background](https://docs.godotengine.org/zh_CN/stable/_images/environment_background1.png)

🟡**Ambient Light** 环境光，即几何体上每一块的光照强度都一样的光，与场景中具体的光源无关。

所谓环境光 ambient 即经过无数折射后在空间上呈现极度均匀的柔和光，无论从什么角度看，物体的环境光
都是一致的。所谓漫反射光 diffuse 即光线折射次数不是很多，并且对下一个物体的受光面有较大影响。

![Ambient](https://docs.godotengine.org/en/latest/_images/environment_ambient2.png)

环境光有两种，一是材质中的 Albedo 的环境光颜色 Ambient Color，以及从天空球获取到的环境背景色。

当背景设置为天空(Sky)时，使用天空贡献度(Sky Contribution) 属性，设置环境颜色(ambient color)
和天空色之间的混合比例，默认值为 1.0，因此只有天空色会影响对象。

最后，能量(Energy) 属性是一个乘数，在使用 HDR 时非常有用。场景中设置的光源与环境光对物体的影响是
一个混合过程，具体效果不仅取决于能量的级别大小，还决定于着色器的实现，默认着色器是一个颜色叠加关系。

一般来说，环境光只用于简单场景、大型外景，或出于性能原因，因为环境光运算量少，不能提供最佳的照明质量。
通过 ReflectionProbe 或 GIProbe 生成环境光是更好的方案，这样可以更真实地模拟间接光的传播方式。


🟡**Fog** 雾，这是模拟真实感的一个重要因素，就像在现实生活中一样，使远处的物体逐渐消失在均匀的背景
颜色中。物理效果实际上非常复杂, Godot 提供很好的近似效果，有两种雾：

- **Depth Fog** 深度雾基于距相机的距离来应用雾化效果。
- **Height Fog** 高度雾应用于任何高度位于 Height Min/Max 之间的物体，无论距离相机的距离如何。

![Depth Fog vs. Height Fog](https://docs.godotengine.org/en/3.5/_images/environment_fog_depth_height.png)

雾的本体颜色是改变雾化效果的直接因素，这两种雾类型都可以调整它们的曲线, 使它们的过渡或多或少变得清晰。

可以调整两个属性以使雾效果更有趣:

- **Sun Amount**，它利用 **Sun Color** 颜色，在视角朝向平行光的入射方向时，模拟穿过雾的阳光。
- **Transmit Enabled** 模拟更逼真的透光率，在实践中，它使光线在雾中更加突出。

🟡**Tonemap** 色调映射选项仅在 GLES3 适用。

色调映射选择应用于场景的色调映射曲线，选项为电影和游戏工业中所使用的标准曲线。除线性模式外，色调映射
运算可以使亮部和暗部更均匀，同时防止高亮区域受到裁剪。

**Mode** 色调映射使用以下模式：

- **Linear** 线性模式是默认值，是最快也是最简单的色调映射运算，会导致高亮区域过曝，有可见的裁剪。
- **Reinhardt** 颜色影射为 color = color / (1 + color)，可以防止裁剪高亮区域，但可能会有些暗淡。
- **Filmic** 防止裁剪高亮区域，最终的图像通常比前者鲜艳。
- **ACES** 学院色彩编码系统色调映射器，Academy Color Encoding System。已废弃，Godot 4.0 中移除。
- **ACES Fitted** 更耗算力，但对于高亮区域的处理方式更真实，光线越亮饱和度越低，输出的图像对比度更高。

色调映射曝光 **Exposure** 模拟长时间获取的光照量，默认值 1.0。值越高，整体更亮。修改色调映射运算子
或白点后，如果场景看上去太暗，请尝试将这个值略微调高。

光照映射白点 **White** 模拟白色在整个尺度中所处的位置，默认值 1.0。推荐值 [6.0, 8.0]，以使得
光照更真实。值越高，高光区域更少过曝，但会让场景整体看起来更暗。


🟡**Auto Exposure (HDR)** 自动曝光选项仅在 GLES3 适用。

尽管，大多数情况下艺术家会严格控制照明和纹理，出于真实性效果，通过自动曝光机制可以简单地支持高动态
范围实现，如低光户内区域和高光户外相结合时的画面。自动曝光模拟相机或眼睛，适应明暗位置和不同光量。

使用自动曝光的最简单方法是，确保室外灯光或其他强光的能量超过 1.0，通过调整灯光的 Energy 乘数实现。
为了使其保持一致，Sky 通常也需要使用能量乘数，以配合平行光。通常情况下，数值在 3.0 到 6.0 之间，
就足以模拟室内室外条件。

通过将自动曝光与 Glow 后处理相结合，超过色调映射 White 的像素将会逸出至辉光缓冲区，从而在摄影中
创造典型的泛光效果。

自动曝光部分中的用户可控值具有合理的默认值, 但仍然可以调整它们：

- **Scale** 用于比例缩放照明，较大的比例值会产生较亮的图像，较小的值会产生较暗的图像。
- **Min Luma** 自动曝光调整的最小亮度，亮度是屏幕所有像素中光线的平均值。
- **Max Luma** 自动曝光调整的最大亮度。
- **Spped** 亮度校正的速度，值越高，校正效果出现速度越快。


🟡**Glow** 辉光是指超饱和的高光对周围颜色产生的影响，在摄影和胶片中，当光量超过介质支持的最大值时，
无论是模拟还是数字技术，这些高光通常会向图像周围较暗区域渗出。

默认情况下，即使启用了效果，可能也会变弱或不可见。实际辉光发生需要两个条件之一：HDR 阈值和 Bloom。

像素中的光线超过 HDR 阈值，其中 0 表示所有光线都超过该阈值，1.0 表示光线超过色调映射器白值即溢出。
通常情况下，这个值应该在 1.0，但它可以调低以允许更多的光线渗入。还有，额外的参数 HDR Scale 允许
对超过阈值的光线进行缩放，使其更亮或更暗。

泛光效果 Bloom effect 值设置大于 0。随着它的增加，它会以更高的数量将整个屏幕发送到辉光处理器。

以上两者都会导致光从较亮的区域开始逸出，一旦看到辉光，就可以通过一些额外的参数来控制它：

- **Intensity** 强度是效果的整体比例，可以将其增强或减弱，0.0 可以将其删除。
- **Strength** 调整高斯滤波器内核的处理强度，数值越大，滤波器越饱和并向外扩展。一般来说，修改 Levels 更有效地调整大小。

效果的混合模式如下：

- **Additive** 添加是最强的一种，因为它只在图像上添加辉光效果，不涉及混合。一般来说，它太强了，不能使用，但在低强度的泛光下可能看起来很好，会产生一种梦幻般的效果。
- **Screen** 确保辉光永远不会比自己更亮，它作为一个周围的方式将非常好。
- **Softlight** 是默认的，也是最弱的一种，只在物体周围产生细微的颜色扰动，在黑暗场景中效果最好。
- **Replace** 用来模糊整个屏幕或调试辉光效果，它只显示辉光的效果，没有后面的图像。

辉光等级 Levels 提供了 7 个用于改变辉光效果的大小和形状配置，较小的级别在物体周围出现较强的辉光，
而大的级别是覆盖整个屏幕的朦胧辉光。然而，这个系统的真正优势在于结合 Levels 来创造更有趣的辉光模式。

最后，随着最高的图层在对微小模糊图像的拉伸中被创建，可能会看到一些块状模糊。启用 Bicubic Upscaling
可以以最低的性能成本处理这种问题，注意这只在 GLES3 中有效。

![Bicubic Upscaling](https://docs.godotengine.org/zh_CN/stable/_images/environment_glow_bicubic.png)


🟡**Screen-Space Reflections (SSR)** 屏幕空间反射只在 GLES3 中有效。

![SSR effect](https://docs.godotengine.org/zh_CN/stable/_images/environment_ssr.png)

Godot 支持三种反射数据源，Sky、ReflectionProbe、GIProbe，但它们可能无法为所有情况提供足够的细节。
SSR 最有意义的场景是物体彼此接触，例如地板上的物体、桌子上的物体、漂浮在水面上的物体呈现的倒影等。

SSR 另一个优点是实时工作，而其他类型的反射是预先计算，实时运算的反射光可以用来生成人物、汽车等移动
物体的实时反射光到周围的物体表面上。

以下是一些用户可以细调的参数：

- **Max Steps** 确定反射的长度，最小为 1，这个数字越大，计算成本就越高，效果也越精细。
- **Fade In** 调整淡入曲线，这有助于使接触区域更柔和。
- **Fade Out** 调整淡出曲线，因此步长限制会轻微淡出。
- **Depth Tolerance** 屏幕空间射线对间隙的容差，容差值越大，忽略的间隙就越大。
- **Roughness** 勾选时 SSR 会考虑材质的粗糙度以产生接近的 screen-space blur 效果。

请记住, 屏幕空间反射仅适用于反射不透明几何体，透明对象无法反射光线。因为它们不会写入深度缓冲区，这也
适用于使用 SCREEN_TEXTURE 或 DEPTH_TEXTURE 的着色器。


🟡**Screen-Space Ambient Occlusion (SSAO)** 屏幕空间环境光遮蔽只在 GLES3 中有效。

环境光部分提到，光源节点的光线无法到达的区域，要么是阴影或是在光源半径之外，这些区域会被环境光照亮。
Godot 可以使用 GIProbe, ReflectionProbe, Sky 或恒定的环境色来模拟环境光，但问题是，之前提出
的所有方法都更多地作用于较大的尺度或大区域，而不是较小的几何体层面。

恒定环境色和 Sky 在任何地方都是一样的，而 GI 和反射探针的局部细节较多，但不足以模拟光线无法填充到
中空或凹面特征内部的情况。

这可以用屏幕空间环境遮挡来模拟，它的目的是确保几何体凹陷区域更暗，模拟光线进入的较窄路径。

启用此效果，打开灯光却无法欣赏到相应的效果是一个常见的错误，这是因为 SSAO 仅作用于 Ambient light
环境光，而不是直接光。这就是在使用直射光的条件下，效果不太明显的原因。如果想强制 SSAO 也在直射光下工作，
请使用 Light Affect 光线影响参数，尽管并这不好，但有些设计师喜欢。

当与真正的间接光源结合时，SSAO 效果看起来最好，比如 GIProbe。

可以使用以下几个参数调整 SSAO：

- **Radius/Intensity** 控制遮挡的半径或强度，半径是世界(公制)单位，从视口开始计算距离。
- **Radius2/Intensity2** 辅助半径和强度，通常结合大半径和小半径 AO 效果很好。
- **Bias** 偏置调整可以解决自遮挡问题，但通常默认情况下效果不错。
- **Light Affect** 设置对直射光线的影响量，而不仅仅对环境光作用，有些艺术家喜欢这种效果。
- **Ao Channel Affect** 零值表示仅将材质的 AO 纹理用于环境光遮挡，SSAO 不应用。大于 0 的值会
    在不同程度上将 AO 纹理与 SSAO 效果相乘，对没有 AO 纹理的材质无效。
- **Quality** SSAO 将根据质量针对每个像素对球体进行更多采样，仅适用于现代 GPU。
- **Blur** 模糊采样核的大小，1x1 kernel 是最粗糙的，3x3 模糊最细致，更柔化图像，但不保留局部细节。
- **Edge Sharpness** 用于保持边缘的清晰度，避免折痕处没有 AO 的区域。



🟡**Adjustments** 是在处理结束时阶段的标准图像调整功能，包含：

- Brightness 亮度调整；
- Contrast 对比度调整；
- Saturation 饱和度调整；
- Color Correction 颜色校正；

第一个调整功能是能够改变典型的亮度、对比度和饱和度：

![Brightness Contrast Saturation](https://docs.godotengine.org/en/3.5/_images/environment_adjustments_bcs.png)

第二种是通过提供颜色校正梯度映射来改变色彩，但是常规黑色到白色渐变将不起作用，这种映射就是保持原色。
创建自定义 **GradientTexture** 允许将每个通道映射到不同的颜色，在映射纹理图中，从左往右对应原图的
黑色到白色的变化。使用常规黑色到白色渐变，只可以调整两者的位置来改变原图的亮暗关系。通过改变映射色彩，
就可以实现调整个原图的色彩关系，原图像的 RGB 映射到新的 RGB 通道上。



## 🟡🟠 Chaos World 混沌世界
- [Painting with Maths by Inigo Quilez](https://www.bilibili.com/video/BV1fU4y1273S/)
- [Raymarching distance fields - 2008 by Inigo Quilez](https://iquilezles.org/articles/raymarchingdf/)
- [Ray Marching and Signed Distance Functions](https://jamie-wong.com/2016/07/15/ray-marching-signed-distance-functions/)
- [The Book of Shaders by Patricio Gonzalez Vivo & Jen Lowe](https://thebookofshaders.com/11/?lan=ch)
- [Voronoi diagrams – inventor, method, applications](https://www.researchgate.net/publication/329444868_Voronoi_diagrams_-_inventor_method_applications)
- [Value noise derivatives - 2008](https://iquilezles.org/articles/morenoise/)
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
- An Image Synthesizer. Ken Perlin (1985)
- Texturing and Modeling, Third Edition: A Procedural Approach. David S. Ebert, F. Kenton Musgrave, Darwyn Peachey, Ken Perlin, Steve Worley (2002)
- The Science of Fractal Images, Heinz-Otto Peitgen (1988)
- Matlab Documentation - Symbolic Math Toolbox - Mathematics: Equation solving, formula simplification, calculus, linear algebra, and more

计算机图形学其中一个问题是噪声，世界随处都可见的噪声看似杂乱无章，其实有迹可循。最简单的白噪声 White Noise
是一些毫无关联的像素构成，这些像素都是一个独立随机的点，自然办大量存在。而一些有规律的噪声，如细胞结构、树皮
纹理、水波等等。理解这些现象更恰的观念是混沌系统，混沌不等于随机，随机表示完全无法预测，而混沌则是整体有规律，
具体无法测。就细胞结构来说，整体上植物的细胞开状都像一个长方形盒子，这是可以预测的，但是具体每个细胞的大小分布
这些具体的数值是不能预测的。

在研究噪声问题之前，建议观看 Inigo Quilez 作品演示 Raymarching distance fields - 2008，
以及可以打开你天灵盖的《用数学绘画》 Painting with Maths 系列教学视频。

将噪声与傅里叶级数、分形、布朗运动等等数学工具组合，可以创造一切可能，而不仅仅是游戏地形景观。一些成功
的噪声研究为软件工业提供了大量可产品化的算法，包括但不仅限于以下这些：

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


Worley noise 也叫 Cellular noise，算法是 Steven Worley 在 1996 年的论文提出的，
A Cellular Texture Basis Function，在这篇论文里，他描述了这种现在被广泛使用的程序化纹理技术。
Voronoi（Cellular Noise）网格噪声算法实质上是这样一个问题：距离场计算问题。在 UV 网格上随机选
一个点 P，如何判断它处在哪个多边开区块内？

算法可以表述为：每个特征点向外扩张生长，直到它碰到其它扩张的区域。这反映了自然界的生长规则。生命的形态
是由内部扩张、生长的力量和限制性的外部力量共同决定的。模拟这种行为的算法以 Georgy Voronoi 命名。

![Monokot root (Georgy Voronoi algorithm)](https://thebookofshaders.com/12/monokot_root.jpg)

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

在 2011 年, Stefan Gustavson 优化了 Steven Worley 的算法，提出 2x2 Worley 噪声优化，仅仅
对一个 2x2 的矩阵作遍历（而不是 3x3 的矩阵）。这显著地减少了工作量，但是会在网格边缘制造人工痕迹。
事实上这个问题在3x3上也存在，只是不明显。

Inigo Quile 也在 Voronoi edges - 2012 中提供了一个边线查找算法，算法提供了正确的距离度量。

Voronoi 噪声求解的函数中，显示到最近单元格点的距离的函数被命名为 F1，显示到第二个最近点的距离的
函数被命名为 F2，依此类推。不必限制自己只使用 F1 或 F2，也有可以使用以某种方式组合它们的函数。
最有趣的变体是 F2-F1 Voronoi。


在游戏工业上利用现代 GPU 硬件编程，即编写着色器是实现噪声程序普遍做法。现在，通过浏览器就可以编写
着色器语言程序，Shadertoy 就是这样的工具，作者 Inigo Quilez 也是计算机图形领域的大牛。

开源免费的动画工具 Blender 也不错，使用 OSL（Open Shading Language）着色器语言。Godot 上使用
OpenGL GLSL 2/3 着色器语言编程，只需要给对象创建一个 ShaderMaterial 材质即可。编写着色器涉及
数学方面的知识比较多，同时要求更高的艺术审美能力，才能制作出高质量的作品。

GLSL 本身没有提供随机函数，除了早期版本提供一系列噪声函数 noise1 ~ noise4，在新的 OpenGL 4.4
已经弃用，所以返回值总是为 0。要实现伪随机数，可以用取巧的方法，Shadertoy 上提供了一个实现方法，
利用 fract 函数截取小数部分：


```js
float rand(vec2 co)
{
    return fract(sin(dot(co.xy, vec2(12.9898, 78.233))) * 43758.5453);
}
```

参考 [Noise - value - 3D by Inigo Quilez](https://www.shadertoy.com/view/4sfGzS)


着色器中有一个用于平滑插值的 smoothstep 曲线公式 y = 3x^2 - 2x^3，它可以由二次方程混合得到，
这件事确实让开始接触着色器编程的我觉得，数学上的函数这个概念真的和计算机结合非常密切。

假设有两条二次方程曲线：

    C: f(x) = x^2
    D: f(x) = 1 - (x-1)^2

并且有两个用于混合以上曲线的函数：

    E: f(x) = x
    F: f(x) = 1 - x

它们分别是正例、反比例函数。那么 smoothstep 曲线公式就可以按 CF + DE 混合，在 [0,1] 区间上混合
得到两条曲线的平滑过度，使得插值始终可以将输入 x 映射到 [0,1] 这个标准化区间内，并实现两端的平滑。

```c
    // Hermite interpolate between ``edge0`` and ``edge1`` by ``x``.
    // vec_type smoothstep (vec_type edge0, vec_type edge1, vec_type x)
    // vec_type smoothstep (float edge0, float edge1, vec_type x)

    genFType t;
    t = clamp ((x - edge0) / (edge1 - edge0), 0, 1);
    return t * t * (3 - 2 * t);
```

平滑插值结果返回 0.0 如果 x ≤ edge0，或者返回 1.0 if x ≥ edge1，当 edge0 < x < edge1，使用
smooth Hermite interpolation 将结果平滑在 [0, 1] 区间。注意，edge0 ≥ edge1 时，无定义。


Ken Perlin 对 Simplex Noise 算法的一个优化是将三次 Hermite 函数即 smoothstep() 函数替换
成了四次 Hermite 函数。使得函数曲线两端更“平”，所以噪声图每个格的边缘更加优雅地与另一个衔接。

    Cubic Hermite Curve： f(x) = 3x^2-2x^3
    Quartic Hermite Curve： f(x) = 6x^5-15x^4+10x^3

而这种数学工具的应用远不只是在算法的效率提升上的应用，程序化建模的基本工具也是数学。例如，球和圆有
什么本质差别呢，一个是 x^2 + y^2 = r^2，一个是 x^2 + y^2 + z^2 = r^2，当进行比例运算后，
就可以将一个圆变换为椭圆，将一个球变成一个饼状态，这是不是太有趣了。

而 Inigo Quilez 展示在 Raymarching distance fields - 2008 上的数学作画能力绝对可以开拓
你对于数学的原有认识，它就真的像上帝！




## 🟡🟠 Shader Programming 着色器 - GPU 编程
- [GAMES101-现代计算机图形学入门-闫令琪](https://www.bilibili.com/video/BV1X7411F744/)
- [龚大的上帝视角看GPU教程](https://www.bilibili.com/video/BV1P44y1V7bu/)
- [Real-Time Rendering 3rd 渲染管线优化提炼总结](https://zhuanlan.zhihu.com/p/32928016)
- [Real-Time Rendering 3rd 渲染加速算法提炼总结](https://zhuanlan.zhihu.com/p/32300891)
- [The Book of Shaders by Patricio Gonzalez Vivo & Jen Lowe](https://thebookofshaders.com/?lan=ch)
- [OpenGL Wiki](https://www.khronos.org/opengl/wiki/Main_Page)
- [Real-Time Rendering, Fourth Edition](http://www.realtimerendering.com/)
- Computer Graphics: Principles and Practice 3rd Edition 2014
- Fundamentals of Computer Graphics 4/5th Edition
- OpenGL SuperBible: comprehensive tutorial and reference OpenGL 4.3 6th Edition
- OpenGL SuperBible: comprehensive tutorial and reference OpenGL 4.5 7th Edition
- OpenGL Programming Guide: The Official Guide to Learning OpenGL 4.3 8th Edition
- OpenGL Programming Guide: The Official Guide to Learning OpenGL 4.5 with SPIR-V 9th Edition
- GLSL Essentials: Enrich your 3D scenes with the power of GLSL! by Jacobo Rodríguez
- [OpenGL Reference Cards](https://www.khronos.org/developers/reference-cards/)
- [Vulkan® Learning](https://vulkan.org/learn)
- [Vulkan® API Tutoria](https://vulkan-tutorial.com/Introduction)
- [Spine 动画制作及 SFML Framework 入门](https://github.com/jimboyeah/spine-sfml-demo/)
- [Vulkan: the essentials - NVIDIA by Tristan Lorach, March 17th 2016](https://developer.download.nvidia.cn/gameworks/events/GDC2016/Vulkan_Essentials_GDC16_tlorach.pdf)
- [The OpenGL Shading Language](https://www.khronos.org/opengl/wiki/OpenGL_Shading_Language)
- [Rendering Pipeline Overview - Vertex Specification](https://www.khronos.org/opengl/wiki/Vertex_Specification)
- [Leanr OpenGL - Hello Traiangle](https://learnopengl.com/Getting-started/Hello-Triangle)
- [Leanr OpenGL zh_CN](https://github.com/LearnOpenGL-CN/LearnOpenGL-CN/)

说到计算机图形学，就不得不说从 OpenGL 到 Vulkan 规范的演化过程，以及从 CPU 到 GPU 绘图方式的转变。

早期计算机图形学还没有大量应用，大多只是实验室研究，一般绘图能力也是通过 CPU 实现的。随着市场和技术发展，
计算机新增了 GPU 这个主角，在计算机构架上，GPU 可以和 CPU 共享或者使用独立的内存，即存在两种架构：
**耦合式架构**与*分离式架构*。分离式构架通过 PCI-e 等总线通讯，而共享构架则不需要经过外部总线传递数据。
分离式构架的缺点在于 PCI-e 相对于两者具有低带宽和高延迟，数据的传输成了其中的性能瓶颈。但是优点也明显，
就是一旦数据准备好，就不需要 CPU 再提供数据，GPU 内部更高效地执行绘图流程，被移 PC、动设备大量采用。

共享式构架共享内存和缓存，AMD 的 APU 采用的就是这种结构，目前主要使用在 PS4 等游戏主机中。


说到 OpenGL 就离不开 SGI（美国硅图公司）这家公司，OpenGL 起源于 SGI，在 1992 年 7 月发布 
OpenGL 1.0 成为工业标准。受控于 1992 年成立的独立财团 OpenGL Architecture Review Board (ARB)。
SGI 等 ARB 成员以投票方式产生标准，并制成规范文档(Specification)公布，各软硬件厂商据此开发自己
硬件系统上的实现。只有通过了 ARB 规范全部测试的实现才能称为 OpenGL 规范。

2006 年 08 月 10 日，Khronos 集团宣布获得 OpenGL 的控制权，发展扩张后，Apple、Dell、Google 
和 S3 Graphics 等公司都已成为了其会员。

科纳斯组织（Khronos Group）是一个由成员资助，专注于制定开放标准（Open standard）的行业协会，
重点制定免费的 API，使在各种平台和设备上创作或播放的多媒体可以得到硬件加速。

目前，OpenGL Graphic API 还在进化之中，但是出于性能与构架优化，以及 Metal、DirectX 等对手竞争需要，
新的接棒者 Vulkan GPU API 已经开始普及应用。这个新的规范将开放更多的 GPU 能力给开发者，一方面
硬件性能可以得到最大化的发掘，但另一方面，对开发者的技术要求也提升几个级别。

我接触 GPU 渲染管线是从 OpenGL 开始的，而有个金主爸爸的 DirectX 多媒体接口只有一个模糊的认识。
在图形接口规范中，确实是非常混乱的一个市场，像是一个军阀混战的年代。Open Graphics Library 整体
上还是比较接近图形学的基础概念，选择 OpenGL 的理由很简单：通用跨平台。

如果想要更深入 GPU 的开发，khronos 组织最新制定的图形接口标准 Vulkan® API 可以更精细的开发能力。
Vulkan 虽然给开发者提供了更多的自由度，如果这个开发者本身不自由(非大牛)，那用回 OpenGL 就很好。
原因就在于如果开发者对内存管理机制，对程序运行机制没有十足的理解，那就可能会误用 Vulkan 
导致运行效率甚至 OpenGL 运行效率更低，那这样就得不偿失。

与使用 OpenGL 状态机提供的固定状态和操作集相比，Vulkan API 为程序员提供了对绘图过程的更多控制，
并且以更灵活、更简单的方式。借助这一额外的灵活性，着色器可用于创建过于复杂（如果不是不可能的话）的效果，
用常规 OpenGL 函数无法描述这些效果：每像素照明、阴影等。现代显卡和新的 OpenGL Core Profile 
图形接口已经完全基于着色器，称为固定管道的固定状态和函数集已被弃用，将来可能会被删除。

毕竟 Vulkan 细杂体现在，要实现图形学的 Hello World 程序绘制三角形绘制需要上千行代码，这对于熟悉
OpenGL 程序的开发人员来讲是不可想象的，甚至比自己用 CPU 实现一套软光栅器更为复杂！同时难度也体现在
它的 API 复杂难懂，对于入门图形学的新手来讲并不是太简单。所以，无论 OpenGL 或者 Vulkan 规范，其目标
用户一般是图形学高级玩家、或游戏引擎开发团队。

学习 OpenGL 着色器编程要搞清楚几个概念，OpenGL API 是一个提供图形接口的规范，而硬件厂商负责实现
这套规范，应用开发者则按规范进行游戏或引擎之类软件的开发，三方互相独立又有联系。OpenGL 这套接口下，
提供的 GPU 编程语言是 The OpenGL Shading Language，简称为 GLSL。

目前，三大主流规范使用的 Shader 语言是：

- HLSL - Direct3D High Level Shader Language
- GLSL - OpenGL Shader Language 
- CGSL - Nvidia C for Graphic

着色器 Shaders 就是在 GPU 上运行的程序，也就是对 GPU 编程的代码片断，所谓片断是指这种程序一般很小，
可能最多就是上几百行代码。出于 OpenGL 通用性考虑，GLSL (OpenGL Shading Language) 语法上类似 C/C++。

在早期，OpenGL 和 GLSL 的版本发行并不一致，直到 OpenGL 2.0 开始，才对应发行一个版本号。但版本号
并不总是一致，直到 OpenGL 3.3 开始才一致，所以 Godot 使用的 GLSL 2/3 对应 OpenGL 1.2 和 3.3：

|    时间    |     版本     | GLSL |                    主要特性增加                    |
|------------|--------------|------|----------------------------------------------------|
| 1992/01    | OpenGL 1.0   | -    |                                                    |
| 1997/01    | OpenGL 1.1   | -    | Vertex arrays                                      |
| 1998/03/16 | OpenGL 1.2   | -    | Imaging subset (optional)                          |
| 1998/10/14 | OpenGL 1.2.1 | -    | Define ARB extensions concept                      |
| 2001/08/14 | OpenGL 1.3   | -    | Compressed texture format                          |
| 2002/07/24 | OpenGL 1.4   | -    | Automatic mipmap generation                        |
| 2003/07/29 | OpenGL 1.5   | -    | Buffer object                                      |
| 2004/09/07 | OpenGL 2.0   | 1.10 | OpenGL Shading Language 1.00                       |
| 2006/07/02 | OpenGL 2.1   | 1.20 |                                                    |
| 2008/08/11 | OpenGL 3.0   | 1.30 | Deprecation Model                                  |
| 2009/03/24 | OpenGL 3.1   | 1.40 |                                                    |
| 2009/08/03 | OpenGL 3.2   | 1.50 | Geometry shaders, in/out interface block           |
| 2010/03/11 | OpenGL 3.3   | 3.30 |                                                    |
| 2010/03/11 | OpenGL 4.0   | 4.00 | Tessellation Shader                                |
| 2010/07/26 | OpenGL 4.1   | 4.10 |                                                    |
| 2011/08/08 | OpenGL 4.2   | 4.20 |                                                    |
| 2012/08/06 | OpenGL 4.3   | 4.30 | Arbitrary Compute Shaders                          |
| 2013/07/23 | OpenGL 4.4   | 4.40 |                                                    |
| 2014       | OpenGL 4.5   | 4.50 |                                                    |
| 2017       | OpenGL 4.6   | 4.60 | The SPIR-V language can be used to define shaders. |

关键的版本有：

- OpenGL 2.0 引入着色器语言，支持顶点着色器、片段着色器；
- OpenGL 3.0 增加了“弃用”概念：Deprecation Model，在以后的版本中将某些功能标记为删除状态。
- OpenGL 3.1 基于现有的弃用模型，和后续将要实现的 Core Profile 重大修改，删除了大多数不推荐的功能。
- OpenGL 3.2 引入几何着色器；创建了两个上下文概念：Core Profile 和 Compatibility Profile。
- OpenGL 4.0 引入细分着色器；
- OpenGL 4.3 引入计算着色器；
- OpenGL 4.6 正式引入 SPIR-V 标准可移植中间层语言；

OpenGL 为了适应现代的 GPU 开发，使用 Core Profile 上下文配置，使开发者也可以使用一些更底层的功能。
2008 年 8 月 11 日发布的 OpenGL 3.0 这个版本代号叫做 Longs Peak，大量改变原有工作方式，根本性
改变 API 调用方式。从此开始分 *Core Profile* 和 *Compatibility Profile* 两种上下文工作方式，
并且 Khronos Group 希望只支持 Core Profile。但这个革新性的规范被许多厂商明确表示拒绝，他们并表示
会继续支持许多被划入 Compatibility Profile 的扩展，所以改为可选项。

OpenGL 3.0 的出现改变了过去 OpenGL 向后兼容的特性，在一定程度上简化了原有 API 的臃肿增加灵活度。
但是，没有采用向后兼容方式，所以原有的开发流程被打破，许多开发者是不能接受的。

Core Profile 只包含最新的 Shader 相关的函数，程序必须使用 Shader 编写。而兼容配置则可以兼容原
OpenGL 固定管线的功能，也可以使用 Core Profile 中的内容。

新版本 OpenGL 后的基本参考文档也变为三个，例如 OpenGL 3.3 相应的文档包括：

- OpenGL 规范文档：GLSLangSpec.3.30.pdf
- GLSL 核心模式规范文档：glspec33.core.pdf
- GLSL 兼容模式规范文档：glspec33.compatibility.pdf

另外，还引入了一个 Forward compatibility 模式，即向未来兼容，按 Deprecation 过时标记的函数都不可用。

无论这些 API 规范如何打架，着色器始终就是高效绘图的代名词，通过可编程着色器语言 Shader Language
在 GPU 中执行高效的图形渲染代码。官方提供的 OpenGL Wiki 文档是最佳入门材料，上面有关于 Rendering pipeline，
OpenGL Shading Language 的基本介绍。另外，Shadertoy 网站也是一个膜拜大神着色器案例的好去处。


根据 OpenGL 文档，OpenGL Render Pipeline 渲染管线的工序如下：

- Vertex Specification
    - Vertex Rendering
    - Primitive
- Vertex Processing
    - Vertex Shader
    - Tessellation
    - Geometry Shader
- Vertex Post-Processing
    - Transform Feedback
    - Clipping
- Primitive Assembly
    - Face Culling
- Rasterization
- Fragment Shader
- Per-Sample Processing
    - Scissor Test
    - Stencil Test
    - Depth Test
    - Blending
    - Logical Operation
    - Write Mask

片段着色器阶段也基本就是渲染管线的最后流程，经过最后的处理就得到了屏幕上输出的图形。

Mastering SFML game development by Pupius, Raimondas 书中提供了一张可编程渲染管线示意图，
很简明地表达了渲染管线各个工序的作用：

![Programmable pipeline - Mastering SFML game development by Pupius, Raimondas](https://github.com/jimboyeah/spine-sfml-demo/raw/master/images/Programmable%20pipeline%20-%20Mastering%20SFML%20game%20development%20by%20Pupius,%20Raimondas.jpg)

以下是根据 OpenGL Programming Guide 第 9 版本制作的 GPU 渲染流程图：

```sh
+========+      +========+      +==============+    +==============+
| Vertex |      | Vertex |      | Tessellation |    | Tessellation |
| Data   |  ->  | Shader |  ->  | Control      | -> | Evaluation   |
+========+      +========+      | Shader       |    | Shader       |
                                +==============+    +==============+
  +==========+                                                |
  | Culling  |      +===========+      +==========+           |
  |   and    |      | Primitive |      | Geometry |           |
  | Clipping |  <-  | Setup     |  <-  | Shader   |  <--------+
  +==========+      +===========+      +==========+
       |  
       V                              +=============+
+===============+    +==========+     | █▀▀░█░█░▀█▀ |
| Rasterization | -> | Fragment | ->  | █▀▀░▄▀▄░░█░ |
+===============+    | Shader   |     | ▀▀▀░▀░▀░░▀░ |
                     +==========+     +=============+

        Figure 1.2 OpenGL pipeline
```

这里，有几个关键的阶段，其中*顶点着色器*和**片段着色器**是必需外部提供的，引擎一般提供默认的实现。
GPU 绘画需要知道图形的结构，图形结构依赖顶点数据，而这些数据不能凭空产生，应用由开发都提供：

- ✒ 从顶点数据输入到 *Geometry Shader* 几何着色器为止，这部分是整个渲染流程的前端部分。
- ✒ 其次，是固定功能部分，Primitive Assembly, Clipping, Rasterization 等阶段就是将代表
     场景的图元转化为像素，会应用 Viewport Transformation 这类操作以将虚拟 3D 场景映射到 2D 的屏幕空间上。主要是光栅化，几何空间上的顶点通过投射变换，确定了对应屏幕光栅的位置，也就是几何
     图形空间的点与像素坐标的对应关系确立。
- ✒ 最后，是以 *Fragment Shader* 为分界的渲染后期阶段，这个阶段最重要的工作就是在将数据发送到
     帧缓冲区前确定像素的颜色。

片段着色器阶段对于开发者来说相当重要，开发者可以决定这些片元该着上什么样的颜色，这个阶段也被称为像素
着色器，尽管这种称谓不是太恰当。当几何体装配为图元并送入光栅化阶段，这里将计算出窗口中哪些像素受到了
几何体的影响。当 OpenGL 确定当前需要生成一个独立的片元时，它将执行片元着色器的内容，然后就进入逐片元
的一系列操作，经过几个处理阶段，判断片元是否可以作为像素绘制到帧缓存中，以及控制绘制的方式。只有进入 
frame buffer 后才意味着相应的图像像素即将要生成。

举例来说，如果片元超出了帧缓存的矩形区域，或者它与当前帧缓存中同位置的像素相比，距离视点更远，那么
正在处理的过程都会停止，片元也不会被绘制这些用户在屏幕上看不见的区域。而另一个阶段当中，片元的颜色会
与当前帧缓存中的像素颜色进行混合。逐片元操作（Per-Fragment Operations）对每个片元进行操作，将
它们的颜色以某种形式合并，得到最终在屏幕上像素显示的颜色，主要工作是片元测试（Test）与合并（Merge）。

片元进入到帧缓存之前需要经过完整测试过程，片元写入 frame buffer 时可以执行一些高度可配置的操作。
这些测试和操作大部分都可以通过 glEnable() 和 gIDisable() 来启用或停用。引擎也会通过界面提供相应
功能配置选项，比如 Depth Test、Depth Write 等配置选项。深度写入是判断该材质是否会剔除后面的像素，
只要开启 Depth Write 不管是否为透明物体，都会根据 Z 来遮挡后面的物体。

如果一个片元在某个测试过程中丢弃，那么之后所有的测试或者操作都不会再执行，这些测试和操作的顺序如下：

1）剪切测试（scissor test)将所有绘制操作都限制在剪切盒区域内。
2）多重采样的片元操作（multisampling）几何图元边缘平滑技术，也叫反走样 antialiasing。
3）模板测试（stencil test)模板值与模板缓冲区的模板值进行比较，比较通过，片元才被继续处理。
4）深度测试（depth test)片元的深度值（Z坐标分量）与缓冲区的深度值进行比较，以确定物体的遮挡关系。
5）融混（blending）即根据图像的 alpha 及混合方程进行透明物的混合。
6）抖动（dithering）通过对颜色较单调的图像进行抖动来提升颜色的分辨率，与报纸印刷时候的半调方法有点类似。
7）逻辑操作，片元的最后一个操作，包括 OR、XOR、INVERT，处理当前输入片元数据（源）以及当前颜色缓存中的数据（目标)。

使用多重采样技术 multi-sampling，可以在一个 framebuffer 上为每个像素保存多个 depth, stencil
或者颜色值。Depth buffer 中保存的值通常是 [0, 1] 范围的值，0 表示距离最近，1 表示距离最远。已经
渲染的位置，OpenGL 可以比较片段的窗口空间坐标与深度缓冲区中已经存在的值。如果该值小于已经存在的值，
则片段可见。这种测试的意义也可以改变，例如，可以要求 OpenGL 允许具有大于、等于，或不等于深度缓冲区
内容的 z 坐标分量的片段通过。深度测试的结果也会影响 OpenGL 对 stencil 缓冲区的操作。


图形应用一般会涉及大量的数据，比如，绘制一个带纹理图的正方体，纹理文件的大小决定了图形的精细度，为了
高质量，一张纹理可能就有几 MB，甚至几十 MB。正方体本身模型结构简单，可能只有 8 个顶点，但是在项目中
一般使用的模型都是极精细的，并且还需要从高度精细的模型制作出低精度的模型，以提升 GPU 工作效率，避免
因为模型面数极大导致 GPU 过负而不能达到要求的帧率。

另外，顶点数据不仅仅是坐标数据，除了位置坐标信息，顶点还可以有颜色、纹理贴图坐标等等。为了提高数据使用
效率，OpenGL 中使用以下数据对象，参考 Rendering Pipeline Overview - Vertex Specification：

- `VBO` - Vertex Buffer object 在显卡存储空间中开辟出的一块内存缓存区用来储存顶点数据，增加
        顶点进入 GPU 效率的方法。它们是可以存储在显存中的缓冲区，以最快的 GPU 速度去访问数据。
- `VAO` - Vertex Arrary Object 顶点数组对象，定义了 VBO 顶点属性信息，和着色器变量起连接作用。
        虽然，VBO 实现了数据缓存的目的，但每次绘制模型之前需要绑定顶点的所有信息，当数据量很大时，
        重复这样的动作变得非常麻烦。VAO 可以把这些所有的配置都存储在一个对象中，每次绘制模型时，
        只需要绑定这个 VAO 对象就可以了。 缓存顶点的方式，比起零散的顶点传输效率要高。另外，通过 VAO
        定义的顶点属性信息，可以按不同的方式来组织数据，比如 VBO 中的数据每隔几个字节是坐标、
- `EBO` - Element Buffer Object 索引缓冲对象，或者称 `IBO` - Index Buffer Object，
        用于索引顶点数组的数据，解决顶点重用问题，可以减少内存空间浪费，提高执行效率。例如，立方体
        只要存储 8 个顶点信息，通过索引对象引用不同的点就可以用三角形绘制出整个模型。如果，直接使用
        三角形的顶点来绘图，则立方体 6 个面至少需要 12 个三角形共 36 个顶点。而通过索引对象，
        当需要使用重复的顶点时，就使用位置索引来调用顶点坐标信息，而不需要重复记录顶点坐标。

根据官方 Vertex Specification 文档描述，VBO 本身存储的是顶点数据，而 VAO 本身存储的是状态信息，
即指明 VBO 中存储的数据是什么。OpenGL 执行绘制命令时，需要知道顶点信息包括位置、颜色、法线等等，它们
可以在哪里取得（Slot），怎么取得（offset，stride），这些都是 VAO 可以提供的数据。VAO 出现以前，
调用 Draw Command 绘制之前需要调用 glVertexAttribPointer(…) 函数设置这些信息，并且每一次调用
绘制命令都需要重新设置顶点状态信息。VAO 出现之后，顶点状态信息集中存储起来，在执行绘制命令前，调用
**glBindBuffer(GL_ARRAY_BUFFER, VBO)** 绑定 VAO 对象即可。

OpenGL 绘图流程在不使用 VAO 只使用 VBO 的情况下，需要调用 `glVertexAttribPointer()` 设置
顶点属性，属性内容包括；

```c
    glVertexAttribPointer(
       0,                  // attribute 0. No particular reason for 0, but must match the layout in the shader.
       3,                  // size
       GL_FLOAT,           // type
       GL_FALSE,           // normalized?
       0,                  // stride
       (void*)0            // array buffer offset
    );
```

- `index` 参数指定从索引 0 开始取数据，与顶点着色器中 layout(location=0) 对应。
- `size` 参数指定顶点属性大小为 3 字节。
- `type` 参数指定数据类型。
- `normalized` 参数定义是否希望标准化数据，只表示方向不表示大小。
- `stride` 参数是步长，指定在连续的顶点属性之间的间隔。上面传 0 和传 3 效果相同，如果传 1 取值方式为 012、123、234……
- `offset` 参数表示顶点数据在缓冲区起始位置的偏移，是一个 GLvoid 指针。


以下是摘自 Learn OpenGL 教程中的 VBO、VAO 用法演示代码，单纯 VBO 方式每次绘图都需要设置属性：

```c
// 0. copy our vertices array in a buffer for OpenGL to use
glBindBuffer(GL_ARRAY_BUFFER, VBO);
glBufferData(GL_ARRAY_BUFFER, sizeof(vertices), vertices, GL_STATIC_DRAW);
// 1. then set the vertex attributes pointers
glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 3 * sizeof(float), (void*)0);
glEnableVertexAttribArray(0);  
// 2. use our shader program when we want to render an object
glUseProgram(shaderProgram);
// 3. now draw the object 
someOpenGLFunctionThatDrawsOurTriangle();   
```

使用 VAO 保存顶点属性数据的优点就是在后续的绘制中，不需要再次处理属性数据，只需要先绑定 VAO 对象：

```c
// ..:: Initialization code (done once (unless your object frequently changes)) :: ..
// 1. bind Vertex Array Object
glBindVertexArray(VAO);
// 2. copy our vertices array in a buffer for OpenGL to use
glBindBuffer(GL_ARRAY_BUFFER, VBO);
glBufferData(GL_ARRAY_BUFFER, sizeof(vertices), vertices, GL_STATIC_DRAW);
// 3. then set our vertex attributes pointers
glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 3 * sizeof(float), (void*)0);
glEnableVertexAttribArray(0);  

  
[...]

// ..:: Drawing code (in render loop) :: ..
// 4. draw the object
glUseProgram(shaderProgram);
glBindVertexArray(VAO);
someOpenGLFunctionThatDrawsOurTriangle();  
```

当然，使用 Godot 编写 GLSL 代码时，并不需要自己处理这些逻辑，引擎已经处理好了。并且 Godot 4.x
开始，已经支持 Vulkan API，而 Godot 3.x 对 OpenGL 的支持还会持续。

以下是 NVIDIA 在 2016 年游戏开发者大会 GDC（Game Developers Conference）上报告文档中提供的
OpenGL 和 Vulkan 的构架对比：

![Vulkan: the essentials - NVIDIA](https://github.com/jimboyeah/spine-sfml-demo/raw/master/images/vulkan_component.png)

从架构图对比上可以直观看到，原本 OpenGL 驱动层开发的内容被移到 Vulkna 应用层开发了。也就是说，
一方面开发 Vulkan 应用的难度增加了，因为需要处理原本硬件厂商需要做的工作。另一方面，功能更强大了，
因为驱动层的部分功能可以由应用层进行配置开发。


## 🟡🟠 ShaderMaterial Programming 着色器材质编程
- [Matlab Help - Mathematical Functions](https://ww2.mathworks.cn/help/symbolic/mathematical-functions.html)
- [The OpenGL Shading Language](https://www.khronos.org/opengl/wiki/OpenGL_Shading_Language)
- [The Book of Shaders by Patricio Gonzalez Vivo & Jen Lowe](https://thebookofshaders.com/?lan=ch)
- [Shaders Programming](https://docs.godotengine.org/en/3.5/tutorials/shaders/index.html)
- [Shading language](https://docs.godotengine.org/en/3.5/tutorials/shaders/shader_reference/shading_language.html)
- [Godot Shaders](https://docs.godotengine.org/en/3.5/tutorials/shaders/index.html)
- [Particle shaders](https://docs.godotengine.org/en/3.5/tutorials/shaders/shader_reference/particle_shader.html)
- [Converting GLSL to Godot shaders](https://docs.godotengine.org/en/3.5/tutorials/shaders/converting_glsl_to_godot_shaders.html)
- [Sprite Shaders](https://github.com/godotengine/godot-demo-projects/tree/master/2d/sprite_shaders)
- [Screen Space Shaders](https://github.com/godotengine/godot-demo-projects/tree/master/2d/screen_space_shaders)
- [2.5D Demo Project with GDScript](https://godotengine.github.io/godot-demo-projects/misc/2.5d/)
- [Voronoi and Worley (cellular) noise - Godot Shaders](https://godotshaders.com/snippet/voronoi/)
- [smoothstep desmos](http://www.desmos.com/calculator/309w4rkmpe)
- [双曲函数基础知识 by Coston](https://zhuanlan.zhihu.com/p/363616604)
- [可能是最好的讲解双曲函数的文章 - 王希](https://zhuanlan.zhihu.com/p/20042215)
- [Painting with Maths by Inigo Quilez](https://www.bilibili.com/video/BV1fU4y1273S/)
- [Raymarching distance fields - 2008 by Inigo Quilez](https://iquilezles.org/articles/raymarchingdf/)
- [Inigo Quilez - 2D distance functions](https://iquilezles.org/articles/distfunctions2d/)
- [Inigo Quilez - 3D distance functions](https://iquilezles.org/articles/distfunctions)
- [Ray Marching and Signed Distance Functions](https://jamie-wong.com/2016/07/15/ray-marching-signed-distance-functions/)
- [傅里叶级数、傅里叶变换与频谱 by Eugene Khutoryansky](https://www.bilibili.com/video/BV1sS4y1G7WF)
- [什么是傅立叶级数呢？-从热流到画圈圈 by 3Blue1Brown](https://www.bilibili.com/video/BV1vt411N7Ti)
- [But what is the Fourier Transform? A visual introduction by 3Blue1Brown](https://www.bilibili.com/video/BV1pW411J7s8)
- [An Interactive Guide To The Fourier Transform](https://betterexplained.com/articles/an-interactive-guide-to-the-fourier-transform/)
- [Pitch Shifting Using The Fourier Transform](http://blogs.zynaptiq.com/bernsee/pitch-shifting-using-the-ft/)
- [Fourier Transform: maps image into spatial frequency domain](https://homepages.inf.ed.ac.uk/rbf/HIPR2/fourier.htm)
- [Fourier transforms of images by Rachel Thomas](https://plus.maths.org/content/fourier-transforms-images)
- [How to Use Blender's New Ultimate Shader - Principled BSDF](https://www.bilibili.com/video/av27998058/)
- [Spatial Material](https://docs.godotengine.org/en/3.5/tutorials/3d/spatial_material.html)
- [Principled BSDF](https://docs.blender.org/manual/en/latest/render/shader_nodes/shader/principled.html)
- [Physically Based Rendering: From Theory to Implementation, Third Edition](http://www.pbr-book.org/3ed-2018/contents.html)
- [基于物理的渲染（PBR）白皮书 - 毛星云](https://zhuanlan.zhihu.com/p/53086060)

虽然，这小节内容是讲材质与着色器编程，但本质上，是在讲数学的应用。编程只是使用数学工具的手段，作品效果
就是最终产品。这中间要经历的内容很多，根据不同数学基础的人自然有不同的理解或不理解，或者难以理解。到目前
为止，傅里叶级数及其应用是给我最大触动的数学工具，3Blue1Brown 制作的一个图形化傅里叶级数教学视频
以一种难以想象的直观手段，将极度抽象的数学工具，用形象的动画形式展示在观众面前。这真的太棒了，尽管，
数学的意义远不止如此，但通过动画形象地说明了数学在音乐、图像、电子、通信等等领域的共通性。

Godot 材质有三类，它们都可以使用节点编辑界面方式、或者使用着色器方式进行编辑，与 4 个资源类型关联：

- **spatial**     - for 3D rendering.
- **canvas_item** - for 2D rendering.
- **particles**   - for particle systems.

|   Resource Type    |              Note             |
|--------------------|-------------------------------|
| SpatialMaterial    | for 3D rendering.             |
| CanvasItemMaterial | for 2D rendering.             |
| ParticlesMaterial  | for particle systems.         |
| ShaderMaterial     | uses a custom Shader program. |

Spatial Material 材质基于物理的渲染 PBR - Physically Based Rendering 技术，自迪士尼在 
SIGGRAPH 2012 上提出了著名的迪士尼原则的 BRDF（Disney Principled BRDF）之后，由于其高度的
易用性以及方便的工作流，已经被电影和游戏业界广泛使用。

与其他软件兼容，如皮克斯的 Renderman® 和虚幻引擎®。SubstancePainter® 等软件绘制或烘焙的图像
纹理可以直接链接到此着色器中的相应参数。

Blender 动画软件中也基于 PBR 提供原理化 BSDF 着色器节点 Principled BSDF，是默认基本材质。
参考 Blender Guru 的教程 How to Use Blender's New Ultimate Shader - Principled BSDF。

基于 PBR 可以创建各种各样的材质，基础层为漫反射，金属度，次表面散射和透射。除此之外，还有镜面层，
光泽层和透明涂层。Godot 官方示范中 Material Testers 展示了这种着色器各参数间的相互影响所呈现的
真实图形效果。注意，Albedo 就是材质的基本色。

PBR 模型将物体按表面光的反射、折射与吸收等物理特性分成电介质 Dielectrics、金属物质 Metals，对
光学特性影响上考虑了 Fresnel 菲涅尔效应、 粗糙度、 金属性。

![Disney Principled BSDF](https://docs.blender.org/manual/en/latest/_images/render_shader-nodes_shader_principled_example-1a.jpg)

Fresnel 效应解析光波通过不同介质的分界面时发生反射和折射，入射光分为反射光 Reflection 和折射光
Refraction 两部分。浅入射角获得的反射光更多，比如看湖面反射的景物倒影，远处比近处的倒影清晰明亮，
还有看一颗金属球，球体的圆周更明亮。物体的粗糙度对光反射有很大的影响，但是 Fresnel 效应一直存在，
即使是没有镜面反射的木球也会表现出周边更亮。

电介质对光的反射、折射和金属只对光线反射的特性是明显的差别，一般 Metallic 金属度设置为 0 或 1 
对应电介质和金属两类材料，不使用中间值，基本没有非金属和金属材料模型之间的混合材料。数值为 1.0 时，
表示使用基础色着色的完全镜面反射 Specular，且不含有漫反射 Diffusion 或透射 Transmission，
透射是入射光经过折射穿过物体。而对于金属表层的异物，如锈斑 Rust 的处理，就等价为电介质的覆盖。 

衍射（Diffraction），又称绕射，是指波遇到障碍物时偏离原来直线传播的物理现象。

次表面散射 Subsurface Scattering 相关属性与光路的折射有关，对于金属材料是没有效果的，同样透射
Transmission 相关属性也对金属无效。对于不透明的材料 Transmission = 0，那么 IOR - Index of Refraction 
折射率就是无效属性。

光泽 Sheen 属性适合 Fabric 织物类无镜面反射的材质。

清漆 Clearcoat 适合物体表层的光泽，如用于汽车油漆等材质的模拟。

各向异性 Anisotropic 通常搭配 Tangent 切向用于丝线、条纹的梳理，如布料的线条光影、煎锅底部的圆圈条纹。

通过法向的控制来控制不同观察角度的光影效果是很基础且重要的技术，Normal 法向控制基础图层的法线方向，
Tangent 切向控制各向异性图层的法线方向。

总结一下金属材质的 5 大要素：

- Base Color 基础色
- Metallic 金属度
- Roughness 糙度
- Clearcoat 清漆
- Normal 法向

玻璃材质的 4 大要素：

- Base Color 基础色
- Transmission 透射
- IOR 折射率
- Specular 高光
- Roughness 糙度
- Clearcoat 清漆

光滑白陶瓷材质，设定固有色为白，然后降低粗糙度参数，配合次表面 SSS 增加材质的半透明，就像皮肤。


着色器程序使用 **ShaderMaterial** 资源对象包装，要用着色器编程实现各种材质，就需要创建着色器材质。
然后，给颜色器材质的 Shader 属性设置一个着色器程序即可。在编辑着色器代码时，Godot 会自动编译着色器，
就像 Shadertoy 一样，编辑代码的过程就可以看到输出效果。不过，注意一点，着色器的 Uniform 变量是可以
在属性探测器面板中修改的，并且修改后的值会保留，下次运行时自动传入着色器。这种情况下，修改着色器中的值
会被覆盖，可以将材质对象清理干净再重新设置着色器即可以解除保留的数据。

正如上小节所说，OpenGL 和 GLSL 的版本发行并不一致，直到 OpenGL 2.0 开始，才对应发行一个版本号。
但版本号直到 OpenGL 3.3 开始才一致，所以 Godot 使用的 GLSL 2/3 对应 OpenGL 1.2 和 3.3。
而学习 Godot 着色器编程最基本的三个参考材料就是官方的规范手册，还有快速参考卡：

- The OpenGL® Graphics System: A Specification (Version 3.3 (Core Profile) - March 11, 2010)
- The OpenGL® Graphics System: A Specification (Version 3.3 (Compatibility Profile) - March 11, 2010)
- The OpenGL® Shading Language Language Version: 3.30 Document Revision: 6 11-Mar-2010
- OpenGL 3.2 API Quick Reference Card

前面两个着重于 OpenGL 规范本身，如果不是做引擎开发，可以不看，而且有更新的 Vulkan 规范可用。
而 GLSL 着色器语言规范参考手册则是必需的，里面有大量函数、变量定义等信息。

    git clone --depth=1 git@github.com:KhronosGroup/OpenGL-Registry

Godot 是基于 OpenGL 开发的游戏引擎，Godot 4.x 已经支持 Vulkan，所以其着色器程序的编写需要符合
基本 GLSL 着色器语言规范，而在着色器程序代码组织上有些许差别。GLSL 源代码中，顶点着色器和片段着色器
代码都有 **main()** 函数作为入口，Godot 则将着色器程序 Vertex & Fragment 二者合二为一，在同
一个代码文件定义 **vertex()** 和 **fragment()** 两个函数对应，外加一个光照函数 **light()**。
这些处理器函数，Processor functions，的使用取决于着色器的类型，对于 spatial 和 canvas_item
来说，它们都可以使用，而对于粒子着色器来说，只能使用 **vertex()**。

Godot 着色器编程与标准 GLSL 编程还有一个差别，就是不同的着色器需要设置渲染模式，引擎需要这些设置，
渲染模式决定了如何配置 OpenGL，也决定了渲染输出效果。使用图形界面时，通过材质属性控制器面板就可以
修改需要的各种渲染模式。而使用色器程序时，默认渲染模式为 **blend_mix**，启用 Alpha 透明：

```c
shader_type spatial;
render_mode skip_vertex_transform;
// render_mode blend_mix  Mix blend mode (alpha is transparency), default.
// render_mode depth_draw_alpha_prepass, cull_disabled, world_vertex_coords;

void vertex() {
    VERTEX = (MODELVIEW_MATRIX * vec4(VERTEX, 1.0)).xyz;
    NORMAL = normalize((MODELVIEW_MATRIX * vec4(NORMAL, 0.0)).xyz);
    // same as above for binormal and tangent, if normal mapping is used
}
```

其中，因为 Sptial 涉及光照处理，可配置的渲染模式最多，不涉及光照的 canvas_item 其次，particle
粒子着色器渲染模式最少。因为，粒子着色器本身不绘图，是 vertext shader 的一种特殊形式，在对象绘制
前运行以计算材质属性，如 color, position, rotation 等等。然后，再传递给 CanvasItem 或 Spatial
等着色器使用。粒子着色器之所以可以获得属性数据输出，是因为使用了一个特殊的着色器：转换反馈着色器，
transform feedback shader，根据 OpenGL 4.6 规范手册的封面，可以看到这种着色器经顶点着色阶段，
到几何着色阶段，再反馈回数据。在片段着色器运行之前就得到了数据，后续的片段着色器就可以利用这些数据。

转换反馈着色器是 Shader Model 4.0 带来的一个新特性，与其他特性不同，它改变了 OpenGL 渲染管线。
Transform Feedback 在 DirectX 中被称为 Stream-Output Stage。Godot 引擎内部实现中，执行
着色器编译后，创建一个着色程序并附加着色器之前，即在调用 glLinkProgram() 链接程序之前，先执行 
glTransformFeedbackVaryings() 告诉 OpenGL 要捕获到一个缓冲区中的输出属性。

另外，每种着色器还配置了不同的预定义变量，具体参考官方文档：

- shader_reference/shading_language.rst
- shader_reference/spatial_shader.rst
- shader_reference/canvas_item_shader.rst
- shader_reference/particle_shader.rst
- shaders/compute_shaders.rst
- shaders/converting_glsl_to_godot_shaders.rst
- shaders/using_viewport_as_texture.rst

Godot 提供了 VisualShader 可视节点编程，通过 Expression node 节点也可以编写着色器代码。
不像 VisualScript，它已经被 Godot 4.x 丢弃，而着色器的可视化编程还在使用中。

CanvasItem shaders render modes

+---------------------------+----------------------------------------------------------------------+
| Render mode               | Description                                                          |
+===========================+======================================================================+
| **blend_mix**             | Mix blend mode (alpha is transparency), default.                     |
| **blend_add**             | Additive blend mode.                                                 |
| **blend_sub**             | Subtractive blend mode.                                              |
| **blend_mul**             | Multiplicative blend mode.                                           |
| **unshaded**              | Result is just albedo. No lighting/shading happens in material.      |
| **skip_vertex_transform** | VERTEX/NORMAL/etc need to be transformed manually in vertex function.|
| **blend_premul_alpha**    | Pre-multiplied alpha blend mode.                                     |
| **blend_disabled**        | Disable blending, values (including alpha) are written as-is.        |
| **light_only**            | Only draw on light pass.                                             |
+---------------------------+----------------------------------------------------------------------+

前面 6 种模式和 Spatial 着色器通用，后面 3 种只对 CanvasItem 着色器有效果。


Particle shaders render modes

+-----------------------+----------------------------------------+
| Render mode           | Description                            |
+=======================+========================================+
| **keep_data**         | Do not clear previous data on restart. |
| **disable_force**     | Disable attractor force.               |
| **disable_velocity**  | Ignore **VELOCITY** value.             |
+-----------------------+----------------------------------------+


### 🟢🔵 OSL 着色器编程
- [Open Shading Language](https://docs.blender.org/manual/en/latest/render/shader_nodes/osl.html)
- https://github.com/AcademySoftwareFoundation/OpenShadingLanguage/blob/master/src/doc/osl-languagespec.pdf
- [Real-Time Rendering 3rd 非真实感渲染(NPR)相关技术提炼总结](https://zhuanlan.zhihu.com/p/31194204)

开放式着色语言 OSL 是一种小型但丰富的着色器语言，用于高级渲染器和其他应用程序中的可编程着色，非常
适合描述材质、灯光、置换和图案生成。最初由 Sony Pictures Imageworks 开发，用于其内部渲染器，
用于故事片动画和视觉效果，作为开源发布，以便其他视觉效果、动画工作室和渲染软件供应商使用。现在，它是
VFX 和动画功能的事实上的标准着色语言，在许多商业和工作室专有渲染器中广泛使用。

Blender 中支持在 Cycles 渲染引擎中进行 OGL 着色器编程，但只能在 CPU 模式下运行着色器。在属性面板
选择 Cycles 渲染器，以及 CPU 模式，勾选 Open Shading Language 选项。

在着色器编辑器中，添加 Script 节点，并为脚本节点指定着色器文本。右侧有按键可以重新编译着色器程序，
编译成功后会显示其输入和输出参数相应端口。若着色器为材质，则直接与材质输出节点的 Surface 输入连接，
即 Surface 输入体积或纹理。

执行菜单 Window -> Toggle System Console 打开系统控制台可以查看编译着色器产生的错误信息。在
脚本编辑器中，选择 Templates - Open Shading Language 可以打开示范代码。

OSL 是个没有光照能力的不完全着色器，光照依靠渲染引擎完成，OSL 只提供光照需要的 PBR 等信息。而且，
OSL 目前是个软件着色器，只能在 CPU 上运行，所以换到 GPU 模式就没用了，是个很鸡肋的功能。OSL 对于
3dmax 来说，意义还很大，因为 3dmax 传统 shader 的封闭性很难开发，OSL 完美的解决了这个问题。 

以下代码创建简单的卡通着色效果，会创建三个颜色输入，和一个光线入射方向：

```c
#include "stdosl.h"

// OLS Toon Shading
shader BaseToon(
    color Albedo = color(1, 1, 1),
    color LightColor = color(1, 1, 1),
    color ShadowColor = color(0, 0, 0),
    vector LightDirection = vector(0, 0, 0),
    output color Final = 0
)
{
    // get light direction use toon kit object info node 
    // or use vector node dirver.
    vector L = LightDirection;
    
    // lambert NdotL
    float NdotL = dot(N, L);
    
    // use round
    float Cel = round(NdotL);
    
    // mix shadow and light color
    color celShading = mix(ShadowColor, LightColor, Cel);
    
    Final = Albedo * celShading;
}
```



### 🟢🔵 from GLSL to Godot

由于 Shadertoy 这个基于 Web 开发的着色器程序编写、分享平台实在是好用，还有 The Book of Shaders
站点，所以在 Godot 实现着色器可以考虑它们的一些习惯的变量用法。只需要很小的代码变化，就可以从 GLSL 
编程转换到 Godot shaders 编程。

GLSL 内建的常用变量与等价 Godot 变量对照表如下，Variable 中为原变量名，Equivalent 为 Godot
中的等价定义。它们都不是用来向 GLSL 传递数据的 Uniform 变量，所以不能在主程序中编辑：

+----------------+---------+---------------+-----------------------------------------------------+
|Variable        |Type     |Equivalent     |Description                                          |
+================+=========+===============+=====================================================+
|gl_FragColor    |out vec4 |COLOR          |Output color for each pixel.                         |
|gl_FragCoord    |vec4     |FRAGCOORD      |For full screen quads. For smaller quads, use UV.    |
|gl_Position     |vec4     |VERTEX         |Position of Vertex, output from Vertex Shader.       |
|gl_PointSize    |float    |POINT_SIZE     |Size of Point primitive.                             |
|gl_PointCoord   |vec2     |POINT_COORD    |Position on point when drawing Point primitives.     |
|gl_FrontFacing  |bool     |FRONT_FACING   |True if front face of primitive.                     |
+----------------+---------+---------------+-----------------------------------------------------+

注意，`Uniform` 是从 CPU 向 GPU 中的着色器发送数据的一种方式，它定义的变量是全局的 Global，
意味着 uniform 变量必须在每个着色器程序对象中都是独一无二的，而且它可以被着色器程序的任意着色器
在任意阶段访问。其次，无论 uniform 设置成什么值，都会一直保存着它们的数据，直到它们被重置或更新。
要向着色器传递数据，就需要使用 Uniform 变量，并通过 **set_shader_param()** 设置数据，Godot
引擎内部会调用 OpenGL API，例如用 `glGetUniformLocation` 查询，调用 `glUniform4f` 设置。
参考 Godot 3.x 源代码的 ShaderGLES2 或 ShaderGLES3 的实现。

Godot 着色器中还有些特殊的变量，用于访问屏幕图像的 **SCREEN_TEXTURE**，以及存储 3D 场景深度
信息的 **DEPTH_TEXTURE**，使用当前片段着色器中的 **SCREEN_UV** 坐标获取对应的像素颜色值，这
是一个 RGB 颜色值。更多的自定义符号，可以参考源代码 GLES3 驱动模块的 **ShaderCompilerGLES3**
类型中定义的映射关系。

```c
shader_type canvas_item;

// GLSL: you can assign a default value to uniforms
uniform float blue = 1.0; 

void fragment() {
    COLOR = textureLod(SCREEN_TEXTURE, SCREEN_UV, 0.0);
    COLOR.b = blue;
}

// GDScript:
// var blue_value = 1.0
// material.set_shader_param("blue", blue_value)
```

Godot 着色器编程也提供了 GDScript 中使用属性提示辅助功能，在着色器定义变量时，可以设置属性提示，
以方便使用者或开发者在面板中随时了解属性的取值。例如，hint_range 提示取值范围，hint_albedo 提示
纹理输入：

```c
shader_type spatial;

uniform vec4 color : source_color;
uniform float amount : hint_range(0, 1);
uniform vec4 other_color : source_color = vec4(1.0);
```

+----------------------+------------------------------------------------+-----------------------------------------------------------------------------+
| Type                 | Hint                                           | Description                                                                 |
+======================+================================================+=============================================================================+
| **vec3, vec4**       | source_color                                   | Used as color.                                                              |
| **int, float**       | hint_range(min, max[, step])                   | Restricted to values in a range (with min/max/step).                        |
| **sampler2D**        | source_color                                   | Used as albedo color.                                                       |
| **sampler2D**        | hint_normal                                    | Used as normalmap.                                                          |
| **sampler2D**        | hint_default_white                             | As value or albedo color, default to opaque white.                          |
| **sampler2D**        | hint_default_black                             | As value or albedo color, default to opaque black.                          |
| **sampler2D**        | hint_default_transparent                       | As value or albedo color, default to transparent black.                     |
| **sampler2D**        | hint_anisotropy                                | As flowmap, default to right.                                               |
| **sampler2D**        |`hint_roughness[_r, _g, _b, _a, _normal, _gray]`| Used for roughness limiter on import (attempts reducing specular aliasing). |
| **sampler2D**        |`filter[_nearest, _linear][_mipmap][_aniso]`    | Enabled specified texture filtering.                                        |
| **sampler2D**        |`repeat[_enable, _disable]`                     | Enabled texture repeating.                                                  |
+----------------------+------------------------------------------------+-----------------------------------------------------------------------------+


Godot 4.x 开始使用 Vulkan，着色器加载流程完全不同，VkShaderModule 是着色器的组织模块对象，
加载流程还会使用到 VkPipelineShaderStageCreateInfo 一类对象。并且，Vulkan 引入了一种中间
代码语言 SPIR-V 来处理着色器，加载的着色器是字节码。

```py
# Load GLSL shader
var shader_file := load("res://compute_example.glsl")
var shader_spirv: RDShaderSPIRV = shader_file.get_spirv()
var shader := rd.shader_create_from_spirv(shader_spirv)
```

为了使编写片段着色器简单明了，Shadertoy 会处理从主程序向片段着色器传递大量有用信息：

- iChannelTime[4] 对应 Shadertoy 提供的四个外部媒体播放时间信息；
- iChannelResolution[4] 对应 Shadertoy 四个外部媒体分辨率；
- iChanneli 对应 Shadertoy 四个外部媒体当前的图像纹理，i 值为 [0, 3]；
- iMouse 对应浏览器中获取到的鼠标落在 Canvas 像素位置信息；

Godot 默认只当前节点纹理传入着色器，**CanvasItem** 类型对象可以使用 2D 材质，可以设置一个纹理。

其中有一些在 Godot 中没有等价表达，因此 Godot 选择了默认情况下不提供它们，为了方便用户在 Godot 
中按同样方式处理它们，下面这张表给出 Shadertoy 这些变量 定义与 GLSL 的等价关系。以下变量标明为 
“Provide with Uniform”，表示用户负责自己创建 uniform 从外部传递数据到着色器程序。

+---------------------+---------+------------------------+-----------------------------------------------------+
|Variable             |Type     |Equivalent              |Description                                          |
+=====================+=========+========================+=====================================================+
|fragColor            |out vec4 |COLOR                   |Output color for each pixel.                         |
|fragCoord            |vec2     |FRAGCOORD.xy            |For full screen quads. For smaller quads, use UV.    |
|iResolution          |vec3     |1.0 / SCREEN_PIXEL_SIZE |Can also pass in manually.                           |
|iTime                |float    |TIME                    |Time since shader started.                           |
|iTimeDelta           |float    |Provide with Uniform    |Time to render previous frame.                       |
|iFrame               |float    |Provide with Uniform    |Frame number.                                        |
|iChannelTime[4]      |float    |Provide with Uniform    |Time since that particular texture started.          |
|iMouse               |vec4     |Provide with Uniform    |Mouse position in pixel coordinates.                 |
|iDate                |vec4     |Provide with Uniform    |Current date, expressed in seconds.                  |
|iChannelResolution[4]|vec3     |1.0 / TEXTURE_PIXEL_SIZE|Resolution of particular texture.                    |
|iChanneli            |Sampler2D|TEXTURE                 |Godot provides only one built-in; user can make more.|
+---------------------+---------+------------------------+-----------------------------------------------------+

The Book of Shaders 中使用的着色器程序几乎是严格按 GLSL 编写的，只实现少量 uniforms 变量：

+---------------------+---------+------------------------+-----------------------------------------------------+
|Variable             |Type     |Equivalent              |Description                                          |
+=====================+=========+========================+=====================================================+
|gl_FragColor         |out vec4 |COLOR                   |Output color for each pixel.                         |
|gl_FragCoord         |vec4     |FRAGCOORD               |For full screen quads. For smaller quads, use UV.    |
|u_resolution         |vec2     |1.0 / SCREEN_PIXEL_SIZE |Can also pass in manually.                           |
|u_time               |float    |TIME                    |Time since shader started.                           |
|u_mouse              |vec2     |Provide with Uniform    |Mouse position in pixel coordinates.                 |
+---------------------+---------+------------------------+-----------------------------------------------------+

Shadertoy 作者 Inigo Quilez 对有向距离场很有深入的研究，使用 Raymarching distance fields
程序化建模利害得不行，作者主页上有一句话：“learning computer graphics since 1994”。

RayMarching 看起来跟 RayTracing 光线追踪很像，本质是通过数学方法模拟光线的传播。这种技术也是
有向距离场 SDF(Signed Distance Functions) 的应用，使用距离方程来表示几何体的方式，配合算法
直接以像素渲染方式 pixel shader 产生最终的建模效果画面，而不需要 3D 模型数据输入。这也就是 
Shadertoy 网站上大部分建模作品使用的方法。

然而 RayMarching 有一个硬伤，即像素渲染要对每一个像素点做运算，当画布较大时，其计算量就会很大。
这也是 Shadertoy 演示的很多作品打开时很卡顿，甚至很多案例还没打开，浏览器就会崩溃。

RayMarching 译作光线步进，或者射线推进，也称为球体追踪(Sphere Tracing), 以球体作为检测单元。
其意思就是让射线的起点沿着射线方向逐步推进，每次推进的距离就是射线起点到 SDF 模型的作为半径的距离。
光线追踪有前向、后向两种方式，Foreward/Backward Tracing，RayMarching 采用后向方式，由相机
位置投射光线，模拟眼睛的视线路径。


下图摘自 GPU Gems 2 Chapter 8. Per-Pixel Displacement Mapping with Distance Functions

![Figure 8-5 Sphere Tracing - from GPU Gems 2](https://jamie-wong.com/images/16-07-11/spheretrace.jpg)

RayMarching 将整个场景定义为一个有向距离场，为了找到视线和场景之间物体的交点，从相机开始，即沿着 P₀
视线一点一点地扩展，通过距离块提供的距离信息，可以检测到扩展半径是否触及场景物体，或者说，此时 SDF 的
计算结果是否为负数？。一般，有向距离场用负值表示物体内部，0 值表示物体表面，正值表示外部。如果 SDF 返回
正值，就继续沿着射线前进到最大步数。由于第一个触点不在视线方向上，所以继续探测，直到触及 P₄ 这点。
然后，根据表面的法线向量，以及光源位置和光的直线传播、透射、折射、反射原理，对物体进行着色。


OpenGL 使用的坐标是笛卡尔坐标系统，即屏幕向右、向上分别为 X、Y 轴正方向 ，顶点的值直接反映在屏幕。

始终需要明确的一点是 OpenGL 世界坐标系是`右手坐标系` right-hand system ，在二维屏幕上，屏幕
水平方向是 X 轴方向，向右为正，屏幕竖起方向是 Y 轴方向，向上为正，垂直于屏幕的方向是 Z 轴方向，
从屏幕里往外为正。即右手中指向自己表示 Z 轴、食指竖起向上表示 Y 轴、母指向右表示 X 轴。即使手腕怎么
转动，右手系统这种轴向关系是主要的参考。下图中，Camera 成像的角度就如眼睛看屏的幕图像一样：

Perspective Projection vs. orthographic Projection:

![https://stackoverflow.com/questions/36573283/from-perspective-picture-to-orthographic-picture](https://github.com/jimboyeah/spine-sfml-demo/raw/master/images/From_perspective_picture_to_orthographic_picture.png)

第一个着色器，在编写代码前，需要了解以下函数及内置变量：

- gl_Position 顶点着色器输出的顶点坐标，这是顶点着色器输出的最主要的数据。
- gl_FragColor 片段着色器输出的颜色，经过顶点着色器处理后的纹理、顶点等数据会进入片段着色器继续处理。
- texture() 函数用来读取纹理输入，GLSL 内置函数，纹理则 Godot 引擎输入，给 Node2D 设置纹理图即可。

```c
// Perform a texture read. 
gvec4_type texture (gsampler2D s, vec2 p [, float bias])
```

GLSL 的函数多数都有重载，参数可以是 1D、2D、3D、4D 的形式。纹理读取函数会使用纹理坐标 P 在当前绑定
到采样器的纹理中进行纹理查找 texture lookup。GLSL 中的纹理相关函数会根据 OpenGL API 设置的
纹理组合采样器，texture-combined samplers，对纹理进行访问。纹理属性，如大小、像素格式、维度数、
过滤方法、mipmap 级别数、深度比较等，也由 OpenGL API 调用定义，这些信息都会影响 GLSL 纹理函数。
Sampler 通常是在片元着色器内定义的，这是一个 uniform 类型变量，即处理不同的片元时这个变量不变。
一个 sampler 对应一个 texture，类型也是对应的，比如 sampler2D 采样器就对应 GL_TEXTURE_2D 
类型的纹理对象。

例如，绘制一个三角形，只要传递三个纹理坐标给顶点着色器，片元着色器会为每个像素生成纹理坐标的插值，
根据纹理坐标就得到了每一个像素的颜色值。Godot 使用 **draw_circle()** 方法在 Node2D 绘图，
由于只有一个坐标，对应的 UV 为 (0.0, 0.0)，尽管圆周是多条线段绘制模拟出圆形，但顶点却只有一个。
而像 **draw_polygon()** 这样的方法则需要指定，因为它需要指定多个顶点。

纹理坐标通常的范围是从(0, 0)到(1, 1)，当纹理坐标设置为范围以外，OpenGL 默认的行为是折回重复这个
纹理图像，Texture Wrapping，即忽略纹理坐标浮点值的整数部分，即小数部分，OpenGL 还有其它选择，
具体参考规范手册。

以下是一个 Node2D 节点的扩展类，可以绘制圆形、矩形及背景纹理填充，可以作为 Sprite 使用，并且可以
设置着色器材质进行着色器编程：

```py
tool
extends Node2D

class_name Circle
signal circle_hit(event)

export(Color, RGBA) var color = Color(.2,.2,.2,.5) setget _set_color
export(float, 0, 100, .1) var radius = 20.0 setget _set_radius
export(float) var detectionRadius = 20.0 setget _set_detectionRadius
export(bool) var rectangular = false setget _set_rectangular
export(Texture) var texture setget _set_texture

func _set_color(value):
    color = value
    update()

func _set_radius(value):
    radius = value
    update()

func _set_detectionRadius(value):
    detectionRadius = value
    update()

func _set_rectangular(value):
    rectangular = value
    update()

func _set_texture(value):
    texture = value
    update()


func _draw():
    var w = 1.4142135623730 * radius
    if rectangular:
        draw_rect(Rect2(-Vector2.ONE*w/2, Vector2(w, w)), color)
    else:
        draw_circle(Vector2.ZERO, radius, color)
    if texture:
        draw_texture_rect(texture, Rect2(Vector2.ONE*w/-2, Vector2(w, w)), false)

func _input(event):
    if event.is_pressed() and event is InputEventMouseButton:
        var mouse = event as InputEventMouseButton
        var distance = self.position.distance_to(event.position)
        var sd = self.position.distance_squared_to(event.position)
        if distance > detectionRadius:
            return
        print("detection distance %s - %s" % [distance, sd])
        emit_signal("circle_hit", mouse)
```

数学在着色器是最基础也是最重要的工具，所有算法都离不开基础的函数，而其中又以线性代数的向量、变换矩阵
等内容为主，三角函数也是最为常用的函数，以下是三角其中三个的曲线，在着色器中绘图、变换数值等等操作
经常使用到，熟悉它们非常必要。Matlab 提供的符号数学工具箱文档是不错的参考材料：

[Symbolic Math Toolbox](https://ww2.mathworks.cn/help/symbolic/)

| Cosine Plot | Sine | Arctangent |
|-------------|------|------------|
| ![Cosine Plot](https://ww2.mathworks.cn/help/examples/symbolic/win64/CosPlotTheCosineFunctionExample_01.png) | ![Sine Plot](https://ww2.mathworks.cn/help/examples/symbolic/win64/SinPlotTheSineFunctionExample_01.png) | ![ArcTangent Plot](https://ww2.mathworks.cn/help/examples/symbolic/win64/AtanPlotTheInverseTangentFunction1Example_01.png)

- Sine 和 Cosine 的值域都是 [-1, 1]，周期都是 2π。
- Sine 在 -π/2 到 π/2 区间是递增，而 Cosine 在 -π 到 0 区间是递增。
- atan 反正切函数，即正切函数的反函数，inverse tangent (arctangent)，值域为 [-π/2, π/2]。

Tangent 正切函数是根据角度 α 求解对边与邻边的比值，而反向三角函数则反过来根据比值求角度，如下图所示。

    sin(α) = opposite side / hypotenuse    = a / h
    cos(α) = adjacent side / hypotenuse    = a / h
    tan(α) = opposite side / adjacent side = a / b

![Trigonometric Functions](https://ww2.mathworks.cn/help/symbolic/definition_sine.png)

反正切函数是递增函数，并且在两边呈现平滑的变化，这个特性可以用在平滑过渡上。

- For real values of Z, atan(Z) returns values in the interval [-pi/2, pi/2].
- For complex values of Z, atan(Z) returns complex values with the real parts in the interval [-pi/2, pi/2].


颜色使用 RGBA 四分量结构，使用 vec4 四维向量表示，着色中创建向量非常便利，例如，以下两个色彩图案
相应的代码，第一条使用字面常量设置图案为统一的色值。第二条使用 UV 坐标作为颜色的 RG 前两个分量，
Blue 蓝色分量为 0.5，Alpha 分量为 1.0 不透明状态，所以第二图左上角应该是淡蓝，到右下角蓝色相对
变弱，以红绿混合色为主，显示为偏黄色。而右上角以红色为主，搭配半分蓝，显示为紫色，而左下角以绿为主，
搭配蓝色后，显示青绿色。因为绿色比较显眼，人类眼睛的绿色感光器即视锥细胞较多，所以绿色较显著 ：

![Blue Box](https://docs.godotengine.org/en/3.5/_images/blue-box.png)
![UV Box](https://docs.godotengine.org/en/3.5/_images/UV.png)

```c
void fragment() {
    COLOR = vec4(0.4, 0.6, 0.9, 1.0);
    COLOR = vec4(UV, 0.5, 1.0);
}
```

向量提供了各种分量的访问，并且可以按坐标形式、或颜色分量的形式访问，如 COLOR.rgb 等价 COLOR.xyz，
但最好按语议使用。颜色各分量值会通过 clamp 函数约束在 [0.0, 1.0] 范围，超出的值会被固定转换到正常
区间，负值截断变成 0.0，正数则不超过 1.0。

对于 Alpha 分量，则特殊点，根据图像数据无符号数、有符号数格式差别，Alpha 对应归一化为两种区间表达
[0,1] 或者 [−1,1]。但 Alpha 值超出这个范围时，并不会你 RGB 分量一样被 clamp 约束在正常值区间，
在 OpenGL 对纹理进行混合处理时，Alph 值就会按混合方程式进行处理。

Godot 在绘制透明图像时，透明会区也会一并处理，这对于大尺寸的图像来说并不是很好的做法，通过转换带
透明纹理的 Sprite 为 MeshInatance2D，可以路过大量透明区的渲染。例如，以下这棵带透明区的树，
在场景中选中 Sprite，在视图中的工具栏执行 "Convert to 2D Mesh" 即可以进行转换，另一种生成 2D 
网格的方法是通过 OBJ 导入。

![2D meshes - Sprite to Mesh](https://docs.godotengine.org/en/3.5/_images/mesh2d1.png)


在 Godot 默认着色器混合模式下，负值的 Alpha 影响最终混合结果，如下两组的颜色，分别是等效的：

    COLOR = vec4(1.0, 1.0, 0.0, -1.0); // blue
    COLOR = vec4(0.0, 0.0, 0.72, 1.0); // blue

    COLOR = vec4(0.0, 1.0, 0.0, -1.0); // purple
    COLOR = vec4(0.72, 0.0, 0.72, 1.0);// purple

根据手册内容 The OpenGL Graphics System: A Specification (Version 4.6 (Core Profile)
17.3 Per-Fragment Operations - Blending - Table 17.1: RGB and alpha blend equations
混合方程式可以表达为以下方式，混合涉及像素来源方以及目标输出方的两个参数，混合因子和像素颜色，分别前缀
f 和 C 表示，op 为操作，即运算方式，运算中的参数以分量形式进行：

    C_final = f_source * C_source op f_destination * C_destination

混合运算可以是以下几种，另外 GL_MIN、GL_MAX 两种比较简单:

- **GL_FUNC_ADD** 前后两项相加
- **GL_FUNC_SUBTRACT** 前后两项相减
- **GL_FUNC_REVERSE_SUBTRACT** 前后两项反顺序相减

混合函数 Blend Functions 可以设置两个分量系数，RGB Blend Factors 和 Alpha Blend Factor，
这些系数的传入方式不同，会大大改变，输出结果。通过以下 OpenGL 命令启用、设置混合模式：

```c
    glEnable(GL_BLEND);
    glBlendEquation(GL_FUNC_ADD);
    glBlendEquation(GL_FUNC_REVERSE_SUBTRACT);

    glBlendFunc(GL_SRC_ALPHA, GL_ONE);
    glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);
    glBlendFunc(GL_ONE, GL_ONE); //use additive to accumulate one over the other
    glBlendFuncSeparate(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA, GL_ZERO, GL_ONE);
```

混合函数设置的混合权重系数有四个来源，是通过 BlendColor 命令设置的 RGBA 颜色分量，包括第一来源
和第二来源的颜色，以及 darw buffer 中的目标颜色。另外，还有特殊的常量权重 GL_ZERO 和 GL_ONE，
分别是 (0,0,0,0) 和 (1,1,1,1) 两个四维矢量。

例如，glBlendFunc(GL_SRC_ALPHA, GL_ONE) 方式传入的系数，搭配 GL_FUNC_ADD 运算，假设源像素
vec4(1.0, 1.0, 0.0, -1.0)，Alpha 负值分量就会和源像素的 RGB 相乘，再与后面的常量运算结果相加，
最后归一化，将 RGB 负值归 0.0，将 Alpha 归 1.0，得到 vec4(0.0, 0.0, 0.3, 1.0)。

    C_final = (-1.0,-1.0,-1.0,-1.0) * (1.0, 1.0, 0.0, -1.0) 
            + (1.0,1.0,1.0,1.0) * (0.3, 0.3, 0.3, 1.0)
            = (-0.7,-0.7,0.3,2.0)

以上相乘是和分量的运算，并不是向量之间的运算，不是向量点积也不是叉积，所以没使用向量表示。另外，默认
Godot 工程环境背景色 Default Clear Color 设置为 77 的灰度值，即各分量约为 0.3。

最后，官方文档推荐以下顺序编写着色器代码：

```c
01. shader type declaration
02. render mode declaration
03. // docstring

04. uniforms
05. constants
06. varyings

07. other functions
08. vertex() function
09. fragment() function
10. light() function
```


### 🟢🔵 3D Spatial Shader
- [LenarOpenGL - Coordinate Systems](https://learnopengl.com/Getting-started/Coordinate-Systems)
- [Spatial shaders](https://docs.godotengine.org/en/3.5/tutorials/shaders/shader_reference/spatial_shader.html)
- [Your 1st 3D shader](https://docs.godotengine.org/en/latest/tutorials/shaders/your_first_shader/your_first_3d_shader.html)
- [Your 2nd 3D shader](https://docs.godotengine.org/en/latest/tutorials/shaders/your_first_shader/your_second_3d_shader.html)

3D 着色器与 2D 的着色器差别较多，例如 COLOR 全局变量不能修改，因为此模式下它不是 uniform 变量，
这些差别主要是因为 Godot 中的提供的材质支持，即通过 3D 着色器可以访问到默认的 3D 材质接口，如
ALBEDO、NORMALMAP 等全局符号可以修改材质表面色(vec3)、法线贴图等设置。

注意，Godot 3.x 与 4.x 的版本变化较大，很多对象及符号都做了调，NORMALMAP 就变更为 NORMAL_MAP。

```py
# called from the MeshInstance3D
mesh.material.set_shader_param("height_scale", 0.5)
mesh.material.set_shader_param("normalmap", sometexture)
```

要给 3D 着色器传递数据，可以使用材质类的方法接口，也可以使用着色器中定义 uniform 变量等形式传递数据。
注意，如果要在 fragment 中使用 VERTEX 中包含的当前顶点坐标信息，需要通过 varying 变量传递数据。
尽管，在片段着色器中还可以访问 VERTEX 这个全局变量，但其本身已经不是顶点着色器处理过程中的那个顶点
坐标，而渲染流水线上的其它参考坐标，即 OpenGL 视图坐标系统，以屏幕中心为原点，右上角为正方向。这个坐标
会随着视图位置的移动而变化，而不管物体本身的坐标是不是还在原位。

因为，vertex 着色器是为每个顶点设置属性使用的，会为每个顶点调用，而 fragment 着色器则为每个像素调用。


以下着色器实现波浪特效，在场景中创建一个 MeshInstance3D 节点，再给它赋予一个 PlaneMesh 风格，
这是 Godot 内置的一些最简单的模型，给 Plane 设置细分到 100 格左右的方阵即可。通过 3D 视图的菜单
切换为 Display wireframe 显示线框，可以看到网格中包含了许多三角形，这些都 PrimitiveMeshes，
也是 OpenGL 绘图中最基本的图元，就像点、线、多边形一样，都是最简单的图形结构。

给材质创建一个 NoiseTexture 纹理，并给它指定噪声来源 OpenSimplexNoise 或 FastNoiseLite 
以生成平滑噪声纹理，常用来生成地形。然后，通过着色器将噪声用于改变 Plane 的随机高度，为了更真实，
可以添加不同频率的随机噪声。就像傅里叶变换中那样，使用不同的同期的正弦函数组合来模拟其它信号。

虽然，通过噪声纹理可以创建地形或水波，但是此时光照处理中还是将它当作 Plane 网格来处理，法线没有改变，
光照也就明显看着不对。

法线存储在网格中，但着色器会不断更改网格的形状，因此法线总不正确。要解决此问题，可以重新计算着色器中
的法线或使用与噪波相对应的法线纹理。Godot 中很容易实现，可以在 vertex 着色器中手动计算法向量，也
可以直接使用 NoiseTexture 创建法线噪声纹理，只需要勾选 As Normalmap，生成的纹理就是法线贴图。
然后，将 uniform 输入的法线贴图赋值到 NORMALMAP 输出变量中。根据需要设置凹凸强度 Bump strenth，
如果纹理接缝太明显，可以勾选 Seamless 减少影响。

注意，法线贴图需要使用 XZ 分量作为采样坐标，因为 Godot 的 Y 轴是竖起向上的。还有 Plane 对象的
坐标原点在中心，坐标范围为 [-1, 1]，需要根据实际使用进行转换。

环境设置上，需要创建一个 WorldEnvironment，并设置背景模式为 Sky，然后，创建一个程序化天空盒，
使用 ProceduralSkyMaterial 程序材质。

菲涅尔效应表现比较好理解，视线与表面夹角越小，效应就越明显，反射光看起来也越强，所以需要视角向量和
物体表面法向量进行点积运算，dot(NORMAL, VIEW)。当两者垂直时点积结果最小，为 0，但是菲涅尔效应是
最强的，所以是反比例关系。


```c
shader_type spatial;
//render_mode unshaded;
render_mode diffuse_toon, specular_toon;

// Constants in Godot 4.x
//const float PI  = 3.14159265358979323846;
//const float TAU = 6.28318530717958647692;

uniform sampler2D normalmap;
uniform sampler2D noise;

varying vec3 tex_position;

float wave(vec2 position)
{
    position += texture(noise, position / 10.0).x * 2.0 - 1.0;
    vec2 wv = 1.0 - abs(sin(position));
//  return length(wv);
    return pow(1.0 - pow(wv.x * wv.y, 0.65), 4.0);
}

float height(vec2 position, float time)
{
    return wave((position - time) * 0.4 ) * 0.3 + 
           wave((position - time) * 0.3 ) * 0.3 +
           wave((position + time) * 0.5 ) * 0.2 +
           wave((position - time) * 0.6 ) * 0.2;
}

void vertex() {
    // save position for fragment, conver Plane coordinate from [-1, 1] to [0, 1]
    tex_position = (VERTEX.xyz + 1.0) / 2.0;
    
    float edge = 1.0 - smoothstep(0.0, 1.2, length(VERTEX.xz));
    VERTEX.y += height(VERTEX.xz, TIME) ;//* edge;
}

void fragment()  
{
    float fresnel = sqrt(1.0 - dot(NORMAL, VIEW));
    RIM = 0.2;
    METALLIC = 1.0;
    ROUGHNESS = 0.01 * (1.0 - fresnel);
    ALBEDO = vec3(0.1, 0.3, 0.5) + (0.8 * fresnel);
    NORMALMAP = texture(normalmap, tex_position.xz).xyz;
    
//  ALBEDO = vec3(VERTEX); // View space coordinate
}
```

概括地看，Godot 所做的是为用户提供一组可以选择设置的参数，AO、SSS_Strength、RIM 等等对应各种复杂效果，
环境光遮挡 Ambient Occlusion, 亚表面散射 SubSurface Scattering, 边缘照明 Rim Lighting。
当脚本不使用这些功能代码时，着色器不会产生额外功能的开销。这使得用户可以轻松地使用复杂且正确的 PBR 着色，
而无需编写复杂的着色器。

当然，Godot 还允许忽略所有这些参数并完全自定义着色器。例如 unshaded 渲染模式就可以关闭光照系统。

    render_mode diffuse_toon, specular_toon;

多个渲染模式可堆叠使用，例如，使用卡通着色而非 PBR 着色，就将漫反射模式和镜面反射模式设置为卡通。

Godot 4.x 中，给 3D 着色器引入了多个常量，除了原有的 TIME，还有圆周率等 Global built-ins:

+-------------------+----------------------------------------------------------------------------------------+
| Built-in          | Description                                                                            |
+===================+========================================================================================+
| in float **TIME** | Global time, in seconds.                                                               |
| in float **PI**   | A ``PI`` constant (``3.141592``).                                                      |
|                   | A ration of circle's circumference to its diameter and amount of radians in half turn. |
| in float **TAU**  | A ``TAU`` constant (``6.283185``).                                                     |
|                   | An equivalent of ``PI * 2`` and amount of radians in full turn.                        |
| in float **E**    | A ``E`` constant (``2.718281``). Euler's number and a base of the natural logarithm.   |
+-------------------+----------------------------------------------------------------------------------------+


另外，3D 着色器除了 vertex() 和 fragment()，还多了一个 light() 着色处理函数，在这个处理函数中，
可以使用以下内置变量 Light built-ins：

+-----------------------------------+----------------------------------------------------+
| Built-in                          | Description                                        |
+===================================+====================================================+
| in vec2 **VIEWPORT_SIZE**         | Size of viewport (in pixels).                      |
| in vec4 **FRAGCOORD**             | Coordinate of pixel center in screen space.        |
| in mat4 **MODEL_MATRIX**          | Model space to world space transform.              |
| in mat4 **INV_VIEW_MATRIX**       | View space to world space transform.               |
| in mat4 **VIEW_MATRIX**           | World space to view space transform.               |
| in mat4 **PROJECTION_MATRIX**     | View space to clip space transform.                |
| in mat4 **INV_PROJECTION_MATRIX** | Clip space to view space transform.                |
| in vec3 **NORMAL**                | Normal vector, in view space.                      |
| in vec2 **UV**                    | UV that comes from vertex function.                |
| in vec2 **UV2**                   | UV2 that comes from vertex function.               |
| in vec3 **VIEW**                  | View vector, in view space.                        |
| in vec3 **LIGHT**                 | Light Vector, in view space.                       |
| in vec3 **LIGHT_COLOR**           | Color of light multiplied by energy.               |
| in float **ATTENUATION**          | Attenuation based on distance or shadow.           |
| in vec3 **ALBEDO**                | Base albedo.                                       |
| in vec3 **BACKLIGHT**             |                                                    |
| in float **METALLIC**             | Metallic.                                          |
| in float **ROUGHNESS**            | Roughness.                                         |
| in bool **OUTPUT_IS_SRGB**        | ``true`` when calculations happen in sRGB color    |
| out vec3 **DIFFUSE_LIGHT**        | Diffuse light result.                              |
| out vec3 **SPECULAR_LIGHT**       | Specular light result.                             |
| out float **ALPHA**               | Alpha (0..1); if written to, the material will go  |
+-----------------------------------+----------------------------------------------------+


### 🟢🔵 Orbit Shader

以下是一个轨道环绕着色器，只是简单地使用三角函数产生圆形、椭圆形轨道，并将轨道上的点的位置设置到顶点
着色器的顶点坐标上，使用顶点位置坐标按轨道移动。然后，再根据顶点的坐标变化，以使用顶点坐标在 y 轴方向
上产生扰动，扰动来源于坐标的 XY 两轴的变化值。所以，顶点无论在其中任意一轴上的移动，扰动都会所反映。
然后输出给后续的着色器处理，如片段着色器。

```c
shader_type canvas_item;
// Here are the available types:
//shader_type spatial;     // - for 3D rendering.
//shader_type canvas_item; // - for 2D rendering.
//shader_type particles;   // - for particle systems.

uniform vec2 orbit = vec2(1.0, 1.0);

void vertex() {
  // Animate Sprite moving in a orbit around its location
  VERTEX += vec2(cos(TIME)*orbit.x, sin(TIME)*orbit.y);
  VERTEX.y += 3.0*cos(VERTEX.x) * sin(VERTEX.y);
}

void fragment(){
  COLOR = texture(TEXTURE, UV); //read from texture
}
```

### 🟢🔵 Pixlate Shader

以是一个具有实用功能的着色器 Pixelate Shader，功能说明如下：

Uniform 定义了外部转入参数 amount，它指定了一个像素重采样量。根据 p 坐标计算表达式，amount 先
会对 UV 进行缩放再取整后除以自身，参数值越大，UV 坐标相对就显得小，即 UV 变化就更精细，输出像素
就越接近原图。当 amount 等于原图大小时，就等于没有像素化效果。当 amount 越小，UV 的变化影响就显得
强烈，也就是每扫描下一个像素时，UV 坐标的变化就可以导致更多的原像素被忽略了，并且使用一些重复的像素，
最后，图像效果出来的就是粗糙的像素化效果。

```c
shader_type canvas_item;

uniform int amount = 9;

void fragment()
{
    vec2 p = round(UV * float(amount)) / float(amount);
    
    vec4 text = texture(TEXTURE, p);
    
    COLOR = text;
}
```

### 🟢🔵 Circle Art Shader

以下是一个通过圆点绘画图形的着色器，通过调整风格参数 grid 将整个图形分成方块，再设置圆点半径，使
图形中位置处理圆内的部分绘画出来，就像一个圆形图章在打点绘画。

分割图形后，使用 **mod()** 函数对 UV 坐标进行分段处理，分段后 UV 坐标重新映射到 [0.0, 1.0]
这个区间上，以方便后续的计算。圆点半径 radius 是相对于分块中心的位置，所以在求当前 UV 坐标到圆心
距离时，先减去 0.5 偏移常量。

为了添加镂空效果，定义为布尔值 stencil 变量，通过类型转换可以将 bool 转换为整数，true false 值
分别对应 1 和 0。这里取巧的点在于，通过乘数 -2 和加数 1 将布尔值转换为用作符号的值，1 和 -1。

最后，利用距离函数的数据设置 Alpha 通道，隐藏掉不需要显示的部分，即得到类似 Dot Plot 的圆点图。

```c
shader_type canvas_item;
render_mode blend_mix;

uniform float radius:hint_range(0.0, 1.0, 0.01) = 0.4;
uniform float grid:hint_range(0.0, 100.0) = 10.0;
uniform float sharp:hint_range(0.0, 1.0, 0.01) = 0.50;
uniform bool stencil = false;
 
void fragment()
{
    COLOR = texture(TEXTURE, UV);
    // cast bool to 1.0 or -1.0
    float sign = float(int(stencil) * - 2 + 1);
    float circles = length(mod(UV, 1.0 / grid) * grid - 0.5) - radius;
    COLOR.a = 1.0 - float(stencil) - sign * clamp(sharp * 100.0 * circles, 0.0, 1.0);
}
```

注意 clamp 函数的参数顺序，和 smoothstep 的不同，它将范围值 [min, max] 放在后面：

```c
// Clamp ``x`` between ``min`` and ``max`` (inclusive).
vec_type clamp (vec_type x, vec_type min, vec_type max)
```


### 🟢🔵 Circle SDF Shader
- https://iquilezles.org/articles/distfunctions/
- https://iquilezles.org/articles/distfunctions2d/

以下实现一个带有一点光属性地绘制圆形的着色器，场景中只有一个圆形，使用 SDF(Signed Distance Functions) 
有向距离场来定义它，这是一种用距离方程来表示几何体的方式。空间中到圆心的距离等于半径的点，就是圆形表面。
圆形内部，距离值为负，外部距离值为正。

绘画时，只需要在圆形内上色，而圆形外不需要颜色，通过 Alpha 置零，使其透明化。

利用 **min()** 和 **max()** 函数可以过滤数据，将符合条件的值，按大、或小的规则过滤出来，使用钳制
函数 **clamp()** 可以实现将输入值约束在指定区间。

这些函数有时可以换着使用，可以达到相似的效果，例如，以下使用 clamp 和平滑插值函数 smoothstep 将
Alpha 通道的值约束在 [0.0, 1.0] 区间。当然，它们有所差别，clamp 会将超出范围的值复位到有效区间。

而三次平滑插值函数 smoothstep，结果返回 0.0 if x ≤ edge0，或者返回 1.0 if x ≥ edge1，而当
edge0 < x < edge1，使用 smooth Hermite interpolation 将结果平滑在 [0.0, 1.0] 区间。

平滑插值是与 clamp 最大的差别所在，插值会按比例改变输入数据，使其平滑分布到 [0.0, 1.0] 区间。
而 clamp 则不会，它只将超出范围的值分别归位为区间两端的值。

注意，edge0 ≥ edge1 时，无定义。

```c
    // Hermite interpolate between ``edge0`` and ``edge1`` by ``x``.
    // vec_type smoothstep (vec_type edge0, vec_type edge1, vec_type x)
    // vec_type smoothstep (float edge0, float edge1, vec_type x)

    genFType t;
    t = clamp ((x - edge0) / (edge1 - edge0), 0, 1);
    return t * t * (3 - 2 * t);
```

着色器中，根据半径设置，距离场中最大的距离的 ±0.5，将值作为 RGBA 直接赋值到片段着色器的输出，并没有
达到 RGBA 的最大动态范围。通过 clamp 或 smoothstep 可以重新将 [0.0, 0.5] 的值映射到 [0.0, 1.0]。

这个着色器中引入了点光源（Point Light）的概念，原理很像一个灯泡，从灯泡的钨丝向四面八方发出光。
然而，为了性能考虑，点光源被简化为从空间中的一个点均匀地向各个方向发射光。尽管这里有太多的缺陷，比如，
没有处理好光的传播路径与光强的关系，没有考虑衰减半径（Attenuation Radius），也没有考虑物体呈现
的颜色受光源和物体本身材质的影响等等，也没有考虑受光物体是平面或者是球面。只是简单地根据光源的距离，
线性计算颜色的亮度值，然后再叠加光源颜色。

更高级的光照效果还有，皮肤上的次表面散射（Subsurface scattering)，到处可见的 Fresnel 菲涅尔效应。

但是，这一切都不影响这个简单的着色器作为一个初学者的最直观的学习材料。

```c
shader_type canvas_item;

uniform float radius = 0.5;
uniform vec2  center = vec2(0.5, 0.5);
uniform vec2  light_position  = vec2(0.5, 0.0);
uniform vec3  light_color  = vec3(0.9, 0.2, 0.2);
uniform float light_energy  = 0.85;

float sdf_circle(vec2 p, float r)
{
    return length(p - center) - r;
}

void fragment()
{
    float dis = sdf_circle(UV, radius);
    float circle = max(0.0, -min(0.0, dis));
    COLOR = vec4(0.0) + circle;
    COLOR.a = clamp(0.0, 1.0, COLOR.a * 100.0);
    //COLOR.a = smoothstep(0, 0.1, COLOR.a);
    
    float lsdf = 1.0 - length(light_position - UV);
    float light = smoothstep(0, 1.0, lsdf * light_energy);
    COLOR.rgb = light_color * light;
}
```

注意：Godot 中着色器的 uniform 变量是可以在属性探测器面板中设置值的，并且会将值保留在工程文件中，
再次加载是会直接读取工程中的保留值，而不能通过修改代码来改变取值。这时可能需要将着色器材质清理掉，再
重新关联着色器，这样才能使着色器中的 uniform 初始化赋值生效。




### 🟢🔵 Convolution Shader 卷积边缘检测算法
- [从图(Graph)到图卷积(Graph Convolution)：漫谈图神经网络模型](https://www.cnblogs.com/SivilTaram/p/graph_neural_network_2.html)
- [卷积变体](https://zhuanlan.zhihu.com/p/393200454)

图像处理中，边缘检测是最基本的技术，图像可以通过边缘的分区后，再根据不同区域进行差异化的处理。边缘
可以被检测出来，并突出显示，是因为它与四周存在明显的差异，关键就是图像的像素差异。

判断边缘的依据可以是颜色、亮度、纹理等变化差异的大小，或者说强度，就是判断相邻像素之间的梯度 gradient。
算法中，出于性能考虑也可以使用绝对值来替代开根号运算。

根据应用场合不同，围绕差异的边缘检测的方法有多种：

- 2D 图像边缘检测技术可以使用卷积（convolution）；
- 3D 物体的边缘检测，可以使用 3D 场景中的深度信息，或者使用表面法线向量；

卷积是一种积分变换的数学方法，与傅立叶变换有着密切的联系。在数字信号处理、通信系统、光学系统、神经网络
计算许多方面得到了广泛应用。卷积算法可以应用于许多场景，轻松实现模糊、边缘检测、浮雕等滤镜效果。

在教科书上，卷积的定义通常是用函数的乘积组合定义的，而在图形处理上，可以用意图形象直观地展示：

![Visual 2D Convolution](https://images.cnblogs.com/cnblogs_com/SivilTaram/1510485/o_image-13-conv-cnn.gif)

图中左侧可以看作是图像的像素值，中间是一个计算方法中设置的权重值，右侧是计算结果。中间是一个采样矩阵，
也叫卷积核 kernel，通常是一个 NxN 的矩阵，并且 N 一般为奇数，矩阵中的每个值就是权重**weight**。
进行卷积处理的过程就是，将每个输入值都卷积核相乘，并得到一对应的输出值。

因为，这种卷积运算的结果相当对原图像重新采样，作用像电路中的滤波器一样，可以实现图像的模糊、锐化效果，
即分别过滤掉了高频、低频的数值变化，所以也叫做 filter。图像的高低频表现在视觉上，就是颜色变化差别大
即为高频，锐化的图像即为典型高频。变化差别小即为低频，看起来平滑，模糊就是典型的低频。

从信号角度理解，卷积可以定义为一个函数（蓝色单位响应方波）在一个输入信号（红色方波）上的加权输出，
即将输入信号从方波转变为三角波，卷积结果就是将方波边缘（高频）转换为三角波的缓慢变化（低频）。

![Square to triangle](https://pic3.zhimg.com/v2-a5b5870ab0a4030684c7f5796e3b83a6_b.webp)

例如，采用 3x3 的平滑过滤卷积核可以实现一定的模糊效果，输出值为采样区域的平均值，效果类似高斯模糊。
卷积核中心格子对应当前的像素，其它周边的每个格式都对应偏移到输入像素的周边，并根据卷积核中设置的权重
与输入值相乘，再求和获取到的值即为新图像像素值。

使用卷积进行边缘检测时，卷积核设置的权重值也称边缘检测算子。卷积虽然名字中有“卷”的含义，但是它的内涵
主要在于连续、积的层面上。


在 3D 场景中，物体的每个坐标都会有一个特殊的值 Z，也就是深度。深度信息可以用来区分物体位置前后关系，
即相互之间的遮盖关系。引擎一般都有提供深度信息，当然也可以通过物体表面的坐标计算到相对某点的距离得到。
如果一个位置的深度值和它四周的深度值产生了差异，那说明这个位置可能就是我们想要找的边缘。


法线就是垂直于物体表面的单位向量，通过它可以判断表面是否发生较大的变化，如果两点法线的点积为 0 就
表示两点所在的表面是互相垂直的，之间相差较大，相反，值越大表明越平坦，向量点积的结果可以判断边缘。
还可以有另一种思路：法线与视角间的夹角。视线与其法线的夹角更接近于垂直，就更可能被认定为边缘的部分。





## 🟡🟠 Physics 物理系统
- [Physics](https://docs.godotengine.org/en/3.5/tutorials/physics/index.html)
- [Godot 平台跳跃游戏教程 - 如何实现攻击判定](https://www.bilibili.com/video/BV1Nt4y1e7yd?p=9)

在游戏中，NPC 或敌人之类的运动可以通过 VisibilityEnabler 来控制，它会在进入玩家视野后才会运动，
通过控制 RigidBody 或 AnimationPlayer 等父节点的 disabled 状态来实现这一效果，或者冻结状态，
通过监听 screen_enterd 或 viewport_enterd 等信号，可以改变其本身的行为。

**VisibilityEnabler** 只能在场景初始化之前添加才会生效，并且保对同一个场景下的节点有影响。如果，只
需要处理相关通知，可以使用父类型 **VisibilityNotifier** 替代。

Godot 4.x 添加了新功能，与旧版本有差别。




## 🟡🟠 Godot AI 有思想的精灵
- [Real Time Navigation (3D)](https://docs.godotengine.org/en/3.6/tutorials/navigation/real_time_navigation_3d.html)
- [3D Navigation](https://github.com/godotengine/godot-demo-projects/tree/master/3d/navigation)
- [Navigation Polygon 2D](https://github.com/godotengine/godot-demo-projects/tree/master/2d/navigation)
- [Grid-based Navigation with Astar](https://github.com/godotengine/godot-demo-projects/tree/master/2d/navigation-astar)
- [Godot导航系统详解:导航基础](https://www.bilibili.com/video/BV1CG411g7P9/)
- [17.游戏引擎Gameplay玩法系统：高级AI | GAMES104-现代游戏引擎：从入门到实践](https://www.bilibili.com/video/BV1iG4y1i78Q/)

Godot 中的 AI 寻路方案大概有以下几种：

- AStar 寻路类，对于自动生成的网格地图非常有用，结合多线程效率也高；
- Navigation2D 导航类，比较方便且实用，但是有较大的局限；
- RayCast2D 射线检测，对路径进行判断，有比较好的解决方案，但是算法复杂；
- 使用大量的 Area2D 对地图可行路径进行判断；



## 🟡🟠 Network Multiplayer 联网游戏
- [High-level multiplayer](https://docs.godotengine.org/en/stable/tutorials/networking/high_level_multiplayer.html)
- [18.网络游戏的架构基础 | GAMES104-现代游戏引擎：从入门到实践](https://www.bilibili.com/video/BV1La411o7kG/)
- [What Every Programmer Needs To Know About Game Networking](https://gafferongames.com/post/what_every_programmer_needs_to_know_about_game_networking/)
- [Making HTTP requests](https://docs.godotengine.org/en/stable/tutorials/networking/http_request_class.html)
- [HTML5 and WebSocket](https://docs.godotengine.org/en/stable/tutorials/networking/websocket.html)
- [HTML5, WebSocket, WebRTC](https://docs.godotengine.org/en/stable/tutorials/networking/webrtc.html)


## 🟡🟠 GDScript MySprite 精灵类派生演示
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
- [Using multiple threads](https://docs.godotengine.org/en/stable/tutorials/performance/threads/using_multiple_threads.html)

Godot 4 GDScript 2.0 Features:

- first-class functions
- lambdas
- new property syntax
- await keyword
- super keyword
- typed arrays
- built-in annotations
- automatically generate documentation

Godot 自带的 GDScript 脚本和 Python 语法非常相似，但是在多线程支持上要好很多。例如，以下使用
Thread 类创建一个线程对象，然后，执行 **start()** 就会在另一个线程种执行 GDScript 函数，调用
线程对象的 **wait_to_finish()** 进入阻塞以等待线程完成工作。

```py
var thread

# The thread will start here.
func _ready():
    thread = Thread.new()
    # Third argument is optional userdata, it can be any variable.
    thread.start(self, "_thread_function", "Wafflecopter")


# Run here and exit.
# The argument is the userdata passed from start().
# If no argument was passed, this one still needs to
# be here and it will be null.
func _thread_function(userdata):
    # Print the userdata ("Wafflecopter")
    print("I'm a thread! Userdata is: ", userdata)

# Thread must be disposed (or "joined"), for portability.
func _exit_tree():
    thread.wait_to_finish()
```

多线程编程中数据竞态问题 Data race 是普遍的，即不同线程在同一时间读写同一份数据可能会导致数据不
完整，出现逻辑错误。而为了保证关键数据的逻辑一致性，通常需要引入各种同步技术，包括各种同步锁，这也
就引入额外的多线程编程问题。例如，线程的死锁问题，一个线程可能先获取到资源，并锁定它，但后续可能某些
异常导致线程卡死，从而又导致了资源被锁死得不到释放。

Godot 提供了两种线程同步工具：

- **Mutex** 互斥锁，通过 lock() 和 unlock() 方法锁定、解锁资源，资源读写操作在两个方法之间；
- **Semaphore** 信号量，通过 wait() 和 post() 方法使用线程挂起或恢复执行；

使用信号量可以按需要运行线程，换句话说，告诉它什么时候工作，当它什么都不做时让它暂停。信号量 **wait()**
函数用来挂起线程，直到一些数据到达。相反，主线程使用信号量 **post()** 表示数据已准备好处理。

信号量起始计数为 0，表示资源没有执行权，wait() 函数后的代码就会被阻塞，阻止其它线程执行直到有数据。

```py
    var counter = 0
    var mutex
    var semaphore
    var thread
    var exit_thread = false


    # The thread will start here.
    func _ready():
        mutex = Mutex.new()
        semaphore = Semaphore.new()
        exit_thread = false

        thread = Thread.new()
        thread.start(self, "_thread_function")


    func _thread_function(userdata):
        while true:
            semaphore.wait() # Wait until posted.

            mutex.lock()
            var should_exit = exit_thread # Protect with Mutex.
            mutex.unlock()

            if should_exit:
                break

            mutex.lock()
            counter += 1 # Increment counter, protect with Mutex.
            mutex.unlock()


    func increment_counter():
        semaphore.post() # Make the thread process.


    func get_counter():
        mutex.lock()
        # Copy counter, protect with Mutex.
        var counter_value = counter
        mutex.unlock()
        return counter_value


    # Thread must be disposed (or "joined"), for portability.
    func _exit_tree():
        # Set exit condition to true.
        mutex.lock()
        exit_thread = true # Protect with Mutex.
        mutex.unlock()

        # Unblock by posting.
        semaphore.post()

        # Wait until it exits.
        thread.wait_to_finish()

        # Print the counter.
        print("Counter is: ", counter)
```

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

GDScript 对象生命周期主要有两个，一般使用 new() 方法进行实例化，并执行类型中的 `_init()` 方法，
参数可以在此传递，另外一个就是 **free()** 销毁实例回收内存。在场景中设置好的所有属性数据，构造过程
中会自动加载，在初始化方法 **_init()** 执行前就设置好。


```py
# MyObject.new("argument pass to _init()")

func _init(arg):
    print("MyObject _init(\"%s\")" % arg)
```



## 🟡🟠 Godot 3.x to 4.x 版本差异
- godot-docs\development\file_formats\gdscript_grammar.rst
- godot-docs\tutorials\scripting\gdscript\gdscript_exports.rst
- godot-docs\tutorials\scripting\gdscript\gdscript_basics.rst
- godot-docs\tutorials\scripting\gdscript\gdscript_advanced.rst
- godot-docs/tutorials/editor/upgrading_to_godot_4.rst
- [GDScript documentation comments](https://docs.godotengine.org/en/latest/tutorials/scripting/gdscript/gdscript_documentation_comments.html)
- [Add a Godot 3 to Godot 4 upgrade guide #6393](https://github.com/godotengine/godot-docs/pull/6393/files)

新版本引入了两种新的字面量表达，StringName 和 % ^ 节点路径表达

+--------------------------+----------------------------------------+
| **Literal**              | **Type**                               |
+--------------------------+----------------------------------------+
| ``45``                   | Base 10 integer                        |
| ``0x8f51``               | Base 16 (hexadecimal) integer          |
| ``0b101010``             | Base 2 (binary) integer                |
| ``3.14``, ``58.1e-10``   | Floating-point number (real)           |
| ``"Hello"``, ``"Hi"``    | Strings                                |
| ``"""Hello"""``          | Multiline string                       |
| ``&"name"``              | :ref:`StringName <class_StringName>`   |
| ``^"Node/Label"``        | :ref:`NodePath <class_NodePath>`       |
| ``$NodePath``            | Shorthand for ``get_node("NodePath")`` |
+--------------------------+----------------------------------------+

内存管理上，一般使用 free() 或 queue_free() 来释放节点及其子节点，另外，使用弱引用 weakref()
可以避免循环引用而导致的内存泄露问题。

```py
    extends Node

    var my_node_ref

    func _ready():
        my_node_ref = weakref(get_node("MyNode"))

    func _this_is_called_later():
        var my_node = my_node_ref.get_ref()
        if my_node:
            my_node.do_something()
```

类形继承上，引入了 `super` 关键字用于访问父类构造函数，或者成员。

变量导出 @export 语法变化，旧版使用圆括号指示导出类型及参数，新版导出类型自动识别，或者关键字后缀表明。

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


```py
    # (optional) class definition:
    class_name MyClass
 
    # Inheritance:
    extends BaseClass
 
    # (optional) icon to show in the editor dialogs:
    @icon("res://path/to/optional/icon.svg")
```

属性（Properties）的定义语法糖变更，旧版本属性使用 setget 指定属性读写器，新版本借鉴了更简洁的
C# 语法格式，直接在属性定义后使用 ``set`` 和 ``get`` 定义访问器，并且在 setter 或 getter 
中直接访问属性而不会引起循环引用问题。需要设置默认值，可以在默认值后面添加冒号再定义属性访问器。

```py
    var milliseconds: int = 0
    var seconds: int = 123:
        get:
            return milliseconds / 1000
        set(value):
            milliseconds = value * 1000
```

新增加 Lambda functions，定义匿名函数更方便，不必实例化 Callable 类就只可以通过函数创建一个
可调用对象。为了调试目的，可以给匿名函数指定一个名称。匿名函数会捕捉当前局部环境，变量会按值传递，所以
局部变量的后续变动不会反映到匿名函数内：

```py
    var lambda = func(x): print(x)
    lambda.call(42) # Prints "42"

    # Lambda functions can be named for debugging purposes::

    var lambda = func my_lambda(x):
        print(x)

    # Lambda functions capture the local environment. Local variables are passed by value, 
    # so they won't be updated in the lambda if changed in the local function::

    var x = 42
    var my_lambda = func(): print(x)
    my_lambda.call() # Prints "42"
    x = "Hello"
    my_lambda.call() # Prints "42"
```

信号链接处理方法的变化，Callable 可以直接获取类型方法成员而来，也可以和 lambda 表达配合使用。对于
要绑定参数的需求，就直接使用 Callable 对象的 bind() 方法来绑定。

另外，单次触发常量名字变更为 CONNECT_ONE_SHOT，旧版为 CONNECT_ONESHOT。

```py
Error connect(signal: StringName, callable: Callable, flags: int = 0)
void disconnect(signal: StringName, callable: Callable)
bool is_connected(signal: StringName, callable: Callable) const
```

新版本引入 `await` 关键字取代 yield 用于协程的异步编程，Awaiting for signals。例如，以下代码
片断演示等待按钮的按下并释放时才继续运行函数。使用了 await 语句的函数就不是一般的函数，而是协程，调用
协程时同样需要使用 await 关键字。

```py
await self.process_frame
yield(get_tree(), "idle_frame") # 下一帧恢复执行

GDScriptFunctionStateyield(object: Object = null, signal: String = "")


    func wait_confirmation():
        print("Prompting user")
        await $Button.button_up # Waits for the button_up signal from Button node.
        print("User confirmed")
        return true

    func request_confirmation():
        print("Will ask the user")
        var confirmed = await wait_confirmation()
        if confirmed:
            print("User confirmed")
        else:
            print("User cancelled")

    func wrong():
        var confirmed = wait_confirmation() # Will give an error.
```

作为一个不直接添加到场景树的节点类型，CanvasItem 在旧版本中可以在节点脚本中继承，但在 Godot 4.x
中可能引起 Could not find base class "CanvasItem"。

全局空间中 OS 的变动，将窗口相关的 API 调整到 DisplayServer 类型中，以及 Clipboard API：

```py
    # Godot 4
    var id = DisplayServer.window_get_current_screen()
    var wsize = DisplayServer.window_get_size()
    var ssize = DisplayServer.screen_get_size(id)
    var center = (ssize - wsize) / 2
    DisplayServer.window_set_position(center)
    
    # Center window on screen in GDScript 1.0
    var screen_size = OS.get_screen_size(OS.get_current_screen())
    var window_size = OS.get_window_size()
    var centered_pos = (screen_size - window_size) / 2
    OS.set_window_position(centered_pos)
```

其它节点对象名称及 API 调整：

+-----------------------------------------+-------------------------------------------+
| Old name (Godot 3.x)                    | New name (Godot 4)                        |
+=========================================+===========================================+
| AnimatedSprite                          | AnimatedSprite2D                          |
| ARVRCamera                              | XRCamera3D                                |
| ARVRController                          | XRController3D                            |
| ARVRAnchor                              | XRAnchor3D                                |
| ARVRInterface                           | XRInterface                               |
| ARVROrigin                              | XROrigin3D                                |
| ARVRPositionalTracker                   | XRPositionalTracker                       |
| ARVRServer                              | XRServer                                  |
| CubeMesh                                | BoxMesh                                   |
| EditorSpatialGizmo                      | EditorNode3DGizmo                         |
| EditorSpatialGizmoPlugin                | EditorNode3DGizmoPlugin                   |
| GIProbe                                 | VoxelGI                                   |
| GIProbeData                             | VoxelGIData                               |
| GradientTexture                         | GradientTexture1D                         |
| KinematicBody                           | CharacterBody3D                           |
| KinematicBody2D                         | CharacterBody2D                           |
| Light2D                                 | PointLight2D                              |
| LineShape2D                             | WorldBoundaryShape2D                      |
| Listener                                | AudioListener3D                           |
| NavigationMeshInstance                  | NavigationRegion3D                        |
| NavigationPolygonInstance               | NavigationRegion2D                        |
| Navigation2DServer                      | NavigationServer2D                        |
| PanoramaSky                             | Sky                                       |
| Particles                               | GPUParticles3D                            |
| Particles2D                             | GPUParticles2D                            |
| ParticlesMaterial                       | ParticleProcessMaterial                   |
| Physics2DDirectBodyState                | PhysicsDirectBodyState2D                  |
| Physics2DDirectSpaceState               | PhysicsDirectSpaceState2D                 |
| Physics2DServer                         | PhysicsServer2D                           |
| Physics2DShapeQueryParameters           | PhysicsShapeQueryParameters2D             |
| Physics2DTestMotionResult               | PhysicsTestMotionResult2D                 |
| PlaneShape                              | WorldBoundaryShape3D                      |
| Position2D                              | Marker2D                                  |
| Position3D                              | Marker3D                                  |
| ProceduralSky                           | Sky                                       |
| RayShape                                | SeparationRayShape3D                      |
| RayShape2D                              | SeparationRayShape2D                      |
| ShortCut                                | Shortcut                                  |
| Spatial                                 | Node3D                                    |
| Camera                                  | Camera3D                                    |
| SpatialGizmo                            | Node3DGizmo                               |
| SpatialMaterial                         | StandardMaterial3D                        |
| Sprite                                  | Sprite2D                                  |
| StreamTexture                           | CompressedTexture2D                       |
| TextureProgress                         | TextureProgressBar                        |
| VideoPlayer                             | VideoStreamPlayer                         |
| ViewportContainer                       | SubViewportContainer                      |
| Viewport                                | SubViewport                               |
| VisibilityEnabler                       | VisibleOnScreenEnabler3D                  |
| VisibilityNotifier                      | VisibleOnScreenNotifier3D                 |
| VisibilityNotifier2D                    | VisibleOnScreenNotifier2D                 |
| VisibilityNotifier3D                    | VisibleOnScreenNotifier3D                 |
| VisualServer                            | RenderingServer                           |
| VisualShaderNodeScalarConstant          | VisualShaderNodeFloatConstant             |
| VisualShaderNodeScalarFunc              | VisualShaderNodeFloatFunc                 |
| VisualShaderNodeScalarOp                | VisualShaderNodeFloatOp                   |
| VisualShaderNodeScalarClamp             | VisualShaderNodeClamp                     |
| VisualShaderNodeVectorClamp             | VisualShaderNodeClamp                     |
| VisualShaderNodeScalarInterp            | VisualShaderNodeMix                       |
| VisualShaderNodeVectorInterp            | VisualShaderNodeMix                       |
| VisualShaderNodeVectorScalarMix         | VisualShaderNodeMix                       |
| VisualShaderNodeScalarSmoothStep        | VisualShaderNodeSmoothStep                |
| VisualShaderNodeVectorSmoothStep        | VisualShaderNodeSmoothStep                |
| VisualShaderNodeVectorScalarSmoothStep  | VisualShaderNodeSmoothStep                |
| VisualShaderNodeVectorScalarStep        | VisualShaderNodeStep                      |
| VisualShaderNodeScalarSwitch            | VisualShaderNodeSwitch                    |
| VisualShaderNodeScalarTransformMult     | VisualShaderNodeTransformOp               |
| VisualShaderNodeScalarDerivativeFunc    | VisualShaderNodeDerivativeFunc            |
| VisualShaderNodeVectorDerivativeFunc    | VisualShaderNodeDerivativeFunc            |
| VisualShaderNodeBooleanUniform          | VisualShaderNodeBooleanParameter          |
| VisualShaderNodeColorUniform            | VisualShaderNodeColorParameter            |
| VisualShaderNodeScalarUniform           | VisualShaderNodeFloatParameter            |
| VisualShaderNodeCubeMapUniform          | VisualShaderNodeCubeMapParameter          |
| VisualShaderNodeTextureUniform          | VisualShaderNodeTexture2DParameter        |
| VisualShaderNodeTextureUniformTriplanar | VisualShaderNodeTextureParameterTriplanar |
| VisualShaderNodeTransformUniform        | VisualShaderNodeTransformParameter        |
| VisualShaderNodeVec3Uniform             | VisualShaderNodeVec3Parameter             |
| VisualShaderNodeUniform                 | VisualShaderNodeParameter                 |
| VisualShaderNodeUniformRef              | VisualShaderNodeParameterRef              |
| File                                    | FileAccess                                |
| Directory                               | DirAccess                                 |
| SceneTreeTween                          | Tween                                     |
+-----------------------------------------+-------------------------------------------+


|-----------------|-------------------------------------|------------------------------------------|
|      Object     |              Godot 3.x              |                Godot 4.x                 |
|-----------------|-------------------------------------|------------------------------------------|
| CanvasItem      | update()                            | queue_redraw()                           |
| ClassDB         | instance()                          | instantiate()                            |
| PackedScene     | instance()                          | instantiate()                            |
| Object          | property_list_changed_notify()      | notify_property_list_changed()           |
| Control         | rect_min_size                       | custom_minimum_size                      |
|                 | rect_size                           | size                                     |
| Label           | ALIGN_CENTER                        | HORIZONTAL_ALIGNMENT_CENTER              |
| Color           | darkorange                          | DARK_ORANGE                              |
| Engine          | editor_hint                         | is_editor_hint()                         |
| Sprite          | Sprite.rotation_degrees             | Sprite2D.rotation                        |
|-----------------|-------------------------------------|------------------------------------------|
| Theme Overrides | custom_colors/font_color            | theme_override_colors/font_color         |
|                 | custom_colors/font_color_shadow     | theme_override_colors/font_shadow_color  |
|                 | custom_colors/font_outline_modulate | theme_override_colors/font_outline_color |
|                 | custom_constants/shadow_offset_y    | theme_override_constants/shadow_offset_x |
|-----------------|-------------------------------------|------------------------------------------|
| Anchor & Margin | anchor_left & margin_left           | anchors_preset                           |
| Rect Position   | rect_position                       | position                                 |
| Node            | name: String                        | name: StringName                         |
| SceneTree       | idle_frame                          | process_frame                            |
| EditorInterface | get_editor_viewport()               | get_base_control()                       |
| OS              | get_scancode_string                 | get_keycode_string()                     |
|                 |                                     |                                          |
|-----------------|-------------------------------------|------------------------------------------|
| InputEventKey   | scancode                            | keycode                                  |
|                 | physical_scancode                   | physical_keycode                         |
|                 |                                     |                                          |

## 🟡🟠 GDScript Plugins 插件扩展
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

# Auto Refresh inspector property list
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



## 🟡🟠 GDScript grammar 语法规范文档
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

新版本规范变化主要有两处：

```py
    assignmentStmt = subscription ( "=" | "+=" | "-=" | "*=" | "/="
    | "%=" | "&=" | "|=" | "^=" ) expression stmtEnd;

    call
        = (attribute [ "(" [ argList ] ")" ])
        | "." IDENTIFIER "(" [ argList ] ")"
        | "$" ( STRING | IDENTIFIER { '/' IDENTIFIER } );
```


## 🟡🟠 GDScript 1.0 exports
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



## 🟡🟠 GDScript 2.0 exports
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


## 🟡🟠 GPU Gems 1/2/3 系列书籍目录
- [GPU Gems 1](https://developer.nvidia.com/gpugems/gpugems/contributors)
- [GPU Gems 1 Code](https://http.download.nvidia.com/developer/GPU_Gems/CD_Image/GPU_Gems_code.zip)
- [GPU Gems 1 CD Content](https://http.download.nvidia.com/developer/GPU_Gems/CD_Image/Index.html)
- [GPU Gems 2](https://developer.nvidia.com/gpugems/gpugems2/contributors)
- [GPU Gems 2 Code](https://http.download.nvidia.com/developer/GPU_Gems_2/CD/GPU_Gems_2_code.zip)
- [GPU Gems 2 CD Content](https://http.download.nvidia.com/developer/GPU_Gems_2/CD/Index.html)
- [GPU Gems 3](https://developer.nvidia.com/gpugems/gpugems3/contributors)
- [GPU Gems 3 Code](https://http.download.nvidia.com/developer/GPU_Gems_3/CD/GPU_Gems_3_code.zip)
- [GPU Gems 3 CD Content](https://http.download.nvidia.com/developer/GPU_Gems_3/CD/)

GPU Gems 1 contents

- [Contributors](https://developer.nvidia.com/gpugems/gpugems/contributors)
- [Copyright](https://developer.nvidia.com/gpugems/gpugems/copyright)
- [Foreword](https://developer.nvidia.com/gpugems/gpugems/foreword)
- [Part I: Natural Effects](https://developer.nvidia.com/gpugems/gpugems/part-i-natural-effects)
    - [Chapter 1. Effective Water Simulation from Physical Models](https://developer.nvidia.com/gpugems/gpugems/part-i-natural-effects/chapter-1-effective-water-simulation-physical-models)
    - [Chapter 2. Rendering Water Caustics](https://developer.nvidia.com/gpugems/gpugems/part-i-natural-effects/chapter-2-rendering-water-caustics)
    - [Chapter 3. Skin in the "Dawn" Demo](https://developer.nvidia.com/gpugems/gpugems/part-i-natural-effects/chapter-3-skin-dawn-demo)
    - [Chapter 4. Animation in the "Dawn" Demo](https://developer.nvidia.com/gpugems/gpugems/part-i-natural-effects/chapter-4-animation-dawn-demo)
    - [Chapter 5. Implementing Improved Perlin Noise](https://developer.nvidia.com/gpugems/gpugems/part-i-natural-effects/chapter-5-implementing-improved-perlin-noise)
    - [Chapter 6. Fire in the "Vulcan" Demo](https://developer.nvidia.com/gpugems/gpugems/part-i-natural-effects/chapter-6-fire-vulcan-demo)
    - [Chapter 7. Rendering Countless Blades of Waving Grass](https://developer.nvidia.com/gpugems/gpugems/part-i-natural-effects/chapter-7-rendering-countless-blades-waving-grass)
    - [Chapter 8. Simulating Diffraction](https://developer.nvidia.com/gpugems/gpugems/part-i-natural-effects/chapter-8-simulating-diffraction)
- [Part II: Lighting and Shadows](https://developer.nvidia.com/gpugems/gpugems/part-ii-lighting-and-shadows)
    - [Chapter 9. Efficient Shadow Volume Rendering](https://developer.nvidia.com/gpugems/gpugems/part-ii-lighting-and-shadows/chapter-9-efficient-shadow-volume-rendering)
    - [Chapter 10. Cinematic Lighting](https://developer.nvidia.com/gpugems/gpugems/part-ii-lighting-and-shadows/chapter-10-cinematic-lighting)
    - [Chapter 11. Shadow Map Antialiasing](https://developer.nvidia.com/gpugems/gpugems/part-ii-lighting-and-shadows/chapter-11-shadow-map-antialiasing)
    - [Chapter 12. Omnidirectional Shadow Mapping](https://developer.nvidia.com/gpugems/gpugems/part-ii-lighting-and-shadows/chapter-12-omnidirectional-shadow-mapping)
    - [Chapter 13. Generating Soft Shadows Using Occlusion Interval Maps](https://developer.nvidia.com/gpugems/gpugems/part-ii-lighting-and-shadows/chapter-13-generating-soft-shadows-using-occlusion)
    - [Chapter 14. Perspective Shadow Maps: Care and Feeding](https://developer.nvidia.com/gpugems/gpugems/part-ii-lighting-and-shadows/chapter-14-perspective-shadow-maps-care-and-feeding)
    - [Chapter 15. Managing Visibility for Per-Pixel Lighting](https://developer.nvidia.com/gpugems/gpugems/part-ii-lighting-and-shadows/chapter-15-managing-visibility-pixel-lighting)
- [Part III: Materials](https://developer.nvidia.com/gpugems/gpugems/part-iii-materials)
    - [Chapter 16. Real-Time Approximations to Subsurface Scattering](https://developer.nvidia.com/gpugems/gpugems/part-iii-materials/chapter-16-real-time-approximations-subsurface-scattering)
    - [Chapter 17. Ambient Occlusion](https://developer.nvidia.com/gpugems/gpugems/part-iii-materials/chapter-17-ambient-occlusion)
    - [Chapter 18. Spatial BRDFs](https://developer.nvidia.com/gpugems/gpugems/part-iii-materials/chapter-18-spatial-brdfs)
    - [Chapter 19. Image-Based Lighting](https://developer.nvidia.com/gpugems/gpugems/part-iii-materials/chapter-19-image-based-lighting)
    - [Chapter 20. Texture Bombing](https://developer.nvidia.com/gpugems/gpugems/part-iii-materials/chapter-20-texture-bombing)
- [Part IV: Image Processing](https://developer.nvidia.com/gpugems/gpugems/part-iv-image-processing)
    - [Chapter 21. Real-Time Glow](https://developer.nvidia.com/gpugems/gpugems/part-iv-image-processing/chapter-21-real-time-glow)
    - [Chapter 22. Color Controls](https://developer.nvidia.com/gpugems/gpugems/part-iv-image-processing/chapter-22-color-controls)
    - [Chapter 23. Depth of Field: A Survey of Techniques](https://developer.nvidia.com/gpugems/gpugems/part-iv-image-processing/chapter-23-depth-field-survey-techniques)
    - [Chapter 24. High-Quality Filtering](https://developer.nvidia.com/gpugems/gpugems/part-iv-image-processing/chapter-24-high-quality-filtering)
    - [Chapter 25. Fast Filter-Width Estimates with Texture Maps](https://developer.nvidia.com/gpugems/gpugems/part-iv-image-processing/chapter-25-fast-filter-width-estimates-texture-maps)
    - [Chapter 26. The OpenEXR Image File Format](https://developer.nvidia.com/gpugems/gpugems/part-iv-image-processing/chapter-26-openexr-image-file-format)
    - [Chapter 27. A Framework for Image Processing](https://developer.nvidia.com/gpugems/gpugems/part-iv-image-processing/chapter-27-framework-image-processing)
- [Part V: Performance and Practicalities](https://developer.nvidia.com/gpugems/gpugems/part-v-performance-and-practicalities)
    - [Chapter 28. Graphics Pipeline Performance](https://developer.nvidia.com/gpugems/gpugems/part-v-performance-and-practicalities/chapter-28-graphics-pipeline-performance)
    - [Chapter 29. Efficient Occlusion Culling](https://developer.nvidia.com/gpugems/gpugems/part-v-performance-and-practicalities/chapter-29-efficient-occlusion-culling)
    - [Chapter 30. The Design of FX Composer](https://developer.nvidia.com/gpugems/gpugems/part-v-performance-and-practicalities/chapter-30-design-fx-composer)
    - [Chapter 31. Using FX Composer](https://developer.nvidia.com/gpugems/gpugems/part-v-performance-and-practicalities/chapter-31-using-fx-composer)
    - [Chapter 32. An Introduction to Shader Interfaces](https://developer.nvidia.com/gpugems/gpugems/part-v-performance-and-practicalities/chapter-32-introduction-shader-interfaces)
    - [Chapter 33. Converting Production RenderMan Shaders to Real-Time](https://developer.nvidia.com/gpugems/gpugems/part-v-performance-and-practicalities/chapter-33-converting-production-renderman)
    - [Chapter 34. Integrating Hardware Shading into Cinema 4D](https://developer.nvidia.com/gpugems/gpugems/part-v-performance-and-practicalities/chapter-34-integrating-hardware-shading-cinema)
    - [Chapter 35. Leveraging High-Quality Software Rendering Effects in Real-Time Applications](https://developer.nvidia.com/gpugems/gpugems/part-v-performance-and-practicalities/chapter-35-leveraging-high-quality-software)
    - [Chapter 36. Integrating Shaders into Applications](https://developer.nvidia.com/gpugems/gpugems/part-v-performance-and-practicalities/chapter-36-integrating-shaders-applications)
- [Part VI: Beyond Triangles](https://developer.nvidia.com/gpugems/gpugems/part-vi-beyond-triangles)
  - [Appendix](https://developer.nvidia.com/gpugems/gpugems/part-vi-beyond-triangles/appendix)
  - [Chapter 37. A Toolkit for Computation on GPUs](https://developer.nvidia.com/gpugems/gpugems/part-vi-beyond-triangles/chapter-37-toolkit-computation-gpus)
  - [Chapter 38. Fast Fluid Dynamics Simulation on the GPU](https://developer.nvidia.com/gpugems/gpugems/part-vi-beyond-triangles/chapter-38-fast-fluid-dynamics-simulation-gpu)
  - [Chapter 39. Volume Rendering Techniques](https://developer.nvidia.com/gpugems/gpugems/part-vi-beyond-triangles/chapter-39-volume-rendering-techniques)
  - [Chapter 40. Applying Real-Time Shading to 3D Ultrasound Visualization](https://developer.nvidia.com/gpugems/gpugems/part-vi-beyond-triangles/chapter-40-applying-real-time-shading-3d-ultrasound)
  - [Chapter 41. Real-Time Stereograms](https://developer.nvidia.com/gpugems/gpugems/part-vi-beyond-triangles/chapter-41-real-time-stereograms)
  - [Chapter 42. Deformers](https://developer.nvidia.com/gpugems/gpugems/part-vi-beyond-triangles/chapter-42-deformers)
- [Preface](https://developer.nvidia.com/gpugems/gpugems/preface)


GPU Gems 2 contents


- [Copyright](https://developer.nvidia.com/gpugems/gpugems2/copyright)
- [Inside Back Cover](https://developer.nvidia.com/gpugems/gpugems2/inside-back-cover)
- [Inside Front Cover](https://developer.nvidia.com/gpugems/gpugems2/inside-front-cover)
- [Part I: Geometric Complexity](https://developer.nvidia.com/gpugems/gpugems2/part-i-geometric-complexity)
    - [Chapter 1. Toward Photorealism in Virtual Botany](https://developer.nvidia.com/gpugems/gpugems2/part-i-geometric-complexity/chapter-1-toward-photorealism-virtual-botany)
    - [Chapter 2. Terrain Rendering Using GPU-Based Geometry Clipmaps](https://developer.nvidia.com/gpugems/gpugems2/part-i-geometric-complexity/chapter-2-terrain-rendering-using-gpu-based-geometry)
    - [Chapter 3. Inside Geometry Instancing](https://developer.nvidia.com/gpugems/gpugems2/part-i-geometric-complexity/chapter-3-inside-geometry-instancing)
    - [Chapter 4. Segment Buffering](https://developer.nvidia.com/gpugems/gpugems2/part-i-geometric-complexity/chapter-4-segment-buffering)
    - [Chapter 5. Optimizing Resource Management with Multistreaming](https://developer.nvidia.com/gpugems/gpugems2/part-i-geometric-complexity/chapter-5-optimizing-resource-management-multistreaming)
    - [Chapter 6. Hardware Occlusion Queries Made Useful](https://developer.nvidia.com/gpugems/gpugems2/part-i-geometric-complexity/chapter-6-hardware-occlusion-queries-made-useful)
    - [Chapter 7. Adaptive Tessellation of Subdivision Surfaces with Displacement Mapping](https://developer.nvidia.com/gpugems/gpugems2/part-i-geometric-complexity/chapter-7-adaptive-tessellation-subdivision-surfaces)
    - [Chapter 8. Per-Pixel Displacement Mapping with Distance Functions](https://developer.nvidia.com/gpugems/gpugems2/part-i-geometric-complexity/chapter-8-pixel-displacement-mapping-distance-functions)
- [Part II: Shading, Lighting, and Shadows](https://developer.nvidia.com/gpugems/gpugems2/part-ii-shading-lighting-and-shadows)
    - [Chapter 9. Deferred Shading in S.T.A.L.K.E.R.](https://developer.nvidia.com/gpugems/gpugems2/part-ii-shading-lighting-and-shadows/chapter-9-deferred-shading-stalker)
    - [Chapter 10. Real-Time Computation of Dynamic Irradiance Environment Maps](https://developer.nvidia.com/gpugems/gpugems2/part-ii-shading-lighting-and-shadows/chapter-10-real-time-computation-dynamic)
    - [Chapter 11. Approximate Bidirectional Texture Functions](https://developer.nvidia.com/gpugems/gpugems2/part-ii-shading-lighting-and-shadows/chapter-11-approximate-bidirectional-texture)
    - [Chapter 12. Tile-Based Texture Mapping](https://developer.nvidia.com/gpugems/gpugems2/part-ii-shading-lighting-and-shadows/chapter-12-tile-based-texture-mapping)
    - [Chapter 13. Implementing the mental images Phenomena Renderer on the GPU](https://developer.nvidia.com/gpugems/gpugems2/part-ii-shading-lighting-and-shadows/chapter-13-implementing-mental-images)
    - [Chapter 14. Dynamic Ambient Occlusion and Indirect Lighting](https://developer.nvidia.com/gpugems/gpugems2/part-ii-shading-lighting-and-shadows/chapter-14-dynamic-ambient-occlusion-and)
    - [Chapter 15. Blueprint Rendering and "Sketchy Drawings"](https://developer.nvidia.com/gpugems/gpugems2/part-ii-shading-lighting-and-shadows/chapter-15-blueprint-rendering-and-sketchy)
    - [Chapter 16. Accurate Atmospheric Scattering](https://developer.nvidia.com/gpugems/gpugems2/part-ii-shading-lighting-and-shadows/chapter-16-accurate-atmospheric-scattering)
    - [Chapter 17. Efficient Soft-Edged Shadows Using Pixel Shader Branching](https://developer.nvidia.com/gpugems/gpugems2/part-ii-shading-lighting-and-shadows/chapter-17-efficient-soft-edged-shadows-using)
    - [Chapter 18. Using Vertex Texture Displacement for Realistic Water Rendering](https://developer.nvidia.com/gpugems/gpugems2/part-ii-shading-lighting-and-shadows/chapter-18-using-vertex-texture-displacement)
    - [Chapter 19. Generic Refraction Simulation](https://developer.nvidia.com/gpugems/gpugems2/part-ii-shading-lighting-and-shadows/chapter-19-generic-refraction-simulation)
- [Part III: High-Quality Rendering](https://developer.nvidia.com/gpugems/gpugems2/part-iii-high-quality-rendering)
    - [Chapter 20. Fast Third-Order Texture Filtering](https://developer.nvidia.com/gpugems/gpugems2/part-iii-high-quality-rendering/chapter-20-fast-third-order-texture-filtering)
    - [Chapter 21. High-Quality Antialiased Rasterization](https://developer.nvidia.com/gpugems/gpugems2/part-iii-high-quality-rendering/chapter-21-high-quality-antialiased-rasterization)
    - [Chapter 22. Fast Prefiltered Lines](https://developer.nvidia.com/gpugems/gpugems2/part-iii-high-quality-rendering/chapter-22-fast-prefiltered-lines)
    - [Chapter 23. Hair Animation and Rendering in the Nalu Demo](https://developer.nvidia.com/gpugems/gpugems2/part-iii-high-quality-rendering/chapter-23-hair-animation-and-rendering-nalu-demo)
    - [Chapter 24. Using Lookup Tables to Accelerate Color Transformations](https://developer.nvidia.com/gpugems/gpugems2/part-iii-high-quality-rendering/chapter-24-using-lookup-tables-accelerate-color)
    - [Chapter 25. GPU Image Processing in Apple's Motion](https://developer.nvidia.com/gpugems/gpugems2/part-iii-high-quality-rendering/chapter-25-gpu-image-processing-apples-motion)
    - [Chapter 26. Implementing Improved Perlin Noise](https://developer.nvidia.com/gpugems/gpugems2/part-iii-high-quality-rendering/chapter-26-implementing-improved-perlin-noise)
    - [Chapter 27. Advanced High-Quality Filtering](https://developer.nvidia.com/gpugems/gpugems2/part-iii-high-quality-rendering/chapter-27-advanced-high-quality-filtering)
    - [Chapter 28. Mipmap-Level Measurement](https://developer.nvidia.com/gpugems/gpugems2/part-iii-high-quality-rendering/chapter-28-mipmap-level-measurement)
- [Part IV: General-Purpose Computation on GPUS: A Primer](https://developer.nvidia.com/gpugems/gpugems2/part-iv-general-purpose-computation-gpus-primer)
    - [Chapter 29. Streaming Architectures and Technology Trends](https://developer.nvidia.com/gpugems/gpugems2/part-iv-general-purpose-computation-gpus-primer/chapter-29-streaming-architectures)
    - [Chapter 30. The GeForce 6 Series GPU Architecture](https://developer.nvidia.com/gpugems/gpugems2/part-iv-general-purpose-computation-gpus-primer/chapter-30-geforce-6-series-gpu)
    - [Chapter 31. Mapping Computational Concepts to GPUs](https://developer.nvidia.com/gpugems/gpugems2/part-iv-general-purpose-computation-gpus-primer/chapter-31-mapping-computational)
    - [Chapter 32. Taking the Plunge into GPU Computing](https://developer.nvidia.com/gpugems/gpugems2/part-iv-general-purpose-computation-gpus-primer/chapter-32-taking-plunge-gpu)
    - [Chapter 33. Implementing Efficient Parallel Data Structures on GPUs](https://developer.nvidia.com/gpugems/gpugems2/part-iv-general-purpose-computation-gpus-primer/chapter-33-implementing-efficient)
    - [Chapter 34. GPU Flow-Control Idioms](https://developer.nvidia.com/gpugems/gpugems2/part-iv-general-purpose-computation-gpus-primer/chapter-34-gpu-flow-control-idioms)
    - [Chapter 35. GPU Program Optimization](https://developer.nvidia.com/gpugems/gpugems2/part-iv-general-purpose-computation-gpus-primer/chapter-35-gpu-program-optimization)
    - [Chapter 36. Stream Reduction Operations for GPGPU Applications](https://developer.nvidia.com/gpugems/gpugems2/part-iv-general-purpose-computation-gpus-primer/chapter-36-stream-reduction)
- [Part V: Image-Oriented Computing](https://developer.nvidia.com/gpugems/gpugems2/part-v-image-oriented-computing)
    - [Chapter 37. Octree Textures on the GPU](https://developer.nvidia.com/gpugems/gpugems2/part-v-image-oriented-computing/chapter-37-octree-textures-gpu)
    - [Chapter 38. High-Quality Global Illumination Rendering Using Rasterization](https://developer.nvidia.com/gpugems/gpugems2/part-v-image-oriented-computing/chapter-38-high-quality-global-illumination)
    - [Chapter 39. Global Illumination Using Progressive Refinement Radiosity](https://developer.nvidia.com/gpugems/gpugems2/part-v-image-oriented-computing/chapter-39-global-illumination-using-progressive)
    - [Chapter 40. Computer Vision on the GPU](https://developer.nvidia.com/gpugems/gpugems2/part-v-image-oriented-computing/chapter-40-computer-vision-gpu)
    - [Chapter 41. Deferred Filtering: Rendering from Difficult Data Formats](https://developer.nvidia.com/gpugems/gpugems2/part-v-image-oriented-computing/chapter-41-deferred-filtering-rendering-difficult)
    - [Chapter 42. Conservative Rasterization](https://developer.nvidia.com/gpugems/gpugems2/part-v-image-oriented-computing/chapter-42-conservative-rasterization)
- [Part VI: Simulation and Numerical Algorithms](https://developer.nvidia.com/gpugems/gpugems2/part-vi-simulation-and-numerical-algorithms)
    - [Chapter 43. GPU Computing for Protein Structure Prediction](https://developer.nvidia.com/gpugems/gpugems2/part-vi-simulation-and-numerical-algorithms/chapter-43-gpu-computing-protein)
    - [Chapter 44. A GPU Framework for Solving Systems of Linear Equations](https://developer.nvidia.com/gpugems/gpugems2/part-vi-simulation-and-numerical-algorithms/chapter-44-gpu-framework-solving)
    - [Chapter 45. Options Pricing on the GPU](https://developer.nvidia.com/gpugems/gpugems2/part-vi-simulation-and-numerical-algorithms/chapter-45-options-pricing-gpu)
    - [Chapter 46. Improved GPU Sorting](https://developer.nvidia.com/gpugems/gpugems2/part-vi-simulation-and-numerical-algorithms/chapter-46-improved-gpu-sorting)
    - [Chapter 47. Flow Simulation with Complex Boundaries](https://developer.nvidia.com/gpugems/gpugems2/part-vi-simulation-and-numerical-algorithms/chapter-47-flow-simulation-complex)
    - [Chapter 48. Medical Image Reconstruction with the FFT](https://developer.nvidia.com/gpugems/gpugems2/part-vi-simulation-and-numerical-algorithms/chapter-48-medical-image-reconstruction)



GPU Gems 3 contents

- [Contributors](https://developer.nvidia.com/gpugems/gpugems3/contributors)
- [Foreword](https://developer.nvidia.com/gpugems/gpugems3/foreword)
- [Part I: Geometry](https://developer.nvidia.com/gpugems/gpugems3/part-i-geometry)
    - [Chapter 1. Generating Complex Procedural Terrains Using the GPU](https://developer.nvidia.com/gpugems/gpugems3/part-i-geometry/chapter-1-generating-complex-procedural-terrains-using-gpu)
    - [Chapter 2. Animated Crowd Rendering](https://developer.nvidia.com/gpugems/gpugems3/part-i-geometry/chapter-2-animated-crowd-rendering)
    - [Chapter 3. DirectX 10 Blend Shapes: Breaking the Limits](https://developer.nvidia.com/gpugems/gpugems3/part-i-geometry/chapter-3-directx-10-blend-shapes-breaking-limits)
    - [Chapter 4. Next-Generation SpeedTree Rendering](https://developer.nvidia.com/gpugems/gpugems3/part-i-geometry/chapter-4-next-generation-speedtree-rendering)
    - [Chapter 5. Generic Adaptive Mesh Refinement](https://developer.nvidia.com/gpugems/gpugems3/part-i-geometry/chapter-5-generic-adaptive-mesh-refinement)
    - [Chapter 6. GPU-Generated Procedural Wind Animations for Trees](https://developer.nvidia.com/gpugems/gpugems3/part-i-geometry/chapter-6-gpu-generated-procedural-wind-animations-trees)
    - [Chapter 7. Point-Based Visualization of Metaballs on a GPU](https://developer.nvidia.com/gpugems/gpugems3/part-i-geometry/chapter-7-point-based-visualization-metaballs-gpu)
- [Part II: Light and Shadows](https://developer.nvidia.com/gpugems/gpugems3/part-ii-light-and-shadows)
    - [Chapter 8. Summed-Area Variance Shadow Maps](https://developer.nvidia.com/gpugems/gpugems3/part-ii-light-and-shadows/chapter-8-summed-area-variance-shadow-maps)
    - [Chapter 9. Interactive Cinematic Relighting with Global Illumination](https://developer.nvidia.com/gpugems/gpugems3/part-ii-light-and-shadows/chapter-9-interactive-cinematic-relighting-global)
    - [Chapter 10. Parallel-Split Shadow Maps on Programmable GPUs](https://developer.nvidia.com/gpugems/gpugems3/part-ii-light-and-shadows/chapter-10-parallel-split-shadow-maps-programmable-gpus)
    - [Chapter 11. Efficient and Robust Shadow Volumes Using Hierarchical Occlusion Culling and Geometry Shaders](https://developer.nvidia.com/gpugems/gpugems3/part-ii-light-and-shadows/chapter-11-efficient-and-robust-shadow-volumes-using)
    - [Chapter 12. High-Quality Ambient Occlusion](https://developer.nvidia.com/gpugems/gpugems3/part-ii-light-and-shadows/chapter-12-high-quality-ambient-occlusion)
    - [Chapter 13. Volumetric Light Scattering as a Post-Process](https://developer.nvidia.com/gpugems/gpugems3/part-ii-light-and-shadows/chapter-13-volumetric-light-scattering-post-process)
- [Part III: Rendering](https://developer.nvidia.com/gpugems/gpugems3/part-iii-rendering)
    - [Chapter 14. Advanced Techniques for Realistic Real-Time Skin Rendering](https://developer.nvidia.com/gpugems/gpugems3/part-iii-rendering/chapter-14-advanced-techniques-realistic-real-time-skin)
    - [Chapter 15. Playable Universal Capture](https://developer.nvidia.com/gpugems/gpugems3/part-iii-rendering/chapter-15-playable-universal-capture)
    - [Chapter 16. Vegetation Procedural Animation and Shading in Crysis](https://developer.nvidia.com/gpugems/gpugems3/part-iii-rendering/chapter-16-vegetation-procedural-animation-and-shading-crysis)
    - [Chapter 17. Robust Multiple Specular Reflections and Refractions](https://developer.nvidia.com/gpugems/gpugems3/part-iii-rendering/chapter-17-robust-multiple-specular-reflections-and-refractions)
    - [Chapter 18. Relaxed Cone Stepping for Relief Mapping](https://developer.nvidia.com/gpugems/gpugems3/part-iii-rendering/chapter-18-relaxed-cone-stepping-relief-mapping)
    - [Chapter 19. Deferred Shading in Tabula Rasa](https://developer.nvidia.com/gpugems/gpugems3/part-iii-rendering/chapter-19-deferred-shading-tabula-rasa)
    - [Chapter 20. GPU-Based Importance Sampling](https://developer.nvidia.com/gpugems/gpugems3/part-iii-rendering/chapter-20-gpu-based-importance-sampling)
- [Part IV: Image Effects](https://developer.nvidia.com/gpugems/gpugems3/part-iv-image-effects)
    - [Chapter 21. True Impostors](https://developer.nvidia.com/gpugems/gpugems3/part-iv-image-effects/chapter-21-true-impostors)
    - [Chapter 22. Baking Normal Maps on the GPU](https://developer.nvidia.com/gpugems/gpugems3/part-iv-image-effects/chapter-22-baking-normal-maps-gpu)
    - [Chapter 23. High-Speed, Off-Screen Particles](https://developer.nvidia.com/gpugems/gpugems3/part-iv-image-effects/chapter-23-high-speed-screen-particles)
    - [Chapter 24. The Importance of Being Linear](https://developer.nvidia.com/gpugems/gpugems3/part-iv-image-effects/chapter-24-importance-being-linear)
    - [Chapter 25. Rendering Vector Art on the GPU](https://developer.nvidia.com/gpugems/gpugems3/part-iv-image-effects/chapter-25-rendering-vector-art-gpu)
    - [Chapter 26. Object Detection by Color: Using the GPU for Real-Time Video Image Processing](https://developer.nvidia.com/gpugems/gpugems3/part-iv-image-effects/chapter-26-object-detection-color-using-gpu-real-time-video)
    - [Chapter 27. Motion Blur as a Post-Processing Effect](https://developer.nvidia.com/gpugems/gpugems3/part-iv-image-effects/chapter-27-motion-blur-post-processing-effect)
    - [Chapter 28. Practical Post-Process Depth of Field](https://developer.nvidia.com/gpugems/gpugems3/part-iv-image-effects/chapter-28-practical-post-process-depth-field)
- [Part V: Physics Simulation](https://developer.nvidia.com/gpugems/gpugems3/part-v-physics-simulation)
    - [Chapter 29. Real-Time Rigid Body Simulation on GPUs](https://developer.nvidia.com/gpugems/gpugems3/part-v-physics-simulation/chapter-29-real-time-rigid-body-simulation-gpus)
    - [Chapter 30. Real-Time Simulation and Rendering of 3D Fluids](https://developer.nvidia.com/gpugems/gpugems3/part-v-physics-simulation/chapter-30-real-time-simulation-and-rendering-3d-fluids)
    - [Chapter 31. Fast N-Body Simulation with CUDA](https://developer.nvidia.com/gpugems/gpugems3/part-v-physics-simulation/chapter-31-fast-n-body-simulation-cuda)
    - [Chapter 32. Broad-Phase Collision Detection with CUDA](https://developer.nvidia.com/gpugems/gpugems3/part-v-physics-simulation/chapter-32-broad-phase-collision-detection-cuda)
    - [Chapter 33. LCP Algorithms for Collision Detection Using CUDA](https://developer.nvidia.com/gpugems/gpugems3/part-v-physics-simulation/chapter-33-lcp-algorithms-collision-detection-using-cuda)
    - [Chapter 34. Signed Distance Fields Using Single-Pass GPU Scan Conversion of Tetrahedra](https://developer.nvidia.com/gpugems/gpugems3/part-v-physics-simulation/chapter-34-signed-distance-fields-using-single-pass-gpu)
    - [Chapter 35. Fast Virus Signature Matching on the GPU](https://developer.nvidia.com/gpugems/gpugems3/part-v-physics-simulation/chapter-35-fast-virus-signature-matching-gpu)
- [Part VI: GPU Computing](https://developer.nvidia.com/gpugems/gpugems3/part-vi-gpu-computing)
    - [Chapter 36. AES Encryption and Decryption on the GPU](https://developer.nvidia.com/gpugems/gpugems3/part-vi-gpu-computing/chapter-36-aes-encryption-and-decryption-gpu)
    - [Chapter 37. Efficient Random Number Generation and Application Using CUDA](https://developer.nvidia.com/gpugems/gpugems3/part-vi-gpu-computing/chapter-37-efficient-random-number-generation-and-application)
    - [Chapter 38. Imaging Earth's Subsurface Using CUDA](https://developer.nvidia.com/gpugems/gpugems3/part-vi-gpu-computing/chapter-38-imaging-earths-subsurface-using-cuda)
    - [Chapter 39. Parallel Prefix Sum (Scan) with CUDA](https://developer.nvidia.com/gpugems/gpugems3/part-vi-gpu-computing/chapter-39-parallel-prefix-sum-scan-cuda)
    - [Chapter 40. Incremental Computation of the Gaussian](https://developer.nvidia.com/gpugems/gpugems3/part-vi-gpu-computing/chapter-40-incremental-computation-gaussian)
    - [Chapter 41. Using the Geometry Shader for Compact and Variable-Length GPU Feedback](https://developer.nvidia.com/gpugems/gpugems3/part-vi-gpu-computing/chapter-41-using-geometry-shader-compact-and-variable-length)
- [Preface](https://developer.nvidia.com/gpugems/gpugems3/preface)