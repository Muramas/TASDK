module UnrealScript.TribesGame.TrDmgType_ThumperD_MKD;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDmgType_Explosive;

extern(C++) interface TrDmgType_ThumperD_MKD : TrDmgType_Explosive
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrDmgType_ThumperD_MKD")); }
	private static __gshared TrDmgType_ThumperD_MKD mDefaultProperties;
	@property final static TrDmgType_ThumperD_MKD DefaultProperties() { mixin(MGDPC("TrDmgType_ThumperD_MKD", "TrDmgType_ThumperD_MKD TribesGame.Default__TrDmgType_ThumperD_MKD")); }
}
