module UnrealScript.TribesGame.GFxTrPage_FriendActions;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrFriendManager;
import UnrealScript.TribesGame.GFxTrAction;
import UnrealScript.TribesGame.GFxTrPage;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxTrPage_FriendActions : GFxTrPage
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.GFxTrPage_FriendActions")); }
	private static __gshared GFxTrPage_FriendActions mDefaultProperties;
	@property final static GFxTrPage_FriendActions DefaultProperties() { mixin(MGDPC("GFxTrPage_FriendActions", "GFxTrPage_FriendActions TribesGame.Default__GFxTrPage_FriendActions")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mInitialize;
			ScriptFunction mRefreshButtons;
			ScriptFunction mTakeFocus;
			ScriptFunction mFillData;
			ScriptFunction mFillOption;
			ScriptFunction mSpecialAction;
			ScriptFunction mPopupData;
			ScriptFunction mPopupComplete;
		}
		public @property static final
		{
			ScriptFunction Initialize() { mixin(MGF("mInitialize", "Function TribesGame.GFxTrPage_FriendActions.Initialize")); }
			ScriptFunction RefreshButtons() { mixin(MGF("mRefreshButtons", "Function TribesGame.GFxTrPage_FriendActions.RefreshButtons")); }
			ScriptFunction TakeFocus() { mixin(MGF("mTakeFocus", "Function TribesGame.GFxTrPage_FriendActions.TakeFocus")); }
			ScriptFunction FillData() { mixin(MGF("mFillData", "Function TribesGame.GFxTrPage_FriendActions.FillData")); }
			ScriptFunction FillOption() { mixin(MGF("mFillOption", "Function TribesGame.GFxTrPage_FriendActions.FillOption")); }
			ScriptFunction SpecialAction() { mixin(MGF("mSpecialAction", "Function TribesGame.GFxTrPage_FriendActions.SpecialAction")); }
			ScriptFunction PopupData() { mixin(MGF("mPopupData", "Function TribesGame.GFxTrPage_FriendActions.PopupData")); }
			ScriptFunction PopupComplete() { mixin(MGF("mPopupComplete", "Function TribesGame.GFxTrPage_FriendActions.PopupComplete")); }
		}
	}
	static struct Constants
	{
		enum
		{
			_JoinInGame = 0,
			_InviteToParty = 1,
			_SendMessage = 2,
			_UpdateNotes = 3,
			_InviteToTribe = 4,
			_RemoveFriend = 5,
		}
	}
	@property final
	{
		auto ref
		{
			TrFriendManager.EOnlineState TargetOnlineState() { mixin(MGPC("TrFriendManager.EOnlineState", 380)); }
			int TargetPlayerIndex() { mixin(MGPC("int", 376)); }
			ScriptString TargetPlayer() { mixin(MGPC("ScriptString", 364)); }
			int FriendActionPopupIndex() { mixin(MGPC("int", 356)); }
		}
		bool bWaitingForFriendActionPopup() { mixin(MGBPC(360, 0x1)); }
		bool bWaitingForFriendActionPopup(bool val) { mixin(MSBPC(360, 0x1)); }
	}
final:
	void Initialize()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Initialize, cast(void*)0, cast(void*)0);
	}
	void RefreshButtons()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.RefreshButtons, cast(void*)0, cast(void*)0);
	}
	int TakeFocus(int ActionIndex, GFxObject DataList)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		*cast(GFxObject*)&params[4] = DataList;
		(cast(ScriptObject)this).ProcessEvent(Functions.TakeFocus, params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	void FillData(GFxObject DataList)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(Functions.FillData, params.ptr, cast(void*)0);
	}
	GFxObject FillOption(int ActionIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.FillOption, params.ptr, cast(void*)0);
		return *cast(GFxObject*)&params[4];
	}
	void SpecialAction(GFxTrAction Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxTrAction*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(Functions.SpecialAction, params.ptr, cast(void*)0);
	}
	void PopupData(GFxObject Obj)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = Obj;
		(cast(ScriptObject)this).ProcessEvent(Functions.PopupData, params.ptr, cast(void*)0);
	}
	void PopupComplete(int Action, ScriptString TextInput)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = Action;
		*cast(ScriptString*)&params[4] = TextInput;
		(cast(ScriptObject)this).ProcessEvent(Functions.PopupComplete, params.ptr, cast(void*)0);
	}
}
