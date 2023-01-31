using Godot;
using CustomTypes.Attributes;

// [ClassName]
[ClassName(Name="MyCsharpNode2D", Icon="res://bullet.svg")]
public partial class MyNode2D : Node2D
{
	[Signal]
	public delegate void MySignalEventHandler();

	[Signal]
	public delegate void MySignalWithArgumentEventHandler(string myString);

	public void MyMethodEmittingSignals()
	{
		//AddUserSignal("MySignal");
		//EmitSignal("MySignal");
		EmitSignal(nameof(MySignal));
		EmitSignal(SignalName.MySignalWithArgument, "World");
	}
	
	// Called when the node enters the scene tree for the first time.
	public override void _Ready()
	{
		// Godot 4.x
		MySignal += () => SayHelloTo("+= lambdas");
		MySignalWithArgument += SayHelloTo;
		
		// in Godot 3.x
		//this.Connect("MySignal", this, "SayHelloTo", new Godot.Collections.Array{"Mono"});
		//this.Connect(nameof(MySignal), this, "SayHelloTo", new Godot.Collections.Array{"Mono"});

		//Callable callable = new Callable(this, MethodName.SayHelloTo); // nameof(SayHelloTo)
		this.Connect(nameof(MySignal), Callable.From(() => SayHelloTo("Callable")));

		//Button n = FindChild("Button") as Button; // FindNode -> FindChild
		Button n = (Button) GetNode("Button");
		if (n != null) {
			n.Connect("pressed", new Callable(this, nameof(MyMethodEmittingSignals)));
			GD.Print($"button: {n.Text}");
		}
	}

	private void SayHelloTo(string name)
	{
		GD.Print($"Hello {name}!");
	}

	// Called every frame. 'delta' is the elapsed time since the previous frame.
	public override void _Process(double delta)
	{
		//GD.Print("Node: ", Time.GetTicksMsec());
	}

}
