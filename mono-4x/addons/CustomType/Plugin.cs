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
/// 		Project → Project Settings... → Plugins → CustomTypes → Enable/Disable
/// 
/// to register/unregister, use Project menu :
/// 		Project → Tools → C# Custom Types: Register
/// 		Project → Tools → C# Custom Types: Clear
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
/// 	//...
/// }
/// 
/// [ClassName(Name="MyCsharpNode2D", Icon="res://bullet.svg")]
/// public partial class MyNode2D : Node2D
/// {
/// 	// ...
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
