module UnrealScript.UTGame.UTMutator_BigHead;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Pawn;
import UnrealScript.UTGame.UTMutator;

extern(C++) interface UTMutator_BigHead : UTMutator
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UTGame.UTMutator_BigHead")); }
	private static __gshared UTMutator_BigHead mDefaultProperties;
	@property final static UTMutator_BigHead DefaultProperties() { mixin(MGDPC("UTMutator_BigHead", "UTMutator_BigHead UTGame.Default__UTMutator_BigHead")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mModifyPlayer;
		public @property static final ScriptFunction ModifyPlayer() { mixin(MGF("mModifyPlayer", "Function UTGame.UTMutator_BigHead.ModifyPlayer")); }
	}
	final void ModifyPlayer(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.ModifyPlayer, params.ptr, cast(void*)0);
	}
}
