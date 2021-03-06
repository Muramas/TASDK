module UnrealScript.TribesGame.TrDevice_CustomEagle;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDevice;

extern(C++) interface TrDevice_CustomEagle : TrDevice
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrDevice_CustomEagle")); }
	private static __gshared TrDevice_CustomEagle mDefaultProperties;
	@property final static TrDevice_CustomEagle DefaultProperties() { mixin(MGDPC("TrDevice_CustomEagle", "TrDevice_CustomEagle TribesGame.Default__TrDevice_CustomEagle")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mInstantFire;
		public @property static final ScriptFunction InstantFire() { mixin(MGF("mInstantFire", "Function TribesGame.TrDevice_CustomEagle.InstantFire")); }
	}
	final void InstantFire()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.InstantFire, cast(void*)0, cast(void*)0);
	}
}
