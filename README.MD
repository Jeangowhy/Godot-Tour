## 🟡 Godot Docs 官方文档阅读指南
- [动画师救生手册 - 动画十二原则](https://www.bilibili.com/video/BV1x54y1e7J9)
- [GAMES101-现代计算机图形学入门 - 闫令琪](https://www.bilibili.com/video/BV1X7411F744/)
- [GAMES202-高质量实时渲染 - 闫令琪](https://www.bilibili.com/video/BV1YK4y1T7yY/)
- [GAMES202-高质量实时渲染课程主页](https://sites.cs.ucsb.edu/~lingqi/teaching/games202.html/)
- [GAMES102-几何建模与处理基础 - 刘利刚](https://www.bilibili.com/video/BV1NA411E7Yr/)
- [GAMES103-基于物理的计算机动画入门 - 王华民](https://www.bilibili.com/video/BV12Q4y1S73g/)
- [GAMES105-计算机角色动画基础 - 刘利斌](https://www.bilibili.com/video/BV1GG4y1p7fF/)
- [GAMES104-现代游戏引擎：从入门到实践 - 王希](https://www.bilibili.com/video/BV1J3411n7WT/)
- [GAMES201-高级物理引擎实战指南 - 胡渊鸣](https://www.bilibili.com/video/BV1ZK411H7Hc)
- [CSD 15-462 Computer Graphics - Carnegie Mellon University](https://www.cs.cmu.edu/afs/cs/academic/class/15462-f11/www/)
- [CMU - 15-462/662 Computer Graphics - Keenan Crane](https://www.bilibili.com/video/BV1QZ4y1K7ga/)
- [龚大的上帝视角看GPU教程](https://www.bilibili.com/video/BV1P44y1V7bu/)
- [The Book of Shaders by Patricio Gonzalez Vivo & Jen Lowe](https://thebookofshaders.com/?lan=ch)
- [Godot Download](https://godotengine.org/download/windows)
- [Godot Demo Projects](https://godotengine.github.io/godot-demo-projects)
- [Godot Demo Projects](https://github.com/godotengine/godot-demo-projects)
- [Godot 3 Recipes](https://kidscancode.org/godot_recipes/3.x/)

Digital Content Creation (DCC) 数字内容创作工具是最现代代的生产力工具，包括但不仅限于 2D/3D、
音频/视频剪辑合成、动态/互动内容创作、图像编辑等等。

例如，用于视频游戏制作的 UE5、U3D，完全免费开源的 Godot，建模与动画工具 Blender 等等。2D 动画制作
工作如 Spine、OpenToonz 等等。程序化贴图 SubstanceDesigner，数字化布料 Style3D (国产之光)、
VStitcher、MarvelousDesigner，雕刻建模工具 ZBrush，电影特效魔术师 Houdini，工业设计和建筑设计
Rhino，以及传统的收费 3D 工具，如 3Dmax、Maya 等等。

Godot 作为一个新秀，完全开源，并且学易易用，并且具有适量的源代码，不会像 UE5 那样宏大难以分解。

要阅读好 Godot 官方文档，需要掌握文档的使用方法，并且最好有计算机图形学基础，掌握 Python 脚本语言
可以快速掌握 GDScript 脚本。

![Overview of the interface](https://docs.godotengine.org/en/latest/_images/editor-vocabulary-overview.png)

Godot 除了自带的 GDScript 脚本外，通过模块扩展支持了多种语言开发，C# 支持需要下载集成 Mono 的版本，
推荐使用自带的 GDScript 脚本开发，它相当一个支持多线程并行的 Python，支持六种 match 分支匹配模式。

- Constant pattern
- Variable pattern
- Wildcard pattern
- Binding pattern
- Array pattern
- Dictionary pattern
- Multiple patterns

计算机图形领域一个较难的领域是现代 GPU 编程，即着色器程序开发，入门体验容易，想要好效果难。一个比较
好的入门教材是 The Book of Shaders，尽管这是一个烂尾工程。Godot 3.x 使用 OpenGL GLES 2/3，
未来 Godot 4.x 会使用 Vulkan。

另外，提升动画艺术水平，学习一些动画原理很有必要，工具有 Spine、Blender、SketchBook、Krita、SAI
等等。最重要的是提升美学水平，一个作品好与坏，下限由工具决定，上限由制作人决定！

Godot 官方示范项目很赞，提供了许多基础功能的演示，Godot 3.x/4.x 版本分使用 master 或 4.0-dev 分支：

> git clone -b master -b 3.5 --depth=1 git@github.com:godotengine/godot.git
>
> git clone -b master -b 4.0-dev --depth=1 git@github.com:godotengine/godot-demo-projects.git
>
> git clone --depth=1 git@github.com:godotengine/godot-docs.git
> git clone -b master -b stable -b 3.5 -b 3.6 --depth=1 git@github.com:godotengine/godot-docs docs

Godot 源代码仓库包含了类型 API 文档，使用 xml 格式保存，可以在 doc 文件执行 make rst 或者
make markdown 进行格式转换。

克隆命令 git clone 不支持通过 -b 指定多个分支，只有最后指定的分支才有效。


为了方便在文档之间快速跳转，推荐在 Sublime Text 环境下阅读文档，只需要安装 run-snippet 插件，
使用 F9 快捷键跳转到光标下的文件或链接。

快速安装 RunSnippet 插件：

- Ctrl+Shift+P 打开 Sublime Text 命令调板；
- 执行 Add Repository 添加本插件代码仓库地址: https://github.com/jimboyeah/run-snippet
- 然后执行 Install Package 并输入 RunSnippt 进行确认安装；

手动添加 Repository，执行菜单： Perferences 🡒 Package Settings 🡒 Package Control 🡒 Settings

    "repositories":
    [
        "https://github.com/jimboyeah/run-snippet",
    ],

可以在 Packages 目录执行以下命令安装 RunSnippet 插件：

    git clone git@github.com/jimboyeah/run-snippet.git

添加配置文件，默认启用分组跳转，如果 Sublime Text 没有设置分组，则在当前 View 弹出文件跳转窗口，
这种行为有点打断思路。更合理的做法是 GUI 设置 2 个 Group，并且在另一个 Group 弹出文件 Panel。
Load settings from /Packages/Users/RunSnippet.sublime-settings

```json
    {
        "jump_between_group": true,
    }
```

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

