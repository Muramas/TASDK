module UnrealScript.TribesGame.TrAccolade_AirMail;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrAccolade;

extern(C++) interface TrAccolade_AirMail : TrAccolade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrAccolade_AirMail")); }
	private static __gshared TrAccolade_AirMail mDefaultProperties;
	@property final static TrAccolade_AirMail DefaultProperties() { mixin(MGDPC("TrAccolade_AirMail", "TrAccolade_AirMail TribesGame.Default__TrAccolade_AirMail")); }
}
