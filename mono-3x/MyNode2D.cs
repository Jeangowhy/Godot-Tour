using Godot;
using CustomTypes.Attributes;

[ClassName(Icon = "res://icon.svg")]
public partial class MyNode2D : Node2D
{
	[Signal]
	public delegate void MySignal();

	[Signal]
	public delegate void MySignalWithArgument(string myString);

	// [Export]
	// private int Number = 3;

	// [Export]
	// private string Text = "";
	// [Export]
	// private bool Flag = false;

	// [Export(PropertyHint.Range, "0,100000,1000,or_greater")]
	// private int _income;

	// [Export(PropertyHint.File, "*.png,*.jpg")]
	// private string _icon;

	public void MyMethodEmittingSignals()
	{
		// Godot 4.x
		// EmitSignal(SignalName.MySignal);
		// EmitSignal(SignalName.MySignalWithArgument, "World");
		// EmitSignal(nameof(MySignal));
		
		//AddUserSignal("MySignal");
		EmitSignal("MySignal");
		EmitSignal(nameof(MySignalWithArgument), "World");
	}
	
	// Called when the node enters the scene tree for the first time.
	public override void _Ready()
	{
		// Connect signals in Godot 4.x
		// MySignal += () => GD.Print("Hello!");
		// MySignalWithArgument += SayHelloTo;
		
		//this.Connect("MySignal", this, "SayHelloTo", new Godot.Collections.Array{"Mono"});
		this.Connect(nameof(MySignal), this, "SayHelloTo", new Godot.Collections.Array{"Mono"});

		//Button n = FindNode("Button") as Button;
		Button n = (Button) GetNode("Button");
		if (n != null) {
			n.Connect("pressed", this, "MyMethodEmittingSignals");
			GD.Print($"button: {n.Text}");
			//n.Text = "C# write to GDScript";
		}
		Sprite s = (Sprite) GetNode("Sprite");
		if (s != null) {
			s.Call("_say_hello", new[]{"C#"});
		}
	}

	private void SayHelloTo(string name)
	{
		GD.Print($"Hello {name}!");
	}

	// Called every frame. 'delta' is the elapsed time since the previous frame.
	public override void _Process(float delta)
	{
		//GD.Print("Node: ", Time.GetTicksMsec());
	}

}
