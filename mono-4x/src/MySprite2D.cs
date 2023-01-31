using Godot;
using CustomTypes.Attributes;

[ClassName(Icon="res://icon.svg")]
public partial class MySprite2D : Sprite2D
{
  public override void _Ready()
  {
    GD.Print("MySprite2D ready");
  }
} 