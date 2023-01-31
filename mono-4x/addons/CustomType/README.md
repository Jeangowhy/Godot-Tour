
### 🟢🔵 Godot Plugin in CSharp
- https://github.com/m50/Godot-CSharp-Node-Exports
- [.NET project SDKs](https://learn.microsoft.com/en-us/dotnet/core/project-sdk/overview)
- [Attribute 基类](https://learn.microsoft.com/zh-cn/dotnet/api/system.attribute?view=net-7.0)
- [CompilerServices 命名空间](https://learn.microsoft.com/zh-cn/dotnet/api/system.runtime.compilerservices)
- https://referencesource.microsoft.com/#mscorlib/system/runtime/compilerservices/datetimeconstantattribute.cs
- https://github.com/jeangowhy/godot-tour

![CustomeTypes in C#](screenshot/ndoelist.jpg)

C# 中没有 class_name 这样的关键字用来注册自定义节点，这可以使用插件的 Custom types。通过菜单
创建插件：Project → Project Settings → Plugins → Create new Plugin。使用 C# 创建插件时，
注意脚本名称和类名要一致。C# 中可以自定义标注实现类似 [ClassName] 这样的标注，以替代 GDScript
中的 classname 注册自定义类型：

- **System.Attribute** 自定义标注需要继承的基类；
- **System.AttributeUsage** 设置自定义标注的用途，以及 AllowMultiple，Inherited 等属性；
- **System.AttributeTargets** 提供标注用途的枚举类型定义，如 Class, Method, Property 等等用途；
- [System.AttributeUsage(System.AttributeTargets.Class)] 指定自定义标注作用于类型定义；
- [System.AttributeUsage(System.AttributeTargets.Method)] 指定自定义标注作用于类型定义；

此外，System.Runtime.CompilerServices 命名空间下提供了一系列编译获取信息的标注，如：

- **CallerFilePathAttribute** 获取包含调用方的源文件的完整路径。 这是编译时的文件路径。
- **CallerLineNumberAttribute** 获取源文件中调用方法的行号。
- **CallerMemberNameAttribute** 获取方法调用方的方法或属性名称。
- **DateTimeConstantAttribute** 为字段或参数永久保存一个 8 字节的 DateTime 常数。

Caller 和 Callee 分别表示一个方法调用另一个方法的双方，Caller 是主动调用，Callee 是被调用方。
向 Godot 注册自定义类型需要使用其脚本，需要使用 [CallerFilePath] 标注获取脚本路径，并通过资源
管理器 ResourceLoader 加载它得到脚本对象。加载脚本得到的是一个资源类型，可以使用多种方式进行转换：

```C#
    Script script = ResourceLoader.Load(target.ScriptPath) as Script;
    Script script = ResourceLoader.Load<Script>(target.ScriptPath);
    Script script = (Script) ResourceLoader.Load(target.ScriptPath);
```

最新的 Godot 4 beta 16 提供了一个 GodotClassNameAttribute 标注，。

C# 元数据编程中，一个方格号内可以包含多个标注，每个标注使用圆括号对其属性进行赋值。对标注好的代码
进行处理时，使用程序集对象 Assembly 提供的反射方法，对当前运行中的程序集进行处理。通过处理程序集中
标注过的类型，使用 AddCustomType() 将自定义类型注册到 Godot 系统内：

```C#
    using System.Reflection;

    var assembly = Assembly.GetExecutingAssembly();
    foreach (var t in assembly.GetTypes())
    {
        MyAttribute mytype = t.GetCustomAttribute<MyAttribute>();
        if (item == null) continue;
        ...
    }

    Connect("resource_saved", new Callable(this, nameof(OnResourceSaved)));
    AddToolMenuItem("Reload C# Resources", new Callable(this, nameof(BuildTypes)));
    // in Godot 3.x
    // Connect("resource_saved", this, "OnResourceSaved");
    // AddToolMenuItem("Reload C# Resources", this, nameof(BuildTypes));
```

在 Godot 触发自定义节点注册行为，可以通过添加工具菜单 AddToolMenuItem() 来让用户操作，它会向
Project → Tools 添加菜单，需要在禁用插件配合 RemoveToolMenuItem() 做菜单清理，避免重复添加。
也可以使用 EditorPlugin 的信号来触发，插件提供的信号包含场景变动、资源保存、工程配置变动等等。

插件中的自定义标注需要在 Godot 工程中其它代码引用，C# 工程文件 ``.csproj`` 要正确引用``.cs``，
并且需要构建好 C# 项目使其生效。否则，启用插件时就会提示不能加载插件脚本，因为 Godot 不能通过脚本
提供类型名称找到相应的程序集中对应的类型。

```sh
<Project Sdk="Godot.NET.Sdk/4.0.0-beta.16">
  <PropertyGroup>
    <TargetFramework>net6.0</TargetFramework>
    <EnableDynamicLoading>true</EnableDynamicLoading>
    <EnableDefaultCompileItems>false</EnableDefaultCompileItems>
  </PropertyGroup>
  <ItemGroup>
    <Compile Include="addons/**/*.cs" Condition=" '$(Configuration)' == 'Debug' " />
    <Compile Include="src/*.cs" />
  </ItemGroup>
</Project>
```

一个最简单的插件可以只包含两个方法，它向引擎注册自定义节点：

```py
    tool
    extends EditorPlugin

    func _enter_tree():
        # When this plugin node enters tree, add the custom type
        add_custom_type("Heart", "Node2D", preload("res://addons/custom_node/heart.gd"), preload("res://addons/custom_node/heart_icon.png"))
        # public void AddCustomType(string type, string @base, Script script, Texture2D icon);

    func _exit_tree():
        # When the plugin node exits the tree, remove the custom type
        remove_custom_type("Heart")
        # public void RemoveCustomType(string type);
```

```C#,ignore
    #if TOOLS
    using Godot;
    using System;

    [Tool]
    public partial class Plugin : EditorPlugin
    {
        public override void _EnterTree()
        {
            // Initialization of the plugin goes here.
        }

        public override void _ExitTree()
        {
            // Clean-up of the plugin goes here.
        }
    }
    #endif
```

一个节点，包括插件，连接到 Root Viewport 即成为场景树中的一个部分，最后节点被移除，依次触发回调方法：

```py
_enter_tree() 
_ready() 
_exit_tree()
```

节点树所有节点会按位置先后、由表层到内层依次执行 enter_tree 方法，而 ready 和 exit_tree 方法，
则不同，会先由内层到外层的顺序执行，父级节点需要等待内层节点工作完成才能执行 ready 等动作。

对于插件，Project → Project Settings → Plugins 面板中启用它，即添加到场景树上，禁用时即移除。
插件代码如果有更新，也需要通过禁用再重新启用来更新，并重新执行初始化。Godot 4 beta 16 中，只要
重新执行构建扣，插件功能即可以随之更新，不需要重新设置工程插件配置，但初始化在下次启用插件时执行。

以下是 CustomTypes 插件的实现，有两个 C# 代码文件，一个标注定义，另一个是主脚本。通过工程配置
启用插件：Project → Project Settings... → Plugins → CustomTypes → Enable/Disable。

然后，插件会向 Project → Tools 工具菜单中注册两个功能，分别用于更新自定义类型的注册和清理：

- Project → Tools → C# Custom Types: Register
- Project → Tools → C# Custom Types: Clear

标注定义代码文件 ClassNameAttribute.cs 内容：

```C#,ignore
    using System;
    using System.Runtime.CompilerServices;

    namespace CustomTypes.Attributes
    {
      [AttributeUsage(AttributeTargets.Class, Inherited = false)]
      class ClassNameAttribute : Attribute
      {
        // [DateTimeConstantAttribute(1675150868847)]
        // public DateTime timestamp;
        public string Name = "";
        public string Icon = "";
        public string ScriptPath = "";

        public ClassNameAttribute([CallerFilePath] string scriptPath = "")
        {
          ScriptPath = scriptPath;
        }
      }
    }
```

Custom Types 插件主脚本文件 Plugin.cs，在创建插件时将其填写到 Script Name 字段中：

```C#,ignore
    #if TOOLS
    using Godot;
    using System;
    using System.Reflection;
    using System.Collections.Generic;
    using CustomTypes.Attributes;

    namespace CustomTypes
    {
        
    [Tool]
    /// <summary>
    /// Register custom types like GDScript class_name.
    /// to enable/disable CustomType plugin, use Project Setting:
    ///         Project → Project Settings... → Plugins → CustomTypes → Enable/Disable
    /// 
    /// to register/unregister, use Project menu :
    ///         Project → Tools → C# Custom Types: Register
    ///         Project → Tools → C# Custom Types: Clear
    /// </summary>
    ///
    /// example:
    ///
    /// ```csharp
    /// using CustomTypes.Attributes;
    /// using Godot;
    ///
    /// [ClassName(Icon="res://Path/To/Icon.png")]
    /// public class MyResource : Resource
    /// {
    ///     //...
    /// }
    /// 
    /// [ClassName(Name="MyCsharpNode2D", Icon="res://bullet.svg")]
    /// public partial class MyNode2D : Node2D
    /// {
    ///     // ...
    /// }
    /// ```
    public partial class Plugin : EditorPlugin
    {
        
        string toolname_add = "C# Custom Types: Register";
        string toolname_clear = "C# Custom Types: Clear";
        List<string> types = new List<string>();

        public void RegCustomTypes()
        {
            Assembly assembly = Assembly.GetExecutingAssembly();
            foreach (var item in assembly.GetTypes())
            {
                var target = item.GetCustomAttribute<ClassNameAttribute>();
                // GD.Print("target: ", item);
                
                if (target == null) continue;
                if (!item.IsSubclassOf(typeof(Godot.Resource)) && !item.IsSubclassOf(typeof(Godot.Node)))
                {
                    GD.Print($"CustomTypes can be Godot.Resource or Godot.Node, but not {item}!");
                    continue;
                }
                Script script = ResourceLoader.Load(target.ScriptPath) as Script;
                // Script script = (Script) ResourceLoader.Load(target.ScriptPath);
                // Script script = ResourceLoader.Load<Script>(target.ScriptPath);
                Texture2D icon = new Texture2D();
                if (target.Icon != "") {
                    icon = ResourceLoader.Load(target.Icon) as Texture2D;
                }
                string name = target.Name == ""? item.Name : target.Name;
                AddCustomType(name, item.BaseType.Name, script, icon);
                types.Add(name);

                GD.Print($"Add Custom Type: {name}:{item.BaseType.Name}");
            }
        }

        public override void _EnterTree()
        {
            // Initialization of the plugin goes here.
            SceneChanged += (Node sceneRoot) => GD.Print("SceneChanged: ", sceneRoot);
            SceneClosed += (string filepath) => GD.Print("SceneClosed: ", filepath);
            MainScreenChanged += (string screenName) => GD.Print("MainScreenChanged: ", screenName);
            ResourceSaved += (Resource resource) => GD.Print("ResourceSaved: ", resource);
            ProjectSettingsChanged += () => GD.Print("ProjectSettingsChanged");
            GD.Print("Signals tester registered.");
            AddToolMenuItem(toolname_add, new Callable(this, nameof(RegCustomTypes)));
            AddToolMenuItem(toolname_clear, new Callable(this, nameof(ClearCustomType)));
            RegCustomTypes();
        }

        public override void _Ready()
        {
            GD.Print("plugin ready: CustomTypes");
        }

        public override void _ExitTree()
        {
            RemoveToolMenuItem(toolname_add);
            RemoveToolMenuItem(toolname_clear);
            ClearCustomType();
        }

        void ClearCustomType()
        {
            foreach (var item in types)
            {
                RemoveCustomType(item);
                GD.Print($"RemoveCustomType: {item}");
            }
        }
    }
    }

    #endif
```


### 🟢🔵 Godot with CSharp
- http://www.mono-project.com/docs/about-mono/compatibility
- https://docs.godotengine.org/en/3.5/tutorials/scripting/c_sharp/c_sharp_features.html
- https://docs.godotengine.org/en/3.5/tutorials/scripting/c_sharp/c_sharp_differences.html
- https://docs.godotengine.org/en/stable/tutorials/scripting/cross_language_scripting.html
- https://docs.godotengine.org/en/stable/tutorials/scripting/creating_script_templates.html
- https://docs.godotengine.org/en/latest/tutorials/scripting/c_sharp/index.html
- https://docs.godotengine.org/en/latest/tutorials/scripting/c_sharp/c_sharp_basics.html
- https://docs.godotengine.org/en/latest/tutorials/scripting/c_sharp/c_sharp_exports.html
- https://docs.godotengine.org/en/latest/tutorials/scripting/c_sharp/c_sharp_differences.html
- https://docs.godotengine.org/en/latest/tutorials/scripting/c_sharp/c_sharp_signals.html
- https://docs.godotengine.org/en/latest/contributing/development/core_and_modules/object_class.html#doc-binding-properties-using-set-get-property-list
- [Bunnymark](https://github.com/cart/godot3-bunnymark)
- [Godot.NET.Sdk](https://www.nuget.org/packages/Godot.NET.Sdk/#versions-body-tab)
- [Mono SDK](https://www.mono-project.com/download/stable/#download-lin)
- [.NET SDK](https://dotnet.microsoft.com/download)
- [Visual Studio Code](https://code.visualstudio.com/)
- [Godot 3.5.1 Mono](https://downloads.tuxfamily.org/godotengine/3.5.1/mono/)
- godot-docs\tutorials\scripting\c_sharp\c_sharp_basics.rst

Godot 有两套语言支持构建：

- 默认的支持 GDScript，GDExtension
- 另一套则集成了 .NET 6 支持 C#, GDScript, GDExtension。

要使用 C# 语言进行 Godot 项目开发，系统上需要安装 .NET SDK 6.0 或 7.0，.NET 7.0 的支持还不完善。
相比 GDScript 脚本，C# 是一个编译型的高级语言，Godot 通过开源的 Mono 6.x 框架支持 C# 8.0 语言版本。
与作用快速原型开发使用 GDScript 脚本不同，每次执行之前都需要进行编译，以生成最新的 C# 程序集。但是，
作为预编译语言，它的运行效率虽然不能和 C++ 看齐，但比 GDSCript 有非常大的效率提升，简单情况有 4x 提升。
并且，在使用的便利程序上，要比 C++ 好，所以在不是极限性能需要情况下，C# 是值得一试的方案。

参考 Bunnymark V2 测试数据，数值越大越好，测试 Sprite 绘制并使用 GetChildren() 迭代：

| Language             | Bunnies Rendered |
|----------------------|------------------|
| ECMAScript/Javascript| 4660             |
| GDScript (Release)   | 18560            |
| C#/Mono              | 27555            |
| GDNative (D)         | 28020            |
| GDNative (Nim)       | 29920            |
| GDNative (C++)       | 37480            |

测试平台信息：

    ### Hardware:

    * CPU: Intel i7 7700k 4.2GHz
    * GPU: Nvidia GeForce GTX 1070
    * RAM: 16GB DDR4

    ### Build Info:

    * OS: Arch Linux
    * Official Godot 3.1 release

Godot 3.2.3 开始，不需安装 Mono SDK，除非需要从源代码构建 Godot，但是 .NET SDK 还是要安装。
注意，使用的 Godot 要与 SDK 的版本比特位一致，建议使用 64-bit 的版本。由于 Godot 只提供了 C#
的最小支持，可以考虑使用外部编辑器，如 Visual Studio Code，以提供更完善的自动完成、调试等功能。
Godot 目前支持以下作用外部编辑器，可以通过 Editor → Editor Settings → Mono → Editor 修改：

- Visual Studio 2019
- Visual Studio Code
- MonoDevelop
- Visual Studio for Mac
- JetBrains Rider

以 VSCode 配置为例，最新的 Godot 4 不需要配置 Builds：

- Set **Mono** -> **Editor** -> **External Editor** to **Visual Studio Code**.
- Set **Mono** -> **Builds** -> **Build Tool** to **dotnet CLI**.

并且在 Visual Studio Code 中安装以下扩展：

- [C#](https://marketplace.visualstudio.com/items?itemName=ms-dotnettools.csharp)
- [Mono Debug](https://marketplace.visualstudio.com/items?itemName=ms-vscode.mono-debug)
- [C# Tools for Godot](https://marketplace.visualstudio.com/items?itemName=neikeq.godot-csharp-vscode)

C# Tools for Godot 扩展支持 Godot 3.2.2 以上版本，可以提供以下功能：

- Debugging.
- Launch a game directly in the Godot editor from VSCode.
- Additional code completion for Node paths, Input actions, Resource paths, Scene paths and Signal names.

如果使用 Linux 操作系统，需要安装 Mono SDK 以支持 Godot 的 C# 工具插件。

配置 VSCdoe 以实现 Godot 工程的运行：

- 执行菜单 Run → **Add Configuration...**  → **C# Godot**
- 编辑配置文件 ``tasks.json`` 和 ``launch.json``，使用 executable 和 Command 指向正确的 Godot 可执行文件。

完成以上配置后，就可以直接在 VScode 中运行 Godot 项目：

- 使用命令调板，Ctrl-Shift-P 打开面板并输入 C# Godot 查询相关命令；
- 在状态栏中，点击 Godot Project 字样处选择工程目录；
- 在状态栏中，点击 Play in Editor (mono) 字样处运 Godot 工程；
- 直接打开 Run and Debug 侧栏面板选择 ``launch.json`` 配置的调试的方式：
    - Play in Editor 直接通过编辑器中运行；
    - Launch 执行 `Godot.exe --path ${workspaceRoot}`
    - Launch (Select Scene) 选择场景执行 `Godot.exe --path ${workspaceRoot} ${command:SelectLaunchScene}`
    - Attach 附着到本地调试进程；

如果工程不能正常运行，而 VScode 又看不到错误信息，就可以到 Godot 的 MSBuild 面板查询编译日志信息，
例如，当前系统曾经删除过 Xamarin 的 NuGet 模块目录，导致 Godot 编译时出现问题，只需要恢复目录即可：

    SDK 解析程序失败: 
    "尝试解析 SDK "Godot.NET.Sdk/4.0.0-beta.16" 时，SDK 解析程序 "NuGetSdkResolver" 失败。
    异常: "NuGet.Packaging.Core.PackagingException: 无法找到回退包文件夹“C:\Microsoft\Xamarin\NuGet\”。

NuGet 是依赖管理工具，包含为开放源代码 .NET 库而创建的 NuGet.org 包管理平台，上面公开发布了
所有包的推荐元数据。NuGet 包 `*.nupkg` 是一个 zip 文件，其中包含 .NET 程序集和关联的元数据。

NuGet 是 .NET 生态系统的包管理器，并且是开发人员用来发现并获取 .NET 开放源代码库的主要方法。
NuGet.org（由托管 NuGet 包的 Microsoft 提供的免费服务）是公共 NuGet 包的主要主机，但可以
发布到自定义 NuGet 服务，如 MyGet 和 Azure Artifacts。

创建 NuGet 包有两种主要方式。 较新的推荐方式是从 SDK 样式项目，其内容以 `<Project Sdk="Microsoft.NET.Sdk">` 
开头的项目文件创建包。 程序集和目标会自动添加到包，剩余元数据会添加到 MSBuild 文件，如包名称和版本号。
使用 `dotnet pack` 命令编译会输出 `*.nupkg` 文件，而不是程序集。

本地下载安装的缓冲目录可以使用以下命令查询及清理：

    nuget locals all -list
    nuget locals all -clear

配置文件 ``tasks.json`` 默认只提供了一个构建任务，可以通过菜单 Terminal → Run Build Task... 执行： 

```json
{
  "version": "2.0.0",
  "tasks": [
    {
      "label": "build",
      "command": "Godot_v4.0-beta16_mono_win64.exe", //"<insert-godot-executable-path-here>",
      "type": "process",
      "args": [
        "--build-solutions",
        "--path",
        "${workspaceRoot}",
        "--no-window",
        "-q"
      ],
      "problemMatcher": "$msCompile"
    }
  ]
}
```

如果添加运行配置时，没有提供 **C# Godot** 配置，请检查以上三个扩展是否完成安装，并且处于启用状态。
配置好开发环境，就可以在 Godot 给节点附加脚本时，在 Attach Script 对话框中选择 C# 语言。

Node 节点类扩展代码示例：

```C#,ignore
    using Godot;
    using System;

    public class MyNode2D : Node
    {
        // Member variables here, example:
        private int a = 2;
        private string b = "textvar";

        public override void _Ready()
        {
            // Called every time the node is added to the scene.
            // Initialization here.
            GD.Print("Hello from C# to Godot :)", Time.GetTicksMsec());
        }

        public override void _Process(float delta)
        {
            // Called every frame. Delta is time since the last frame.
            // Update game logic here.
        }
    }
```

使用 C# 与 GDScript 的一些差异：

- C# 使用 ``PascalCase`` 代码风格，GDSCript/C++ 使用 ``snake_case`` 风格，`AddChild()` vs. `add_child()`。
- C# 类名要求代码文件名一致，否由会提示 *"Cannot find class XXX for script res://XXX.cs"*
- C# 中使用 Godot 命令空间下的 GD 管理 @GDscript 和 @GlobbalScope 全局函数符号。
- C# 导出符号生效之前，需要重新编译程序集，通过 Godot 界面右上角的 Build 按钮构建工程。
- C# 语句使用分号作为结束符号，而 GDScript 不需要。
- C# 中以 `Godot.Object` 作为所有类型的基类，新版本更名为 `Godot.GodotObject`。
- C# 使用 this 引用当前类实例，GDScript 使用 self 引用当前类实例。

在 C# 中，也不能像 GDScript 那样，直接拖动节点到脚本中创建引用，也不能使用 onready，而需要在
Ready 这类事件中，使用 FindNode 或者 GetNode 获取节点引用：

```C#
    //Button n = FindNode("Button") as Button; // FindNode -> FindChild (Godot 4)
    Button n = (Button) GetNode("Button");
    if (n != null) {
        // n.Connect(nameof(Button.Pressed), this, "handle_button_click");
        n.Connect("pressed", this, "handle_button_click");
        GD.Print($"button: {n.Text}");
    }
```

使用 C# 进行 Godot 项目开发，还需要解决以下这些基本问题：

- 不同语言之间的相互调用问题；
- Godot 信号系统的使用方式的差异；
- C# 与 GDScript API 之间的差异；
- Godot 不同版本之间的差异处理等等；


Godot 考虑到了不同语言之间相互调用，C# 调用 GDScript API 或者属性读写使用 GodotObject 提供的方法：

```C#,ignore
    //
    // 摘要:
    //     Calls the method on the object and returns the result. This method supports a
    //     variable number of arguments, so parameters are passed as a comma separated list.
    //     Example:
    //     call("set", "position", Vector2(42.0, 0.0))
    [GodotMethodAttribute("call")]
    public object Call(string method, params object[] args);
    //
    // 摘要:
    //     Calls the method on the object during idle time. This method supports a variable
    //     number of arguments, so parameters are passed as a comma separated list. Example:
    //     call_deferred("set", "position", Vector2(42.0, 0.0))
    [GodotMethodAttribute("call_deferred")]
    public void CallDeferred(string method, params object[] args);
    //
    // 摘要:
    //     Calls the method on the object and returns the result. Contrarily to Godot.Object.Call(System.String,System.Object[]),
    //     this method does not support a variable number of arguments but expects all parameters
    //     to be via a single Godot.Collections.Array.
    //     callv("set", [ "position", Vector2(42.0, 0.0) ])
    [GodotMethodAttribute("callv")]
    public object Callv(string method, Collections.Array argArray);

    //
    // 摘要:
    //     Assigns a new value to the given property. If the property does not exist or
    //     the given value's type doesn't match, nothing will happen.
    [GodotMethodAttribute("set")]
    public void Set(string property, object value);
    //
    // 摘要:
    //     Returns the Variant value of the given property. If the property doesn't exist,
    //     this will return null.
    [GodotMethodAttribute("get")]
    public object Get(string property);
```

而在 GDscript 访问 C# API 则是直接调用，就像使用其它 GDScript 对象一样，实例化操作如下所示：

```py
    # Instantiating C# nodes from GDScript
    var my_csharp_script = load("res://path_to_cs_file.cs")  # CSharpScript
    var my_csharp_node = my_csharp_script.new()
    print(my_csharp_node.some_property)
```

```C#
    // Instantiating GDScript nodes from C#
    GDScript MyGDScript = (GDScript) GD.Load("res://path_to_gd_file.gd");
    Object myGDScriptNode = (Godot.Object) MyGDScript.New();
    myGDScriptNode.Call("some_method", new int[] { 1, 2, 3 }); // some_method(1, 2, 3)
    myGDScriptNode.Call("some_method", (object)new int[] { 1, 2, 3 }); // some_method([1, 2, 3])
```

注意，实例化得到的类型以 Godot 内置类型为准，而不是按 C# 或 GDScript 中声明的类型作为判断标准。
比如，后面的 MyNode2D 在使用 GDScript `is` 关键字做类型判断时，需要使用内置类型 Node 作为参考。
C# 调用 GDScript API 时注意，如果第一个参数是一个数组，那么就需要显式转换为 `object` 类型。否则，
数组元素就会被当作一个参数使用，并可能导致函数签名不匹配。


编写 C# 类代码时注意，类名与 ``.cs`` 代码文件名一致，否则提供错误：

    Invalid call. Nonexistent function `new` in base.

比如，MyCoolNode.cs 文件就应该定义 MyCoolNode 类型。并且需要继承自 ``Godot.Object`` 或其它
子类。最后，C# 工程文件 ``.csproj``中要正确引用``.cs`` 文件，这样才会生效。



Godot 4.x Mono 信号机制在 C# 使用委托机制实现，并且可以使用更高效的 += 和 -= 运算符监听、或者
取消监听。另外，Connect 方法也有更新，使用 Callable 对象包装回调函数及回调参数。另外，通过节点的
嵌套类 SignalName 可以访问信号名称，它继承自 GodotObject.SignalName。清理节点时，Godot 会
负责所有信号监听事件的清理：

```C#
    Timer myTimer = GetNode<Timer>("Timer");
    myTimer.Timeout += () => GD.Print("Timeout!");
    // public Error Connect(StringName signal, Callable callable, uint flags = 0);

    await ToSignal(GetTree(), SceneTree.SignalName.ProcessFrame);
```

以下是 Callable 类参考文档中展示的用法，使用了嵌套类 MethodName 或者 nameof 获取方法名称。但是
在默认参数绑定操作上有差别，GDScript 中可以直接调用 Callable 对象的 bind() 方法绑定默认参数。
而目前在 C# 中给信号绑定默认参数则需要使用 lambdas 来构造出一个包含默认参数的 Callable 对象。
如果方法没有参数，也没有返回值，可以包装成 Action，由 Callable.From() 再包装成可调用对象。

```C#
    // Default parameter values are not supported.
    public void PrintArgs(Variant arg1, Variant arg2, Variant arg3 = default)
    {
        GD.PrintS(arg1, arg2, arg3);
    }

    public void Test()
    {
        Callable callback = Callable.From(() => GD.Print("Hello World"));

        // Invalid calls fail silently.
        Callable callable = new Callable(this, MethodName.PrintArgs);
        callable.Call("hello", "world"); // Default parameter values are not supported, should have 3 arguments.
        callable.Call(Vector2.Up, 42, callable); // Prints "(0, -1) 42 Node(Node.cs)::PrintArgs".
        callable.Call("invalid"); // Invalid call, should have 3 arguments.
    }
```

Godot 4.x Mono 所有信号定义名称使用 EventHandler 结尾，定义好信号后，完成后，Godot 在幕后
自动使用 C# `event` 关键字创建相应的事件。然后，可以像其他 Godot 信号一样使用自定义信号事件。
注意，类型定义使用的 partial class，即表示类定义代码是分开文件存放的，还可以包含在其它代码文件。
除了直接使用委托方式定义信号，还可以使用 AddUserSignal() 方法添加自定义信号。


Godot 3.x Mono 自定义信号的使用有些差别，获取信号名称使用 nameof(MySignal) 语法，并且信号
连接依然是使用节点的 Connect 方法进行。信号名称的获取这种操作一致性不够好，例如，获取按钮节点的
信号就不能使用 nameof(Button.Pressed) 这样的表达，而是直接使用 "pressed" 字符串字面量。

总结起来，C# 中有三种获取或使用信号名称的方式，Godot 3.x 只支持前两种：

- `EmitSignal("MySignal");` 直接使用字符串字面量
- `EmitSignal(nameof(MySignal));` 使用 nameof 关键字
- `EmitSignal(SignalName.MySignal);` 使用内嵌类 SignalName


```C#,ignore
    //     Represents the method that handles the Godot.EditorPlugin.SceneChanged event
    //     of a Godot.EditorPlugin class.
    //public delegate void SceneChangedEventHandler(Node sceneRoot);
    //public event SceneChangedEventHandler SceneChanged;

    public partial class MyNode2D : Node2D
    {
        // Declaring a signal in Godot 3.x with C# is done with the [Signal] attribute on a delegate.
        [Signal]
        delegate void MySignal();

        [Signal]
        delegate void MySignalWithArguments(string foo, int bar);

        public override void _Ready() 
        {
            MyMethodEmittingSignals();
        }

        // Emitting signals is done with the EmitSignal method.
        public void MyMethodEmittingSignals()
        {
            //AddUserSignal("MyOtherSignal");
            EmitSignal(nameof(MySignal));
            EmitSignal("MySignalWithArguments", "hello there", 28);
        }
    }

    public partial class AnotherNode : Node2D
    {
        MyNode instance;

        public override void _Ready()
        {
            instance = GetNode("MyNode")
        }
        // These signals can then be connected either in the editor or from code with Connect.
        public void MyCallback()
        {
            GD.Print("My callback!");
        }

        public void MyCallbackWithArguments(string foo, int bar)
        {
            GD.Print("My callback with: ", foo, " and ", bar, "!");
        }

        public void SomeFunction()
        {
            instance.Connect("MySignal", this, "MyCallback");
            instance.Connect("MySignal", this, "MyCallbackWithArguments", new Godot.Collections.Array{"Mono", 123});
            instance.Connect(nameof(MySignalWithArguments), this, "MyCallbackWithArguments");
        }
    }
```

使用自定义信号可能遇到的问题是：调用 EmitSignal() 时报错，表示信号不存在，而调用 AddUserSignal()
手动添加信号时，又表示不能重复添加已经定义的信号，这可能是定义信号的代码没有写到类体内部：

    E 0:00:07.120   emit_signal: Can't emit non-existing signal "MySignal".
      <C++ Error>   Condition "!signal_is_valid && !script.is_null() && !Ref<Script>(script)->has_script_signal(p_name)" is true. Returned: ERR_UNAVAILABLE
      <C++ Source>  core/object.cpp:1177 @ emit_signal()
      <Stack Trace> :0 @ void Godot.NativeCalls.godot_icall_2_695(IntPtr , IntPtr , System.String , System.Object[] )()
                    Object.cs:365 @ void Godot.Object.EmitSignal(System.String , System.Object[] )()
                    Node_2D.cs:17 @ void Node_2D.MyMethodEmittingSignals()()

    E 0:00:03.798   add_user_signal: Trying to add already existing signal 'MySignal'.
      <C++ Error>   Condition "signal_map.has(p_signal.name)" is true.
      <C++ Source>  core/object.cpp:1121 @ add_user_signal()
      <Stack Trace> :0 @ void Godot.NativeCalls.godot_icall_2_694(IntPtr , IntPtr , System.String , IntPtr )()
                    Object.cs:337 @ void Godot.Object.AddUserSignal(System.String , Godot.Collections.Array )()
                    Node_2D.cs:18 @ void Node_2D.MyMethodEmittingSignals()()


一些 GDScript 遇不到的问题，如下：

```C#,ignore
public partial class MyNode2D : Node2D
{
    public override _Ready()
    {
        // Position.X = 100.0f;
        // CS1612: Cannot modify the return value of 'Node2D.Position' because
        // it is not a variable.
        var newPosition = Position;
        newPosition.X = 100.0f;
        Position = newPosition;

        // C# 10 is required:
        // Position = Position with { X = 100.0f };
    }
}
```

一个类型中结构体，Vector2，在 C# 中是通过拷贝进行赋值的，也就是说在获取 Position 属性时，获取到
的是一个副本，对这个副本赋值并不会影响到原来归属的节点。解决方法：创建一个变量引用 Position 再进行
赋值操作。在 C# 10 版本中，可以对结构体使用 with 表达式来解决这种问题。

通常，使用 C# 编程而不是 GDScript，一个主要的目的可能是为了提升程序运行速度，所以应该避免编写无
效率的代码，以下是两种节点的移动方式对比，后者更高效：

```C#
using Godot;

public partial class YourCustomClass : Node3D
{
    private void ExpensiveReposition()
    {
        for (var i = 0; i < 10; i++)
        {
            // Position is read and set 10 times which incurs native interop.
            // Furthermore the object is repositioned 10 times in 3D space which
            // takes additional time.
            Position += new Vector3(i, i);
        }
    }

    private void Reposition()
    {
        // A variable is used to avoid native interop for Position on every loop.
        var newPosition = Position;
        for (var i = 0; i < 10; i++)
        {
            newPosition += new Vector3(i, i);
        }
        // Setting Position only once avoids native interop and repositioning in 3D space.
        Position = newPosition;
    }
}
```

给 Godot C# API 传递原始的 byte[] 或者字符串，需要 marshalling 操作，这相对不够高效。隐式转换
string 为 NodePath 或 StringName 会产生原生互操作和 marshalling 成本，因为字符串必须编组并
传递给相应的原生构造函数。


### 🟢🔵 Export in CSharp

以下演示在 Godot 4.x Mono 中使用 C# [Export] 标注导出符号，以及使用 [Signal] 自定义信号：

```C#,ignore
using Godot;

[Signal]
public delegate void MySignalEventHandler();

[Signal]
public delegate void MySignalWithArgumentEventHandler(string myString);

public partial class MyNode : Node
{
    [Export]
    private NodePath _nodePath;

    [Export]
    private string _name = "default";

    [Export(PropertyHint.Range, "0,100000,1000,or_greater")]
    private int _income;

    [Export(PropertyHint.File, "*.png,*.jpg")]
    private string _icon;

    public void MyMethodEmittingSignals()
    {
        EmitSignal(SignalName.MySignal);
        EmitSignal(SignalName.MySignalWithArgument, "World");
    }
}
```

其它导出标注用法参考，高级导出参考 get_property_list 方法的使用，目前 Godot 3 不支持导出分组：

```C#,ignore
    [ExportGroup("My Properties")]
    [Export]
    private int Number = 3;

    [ExportSubgroup("Extra Properties")]
    [Export]
    private string Text = "";
    [Export]
    private bool Flag = false;

    [ExportCategory("Main Category")]
    [Export]
    private int Number = 3;
    [Export]
    private string Text = "";

    [ExportCategory("Extra Category")]
    [Export]
    private bool Flag = false;


    [Export]
    private Resource Resource;

    [Export]
    private AnimationNode Resource;

    [Export]
    private Color Col;

    [Export(PropertyHint.ColorNoAlpha)]
    private Color Col;


    [Export]
    private Vector3[] Vector3s = new Vector3[0];
    [Export]
    private String[] String = new String[0];


    [Export(PropertyHint.Layers2dPhysics)]
    private int Layers2dPhysics;
    [Export(PropertyHint.Layers2dRender)]
    private int Layers2dRender;
    [Export(PropertyHint.Layers3dPhysics)]
    private int layers3dPhysics;
    [Export(PropertyHint.Layers3dRender)]
    private int layers3dRender;


    // Set any of the given flags from the editor.
    [Export(PropertyHint.Flags, "Fire,Water,Earth,Wind")]
    private int SpellElements = 0;


    [Export(PropertyHint.ExpEasing)]
    private float TransitionSpeed;

    [Export(PropertyHint.Range, "0,20,")]
    private int Number;

    [Export(PropertyHint.Range, "-10,20,")]
    private int Number;

    [Export(PropertyHint.Range, "-10,20,0.2")]
    private float Number;

    [Export(PropertyHint.Range, "0,100,1,or_greater,or_lesser")]
    private int Number;

    [Export(PropertyHint.ExpRange, "100,1000,20")]
    private float Number;


    [Export(PropertyHint.File)]
    private string GameFile;

    [Export(PropertyHint.Dir)]
    private string GameDirectory;

    [Export(PropertyHint.File, "*.txt,")]
    private string GameFile;


    [Export]
    private NodePath MyNodePath;
    private Label MyNode;

    public override void _Ready()
    {
        MyNode = GetNode<Label>(MyNodePath);
    }

    // Editor will enumerate as 0, 1 and 2.
    [Export(PropertyHint.Enum, "Warrior,Magician,Thief")]
    private int CharacterClass;
    
    [Export(PropertyHint.Enum, "Rebecca,Mary,Leah")]
    private string CharacterName;

    private enum NamedEnum
    {
        Thing1,
        Thing2,
        AnotherThing = -1
    }
    [Export(PropertyHint.Enum)]
    private NamedEnum X;
```
