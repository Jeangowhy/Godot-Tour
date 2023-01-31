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