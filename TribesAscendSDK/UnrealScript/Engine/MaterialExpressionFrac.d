module UnrealScript.Engine.MaterialExpressionFrac;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionFrac : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.MaterialExpressionFrac")); }
	private static __gshared MaterialExpressionFrac mDefaultProperties;
	@property final static MaterialExpressionFrac DefaultProperties() { mixin(MGDPC("MaterialExpressionFrac", "MaterialExpressionFrac Engine.Default__MaterialExpressionFrac")); }
	// WARNING: Property 'Input' has the same name as a defined type!
}
