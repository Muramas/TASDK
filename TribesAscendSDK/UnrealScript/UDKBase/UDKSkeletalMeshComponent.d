module UnrealScript.UDKBase.UDKSkeletalMeshComponent;

import ScriptClasses;
import UnrealScript.Engine.SkeletalMeshComponent;

extern(C++) interface UDKSkeletalMeshComponent : SkeletalMeshComponent
{
	public @property final auto ref float ClearStreamingTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1520); }
	public @property final bool bForceLoadTextures() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1516) & 0x1) != 0; }
	public @property final bool bForceLoadTextures(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1516) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1516) &= ~0x1; } return val; }
	public @property final auto ref float FOV() { return *cast(float*)(cast(size_t)cast(void*)this + 1512); }
	final void PreloadTextures(bool bForcePreload, float ClearTime)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bForcePreload;
		*cast(float*)&params[4] = ClearTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[35501], params.ptr, cast(void*)0);
	}
	final void SetFOV(float NewFOV)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = NewFOV;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[35505], params.ptr, cast(void*)0);
	}
}