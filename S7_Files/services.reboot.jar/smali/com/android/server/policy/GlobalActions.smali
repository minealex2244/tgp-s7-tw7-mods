.class Lcom/android/server/policy/GlobalActions;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/GlobalActions$10;,
        Lcom/android/server/policy/GlobalActions$11;,
        Lcom/android/server/policy/GlobalActions$12;,
        Lcom/android/server/policy/GlobalActions$1;,
        Lcom/android/server/policy/GlobalActions$2;,
        Lcom/android/server/policy/GlobalActions$3;,
        Lcom/android/server/policy/GlobalActions$4;,
        Lcom/android/server/policy/GlobalActions$5;,
        Lcom/android/server/policy/GlobalActions$6;,
        Lcom/android/server/policy/GlobalActions$7;,
        Lcom/android/server/policy/GlobalActions$8;,
        Lcom/android/server/policy/GlobalActions$9;,
        Lcom/android/server/policy/GlobalActions$Action;,
        Lcom/android/server/policy/GlobalActions$BugReportAction;,
        Lcom/android/server/policy/GlobalActions$ConfirmDialogReceiver;,
        Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;,
        Lcom/android/server/policy/GlobalActions$LongPressAction;,
        Lcom/android/server/policy/GlobalActions$MyAdapter;,
        Lcom/android/server/policy/GlobalActions$PowerAction;,
        Lcom/android/server/policy/GlobalActions$RebootAction;,
        Lcom/android/server/policy/GlobalActions$SilentModeAction;,
        Lcom/android/server/policy/GlobalActions$SinglePressAction;,
        Lcom/android/server/policy/GlobalActions$ToggleAction;,
        Lcom/android/server/policy/GlobalActions$UIUpdateHandler;
    }
.end annotation


# static fields
.field public static final ACTION_BIXBY_GLOBAL_ACTIONS:Ljava/lang/String; = "com.intent.action.BIXBY_GLOBAL_ACTIONS"

.field private static final ACTION_CLEAR_COVER_STATE_CHANGE:Ljava/lang/String; = "com.samsung.cover.STATE_CHANGE"

.field public static final ACTION_NETWORK_MODE_CHANGED:Ljava/lang/String; = "android.intent.action.NETWORK_MODE_CHANGED"

.field public static final ACTION_SHOW_GLOBAL_ACTIONS:Ljava/lang/String; = "android.intent.action.SHOW_GLOBAL_ACTIONS"

.field private static final ACTION_STATUS_EXPAND:Ljava/lang/String; = "com.android.systemui.statusbar.EXPANDED"

.field private static final DIALOG_DISMISS_DELAY:I = 0x12c

.field private static final FORCE_RESTART_TIME:I = 0x7

.field private static final GLOBAL_ACTION_KEY_AIRPLANE:Ljava/lang/String; = "airplane"

.field private static final GLOBAL_ACTION_KEY_ASSIST:Ljava/lang/String; = "assist"

.field private static final GLOBAL_ACTION_KEY_BUGREPORT:Ljava/lang/String; = "bugreport"

.field private static final GLOBAL_ACTION_KEY_DATAMODE:Ljava/lang/String; = "datamode"

.field private static final GLOBAL_ACTION_KEY_EMERGENCYMODE:Ljava/lang/String; = "emergencymode"

.field private static final GLOBAL_ACTION_KEY_LOCKDOWN:Ljava/lang/String; = "lockdown"

.field private static final GLOBAL_ACTION_KEY_POWER:Ljava/lang/String; = "power"

.field private static final GLOBAL_ACTION_KEY_REBOOT:Ljava/lang/String; = "reboot"

.field private static final GLOBAL_ACTION_KEY_RESTART:Ljava/lang/String; = "restart"

.field private static final GLOBAL_ACTION_KEY_SETTINGS:Ljava/lang/String; = "settings"

.field private static final GLOBAL_ACTION_KEY_SILENT:Ljava/lang/String; = "silent"

.field private static final GLOBAL_ACTION_KEY_SUBSCREEN:Ljava/lang/String; = "subscreen"

.field private static final GLOBAL_ACTION_KEY_USERS:Ljava/lang/String; = "users"

.field private static final GLOBAL_ACTION_KEY_VOICEASSIST:Ljava/lang/String; = "voiceassist"

.field private static final MESSAGE_DISMISS:I = 0x0

.field private static final MESSAGE_HIDE_CONFIRM_LANDSCAPE:I = 0x9

.field private static final MESSAGE_HIDE_CONFIRM_PORTRAIT:I = 0x8

.field private static final MESSAGE_HIDE_QUICKPANEL:I = 0x4

.field private static final MESSAGE_ONCLICK_ITEM_WITH_BIXBY:I = 0xb

.field private static final MESSAGE_ONCLICK_WITH_FMMLOCK:I = 0xa

.field private static final MESSAGE_REFRESH:I = 0x1

.field private static final MESSAGE_REFRESH_AIRPLANEMODE:I = 0x3

.field private static final MESSAGE_REFRESH_RINGER:I = 0x5

.field private static final MESSAGE_SHOW:I = 0x2

.field private static final MESSAGE_SHOW_CONFIRM_LANDSCAPE:I = 0x7

.field private static final MESSAGE_SHOW_CONFIRM_PORTRAIT:I = 0x6

.field static final SAFE_DEBUG:Z

.field private static final SHOW_SILENT_TOGGLE:Z = true

.field private static final SIM_CDMA:I = 0x0

.field private static final SIM_GSM:I = 0x1

.field private static final SURVEY_LOG:Z

.field static SelectedItem:Landroid/view/View; = null

.field private static final TAG:Ljava/lang/String; = "GlobalActions"

.field private static final TW_GLOBALACTIONS_MSG_DELAY:I = 0x96

.field private static final isForceRestartSupport:Z

.field static mAccessibiltyShortcutEnabled:Z

.field private static mClearCoverWidth:I

.field private static mCountyCode:Ljava/lang/String;

.field private static mCoverViewListView:Landroid/widget/ListView;

.field private static mHasVibrator:Z

.field private static mIsAirplaneConfirmDialogExist:Z

.field private static mIsBugReportEnable:Z

.field private static mIsCancelEnable:Z

.field private static mIsClearCover:Z

.field private static mIsConfirmDlg:Z

.field private static mIsConfirmLandDlg:Z

.field private static mIsCoverOpen:Z

.field private static mIsFirstCreated:Z

.field private static mIsMiniCoverOpened:Z

.field private static mIsMiniDialogMode:Z

.field private static mIsSafemodeSupport:Z

.field static mIsSelectedItemTagForSecure:I

.field private static mNewFeatureForM:Z

.field private static mNewFeatureForMListView:Landroid/widget/ListView;

.field private static mPasscodeEditText:Landroid/widget/EditText;

.field private static mProKioskExitAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

.field private static mProKioskMenuPosition:I

.field private static mProKioskOptionShown:Z

.field private static final mProductName:Ljava/lang/String;

.field private static mSCoverRequestStatus:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mSViewCoverHeight:I

.field private static mSViewCoverWidth:I

.field private static final mSalesCode:Ljava/lang/String;

.field private static final mScafe:Ljava/lang/String;

.field private static final mScafeShot:Ljava/lang/String;

.field public static mSilentModeView:Landroid/view/View;

.field private static mStatusHeight:I

.field private static sIsConfirming:Z

.field private static sIsConfirmingGuard:Ljava/lang/Object;

.field private static sIsSecondConfirming:Z

.field static sIsSelectedItemTagForBixby:I


# instance fields
.field final DO_NOT_MOVE:I

.field final INTERVAL_SCOVER_TRANSITION:I

.field private cm:Landroid/net/ConnectivityManager;

.field current_x:F

.field current_x_land:F

.field current_y:F

.field current_y_land:F

.field displayheight:I

.field displaywidth:I

.field private isDataToggleSupport:Z

.field isShopDemo:Z

.field private isVZWOperatorAirplaneModeONReasonUSB3:Z

.field private mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

.field mAirplaneModeCancelClickListener:Landroid/content/DialogInterface$OnClickListener;

.field mAirplaneModeClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mAirplaneModeObserver:Landroid/database/ContentObserver;

.field private mAirplaneModeOn:Lcom/android/server/policy/GlobalActions$ToggleAction;

.field private mAirplaneMsg:Landroid/widget/TextView;

.field private mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

.field mAirplaneStringId:I

.field private final mAudioManager:Landroid/media/AudioManager;

.field private mBikeMode:Lcom/android/server/policy/GlobalActions$ToggleAction;

.field private mBikeModeDialog:Landroid/app/AlertDialog;

.field private mBikeModeObserver:Landroid/database/ContentObserver;

.field mBikeModeStringId:I

.field private mBixbyReceiver:Landroid/content/BroadcastReceiver;

.field mBottomViewDoubleItemWidth:I

.field mBottomViewSingleCancelItemWidth:I

.field mBottomViewSingleItemHeight:I

.field mBottomViewSingleItemWidth:I

.field private mBottomlayout:Landroid/widget/LinearLayout;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mBugReport:Landroid/widget/Button;

.field private mCancelButton:Landroid/widget/Button;

.field private mConfirmDialog:Landroid/app/AlertDialog;

.field private mConfirmDialogReceiver:Lcom/android/server/policy/GlobalActions$ConfirmDialogReceiver;

.field private mConfirmDialogSViewCoverDialog:Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;

.field mConfirmPowerOffIconResId:I

.field mConfirmRestartIconResId:I

.field private final mContext:Landroid/content/Context;

.field private mCoverColor:I

.field private mCoverManager:Lcom/samsung/android/cover/CoverManager;

.field private mCoverState:Lcom/samsung/android/cover/CoverState;

.field mDataModeClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mDataModeToggle:Lcom/android/server/policy/GlobalActions$ToggleAction;

.field mDataNetworkIconResId:I

.field private mDataNetworkState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

.field mDataNetworkStringId:I

.field private mDescriptionlayout:Landroid/widget/LinearLayout;

.field private mDeviceProvisioned:Z

.field private mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

.field private mDisplayConfirm:Z

.field private mDontShowCheckbox:Landroid/widget/CheckBox;

.field private final mDreamManager:Landroid/service/dreams/IDreamManager;

.field private mEmergency:Lcom/android/server/policy/GlobalActions$ToggleAction;

.field mEmergencyIconResId:I

.field private mEmergencyState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

.field mEmergencyStringId:I

.field private mForceRestartlayout:Landroid/widget/LinearLayout;

.field private mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

.field private mGlobalActionsFrameLayoutSViewCover:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;

.field private mHandler:Landroid/os/Handler;

.field private mHasTelephony:Z

.field private mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

.field private mIsDisableConfirm:Z

.field private mIsScreenOFF:Z

.field private mIsSecureKeyguard:Z

.field private mIsSetAirplaneOnMessageCHINA:Z

.field private mIsSetAirplaneOnMessageVZW:Z

.field mIsSupportedBlur:Z

.field private mIsWaitingForEcmExit:Z

.field mItemConfirmMessageWidth:I

.field mItemDivider:I

.field mItemDividerLand:I

.field mItemHeight:I

.field mItemHeightWithStatus:I

.field mItemLandscapeDivider:I

.field mItemMaxWidth:I

.field mItemMaxWidthLand:I

.field mItemPortraitDivider:I

.field mItemPortraitDividerOverFour:I

.field mItemPortraitDividerSViewCover:I

.field mItemWidth:I

.field mItemWidthLand:I

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/policy/GlobalActions$Action;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mKeyguardShowing:Z

.field private mKnoxCustomSystemManager:Lcom/samsung/android/knox/custom/SystemManager;

.field private mLDUWarning:Ljava/lang/String;

.field private mLandscapeLinearLayout:Landroid/widget/LinearLayout;

.field private mLayout:Landroid/widget/LinearLayout;

.field private mLinearLayout:Landroid/widget/LinearLayout;

.field mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

.field private mMSimServiceState:[I

.field mMessageViewPaddingBottom:I

.field mMessageViewPaddingTop:I

.field private mPhoneCount:I

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPhoneStateListener1:Landroid/telephony/PhoneStateListener;

.field mPowerOffIconResId:I

.field private mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

.field private mProKioskToggle:Lcom/android/server/policy/GlobalActions$ToggleAction;

.field private mRestart:Lcom/android/server/policy/GlobalActions$SinglePressAction;

.field mRestartIconResId:I

.field private mRingerModeReceiver:Landroid/content/BroadcastReceiver;

.field private mSContextManager:Landroid/hardware/scontext/SContextManager;

.field private mScrollview:Landroid/widget/ScrollView;

.field private mSecondAnimatedText:Landroid/widget/TextView;

.field private mSecureLockReceiver:Landroid/content/BroadcastReceiver;

.field private mSelectedItemNumbyBixby:I

.field private mShowOnAirplaneConfirm:Z

.field private final mShowSilentToggle:Z

.field private mSilentModeAction:Lcom/android/server/policy/GlobalActions$SilentModeAction;

.field mStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

.field private mSubScreenOn:Lcom/android/server/policy/GlobalActions$ToggleAction;

.field private mSubScreenState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

.field private mTempStringArray:[Ljava/lang/String;

.field private mTrueStringArray:[Ljava/lang/String;

.field private mUnableAirplanemode:Ljava/lang/String;

.field private mUnableEmergencyforFMM:Ljava/lang/String;

.field private mUnablePowerOff:Ljava/lang/String;

.field private mUnablePowerOffForFMM:Ljava/lang/String;

.field private mUnablePowerOffForSecureLock:Ljava/lang/String;

.field private mUnableRestartForFMM:Ljava/lang/String;

.field private mUsbManager:Landroid/hardware/usb/UsbManager;

.field private mViewCoverParentLayout:Landroid/widget/ImageView;

.field private final mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

.field private powermanager:Landroid/os/PowerManager;

.field private telephonyManager:Landroid/telephony/TelephonyManager;

.field private mRebootRecovery:Lcom/android/server/policy/GlobalActions$SinglePressAction;


# direct methods
.method static synthetic -get0(Lcom/android/server/policy/GlobalActions;)Landroid/net/ConnectivityManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->cm:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->isDataToggleSupport:Z

    return v0
.end method

.method static synthetic -get10(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mConfirmDialogSViewCoverDialog:Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get12()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/policy/GlobalActions;->mCountyCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get13()Landroid/widget/ListView;
    .locals 1

    sget-object v0, Lcom/android/server/policy/GlobalActions;->mCoverViewListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic -get14(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$ToggleAction;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mDataModeToggle:Lcom/android/server/policy/GlobalActions$ToggleAction;

    return-object v0
.end method

.method static synthetic -get15(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$ToggleAction$State;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mDataNetworkState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    return-object v0
.end method

.method static synthetic -get16(Lcom/android/server/policy/GlobalActions;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mDescriptionlayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic -get17(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mDeviceProvisioned:Z

    return v0
.end method

.method static synthetic -get18(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    return-object v0
.end method

.method static synthetic -get19(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mDisplayConfirm:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->isVZWOperatorAirplaneModeONReasonUSB3:Z

    return v0
.end method

.method static synthetic -get20(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$ToggleAction;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mEmergency:Lcom/android/server/policy/GlobalActions$ToggleAction;

    return-object v0
.end method

.method static synthetic -get21(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$ToggleAction$State;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mEmergencyState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    return-object v0
.end method

.method static synthetic -get22(Lcom/android/server/policy/GlobalActions;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mForceRestartlayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic -get23(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    return-object v0
.end method

.method static synthetic -get24(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayoutSViewCover:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;

    return-object v0
.end method

.method static synthetic -get25(Lcom/android/server/policy/GlobalActions;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get26(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mHasTelephony:Z

    return v0
.end method

.method static synthetic -get27()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mHasVibrator:Z

    return v0
.end method

.method static synthetic -get28()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z

    return v0
.end method

.method static synthetic -get29()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mIsConfirmDlg:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$MyAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    return-object v0
.end method

.method static synthetic -get30()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mIsConfirmLandDlg:Z

    return v0
.end method

.method static synthetic -get31()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    return v0
.end method

.method static synthetic -get32()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mIsMiniCoverOpened:Z

    return v0
.end method

.method static synthetic -get33()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mIsMiniDialogMode:Z

    return v0
.end method

.method static synthetic -get34()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mIsSafemodeSupport:Z

    return v0
.end method

.method static synthetic -get35(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mIsScreenOFF:Z

    return v0
.end method

.method static synthetic -get36(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mIsSecureKeyguard:Z

    return v0
.end method

.method static synthetic -get37(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mIsWaitingForEcmExit:Z

    return v0
.end method

.method static synthetic -get38(Lcom/android/server/policy/GlobalActions;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get39(Lcom/android/server/policy/GlobalActions;)Landroid/app/KeyguardManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$ToggleAction;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeOn:Lcom/android/server/policy/GlobalActions$ToggleAction;

    return-object v0
.end method

.method static synthetic -get40(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mKeyguardShowing:Z

    return v0
.end method

.method static synthetic -get41(Lcom/android/server/policy/GlobalActions;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mLDUWarning:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get42(Lcom/android/server/policy/GlobalActions;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mLandscapeLinearLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic -get43(Lcom/android/server/policy/GlobalActions;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mLinearLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic -get44(Lcom/android/server/policy/GlobalActions;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mMSimServiceState:[I

    return-object v0
.end method

.method static synthetic -get45()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z

    return v0
.end method

.method static synthetic -get46()Landroid/widget/EditText;
    .locals 1

    sget-object v0, Lcom/android/server/policy/GlobalActions;->mPasscodeEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic -get47(Lcom/android/server/policy/GlobalActions;)I
    .locals 1

    iget v0, p0, Lcom/android/server/policy/GlobalActions;->mPhoneCount:I

    return v0
.end method

.method static synthetic -get48()Landroid/app/AlertDialog$Builder;
    .locals 1

    sget-object v0, Lcom/android/server/policy/GlobalActions;->mProKioskExitAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    return-object v0
.end method

.method static synthetic -get49(Lcom/android/server/policy/GlobalActions;)Lcom/samsung/android/knox/custom/ProKioskManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$ToggleAction$State;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    return-object v0
.end method

.method static synthetic -get50()I
    .locals 1

    sget v0, Lcom/android/server/policy/GlobalActions;->mProKioskMenuPosition:I

    return v0
.end method

.method static synthetic -get51()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mProKioskOptionShown:Z

    return v0
.end method

.method static synthetic -get52(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$ToggleAction;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mProKioskToggle:Lcom/android/server/policy/GlobalActions$ToggleAction;

    return-object v0
.end method

.method static synthetic -get53()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/policy/GlobalActions;->mSalesCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get54()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/policy/GlobalActions;->mScafe:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get55(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$SilentModeAction;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mSilentModeAction:Lcom/android/server/policy/GlobalActions$SilentModeAction;

    return-object v0
.end method

.method static synthetic -get56(Lcom/android/server/policy/GlobalActions;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mTempStringArray:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get57(Lcom/android/server/policy/GlobalActions;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mTrueStringArray:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get58(Lcom/android/server/policy/GlobalActions;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mUnableAirplanemode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get59(Lcom/android/server/policy/GlobalActions;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mUnableEmergencyforFMM:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$ToggleAction;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mBikeMode:Lcom/android/server/policy/GlobalActions$ToggleAction;

    return-object v0
.end method

.method static synthetic -get60(Lcom/android/server/policy/GlobalActions;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mUnablePowerOff:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get61(Lcom/android/server/policy/GlobalActions;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mUnablePowerOffForFMM:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get62(Lcom/android/server/policy/GlobalActions;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mUnableRestartForFMM:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get63(Lcom/android/server/policy/GlobalActions;)Landroid/hardware/usb/UsbManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mUsbManager:Landroid/hardware/usb/UsbManager;

    return-object v0
.end method

.method static synthetic -get64(Lcom/android/server/policy/GlobalActions;)Landroid/view/WindowManagerPolicy$WindowManagerFuncs;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    return-object v0
.end method

.method static synthetic -get65()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/android/server/policy/GlobalActions;->sIsConfirmingGuard:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get66()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->sIsSecondConfirming:Z

    return v0
.end method

.method static synthetic -get7(Lcom/android/server/policy/GlobalActions;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mBikeModeDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/policy/GlobalActions;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mBottomlayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/policy/GlobalActions;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mConfirmDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/policy/GlobalActions;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/GlobalActions;->isVZWOperatorAirplaneModeONReasonUSB3:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$ToggleAction$State;)Lcom/android/server/policy/GlobalActions$ToggleAction$State;
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    return-object p1
.end method

.method static synthetic -set10(Lcom/android/server/policy/GlobalActions;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/GlobalActions;->mIsScreenOFF:Z

    return p1
.end method

.method static synthetic -set11(Lcom/android/server/policy/GlobalActions;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/GlobalActions;->mIsSetAirplaneOnMessageCHINA:Z

    return p1
.end method

.method static synthetic -set12(Lcom/android/server/policy/GlobalActions;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/GlobalActions;->mIsSetAirplaneOnMessageVZW:Z

    return p1
.end method

.method static synthetic -set13(Lcom/android/server/policy/GlobalActions;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/GlobalActions;->mIsWaitingForEcmExit:Z

    return p1
.end method

.method static synthetic -set14(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/policy/GlobalActions;->mProKioskOptionShown:Z

    return p0
.end method

.method static synthetic -set15(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$ToggleAction$State;)Lcom/android/server/policy/GlobalActions$ToggleAction$State;
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/GlobalActions;->mSubScreenState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    return-object p1
.end method

.method static synthetic -set16(Lcom/android/server/policy/GlobalActions;Landroid/hardware/usb/UsbManager;)Landroid/hardware/usb/UsbManager;
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/GlobalActions;->mUsbManager:Landroid/hardware/usb/UsbManager;

    return-object p1
.end method

.method static synthetic -set17(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/policy/GlobalActions;->sIsConfirming:Z

    return p0
.end method

.method static synthetic -set18(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/policy/GlobalActions;->sIsSecondConfirming:Z

    return p0
.end method

.method static synthetic -set2(Lcom/android/server/policy/GlobalActions;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/GlobalActions;->mBikeModeDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/server/policy/GlobalActions;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/GlobalActions;->mConfirmDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic -set4(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;)Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    return-object p1
.end method

.method static synthetic -set5(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/policy/GlobalActions;->mIsAirplaneConfirmDialogExist:Z

    return p0
.end method

.method static synthetic -set6(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/policy/GlobalActions;->mIsConfirmDlg:Z

    return p0
.end method

.method static synthetic -set7(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/policy/GlobalActions;->mIsConfirmLandDlg:Z

    return p0
.end method

.method static synthetic -set8(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/policy/GlobalActions;->mIsMiniCoverOpened:Z

    return p0
.end method

.method static synthetic -set9(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/policy/GlobalActions;->mIsMiniDialogMode:Z

    return p0
.end method

.method static synthetic -wrap0(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$Action;IZ)Landroid/view/View;
    .locals 1
    .param p1, "item"    # Lcom/android/server/policy/GlobalActions$Action;
    .param p2, "i"    # I
    .param p3, "isPort"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/policy/GlobalActions;->makeActionsItem(Lcom/android/server/policy/GlobalActions$Action;IZ)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/policy/GlobalActions;I)Z
    .locals 1
    .param p1, "itemResID"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/policy/GlobalActions;->isActionAvailable(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->isVoiceCapable()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap11(Lcom/android/server/policy/GlobalActions;I)I
    .locals 1
    .param p1, "subId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/policy/GlobalActions;->getPhoneId(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap12(Lcom/android/server/policy/GlobalActions;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "ProviderURI"    # Ljava/lang/String;
    .param p2, "queryValue"    # Ljava/lang/String;
    .param p3, "Arg"    # [Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/policy/GlobalActions;->isEDM(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap13(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$Action;Landroid/view/View;Z)V
    .locals 0
    .param p1, "item"    # Lcom/android/server/policy/GlobalActions$Action;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "isPort"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/policy/GlobalActions;->actionClicked(Lcom/android/server/policy/GlobalActions$Action;Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic -wrap14(Lcom/android/server/policy/GlobalActions;Z)V
    .locals 0
    .param p1, "on"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/policy/GlobalActions;->changeAirplaneModeSystemSetting(Z)V

    return-void
.end method

.method static synthetic -wrap15(Lcom/android/server/policy/GlobalActions;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->clearSCoverRequestStatus()V

    return-void
.end method

.method static synthetic -wrap16(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$ToggleAction;III)V
    .locals 0
    .param p1, "action"    # Lcom/android/server/policy/GlobalActions$ToggleAction;
    .param p2, "resTitle"    # I
    .param p3, "resON"    # I
    .param p4, "resOFF"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/policy/GlobalActions;->confirmDialog(Lcom/android/server/policy/GlobalActions$ToggleAction;III)V

    return-void
.end method

.method static synthetic -wrap17(Lcom/android/server/policy/GlobalActions;Landroid/view/View;Lcom/android/server/policy/GlobalActions$Action;Z)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "ac"    # Lcom/android/server/policy/GlobalActions$Action;
    .param p3, "needFMMlockCheck"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/policy/GlobalActions;->confirmedAction(Landroid/view/View;Lcom/android/server/policy/GlobalActions$Action;Z)V

    return-void
.end method

.method static synthetic -wrap18(Lcom/android/server/policy/GlobalActions;I)V
    .locals 0
    .param p1, "itemResID"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/policy/GlobalActions;->doActionByBixby(I)V

    return-void
.end method

.method static synthetic -wrap19(Lcom/android/server/policy/GlobalActions;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->handleShow()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->isCHINA()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap20(Lcom/android/server/policy/GlobalActions;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->initLandscapeAddView()V

    return-void
.end method

.method static synthetic -wrap21(Lcom/android/server/policy/GlobalActions;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->initPortraitAddView()V

    return-void
.end method

.method static synthetic -wrap22(Lcom/android/server/policy/GlobalActions;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->onAirplaneModeChanged()V

    return-void
.end method

.method static synthetic -wrap23(Lcom/android/server/policy/GlobalActions;Z)V
    .locals 0
    .param p1, "isOnClick"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/policy/GlobalActions;->onClickForHideLandscapeConfirmDialog(Z)V

    return-void
.end method

.method static synthetic -wrap24(Lcom/android/server/policy/GlobalActions;Z)V
    .locals 0
    .param p1, "isOnClick"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/policy/GlobalActions;->onClickForHidePortraitConfirmDialog(Z)V

    return-void
.end method

.method static synthetic -wrap25(Lcom/android/server/policy/GlobalActions;Landroid/view/View;Z)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "isOnClick"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/GlobalActions;->onClickForLandscapeConfirmDialog(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic -wrap26(Lcom/android/server/policy/GlobalActions;Landroid/view/View;Z)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "isOnClick"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/GlobalActions;->onClickForPortraitConfirmDialog(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic -wrap27(Lcom/android/server/policy/GlobalActions;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->onToggleDatamode()V

    return-void
.end method

.method static synthetic -wrap28(Lcom/android/server/policy/GlobalActions;Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/policy/GlobalActions;->registerPhoneStateListener(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic -wrap29(Lcom/android/server/policy/GlobalActions;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->unregisterPhoneStateListener()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->isFMMlocked()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap30(Lcom/android/server/policy/GlobalActions;ILcom/android/server/policy/GlobalActions$ToggleAction$State;)V
    .locals 0
    .param p1, "whichItem"    # I
    .param p2, "state"    # Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/GlobalActions;->updateActions(ILcom/android/server/policy/GlobalActions$ToggleAction$State;)V

    return-void
.end method

.method static synthetic -wrap31(Lcom/android/server/policy/GlobalActions;Ljava/lang/String;)V
    .locals 0
    .param p1, "sender"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/policy/GlobalActions;->virtualDismissInSCover(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->isGlobalActionConfirming()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->isMSim()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap6(Lcom/android/server/policy/GlobalActions;I)Z
    .locals 1
    .param p1, "slotidx"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/policy/GlobalActions;->isSimCardInserted(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap7(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->isSimReady()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap8(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->isTSafeLock()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap9(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->isUSA()Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 214
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v2

    sput-boolean v2, Lcom/android/server/policy/GlobalActions;->SAFE_DEBUG:Z

    .line 258
    sput-boolean v1, Lcom/android/server/policy/GlobalActions;->mIsConfirmDlg:Z

    .line 259
    sput-boolean v1, Lcom/android/server/policy/GlobalActions;->mIsConfirmLandDlg:Z

    .line 260
    sput-boolean v1, Lcom/android/server/policy/GlobalActions;->mIsBugReportEnable:Z

    .line 261
    sput-boolean v1, Lcom/android/server/policy/GlobalActions;->mIsCancelEnable:Z

    .line 262
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string/jumbo v3, "CscFeature_Framework_SupportRebootWithSafemode"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/android/server/policy/GlobalActions;->mIsSafemodeSupport:Z

    .line 290
    sput v1, Lcom/android/server/policy/GlobalActions;->mProKioskMenuPosition:I

    .line 292
    sput-boolean v1, Lcom/android/server/policy/GlobalActions;->mProKioskOptionShown:Z

    .line 293
    sput-object v4, Lcom/android/server/policy/GlobalActions;->mProKioskExitAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 294
    sput-object v4, Lcom/android/server/policy/GlobalActions;->mPasscodeEditText:Landroid/widget/EditText;

    .line 300
    sput-boolean v1, Lcom/android/server/policy/GlobalActions;->sIsConfirming:Z

    .line 301
    sput-boolean v1, Lcom/android/server/policy/GlobalActions;->sIsSecondConfirming:Z

    .line 302
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    sput-object v2, Lcom/android/server/policy/GlobalActions;->sIsConfirmingGuard:Ljava/lang/Object;

    .line 308
    sput-object v4, Lcom/android/server/policy/GlobalActions;->mCoverViewListView:Landroid/widget/ListView;

    .line 311
    sput-object v4, Lcom/android/server/policy/GlobalActions;->mNewFeatureForMListView:Landroid/widget/ListView;

    .line 328
    sput-boolean v0, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    .line 329
    sput-boolean v1, Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z

    .line 332
    sput-boolean v1, Lcom/android/server/policy/GlobalActions;->mIsMiniDialogMode:Z

    .line 333
    sput-boolean v1, Lcom/android/server/policy/GlobalActions;->mIsMiniCoverOpened:Z

    .line 336
    sput-object v4, Lcom/android/server/policy/GlobalActions;->mSilentModeView:Landroid/view/View;

    .line 337
    sput v1, Lcom/android/server/policy/GlobalActions;->mSViewCoverWidth:I

    .line 338
    sput v1, Lcom/android/server/policy/GlobalActions;->mSViewCoverHeight:I

    .line 339
    sput v1, Lcom/android/server/policy/GlobalActions;->mClearCoverWidth:I

    .line 340
    sput v1, Lcom/android/server/policy/GlobalActions;->mStatusHeight:I

    .line 342
    const-string/jumbo v2, "ro.build.scafe"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/server/policy/GlobalActions;->mScafe:Ljava/lang/String;

    .line 343
    const-string/jumbo v2, "ro.build.scafe.shot"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/server/policy/GlobalActions;->mScafeShot:Ljava/lang/String;

    .line 344
    const-string/jumbo v2, "ro.product.name"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/server/policy/GlobalActions;->mProductName:Ljava/lang/String;

    .line 345
    const-string/jumbo v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/server/policy/GlobalActions;->mSalesCode:Ljava/lang/String;

    .line 346
    const-string/jumbo v2, "ro.csc.country_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/server/policy/GlobalActions;->mCountyCode:Ljava/lang/String;

    .line 356
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string/jumbo v3, "CscFeature_Framework_SupportForceRestartGlobalAction"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/android/server/policy/GlobalActions;->isForceRestartSupport:Z

    .line 361
    sput-boolean v0, Lcom/android/server/policy/GlobalActions;->mIsFirstCreated:Z

    .line 375
    sput-boolean v1, Lcom/android/server/policy/GlobalActions;->mIsAirplaneConfirmDialogExist:Z

    .line 378
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string/jumbo v3, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/android/server/policy/GlobalActions;->SURVEY_LOG:Z

    .line 392
    const-string/jumbo v2, "americano"

    sget-object v3, Lcom/android/server/policy/GlobalActions;->mScafe:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "mocha"

    sget-object v3, Lcom/android/server/policy/GlobalActions;->mScafe:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    sput-boolean v0, Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z

    .line 429
    sput-boolean v1, Lcom/android/server/policy/GlobalActions;->mAccessibiltyShortcutEnabled:Z

    .line 430
    sput-object v4, Lcom/android/server/policy/GlobalActions;->SelectedItem:Landroid/view/View;

    .line 432
    sput v1, Lcom/android/server/policy/GlobalActions;->sIsSelectedItemTagForBixby:I

    .line 433
    sput v1, Lcom/android/server/policy/GlobalActions;->mIsSelectedItemTagForSecure:I

    .line 5029
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/policy/GlobalActions;->mSCoverRequestStatus:Ljava/util/HashSet;

    .line 210
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManagerFuncs"    # Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 445
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 255
    iput-boolean v2, p0, Lcom/android/server/policy/GlobalActions;->mKeyguardShowing:Z

    .line 256
    iput-boolean v2, p0, Lcom/android/server/policy/GlobalActions;->mDeviceProvisioned:Z

    .line 264
    sget-object v1, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    .line 266
    sget-object v1, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mDataNetworkState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    .line 267
    sget-object v1, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mSubScreenState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    .line 273
    iput-boolean v2, p0, Lcom/android/server/policy/GlobalActions;->mIsWaitingForEcmExit:Z

    .line 280
    iput-boolean v3, p0, Lcom/android/server/policy/GlobalActions;->mDisplayConfirm:Z

    .line 288
    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    .line 289
    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mKnoxCustomSystemManager:Lcom/samsung/android/knox/custom/SystemManager;

    .line 291
    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mProKioskToggle:Lcom/android/server/policy/GlobalActions$ToggleAction;

    .line 304
    sget-object v1, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mEmergencyState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    .line 309
    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mLayout:Landroid/widget/LinearLayout;

    .line 312
    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    .line 313
    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayoutSViewCover:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;

    .line 314
    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mLinearLayout:Landroid/widget/LinearLayout;

    .line 315
    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mLandscapeLinearLayout:Landroid/widget/LinearLayout;

    .line 316
    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mBottomlayout:Landroid/widget/LinearLayout;

    .line 317
    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mForceRestartlayout:Landroid/widget/LinearLayout;

    .line 318
    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mDescriptionlayout:Landroid/widget/LinearLayout;

    .line 319
    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mSecondAnimatedText:Landroid/widget/TextView;

    .line 320
    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mScrollview:Landroid/widget/ScrollView;

    .line 321
    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    .line 322
    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mCancelButton:Landroid/widget/Button;

    .line 323
    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mBugReport:Landroid/widget/Button;

    .line 325
    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mViewCoverParentLayout:Landroid/widget/ImageView;

    .line 326
    iput v2, p0, Lcom/android/server/policy/GlobalActions;->mCoverColor:I

    .line 330
    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 348
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string/jumbo v4, "CscFeature_Framework_SupportDataModeSwitchGlobalAction"

    invoke-virtual {v1, v4}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/policy/GlobalActions;->isDataToggleSupport:Z

    .line 349
    iput-boolean v2, p0, Lcom/android/server/policy/GlobalActions;->isVZWOperatorAirplaneModeONReasonUSB3:Z

    .line 350
    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 360
    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    .line 368
    iput-boolean v3, p0, Lcom/android/server/policy/GlobalActions;->mShowOnAirplaneConfirm:Z

    .line 369
    iput-boolean v2, p0, Lcom/android/server/policy/GlobalActions;->mIsSetAirplaneOnMessageVZW:Z

    .line 370
    iput-boolean v2, p0, Lcom/android/server/policy/GlobalActions;->mIsSetAirplaneOnMessageCHINA:Z

    .line 371
    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mDontShowCheckbox:Landroid/widget/CheckBox;

    .line 372
    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneMsg:Landroid/widget/TextView;

    .line 373
    new-array v1, v3, [Ljava/lang/String;

    const-string/jumbo v4, "temp"

    aput-object v4, v1, v2

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mTempStringArray:[Ljava/lang/String;

    .line 374
    new-array v1, v3, [Ljava/lang/String;

    const-string/jumbo v4, "true"

    aput-object v4, v1, v2

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mTrueStringArray:[Ljava/lang/String;

    .line 381
    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 382
    iput-boolean v2, p0, Lcom/android/server/policy/GlobalActions;->mIsSecureKeyguard:Z

    .line 383
    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mUnablePowerOff:Ljava/lang/String;

    .line 384
    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mUnableAirplanemode:Ljava/lang/String;

    .line 385
    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mLDUWarning:Ljava/lang/String;

    .line 386
    iput-boolean v2, p0, Lcom/android/server/policy/GlobalActions;->isShopDemo:Z

    .line 388
    iput v2, p0, Lcom/android/server/policy/GlobalActions;->mPhoneCount:I

    .line 393
    iput v2, p0, Lcom/android/server/policy/GlobalActions;->displayheight:I

    .line 394
    iput v2, p0, Lcom/android/server/policy/GlobalActions;->displaywidth:I

    .line 395
    iput v2, p0, Lcom/android/server/policy/GlobalActions;->mBottomViewSingleItemWidth:I

    .line 396
    iput v2, p0, Lcom/android/server/policy/GlobalActions;->mBottomViewSingleCancelItemWidth:I

    .line 397
    iput v2, p0, Lcom/android/server/policy/GlobalActions;->mBottomViewDoubleItemWidth:I

    .line 398
    iput v2, p0, Lcom/android/server/policy/GlobalActions;->mBottomViewSingleItemHeight:I

    .line 399
    iput v6, p0, Lcom/android/server/policy/GlobalActions;->current_x:F

    .line 400
    iput v6, p0, Lcom/android/server/policy/GlobalActions;->current_y:F

    .line 401
    iput v6, p0, Lcom/android/server/policy/GlobalActions;->current_x_land:F

    .line 402
    iput v6, p0, Lcom/android/server/policy/GlobalActions;->current_y_land:F

    .line 403
    iput v2, p0, Lcom/android/server/policy/GlobalActions;->mItemWidth:I

    .line 404
    iput v2, p0, Lcom/android/server/policy/GlobalActions;->mItemWidthLand:I

    .line 405
    iput v2, p0, Lcom/android/server/policy/GlobalActions;->mItemHeight:I

    .line 406
    iput v2, p0, Lcom/android/server/policy/GlobalActions;->mItemHeightWithStatus:I

    .line 407
    iput v2, p0, Lcom/android/server/policy/GlobalActions;->mItemMaxWidth:I

    .line 408
    iput v2, p0, Lcom/android/server/policy/GlobalActions;->mItemMaxWidthLand:I

    .line 409
    iput v2, p0, Lcom/android/server/policy/GlobalActions;->mMessageViewPaddingTop:I

    .line 410
    iput v2, p0, Lcom/android/server/policy/GlobalActions;->mMessageViewPaddingBottom:I

    .line 411
    iput v2, p0, Lcom/android/server/policy/GlobalActions;->mItemPortraitDivider:I

    .line 412
    iput v2, p0, Lcom/android/server/policy/GlobalActions;->mItemPortraitDividerOverFour:I

    .line 413
    iput v2, p0, Lcom/android/server/policy/GlobalActions;->mItemLandscapeDivider:I

    .line 414
    iput v2, p0, Lcom/android/server/policy/GlobalActions;->mItemPortraitDividerSViewCover:I

    .line 415
    iput v2, p0, Lcom/android/server/policy/GlobalActions;->mItemDivider:I

    .line 416
    iput v2, p0, Lcom/android/server/policy/GlobalActions;->mItemDividerLand:I

    .line 417
    iput v2, p0, Lcom/android/server/policy/GlobalActions;->mItemConfirmMessageWidth:I

    .line 418
    iput v2, p0, Lcom/android/server/policy/GlobalActions;->mPowerOffIconResId:I

    .line 419
    iput v2, p0, Lcom/android/server/policy/GlobalActions;->mConfirmPowerOffIconResId:I

    .line 420
    iput v2, p0, Lcom/android/server/policy/GlobalActions;->mEmergencyIconResId:I

    .line 421
    iput v2, p0, Lcom/android/server/policy/GlobalActions;->mRestartIconResId:I

    .line 422
    iput v2, p0, Lcom/android/server/policy/GlobalActions;->mConfirmRestartIconResId:I

    .line 423
    iput v2, p0, Lcom/android/server/policy/GlobalActions;->mDataNetworkIconResId:I

    .line 424
    iput v2, p0, Lcom/android/server/policy/GlobalActions;->mEmergencyStringId:I

    .line 425
    iput v2, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneStringId:I

    .line 426
    iput v2, p0, Lcom/android/server/policy/GlobalActions;->mDataNetworkStringId:I

    .line 427
    iput v2, p0, Lcom/android/server/policy/GlobalActions;->mBikeModeStringId:I

    .line 428
    iput-boolean v2, p0, Lcom/android/server/policy/GlobalActions;->mIsSupportedBlur:Z

    .line 431
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mSelectedItemNumbyBixby:I

    .line 434
    const/16 v1, -0x3e8

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->DO_NOT_MOVE:I

    .line 435
    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 436
    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mUnablePowerOffForFMM:Ljava/lang/String;

    .line 437
    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mUnableRestartForFMM:Ljava/lang/String;

    .line 438
    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mUnableEmergencyforFMM:Ljava/lang/String;

    .line 439
    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mUnablePowerOffForSecureLock:Ljava/lang/String;

    .line 440
    iput-boolean v2, p0, Lcom/android/server/policy/GlobalActions;->mIsScreenOFF:Z

    .line 441
    iput-boolean v2, p0, Lcom/android/server/policy/GlobalActions;->mIsDisableConfirm:Z

    .line 864
    new-instance v1, Lcom/android/server/policy/GlobalActions$1;

    invoke-direct {v1, p0}, Lcom/android/server/policy/GlobalActions$1;-><init>(Lcom/android/server/policy/GlobalActions;)V

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    .line 3340
    new-instance v1, Lcom/android/server/policy/GlobalActions$2;

    invoke-direct {v1, p0}, Lcom/android/server/policy/GlobalActions$2;-><init>(Lcom/android/server/policy/GlobalActions;)V

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 3346
    new-instance v1, Lcom/android/server/policy/GlobalActions$3;

    invoke-direct {v1, p0}, Lcom/android/server/policy/GlobalActions$3;-><init>(Lcom/android/server/policy/GlobalActions;)V

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeCancelClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 3363
    new-instance v1, Lcom/android/server/policy/GlobalActions$4;

    invoke-direct {v1, p0}, Lcom/android/server/policy/GlobalActions$4;-><init>(Lcom/android/server/policy/GlobalActions;)V

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mDataModeClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 4324
    new-instance v1, Lcom/android/server/policy/GlobalActions$5;

    invoke-direct {v1, p0}, Lcom/android/server/policy/GlobalActions$5;-><init>(Lcom/android/server/policy/GlobalActions;)V

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 4376
    new-instance v1, Lcom/android/server/policy/GlobalActions$6;

    invoke-direct {v1, p0}, Lcom/android/server/policy/GlobalActions$6;-><init>(Lcom/android/server/policy/GlobalActions;)V

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mSecureLockReceiver:Landroid/content/BroadcastReceiver;

    .line 4389
    new-instance v1, Lcom/android/server/policy/GlobalActions$7;

    invoke-direct {v1, p0}, Lcom/android/server/policy/GlobalActions$7;-><init>(Lcom/android/server/policy/GlobalActions;)V

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mBixbyReceiver:Landroid/content/BroadcastReceiver;

    .line 4491
    new-instance v1, Lcom/android/server/policy/GlobalActions$8;

    invoke-direct {v1, p0}, Lcom/android/server/policy/GlobalActions$8;-><init>(Lcom/android/server/policy/GlobalActions;)V

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mPhoneStateListener1:Landroid/telephony/PhoneStateListener;

    .line 4505
    new-instance v1, Lcom/android/server/policy/GlobalActions$9;

    invoke-direct {v1, p0}, Lcom/android/server/policy/GlobalActions$9;-><init>(Lcom/android/server/policy/GlobalActions;)V

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 4547
    new-instance v1, Lcom/android/server/policy/GlobalActions$10;

    invoke-direct {v1, p0}, Lcom/android/server/policy/GlobalActions$10;-><init>(Lcom/android/server/policy/GlobalActions;)V

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    .line 4563
    new-instance v1, Lcom/android/server/policy/GlobalActions$11;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v4}, Lcom/android/server/policy/GlobalActions$11;-><init>(Lcom/android/server/policy/GlobalActions;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    .line 4570
    new-instance v1, Lcom/android/server/policy/GlobalActions$12;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v4}, Lcom/android/server/policy/GlobalActions$12;-><init>(Lcom/android/server/policy/GlobalActions;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mBikeModeObserver:Landroid/database/ContentObserver;

    .line 4611
    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    .line 5041
    const/16 v1, 0xc8

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->INTERVAL_SCOVER_TRANSITION:I

    .line 447
    new-instance v1, Landroid/view/ContextThemeWrapper;

    const v4, 0x103012b

    invoke-direct {v1, p1, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    .line 449
    iput-object p2, p0, Lcom/android/server/policy/GlobalActions;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .line 450
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "audio"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mAudioManager:Landroid/media/AudioManager;

    .line 452
    const-string/jumbo v1, "dreams"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 451
    invoke-static {v1}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    .line 456
    invoke-static {}, Lcom/samsung/android/knox/custom/ProKioskManager;->getInstance()Lcom/samsung/android/knox/custom/ProKioskManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    .line 457
    invoke-static {}, Lcom/samsung/android/knox/custom/SystemManager;->getInstance()Lcom/samsung/android/knox/custom/SystemManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mKnoxCustomSystemManager:Lcom/samsung/android/knox/custom/SystemManager;

    .line 465
    const-string/jumbo v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 464
    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->cm:Landroid/net/ConnectivityManager;

    .line 466
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->cm:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/policy/GlobalActions;->mHasTelephony:Z

    .line 468
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "power"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->powermanager:Landroid/os/PowerManager;

    .line 470
    const-string/jumbo v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->telephonyManager:Landroid/telephony/TelephonyManager;

    .line 472
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/server/policy/GlobalActions;->registerPhoneStateListener(Landroid/content/Context;)V

    .line 476
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->telephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Lcom/android/server/policy/GlobalActions;->mPhoneStateListener1:Landroid/telephony/PhoneStateListener;

    const/16 v5, 0x20

    invoke-virtual {v1, v4, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 477
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 478
    const-string/jumbo v4, "airplane_mode_on"

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 479
    iget-object v5, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    .line 477
    invoke-virtual {v1, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 480
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string/jumbo v4, "CscFeature_Common_ConfigBikeMode"

    invoke-virtual {v1, v4}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "bikemode"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 481
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string/jumbo v4, "CscFeature_Common_ConfigBikeMode"

    invoke-virtual {v1, v4}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "globalaction"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 480
    if-eqz v1, :cond_0

    .line 482
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 483
    const-string/jumbo v4, "isBikeMode"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/policy/GlobalActions;->mBikeModeObserver:Landroid/database/ContentObserver;

    .line 482
    invoke-virtual {v1, v4, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 484
    const v1, 0x10408a0

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mBikeModeStringId:I

    .line 486
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "vibrator"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 487
    .local v0, "vibrator":Landroid/os/Vibrator;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v1

    :goto_0
    sput-boolean v1, Lcom/android/server/policy/GlobalActions;->mHasVibrator:Z

    .line 489
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 490
    const v4, 0x1120084

    .line 489
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/android/server/policy/GlobalActions;->mShowSilentToggle:Z

    .line 494
    const-string/jumbo v1, "TMB"

    sget-object v3, Lcom/android/server/policy/GlobalActions;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 495
    iput-boolean v2, p0, Lcom/android/server/policy/GlobalActions;->mDisplayConfirm:Z

    .line 500
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/policy/GlobalActions;->initCoverManager(Landroid/content/Context;)V

    .line 502
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->registerBixbyReceiver()V

    .line 503
    invoke-virtual {p0}, Lcom/android/server/policy/GlobalActions;->initStrings()V

    .line 504
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->initValueForCreate()V

    .line 445
    return-void

    :cond_2
    move v1, v2

    .line 487
    goto :goto_0

    :cond_3
    move v1, v3

    .line 489
    goto :goto_1
.end method

.method private actionClicked(Lcom/android/server/policy/GlobalActions$Action;Landroid/view/View;Z)V
    .locals 9
    .param p1, "item"    # Lcom/android/server/policy/GlobalActions$Action;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "isPort"    # Z

    .prologue
    const/4 v8, 0x1

    .line 2206
    move-object v0, p1

    .line 2207
    .local v0, "action":Lcom/android/server/policy/GlobalActions$Action;
    move-object v4, p2

    .line 2208
    .local v4, "tempView":Landroid/view/View;
    const v6, 0x10203d9

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    .line 2210
    .local v5, "v":Landroid/widget/FrameLayout;
    invoke-virtual {v5}, Landroid/widget/FrameLayout;->isEnabled()Z

    move-result v6

    if-nez v6, :cond_0

    return-void

    .line 2211
    :cond_0
    invoke-virtual {v5}, Landroid/widget/FrameLayout;->isFocusable()Z

    move-result v6

    if-nez v6, :cond_1

    return-void

    .line 2213
    :cond_1
    const v6, 0x1020006

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 2214
    .local v1, "imageView":Landroid/widget/ImageView;
    const v6, 0x102000b

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 2215
    .local v2, "messageView":Landroid/widget/TextView;
    const v6, 0x10203d7

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 2217
    .local v3, "statusView":Landroid/widget/TextView;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 2218
    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/server/policy/GlobalActions;->isActionAvailable(I)Z

    move-result v6

    if-nez v6, :cond_2

    return-void

    .line 2221
    :cond_2
    invoke-virtual {v2}, Landroid/widget/TextView;->getHeight()I

    move-result v6

    invoke-virtual {v3}, Landroid/widget/TextView;->getHeight()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {p0, v5, v6}, Lcom/android/server/policy/GlobalActions;->calculateDescritionViewHeight(Landroid/view/View;I)V

    .line 2222
    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sput v6, Lcom/android/server/policy/GlobalActions;->sIsSelectedItemTagForBixby:I

    .line 2224
    sget-boolean v6, Lcom/android/server/policy/GlobalActions;->mIsConfirmDlg:Z

    if-nez v6, :cond_3

    invoke-direct {p0, v5}, Lcom/android/server/policy/GlobalActions;->isSingleActionItem(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_3

    if-eqz p3, :cond_3

    iget-boolean v6, p0, Lcom/android/server/policy/GlobalActions;->mIsDisableConfirm:Z

    if-eqz v6, :cond_5

    .line 2226
    :cond_3
    sget-boolean v6, Lcom/android/server/policy/GlobalActions;->mIsConfirmLandDlg:Z

    if-nez v6, :cond_4

    invoke-direct {p0, v5}, Lcom/android/server/policy/GlobalActions;->isSingleActionItem(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_4

    if-eqz p3, :cond_6

    .line 2229
    :cond_4
    invoke-direct {p0, p2, p1, v8}, Lcom/android/server/policy/GlobalActions;->confirmedAction(Landroid/view/View;Lcom/android/server/policy/GlobalActions$Action;Z)V

    .line 2205
    :goto_0
    return-void

    .line 2225
    :cond_5
    invoke-direct {p0, p2, v8}, Lcom/android/server/policy/GlobalActions;->onClickForPortraitConfirmDialog(Landroid/view/View;Z)V

    goto :goto_0

    .line 2226
    :cond_6
    iget-boolean v6, p0, Lcom/android/server/policy/GlobalActions;->mIsDisableConfirm:Z

    if-nez v6, :cond_4

    .line 2227
    invoke-direct {p0, p2, v8}, Lcom/android/server/policy/GlobalActions;->onClickForLandscapeConfirmDialog(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method static synthetic access$500(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private addCustomDialogItems(Landroid/graphics/drawable/BitmapDrawable;Ljava/lang/String;Landroid/content/Intent;ILjava/util/ArrayList;)Z
    .locals 8
    .param p1, "iconDraw"    # Landroid/graphics/drawable/BitmapDrawable;
    .param p2, "messageChars"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "action"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/BitmapDrawable;",
            "Ljava/lang/String;",
            "Landroid/content/Intent;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/policy/GlobalActions$Action;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 2745
    .local p5, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/policy/GlobalActions$Action;>;"
    iget-object v6, p0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    monitor-enter v6

    .line 2746
    :try_start_0
    iget-object v7, p0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/policy/GlobalActions$37;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p4

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/policy/GlobalActions$37;-><init>(Lcom/android/server/policy/GlobalActions;Landroid/graphics/drawable/Drawable;Ljava/lang/String;ILandroid/content/Intent;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v6

    return v0

    .line 2745
    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method private addDialogItemsIfEnabled(ILcom/android/server/policy/GlobalActions$Action;Ljava/util/ArrayList;Z)Z
    .locals 2
    .param p1, "valueToCheck"    # I
    .param p2, "actionToAdd"    # Lcom/android/server/policy/GlobalActions$Action;
    .param p4, "ifEnabledMoveIncrementPosition"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/server/policy/GlobalActions$Action;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/policy/GlobalActions$Action;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    .line 2732
    .local p3, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/policy/GlobalActions$Action;>;"
    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    .line 2733
    const-string/jumbo v0, "content://com.sec.knox.provider2/KnoxCustomManagerService2"

    const-string/jumbo v1, "getSealedPowerDialogItems"

    invoke-direct {p0, v0, v1}, Lcom/android/server/policy/GlobalActions;->isIntEDM(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_1

    .line 2734
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2735
    if-eqz p4, :cond_0

    .line 2736
    sget v0, Lcom/android/server/policy/GlobalActions;->mProKioskMenuPosition:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/server/policy/GlobalActions;->mProKioskMenuPosition:I

    .line 2738
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 2741
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private addUsersToMenu(Ljava/util/ArrayList;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/policy/GlobalActions$Action;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3133
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/policy/GlobalActions$Action;>;"
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/UserManager;

    .line 3134
    .local v8, "um":Landroid/os/UserManager;
    invoke-virtual {v8}, Landroid/os/UserManager;->isUserSwitcherEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3135
    invoke-virtual {v8}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v10

    .line 3136
    .local v10, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v6

    .line 3137
    .local v6, "currentUser":Landroid/content/pm/UserInfo;
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "user$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 3138
    .local v5, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->supportsSwitchToByUser()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3139
    if-nez v6, :cond_2

    .line 3140
    iget v1, v5, Landroid/content/pm/UserInfo;->id:I

    if-nez v1, :cond_1

    :goto_1
    const/4 v7, 0x1

    .line 3141
    .local v7, "isCurrentUser":Z
    :goto_2
    iget-object v1, v5, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, v5, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 3143
    :goto_3
    new-instance v0, Lcom/android/server/policy/GlobalActions$42;

    .line 3145
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v5, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, v5, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    :goto_4
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3146
    if-eqz v7, :cond_5

    const-string/jumbo v1, " \u2714"

    .line 3145
    :goto_5
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3144
    const v2, 0x108044f

    move-object v1, p0

    .line 3143
    invoke-direct/range {v0 .. v5}, Lcom/android/server/policy/GlobalActions$42;-><init>(Lcom/android/server/policy/GlobalActions;ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/content/pm/UserInfo;)V

    .line 3169
    .local v0, "switchToUser":Lcom/android/server/policy/GlobalActions$SinglePressAction;
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3140
    .end local v0    # "switchToUser":Lcom/android/server/policy/GlobalActions$SinglePressAction;
    .end local v7    # "isCurrentUser":Z
    :cond_1
    const/4 v7, 0x0

    .restart local v7    # "isCurrentUser":Z
    goto :goto_2

    .end local v7    # "isCurrentUser":Z
    :cond_2
    iget v1, v6, Landroid/content/pm/UserInfo;->id:I

    iget v2, v5, Landroid/content/pm/UserInfo;->id:I

    if-ne v1, v2, :cond_1

    goto :goto_1

    .line 3142
    .restart local v7    # "isCurrentUser":Z
    :cond_3
    const/4 v3, 0x0

    .local v3, "icon":Landroid/graphics/drawable/Drawable;
    goto :goto_3

    .line 3145
    .end local v3    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_4
    const-string/jumbo v1, "Primary"

    goto :goto_4

    .line 3146
    :cond_5
    const-string/jumbo v1, ""

    goto :goto_5

    .line 3132
    .end local v5    # "user":Landroid/content/pm/UserInfo;
    .end local v6    # "currentUser":Landroid/content/pm/UserInfo;
    .end local v7    # "isCurrentUser":Z
    .end local v9    # "user$iterator":Ljava/util/Iterator;
    .end local v10    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_6
    return-void
.end method

.method private adjustForceRestartView()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 5565
    sget-boolean v2, Lcom/android/server/policy/GlobalActions;->isForceRestartSupport:Z

    if-eqz v2, :cond_1

    sget-boolean v2, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v2, :cond_0

    sget-boolean v2, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v2, :cond_1

    sget-boolean v2, Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z

    if-eqz v2, :cond_1

    .line 5566
    :cond_0
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    const v3, 0x10203cd

    invoke-virtual {v2, v3}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/server/policy/GlobalActions;->mForceRestartlayout:Landroid/widget/LinearLayout;

    .line 5567
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    const v3, 0x10203ce

    invoke-virtual {v2, v3}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 5568
    .local v1, "tvForceRestartMessage":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x104013f

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 5569
    .local v0, "forceRestartString":Ljava/lang/String;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5570
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mForceRestartlayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5564
    .end local v0    # "forceRestartString":Ljava/lang/String;
    .end local v1    # "tvForceRestartMessage":Landroid/widget/TextView;
    :cond_1
    return-void
.end method

.method private awakenIfNecessary()V
    .locals 2

    .prologue
    .line 672
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    if-eqz v1, :cond_0

    .line 674
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v1}, Landroid/service/dreams/IDreamManager;->isDreaming()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 675
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v1}, Landroid/service/dreams/IDreamManager;->awaken()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 671
    :cond_0
    :goto_0
    return-void

    .line 677
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private changeAirplaneModeSystemSetting(Z)V
    .locals 6
    .param p1, "on"    # Z

    .prologue
    .line 4644
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 4645
    const-string/jumbo v3, "airplane_mode_on"

    .line 4646
    if-eqz p1, :cond_2

    const/4 v1, 0x1

    .line 4643
    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4649
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string/jumbo v2, "CscFeature_IMS_EnableVoLTE"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz p1, :cond_3

    .line 4650
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4651
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.sec.android.internal.ims.FLIGHT_MODE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4652
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4653
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 4654
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/policy/GlobalActions$43;

    invoke-direct {v2, p0}, Lcom/android/server/policy/GlobalActions$43;-><init>(Lcom/android/server/policy/GlobalActions;)V

    .line 4661
    const-wide/16 v4, 0x3e8

    .line 4654
    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4670
    :cond_0
    :goto_1
    iget-boolean v1, p0, Lcom/android/server/policy/GlobalActions;->mHasTelephony:Z

    if-nez v1, :cond_1

    .line 4671
    if-eqz p1, :cond_4

    sget-object v1, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    :goto_2
    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    .line 4642
    :cond_1
    return-void

    .line 4646
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 4664
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4665
    .restart local v0    # "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4666
    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4667
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_1

    .line 4671
    :cond_4
    sget-object v1, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    goto :goto_2
.end method

.method private checkAirplaneModeOnOff()V
    .locals 5

    .prologue
    .line 4626
    const-string/jumbo v1, "GlobalActions"

    const-string/jumbo v2, "===== Start checkAirplaneModeOnOff ====="

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4629
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 4630
    const-string/jumbo v2, "airplane_mode_on"

    .line 4631
    const/4 v3, 0x0

    .line 4628
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 4631
    const/4 v2, 0x1

    .line 4628
    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 4632
    .local v0, "airplaneModeOn":Z
    :goto_0
    const-string/jumbo v1, "GlobalActions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "checkAirplaneModeOnOff : airplaneModeOn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4633
    if-eqz v0, :cond_1

    sget-object v1, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    :goto_1
    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    .line 4635
    const-string/jumbo v1, "GlobalActions"

    const-string/jumbo v2, "checkAirplaneModeOnOff : sendEmptyMessageDelayed MESSAGE_REFRESH_AIRPLANEMODE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4636
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x96

    const/4 v4, 0x3

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 4625
    return-void

    .line 4628
    .end local v0    # "airplaneModeOn":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "airplaneModeOn":Z
    goto :goto_0

    .line 4633
    :cond_1
    sget-object v1, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    goto :goto_1
.end method

.method private clearCustomDialogItems()Z
    .locals 4

    .prologue
    .line 2792
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    monitor-enter v3

    .line 2793
    :try_start_0
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2794
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/policy/GlobalActions$Action;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2795
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/policy/GlobalActions$Action;

    .line 2796
    .local v1, "obj":Lcom/android/server/policy/GlobalActions$Action;
    instance-of v2, v1, Lcom/android/server/policy/GlobalActions$SinglePressAction;

    if-eqz v2, :cond_0

    .line 2797
    check-cast v1, Lcom/android/server/policy/GlobalActions$SinglePressAction;

    .end local v1    # "obj":Lcom/android/server/policy/GlobalActions$Action;
    iget-boolean v2, v1, Lcom/android/server/policy/GlobalActions$SinglePressAction;->isKnoxCustom:Z

    if-eqz v2, :cond_0

    .line 2798
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2792
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/policy/GlobalActions$Action;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .restart local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/policy/GlobalActions$Action;>;"
    :cond_1
    monitor-exit v3

    .line 2803
    const/4 v2, 0x1

    return v2
.end method

.method private clearSCoverRequestStatus()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 5043
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    if-nez v2, :cond_0

    return-void

    .line 5044
    :cond_0
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5045
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 5046
    :cond_1
    sget-object v2, Lcom/android/server/policy/GlobalActions;->mSCoverRequestStatus:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 5047
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5048
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5049
    .local v1, "sender":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/server/policy/GlobalActions;->restoreQuickpanelBackground(Ljava/lang/String;)V

    goto :goto_0

    .line 5051
    .end local v1    # "sender":Ljava/lang/String;
    :cond_2
    sget-object v2, Lcom/android/server/policy/GlobalActions;->mSCoverRequestStatus:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 5042
    return-void
.end method

.method private confirmDialog(Lcom/android/server/policy/GlobalActions$ToggleAction;III)V
    .locals 21
    .param p1, "action"    # Lcom/android/server/policy/GlobalActions$ToggleAction;
    .param p2, "resTitle"    # I
    .param p3, "resON"    # I
    .param p4, "resOFF"    # I

    .prologue
    .line 3387
    const/4 v5, 0x0

    .line 3388
    .local v5, "attrs":Landroid/view/WindowManager$LayoutParams;
    const/4 v15, 0x0

    .line 3390
    .local v15, "positiveButtonClickListener":Landroid/content/DialogInterface$OnClickListener;
    const/4 v14, 0x0

    .line 3391
    .local v14, "mConfirmDialogSViewCover":Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;
    const/4 v7, 0x0

    .line 3392
    .local v7, "dialog":Landroid/app/AlertDialog;
    const/16 v16, 0x0

    .line 3393
    .local v16, "positiveButtonStringId":I
    const/4 v3, 0x0

    .line 3394
    .local v3, "abuilder":Landroid/app/AlertDialog$Builder;
    const/4 v13, 0x0

    .line 3395
    .local v13, "isStateOff":Z
    const/4 v9, 0x0

    .line 3396
    .local v9, "isActionAirplaneModeOn":Z
    const/4 v12, 0x0

    .line 3397
    .local v12, "isSetAirplaneOnMessageVZW":Z
    const/4 v11, 0x0

    .line 3398
    .local v11, "isSetAirplaneOnMessageCHINA":Z
    const/4 v10, 0x0

    .line 3399
    .local v10, "isRunnigWithoutConfirmMessage":Z
    const/16 v17, 0x1

    sput-boolean v17, Lcom/android/server/policy/GlobalActions;->mIsAirplaneConfirmDialogExist:Z

    .line 3400
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    move-object/from16 v17, v0

    sget-object v18, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_9

    .line 3401
    const v16, 0x104062b

    .line 3402
    const/4 v13, 0x1

    .line 3407
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeOn:Lcom/android/server/policy/GlobalActions$ToggleAction;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_a

    .line 3408
    const/4 v9, 0x1

    .line 3409
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 3416
    .end local v15    # "positiveButtonClickListener":Landroid/content/DialogInterface$OnClickListener;
    :goto_1
    sget-boolean v17, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v17, :cond_0

    sget-boolean v17, Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z

    if-eqz v17, :cond_c

    .line 3426
    :cond_0
    sget-boolean v17, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v17, :cond_f

    sget-boolean v17, Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z

    if-eqz v17, :cond_f

    .line 3427
    new-instance v3, Landroid/app/AlertDialog$Builder;

    .end local v3    # "abuilder":Landroid/app/AlertDialog$Builder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const v18, 0x10304fa

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v3, v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 3431
    .local v3, "abuilder":Landroid/app/AlertDialog$Builder;
    :goto_2
    move/from16 v0, p2

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 3432
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/GlobalActions;->mIsSetAirplaneOnMessageVZW:Z

    move/from16 v17, v0

    if-nez v17, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/GlobalActions;->mIsSetAirplaneOnMessageCHINA:Z

    move/from16 v17, v0

    if-eqz v17, :cond_11

    :cond_1
    if-eqz v9, :cond_11

    if-eqz v13, :cond_11

    .line 3433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    .line 3434
    const-string/jumbo v18, "layout_inflater"

    .line 3433
    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    .line 3435
    .local v8, "inflater":Landroid/view/LayoutInflater;
    const v17, 0x1090142

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 3436
    .local v6, "content":Landroid/view/View;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/GlobalActions;->mIsSetAirplaneOnMessageVZW:Z

    move/from16 v17, v0

    if-eqz v17, :cond_10

    .line 3437
    const/4 v12, 0x1

    .line 3438
    const-string/jumbo v17, "GlobalActions"

    const-string/jumbo v18, "confirmDialog : set airplane mode on message for VZW"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3443
    :cond_2
    :goto_3
    invoke-virtual {v3, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 3444
    const v17, 0x1020505

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/CheckBox;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/policy/GlobalActions;->mDontShowCheckbox:Landroid/widget/CheckBox;

    .line 3445
    const v17, 0x102000b

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/policy/GlobalActions;->mAirplaneMsg:Landroid/widget/TextView;

    .line 3446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mAirplaneMsg:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 3452
    .end local v6    # "content":Landroid/view/View;
    .end local v8    # "inflater":Landroid/view/LayoutInflater;
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/GlobalActions;->isVZWOperatorAirplaneModeONReasonUSB3:Z

    move/from16 v17, v0

    if-eqz v17, :cond_13

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    move-object/from16 v17, v0

    sget-object v18, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_13

    .line 3453
    const v16, 0x10407b6

    .line 3467
    :goto_5
    move/from16 v0, v16

    invoke-virtual {v3, v0, v15}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3468
    const v17, 0x1040009

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3469
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    .line 3471
    .end local v3    # "abuilder":Landroid/app/AlertDialog$Builder;
    .end local v7    # "dialog":Landroid/app/AlertDialog;
    .end local v14    # "mConfirmDialogSViewCover":Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;
    :goto_6
    new-instance v17, Lcom/android/server/policy/GlobalActions$ConfirmDialogReceiver;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-direct/range {v17 .. v18}, Lcom/android/server/policy/GlobalActions$ConfirmDialogReceiver;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/policy/GlobalActions;->mConfirmDialogReceiver:Lcom/android/server/policy/GlobalActions$ConfirmDialogReceiver;

    .line 3473
    sget-boolean v17, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v17, :cond_3

    sget-boolean v17, Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z

    if-eqz v17, :cond_16

    .line 3493
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mConfirmDialogReceiver:Lcom/android/server/policy/GlobalActions$ConfirmDialogReceiver;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v7, v0, Lcom/android/server/policy/GlobalActions$ConfirmDialogReceiver;->dialog:Landroid/app/AlertDialog;

    .line 3494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mConfirmDialogReceiver:Lcom/android/server/policy/GlobalActions$ConfirmDialogReceiver;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 3495
    sget-boolean v17, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v17, :cond_18

    sget-boolean v17, Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z

    if-eqz v17, :cond_18

    .line 3496
    invoke-virtual {v7}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v17

    const/16 v18, 0x833

    invoke-virtual/range {v17 .. v18}, Landroid/view/Window;->setType(I)V

    .line 3503
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x112000d

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v17

    if-nez v17, :cond_4

    .line 3504
    invoke-virtual {v7}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v17

    const/16 v18, 0x4

    invoke-virtual/range {v17 .. v18}, Landroid/view/Window;->addFlags(I)V

    .line 3506
    :cond_4
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 3508
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/GlobalActions;->checkOnAirplaneConfirmShow()V

    .line 3509
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/GlobalActions;->mShowOnAirplaneConfirm:Z

    move/from16 v17, v0

    if-nez v17, :cond_19

    if-nez v12, :cond_5

    if-eqz v11, :cond_19

    .line 3510
    :cond_5
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/policy/GlobalActions;->airplaneModeClickAction(Z)V

    .line 3511
    const/4 v10, 0x1

    .line 3516
    :goto_8
    sget-boolean v17, Lcom/android/server/policy/GlobalActions;->SAFE_DEBUG:Z

    if-eqz v17, :cond_6

    .line 3517
    const-string/jumbo v17, "GlobalActions"

    .line 3518
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "in confirmDialog action = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 3520
    const-string/jumbo v19, " resON = "

    .line 3518
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 3522
    const-string/jumbo v19, "resOFF = "

    .line 3518
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 3524
    const-string/jumbo v19, " config_sf_slowBlur = "

    .line 3518
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 3525
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    .line 3526
    const v20, 0x112000d

    .line 3525
    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v19

    .line 3518
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 3527
    const-string/jumbo v19, " resTitle = "

    .line 3518
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 3527
    const-string/jumbo v19, " mAirplaneModeOn = "

    .line 3518
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 3528
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeOn:Lcom/android/server/policy/GlobalActions$ToggleAction;

    move-object/from16 v19, v0

    .line 3518
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 3528
    const-string/jumbo v19, " mDataModeToggle = "

    .line 3518
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 3528
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mDataModeToggle:Lcom/android/server/policy/GlobalActions$ToggleAction;

    move-object/from16 v19, v0

    .line 3518
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 3517
    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3529
    :cond_6
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/server/policy/GlobalActions;->mConfirmDialog:Landroid/app/AlertDialog;

    .line 3532
    :cond_7
    :goto_9
    if-nez v10, :cond_8

    .line 3533
    sget-object v17, Lcom/android/server/policy/GlobalActions;->sIsConfirmingGuard:Ljava/lang/Object;

    monitor-enter v17

    .line 3534
    const/16 v18, 0x1

    :try_start_0
    sput-boolean v18, Lcom/android/server/policy/GlobalActions;->sIsConfirming:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v17

    .line 3386
    :cond_8
    return-void

    .line 3404
    .local v3, "abuilder":Landroid/app/AlertDialog$Builder;
    .restart local v7    # "dialog":Landroid/app/AlertDialog;
    .restart local v14    # "mConfirmDialogSViewCover":Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;
    .restart local v15    # "positiveButtonClickListener":Landroid/content/DialogInterface$OnClickListener;
    :cond_9
    const v16, 0x104062a

    goto/16 :goto_0

    .line 3410
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mDataModeToggle:Lcom/android/server/policy/GlobalActions$ToggleAction;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_b

    .line 3411
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions;->mDataModeClickListener:Landroid/content/DialogInterface$OnClickListener;

    .local v15, "positiveButtonClickListener":Landroid/content/DialogInterface$OnClickListener;
    goto/16 :goto_1

    .line 3413
    .local v15, "positiveButtonClickListener":Landroid/content/DialogInterface$OnClickListener;
    :cond_b
    const-string/jumbo v17, "GlobalActions"

    const-string/jumbo v18, "Cannot find ClickListener."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3417
    .end local v15    # "positiveButtonClickListener":Landroid/content/DialogInterface$OnClickListener;
    :cond_c
    new-instance v17, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-direct/range {v17 .. v18}, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v17

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;->setTitle(I)Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;

    move-result-object v18

    .line 3419
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    move-object/from16 v17, v0

    sget-object v19, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_d

    move/from16 v17, p3

    .line 3417
    :goto_a
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;->setMessage(I)Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;

    move-result-object v18

    .line 3420
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/GlobalActions;->isVZWOperatorAirplaneModeONReasonUSB3:Z

    move/from16 v17, v0

    if-eqz v17, :cond_e

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    move-object/from16 v17, v0

    sget-object v19, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_e

    .line 3421
    const v17, 0x10407b6

    .line 3417
    :goto_b
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1, v15}, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;

    move-result-object v17

    .line 3424
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeCancelClickListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v18, v0

    .line 3423
    const v19, 0x1040009

    .line 3417
    move-object/from16 v0, v17

    move/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;->create()Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;

    move-result-object v14

    .local v14, "mConfirmDialogSViewCover":Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;
    goto/16 :goto_6

    .local v14, "mConfirmDialogSViewCover":Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;
    :cond_d
    move/from16 v17, p4

    .line 3419
    goto :goto_a

    :cond_e
    move/from16 v17, v16

    .line 3422
    goto :goto_b

    .line 3429
    :cond_f
    new-instance v3, Landroid/app/AlertDialog$Builder;

    .end local v3    # "abuilder":Landroid/app/AlertDialog$Builder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .local v3, "abuilder":Landroid/app/AlertDialog$Builder;
    goto/16 :goto_2

    .line 3439
    .restart local v6    # "content":Landroid/view/View;
    .restart local v8    # "inflater":Landroid/view/LayoutInflater;
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/GlobalActions;->mIsSetAirplaneOnMessageCHINA:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2

    .line 3440
    const/4 v11, 0x1

    .line 3441
    const-string/jumbo v17, "GlobalActions"

    const-string/jumbo v18, "confirmDialog : set airplane mode on message for CHINA"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 3449
    .end local v6    # "content":Landroid/view/View;
    .end local v8    # "inflater":Landroid/view/LayoutInflater;
    :cond_11
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    move-object/from16 v17, v0

    sget-object v18, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_12

    move/from16 v17, p3

    :goto_c
    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_4

    :cond_12
    move/from16 v17, p4

    goto :goto_c

    .line 3455
    :cond_13
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    move-object/from16 v17, v0

    sget-object v18, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_15

    .line 3456
    const-string/jumbo v17, "VZW"

    sget-object v18, Lcom/android/server/policy/GlobalActions;->mSalesCode:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_14

    .line 3457
    const v16, 0x104000a

    goto/16 :goto_5

    .line 3459
    :cond_14
    const v16, 0x104062b

    goto/16 :goto_5

    .line 3462
    :cond_15
    const v16, 0x104062a

    goto/16 :goto_5

    .line 3474
    .end local v3    # "abuilder":Landroid/app/AlertDialog$Builder;
    .end local v7    # "dialog":Landroid/app/AlertDialog;
    .end local v14    # "mConfirmDialogSViewCover":Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;
    :cond_16
    if-eqz v14, :cond_7

    .line 3475
    invoke-virtual {v14}, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;->getWindow()Landroid/view/Window;

    move-result-object v17

    .line 3476
    const/16 v18, 0x833

    .line 3475
    invoke-virtual/range {v17 .. v18}, Landroid/view/Window;->setType(I)V

    .line 3477
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    .line 3478
    const v18, 0x112000d

    .line 3477
    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v17

    if-nez v17, :cond_17

    .line 3479
    invoke-virtual {v14}, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;->getWindow()Landroid/view/Window;

    move-result-object v17

    .line 3480
    const/16 v18, 0x4

    .line 3479
    invoke-virtual/range {v17 .. v18}, Landroid/view/Window;->addFlags(I)V

    .line 3482
    :cond_17
    invoke-virtual {v14}, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;->getWindow()Landroid/view/Window;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 3484
    .local v4, "attributes":Landroid/view/WindowManager$LayoutParams;
    const/16 v17, 0x1

    move/from16 v0, v17

    iput v0, v4, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 3485
    const/16 v17, 0x0

    move/from16 v0, v17

    iput v0, v4, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 3486
    invoke-virtual {v14}, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;->getWindow()Landroid/view/Window;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 3487
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;->setCanceledOnTouchOutside(Z)V

    .line 3488
    invoke-virtual {v14}, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;->show()V

    .line 3489
    const-string/jumbo v17, "GlobalActions$ConfirmDialog"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/policy/GlobalActions;->hideQuickpanelBackground(Ljava/lang/String;)V

    .line 3490
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/policy/GlobalActions;->mConfirmDialogSViewCoverDialog:Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;

    goto/16 :goto_9

    .line 3500
    .end local v4    # "attributes":Landroid/view/WindowManager$LayoutParams;
    :cond_18
    invoke-virtual {v7}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v17

    const/16 v18, 0x7de

    invoke-virtual/range {v17 .. v18}, Landroid/view/Window;->setType(I)V

    goto/16 :goto_7

    .line 3513
    :cond_19
    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_8

    .line 3533
    :catchall_0
    move-exception v18

    monitor-exit v17

    throw v18
.end method

.method private confirmedAction(Landroid/view/View;Lcom/android/server/policy/GlobalActions$Action;Z)V
    .locals 12
    .param p1, "v"    # Landroid/view/View;
    .param p2, "ac"    # Lcom/android/server/policy/GlobalActions$Action;
    .param p3, "needFMMlockCheck"    # Z

    .prologue
    .line 2270
    const v8, 0x1020006

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 2271
    .local v3, "imageView":Landroid/widget/ImageView;
    const v8, 0x102000b

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 2272
    .local v5, "messageView":Landroid/widget/TextView;
    const v8, 0x10203d7

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 2274
    .local v6, "statusView":Landroid/widget/TextView;
    move-object v0, p2

    .line 2276
    .local v0, "action":Lcom/android/server/policy/GlobalActions$Action;
    if-eqz p3, :cond_0

    .line 2277
    invoke-virtual {v3}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-direct {p0, v8}, Lcom/android/server/policy/GlobalActions;->isSecurePoweroff(I)Z

    move-result v8

    if-eqz v8, :cond_0

    return-void

    .line 2280
    :cond_0
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/policy/GlobalActions;->mDisplayConfirm:Z

    .line 2282
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 2283
    invoke-virtual {v3}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget v9, p0, Lcom/android/server/policy/GlobalActions;->mPowerOffIconResId:I

    if-eq v8, v9, :cond_3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget v9, p0, Lcom/android/server/policy/GlobalActions;->mRestartIconResId:I

    if-eq v8, v9, :cond_3

    .line 2284
    invoke-interface {p2}, Lcom/android/server/policy/GlobalActions$Action;->onPress()V

    .line 2285
    sget-boolean v8, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v8, :cond_1

    sget-boolean v8, Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z

    if-eqz v8, :cond_2

    .line 2288
    :cond_1
    iget-object v8, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    invoke-virtual {v8, p1}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->hideAllView(Landroid/view/View;)V

    .line 2290
    :goto_0
    iget-object v8, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2269
    :goto_1
    return-void

    .line 2286
    :cond_2
    iget-object v8, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayoutSViewCover:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;

    invoke-virtual {v8, p1}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->hideAllView(Landroid/view/View;)V

    goto :goto_0

    .line 2292
    :cond_3
    const/4 v4, 0x0

    .line 2293
    .local v4, "ll":Landroid/widget/LinearLayout;
    sget-boolean v8, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v8, :cond_4

    sget-boolean v8, Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z

    if-eqz v8, :cond_6

    .line 2296
    :cond_4
    iget-object v8, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    const v9, 0x10203c6

    invoke-virtual {v8, v9}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4    # "ll":Landroid/widget/LinearLayout;
    check-cast v4, Landroid/widget/LinearLayout;

    .line 2300
    .local v4, "ll":Landroid/widget/LinearLayout;
    :goto_2
    sget v8, Lcom/android/server/policy/GlobalActions;->mIsSelectedItemTagForSecure:I

    if-eqz v8, :cond_7

    .line 2302
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    iget-object v8, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v8}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getCount()I

    move-result v8

    if-ge v2, v8, :cond_7

    .line 2303
    iget-object v8, p0, Lcom/android/server/policy/GlobalActions;->mLinearLayout:Landroid/widget/LinearLayout;

    if-eqz v8, :cond_5

    .line 2304
    iget-object v8, p0, Lcom/android/server/policy/GlobalActions;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 2305
    .local v7, "tempView":Landroid/view/View;
    if-eqz v7, :cond_5

    .line 2306
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setAlpha(F)V

    .line 2307
    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2302
    .end local v7    # "tempView":Landroid/view/View;
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 2294
    .end local v2    # "i":I
    .local v4, "ll":Landroid/widget/LinearLayout;
    :cond_6
    iget-object v8, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayoutSViewCover:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;

    const v9, 0x10203c6

    invoke-virtual {v8, v9}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4    # "ll":Landroid/widget/LinearLayout;
    check-cast v4, Landroid/widget/LinearLayout;

    .local v4, "ll":Landroid/widget/LinearLayout;
    goto :goto_2

    .line 2313
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    const-wide/16 v10, 0x96

    invoke-virtual {v8, v10, v11}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2314
    iget-object v8, p0, Lcom/android/server/policy/GlobalActions;->mDescriptionlayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    const-wide/16 v10, 0x96

    invoke-virtual {v8, v10, v11}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2315
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    const-string/jumbo v9, "alpha"

    const/16 v10, 0x99

    const/16 v11, 0xff

    filled-new-array {v10, v11}, [I

    move-result-object v10

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 2316
    .local v1, "backgroundalpha":Landroid/animation/ObjectAnimator;
    const-wide/16 v8, 0x12c

    invoke-virtual {v1, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v8

    invoke-virtual {v8}, Landroid/animation/ObjectAnimator;->start()V

    .line 2317
    new-instance v8, Lcom/android/server/policy/GlobalActions$33;

    invoke-direct {v8, p0, p2}, Lcom/android/server/policy/GlobalActions$33;-><init>(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$Action;)V

    invoke-virtual {v1, v8}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto/16 :goto_1
.end method

.method private createDialog()Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;
    .locals 34

    .prologue
    .line 933
    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/server/policy/GlobalActions;->mProKioskOptionShown:Z

    .line 937
    new-instance v4, Lcom/android/server/policy/GlobalActions$SilentModeAction;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/GlobalActions;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, v5, v6}, Lcom/android/server/policy/GlobalActions$SilentModeAction;-><init>(Landroid/media/AudioManager;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mSilentModeAction:Lcom/android/server/policy/GlobalActions$SilentModeAction;

    .line 939
    new-instance v4, Lcom/android/server/policy/GlobalActions$13;

    .line 940
    sget-boolean v5, Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z

    if-eqz v5, :cond_4

    const v6, 0x1080a26

    .line 941
    :goto_0
    sget-boolean v5, Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z

    if-eqz v5, :cond_5

    const v7, 0x1080a26

    .line 942
    :goto_1
    const v8, 0x10407d3

    .line 943
    const v9, 0x10407d4

    .line 944
    const v10, 0x10407d5

    move-object/from16 v5, p0

    .line 939
    invoke-direct/range {v4 .. v10}, Lcom/android/server/policy/GlobalActions$13;-><init>(Lcom/android/server/policy/GlobalActions;IIIII)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mDataModeToggle:Lcom/android/server/policy/GlobalActions$ToggleAction;

    .line 1063
    new-instance v4, Lcom/android/server/policy/GlobalActions$14;

    .line 1064
    const v6, 0x1080a2e

    .line 1065
    const v7, 0x1080a2f

    .line 1066
    const v8, 0x1040143

    .line 1067
    const v9, 0x1040144

    .line 1068
    const v10, 0x1040145

    move-object/from16 v5, p0

    .line 1063
    invoke-direct/range {v4 .. v10}, Lcom/android/server/policy/GlobalActions$14;-><init>(Lcom/android/server/policy/GlobalActions;IIIII)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeOn:Lcom/android/server/policy/GlobalActions$ToggleAction;

    .line 1230
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/GlobalActions;->onAirplaneModeChanged()V

    .line 1232
    new-instance v4, Lcom/android/server/policy/GlobalActions$15;

    .line 1233
    const v6, 0x1080a36

    .line 1234
    const v7, 0x1080a35

    .line 1235
    const v8, 0x10407aa

    .line 1236
    const v9, 0x10407ab

    .line 1237
    const v10, 0x10407ac

    move-object/from16 v5, p0

    .line 1232
    invoke-direct/range {v4 .. v10}, Lcom/android/server/policy/GlobalActions$15;-><init>(Lcom/android/server/policy/GlobalActions;IIIII)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mSubScreenOn:Lcom/android/server/policy/GlobalActions$ToggleAction;

    .line 1288
    new-instance v4, Lcom/android/server/policy/GlobalActions$16;

    .line 1289
    sget-boolean v5, Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z

    if-eqz v5, :cond_6

    const v6, 0x1080a27

    .line 1290
    :goto_2
    sget-boolean v5, Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z

    if-eqz v5, :cond_7

    const v7, 0x1080a27

    .line 1291
    :goto_3
    const v8, 0x10407bf

    .line 1292
    const v9, 0x10407bd

    .line 1293
    const v10, 0x10407be

    move-object/from16 v5, p0

    .line 1288
    invoke-direct/range {v4 .. v10}, Lcom/android/server/policy/GlobalActions$16;-><init>(Lcom/android/server/policy/GlobalActions;IIIII)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mEmergency:Lcom/android/server/policy/GlobalActions$ToggleAction;

    .line 1397
    new-instance v4, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sput-object v4, Lcom/android/server/policy/GlobalActions;->mProKioskExitAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 1398
    sget-object v4, Lcom/android/server/policy/GlobalActions;->mProKioskExitAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    const v5, 0x1040904

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1399
    sget-object v4, Lcom/android/server/policy/GlobalActions;->mProKioskExitAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    const v5, 0x1040905

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1401
    new-instance v4, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    sput-object v4, Lcom/android/server/policy/GlobalActions;->mPasscodeEditText:Landroid/widget/EditText;

    .line 1402
    sget-object v4, Lcom/android/server/policy/GlobalActions;->mPasscodeEditText:Landroid/widget/EditText;

    const/16 v5, 0x81

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setInputType(I)V

    .line 1403
    sget-object v4, Lcom/android/server/policy/GlobalActions;->mPasscodeEditText:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 1404
    sget-object v4, Lcom/android/server/policy/GlobalActions;->mPasscodeEditText:Landroid/widget/EditText;

    const/16 v5, 0x50

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/widget/EditText;->setPaddingRelative(IIII)V

    .line 1405
    sget-object v4, Lcom/android/server/policy/GlobalActions;->mPasscodeEditText:Landroid/widget/EditText;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setGravity(I)V

    .line 1406
    sget-object v4, Lcom/android/server/policy/GlobalActions;->mProKioskExitAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    sget-object v5, Lcom/android/server/policy/GlobalActions;->mPasscodeEditText:Landroid/widget/EditText;

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1407
    sget-object v4, Lcom/android/server/policy/GlobalActions;->mProKioskExitAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    new-instance v5, Lcom/android/server/policy/GlobalActions$17;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/server/policy/GlobalActions$17;-><init>(Lcom/android/server/policy/GlobalActions;)V

    const v6, 0x104000a

    invoke-virtual {v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1433
    sget-object v4, Lcom/android/server/policy/GlobalActions;->mProKioskExitAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    new-instance v5, Lcom/android/server/policy/GlobalActions$18;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/server/policy/GlobalActions$18;-><init>(Lcom/android/server/policy/GlobalActions;)V

    const/high16 v6, 0x1040000

    invoke-virtual {v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1442
    new-instance v4, Lcom/android/server/policy/GlobalActions$19;

    .line 1443
    const v6, 0x10803fe

    .line 1444
    const v7, 0x10803fe

    .line 1445
    const v8, 0x1040901

    .line 1446
    const v9, 0x1040902

    .line 1447
    const v10, 0x1040902

    move-object/from16 v5, p0

    .line 1442
    invoke-direct/range {v4 .. v10}, Lcom/android/server/policy/GlobalActions$19;-><init>(Lcom/android/server/policy/GlobalActions;IIIII)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mProKioskToggle:Lcom/android/server/policy/GlobalActions$ToggleAction;

    .line 1533
    new-instance v5, Lcom/android/server/policy/GlobalActions$20;

    .line 1534
    sget-boolean v4, Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z

    if-eqz v4, :cond_8

    const v4, 0x1080a2b

    .line 1535
    :goto_4
    const v6, 0x10406ee

    .line 1533
    move-object/from16 v0, p0

    invoke-direct {v5, v0, v4, v6}, Lcom/android/server/policy/GlobalActions$20;-><init>(Lcom/android/server/policy/GlobalActions;II)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/policy/GlobalActions;->mRestart:Lcom/android/server/policy/GlobalActions$SinglePressAction;
    
    new-instance v4, Lcom/android/server/policy/GlobalActions$47;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "tw_ic_do_rebootrecovery" 

    const-string v2, "drawable" 

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5 

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "tw_ic_do_rebootrecovery"

    const-string v2, "string"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5, v6}, Lcom/android/server/policy/GlobalActions$47;-><init>(Lcom/android/server/policy/GlobalActions;II)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mRebootRecovery:Lcom/android/server/policy/GlobalActions$SinglePressAction; 

    .line 1581
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    const-string/jumbo v5, "CscFeature_Common_ConfigBikeMode"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "bikemode"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1582
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    const-string/jumbo v5, "CscFeature_Common_ConfigBikeMode"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "globalaction"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    .line 1581
    if-eqz v4, :cond_0

    .line 1583
    new-instance v4, Lcom/android/server/policy/GlobalActions$21;

    .line 1584
    const v6, 0x1080a30

    .line 1585
    const v7, 0x1080a30

    .line 1586
    const v8, 0x10408a0

    .line 1587
    const v9, 0x10408a1

    .line 1588
    const v10, 0x10408a2

    move-object/from16 v5, p0

    .line 1583
    invoke-direct/range {v4 .. v10}, Lcom/android/server/policy/GlobalActions$21;-><init>(Lcom/android/server/policy/GlobalActions;IIIII)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mBikeMode:Lcom/android/server/policy/GlobalActions$ToggleAction;

    .line 1640
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mBikeModeDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mBikeModeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1641
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mBikeModeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    .line 1645
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    .line 1649
    const/4 v12, 0x1

    .line 1651
    .local v12, "add":Z
    const/4 v4, 0x0

    sput v4, Lcom/android/server/policy/GlobalActions;->mProKioskMenuPosition:I

    .line 1652
    const-string/jumbo v4, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    const-string/jumbo v5, "getSealedState"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/policy/GlobalActions;->mTempStringArray:[Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6}, Lcom/android/server/policy/GlobalActions;->isEDM(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "true"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1655
    new-instance v4, Lcom/android/server/policy/GlobalActions$PowerAction;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Lcom/android/server/policy/GlobalActions$PowerAction;-><init>(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$PowerAction;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    const/4 v6, 0x4

    const/4 v7, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v4, v5, v7}, Lcom/android/server/policy/GlobalActions;->addDialogItemsIfEnabled(ILcom/android/server/policy/GlobalActions$Action;Ljava/util/ArrayList;Z)Z

    .line 1658
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mRestart:Lcom/android/server/policy/GlobalActions$SinglePressAction;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    const/16 v6, 0x40

    const/4 v7, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v4, v5, v7}, Lcom/android/server/policy/GlobalActions;->addDialogItemsIfEnabled(ILcom/android/server/policy/GlobalActions$Action;Ljava/util/ArrayList;Z)Z

    .line 1659
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mEmergency:Lcom/android/server/policy/GlobalActions$ToggleAction;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    const/16 v6, 0x80

    const/4 v7, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v4, v5, v7}, Lcom/android/server/policy/GlobalActions;->addDialogItemsIfEnabled(ILcom/android/server/policy/GlobalActions$Action;Ljava/util/ArrayList;Z)Z

    .line 1660
    new-instance v4, Lcom/android/server/policy/GlobalActions$BugReportAction;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/server/policy/GlobalActions$BugReportAction;-><init>(Lcom/android/server/policy/GlobalActions;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    const/16 v6, 0x100

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mRebootRecovery:Lcom/android/server/policy/GlobalActions$SinglePressAction;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    const/4 v7, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v4, v5, v7}, Lcom/android/server/policy/GlobalActions;->addDialogItemsIfEnabled(ILcom/android/server/policy/GlobalActions$Action;Ljava/util/ArrayList;Z)Z 

    const/16 v6, 0x200

    const/4 v7, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v4, v5, v7}, Lcom/android/server/policy/GlobalActions;->addDialogItemsIfEnabled(ILcom/android/server/policy/GlobalActions$Action;Ljava/util/ArrayList;Z)Z

    .line 1662
    const-string/jumbo v4, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    const-string/jumbo v5, "getSealedPowerDialogOptionMode"

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/server/policy/GlobalActions;->isIntEDM(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 1663
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mProKioskToggle:Lcom/android/server/policy/GlobalActions$ToggleAction;

    if-eqz v4, :cond_1

    .line 1664
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/GlobalActions;->mProKioskToggle:Lcom/android/server/policy/GlobalActions$ToggleAction;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1669
    :cond_1
    const/4 v12, 0x0

    .line 1672
    :cond_2
    if-eqz v12, :cond_1c

    .line 1674
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 1675
    const v5, 0x107005b

    .line 1674
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v20

    .line 1677
    .local v20, "defaultActions":[Ljava/lang/String;
    new-instance v13, Landroid/util/ArraySet;

    invoke-direct {v13}, Landroid/util/ArraySet;-><init>()V

    .line 1679
    .local v13, "addedKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/16 v23, 0x0

    .local v23, "i":I
    :goto_5
    move-object/from16 v0, v20

    array-length v4, v0

    move/from16 v0, v23

    if-ge v0, v4, :cond_1b

    .line 1680
    aget-object v11, v20, v23

    .line 1681
    .local v11, "actionKey":Ljava/lang/String;
    invoke-virtual {v13, v11}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1679
    :cond_3
    :goto_6
    add-int/lit8 v23, v23, 0x1

    goto :goto_5

    .line 940
    .end local v11    # "actionKey":Ljava/lang/String;
    .end local v12    # "add":Z
    .end local v13    # "addedKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v20    # "defaultActions":[Ljava/lang/String;
    .end local v23    # "i":I
    :cond_4
    const v6, 0x1080a32

    goto/16 :goto_0

    .line 941
    :cond_5
    const v7, 0x1080a31

    goto/16 :goto_1

    .line 1289
    :cond_6
    const v6, 0x1080a38

    goto/16 :goto_2

    .line 1290
    :cond_7
    const v7, 0x1080a39

    goto/16 :goto_3

    .line 1534
    :cond_8
    const v4, 0x1080a34

    goto/16 :goto_4

    .line 1685
    .restart local v11    # "actionKey":Ljava/lang/String;
    .restart local v12    # "add":Z
    .restart local v13    # "addedKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v20    # "defaultActions":[Ljava/lang/String;
    .restart local v23    # "i":I
    :cond_9
    sget-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v4, :cond_a

    .line 1686
    const-string/jumbo v4, "emergencymode"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1687
    const-string/jumbo v4, "users"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 1686
    if-nez v4, :cond_3

    .line 1688
    const-string/jumbo v4, "settings"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 1686
    if-nez v4, :cond_3

    .line 1693
    :cond_a
    invoke-static {}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->isEmergencyModeSupported()Z

    move-result v4

    if-nez v4, :cond_b

    .line 1694
    const-string/jumbo v4, "emergencymode"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1695
    const-string/jumbo v4, "GlobalActions"

    const-string/jumbo v5, "Removed Emergency mode button because of Knox creation."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1700
    :cond_b
    const-string/jumbo v4, "power"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1701
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/server/policy/GlobalActions$PowerAction;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v6}, Lcom/android/server/policy/GlobalActions$PowerAction;-><init>(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$PowerAction;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1749
    :cond_c
    :goto_7
    invoke-virtual {v13, v11}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 1702
    :cond_d
    const-string/jumbo v4, "airplane"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1703
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeOn:Lcom/android/server/policy/GlobalActions$ToggleAction;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 1704
    :cond_e
    const-string/jumbo v4, "subscreen"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 1708
    const-string/jumbo v4, "datamode"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 1709
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/GlobalActions;->mDataModeToggle:Lcom/android/server/policy/GlobalActions$ToggleAction;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 1710
    :cond_f
    const-string/jumbo v4, "bugreport"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 1711
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 1712
    const-string/jumbo v5, "bugreport_in_power_menu"

    const/4 v6, 0x0

    .line 1711
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_12

    .line 1712
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/GlobalActions;->isCurrentUserOwner()Z

    move-result v4

    .line 1711
    if-eqz v4, :cond_12

    .line 1713
    sget-boolean v4, Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z

    if-eqz v4, :cond_11

    .line 1714
    sget-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-eqz v4, :cond_10

    .line 1715
    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsBugReportEnable:Z

    goto :goto_7

    .line 1717
    :cond_10
    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsBugReportEnable:Z

    goto :goto_7

    .line 1720
    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/server/policy/GlobalActions$BugReportAction;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/server/policy/GlobalActions$BugReportAction;-><init>(Lcom/android/server/policy/GlobalActions;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 1723
    :cond_12
    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsBugReportEnable:Z

    goto :goto_7

    .line 1725
    :cond_13
    const-string/jumbo v4, "restart"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 1726
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/GlobalActions;->mRestart:Lcom/android/server/policy/GlobalActions$SinglePressAction;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 1727
    :cond_14
    const-string/jumbo v4, "emergencymode"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 1728
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/GlobalActions;->mEmergency:Lcom/android/server/policy/GlobalActions$ToggleAction;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 1729
    :cond_15
    const-string/jumbo v4, "rebootrecovery"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_asc1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/GlobalActions;->mRebootRecovery:Lcom/android/server/policy/GlobalActions$SinglePressAction;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7 

    :cond_asc1
    const-string/jumbo v4, "silent"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 1730
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/GlobalActions;->mShowSilentToggle:Z

    if-eqz v4, :cond_c

    .line 1731
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/GlobalActions;->mSilentModeAction:Lcom/android/server/policy/GlobalActions$SilentModeAction;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 1733
    :cond_16
    const-string/jumbo v4, "users"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 1734
    const-string/jumbo v4, "fw.power_user_switcher"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1735
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/policy/GlobalActions;->addUsersToMenu(Ljava/util/ArrayList;)V

    goto/16 :goto_7

    .line 1737
    :cond_17
    const-string/jumbo v4, "settings"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 1738
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/GlobalActions;->getSettingsAction()Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 1741
    :cond_18
    const-string/jumbo v4, "voiceassist"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 1742
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/GlobalActions;->getVoiceAssistAction()Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 1743
    :cond_19
    const-string/jumbo v4, "assist"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 1744
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/GlobalActions;->getAssistAction()Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 1746
    :cond_1a
    const-string/jumbo v4, "GlobalActions"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Invalid global action key "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 1751
    .end local v11    # "actionKey":Ljava/lang/String;
    :cond_1b
    new-instance v4, Lcom/android/server/policy/GlobalActions$SilentModeAction;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/GlobalActions;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, v5, v6}, Lcom/android/server/policy/GlobalActions$SilentModeAction;-><init>(Landroid/media/AudioManager;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v7, v8, v6}, Lcom/android/server/policy/GlobalActions$SilentModeAction;->create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v4

    sput-object v4, Lcom/android/server/policy/GlobalActions;->mSilentModeView:Landroid/view/View;

    .line 1754
    .end local v13    # "addedKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v20    # "defaultActions":[Ljava/lang/String;
    .end local v23    # "i":I
    :cond_1c
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    const-string/jumbo v5, "CscFeature_Common_ConfigBikeMode"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "bikemode"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 1755
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    const-string/jumbo v5, "CscFeature_Common_ConfigBikeMode"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "globalaction"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    .line 1754
    if-eqz v4, :cond_1d

    .line 1756
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/GlobalActions;->mBikeMode:Lcom/android/server/policy/GlobalActions$ToggleAction;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1758
    :cond_1d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mKnoxCustomSystemManager:Lcom/samsung/android/knox/custom/SystemManager;

    if-eqz v4, :cond_1e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mKnoxCustomSystemManager:Lcom/samsung/android/knox/custom/SystemManager;

    invoke-virtual {v4}, Lcom/samsung/android/knox/custom/SystemManager;->getPowerDialogCustomItemsState()Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 1759
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/GlobalActions;->clearCustomDialogItems()Z

    .line 1760
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mKnoxCustomSystemManager:Lcom/samsung/android/knox/custom/SystemManager;

    invoke-virtual {v4}, Lcom/samsung/android/knox/custom/SystemManager;->getPowerDialogCustomItems()Ljava/util/List;

    move-result-object v22

    .line 1761
    .local v22, "fromDB":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/custom/PowerItem;>;"
    if-eqz v22, :cond_1e

    .line 1762
    invoke-interface/range {v22 .. v22}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .local v25, "item$iterator":Ljava/util/Iterator;
    :goto_8
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1e

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/samsung/android/knox/custom/PowerItem;

    .line 1763
    .local v24, "item":Lcom/samsung/android/knox/custom/PowerItem;
    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/knox/custom/PowerItem;->getIcon()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v5

    .line 1764
    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/knox/custom/PowerItem;->getText()Ljava/lang/String;

    move-result-object v6

    .line 1765
    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/knox/custom/PowerItem;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 1766
    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/knox/custom/PowerItem;->getIntentAction()I

    move-result v8

    .line 1767
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    move-object/from16 v4, p0

    .line 1763
    invoke-direct/range {v4 .. v9}, Lcom/android/server/policy/GlobalActions;->addCustomDialogItems(Landroid/graphics/drawable/BitmapDrawable;Ljava/lang/String;Landroid/content/Intent;ILjava/util/ArrayList;)Z

    goto :goto_8

    .line 1773
    .end local v22    # "fromDB":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/custom/PowerItem;>;"
    .end local v24    # "item":Lcom/samsung/android/knox/custom/PowerItem;
    .end local v25    # "item$iterator":Ljava/util/Iterator;
    :cond_1e
    new-instance v4, Lcom/android/server/policy/GlobalActions$MyAdapter;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Lcom/android/server/policy/GlobalActions$MyAdapter;-><init>(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$MyAdapter;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    .line 1775
    new-instance v28, Lcom/android/internal/app/AlertController$AlertParams;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v0, v28

    invoke-direct {v0, v4}, Lcom/android/internal/app/AlertController$AlertParams;-><init>(Landroid/content/Context;)V

    .line 1777
    .local v28, "params":Lcom/android/internal/app/AlertController$AlertParams;
    sget-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v4, :cond_1f

    sget-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z

    if-eqz v4, :cond_28

    .line 1778
    :cond_1f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    move-object/from16 v0, v28

    iput-object v4, v0, Lcom/android/internal/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 1779
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    iput-object v0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 1780
    const/4 v4, 0x1

    move-object/from16 v0, v28

    iput-boolean v4, v0, Lcom/android/internal/app/AlertController$AlertParams;->mForceInverseBackground:Z

    .line 1793
    :goto_9
    new-instance v21, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-direct {v0, v4, v1, v5}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;-><init>(Landroid/content/Context;Lcom/android/internal/app/AlertController$AlertParams;Landroid/os/Handler;)V

    .line 1794
    .local v21, "dialog":Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;
    const-string/jumbo v4, "GlobalActions"

    const-string/jumbo v5, "Create GlobalActionsDialog"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1796
    sget-boolean v4, Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z

    if-eqz v4, :cond_2e

    .line 1797
    const/16 v30, 0x0

    .line 1798
    .local v30, "tvBugReportMessage":Landroid/widget/TextView;
    const/16 v31, 0x0

    .line 1799
    .local v31, "tvBugReportStatus":Landroid/widget/TextView;
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/Window;->requestFeature(I)Z

    .line 1800
    sget-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v4, :cond_20

    sget-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v4, :cond_29

    sget-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z

    if-eqz v4, :cond_29

    .line 1801
    :cond_20
    new-instance v4, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v6}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getCount()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, v5, v6, v7}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;-><init>(Landroid/content/Context;ILandroid/os/Handler;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    .line 1802
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    const v5, 0x10203cf

    invoke-virtual {v4, v5}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mBottomlayout:Landroid/widget/LinearLayout;

    .line 1803
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    const v5, 0x102006f

    invoke-virtual {v4, v5}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mCancelButton:Landroid/widget/Button;

    .line 1804
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    const v5, 0x10203d4

    invoke-virtual {v4, v5}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mBugReport:Landroid/widget/Button;

    .line 1805
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    const v5, 0x10203d5

    invoke-virtual {v4, v5}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v30

    .end local v30    # "tvBugReportMessage":Landroid/widget/TextView;
    check-cast v30, Landroid/widget/TextView;

    .line 1806
    .local v30, "tvBugReportMessage":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    const v5, 0x10203d6

    invoke-virtual {v4, v5}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v31

    .end local v31    # "tvBugReportStatus":Landroid/widget/TextView;
    check-cast v31, Landroid/widget/TextView;

    .line 1807
    .local v31, "tvBugReportStatus":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    const v5, 0x10203c8

    invoke-virtual {v4, v5}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mLinearLayout:Landroid/widget/LinearLayout;

    .line 1808
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    const v5, 0x10203ca

    invoke-virtual {v4, v5}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mLandscapeLinearLayout:Landroid/widget/LinearLayout;

    .line 1809
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    const v5, 0x10203cb

    invoke-virtual {v4, v5}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mDescriptionlayout:Landroid/widget/LinearLayout;

    .line 1810
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    const v5, 0x10203cc

    invoke-virtual {v4, v5}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mSecondAnimatedText:Landroid/widget/TextView;

    .line 1822
    :goto_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mDescriptionlayout:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 1823
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mCancelButton:Landroid/widget/Button;

    new-instance v5, Lcom/android/server/policy/GlobalActions$22;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/server/policy/GlobalActions$22;-><init>(Lcom/android/server/policy/GlobalActions;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1832
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const v5, 0x1040138

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 1833
    .local v18, "bugReportString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    sget-object v6, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    sget-object v6, Landroid/os/Build;->ID:Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const v6, 0x104013e

    invoke-virtual {v4, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .line 1835
    .local v17, "bugReportStatus":Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1836
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1838
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mBugReport:Landroid/widget/Button;

    new-instance v5, Lcom/android/server/policy/GlobalActions$23;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/server/policy/GlobalActions$23;-><init>(Lcom/android/server/policy/GlobalActions;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1875
    sget-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsBugReportEnable:Z

    if-nez v4, :cond_21

    sget-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsCancelEnable:Z

    if-eqz v4, :cond_2a

    .line 1878
    :cond_21
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/GlobalActions;->adjustBottomView()V

    .line 1880
    :goto_b
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/GlobalActions;->adjustForceRestartView()V

    .line 1882
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/GlobalActions;->createPortraitGlobalActionsDialog()V

    .line 1884
    sget-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v4, :cond_22

    sget-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v4, :cond_2c

    sget-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z

    if-eqz v4, :cond_2c

    .line 1885
    :cond_22
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/GlobalActions;->createLandscapeGlobalActionsDialog()V

    .line 1886
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_23

    .line 1887
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mScrollview:Landroid/widget/ScrollView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 1889
    :cond_23
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_24

    .line 1890
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 1892
    :cond_24
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    const v5, 0x10203c6

    invoke-virtual {v4, v5}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout;

    .line 1893
    .local v14, "backgroundLayout":Landroid/widget/LinearLayout;
    new-instance v27, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x1

    move-object/from16 v0, v27

    invoke-direct {v0, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1894
    .local v27, "lllp":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v27

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1895
    const v4, 0x106014d

    invoke-virtual {v14, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 1896
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/GlobalActions;->mIsSupportedBlur:Z

    if-eqz v4, :cond_2b

    .line 1897
    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const-string/jumbo v5, "alpha"

    const/4 v6, 0x0

    const/16 v7, 0x80

    filled-new-array {v6, v7}, [I

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v15

    .line 1898
    .local v15, "backgroundalpha":Landroid/animation/ObjectAnimator;
    const-wide/16 v4, 0x12c

    invoke-virtual {v15, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->start()V

    .line 1903
    :goto_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->setContentView(Landroid/view/View;)V

    .line 2001
    .end local v14    # "backgroundLayout":Landroid/widget/LinearLayout;
    .end local v15    # "backgroundalpha":Landroid/animation/ObjectAnimator;
    .end local v17    # "bugReportStatus":Ljava/lang/String;
    .end local v18    # "bugReportString":Ljava/lang/String;
    .end local v27    # "lllp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v30    # "tvBugReportMessage":Landroid/widget/TextView;
    .end local v31    # "tvBugReportStatus":Landroid/widget/TextView;
    :goto_d
    const/4 v4, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->setCanceledOnTouchOutside(Z)V

    .line 2005
    sget-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v4, :cond_25

    sget-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z

    if-eqz v4, :cond_27

    .line 2006
    :cond_25
    sget-boolean v4, Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z

    if-nez v4, :cond_26

    .line 2007
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getListView()Landroid/widget/ListView;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 2008
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getListView()Landroid/widget/ListView;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setLongClickable(Z)V

    .line 2009
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1050219

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    .line 2010
    .local v16, "bottomPadding":I
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ListView;->getPaddingLeft()I

    move-result v5

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getListView()Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v6

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getListView()Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ListView;->getPaddingRight()I

    move-result v7

    move/from16 v0, v16

    invoke-virtual {v4, v5, v6, v7, v0}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 2011
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getListView()Landroid/widget/ListView;

    move-result-object v4

    .line 2012
    new-instance v5, Lcom/android/server/policy/GlobalActions$27;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/server/policy/GlobalActions$27;-><init>(Lcom/android/server/policy/GlobalActions;)V

    .line 2011
    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 2022
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7de

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 2023
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2028
    .end local v16    # "bottomPadding":I
    :cond_26
    const-string/jumbo v4, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    const-string/jumbo v5, "getSealedPowerDialogOptionMode"

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/server/policy/GlobalActions;->isIntEDM(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_27

    .line 2029
    new-instance v4, Lcom/android/server/policy/GlobalActions$28;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/server/policy/GlobalActions$28;-><init>(Lcom/android/server/policy/GlobalActions;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 2056
    :cond_27
    return-object v21

    .line 1782
    .end local v21    # "dialog":Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;
    :cond_28
    new-instance v4, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mLayout:Landroid/widget/LinearLayout;

    .line 1783
    new-instance v27, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x1

    move-object/from16 v0, v27

    invoke-direct {v0, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1784
    .restart local v27    # "lllp":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1785
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mLayout:Landroid/widget/LinearLayout;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto/16 :goto_9

    .line 1812
    .end local v27    # "lllp":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v21    # "dialog":Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;
    .local v30, "tvBugReportMessage":Landroid/widget/TextView;
    .local v31, "tvBugReportStatus":Landroid/widget/TextView;
    :cond_29
    new-instance v4, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v6}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getCount()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, v5, v6, v7}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;-><init>(Landroid/content/Context;ILandroid/os/Handler;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayoutSViewCover:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;

    .line 1813
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayoutSViewCover:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;

    const v5, 0x10203cf

    invoke-virtual {v4, v5}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mBottomlayout:Landroid/widget/LinearLayout;

    .line 1814
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayoutSViewCover:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;

    const v5, 0x102006f

    invoke-virtual {v4, v5}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mCancelButton:Landroid/widget/Button;

    .line 1815
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayoutSViewCover:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;

    const v5, 0x10203d4

    invoke-virtual {v4, v5}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mBugReport:Landroid/widget/Button;

    .line 1816
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayoutSViewCover:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;

    const v5, 0x10203d5

    invoke-virtual {v4, v5}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->findViewById(I)Landroid/view/View;

    move-result-object v30

    .end local v30    # "tvBugReportMessage":Landroid/widget/TextView;
    check-cast v30, Landroid/widget/TextView;

    .line 1817
    .local v30, "tvBugReportMessage":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayoutSViewCover:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;

    const v5, 0x10203d6

    invoke-virtual {v4, v5}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->findViewById(I)Landroid/view/View;

    move-result-object v31

    .end local v31    # "tvBugReportStatus":Landroid/widget/TextView;
    check-cast v31, Landroid/widget/TextView;

    .line 1818
    .local v31, "tvBugReportStatus":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayoutSViewCover:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;

    const v5, 0x10203c8

    invoke-virtual {v4, v5}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mLinearLayout:Landroid/widget/LinearLayout;

    .line 1819
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayoutSViewCover:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;

    const v5, 0x10203cb

    invoke-virtual {v4, v5}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mDescriptionlayout:Landroid/widget/LinearLayout;

    .line 1820
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayoutSViewCover:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;

    const v5, 0x10203cc

    invoke-virtual {v4, v5}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mSecondAnimatedText:Landroid/widget/TextView;

    goto/16 :goto_a

    .line 1876
    .restart local v17    # "bugReportStatus":Ljava/lang/String;
    .restart local v18    # "bugReportString":Ljava/lang/String;
    :cond_2a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mBottomlayout:Landroid/widget/LinearLayout;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_b

    .line 1900
    .restart local v14    # "backgroundLayout":Landroid/widget/LinearLayout;
    .restart local v27    # "lllp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_2b
    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const-string/jumbo v5, "alpha"

    const/4 v6, 0x0

    const/16 v7, 0x26

    filled-new-array {v6, v7}, [I

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v15

    .line 1901
    .restart local v15    # "backgroundalpha":Landroid/animation/ObjectAnimator;
    const-wide/16 v4, 0x12c

    invoke-virtual {v15, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->start()V

    goto/16 :goto_c

    .line 1905
    .end local v14    # "backgroundLayout":Landroid/widget/LinearLayout;
    .end local v15    # "backgroundalpha":Landroid/animation/ObjectAnimator;
    .end local v27    # "lllp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_2c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayoutSViewCover:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;

    const v5, 0x10203c6

    invoke-virtual {v4, v5}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout;

    .line 1906
    .restart local v14    # "backgroundLayout":Landroid/widget/LinearLayout;
    new-instance v27, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x1

    move-object/from16 v0, v27

    invoke-direct {v0, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1907
    .restart local v27    # "lllp":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v27

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1908
    const v4, 0x106014d

    invoke-virtual {v14, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 1909
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/GlobalActions;->mIsSupportedBlur:Z

    if-eqz v4, :cond_2d

    .line 1910
    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const-string/jumbo v5, "alpha"

    const/4 v6, 0x0

    const/16 v7, 0x80

    filled-new-array {v6, v7}, [I

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v15

    .line 1911
    .restart local v15    # "backgroundalpha":Landroid/animation/ObjectAnimator;
    const-wide/16 v4, 0x12c

    invoke-virtual {v15, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->start()V

    .line 1916
    :goto_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayoutSViewCover:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->setContentView(Landroid/view/View;)V

    goto/16 :goto_d

    .line 1913
    .end local v15    # "backgroundalpha":Landroid/animation/ObjectAnimator;
    :cond_2d
    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const-string/jumbo v5, "alpha"

    const/4 v6, 0x0

    const/16 v7, 0x26

    filled-new-array {v6, v7}, [I

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v15

    .line 1914
    .restart local v15    # "backgroundalpha":Landroid/animation/ObjectAnimator;
    const-wide/16 v4, 0x12c

    invoke-virtual {v15, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_e

    .line 1918
    .end local v14    # "backgroundLayout":Landroid/widget/LinearLayout;
    .end local v15    # "backgroundalpha":Landroid/animation/ObjectAnimator;
    .end local v17    # "bugReportStatus":Ljava/lang/String;
    .end local v18    # "bugReportString":Ljava/lang/String;
    .end local v27    # "lllp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v30    # "tvBugReportMessage":Landroid/widget/TextView;
    .end local v31    # "tvBugReportStatus":Landroid/widget/TextView;
    :cond_2e
    sget-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v4, :cond_2f

    sget-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z

    if-eqz v4, :cond_30

    .line 1998
    :cond_2f
    const v4, 0x1040133

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->setTitle(I)V

    goto/16 :goto_d

    .line 1919
    :cond_30
    const-string/jumbo v4, "GlobalActions"

    const-string/jumbo v5, "mIsCoverOpen  is false"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1920
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/Window;->requestFeature(I)Z

    .line 1921
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x833

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 1922
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-virtual {v4, v5, v6}, Landroid/view/Window;->setLayout(II)V

    .line 1923
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/LayoutInflater;

    .line 1924
    .local v26, "lf":Landroid/view/LayoutInflater;
    const/16 v32, 0x0

    .line 1925
    .local v32, "v":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v4, :cond_31

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v4}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_31

    .line 1926
    const v4, 0x1090071

    const/4 v5, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v32

    .line 1927
    .local v32, "v":Landroid/view/View;
    new-instance v4, Lcom/android/server/policy/GlobalActions$24;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/server/policy/GlobalActions$24;-><init>(Lcom/android/server/policy/GlobalActions;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1990
    :goto_f
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/GlobalActions;->isMiniCoverClosed()Z

    move-result v4

    if-eqz v4, :cond_37

    .line 1991
    new-instance v33, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    move-object/from16 v0, v33

    invoke-direct {v0, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1992
    .local v33, "vglp":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, v21

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_d

    .line 1938
    .end local v33    # "vglp":Landroid/view/ViewGroup$LayoutParams;
    .local v32, "v":Landroid/view/View;
    :cond_31
    const v4, 0x1090072

    const/4 v5, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v32

    .line 1939
    .local v32, "v":Landroid/view/View;
    sget-boolean v4, Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z

    if-nez v4, :cond_33

    .line 1940
    const-string/jumbo v4, "americano"

    sget-object v5, Lcom/android/server/policy/GlobalActions;->mScafe:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_32

    const-string/jumbo v4, "mocha"

    sget-object v5, Lcom/android/server/policy/GlobalActions;->mScafe:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 1941
    :cond_32
    const v4, 0x10203a8

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    .line 1952
    .local v19, "crossBtn":Landroid/view/View;
    :goto_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const/high16 v5, 0x1040000

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1953
    new-instance v4, Lcom/android/server/policy/GlobalActions$25;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/server/policy/GlobalActions$25;-><init>(Lcom/android/server/policy/GlobalActions;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1968
    .end local v19    # "crossBtn":Landroid/view/View;
    :cond_33
    const v4, 0x102037e

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mViewCoverParentLayout:Landroid/widget/ImageView;

    .line 1969
    const v4, 0x10203df

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    sput-object v4, Lcom/android/server/policy/GlobalActions;->mCoverViewListView:Landroid/widget/ListView;

    .line 1970
    sget-object v4, Lcom/android/server/policy/GlobalActions;->mCoverViewListView:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1971
    sget-object v4, Lcom/android/server/policy/GlobalActions;->mCoverViewListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_34

    .line 1972
    sget-object v4, Lcom/android/server/policy/GlobalActions;->mCoverViewListView:Landroid/widget/ListView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 1974
    :cond_34
    sget-object v4, Lcom/android/server/policy/GlobalActions;->mCoverViewListView:Landroid/widget/ListView;

    new-instance v5, Lcom/android/server/policy/GlobalActions$26;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/server/policy/GlobalActions$26;-><init>(Lcom/android/server/policy/GlobalActions;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1982
    const v4, 0x1020016

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/TextView;

    .line 1983
    .local v29, "titleView":Landroid/widget/TextView;
    const-string/jumbo v4, "VZW"

    sget-object v5, Lcom/android/server/policy/GlobalActions;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 1984
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x104011b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_f

    .line 1943
    .end local v29    # "titleView":Landroid/widget/TextView;
    :cond_35
    const v4, 0x102006f

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    .restart local v19    # "crossBtn":Landroid/view/View;
    goto/16 :goto_10

    .line 1986
    .end local v19    # "crossBtn":Landroid/view/View;
    .restart local v29    # "titleView":Landroid/widget/TextView;
    :cond_36
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1040133

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_f

    .line 1994
    .end local v29    # "titleView":Landroid/widget/TextView;
    :cond_37
    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->setContentView(Landroid/view/View;)V

    goto/16 :goto_d
.end method

.method private createLandscapeGlobalActionsDialog()V
    .locals 2

    .prologue
    .line 2357
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v0}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 2358
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2359
    const v1, 0x1050209

    .line 2358
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/GlobalActions;->mItemWidthLand:I

    .line 2365
    :goto_0
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    const v1, 0x10203c9

    invoke-virtual {v0, v1}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    .line 2367
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mLandscapeLinearLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/server/policy/GlobalActions$34;

    invoke-direct {v1, p0}, Lcom/android/server/policy/GlobalActions$34;-><init>(Lcom/android/server/policy/GlobalActions;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2411
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    new-instance v1, Lcom/android/server/policy/GlobalActions$35;

    invoke-direct {v1, p0}, Lcom/android/server/policy/GlobalActions$35;-><init>(Lcom/android/server/policy/GlobalActions;)V

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2419
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->initLandscapeAddView()V

    .line 2356
    return-void

    .line 2361
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2362
    const v1, 0x105020a

    .line 2361
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/GlobalActions;->mItemWidthLand:I

    goto :goto_0
.end method

.method private createPortraitGlobalActionsDialog()V
    .locals 2

    .prologue
    const v1, 0x10203c7

    .line 2060
    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z

    if-eqz v0, :cond_1

    .line 2063
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions;->mScrollview:Landroid/widget/ScrollView;

    .line 2065
    :goto_0
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mLinearLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/server/policy/GlobalActions$29;

    invoke-direct {v1, p0}, Lcom/android/server/policy/GlobalActions$29;-><init>(Lcom/android/server/policy/GlobalActions;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2108
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mScrollview:Landroid/widget/ScrollView;

    new-instance v1, Lcom/android/server/policy/GlobalActions$30;

    invoke-direct {v1, p0}, Lcom/android/server/policy/GlobalActions$30;-><init>(Lcom/android/server/policy/GlobalActions;)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2116
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->initPortraitAddView()V

    .line 2059
    return-void

    .line 2061
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayoutSViewCover:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions;->mScrollview:Landroid/widget/ScrollView;

    goto :goto_0
.end method

.method private doActionByBixby(I)V
    .locals 4
    .param p1, "itemResID"    # I

    .prologue
    const/4 v3, 0x1

    .line 2234
    const-string/jumbo v0, "GlobalActions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mPowerOffIconResId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/policy/GlobalActions;->mPowerOffIconResId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mRestartIconResId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/policy/GlobalActions;->mRestartIconResId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2235
    const-string/jumbo v0, "GlobalActions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "itemResID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2237
    invoke-direct {p0, p1}, Lcom/android/server/policy/GlobalActions;->getActionWithTag(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2238
    invoke-direct {p0, p1}, Lcom/android/server/policy/GlobalActions;->getActionWithTag(I)Landroid/view/View;

    move-result-object v0

    sput-object v0, Lcom/android/server/policy/GlobalActions;->SelectedItem:Landroid/view/View;

    .line 2239
    iget v0, p0, Lcom/android/server/policy/GlobalActions;->mPowerOffIconResId:I

    if-eq p1, v0, :cond_0

    iget v0, p0, Lcom/android/server/policy/GlobalActions;->mRestartIconResId:I

    if-ne p1, v0, :cond_1

    .line 2240
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v3, :cond_2

    .line 2241
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    iget v1, p0, Lcom/android/server/policy/GlobalActions;->mSelectedItemNumbyBixby:I

    invoke-virtual {v0, v1}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getItem(I)Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v0

    sget-object v1, Lcom/android/server/policy/GlobalActions;->SelectedItem:Landroid/view/View;

    invoke-direct {p0, v0, v1, v3}, Lcom/android/server/policy/GlobalActions;->actionClicked(Lcom/android/server/policy/GlobalActions$Action;Landroid/view/View;Z)V

    .line 2233
    :cond_1
    :goto_0
    return-void

    .line 2243
    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    iget v1, p0, Lcom/android/server/policy/GlobalActions;->mSelectedItemNumbyBixby:I

    invoke-virtual {v0, v1}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getItem(I)Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v0

    sget-object v1, Lcom/android/server/policy/GlobalActions;->SelectedItem:Landroid/view/View;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/policy/GlobalActions;->actionClicked(Lcom/android/server/policy/GlobalActions$Action;Landroid/view/View;Z)V

    goto :goto_0
.end method

.method private doAnimation(Landroid/view/View;FFFIZ)V
    .locals 32
    .param p1, "v"    # Landroid/view/View;
    .param p2, "transX"    # F
    .param p3, "transY"    # F
    .param p4, "scaleXY"    # F
    .param p5, "duration"    # I
    .param p6, "isConfirm"    # Z

    .prologue
    .line 2431
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    move-object/from16 v25, v0

    if-nez v25, :cond_0

    return-void

    .line 2432
    :cond_0
    const v25, 0x1020006

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    .line 2433
    .local v11, "imageView":Landroid/widget/ImageView;
    const v25, 0x102000b

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 2434
    .local v15, "messageView":Landroid/widget/TextView;
    const v25, 0x10203d7

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    .line 2435
    .local v21, "statusView":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mDescriptionlayout:Landroid/widget/LinearLayout;

    move-object/from16 v25, v0

    const v26, 0x10203cc

    invoke-virtual/range {v25 .. v26}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 2436
    .local v7, "descriptionView":Landroid/widget/TextView;
    const v25, 0x10203d9

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout;

    .line 2438
    .local v10, "imageFrameLayout":Landroid/widget/FrameLayout;
    const/4 v8, 0x0

    .line 2439
    .local v8, "desriptionAlpha":Landroid/animation/ObjectAnimator;
    const/4 v6, 0x0

    .line 2440
    .local v6, "bottomAlpha":Landroid/animation/ObjectAnimator;
    const/4 v9, 0x0

    .line 2442
    .local v9, "forceRestartAlpha":Landroid/animation/ObjectAnimator;
    if-eqz p6, :cond_8

    .line 2443
    invoke-virtual {v11}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Integer;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/GlobalActions;->mPowerOffIconResId:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_7

    .line 2444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x10407db

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2449
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mDescriptionlayout:Landroid/widget/LinearLayout;

    move-object/from16 v25, v0

    const-string/jumbo v26, "alpha"

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [F

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mDescriptionlayout:Landroid/widget/LinearLayout;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result v28

    const/16 v29, 0x0

    aput v28, v27, v29

    const/high16 v28, 0x3f800000    # 1.0f

    const/16 v29, 0x1

    aput v28, v27, v29

    invoke-static/range {v25 .. v27}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 2450
    .local v8, "desriptionAlpha":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mBottomlayout:Landroid/widget/LinearLayout;

    move-object/from16 v25, v0

    const-string/jumbo v26, "alpha"

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [F

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mBottomlayout:Landroid/widget/LinearLayout;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result v28

    const/16 v29, 0x0

    aput v28, v27, v29

    const/16 v28, 0x0

    const/16 v29, 0x1

    aput v28, v27, v29

    invoke-static/range {v25 .. v27}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 2451
    .local v6, "bottomAlpha":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mForceRestartlayout:Landroid/widget/LinearLayout;

    move-object/from16 v25, v0

    if-eqz v25, :cond_2

    .line 2452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mForceRestartlayout:Landroid/widget/LinearLayout;

    move-object/from16 v25, v0

    const-string/jumbo v26, "alpha"

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [F

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mForceRestartlayout:Landroid/widget/LinearLayout;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result v28

    const/16 v29, 0x0

    aput v28, v27, v29

    const/16 v28, 0x0

    const/16 v29, 0x1

    aput v28, v27, v29

    invoke-static/range {v25 .. v27}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 2454
    .end local v9    # "forceRestartAlpha":Landroid/animation/ObjectAnimator;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mBugReport:Landroid/widget/Button;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/widget/Button;->setFocusable(Z)V

    .line 2455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mBugReport:Landroid/widget/Button;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/widget/Button;->setClickable(Z)V

    .line 2466
    :goto_1
    const-wide/16 v26, 0x190

    move-wide/from16 v0, v26

    invoke-virtual {v8, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2468
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v24

    .line 2469
    .local v24, "wlp":Landroid/view/WindowManager$LayoutParams;
    const/4 v14, 0x0

    .line 2470
    .local v14, "ll":Landroid/widget/LinearLayout;
    sget-boolean v25, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v25, :cond_3

    sget-boolean v25, Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z

    if-eqz v25, :cond_a

    .line 2473
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    move-object/from16 v25, v0

    const v26, 0x10203c6

    invoke-virtual/range {v25 .. v26}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .end local v14    # "ll":Landroid/widget/LinearLayout;
    check-cast v14, Landroid/widget/LinearLayout;

    .line 2477
    .local v14, "ll":Landroid/widget/LinearLayout;
    :goto_2
    const/16 v22, 0x0

    .line 2478
    .local v22, "translateX":Landroid/animation/ObjectAnimator;
    const/16 v23, 0x0

    .line 2479
    .local v23, "translateY":Landroid/animation/ObjectAnimator;
    const/16 v16, 0x0

    .line 2481
    .local v16, "messageViewtranslateY":Landroid/animation/ObjectAnimator;
    if-eqz p6, :cond_b

    .line 2482
    const-string/jumbo v25, "translationX"

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [F

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aput p2, v26, v27

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v22

    .line 2483
    .local v22, "translateX":Landroid/animation/ObjectAnimator;
    const-string/jumbo v25, "translationY"

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [F

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aput p3, v26, v27

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v23

    .line 2484
    .local v23, "translateY":Landroid/animation/ObjectAnimator;
    const-string/jumbo v25, "translationY"

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [F

    move-object/from16 v26, v0

    invoke-virtual {v15}, Landroid/widget/TextView;->getHeight()I

    move-result v27

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v28, v0

    const-wide v30, 0x3fd999999999999aL    # 0.4

    mul-double v28, v28, v30

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/GlobalActions;->mMessageViewPaddingTop:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v30, v0

    add-double v28, v28, v30

    move-wide/from16 v0, v28

    double-to-float v0, v0

    move/from16 v27, v0

    const/16 v28, 0x0

    aput v27, v26, v28

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v15, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v16

    .line 2492
    .local v16, "messageViewtranslateY":Landroid/animation/ObjectAnimator;
    :goto_3
    const-string/jumbo v25, "scaleX"

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [F

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aput p4, v26, v27

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v17

    .line 2493
    .local v17, "scaleX":Landroid/animation/ObjectAnimator;
    const-string/jumbo v25, "scaleY"

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [F

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aput p4, v26, v27

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v10, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v19

    .line 2495
    .local v19, "scaleY":Landroid/animation/ObjectAnimator;
    const/16 v18, 0x0

    .line 2496
    .local v18, "scaleXMessageView":Landroid/animation/ObjectAnimator;
    const/16 v20, 0x0

    .line 2498
    .local v20, "scaleYMessageView":Landroid/animation/ObjectAnimator;
    const v25, 0x10203da

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    .line 2499
    .local v12, "imageViewConfirm":Landroid/widget/ImageView;
    const/high16 v25, 0x3f800000    # 1.0f

    move/from16 v0, v25

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 2500
    const/4 v13, 0x0

    .line 2501
    .local v13, "imageViewhide":Landroid/animation/ObjectAnimator;
    if-eqz p6, :cond_c

    .line 2502
    const-string/jumbo v25, "alpha"

    const/16 v26, 0x0

    const/16 v27, 0xff

    filled-new-array/range {v26 .. v27}, [I

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v12, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v13

    .line 2503
    .local v13, "imageViewhide":Landroid/animation/ObjectAnimator;
    const-string/jumbo v25, "scaleX"

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [F

    move-object/from16 v26, v0

    const v27, 0x3f6b851f    # 0.92f

    const/16 v28, 0x0

    aput v27, v26, v28

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v15, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v18

    .line 2504
    .local v18, "scaleXMessageView":Landroid/animation/ObjectAnimator;
    const-string/jumbo v25, "scaleY"

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [F

    move-object/from16 v26, v0

    const v27, 0x3f99999a    # 1.2f

    const/16 v28, 0x0

    aput v27, v26, v28

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v15, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v20

    .line 2510
    .local v20, "scaleYMessageView":Landroid/animation/ObjectAnimator;
    :goto_4
    const-wide/16 v26, 0xc8

    move-wide/from16 v0, v26

    invoke-virtual {v13, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2513
    const/4 v5, 0x0

    .line 2514
    .local v5, "backgroundalpha":Landroid/animation/ObjectAnimator;
    if-eqz p6, :cond_e

    .line 2515
    const v25, 0x106014d

    move/from16 v0, v25

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 2516
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/GlobalActions;->mIsSupportedBlur:Z

    move/from16 v25, v0

    if-eqz v25, :cond_d

    .line 2517
    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v25

    const-string/jumbo v26, "alpha"

    const/16 v27, 0x80

    const/16 v28, 0xbf

    filled-new-array/range {v27 .. v28}, [I

    move-result-object v27

    invoke-static/range {v25 .. v27}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 2529
    .local v5, "backgroundalpha":Landroid/animation/ObjectAnimator;
    :goto_5
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2530
    .local v4, "Aniset":Landroid/animation/AnimatorSet;
    new-instance v25, Lcom/android/server/policy/GlobalActions$36;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v10}, Lcom/android/server/policy/GlobalActions$36;-><init>(Lcom/android/server/policy/GlobalActions;Landroid/widget/FrameLayout;)V

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2557
    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 2560
    move/from16 v0, p2

    float-to-int v0, v0

    move/from16 v25, v0

    const/16 v26, -0x3e8

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_4

    .line 2561
    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v22, v25, v26

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2563
    :cond_4
    if-eqz v9, :cond_5

    .line 2564
    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v9, v25, v26

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2566
    :cond_5
    move/from16 v0, p3

    float-to-int v0, v0

    move/from16 v25, v0

    const/16 v26, -0x3e8

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_6

    .line 2567
    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v23, v25, v26

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2569
    :cond_6
    move/from16 v0, p5

    int-to-long v0, v0

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    invoke-virtual {v4, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2570
    new-instance v25, Landroid/view/animation/PathInterpolator;

    const v26, 0x3e2e147b    # 0.17f

    const v27, 0x3e2e147b    # 0.17f

    const v28, 0x3e4ccccd    # 0.2f

    const/high16 v29, 0x3f800000    # 1.0f

    invoke-direct/range {v25 .. v29}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2571
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    .line 2430
    return-void

    .line 2445
    .end local v4    # "Aniset":Landroid/animation/AnimatorSet;
    .end local v5    # "backgroundalpha":Landroid/animation/ObjectAnimator;
    .end local v12    # "imageViewConfirm":Landroid/widget/ImageView;
    .end local v13    # "imageViewhide":Landroid/animation/ObjectAnimator;
    .end local v14    # "ll":Landroid/widget/LinearLayout;
    .end local v16    # "messageViewtranslateY":Landroid/animation/ObjectAnimator;
    .end local v17    # "scaleX":Landroid/animation/ObjectAnimator;
    .end local v18    # "scaleXMessageView":Landroid/animation/ObjectAnimator;
    .end local v19    # "scaleY":Landroid/animation/ObjectAnimator;
    .end local v20    # "scaleYMessageView":Landroid/animation/ObjectAnimator;
    .end local v22    # "translateX":Landroid/animation/ObjectAnimator;
    .end local v23    # "translateY":Landroid/animation/ObjectAnimator;
    .end local v24    # "wlp":Landroid/view/WindowManager$LayoutParams;
    .local v6, "bottomAlpha":Landroid/animation/ObjectAnimator;
    .local v8, "desriptionAlpha":Landroid/animation/ObjectAnimator;
    .restart local v9    # "forceRestartAlpha":Landroid/animation/ObjectAnimator;
    :cond_7
    invoke-virtual {v11}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Integer;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/GlobalActions;->mRestartIconResId:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_1

    .line 2446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x10407dc

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 2457
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mDescriptionlayout:Landroid/widget/LinearLayout;

    move-object/from16 v25, v0

    const-string/jumbo v26, "alpha"

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [F

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mDescriptionlayout:Landroid/widget/LinearLayout;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result v28

    const/16 v29, 0x0

    aput v28, v27, v29

    const/16 v28, 0x0

    const/16 v29, 0x1

    aput v28, v27, v29

    invoke-static/range {v25 .. v27}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 2458
    .local v8, "desriptionAlpha":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mBottomlayout:Landroid/widget/LinearLayout;

    move-object/from16 v25, v0

    const-string/jumbo v26, "alpha"

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [F

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mBottomlayout:Landroid/widget/LinearLayout;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result v28

    const/16 v29, 0x0

    aput v28, v27, v29

    const/high16 v28, 0x3f800000    # 1.0f

    const/16 v29, 0x1

    aput v28, v27, v29

    invoke-static/range {v25 .. v27}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 2459
    .local v6, "bottomAlpha":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mForceRestartlayout:Landroid/widget/LinearLayout;

    move-object/from16 v25, v0

    if-eqz v25, :cond_9

    .line 2460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mForceRestartlayout:Landroid/widget/LinearLayout;

    move-object/from16 v25, v0

    const-string/jumbo v26, "alpha"

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [F

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mForceRestartlayout:Landroid/widget/LinearLayout;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result v28

    const/16 v29, 0x0

    aput v28, v27, v29

    const/high16 v28, 0x3f800000    # 1.0f

    const/16 v29, 0x1

    aput v28, v27, v29

    invoke-static/range {v25 .. v27}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 2462
    .end local v9    # "forceRestartAlpha":Landroid/animation/ObjectAnimator;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mBugReport:Landroid/widget/Button;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Landroid/widget/Button;->setFocusable(Z)V

    .line 2463
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mBugReport:Landroid/widget/Button;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Landroid/widget/Button;->setClickable(Z)V

    goto/16 :goto_1

    .line 2471
    .local v14, "ll":Landroid/widget/LinearLayout;
    .restart local v24    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayoutSViewCover:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;

    move-object/from16 v25, v0

    const v26, 0x10203c6

    invoke-virtual/range {v25 .. v26}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .end local v14    # "ll":Landroid/widget/LinearLayout;
    check-cast v14, Landroid/widget/LinearLayout;

    .local v14, "ll":Landroid/widget/LinearLayout;
    goto/16 :goto_2

    .line 2486
    .local v16, "messageViewtranslateY":Landroid/animation/ObjectAnimator;
    .local v22, "translateX":Landroid/animation/ObjectAnimator;
    .local v23, "translateY":Landroid/animation/ObjectAnimator;
    :cond_b
    const-string/jumbo v25, "x"

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [F

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aput p2, v26, v27

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v22

    .line 2487
    .local v22, "translateX":Landroid/animation/ObjectAnimator;
    const-string/jumbo v25, "y"

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [F

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aput p3, v26, v27

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v23

    .line 2488
    .local v23, "translateY":Landroid/animation/ObjectAnimator;
    const-string/jumbo v25, "translationY"

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [F

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x0

    aput v27, v26, v28

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v15, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v16

    .local v16, "messageViewtranslateY":Landroid/animation/ObjectAnimator;
    goto/16 :goto_3

    .line 2506
    .restart local v12    # "imageViewConfirm":Landroid/widget/ImageView;
    .local v13, "imageViewhide":Landroid/animation/ObjectAnimator;
    .restart local v17    # "scaleX":Landroid/animation/ObjectAnimator;
    .local v18, "scaleXMessageView":Landroid/animation/ObjectAnimator;
    .restart local v19    # "scaleY":Landroid/animation/ObjectAnimator;
    .local v20, "scaleYMessageView":Landroid/animation/ObjectAnimator;
    :cond_c
    const-string/jumbo v25, "alpha"

    const/16 v26, 0xff

    const/16 v27, 0x0

    filled-new-array/range {v26 .. v27}, [I

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v12, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v13

    .line 2507
    .local v13, "imageViewhide":Landroid/animation/ObjectAnimator;
    const-string/jumbo v25, "scaleX"

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [F

    move-object/from16 v26, v0

    const/high16 v27, 0x3f800000    # 1.0f

    const/16 v28, 0x0

    aput v27, v26, v28

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v15, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v18

    .line 2508
    .local v18, "scaleXMessageView":Landroid/animation/ObjectAnimator;
    const-string/jumbo v25, "scaleY"

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [F

    move-object/from16 v26, v0

    const/high16 v27, 0x3f800000    # 1.0f

    const/16 v28, 0x0

    aput v27, v26, v28

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v15, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v20

    .local v20, "scaleYMessageView":Landroid/animation/ObjectAnimator;
    goto/16 :goto_4

    .line 2519
    .local v5, "backgroundalpha":Landroid/animation/ObjectAnimator;
    :cond_d
    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v25

    const-string/jumbo v26, "alpha"

    const/16 v27, 0x0

    const/16 v28, 0x73

    filled-new-array/range {v27 .. v28}, [I

    move-result-object v27

    invoke-static/range {v25 .. v27}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .local v5, "backgroundalpha":Landroid/animation/ObjectAnimator;
    goto/16 :goto_5

    .line 2522
    .local v5, "backgroundalpha":Landroid/animation/ObjectAnimator;
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/GlobalActions;->mIsSupportedBlur:Z

    move/from16 v25, v0

    if-eqz v25, :cond_f

    .line 2523
    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v25

    const-string/jumbo v26, "alpha"

    const/16 v27, 0xbf

    const/16 v28, 0x80

    filled-new-array/range {v27 .. v28}, [I

    move-result-object v27

    invoke-static/range {v25 .. v27}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .local v5, "backgroundalpha":Landroid/animation/ObjectAnimator;
    goto/16 :goto_5

    .line 2525
    .local v5, "backgroundalpha":Landroid/animation/ObjectAnimator;
    :cond_f
    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v25

    const-string/jumbo v26, "alpha"

    const/16 v27, 0x73

    const/16 v28, 0x0

    filled-new-array/range {v27 .. v28}, [I

    move-result-object v27

    invoke-static/range {v25 .. v27}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .local v5, "backgroundalpha":Landroid/animation/ObjectAnimator;
    goto/16 :goto_5
.end method

.method private getActionWithTag(I)Landroid/view/View;
    .locals 6
    .param p1, "tag"    # I

    .prologue
    const/4 v5, 0x0

    .line 2251
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    if-eqz v3, :cond_2

    .line 2252
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v3}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 2253
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 2254
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2259
    .local v2, "selected":Landroid/view/View;
    :goto_1
    const v3, 0x1020006

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 2260
    .local v1, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p1, :cond_1

    .line 2261
    iput v0, p0, Lcom/android/server/policy/GlobalActions;->mSelectedItemNumbyBixby:I

    .line 2262
    return-object v2

    .line 2256
    .end local v1    # "imageView":Landroid/widget/ImageView;
    .end local v2    # "selected":Landroid/view/View;
    :cond_0
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mLandscapeLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .restart local v2    # "selected":Landroid/view/View;
    goto :goto_1

    .line 2252
    .restart local v1    # "imageView":Landroid/widget/ImageView;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2266
    .end local v0    # "i":I
    .end local v1    # "imageView":Landroid/widget/ImageView;
    .end local v2    # "selected":Landroid/view/View;
    :cond_2
    return-object v5
.end method

.method private getAssistAction()Lcom/android/server/policy/GlobalActions$Action;
    .locals 3

    .prologue
    .line 3035
    new-instance v0, Lcom/android/server/policy/GlobalActions$39;

    const v1, 0x1080375

    .line 3036
    const v2, 0x1040147

    .line 3035
    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/policy/GlobalActions$39;-><init>(Lcom/android/server/policy/GlobalActions;II)V

    return-object v0
.end method

.method private getCurrentNW()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 5121
    const-string/jumbo v0, "GlobalActions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[getCurrentNW()] :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "CURRENT_NETWORK"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5122
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "CURRENT_NETWORK"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getCurrentUser()Landroid/content/pm/UserInfo;
    .locals 2

    .prologue
    .line 3121
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 3122
    :catch_0
    move-exception v0

    .line 3123
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private getLockdownAction()Lcom/android/server/policy/GlobalActions$Action;
    .locals 3

    .prologue
    .line 3089
    new-instance v0, Lcom/android/server/policy/GlobalActions$41;

    const v1, 0x108002f

    .line 3090
    const v2, 0x1040149

    .line 3089
    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/policy/GlobalActions$41;-><init>(Lcom/android/server/policy/GlobalActions;II)V

    return-object v0
.end method

.method private getPhoneId(I)I
    .locals 2
    .param p1, "subId"    # I

    .prologue
    .line 5284
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 5287
    .local v0, "phoneId":I
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5288
    const/4 v1, 0x0

    return v1

    .line 5290
    :cond_0
    return v0
.end method

.method private getPhoneStateListener(II)Landroid/telephony/PhoneStateListener;
    .locals 1
    .param p1, "subId"    # I
    .param p2, "slotId"    # I

    .prologue
    .line 5297
    new-instance v0, Lcom/android/server/policy/GlobalActions$45;

    invoke-direct {v0, p0, p1}, Lcom/android/server/policy/GlobalActions$45;-><init>(Lcom/android/server/policy/GlobalActions;I)V

    .line 5348
    .local v0, "mListener":Landroid/telephony/PhoneStateListener;
    return-object v0
.end method

.method private getSCoverState()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 851
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-eqz v0, :cond_1

    .line 852
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v0, :cond_0

    .line 853
    const-string/jumbo v0, "GlobalActions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mCoverManager.getCoverState() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v2}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v0

    return v0

    .line 856
    :cond_0
    const-string/jumbo v0, "GlobalActions"

    const-string/jumbo v1, "state is null "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    return v2

    .line 860
    :cond_1
    const-string/jumbo v0, "GlobalActions"

    const-string/jumbo v1, "mCoverManager is null "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    return v2
.end method

.method private getSettingsAction()Lcom/android/server/policy/GlobalActions$Action;
    .locals 3

    .prologue
    .line 3003
    new-instance v0, Lcom/android/server/policy/GlobalActions$38;

    const v1, 0x10804be

    .line 3004
    const v2, 0x1040146

    .line 3003
    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/policy/GlobalActions$38;-><init>(Lcom/android/server/policy/GlobalActions;II)V

    return-object v0
.end method

.method private getVoiceAssistAction()Lcom/android/server/policy/GlobalActions$Action;
    .locals 3

    .prologue
    .line 3062
    new-instance v0, Lcom/android/server/policy/GlobalActions$40;

    const v1, 0x10804d5

    .line 3063
    const v2, 0x1040148

    .line 3062
    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/policy/GlobalActions$40;-><init>(Lcom/android/server/policy/GlobalActions;II)V

    return-object v0
.end method

.method private handleShow()V
    .locals 9

    .prologue
    const/4 v8, -0x1

    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 684
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->awakenIfNecessary()V

    .line 686
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->getSCoverState()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->isMobileKeyboard()Z

    move-result v3

    :goto_0
    sput-boolean v3, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    .line 687
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->isClearCover()Z

    move-result v3

    sput-boolean v3, Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z

    .line 688
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v3, :cond_0

    sget-boolean v3, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-eqz v3, :cond_2

    .line 701
    :cond_0
    const-string/jumbo v3, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    const-string/jumbo v5, "getPowerMenuLockedState"

    iget-object v6, p0, Lcom/android/server/policy/GlobalActions;->mTempStringArray:[Ljava/lang/String;

    invoke-direct {p0, v3, v5, v6}, Lcom/android/server/policy/GlobalActions;->isEDM(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "false"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 702
    iget-boolean v3, p0, Lcom/android/server/policy/GlobalActions;->mKeyguardShowing:Z

    .line 701
    if-eqz v3, :cond_3

    .line 703
    const-string/jumbo v3, "GlobalActions"

    const-string/jumbo v4, "Knox Customization: GlobalActions dialog will not display when keyguard is showing"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    return-void

    :cond_1
    move v3, v4

    .line 686
    goto :goto_0

    .line 690
    :cond_2
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v3}, Lcom/samsung/android/cover/CoverState;->getModel()I

    move-result v3

    const/4 v5, 0x3

    if-ne v3, v5, :cond_0

    .line 691
    const-string/jumbo v3, "GlobalActions"

    const-string/jumbo v4, "Device is not supported in Global Actions in main view, show panel in cocktail bar"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->notifyCocktailBarGlobalActions()V

    .line 693
    return-void

    .line 709
    :cond_3
    const-string/jumbo v3, "GlobalActions"

    const-string/jumbo v5, "handleShow() : Call createDialog()"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->createDialog()Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    .line 711
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->prepareDialog()V

    .line 714
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v3}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getCount()I

    move-result v3

    if-ne v3, v4, :cond_4

    .line 715
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v3, v7}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getItem(I)Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v3

    instance-of v3, v3, Lcom/android/server/policy/GlobalActions$SinglePressAction;

    .line 714
    if-eqz v3, :cond_4

    .line 716
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v3, v7}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getItem(I)Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v3

    instance-of v3, v3, Lcom/android/server/policy/GlobalActions$LongPressAction;

    if-eqz v3, :cond_a

    .line 720
    :cond_4
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    if-eqz v3, :cond_d

    .line 721
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v3}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 726
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x1040133

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 728
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v3}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 729
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x105021c

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sput v3, Lcom/android/server/policy/GlobalActions;->mSViewCoverWidth:I

    .line 730
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x105021d

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sput v3, Lcom/android/server/policy/GlobalActions;->mSViewCoverHeight:I

    .line 731
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x105021a

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sput v3, Lcom/android/server/policy/GlobalActions;->mClearCoverWidth:I

    .line 732
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x1050017

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sput v3, Lcom/android/server/policy/GlobalActions;->mStatusHeight:I

    .line 734
    const-string/jumbo v3, "GlobalActions"

    const-string/jumbo v5, "handleShow() : call mDialog.show()"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v3}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->show()V

    .line 736
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v3}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    const/high16 v5, 0x10000

    invoke-virtual {v3, v5}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 738
    sput-boolean v7, Lcom/android/server/policy/GlobalActions;->mIsMiniDialogMode:Z

    .line 739
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v3}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v3

    const/4 v5, 0x6

    if-ne v3, v5, :cond_5

    .line 740
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v3}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v3

    if-nez v3, :cond_5

    .line 741
    sput-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsMiniDialogMode:Z

    .line 742
    const-string/jumbo v3, "GlobalActions"

    const-string/jumbo v4, "handleShow(), mini dialog showed."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    :cond_5
    const-string/jumbo v3, "GlobalActions"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleShow() : mIsCoverOpen = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    sget-boolean v3, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v3, :cond_6

    sget-boolean v3, Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z

    if-eqz v3, :cond_b

    .line 783
    :cond_6
    :goto_1
    sget-boolean v3, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v3, :cond_7

    sget-boolean v3, Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z

    if-eqz v3, :cond_7

    .line 784
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v3}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    sget v4, Lcom/android/server/policy/GlobalActions;->mClearCoverWidth:I

    const/4 v5, -0x2

    invoke-virtual {v3, v4, v5}, Landroid/view/Window;->setLayout(II)V

    .line 787
    :cond_7
    sget-boolean v3, Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z

    if-eqz v3, :cond_9

    .line 788
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v3}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 789
    .local v2, "wlp":Landroid/view/WindowManager$LayoutParams;
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v3}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v8, v8}, Landroid/view/Window;->setLayout(II)V

    .line 790
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 791
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x20000

    or-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 792
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x1000000

    or-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 793
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v3, v3, 0x400

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 794
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 795
    iget-boolean v3, p0, Lcom/android/server/policy/GlobalActions;->mIsSupportedBlur:Z

    if-eqz v3, :cond_c

    .line 796
    const v3, 0x3ecccccd    # 0.4f

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 797
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    or-int/lit8 v3, v3, 0x40

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 801
    :goto_2
    sget-boolean v3, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v3, :cond_8

    .line 802
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v3, v3, 0x100

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 804
    :cond_8
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v3}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 805
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v3}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 807
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x112006a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 808
    .local v1, "hasNavigationBar":Z
    if-eqz v1, :cond_9

    iget-boolean v3, p0, Lcom/android/server/policy/GlobalActions;->mKeyguardShowing:Z

    if-eqz v3, :cond_9

    .line 809
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v3}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    .line 810
    const/16 v4, 0x202

    .line 809
    invoke-virtual {v3, v4}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 814
    .end local v1    # "hasNavigationBar":Z
    .end local v2    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_9
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->hideQuickpanelBackground()V

    .line 683
    .end local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :goto_3
    return-void

    .line 717
    :cond_a
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v3, v7}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getItem(I)Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v3

    check-cast v3, Lcom/android/server/policy/GlobalActions$SinglePressAction;

    invoke-virtual {v3}, Lcom/android/server/policy/GlobalActions$SinglePressAction;->onPress()V

    goto :goto_3

    .line 778
    .restart local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_b
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v3}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/view/Window;->clearFlags(I)V

    .line 779
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v3}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    sget v4, Lcom/android/server/policy/GlobalActions;->mSViewCoverWidth:I

    sget v5, Lcom/android/server/policy/GlobalActions;->mSViewCoverHeight:I

    sget v6, Lcom/android/server/policy/GlobalActions;->mStatusHeight:I

    sub-int/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/view/Window;->setLayout(II)V

    .line 780
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v3}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x30

    invoke-virtual {v3, v4}, Landroid/view/Window;->setGravity(I)V

    goto/16 :goto_1

    .line 799
    .restart local v2    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_c
    const/high16 v3, 0x3f400000    # 0.75f

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    goto :goto_2

    .line 817
    .end local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v2    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_d
    const-string/jumbo v3, "GlobalActions"

    const-string/jumbo v4, "Can not show dialog as it is not well formed properly"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private hideQuickpanelBackground()V
    .locals 1

    .prologue
    .line 5031
    const-string/jumbo v0, "GlobalActions"

    invoke-direct {p0, v0}, Lcom/android/server/policy/GlobalActions;->hideQuickpanelBackground(Ljava/lang/String;)V

    .line 5030
    return-void
.end method

.method private hideQuickpanelBackground(Ljava/lang/String;)V
    .locals 4
    .param p1, "sender"    # Ljava/lang/String;

    .prologue
    .line 5035
    sget-boolean v1, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    if-nez v1, :cond_1

    :cond_0
    return-void

    .line 5036
    :cond_1
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_2

    return-void

    .line 5037
    :cond_2
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 5038
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5039
    sget-object v1, Lcom/android/server/policy/GlobalActions;->mSCoverRequestStatus:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5034
    return-void
.end method

.method private initCoverManager(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 890
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 891
    new-instance v0, Lcom/samsung/android/cover/CoverManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 892
    const-string/jumbo v0, "GlobalActions"

    const-string/jumbo v1, "initCoverManager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    if-eqz v0, :cond_1

    .line 895
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/cover/CoverManager;->registerListener(Lcom/samsung/android/cover/CoverManager$StateListener;)V

    .line 896
    const-string/jumbo v0, "GlobalActions"

    const-string/jumbo v1, "mCoverManager.registerListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    :cond_1
    return-void
.end method

.method private initLandscapeAddView()V
    .locals 4

    .prologue
    .line 2423
    iget v1, p0, Lcom/android/server/policy/GlobalActions;->mItemLandscapeDivider:I

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mItemDividerLand:I

    .line 2425
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v1}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2426
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mLandscapeLinearLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v2, v0}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getItem(I)Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v2, v0, v3}, Lcom/android/server/policy/GlobalActions;->makeActionsItem(Lcom/android/server/policy/GlobalActions$Action;IZ)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2425
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2422
    :cond_0
    return-void
.end method

.method private initPortraitAddView()V
    .locals 4

    .prologue
    .line 2341
    sget-boolean v1, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z

    if-eqz v1, :cond_1

    .line 2344
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v1}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getCount()I

    move-result v1

    const/4 v2, 0x3

    if-gt v1, v2, :cond_2

    .line 2345
    iget v1, p0, Lcom/android/server/policy/GlobalActions;->mItemPortraitDivider:I

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mItemDivider:I

    .line 2351
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v1}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 2352
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mLinearLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v2, v0}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getItem(I)Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p0, v2, v0, v3}, Lcom/android/server/policy/GlobalActions;->makeActionsItem(Lcom/android/server/policy/GlobalActions$Action;IZ)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2351
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2342
    .end local v0    # "i":I
    :cond_1
    iget v1, p0, Lcom/android/server/policy/GlobalActions;->mItemPortraitDividerSViewCover:I

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mItemDivider:I

    goto :goto_0

    .line 2347
    :cond_2
    iget v1, p0, Lcom/android/server/policy/GlobalActions;->mItemPortraitDividerOverFour:I

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mItemDivider:I

    goto :goto_0

    .line 2340
    .restart local v0    # "i":I
    :cond_3
    return-void
.end method

.method private initValueForCreate()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 511
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->displaywidth:I

    .line 512
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "shopdemo"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/policy/GlobalActions;->isShopDemo:Z

    .line 514
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 515
    const v4, 0x1050208

    .line 514
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mItemWidth:I

    .line 516
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 517
    const v4, 0x1050209

    .line 516
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mItemWidthLand:I

    .line 518
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 519
    const v4, 0x1050206

    .line 518
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mItemHeight:I

    .line 520
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 521
    const v4, 0x1050207

    .line 520
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mItemHeightWithStatus:I

    .line 522
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 523
    const v4, 0x105020c

    .line 522
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mItemMaxWidth:I

    .line 524
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 525
    const v4, 0x105020d

    .line 524
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mItemMaxWidthLand:I

    .line 526
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 527
    const v4, 0x1050217

    .line 526
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mMessageViewPaddingTop:I

    .line 528
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 529
    const v4, 0x1050218

    .line 528
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mMessageViewPaddingBottom:I

    .line 530
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 531
    const v4, 0x1050212

    .line 530
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mItemPortraitDivider:I

    .line 532
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 533
    const v4, 0x1050213

    .line 532
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mItemPortraitDividerOverFour:I

    .line 534
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 535
    const v4, 0x1050214

    .line 534
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mItemLandscapeDivider:I

    .line 536
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 537
    const v4, 0x1050215

    .line 536
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mItemPortraitDividerSViewCover:I

    .line 539
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 540
    const v4, 0x105020e

    .line 539
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mBottomViewSingleItemWidth:I

    .line 541
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 542
    const v4, 0x105020f

    .line 541
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mBottomViewSingleCancelItemWidth:I

    .line 543
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 544
    const v4, 0x1050210

    .line 543
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mBottomViewDoubleItemWidth:I

    .line 545
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 546
    const v4, 0x1050211

    .line 545
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mBottomViewSingleItemHeight:I

    .line 548
    const v1, 0x1080a29

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mPowerOffIconResId:I

    .line 549
    const v1, 0x1080a2a

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mConfirmPowerOffIconResId:I

    .line 550
    const v1, 0x1080a2b

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mRestartIconResId:I

    .line 551
    const v1, 0x1080a2c

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mConfirmRestartIconResId:I

    .line 552
    const v1, 0x1080a27

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mEmergencyIconResId:I

    .line 553
    const v1, 0x1080a26

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mDataNetworkIconResId:I

    .line 555
    const v1, 0x10407bf

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mEmergencyStringId:I

    .line 556
    const v1, 0x1040143

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneStringId:I

    .line 557
    const v1, 0x10407d3

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mDataNetworkStringId:I

    .line 559
    iput-boolean v2, p0, Lcom/android/server/policy/GlobalActions;->mIsSupportedBlur:Z

    .line 560
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 561
    sput v3, Lcom/android/server/policy/GlobalActions;->mIsSelectedItemTagForSecure:I

    .line 562
    sput v3, Lcom/android/server/policy/GlobalActions;->sIsSelectedItemTagForBixby:I

    .line 563
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mSelectedItemNumbyBixby:I

    .line 565
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 567
    .local v0, "pm":Landroid/content/pm/PackageManager;
    iput-boolean v3, p0, Lcom/android/server/policy/GlobalActions;->mIsDisableConfirm:Z

    .line 510
    return-void

    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    move v1, v3

    .line 512
    goto/16 :goto_0
.end method

.method private isActionAvailable(I)Z
    .locals 5
    .param p1, "itemResID"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 5392
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->isTSafeLock()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mIsSecureKeyguard:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/policy/GlobalActions;->mPowerOffIconResId:I

    if-ne p1, v0, :cond_1

    .line 5393
    iget v0, p0, Lcom/android/server/policy/GlobalActions;->mPowerOffIconResId:I

    if-ne p1, v0, :cond_0

    .line 5394
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mUnablePowerOff:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 5396
    :cond_0
    return v4

    .line 5399
    :cond_1
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->isSKTCarrierLockPlusEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->isFMMlocked()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_2
    iget v0, p0, Lcom/android/server/policy/GlobalActions;->mPowerOffIconResId:I

    if-eq p1, v0, :cond_3

    .line 5400
    iget v0, p0, Lcom/android/server/policy/GlobalActions;->mRestartIconResId:I

    if-ne p1, v0, :cond_5

    .line 5402
    :cond_3
    iget v0, p0, Lcom/android/server/policy/GlobalActions;->mPowerOffIconResId:I

    if-ne p1, v0, :cond_9

    .line 5403
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mUnablePowerOffForFMM:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 5409
    :cond_4
    :goto_0
    return v4

    .line 5401
    :cond_5
    iget v0, p0, Lcom/android/server/policy/GlobalActions;->mEmergencyIconResId:I

    if-eq p1, v0, :cond_3

    .line 5412
    :cond_6
    iget v0, p0, Lcom/android/server/policy/GlobalActions;->mPowerOffIconResId:I

    if-eq p1, v0, :cond_7

    iget v0, p0, Lcom/android/server/policy/GlobalActions;->mRestartIconResId:I

    if-ne p1, v0, :cond_b

    .line 5413
    :cond_7
    const-string/jumbo v0, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string/jumbo v1, "isPowerOffAllowed"

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mTrueStringArray:[Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/policy/GlobalActions;->isEDM(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 5414
    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->SAFE_DEBUG:Z

    if-eqz v0, :cond_8

    .line 5415
    const-string/jumbo v0, "GlobalActions"

    const-string/jumbo v1, "power or restart : restricted by MDM "

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5417
    :cond_8
    return v4

    .line 5404
    :cond_9
    iget v0, p0, Lcom/android/server/policy/GlobalActions;->mRestartIconResId:I

    if-ne p1, v0, :cond_a

    .line 5405
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mUnableRestartForFMM:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 5406
    :cond_a
    iget v0, p0, Lcom/android/server/policy/GlobalActions;->mEmergencyIconResId:I

    if-ne p1, v0, :cond_4

    .line 5407
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mUnableEmergencyforFMM:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 5420
    :cond_b
    return v3
.end method

.method private isCHINA()Z
    .locals 3

    .prologue
    .line 5213
    const-string/jumbo v1, "ro.csc.sales_code"

    const-string/jumbo v2, "NONE"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 5216
    .local v0, "SALES_CODE":Ljava/lang/String;
    const-string/jumbo v1, "CMCC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "CHM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5218
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 5220
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private isClearCover()Z
    .locals 2

    .prologue
    .line 5226
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 5227
    const/4 v0, 0x1

    return v0

    .line 5229
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isCurrentUserOwner()Z
    .locals 2

    .prologue
    .line 3128
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 3129
    .local v0, "currentUser":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isDataCapable(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 5255
    const-string/jumbo v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 5256
    .local v0, "cm":Landroid/net/ConnectivityManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v1

    return v1
.end method

.method private isEDM(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "ProviderURI"    # Ljava/lang/String;
    .param p2, "queryValue"    # Ljava/lang/String;
    .param p3, "Arg"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 5151
    const-string/jumbo v7, ""

    .line 5152
    .local v7, "result":Ljava/lang/String;
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 5153
    .local v1, "uri":Landroid/net/Uri;
    const/4 v6, 0x0

    .line 5154
    .local v6, "cr":Landroid/database/Cursor;
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 5155
    const/4 v0, 0x0

    aget-object v0, p3, v0

    const-string/jumbo v3, "temp"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5156
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, p2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 5163
    .end local v6    # "cr":Landroid/database/Cursor;
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    .line 5165
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5166
    invoke-interface {v6, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 5168
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 5171
    :cond_1
    return-object v7

    .line 5158
    .restart local v6    # "cr":Landroid/database/Cursor;
    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, p2

    move-object v4, p3

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .local v6, "cr":Landroid/database/Cursor;
    goto :goto_0

    .line 5167
    .end local v6    # "cr":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    .line 5168
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 5167
    throw v0
.end method

.method private isFMMlocked()Z
    .locals 2

    .prologue
    .line 5424
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isFMMLockEnabled(I)Z

    move-result v0

    return v0
.end method

.method private isGlobalActionConfirming()Z
    .locals 2

    .prologue
    .line 4677
    sget-object v0, Lcom/android/server/policy/GlobalActions;->sIsConfirmingGuard:Ljava/lang/Object;

    monitor-enter v0

    .line 4678
    :try_start_0
    sget-boolean v1, Lcom/android/server/policy/GlobalActions;->sIsConfirming:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    .line 4677
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private isIntEDM(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "ProviderURI"    # Ljava/lang/String;
    .param p2, "queryValue"    # Ljava/lang/String;

    .prologue
    .line 5175
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mTempStringArray:[Ljava/lang/String;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/policy/GlobalActions;->isEDM(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5176
    const/4 v0, -0x1

    return v0

    .line 5178
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mTempStringArray:[Ljava/lang/String;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/policy/GlobalActions;->isEDM(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private isMSim()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 5388
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMiniCoverClosed()Z
    .locals 2

    .prologue
    .line 5234
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 5235
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5236
    const/4 v0, 0x1

    return v0

    .line 5238
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isMobileKeyboard()Z
    .locals 2

    .prologue
    .line 5243
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 5244
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 5246
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private isSKTCarrierLockPlusEnabled()Z
    .locals 2

    .prologue
    .line 5428
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isCarrierLockPlusEnabled(I)Z

    move-result v0

    return v0
.end method

.method private isSecurePoweroff(I)Z
    .locals 4
    .param p1, "selectedItem"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5433
    iget v0, p0, Lcom/android/server/policy/GlobalActions;->mPowerOffIconResId:I

    if-eq p1, v0, :cond_0

    return v2

    .line 5435
    :cond_0
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->isSimLock()Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 5438
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mIsSecureKeyguard:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-eqz v0, :cond_3

    .line 5445
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mIsSecureKeyguard:Z

    if-eqz v0, :cond_4

    .line 5446
    const-string/jumbo v0, "GlobalActions"

    const-string/jumbo v1, "isFMMlocked true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5447
    sput p1, Lcom/android/server/policy/GlobalActions;->mIsSelectedItemTagForSecure:I

    .line 5448
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->sendBendedPendingIntent()V

    .line 5449
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5450
    return v3

    .line 5439
    :cond_3
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mUnablePowerOffForSecureLock:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 5440
    return v3

    .line 5452
    :cond_4
    return v2
.end method

.method private isSimCardInserted(I)Z
    .locals 8
    .param p1, "slotidx"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 5472
    const-string/jumbo v6, "ril.MSIMM"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5473
    .local v3, "simMode":Ljava/lang/String;
    const-string/jumbo v6, "1"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 5474
    if-nez p1, :cond_0

    .line 5475
    return v5

    .line 5477
    :cond_0
    return v4

    .line 5481
    :cond_1
    const-string/jumbo v6, "ril.ICC_TYPE"

    const-string/jumbo v7, "0,0"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5482
    .local v1, "iccTemp":Ljava/lang/String;
    const-string/jumbo v6, ","

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 5483
    .local v0, "iccStatusSlot":[Ljava/lang/String;
    array-length v6, v0

    const/4 v7, 0x2

    if-eq v6, v7, :cond_2

    .line 5484
    return v5

    .line 5489
    :cond_2
    const/4 v2, 0x0

    .line 5490
    .local v2, "key":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 5498
    .end local v2    # "key":Ljava/lang/String;
    :goto_0
    if-eqz v2, :cond_3

    const-string/jumbo v6, ""

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 5499
    :cond_3
    return v5

    .line 5492
    .restart local v2    # "key":Ljava/lang/String;
    :pswitch_0
    aget-object v2, v0, v5

    .local v2, "key":Ljava/lang/String;
    goto :goto_0

    .line 5495
    .local v2, "key":Ljava/lang/String;
    :pswitch_1
    aget-object v2, v0, v4

    .local v2, "key":Ljava/lang/String;
    goto :goto_0

    .line 5501
    .end local v2    # "key":Ljava/lang/String;
    :cond_4
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_5

    :goto_1
    return v4

    :cond_5
    move v4, v5

    goto :goto_1

    .line 5490
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isSimLock()Z
    .locals 10

    .prologue
    const/16 v9, 0x9

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 4684
    const/4 v3, 0x0

    .line 4686
    .local v3, "SimStateResult":Z
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    .line 4687
    .local v2, "SimState":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    .line 4688
    .local v1, "PhoneCount":I
    new-array v0, v1, [I

    .line 4690
    .local v0, "MSimServiceState":[I
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->isMSim()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 4691
    const/4 v4, 0x0

    .end local v3    # "SimStateResult":Z
    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_5

    .line 4692
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v5

    aput v5, v0, v4

    .line 4693
    aget v5, v0, v4

    if-eq v5, v7, :cond_0

    .line 4694
    aget v5, v0, v4

    if-ne v5, v8, :cond_1

    :cond_0
    move v5, v6

    .line 4693
    :goto_1
    or-int/2addr v3, v5

    .line 4691
    .local v3, "SimStateResult":Z
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 4695
    .end local v3    # "SimStateResult":Z
    :cond_1
    aget v5, v0, v4

    if-ne v5, v9, :cond_2

    move v5, v6

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .line 4698
    .end local v4    # "i":I
    .local v3, "SimStateResult":Z
    :cond_3
    if-eq v2, v7, :cond_4

    .line 4699
    if-ne v2, v8, :cond_6

    .line 4698
    :cond_4
    const/4 v3, 0x1

    .line 4702
    .end local v3    # "SimStateResult":Z
    :cond_5
    :goto_2
    return v3

    .line 4700
    .restart local v3    # "SimStateResult":Z
    :cond_6
    if-ne v2, v9, :cond_7

    const/4 v3, 0x1

    goto :goto_2

    :cond_7
    const/4 v3, 0x0

    goto :goto_2
.end method

.method private isSimReady()Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 4707
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    .line 4709
    .local v0, "SimState":I
    const-string/jumbo v5, "ro.config.donot_nosim"

    invoke-static {v5, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 4712
    .local v4, "lSimValue":Z
    if-eqz v0, :cond_0

    if-ne v0, v8, :cond_1

    :cond_0
    const/4 v3, 0x1

    .line 4714
    .local v3, "finalSimState":Z
    :goto_0
    if-nez v4, :cond_2

    if-eqz v3, :cond_2

    .line 4715
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4716
    .local v2, "builder":Landroid/app/AlertDialog$Builder;
    const v5, 0x10407ca

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 4717
    const v5, 0x10407cb

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 4718
    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 4719
    const v5, 0x104000a

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 4721
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 4725
    .local v1, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7de

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    .line 4728
    new-instance v5, Lcom/android/server/policy/GlobalActions$44;

    invoke-direct {v5, p0}, Lcom/android/server/policy/GlobalActions$44;-><init>(Lcom/android/server/policy/GlobalActions;)V

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 4737
    invoke-virtual {v1, v8}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 4738
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 4740
    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mConfirmDialog:Landroid/app/AlertDialog;

    .line 4741
    sget-object v5, Lcom/android/server/policy/GlobalActions;->sIsConfirmingGuard:Ljava/lang/Object;

    monitor-enter v5

    .line 4742
    const/4 v6, 0x1

    :try_start_0
    sput-boolean v6, Lcom/android/server/policy/GlobalActions;->sIsConfirming:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    .line 4744
    return v7

    .line 4712
    .end local v1    # "alert":Landroid/app/AlertDialog;
    .end local v2    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v3    # "finalSimState":Z
    :cond_1
    const/4 v3, 0x0

    .restart local v3    # "finalSimState":Z
    goto :goto_0

    .line 4741
    .restart local v1    # "alert":Landroid/app/AlertDialog;
    .restart local v2    # "builder":Landroid/app/AlertDialog$Builder;
    :catchall_0
    move-exception v6

    monitor-exit v5

    throw v6

    .line 4746
    .end local v1    # "alert":Landroid/app/AlertDialog;
    .end local v2    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_2
    return v8
.end method

.method private isSingleActionItem(Landroid/view/View;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2721
    const v2, 0x1020006

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2722
    .local v0, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2724
    .local v1, "imageViewTag":I
    iget v2, p0, Lcom/android/server/policy/GlobalActions;->mPowerOffIconResId:I

    if-eq v1, v2, :cond_0

    iget v2, p0, Lcom/android/server/policy/GlobalActions;->mRestartIconResId:I

    if-ne v1, v2, :cond_1

    .line 2725
    :cond_0
    const/4 v2, 0x1

    return v2

    .line 2727
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private isTSafeLock()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 5260
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    if-nez v3, :cond_0

    return v2

    .line 5261
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/policy/GlobalActions;->hasTSafeLock()Z

    move-result v3

    if-nez v3, :cond_1

    return v2

    .line 5263
    :cond_1
    const-string/jumbo v0, "off_menu_setting"

    .line 5264
    .local v0, "OFF_MENU_SETTING":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "off_menu_setting"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_2

    :goto_0
    return v1

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method private isUSA()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 5183
    const-string/jumbo v1, "ro.csc.sales_code"

    const-string/jumbo v2, "NONE"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 5185
    .local v0, "SALES_CODE":Ljava/lang/String;
    const-string/jumbo v1, "usa"

    const-string/jumbo v2, "ro.csc.country_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5186
    return v3

    .line 5187
    :cond_0
    const-string/jumbo v1, "VZW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "ATT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "TMB"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5188
    const-string/jumbo v1, "SPR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 5187
    if-nez v1, :cond_1

    .line 5188
    const-string/jumbo v1, "VMU"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 5187
    if-nez v1, :cond_1

    .line 5188
    const-string/jumbo v1, "MTR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 5187
    if-nez v1, :cond_1

    .line 5189
    const-string/jumbo v1, "USC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 5187
    if-nez v1, :cond_1

    .line 5189
    const-string/jumbo v1, "BST"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 5187
    if-nez v1, :cond_1

    .line 5189
    const-string/jumbo v1, "XAS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 5187
    if-nez v1, :cond_1

    .line 5190
    const-string/jumbo v1, "LRA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 5187
    if-nez v1, :cond_1

    .line 5190
    const-string/jumbo v1, "SPT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 5187
    if-nez v1, :cond_1

    .line 5190
    const-string/jumbo v1, "CSP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 5187
    if-nez v1, :cond_1

    .line 5191
    const-string/jumbo v1, "AIO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 5187
    if-nez v1, :cond_1

    .line 5191
    const-string/jumbo v1, "TFN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 5187
    if-nez v1, :cond_1

    .line 5191
    const-string/jumbo v1, "CRI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 5187
    if-eqz v1, :cond_2

    .line 5192
    :cond_1
    return v3

    .line 5194
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method private isVoiceCapable()Z
    .locals 3

    .prologue
    .line 5250
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 5251
    .local v0, "mgr":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v1

    return v1
.end method

.method private makeActionsItem(Lcom/android/server/policy/GlobalActions$Action;IZ)Landroid/view/View;
    .locals 21
    .param p1, "item"    # Lcom/android/server/policy/GlobalActions$Action;
    .param p2, "i"    # I
    .param p3, "isPort"    # Z

    .prologue
    .line 2120
    move-object/from16 v4, p1

    .line 2121
    .local v4, "action":Lcom/android/server/policy/GlobalActions$Action;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v16

    invoke-interface {v0, v15, v1, v2, v3}, Lcom/android/server/policy/GlobalActions$Action;->create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v14

    .line 2123
    .local v14, "view":Landroid/view/View;
    const v15, 0x1020006

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 2124
    .local v6, "imageView":Landroid/widget/ImageView;
    const v15, 0x10203da

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 2126
    .local v7, "imageViewConfirm":Landroid/widget/ImageView;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v15

    if-eqz v15, :cond_0

    .line 2127
    invoke-virtual {v6}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/GlobalActions;->mPowerOffIconResId:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_4

    .line 2128
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/policy/GlobalActions;->mConfirmPowerOffIconResId:I

    invoke-virtual {v7, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2129
    const/4 v15, 0x0

    invoke-virtual {v7, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2130
    const/4 v15, 0x0

    invoke-virtual {v7, v15}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 2137
    :cond_0
    :goto_0
    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/View;->setAlpha(F)V

    .line 2139
    if-eqz p3, :cond_5

    .line 2140
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/policy/GlobalActions;->mItemMaxWidth:I

    const/16 v16, -0x2

    move/from16 v0, v16

    invoke-direct {v8, v15, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2141
    .local v8, "lllp":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v15}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getCount()I

    move-result v15

    add-int/lit8 v16, p2, 0x1

    sub-int v15, v15, v16

    if-eqz v15, :cond_1

    .line 2142
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/policy/GlobalActions;->mItemDivider:I

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v8, v0, v1, v2, v15}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 2151
    :cond_1
    :goto_1
    invoke-virtual {v14, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2152
    invoke-virtual {v14}, Landroid/view/View;->bringToFront()V

    .line 2153
    const v15, 0x10203d9

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    .line 2154
    .local v5, "imageFrameLayout":Landroid/widget/FrameLayout;
    move-object v13, v14

    .line 2155
    .local v13, "tempView":Landroid/view/View;
    if-eqz v5, :cond_3

    .line 2156
    if-eqz p3, :cond_2

    .line 2157
    const v15, 0x10203d7

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 2158
    .local v12, "statusView":Landroid/widget/TextView;
    sget-boolean v15, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v15, :cond_2

    sget-boolean v15, Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z

    if-eqz v15, :cond_6

    .line 2167
    .end local v12    # "statusView":Landroid/widget/TextView;
    :cond_2
    :goto_2
    const/4 v15, 0x1

    invoke-virtual {v5, v15}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 2168
    const/4 v15, 0x1

    invoke-virtual {v5, v15}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 2169
    new-instance v15, Lcom/android/server/policy/GlobalActions$31;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-direct {v15, v0, v1, v14, v2}, Lcom/android/server/policy/GlobalActions$31;-><init>(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$Action;Landroid/view/View;Z)V

    invoke-virtual {v5, v15}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2176
    new-instance v15, Lcom/android/server/policy/GlobalActions$32;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/server/policy/GlobalActions$32;-><init>(Lcom/android/server/policy/GlobalActions;)V

    invoke-virtual {v5, v15}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 2194
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const-string/jumbo v16, "accessibility"

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/accessibility/AccessibilityManager;

    .line 2195
    .local v10, "mAccessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    if-eqz v10, :cond_7

    invoke-virtual {v10}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v15

    if-eqz v15, :cond_7

    .line 2196
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const v16, 0x1080352

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    invoke-virtual {v5, v15}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 2200
    :goto_3
    invoke-virtual {v14}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v15

    const/high16 v16, 0x3f800000    # 1.0f

    invoke-virtual/range {v15 .. v16}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v15

    const-wide/16 v16, 0x258

    invoke-virtual/range {v15 .. v17}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v15

    new-instance v16, Landroid/view/animation/PathInterpolator;

    const v17, 0x3ebd70a4    # 0.37f

    const/16 v18, 0x0

    const v19, 0x3e99999a    # 0.3f

    const/high16 v20, 0x3f800000    # 1.0f

    invoke-direct/range {v16 .. v20}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual/range {v15 .. v16}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2202
    .end local v10    # "mAccessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    :cond_3
    return-object v14

    .line 2131
    .end local v5    # "imageFrameLayout":Landroid/widget/FrameLayout;
    .end local v8    # "lllp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v13    # "tempView":Landroid/view/View;
    :cond_4
    invoke-virtual {v6}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/GlobalActions;->mRestartIconResId:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    .line 2132
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/policy/GlobalActions;->mConfirmRestartIconResId:I

    invoke-virtual {v7, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2133
    const/4 v15, 0x0

    invoke-virtual {v7, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2134
    const/4 v15, 0x0

    invoke-virtual {v7, v15}, Landroid/widget/ImageView;->setAlpha(F)V

    goto/16 :goto_0

    .line 2145
    :cond_5
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/policy/GlobalActions;->mItemWidthLand:I

    const/16 v16, -0x2

    move/from16 v0, v16

    invoke-direct {v8, v15, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2146
    .restart local v8    # "lllp":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v15}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getCount()I

    move-result v15

    add-int/lit8 v16, p2, 0x1

    sub-int v15, v15, v16

    if-eqz v15, :cond_1

    .line 2147
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/policy/GlobalActions;->mItemDividerLand:I

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v8, v0, v1, v15, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_1

    .line 2159
    .restart local v5    # "imageFrameLayout":Landroid/widget/FrameLayout;
    .restart local v12    # "statusView":Landroid/widget/TextView;
    .restart local v13    # "tempView":Landroid/view/View;
    :cond_6
    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 2160
    .local v9, "lparams":Landroid/widget/LinearLayout$LayoutParams;
    iget v11, v9, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 2161
    .local v11, "marginTopPixelSize":I
    if-eqz v12, :cond_2

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/server/policy/GlobalActions;->isDataToggleSupport:Z

    if-nez v15, :cond_2

    .line 2162
    invoke-virtual {v12, v11}, Landroid/widget/TextView;->setHeight(I)V

    goto/16 :goto_2

    .line 2198
    .end local v9    # "lparams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v11    # "marginTopPixelSize":I
    .end local v12    # "statusView":Landroid/widget/TextView;
    .restart local v10    # "mAccessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const v16, 0x1080353

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    invoke-virtual {v5, v15}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3
.end method

.method private notifyCocktailBarGlobalActions()V
    .locals 4

    .prologue
    .line 905
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/cocktailbar/CocktailBarManager;

    move-result-object v1

    .line 906
    .local v1, "cocktailBarManager":Lcom/samsung/android/cocktailbar/CocktailBarManager;
    if-eqz v1, :cond_0

    .line 907
    const-string/jumbo v2, "GlobalActions"

    const-string/jumbo v3, "notifyCocktailBarGlobalActions"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 910
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "show_global_actions"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 911
    invoke-virtual {v1, v0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sendExtraDataToCocktailBar(Landroid/os/Bundle;)V

    .line 904
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method private onAirplaneModeChanged()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4615
    iget-boolean v2, p0, Lcom/android/server/policy/GlobalActions;->mHasTelephony:Z

    if-eqz v2, :cond_0

    return-void

    .line 4618
    :cond_0
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 4619
    const-string/jumbo v3, "airplane_mode_on"

    .line 4617
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 4621
    .local v0, "airplaneModeOn":Z
    :goto_0
    if-eqz v0, :cond_2

    sget-object v1, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    :goto_1
    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    .line 4622
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeOn:Lcom/android/server/policy/GlobalActions$ToggleAction;

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    invoke-virtual {v1, v2}, Lcom/android/server/policy/GlobalActions$ToggleAction;->updateState(Lcom/android/server/policy/GlobalActions$ToggleAction$State;)V

    .line 4613
    return-void

    .end local v0    # "airplaneModeOn":Z
    :cond_1
    move v0, v1

    .line 4617
    goto :goto_0

    .line 4621
    .restart local v0    # "airplaneModeOn":Z
    :cond_2
    sget-object v1, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    goto :goto_1
.end method

.method private onClickForHideLandscapeConfirmDialog(Z)V
    .locals 12
    .param p1, "isOnClick"    # Z

    .prologue
    const/4 v11, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    .line 2616
    iget v0, p0, Lcom/android/server/policy/GlobalActions;->mItemLandscapeDivider:I

    iput v0, p0, Lcom/android/server/policy/GlobalActions;->mItemDividerLand:I

    .line 2618
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    const-string/jumbo v2, "HideConfirmLandscape"

    invoke-virtual {v0, v2}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->checkOrientation(Ljava/lang/String;)V

    .line 2620
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v0}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getCount()I

    move-result v0

    if-ge v7, v0, :cond_3

    .line 2621
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mLandscapeLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2622
    .local v1, "view":Landroid/view/View;
    sget-object v0, Lcom/android/server/policy/GlobalActions;->SelectedItem:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2623
    const v0, 0x10203d9

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout;

    .line 2624
    .local v8, "imageFrameLayout":Landroid/widget/FrameLayout;
    invoke-virtual {v8, v11}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 2625
    invoke-virtual {v8, v11}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 2626
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 2627
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2628
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 2630
    const-wide/16 v2, 0x12c

    .line 2628
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2620
    .end local v8    # "imageFrameLayout":Landroid/widget/FrameLayout;
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 2633
    :cond_0
    const v0, 0x10203d7

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 2634
    .local v10, "statusView":Landroid/widget/TextView;
    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2635
    invoke-virtual {v10, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2638
    :cond_1
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    iget v0, p0, Lcom/android/server/policy/GlobalActions;->mItemWidthLand:I

    const/4 v2, -0x2

    invoke-direct {v9, v0, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2639
    .local v9, "lllp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v0}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getCount()I

    move-result v0

    add-int/lit8 v2, v7, 0x1

    sub-int/2addr v0, v2

    if-eqz v0, :cond_2

    .line 2640
    iget v0, p0, Lcom/android/server/policy/GlobalActions;->mItemDividerLand:I

    invoke-virtual {v9, v6, v6, v0, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 2642
    :cond_2
    invoke-virtual {v1, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2643
    iget v2, p0, Lcom/android/server/policy/GlobalActions;->current_x_land:F

    iget v3, p0, Lcom/android/server/policy/GlobalActions;->current_y_land:F

    const/16 v5, 0x12c

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/policy/GlobalActions;->doAnimation(Landroid/view/View;FFFIZ)V

    goto :goto_1

    .line 2647
    .end local v1    # "view":Landroid/view/View;
    .end local v9    # "lllp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v10    # "statusView":Landroid/widget/TextView;
    :cond_3
    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mAccessibiltyShortcutEnabled:Z

    if-nez v0, :cond_4

    .line 2648
    sput-boolean v6, Lcom/android/server/policy/GlobalActions;->mIsConfirmLandDlg:Z

    .line 2613
    :cond_4
    return-void
.end method

.method private onClickForHidePortraitConfirmDialog(Z)V
    .locals 12
    .param p1, "isOnClick"    # Z

    .prologue
    const/4 v11, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    .line 2577
    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z

    if-eqz v0, :cond_1

    .line 2578
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    const-string/jumbo v2, "HideConfirmPortrait"

    invoke-virtual {v0, v2}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->checkOrientation(Ljava/lang/String;)V

    .line 2581
    :cond_1
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v0}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getCount()I

    move-result v0

    if-ge v7, v0, :cond_5

    .line 2582
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2583
    .local v1, "view":Landroid/view/View;
    sget-object v0, Lcom/android/server/policy/GlobalActions;->SelectedItem:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2584
    const v0, 0x10203d9

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout;

    .line 2585
    .local v8, "imageFrameLayout":Landroid/widget/FrameLayout;
    invoke-virtual {v8, v11}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 2586
    invoke-virtual {v8, v11}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 2587
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 2588
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2589
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 2591
    const-wide/16 v2, 0x12c

    .line 2589
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2581
    .end local v8    # "imageFrameLayout":Landroid/widget/FrameLayout;
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 2594
    :cond_2
    const v0, 0x10203d7

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 2595
    .local v10, "statusView":Landroid/widget/TextView;
    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2596
    invoke-virtual {v10, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2599
    :cond_3
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    iget v0, p0, Lcom/android/server/policy/GlobalActions;->mItemMaxWidth:I

    const/4 v2, -0x2

    invoke-direct {v9, v0, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2600
    .local v9, "lllp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v0}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getCount()I

    move-result v0

    add-int/lit8 v2, v7, 0x1

    sub-int/2addr v0, v2

    if-eqz v0, :cond_4

    .line 2601
    iget v0, p0, Lcom/android/server/policy/GlobalActions;->mItemDivider:I

    invoke-virtual {v9, v6, v6, v6, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 2603
    :cond_4
    invoke-virtual {v1, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2604
    const/high16 v2, -0x3b860000    # -1000.0f

    iget v3, p0, Lcom/android/server/policy/GlobalActions;->current_y:F

    const/16 v5, 0x12c

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/policy/GlobalActions;->doAnimation(Landroid/view/View;FFFIZ)V

    goto :goto_1

    .line 2608
    .end local v1    # "view":Landroid/view/View;
    .end local v9    # "lllp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v10    # "statusView":Landroid/widget/TextView;
    :cond_5
    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mAccessibiltyShortcutEnabled:Z

    if-nez v0, :cond_6

    .line 2609
    sput-boolean v6, Lcom/android/server/policy/GlobalActions;->mIsConfirmDlg:Z

    .line 2574
    :cond_6
    return-void
.end method

.method private onClickForLandscapeConfirmDialog(Landroid/view/View;Z)V
    .locals 13
    .param p1, "v"    # Landroid/view/View;
    .param p2, "isOnClick"    # Z

    .prologue
    const/4 v5, 0x0

    const v4, 0x3fa66666    # 1.3f

    const/4 v6, 0x1

    .line 2693
    sput-object p1, Lcom/android/server/policy/GlobalActions;->SelectedItem:Landroid/view/View;

    .line 2694
    sget-object v0, Lcom/android/server/policy/GlobalActions;->SelectedItem:Landroid/view/View;

    const v1, 0x102000b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 2695
    .local v11, "messageView":Landroid/widget/TextView;
    sget-object v0, Lcom/android/server/policy/GlobalActions;->SelectedItem:Landroid/view/View;

    const v1, 0x10203d7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 2696
    .local v12, "statusView":Landroid/widget/TextView;
    iget v0, p0, Lcom/android/server/policy/GlobalActions;->mItemWidthLand:I

    invoke-virtual {p0, v0}, Lcom/android/server/policy/GlobalActions;->item_yposition(I)I

    move-result v0

    int-to-float v7, v0

    .line 2697
    .local v7, "center_x":F
    sget-object v0, Lcom/android/server/policy/GlobalActions;->SelectedItem:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {v11}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {v12}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/server/policy/GlobalActions;->item_xposition(I)I

    move-result v0

    int-to-float v8, v0

    .line 2698
    .local v8, "center_y":F
    const/4 v0, 0x2

    new-array v10, v0, [I

    .line 2699
    .local v10, "location":[I
    invoke-virtual {p1, v10}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 2700
    aget v0, v10, v5

    int-to-float v0, v0

    iput v0, p0, Lcom/android/server/policy/GlobalActions;->current_x_land:F

    .line 2701
    aget v0, v10, v6

    int-to-float v0, v0

    iput v0, p0, Lcom/android/server/policy/GlobalActions;->current_y_land:F

    .line 2703
    const-string/jumbo v0, "ksh current x ="

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/policy/GlobalActions;->current_x_land:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v2}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2705
    const v0, 0x1020006

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 2706
    .local v9, "imageView":Landroid/widget/ImageView;
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    sget-object v1, Lcom/android/server/policy/GlobalActions;->SelectedItem:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->hideAllViewForLand(Landroid/view/View;)V

    .line 2707
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    const-string/jumbo v1, "ConfirmLandscape"

    invoke-virtual {v0, v1}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->checkOrientation(Ljava/lang/String;)V

    .line 2709
    if-eqz p2, :cond_0

    .line 2710
    iget v0, p0, Lcom/android/server/policy/GlobalActions;->current_x_land:F

    sub-float v2, v7, v0

    iget v0, p0, Lcom/android/server/policy/GlobalActions;->current_y_land:F

    sub-float v3, v8, v0

    const/16 v5, 0x12c

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/policy/GlobalActions;->doAnimation(Landroid/view/View;FFFIZ)V

    .line 2715
    :goto_0
    iget v0, p0, Lcom/android/server/policy/GlobalActions;->current_x_land:F

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v1}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/policy/GlobalActions;->current_x_land:F

    .line 2717
    sput-boolean v6, Lcom/android/server/policy/GlobalActions;->mIsConfirmLandDlg:Z

    .line 2692
    return-void

    .line 2712
    :cond_0
    iget v0, p0, Lcom/android/server/policy/GlobalActions;->current_x_land:F

    sub-float v2, v7, v0

    iget v0, p0, Lcom/android/server/policy/GlobalActions;->current_y_land:F

    sub-float v3, v8, v0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/policy/GlobalActions;->doAnimation(Landroid/view/View;FFFIZ)V

    goto :goto_0
.end method

.method private onClickForPortraitConfirmDialog(Landroid/view/View;Z)V
    .locals 14
    .param p1, "v"    # Landroid/view/View;
    .param p2, "isOnClick"    # Z

    .prologue
    .line 2653
    sput-object p1, Lcom/android/server/policy/GlobalActions;->SelectedItem:Landroid/view/View;

    .line 2654
    sget-object v0, Lcom/android/server/policy/GlobalActions;->SelectedItem:Landroid/view/View;

    const v1, 0x102000b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 2655
    .local v12, "messageView":Landroid/widget/TextView;
    sget-object v0, Lcom/android/server/policy/GlobalActions;->SelectedItem:Landroid/view/View;

    const v1, 0x10203d7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 2656
    .local v13, "statusView":Landroid/widget/TextView;
    sget-object v0, Lcom/android/server/policy/GlobalActions;->SelectedItem:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {v12}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {v13}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/server/policy/GlobalActions;->item_yposition(I)I

    move-result v0

    int-to-float v7, v0

    .line 2657
    .local v7, "center_y":F
    const/4 v0, 0x2

    new-array v10, v0, [I

    .line 2658
    .local v10, "location":[I
    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z

    if-nez v0, :cond_2

    .line 2659
    sget-object v0, Lcom/android/server/policy/GlobalActions;->SelectedItem:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 2663
    :goto_0
    const/4 v0, 0x1

    aget v0, v10, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/server/policy/GlobalActions;->current_y:F

    .line 2665
    const-string/jumbo v0, "ksh current y ="

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/policy/GlobalActions;->current_y:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mScrollview:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2667
    const v0, 0x1020006

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 2669
    .local v9, "imageView":Landroid/widget/ImageView;
    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z

    if-eqz v0, :cond_3

    .line 2672
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    sget-object v1, Lcom/android/server/policy/GlobalActions;->SelectedItem:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->hideAllView(Landroid/view/View;)V

    .line 2673
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    const-string/jumbo v1, "ConfirmPortrait"

    invoke-virtual {v0, v1}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->checkOrientation(Ljava/lang/String;)V

    .line 2676
    :goto_1
    if-eqz p2, :cond_4

    .line 2677
    const/high16 v2, -0x3b860000    # -1000.0f

    iget v0, p0, Lcom/android/server/policy/GlobalActions;->current_y:F

    sub-float v3, v7, v0

    const v4, 0x3fa66666    # 1.3f

    const/16 v5, 0x12c

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/policy/GlobalActions;->doAnimation(Landroid/view/View;FFFIZ)V

    .line 2682
    :goto_2
    iget v0, p0, Lcom/android/server/policy/GlobalActions;->current_y:F

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mScrollview:Landroid/widget/ScrollView;

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/policy/GlobalActions;->current_y:F

    .line 2684
    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z

    if-eqz v0, :cond_5

    .line 2689
    :cond_1
    :goto_3
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/policy/GlobalActions;->mIsConfirmDlg:Z

    .line 2652
    return-void

    .line 2661
    .end local v9    # "imageView":Landroid/widget/ImageView;
    :cond_2
    sget-object v0, Lcom/android/server/policy/GlobalActions;->SelectedItem:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->getLocationInWindow([I)V

    goto/16 :goto_0

    .line 2670
    .restart local v9    # "imageView":Landroid/widget/ImageView;
    :cond_3
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayoutSViewCover:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;

    sget-object v1, Lcom/android/server/policy/GlobalActions;->SelectedItem:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->hideAllView(Landroid/view/View;)V

    goto :goto_1

    .line 2679
    :cond_4
    const/high16 v2, -0x3b860000    # -1000.0f

    iget v0, p0, Lcom/android/server/policy/GlobalActions;->current_y:F

    sub-float v3, v7, v0

    const v4, 0x3fa66666    # 1.3f

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/policy/GlobalActions;->doAnimation(Landroid/view/View;FFFIZ)V

    goto :goto_2

    .line 2685
    :cond_5
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout$LayoutParams;

    .line 2686
    .local v8, "fllp":Landroid/widget/FrameLayout$LayoutParams;
    iget v11, v8, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 2687
    .local v11, "marginTopPixelSize":I
    iget v0, p0, Lcom/android/server/policy/GlobalActions;->current_y:F

    int-to-float v1, v11

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/policy/GlobalActions;->current_y:F

    goto :goto_3
.end method

.method private onToggleDatamode()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 3369
    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z

    if-eqz v0, :cond_0

    .line 3370
    sput-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsConfirmDlg:Z

    .line 3371
    sput-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsConfirmLandDlg:Z

    .line 3373
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mDataModeToggle:Lcom/android/server/policy/GlobalActions$ToggleAction;

    invoke-virtual {v0}, Lcom/android/server/policy/GlobalActions$ToggleAction;->onPressAction()V

    .line 3374
    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v0, :cond_1

    .line 3375
    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->sIsSecondConfirming:Z

    if-nez v0, :cond_2

    .line 3376
    sget-object v0, Lcom/android/server/policy/GlobalActions;->sIsConfirmingGuard:Ljava/lang/Object;

    monitor-enter v0

    .line 3377
    const/4 v1, 0x0

    :try_start_0
    sput-boolean v1, Lcom/android/server/policy/GlobalActions;->sIsConfirming:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 3382
    :goto_0
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->clearSCoverRequestStatus()V

    .line 3383
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3368
    :cond_1
    return-void

    .line 3376
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 3380
    :cond_2
    sput-boolean v4, Lcom/android/server/policy/GlobalActions;->sIsSecondConfirming:Z

    goto :goto_0
.end method

.method private prepareDialog()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 3200
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->cm:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v0

    .line 3204
    .local v0, "dataModeOn":Z
    if-eqz v0, :cond_a

    .line 3205
    sget-object v2, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    iput-object v2, p0, Lcom/android/server/policy/GlobalActions;->mDataNetworkState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    .line 3210
    :goto_0
    const-string/jumbo v2, "gsm.sim.state"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "ABSENT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3211
    sget-object v2, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    iput-object v2, p0, Lcom/android/server/policy/GlobalActions;->mDataNetworkState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    .line 3214
    :cond_0
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    if-eqz v2, :cond_1

    .line 3215
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v2}, Lcom/android/server/policy/GlobalActions$MyAdapter;->notifyDataSetChanged()V

    .line 3218
    :cond_1
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mDataModeToggle:Lcom/android/server/policy/GlobalActions$ToggleAction;

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mDataNetworkState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    invoke-virtual {v2, v3}, Lcom/android/server/policy/GlobalActions$ToggleAction;->updateState(Lcom/android/server/policy/GlobalActions$ToggleAction$State;)V

    .line 3219
    sget-boolean v2, Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z

    if-eqz v2, :cond_2

    .line 3220
    iget v2, p0, Lcom/android/server/policy/GlobalActions;->mDataNetworkStringId:I

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mDataNetworkState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    invoke-direct {p0, v2, v3}, Lcom/android/server/policy/GlobalActions;->updateActions(ILcom/android/server/policy/GlobalActions$ToggleAction$State;)V

    .line 3237
    :cond_2
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeOn:Lcom/android/server/policy/GlobalActions$ToggleAction;

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    invoke-virtual {v2, v3}, Lcom/android/server/policy/GlobalActions$ToggleAction;->updateState(Lcom/android/server/policy/GlobalActions$ToggleAction$State;)V

    .line 3238
    sget-boolean v2, Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z

    if-eqz v2, :cond_3

    .line 3239
    iget v2, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneStringId:I

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    invoke-direct {p0, v2, v3}, Lcom/android/server/policy/GlobalActions;->updateActions(ILcom/android/server/policy/GlobalActions$ToggleAction$State;)V

    .line 3243
    :cond_3
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mProKioskToggle:Lcom/android/server/policy/GlobalActions$ToggleAction;

    if-eqz v2, :cond_4

    .line 3244
    const-string/jumbo v2, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    const-string/jumbo v3, "getSealedState"

    iget-object v4, p0, Lcom/android/server/policy/GlobalActions;->mTempStringArray:[Ljava/lang/String;

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/policy/GlobalActions;->isEDM(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 3245
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mProKioskToggle:Lcom/android/server/policy/GlobalActions$ToggleAction;

    sget-object v3, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    invoke-virtual {v2, v3}, Lcom/android/server/policy/GlobalActions$ToggleAction;->updateState(Lcom/android/server/policy/GlobalActions$ToggleAction$State;)V

    .line 3256
    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_c

    sget-object v2, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    :goto_2
    iput-object v2, p0, Lcom/android/server/policy/GlobalActions;->mEmergencyState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    .line 3257
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mEmergency:Lcom/android/server/policy/GlobalActions$ToggleAction;

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mEmergencyState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    invoke-virtual {v2, v3}, Lcom/android/server/policy/GlobalActions$ToggleAction;->updateState(Lcom/android/server/policy/GlobalActions$ToggleAction$State;)V

    .line 3261
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string/jumbo v3, "CscFeature_Common_ConfigBikeMode"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "bikemode"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3262
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string/jumbo v3, "CscFeature_Common_ConfigBikeMode"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "globalaction"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 3261
    if-eqz v2, :cond_5

    .line 3263
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mBikeMode:Lcom/android/server/policy/GlobalActions$ToggleAction;

    if-eqz v2, :cond_5

    .line 3264
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "isBikeMode"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_d

    .line 3265
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mBikeMode:Lcom/android/server/policy/GlobalActions$ToggleAction;

    sget-object v3, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    invoke-virtual {v2, v3}, Lcom/android/server/policy/GlobalActions$ToggleAction;->updateState(Lcom/android/server/policy/GlobalActions$ToggleAction$State;)V

    .line 3266
    sget-boolean v2, Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z

    if-eqz v2, :cond_5

    .line 3267
    iget v2, p0, Lcom/android/server/policy/GlobalActions;->mBikeModeStringId:I

    sget-object v3, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    invoke-direct {p0, v2, v3}, Lcom/android/server/policy/GlobalActions;->updateActions(ILcom/android/server/policy/GlobalActions$ToggleAction$State;)V

    .line 3278
    :cond_5
    :goto_3
    sget-boolean v2, Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z

    if-eqz v2, :cond_6

    .line 3279
    iget v2, p0, Lcom/android/server/policy/GlobalActions;->mEmergencyStringId:I

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mEmergencyState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    invoke-direct {p0, v2, v3}, Lcom/android/server/policy/GlobalActions;->updateActions(ILcom/android/server/policy/GlobalActions$ToggleAction$State;)V

    .line 3286
    :cond_6
    const-string/jumbo v2, "GlobalActions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "prepareDialog : mIsCoverOpen"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3287
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    if-eqz v2, :cond_7

    .line 3288
    sget-boolean v2, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-eqz v2, :cond_e

    .line 3292
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v2}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7de

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 3306
    :cond_7
    :goto_4
    sget-boolean v2, Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    if-eqz v2, :cond_8

    .line 3307
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v2}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3311
    :cond_8
    iget-boolean v2, p0, Lcom/android/server/policy/GlobalActions;->mShowSilentToggle:Z

    if-eqz v2, :cond_9

    .line 3312
    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3313
    .local v1, "filter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3317
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :cond_9
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 3318
    .restart local v1    # "filter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3321
    const-string/jumbo v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3322
    const-string/jumbo v2, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3324
    const-string/jumbo v2, "com.android.systemui.statusbar.EXPANDED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3325
    const-string/jumbo v2, "com.samsung.settings.action.talkback_toggled"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3326
    const-string/jumbo v2, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3334
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3336
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->registerSecureLockReceiver()V

    .line 3175
    return-void

    .line 3207
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :cond_a
    sget-object v2, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    iput-object v2, p0, Lcom/android/server/policy/GlobalActions;->mDataNetworkState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    goto/16 :goto_0

    .line 3247
    :cond_b
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mProKioskToggle:Lcom/android/server/policy/GlobalActions$ToggleAction;

    sget-object v3, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    invoke-virtual {v2, v3}, Lcom/android/server/policy/GlobalActions$ToggleAction;->updateState(Lcom/android/server/policy/GlobalActions$ToggleAction$State;)V

    goto/16 :goto_1

    .line 3256
    :cond_c
    sget-object v2, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    goto/16 :goto_2

    .line 3270
    :cond_d
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mBikeMode:Lcom/android/server/policy/GlobalActions$ToggleAction;

    sget-object v3, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    invoke-virtual {v2, v3}, Lcom/android/server/policy/GlobalActions$ToggleAction;->updateState(Lcom/android/server/policy/GlobalActions$ToggleAction$State;)V

    .line 3271
    sget-boolean v2, Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z

    if-eqz v2, :cond_5

    .line 3272
    iget v2, p0, Lcom/android/server/policy/GlobalActions;->mBikeModeStringId:I

    sget-object v3, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    invoke-direct {p0, v2, v3}, Lcom/android/server/policy/GlobalActions;->updateActions(ILcom/android/server/policy/GlobalActions$ToggleAction$State;)V

    goto/16 :goto_3

    .line 3295
    :cond_e
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v2}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x833

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 3297
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v2}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_f

    .line 3298
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v2}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4

    .line 3299
    :cond_f
    sget-boolean v2, Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z

    if-nez v2, :cond_7

    .line 3300
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v2}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x106014b

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    goto/16 :goto_4
.end method

.method private registerBixbyReceiver()V
    .locals 3

    .prologue
    .line 5547
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 5548
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.intent.action.BIXBY_GLOBAL_ACTIONS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5549
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mBixbyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 5546
    return-void
.end method

.method private registerPhoneStateListener(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 5352
    const-string/jumbo v3, "phone"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iput-object v3, p0, Lcom/android/server/policy/GlobalActions;->telephonyManager:Landroid/telephony/TelephonyManager;

    .line 5353
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    iput v3, p0, Lcom/android/server/policy/GlobalActions;->mPhoneCount:I

    .line 5354
    const-string/jumbo v3, "GlobalActions"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "registerPhoneStateListener: sim# "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/policy/GlobalActions;->mPhoneCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5355
    iget v3, p0, Lcom/android/server/policy/GlobalActions;->mPhoneCount:I

    new-array v3, v3, [Landroid/telephony/PhoneStateListener;

    iput-object v3, p0, Lcom/android/server/policy/GlobalActions;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    .line 5356
    iget v3, p0, Lcom/android/server/policy/GlobalActions;->mPhoneCount:I

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/android/server/policy/GlobalActions;->mMSimServiceState:[I

    .line 5357
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/android/server/policy/GlobalActions;->mPhoneCount:I

    if-ge v0, v3, :cond_4

    .line 5358
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v2

    .line 5360
    .local v2, "subIdtemp":[I
    const-string/jumbo v3, "GlobalActions"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "registerPhoneStateListener subId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5361
    if-eqz v2, :cond_0

    .line 5362
    aget v1, v2, v6

    .line 5363
    .local v1, "subId":I
    if-lez v1, :cond_1

    .line 5364
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    invoke-direct {p0, v1, v0}, Lcom/android/server/policy/GlobalActions;->getPhoneStateListener(II)Landroid/telephony/PhoneStateListener;

    move-result-object v4

    aput-object v4, v3, v0

    .line 5365
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->telephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Lcom/android/server/policy/GlobalActions;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4, v7}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 5374
    :goto_1
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mMSimServiceState:[I

    aput v6, v3, v0

    .line 5357
    .end local v1    # "subId":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5367
    .restart local v1    # "subId":I
    :cond_1
    invoke-direct {p0, v6}, Lcom/android/server/policy/GlobalActions;->isSimCardInserted(I)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-direct {p0, v7}, Lcom/android/server/policy/GlobalActions;->isSimCardInserted(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 5371
    :cond_2
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aput-object v8, v3, v0

    goto :goto_1

    .line 5367
    :cond_3
    if-nez v0, :cond_2

    .line 5368
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    invoke-direct {p0, v1, v0}, Lcom/android/server/policy/GlobalActions;->getPhoneStateListener(II)Landroid/telephony/PhoneStateListener;

    move-result-object v4

    aput-object v4, v3, v0

    .line 5369
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->telephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Lcom/android/server/policy/GlobalActions;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4, v7}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_1

    .line 5351
    .end local v1    # "subId":I
    .end local v2    # "subIdtemp":[I
    :cond_4
    return-void
.end method

.method private registerSecureLockReceiver()V
    .locals 3

    .prologue
    .line 5541
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 5542
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.SHOW_GLOBAL_ACTIONS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5543
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mSecureLockReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 5540
    return-void
.end method

.method private restoreQuickpanelBackground()V
    .locals 1

    .prologue
    .line 5055
    const-string/jumbo v0, "GlobalActions"

    invoke-direct {p0, v0}, Lcom/android/server/policy/GlobalActions;->restoreQuickpanelBackground(Ljava/lang/String;)V

    .line 5054
    return-void
.end method

.method private restoreQuickpanelBackground(Ljava/lang/String;)V
    .locals 3
    .param p1, "sender"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 5059
    sget-boolean v1, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    if-nez v1, :cond_1

    :cond_0
    return-void

    .line 5060
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 5061
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.samsung.cover.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5062
    const-string/jumbo v1, "suppressCoverUI"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5063
    const-string/jumbo v1, "miniModeUI"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5064
    const-string/jumbo v1, "sender"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5065
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 5058
    return-void
.end method

.method private sendBendedPendingIntent()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 5457
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "keyguard"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    .line 5459
    .local v2, "km":Landroid/app/KeyguardManager;
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.SHOW_GLOBAL_ACTIONS"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5460
    .local v1, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const/high16 v5, 0x8000000

    invoke-static {v4, v6, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 5462
    .local v3, "pendingIntent":Landroid/app/PendingIntent;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 5463
    .local v0, "fillInIntent":Landroid/content/Intent;
    const-string/jumbo v4, "afterKeyguardGone"

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5465
    const-string/jumbo v4, "dismissType"

    const-string/jumbo v5, "shutdown"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5467
    const-string/jumbo v4, "GlobalActions"

    const-string/jumbo v5, "sendBendedPendingIntent"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5468
    invoke-virtual {v2, v3, v0}, Landroid/app/KeyguardManager;->setBendedPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    .line 5456
    return-void
.end method

.method private unRegisterBixbyReceiver()V
    .locals 2

    .prologue
    .line 5559
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mBixbyReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 5560
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mBixbyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 5558
    :cond_0
    return-void
.end method

.method private unRegisterSecureLockReceiver()V
    .locals 2

    .prologue
    .line 5553
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mSecureLockReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 5554
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mSecureLockReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 5552
    :cond_0
    return-void
.end method

.method private unregisterPhoneStateListener()V
    .locals 4

    .prologue
    .line 5380
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/server/policy/GlobalActions;->mPhoneCount:I

    if-ge v0, v1, :cond_1

    .line 5381
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 5382
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->telephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 5380
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5379
    :cond_1
    return-void
.end method

.method private updateActions(ILcom/android/server/policy/GlobalActions$ToggleAction$State;)V
    .locals 13
    .param p1, "whichItem"    # I
    .param p2, "state"    # Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    .prologue
    .line 5719
    iget-object v10, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 5720
    .local v9, "whichItemString":Ljava/lang/String;
    sget-object v10, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    if-eq p2, v10, :cond_0

    sget-object v10, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->TurningOn:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    if-ne p2, v10, :cond_3

    :cond_0
    const/4 v6, 0x1

    .line 5722
    .local v6, "on":Z
    :goto_0
    iget-object v10, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget v10, v10, Landroid/content/res/Configuration;->orientation:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_4

    .line 5723
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mLinearLayout:Landroid/widget/LinearLayout;

    .line 5728
    .local v0, "actionsLayout":Landroid/view/ViewGroup;
    :goto_1
    if-eqz v0, :cond_c

    .line 5729
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 5730
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v1, :cond_c

    .line 5731
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 5733
    .local v8, "view":Landroid/view/View;
    const v10, 0x1020006

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 5734
    .local v4, "imageView":Landroid/widget/ImageView;
    const v10, 0x102000b

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 5735
    .local v5, "messageView":Landroid/widget/TextView;
    const v10, 0x10203d7

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 5736
    .local v7, "statusView":Landroid/widget/TextView;
    const v10, 0x10203d9

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    .line 5739
    .local v3, "imageFrameLayout":Landroid/widget/FrameLayout;
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 5741
    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 5742
    if-eqz v7, :cond_2

    .line 5743
    iget-object v10, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    iget v11, p0, Lcom/android/server/policy/GlobalActions;->mEmergencyStringId:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 5744
    if-eqz v6, :cond_5

    iget-object v10, p0, Lcom/android/server/policy/GlobalActions;->mEmergency:Lcom/android/server/policy/GlobalActions$ToggleAction;

    iget v10, v10, Lcom/android/server/policy/GlobalActions$ToggleAction;->mEnabledStatusMessageResId:I

    :goto_3
    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(I)V

    .line 5755
    :cond_1
    :goto_4
    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5756
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 5757
    const-string/jumbo v11, ", "

    .line 5756
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 5758
    iget-object v11, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x10407dd

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 5756
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 5759
    const-string/jumbo v11, ", "

    .line 5756
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 5760
    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    .line 5756
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 5730
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    .line 5720
    .end local v0    # "actionsLayout":Landroid/view/ViewGroup;
    .end local v1    # "childCount":I
    .end local v2    # "i":I
    .end local v3    # "imageFrameLayout":Landroid/widget/FrameLayout;
    .end local v4    # "imageView":Landroid/widget/ImageView;
    .end local v5    # "messageView":Landroid/widget/TextView;
    .end local v6    # "on":Z
    .end local v7    # "statusView":Landroid/widget/TextView;
    .end local v8    # "view":Landroid/view/View;
    :cond_3
    const/4 v6, 0x0

    .restart local v6    # "on":Z
    goto/16 :goto_0

    .line 5725
    :cond_4
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mLandscapeLinearLayout:Landroid/widget/LinearLayout;

    .restart local v0    # "actionsLayout":Landroid/view/ViewGroup;
    goto/16 :goto_1

    .line 5744
    .restart local v1    # "childCount":I
    .restart local v2    # "i":I
    .restart local v3    # "imageFrameLayout":Landroid/widget/FrameLayout;
    .restart local v4    # "imageView":Landroid/widget/ImageView;
    .restart local v5    # "messageView":Landroid/widget/TextView;
    .restart local v7    # "statusView":Landroid/widget/TextView;
    .restart local v8    # "view":Landroid/view/View;
    :cond_5
    iget-object v10, p0, Lcom/android/server/policy/GlobalActions;->mEmergency:Lcom/android/server/policy/GlobalActions$ToggleAction;

    iget v10, v10, Lcom/android/server/policy/GlobalActions$ToggleAction;->mDisabledStatusMessageResId:I

    goto :goto_3

    .line 5745
    :cond_6
    iget-object v10, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    iget v11, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneStringId:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 5746
    if-eqz v6, :cond_7

    iget-object v10, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeOn:Lcom/android/server/policy/GlobalActions$ToggleAction;

    iget v10, v10, Lcom/android/server/policy/GlobalActions$ToggleAction;->mEnabledStatusMessageResId:I

    :goto_5
    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4

    :cond_7
    iget-object v10, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeOn:Lcom/android/server/policy/GlobalActions$ToggleAction;

    iget v10, v10, Lcom/android/server/policy/GlobalActions$ToggleAction;->mDisabledStatusMessageResId:I

    goto :goto_5

    .line 5747
    :cond_8
    iget-object v10, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    iget v11, p0, Lcom/android/server/policy/GlobalActions;->mDataNetworkStringId:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 5748
    if-eqz v6, :cond_9

    iget-object v10, p0, Lcom/android/server/policy/GlobalActions;->mDataModeToggle:Lcom/android/server/policy/GlobalActions$ToggleAction;

    iget v10, v10, Lcom/android/server/policy/GlobalActions$ToggleAction;->mEnabledStatusMessageResId:I

    :goto_6
    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_4

    :cond_9
    iget-object v10, p0, Lcom/android/server/policy/GlobalActions;->mDataModeToggle:Lcom/android/server/policy/GlobalActions$ToggleAction;

    iget v10, v10, Lcom/android/server/policy/GlobalActions$ToggleAction;->mDisabledStatusMessageResId:I

    goto :goto_6

    .line 5749
    :cond_a
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v10

    const-string/jumbo v11, "CscFeature_Common_ConfigBikeMode"

    invoke-virtual {v10, v11}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "bikemode"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 5750
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v10

    const-string/jumbo v11, "CscFeature_Common_ConfigBikeMode"

    invoke-virtual {v10, v11}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "globalaction"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    .line 5749
    if-eqz v10, :cond_1

    .line 5751
    iget-object v10, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    iget v11, p0, Lcom/android/server/policy/GlobalActions;->mBikeModeStringId:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 5749
    if-eqz v10, :cond_1

    .line 5752
    iget-object v10, p0, Lcom/android/server/policy/GlobalActions;->mBikeMode:Lcom/android/server/policy/GlobalActions$ToggleAction;

    if-eqz v10, :cond_1

    .line 5753
    if-eqz v6, :cond_b

    iget-object v10, p0, Lcom/android/server/policy/GlobalActions;->mBikeMode:Lcom/android/server/policy/GlobalActions$ToggleAction;

    iget v10, v10, Lcom/android/server/policy/GlobalActions$ToggleAction;->mEnabledStatusMessageResId:I

    :goto_7
    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_4

    :cond_b
    iget-object v10, p0, Lcom/android/server/policy/GlobalActions;->mBikeMode:Lcom/android/server/policy/GlobalActions$ToggleAction;

    iget v10, v10, Lcom/android/server/policy/GlobalActions$ToggleAction;->mDisabledStatusMessageResId:I

    goto :goto_7

    .line 5716
    .end local v1    # "childCount":I
    .end local v2    # "i":I
    .end local v3    # "imageFrameLayout":Landroid/widget/FrameLayout;
    .end local v4    # "imageView":Landroid/widget/ImageView;
    .end local v5    # "messageView":Landroid/widget/TextView;
    .end local v7    # "statusView":Landroid/widget/TextView;
    .end local v8    # "view":Landroid/view/View;
    :cond_c
    return-void
.end method

.method private virtualDismissInSCover()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 5068
    sget-boolean v1, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    if-nez v1, :cond_1

    :cond_0
    return-void

    .line 5069
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 5070
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.samsung.cover.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5071
    const-string/jumbo v1, "suppressCoverUI"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5072
    const-string/jumbo v1, "miniModeUI"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5073
    const-string/jumbo v1, "sender"

    const-string/jumbo v2, "GlobalActions"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5074
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v1}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5075
    const-string/jumbo v1, "sender"

    const-string/jumbo v2, "GlobalActions"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5077
    :cond_2
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mConfirmDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5078
    const-string/jumbo v1, "sender"

    const-string/jumbo v2, "GlobalActions$ConfirmDialog"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5080
    :cond_3
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mConfirmDialogSViewCoverDialog:Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mConfirmDialogSViewCoverDialog:Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;

    invoke-virtual {v1}, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 5081
    const-string/jumbo v1, "sender"

    const-string/jumbo v2, "GlobalActions$ConfirmDialog"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5083
    :cond_4
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 5084
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_5

    .line 5085
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5067
    :cond_5
    return-void
.end method

.method private virtualDismissInSCover(Ljava/lang/String;)V
    .locals 5
    .param p1, "sender"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 5089
    sget-boolean v1, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    if-nez v1, :cond_1

    :cond_0
    return-void

    .line 5090
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 5091
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.samsung.cover.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5092
    const-string/jumbo v1, "suppressCoverUI"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5093
    const-string/jumbo v1, "miniModeUI"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5094
    const-string/jumbo v1, "sender"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5095
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 5096
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_2

    .line 5097
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 5088
    :cond_2
    return-void
.end method


# virtual methods
.method adjustBottomView()V
    .locals 11

    .prologue
    const v10, 0x10203d3

    const v9, 0x10203d2

    const v8, 0x10203d0

    const/16 v7, 0x8

    .line 5575
    const/4 v4, 0x0

    .line 5576
    .local v4, "showfl":Landroid/widget/FrameLayout;
    const/4 v2, 0x0

    .line 5577
    .local v2, "hidefl":Landroid/widget/FrameLayout;
    const/4 v1, 0x0

    .line 5578
    .local v1, "dividerfl":Landroid/widget/FrameLayout;
    const/4 v0, 0x0

    .line 5579
    .local v0, "dividerSViewfl":Landroid/widget/FrameLayout;
    const/4 v3, 0x0

    .line 5580
    .local v3, "lllp":Landroid/widget/LinearLayout$LayoutParams;
    sget-boolean v5, Lcom/android/server/policy/GlobalActions;->mIsBugReportEnable:Z

    if-eqz v5, :cond_0

    sget-boolean v5, Lcom/android/server/policy/GlobalActions;->mIsCancelEnable:Z

    if-eqz v5, :cond_1

    .line 5637
    .end local v0    # "dividerSViewfl":Landroid/widget/FrameLayout;
    .end local v1    # "dividerfl":Landroid/widget/FrameLayout;
    .end local v2    # "hidefl":Landroid/widget/FrameLayout;
    .end local v3    # "lllp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v4    # "showfl":Landroid/widget/FrameLayout;
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/android/server/policy/GlobalActions;->mBottomlayout:Landroid/widget/LinearLayout;

    new-instance v6, Lcom/android/server/policy/GlobalActions$46;

    invoke-direct {v6, p0}, Lcom/android/server/policy/GlobalActions$46;-><init>(Lcom/android/server/policy/GlobalActions;)V

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 5574
    return-void

    .line 5581
    .restart local v0    # "dividerSViewfl":Landroid/widget/FrameLayout;
    .restart local v1    # "dividerfl":Landroid/widget/FrameLayout;
    .restart local v2    # "hidefl":Landroid/widget/FrameLayout;
    .restart local v3    # "lllp":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v4    # "showfl":Landroid/widget/FrameLayout;
    :cond_1
    sget-boolean v5, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v5, :cond_2

    sget-boolean v5, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v5, :cond_3

    sget-boolean v5, Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z

    if-eqz v5, :cond_3

    .line 5582
    :cond_2
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .end local v3    # "lllp":Landroid/widget/LinearLayout$LayoutParams;
    iget v5, p0, Lcom/android/server/policy/GlobalActions;->mBottomViewSingleItemWidth:I

    iget v6, p0, Lcom/android/server/policy/GlobalActions;->mBottomViewSingleItemHeight:I

    invoke-direct {v3, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 5583
    .local v3, "lllp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v5, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    invoke-virtual {v5, v9}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1    # "dividerfl":Landroid/widget/FrameLayout;
    check-cast v1, Landroid/widget/FrameLayout;

    .line 5584
    .local v1, "dividerfl":Landroid/widget/FrameLayout;
    iget-object v5, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    invoke-virtual {v5, v8}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2    # "hidefl":Landroid/widget/FrameLayout;
    check-cast v2, Landroid/widget/FrameLayout;

    .line 5585
    .local v2, "hidefl":Landroid/widget/FrameLayout;
    invoke-virtual {v2, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 5586
    iget-object v5, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    invoke-virtual {v5, v10}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4    # "showfl":Landroid/widget/FrameLayout;
    check-cast v4, Landroid/widget/FrameLayout;

    .line 5587
    .local v4, "showfl":Landroid/widget/FrameLayout;
    invoke-virtual {v4, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5588
    invoke-virtual {v1, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 5590
    .local v1, "dividerfl":Landroid/widget/FrameLayout;
    .local v2, "hidefl":Landroid/widget/FrameLayout;
    .local v3, "lllp":Landroid/widget/LinearLayout$LayoutParams;
    .local v4, "showfl":Landroid/widget/FrameLayout;
    :cond_3
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .end local v3    # "lllp":Landroid/widget/LinearLayout$LayoutParams;
    iget v5, p0, Lcom/android/server/policy/GlobalActions;->mBottomViewSingleCancelItemWidth:I

    iget v6, p0, Lcom/android/server/policy/GlobalActions;->mBottomViewSingleItemHeight:I

    invoke-direct {v3, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 5591
    .local v3, "lllp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v5, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayoutSViewCover:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;

    invoke-virtual {v5, v9}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "dividerSViewfl":Landroid/widget/FrameLayout;
    check-cast v0, Landroid/widget/FrameLayout;

    .line 5592
    .local v0, "dividerSViewfl":Landroid/widget/FrameLayout;
    iget-object v5, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayoutSViewCover:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;

    invoke-virtual {v5, v8}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2    # "hidefl":Landroid/widget/FrameLayout;
    check-cast v2, Landroid/widget/FrameLayout;

    .line 5593
    .local v2, "hidefl":Landroid/widget/FrameLayout;
    invoke-virtual {v2, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 5594
    iget-object v5, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayoutSViewCover:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;

    invoke-virtual {v5, v10}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4    # "showfl":Landroid/widget/FrameLayout;
    check-cast v4, Landroid/widget/FrameLayout;

    .line 5595
    .local v4, "showfl":Landroid/widget/FrameLayout;
    invoke-virtual {v4, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5596
    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public airplaneModeClickAction(Z)V
    .locals 5
    .param p1, "isShowingConfirmMessage"    # Z

    .prologue
    const/4 v4, 0x0

    .line 3541
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeOn:Lcom/android/server/policy/GlobalActions$ToggleAction;

    invoke-virtual {v0}, Lcom/android/server/policy/GlobalActions$ToggleAction;->onPressAction()V

    .line 3542
    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v0, :cond_0

    .line 3543
    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->sIsSecondConfirming:Z

    if-nez v0, :cond_4

    .line 3544
    sget-object v0, Lcom/android/server/policy/GlobalActions;->sIsConfirmingGuard:Ljava/lang/Object;

    monitor-enter v0

    .line 3545
    const/4 v1, 0x0

    :try_start_0
    sput-boolean v1, Lcom/android/server/policy/GlobalActions;->sIsConfirming:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 3550
    :goto_0
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->clearSCoverRequestStatus()V

    .line 3551
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3554
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->isVZWOperatorAirplaneModeONReasonUSB3:Z

    if-eqz v0, :cond_1

    .line 3555
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mUsbManager:Landroid/hardware/usb/UsbManager;

    if-eqz v0, :cond_5

    .line 3556
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->isUsb30Enabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->isUsb30Available()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3558
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0, v4}, Landroid/hardware/usb/UsbManager;->setUsb30Mode(Z)V

    .line 3559
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "airplane_mode_on_reason_usb3"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3560
    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->SAFE_DEBUG:Z

    if-eqz v0, :cond_1

    .line 3561
    const-string/jumbo v0, "GlobalActions"

    const-string/jumbo v1, "USB 3.0 is disconnected."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3569
    :cond_1
    :goto_1
    if-eqz p1, :cond_3

    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mIsSetAirplaneOnMessageVZW:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mIsSetAirplaneOnMessageCHINA:Z

    if-eqz v0, :cond_3

    .line 3570
    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mDontShowCheckbox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mDontShowCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3571
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "tw_globalactions_dont_show_again"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3540
    :cond_3
    return-void

    .line 3544
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 3548
    :cond_4
    sput-boolean v4, Lcom/android/server/policy/GlobalActions;->sIsSecondConfirming:Z

    goto :goto_0

    .line 3564
    :cond_5
    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->SAFE_DEBUG:Z

    if-eqz v0, :cond_1

    .line 3565
    const-string/jumbo v0, "GlobalActions"

    const-string/jumbo v1, "USB manager is not created hence USB 3.0 connection can not be terminated."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public bottomViewOnTouch(IZZ)Z
    .locals 3
    .param p1, "action"    # I
    .param p2, "isPortrait"    # Z
    .param p3, "isConfirm"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 5663
    if-nez p1, :cond_4

    .line 5664
    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mAccessibiltyShortcutEnabled:Z

    if-eqz v0, :cond_0

    if-eqz p3, :cond_1

    .line 5667
    :cond_0
    if-eqz p3, :cond_3

    .line 5668
    if-eqz p2, :cond_2

    .line 5669
    invoke-direct {p0, v2}, Lcom/android/server/policy/GlobalActions;->onClickForHidePortraitConfirmDialog(Z)V

    .line 5676
    :goto_0
    return v2

    .line 5665
    :cond_1
    return v2

    .line 5671
    :cond_2
    invoke-direct {p0, v2}, Lcom/android/server/policy/GlobalActions;->onClickForHideLandscapeConfirmDialog(Z)V

    goto :goto_0

    .line 5674
    :cond_3
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 5680
    :cond_4
    if-ne p1, v2, :cond_5

    .line 5681
    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mAccessibiltyShortcutEnabled:Z

    if-eqz v0, :cond_5

    .line 5682
    if-eqz p3, :cond_7

    .line 5683
    if-eqz p2, :cond_6

    .line 5684
    sput-boolean v1, Lcom/android/server/policy/GlobalActions;->mIsConfirmDlg:Z

    .line 5694
    :cond_5
    :goto_1
    return v1

    .line 5686
    :cond_6
    sput-boolean v1, Lcom/android/server/policy/GlobalActions;->mIsConfirmLandDlg:Z

    goto :goto_1

    .line 5689
    :cond_7
    sput-boolean v1, Lcom/android/server/policy/GlobalActions;->mAccessibiltyShortcutEnabled:Z

    .line 5690
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1
.end method

.method calculateDescritionViewHeight(Landroid/view/View;I)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "diff"    # I

    .prologue
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 5527
    const v2, 0x10203d7

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 5528
    .local v1, "statusView":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mDescriptionlayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 5529
    .local v0, "fllp":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v2, -0x2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 5530
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 5531
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v2, p2

    invoke-virtual {p0, v2}, Lcom/android/server/policy/GlobalActions;->item_yposition(I)I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-double v4, v3

    mul-double/2addr v4, v6

    int-to-double v6, p2

    const-wide v8, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-int v3, v4

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/server/policy/GlobalActions;->mMessageViewPaddingBottom:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 5532
    iget v2, p0, Lcom/android/server/policy/GlobalActions;->mItemMaxWidth:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 5537
    :goto_0
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mDescriptionlayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 5526
    return-void

    .line 5534
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/policy/GlobalActions;->item_xposition(I)I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-double v4, v3

    mul-double/2addr v4, v6

    int-to-double v6, p2

    const-wide v8, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-int v3, v4

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/server/policy/GlobalActions;->mMessageViewPaddingBottom:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 5535
    iget v2, p0, Lcom/android/server/policy/GlobalActions;->mItemMaxWidthLand:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto :goto_0
.end method

.method public checkOnAirplaneConfirmShow()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 582
    const-string/jumbo v0, "GlobalActions"

    const-string/jumbo v1, "checkOnAirplaneConfirmShow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "tw_globalactions_dont_show_again"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 584
    iput-boolean v2, p0, Lcom/android/server/policy/GlobalActions;->mShowOnAirplaneConfirm:Z

    .line 588
    :goto_0
    const-string/jumbo v0, "GlobalActions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "checkOnAirplaneConfirmShow : mShowOnAirplaneConfirm = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/policy/GlobalActions;->mShowOnAirplaneConfirm:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    return-void

    .line 586
    :cond_0
    iput-boolean v3, p0, Lcom/android/server/policy/GlobalActions;->mShowOnAirplaneConfirm:Z

    goto :goto_0
.end method

.method public hasTSafeLock()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 5268
    const/4 v3, 0x0

    .line 5269
    .local v3, "result":Z
    const-string/jumbo v0, "com.skt.t_smart_charge"

    .line 5271
    .local v0, "TLOCK_PKG_NAME":Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 5272
    .local v2, "pm":Landroid/content/pm/PackageManager;
    if-eqz v2, :cond_0

    .line 5273
    const-string/jumbo v5, "com.skt.t_smart_charge"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 5274
    .local v4, "tLock":Landroid/content/pm/ApplicationInfo;
    if-eqz v4, :cond_1

    const/4 v3, 0x1

    .line 5279
    .end local v4    # "tLock":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    return v3

    .line 5274
    .restart local v4    # "tLock":Landroid/content/pm/ApplicationInfo;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 5276
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    .end local v4    # "tLock":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 5277
    .local v1, "ex":Ljava/lang/Exception;
    return v7
.end method

.method public initStrings()V
    .locals 2

    .prologue
    .line 571
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const v1, 0x10407a1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions;->mUnablePowerOff:Ljava/lang/String;

    .line 572
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const v1, 0x10407a2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions;->mUnableAirplanemode:Ljava/lang/String;

    .line 573
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const v1, 0x10407a3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions;->mLDUWarning:Ljava/lang/String;

    .line 575
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const v1, 0x10407a4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions;->mUnablePowerOffForFMM:Ljava/lang/String;

    .line 576
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const v1, 0x10407a5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions;->mUnableRestartForFMM:Ljava/lang/String;

    .line 577
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const v1, 0x10407a6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions;->mUnableEmergencyforFMM:Ljava/lang/String;

    .line 578
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const v1, 0x10407ad

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions;->mUnablePowerOffForSecureLock:Ljava/lang/String;

    .line 570
    return-void
.end method

.method public insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "feature"    # Ljava/lang/String;
    .param p3, "extra"    # Ljava/lang/String;

    .prologue
    .line 5126
    sget-boolean v2, Lcom/android/server/policy/GlobalActions;->SURVEY_LOG:Z

    if-eqz v2, :cond_0

    .line 5127
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 5128
    .local v1, "cv":Landroid/content/ContentValues;
    const-string/jumbo v2, "app_id"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5129
    const-string/jumbo v2, "feature"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5130
    const-string/jumbo v2, "extra"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5133
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 5134
    .local v0, "broadcastIntent":Landroid/content/Intent;
    const-string/jumbo v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5135
    const-string/jumbo v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 5136
    const-string/jumbo v2, "com.samsung.android.providers.context"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 5137
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 5138
    sget-boolean v2, Lcom/android/server/policy/GlobalActions;->SAFE_DEBUG:Z

    if-eqz v2, :cond_0

    .line 5139
    const-string/jumbo v2, "GlobalActions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "insetLog feature="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ,extra="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5125
    .end local v0    # "broadcastIntent":Landroid/content/Intent;
    .end local v1    # "cv":Landroid/content/ContentValues;
    :cond_0
    return-void
.end method

.method isDialogPowerOptionHidden()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 5109
    const-string/jumbo v1, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    const-string/jumbo v2, "getSealedState"

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mTempStringArray:[Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/policy/GlobalActions;->isEDM(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5110
    const-string/jumbo v1, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    const-string/jumbo v2, "getSealedPowerDialogOptionMode"

    invoke-direct {p0, v1, v2}, Lcom/android/server/policy/GlobalActions;->isIntEDM(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 5111
    sget-boolean v1, Lcom/android/server/policy/GlobalActions;->mProKioskOptionShown:Z

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 5115
    :cond_1
    return v0
.end method

.method isDialogShowing()Z
    .locals 1

    .prologue
    .line 5104
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v0}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->isShowing()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPortrait()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 5655
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    .line 5656
    return v1

    .line 5658
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isTouchInside(Landroid/view/View;II)Z
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 5698
    const/4 v6, 0x2

    new-array v0, v6, [I

    .line 5699
    .local v0, "location":[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 5701
    aget v6, v0, v5

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int v2, v6, v7

    .line 5702
    .local v2, "realRight":I
    aget v6, v0, v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int v1, v6, v7

    .line 5703
    .local v1, "realBottom":I
    aget v6, v0, v5

    if-lt p2, v6, :cond_1

    if-gt p2, v2, :cond_1

    aget v6, v0, v4

    if-lt p3, v6, :cond_1

    if-gt p3, v1, :cond_0

    :goto_0
    move v3, v4

    .line 5705
    .local v3, "result":Z
    :goto_1
    return v3

    .end local v3    # "result":Z
    :cond_0
    move v4, v5

    .line 5703
    goto :goto_0

    :cond_1
    move v3, v5

    goto :goto_1
.end method

.method item_xposition(I)I
    .locals 2
    .param p1, "item_width"    # I

    .prologue
    .line 5505
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    if-eqz v0, :cond_0

    .line 5506
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 5507
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v0}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/GlobalActions;->displaywidth:I

    .line 5512
    :cond_0
    :goto_0
    iget v0, p0, Lcom/android/server/policy/GlobalActions;->displaywidth:I

    sub-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x2

    return v0

    .line 5509
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v0}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/GlobalActions;->displaywidth:I

    goto :goto_0
.end method

.method item_yposition(I)I
    .locals 2
    .param p1, "item_height"    # I

    .prologue
    .line 5516
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    if-eqz v0, :cond_0

    .line 5517
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 5518
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v0}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/GlobalActions;->displayheight:I

    .line 5523
    :cond_0
    :goto_0
    iget v0, p0, Lcom/android/server/policy/GlobalActions;->displayheight:I

    sub-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x2

    return v0

    .line 5520
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v0}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/GlobalActions;->displayheight:I

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 3630
    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z

    if-nez v0, :cond_1

    .line 3631
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v0, p2}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getItem(I)Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v0

    instance-of v0, v0, Lcom/android/server/policy/GlobalActions$SilentModeAction;

    if-nez v0, :cond_0

    .line 3633
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 3635
    :cond_0
    const-string/jumbo v0, "GlobalActions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onClick  which="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3636
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v0, p2}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getItem(I)Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/policy/GlobalActions$Action;->onPress()V

    .line 3625
    :cond_1
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v3, 0x0

    .line 3589
    iget-boolean v1, p0, Lcom/android/server/policy/GlobalActions;->mShowSilentToggle:Z

    if-eqz v1, :cond_0

    .line 3591
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3598
    :cond_0
    :goto_0
    sget-boolean v1, Lcom/android/server/policy/GlobalActions;->mIsAirplaneConfirmDialogExist:Z

    if-nez v1, :cond_1

    .line 3600
    :try_start_1
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3607
    :cond_1
    :goto_1
    sget-boolean v1, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v1, :cond_2

    .line 3608
    sget-boolean v1, Lcom/android/server/policy/GlobalActions;->sIsSecondConfirming:Z

    if-nez v1, :cond_3

    .line 3609
    sget-object v1, Lcom/android/server/policy/GlobalActions;->sIsConfirmingGuard:Ljava/lang/Object;

    monitor-enter v1

    .line 3610
    const/4 v2, 0x0

    :try_start_2
    sput-boolean v2, Lcom/android/server/policy/GlobalActions;->sIsConfirming:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    .line 3617
    :cond_2
    :goto_2
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->unRegisterSecureLockReceiver()V

    .line 3618
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->unRegisterBixbyReceiver()V

    .line 3620
    sput-boolean v3, Lcom/android/server/policy/GlobalActions;->mIsConfirmDlg:Z

    .line 3621
    sput-boolean v3, Lcom/android/server/policy/GlobalActions;->mIsConfirmLandDlg:Z

    .line 3588
    return-void

    .line 3592
    :catch_0
    move-exception v0

    .line 3594
    .local v0, "ie":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v1, "GlobalActions"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 3601
    .end local v0    # "ie":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 3603
    .restart local v0    # "ie":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v1, "GlobalActions"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 3609
    .end local v0    # "ie":Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2

    .line 3613
    :cond_3
    sput-boolean v3, Lcom/android/server/policy/GlobalActions;->sIsSecondConfirming:Z

    goto :goto_2
.end method

.method public requestUpdateWindowBlur(F)V
    .locals 2
    .param p1, "blurValue"    # F

    .prologue
    .line 5709
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    if-eqz v1, :cond_0

    .line 5710
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v1}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 5711
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 5712
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v1}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 5708
    .end local v0    # "params":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    return-void
.end method

.method public showDialog(ZZ)V
    .locals 8
    .param p1, "keyguardShowing"    # Z
    .param p2, "isDeviceProvisioned"    # Z

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 596
    const-string/jumbo v3, "com.android.service.GlobalAction"

    const-string/jumbo v5, "0001"

    const-string/jumbo v6, "null"

    invoke-virtual {p0, v3, v5, v6}, Lcom/android/server/policy/GlobalActions;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    invoke-virtual {v3}, Lcom/samsung/android/cover/CoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/policy/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 599
    new-instance v3, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;

    invoke-direct {v3, p0, v7}, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;-><init>(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$UIUpdateHandler;)V

    iput-object v3, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    .line 605
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->isGlobalActionConfirming()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 606
    return-void

    .line 612
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/policy/GlobalActions;->initStrings()V

    .line 613
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->initValueForCreate()V

    .line 617
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    const-string/jumbo v5, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAFETYCARE"

    invoke-virtual {v3, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 618
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v0

    .line 619
    .local v0, "emMgr":Lcom/samsung/android/emergencymode/SemEmergencyManager;
    invoke-virtual {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isModifying()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 620
    const-string/jumbo v3, "GlobalActions"

    const-string/jumbo v4, "Cannot use Global Action. because Emergency mode Entering.."

    invoke-static {v3, v4}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    return-void

    .line 625
    .end local v0    # "emMgr":Lcom/samsung/android/emergencymode/SemEmergencyManager;
    :cond_1
    sput-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsAirplaneConfirmDialogExist:Z

    .line 626
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "keyguard"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    iput-object v3, p0, Lcom/android/server/policy/GlobalActions;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 627
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v3}, Landroid/app/KeyguardManager;->isDeviceSecure()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v3}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v3

    :goto_0
    iput-boolean v3, p0, Lcom/android/server/policy/GlobalActions;->mIsSecureKeyguard:Z

    .line 629
    iput-boolean p1, p0, Lcom/android/server/policy/GlobalActions;->mKeyguardShowing:Z

    .line 631
    iget-boolean v3, p0, Lcom/android/server/policy/GlobalActions;->mKeyguardShowing:Z

    if-nez v3, :cond_2

    .line 633
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v2

    .line 634
    .local v2, "versionInfo":Landroid/os/Bundle;
    if-eqz v2, :cond_2

    const-string/jumbo v3, "2.0"

    const-string/jumbo v5, "version"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 635
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "persona"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/SemPersonaManager;

    .line 636
    .local v1, "pm":Lcom/samsung/android/knox/SemPersonaManager;
    iget-boolean v3, p0, Lcom/android/server/policy/GlobalActions;->mKeyguardShowing:Z

    invoke-virtual {v1}, Lcom/samsung/android/knox/SemPersonaManager;->getKeyguardShowState()Z

    move-result v5

    or-int/2addr v3, v5

    iput-boolean v3, p0, Lcom/android/server/policy/GlobalActions;->mKeyguardShowing:Z

    .line 637
    const-string/jumbo v3, "GlobalActions"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Oring mKeyguardShowing and pm.getKeyguardShowState()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/policy/GlobalActions;->mKeyguardShowing:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    .end local v1    # "pm":Lcom/samsung/android/knox/SemPersonaManager;
    .end local v2    # "versionInfo":Landroid/os/Bundle;
    :cond_2
    iput-boolean p2, p0, Lcom/android/server/policy/GlobalActions;->mDeviceProvisioned:Z

    .line 644
    const-string/jumbo v3, "GlobalActions"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "device provision check : mDeviceProvisioned ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/policy/GlobalActions;->mDeviceProvisioned:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    if-eqz v3, :cond_6

    .line 646
    sget-boolean v3, Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z

    if-eqz v3, :cond_5

    .line 647
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 652
    :goto_1
    sput-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsConfirmDlg:Z

    .line 653
    sput-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsConfirmLandDlg:Z

    .line 655
    sget-boolean v3, Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z

    if-nez v3, :cond_3

    .line 656
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 595
    :cond_3
    :goto_2
    return-void

    :cond_4
    move v3, v4

    .line 627
    goto/16 :goto_0

    .line 649
    :cond_5
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v3}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->dismiss()V

    .line 650
    iput-object v7, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    goto :goto_1

    .line 661
    :cond_6
    const-string/jumbo v3, "GlobalActions"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "showDialog() : mIsFirstCreated = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/android/server/policy/GlobalActions;->mIsFirstCreated:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    sget-boolean v3, Lcom/android/server/policy/GlobalActions;->mIsFirstCreated:Z

    if-eqz v3, :cond_7

    .line 663
    const-string/jumbo v3, "GlobalActions"

    const-string/jumbo v5, "showDialog() : call checkAirplaneModeOnOff"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->checkAirplaneModeOnOff()V

    .line 665
    sput-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsFirstCreated:Z

    .line 667
    :cond_7
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->handleShow()V

    goto :goto_2
.end method

.method public showErrorMessage(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    const/4 v1, 0x0

    .line 5145
    if-eqz p1, :cond_0

    .line 5146
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 5144
    :cond_0
    return-void
.end method
