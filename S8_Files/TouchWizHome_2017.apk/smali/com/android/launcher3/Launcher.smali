.class public Lcom/android/launcher3/Launcher;
.super Landroid/app/Activity;
.source "Launcher.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/launcher3/common/drag/DragManager$DragListener;
.implements Lcom/android/launcher3/LauncherModel$Callbacks;
.implements Lcom/android/launcher3/LauncherProviderChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/Launcher$GSAPrewamingClientCallbacks;,
        Lcom/android/launcher3/Launcher$CloseSystemDialogsIntentReceiver;
    }
.end annotation


# static fields
.field public static final APPWIDGET_HOST_ID:I = 0x400

.field static final DEBUG_DUMP_LOG:Z = false

.field static final DEBUG_RESUME_TIME:Z = false

.field static final DUMP_STATE_PROPERTY:Ljava/lang/String; = "launcher_dump_state"

.field private static final EASY_MODE:I = 0x0

.field private static final EXTRA_LAUNCHER_ACTION:Ljava/lang/String; = "sec.android.intent.extra.LAUNCHER_ACTION"

.field public static final GOOGLE_SEARCH_WIDGET:Landroid/content/ComponentName;

.field static final INTENT_EXTRA_IGNORE_LAUNCH_ANIMATION:Ljava/lang/String; = "com.android.launcher3.intent.extra.shortcut.INGORE_LAUNCH_ANIMATION"

.field private static final LAUNCHER_ACTION_ALL_APPS:Ljava/lang/String; = "com.android.launcher2.ALL_APPS"

.field public static final LAUNCHER_SYSTEM_UI_FLAG_LIGHT_STATUS_BAR:I = 0x2000

.field static final LOGD:Z = false

.field static final PROFILE_STARTUP:Z = false

.field private static final RUNTIME_STATE_VIEW_IDS:Ljava/lang/String; = "launcher.view_ids"

.field private static final SETTINGS_WALLPAPER_TILT_STATUS:Ljava/lang/String; = "wallpaper_tilt_status"

.field private static final STANDARD_MODE:I = 0x1

.field static final TAG:Ljava/lang/String; = "Launcher"

.field static sDateFormat:Ljava/text/DateFormat;

.field static sDateStamp:Ljava/util/Date;

.field private static sDensityDpi:I

.field static final sDumpLogs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sIsRecreateModeChange:Z

.field private static sNeedCheckEasyMode:Z

.field private static sRecreateCountOnCreate:I

.field static sRunStart:J


# instance fields
.field private mAppsButtonOnResumeCallback:Ljava/lang/Runnable;

.field private mAttached:Z

.field private mBindOnResumeCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mBuildLayersRunnable:Ljava/lang/Runnable;

.field private mChangeMode:Z

.field private final mCloseSystemDialogsReceiver:Landroid/content/BroadcastReceiver;

.field private final mDarkFontObserver:Landroid/database/ContentObserver;

.field private final mDarkNavigationBarObserver:Landroid/database/ContentObserver;

.field private final mDarkStatusBarObserver:Landroid/database/ContentObserver;

.field private mDateChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

.field private mDeviceProfile:Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

.field private mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

.field private mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

.field private final mEasyModeObserver:Landroid/database/ContentObserver;

.field private mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

.field private mGlobalSettingUtils:Lcom/android/launcher3/util/GlobalSettingUtils;

.field private mHasFocus:Z

.field private mHomeBindController:Lcom/android/launcher3/home/HomeBindController;

.field private mHomeController:Lcom/android/launcher3/home/HomeController;

.field private mHotword:Lcom/android/launcher3/home/HotWord;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsSafeModeEnabled:Z

.field private mItemIdToViewId:Ljava/util/HashMap;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLauncherView:Landroid/view/View;

.field private mModel:Lcom/android/launcher3/LauncherModel;

.field private mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

.field private mOnResumeCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mOnResumeNeedsLoad:Z

.field private mOnResumeState:I

.field private mPageTransitionManager:Lcom/android/launcher3/pagetransition/PageTransitionManager;

.field private mPaused:Z

.field private mPrewarmingClient:Lcom/google/android/libraries/launcherclient/LauncherClient;

.field private mQuickOptionManager:Lcom/android/launcher3/common/quickoption/QuickOptionManager;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mRestoreScreenOrientationDelay:I

.field private mSavedInstanceState:Landroid/os/Bundle;

.field private mSavedState:Landroid/os/Bundle;

.field private mSearchedApp:Ljava/lang/String;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSharedPrefs:Landroid/content/SharedPreferences;

.field private mSkipAnim:Z

.field private mStageManager:Lcom/android/launcher3/common/stage/StageManager;

.field private mStats:Lcom/android/launcher3/Stats;

.field private mTiltWallpaperScroller:Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;

.field private mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

.field private mVisible:Z

.field private mWallpaperTiltSettingEnabled:Z

.field private mWindowToken:Landroid/os/IBinder;

.field private mZeropageStartedByHomeKey:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 240
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher3/Launcher;->sDumpLogs:Ljava/util/ArrayList;

    .line 241
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    sput-object v0, Lcom/android/launcher3/Launcher;->sDateStamp:Ljava/util/Date;

    .line 242
    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher3/Launcher;->sDateFormat:Ljava/text/DateFormat;

    .line 243
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/launcher3/Launcher;->sRunStart:J

    .line 273
    sput-boolean v2, Lcom/android/launcher3/Launcher;->sIsRecreateModeChange:Z

    .line 274
    sput v2, Lcom/android/launcher3/Launcher;->sRecreateCountOnCreate:I

    .line 276
    sput-boolean v2, Lcom/android/launcher3/Launcher;->sNeedCheckEasyMode:Z

    .line 288
    sput v2, Lcom/android/launcher3/Launcher;->sDensityDpi:I

    .line 294
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.android.googlequicksearchbox"

    const-string v2, "com.google.android.googlequicksearchbox.SearchWidgetProvider"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/Launcher;->GOOGLE_SEARCH_WIDGET:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 163
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 194
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mItemIdToViewId:Ljava/util/HashMap;

    .line 197
    new-instance v0, Lcom/android/launcher3/Launcher$CloseSystemDialogsIntentReceiver;

    invoke-direct {v0, p0}, Lcom/android/launcher3/Launcher$CloseSystemDialogsIntentReceiver;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mCloseSystemDialogsReceiver:Landroid/content/BroadcastReceiver;

    .line 214
    iput v1, p0, Lcom/android/launcher3/Launcher;->mOnResumeState:I

    .line 216
    iput-object v2, p0, Lcom/android/launcher3/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    .line 218
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/Launcher;->mPaused:Z

    .line 222
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mBindOnResumeCallbacks:Ljava/util/ArrayList;

    .line 223
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mOnResumeCallbacks:Ljava/util/ArrayList;

    .line 224
    iput-object v2, p0, Lcom/android/launcher3/Launcher;->mAppsButtonOnResumeCallback:Ljava/lang/Runnable;

    .line 230
    iput-boolean v1, p0, Lcom/android/launcher3/Launcher;->mVisible:Z

    .line 231
    iput-boolean v1, p0, Lcom/android/launcher3/Launcher;->mHasFocus:Z

    .line 232
    iput-boolean v1, p0, Lcom/android/launcher3/Launcher;->mAttached:Z

    .line 238
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/android/launcher3/Launcher;->mRestoreScreenOrientationDelay:I

    .line 250
    iput-object v2, p0, Lcom/android/launcher3/Launcher;->mPageTransitionManager:Lcom/android/launcher3/pagetransition/PageTransitionManager;

    .line 252
    new-instance v0, Lcom/android/launcher3/Launcher$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/Launcher$1;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mBuildLayersRunnable:Ljava/lang/Runnable;

    .line 269
    iput-boolean v1, p0, Lcom/android/launcher3/Launcher;->mSkipAnim:Z

    .line 279
    iput-object v2, p0, Lcom/android/launcher3/Launcher;->mSearchedApp:Ljava/lang/String;

    .line 280
    iput-boolean v1, p0, Lcom/android/launcher3/Launcher;->mChangeMode:Z

    .line 284
    iput-object v2, p0, Lcom/android/launcher3/Launcher;->mWindowToken:Landroid/os/IBinder;

    .line 285
    iput-boolean v1, p0, Lcom/android/launcher3/Launcher;->mWallpaperTiltSettingEnabled:Z

    .line 299
    iput-boolean v1, p0, Lcom/android/launcher3/Launcher;->mZeropageStartedByHomeKey:Z

    .line 2110
    new-instance v0, Lcom/android/launcher3/Launcher$8;

    invoke-direct {v0, p0}, Lcom/android/launcher3/Launcher$8;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 2147
    new-instance v0, Lcom/android/launcher3/Launcher$9;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/Launcher$9;-><init>(Lcom/android/launcher3/Launcher;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mDarkFontObserver:Landroid/database/ContentObserver;

    .line 2157
    new-instance v0, Lcom/android/launcher3/Launcher$10;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/Launcher$10;-><init>(Lcom/android/launcher3/Launcher;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mDarkStatusBarObserver:Landroid/database/ContentObserver;

    .line 2167
    new-instance v0, Lcom/android/launcher3/Launcher$11;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/Launcher$11;-><init>(Lcom/android/launcher3/Launcher;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mDarkNavigationBarObserver:Landroid/database/ContentObserver;

    .line 2181
    new-instance v0, Lcom/android/launcher3/Launcher$12;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/Launcher$12;-><init>(Lcom/android/launcher3/Launcher;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mEasyModeObserver:Landroid/database/ContentObserver;

    .line 2529
    new-instance v0, Lcom/android/launcher3/Launcher$14;

    invoke-direct {v0, p0}, Lcom/android/launcher3/Launcher$14;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mDateChangedReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private acceptFilter()Z
    .locals 2

    .prologue
    .line 1339
    const-string v1, "input_method"

    .line 1340
    invoke-virtual {p0, v1}, Lcom/android/launcher3/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1341
    .local v0, "inputManager":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isFullscreenMode()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/home/HomeController;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/Launcher;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/launcher3/Launcher;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/Launcher;

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->closeSystemDialogs()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/launcher3/Launcher;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/Launcher;

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->mPaused:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/Launcher;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mTiltWallpaperScroller:Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/launcher3/Launcher;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/Launcher;

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->resetWallpaperOffsets()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/launcher3/Launcher;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/Launcher;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mBuildLayersRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/home/HomeBindController;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/Launcher;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mHomeBindController:Lcom/android/launcher3/home/HomeBindController;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherModel;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/Launcher;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/LauncherModel;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/common/drag/DragManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/Launcher;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/common/multiselect/MultiSelectManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/Launcher;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/launcher3/Launcher;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/Launcher;

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->changeColorForBg()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/launcher3/Launcher;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/Launcher;

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->mAttached:Z

    return v0
.end method

.method static synthetic access$902(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 163
    sput-boolean p0, Lcom/android/launcher3/Launcher;->sNeedCheckEasyMode:Z

    return p0
.end method

.method public static addDumpLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Z)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "log"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;
    .param p3, "debugLog"    # Z

    .prologue
    .line 2304
    if-eqz p3, :cond_0

    .line 2305
    if-eqz p2, :cond_1

    .line 2306
    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2326
    :cond_0
    :goto_0
    return-void

    .line 2308
    :cond_1
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "log"    # Ljava/lang/String;
    .param p2, "debugLog"    # Z

    .prologue
    .line 2300
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/android/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Z)V

    .line 2301
    return-void
.end method

.method private changeColorForBg()V
    .locals 2

    .prologue
    .line 2223
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    if-eqz v0, :cond_0

    .line 2224
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    invoke-static {}, Lcom/android/launcher3/util/WhiteBgManager;->isWhiteBg()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/stage/StageManager;->onChangeColorForBg(Z)V

    .line 2226
    :cond_0
    return-void
.end method

.method private changeEasyModeIfNecessary(Z)V
    .locals 5
    .param p1, "needReCreate"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2189
    .line 2190
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "easy_mode_switch"

    .line 2189
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_1

    move v0, v1

    .line 2191
    .local v0, "isEasyMode":Z
    :goto_0
    sput-boolean v2, Lcom/android/launcher3/Launcher;->sNeedCheckEasyMode:Z

    .line 2192
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->isEasyModeEnabled()Z

    move-result v2

    if-eq v0, v2, :cond_0

    .line 2193
    const-string v2, "Launcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changeEasyMode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2194
    iput-boolean v1, p0, Lcom/android/launcher3/Launcher;->mChangeMode:Z

    .line 2195
    invoke-static {}, Lcom/android/launcher3/common/model/FavoritesProvider;->getInstance()Lcom/android/launcher3/common/model/FavoritesProvider;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v0}, Lcom/android/launcher3/common/model/FavoritesProvider;->switchTable(IZ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2196
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/launcher3/LauncherAppState;->writeEasyModeEnabled(Z)V

    .line 2198
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v2

    invoke-virtual {v2, v1, v1}, Lcom/android/launcher3/LauncherModel;->resetLoadedState(ZZ)V

    .line 2199
    if-eqz p1, :cond_0

    .line 2200
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->recreateLauncher()V

    .line 2204
    :cond_0
    return-void

    .end local v0    # "isEasyMode":Z
    :cond_1
    move v0, v2

    .line 2189
    goto :goto_0
.end method

.method private changeHomeModeIfNecessary()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 2207
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v3}, Lcom/android/launcher3/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2208
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "pref_home_screen_mode"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2209
    const-string v2, "pref_home_screen_mode"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 2210
    .local v0, "HomeOnlySettingValue":Z
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v2

    if-ne v0, v2, :cond_1

    .line 2220
    .end local v0    # "HomeOnlySettingValue":Z
    :cond_0
    :goto_0
    return-void

    .line 2213
    .restart local v0    # "HomeOnlySettingValue":Z
    :cond_1
    const-string v2, "Launcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "change home mode setting value : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " appstate value : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2214
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2213
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2215
    invoke-static {}, Lcom/android/launcher3/common/model/FavoritesProvider;->getInstance()Lcom/android/launcher3/common/model/FavoritesProvider;

    move-result-object v2

    invoke-virtual {v2, v5, v0}, Lcom/android/launcher3/common/model/FavoritesProvider;->switchTable(IZ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2216
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/launcher3/LauncherAppState;->writeHomeOnlyModeEnabled(Z)V

    .line 2217
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v2

    invoke-virtual {v2, v5, v5}, Lcom/android/launcher3/LauncherModel;->resetLoadedState(ZZ)V

    goto :goto_0
.end method

.method private clearTypedText()V
    .locals 2

    .prologue
    .line 1398
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 1399
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 1400
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 1401
    return-void
.end method

.method private closeSystemDialogs()V
    .locals 2

    .prologue
    .line 2264
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->closeAllPanels()V

    .line 2267
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/HomeController;->setWaitingForResult(Z)V

    .line 2268
    return-void
.end method

.method private getTypedText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1394
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private resetWallpaperOffsets()V
    .locals 5

    .prologue
    .line 2649
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mWindowToken:Landroid/os/IBinder;

    if-eqz v2, :cond_0

    .line 2650
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    .line 2651
    .local v1, "wallpaperManager":Landroid/app/WallpaperManager;
    if-eqz v1, :cond_0

    .line 2653
    :try_start_0
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mWindowToken:Landroid/os/IBinder;

    const/high16 v3, 0x3f000000    # 0.5f

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/WallpaperManager;->setWallpaperOffsets(Landroid/os/IBinder;FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2659
    .end local v1    # "wallpaperManager":Landroid/app/WallpaperManager;
    :cond_0
    :goto_0
    return-void

    .line 2654
    .restart local v1    # "wallpaperManager":Landroid/app/WallpaperManager;
    :catch_0
    move-exception v0

    .line 2655
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Launcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetWallpaperOffsets exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private restoreState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 1605
    if-nez p1, :cond_0

    .line 1611
    :goto_0
    return-void

    .line 1608
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/stage/StageManager;->restoreState(Landroid/os/Bundle;)V

    .line 1609
    const-string v0, "launcher.view_ids"

    .line 1610
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mItemIdToViewId:Ljava/util/HashMap;

    goto :goto_0
.end method

.method private setCloneItemEnabled(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 2504
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/LauncherModel;->updateAppsForCloneItemEnabled(Z)V

    .line 2505
    return-void
.end method

.method private setIndicatorTransparency()V
    .locals 4

    .prologue
    .line 1664
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/high16 v3, 0x4000000

    invoke-virtual {v2, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 1665
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    invoke-virtual {v2}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v1

    .line 1666
    .local v1, "topStage":Lcom/android/launcher3/common/stage/Stage;
    const/16 v0, 0x400

    .line 1667
    .local v0, "flags":I
    invoke-virtual {v1}, Lcom/android/launcher3/common/stage/Stage;->supportStatusBar()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1668
    or-int/lit16 v0, v0, 0x800

    .line 1670
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->addFlags(I)V

    .line 1671
    return-void
.end method

.method private setLiveIconAlarm()V
    .locals 1

    .prologue
    .line 2524
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 2525
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/android/launcher3/common/view/LiveIconManager;->setCalendarAlarm(Landroid/content/Context;)V

    .line 2526
    invoke-static {v0}, Lcom/android/launcher3/common/view/LiveIconManager;->setClockAlarm(Landroid/content/Context;)V

    .line 2527
    return-void
.end method

.method private setOrientation()V
    .locals 1

    .prologue
    .line 708
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportRotate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 709
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->unlockScreenOrientation(Z)V

    .line 713
    :goto_0
    return-void

    .line 711
    :cond_0
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method private setWhichTransitionEffect(I)V
    .locals 1
    .param p1, "whichTransitionEffect"    # I

    .prologue
    .line 2065
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPageTransitionManager:Lcom/android/launcher3/pagetransition/PageTransitionManager;

    if-eqz v0, :cond_0

    .line 2066
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPageTransitionManager:Lcom/android/launcher3/pagetransition/PageTransitionManager;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/pagetransition/PageTransitionManager;->setCurrentTransitionEffect(I)V

    .line 2068
    :cond_0
    return-void
.end method

.method private setupViews()V
    .locals 2

    .prologue
    .line 686
    const v0, 0x7f0f0091

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherView:Landroid/view/View;

    .line 687
    const v0, 0x7f0f0092

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/view/DragLayer;

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    .line 689
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherView:Landroid/view/View;

    const/16 v1, 0x700

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 694
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    invoke-virtual {v0, p0, v1}, Lcom/android/launcher3/common/view/DragLayer;->setup(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/common/drag/DragManager;)V

    .line 696
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    if-eqz v0, :cond_0

    .line 697
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->setup(Landroid/app/Activity;)V

    .line 700
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    invoke-virtual {v0}, Lcom/android/launcher3/common/stage/StageManager;->setupStartupViews()V

    .line 702
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    if-eqz v0, :cond_1

    .line 703
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    invoke-virtual {v0, p0, v1}, Lcom/android/launcher3/common/tray/TrayManager;->setup(Landroid/app/Activity;Lcom/android/launcher3/common/drag/DragManager;)V

    .line 705
    :cond_1
    return-void
.end method

.method private setupWallpaperScroller()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2594
    const-string v2, "Launcher"

    const-string v5, "setupWallpaperScroller"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2595
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "wallpaper_tilt_status"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/launcher3/Launcher;->mWallpaperTiltSettingEnabled:Z

    .line 2598
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v2, :cond_0

    .line 2599
    const-string v2, "sensor"

    invoke-virtual {p0, v2}, Lcom/android/launcher3/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager;

    iput-object v2, p0, Lcom/android/launcher3/Launcher;->mSensorManager:Landroid/hardware/SensorManager;

    .line 2602
    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mSensorManager:Landroid/hardware/SensorManager;

    const v5, 0x1002b

    invoke-virtual {v2, v5}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 2604
    .local v0, "gyroSensor":Landroid/hardware/Sensor;
    if-nez v0, :cond_3

    .line 2605
    const-string v2, "Launcher"

    const-string v3, "Launcher::onCreate() - gyroSensor not support"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2606
    invoke-static {v4}, Lcom/android/launcher3/LauncherFeature;->setSupportWallpaperTilt(Z)V

    .line 2631
    :cond_1
    :goto_1
    return-void

    .end local v0    # "gyroSensor":Landroid/hardware/Sensor;
    :cond_2
    move v2, v4

    .line 2595
    goto :goto_0

    .line 2608
    .restart local v0    # "gyroSensor":Landroid/hardware/Sensor;
    :cond_3
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mTiltWallpaperScroller:Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;

    if-nez v2, :cond_4

    .line 2609
    new-instance v2, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;

    invoke-direct {v2, p0}, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/launcher3/Launcher;->mTiltWallpaperScroller:Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;

    .line 2612
    :cond_4
    iget-boolean v2, p0, Lcom/android/launcher3/Launcher;->mWallpaperTiltSettingEnabled:Z

    if-eqz v2, :cond_1

    .line 2613
    invoke-static {p0, p0}, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->initialize(Landroid/content/Context;Landroid/app/Activity;)V

    .line 2614
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mTiltWallpaperScroller:Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;

    if-eqz v2, :cond_5

    .line 2615
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mTiltWallpaperScroller:Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;->start(Z)V

    .line 2618
    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v1

    .line 2619
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_6

    .line 2620
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/Launcher;->mWindowToken:Landroid/os/IBinder;

    .line 2623
    :cond_6
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mWindowToken:Landroid/os/IBinder;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mTiltWallpaperScroller:Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;

    if-eqz v2, :cond_7

    .line 2624
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mTiltWallpaperScroller:Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;

    iget-object v4, p0, Lcom/android/launcher3/Launcher;->mWindowToken:Landroid/os/IBinder;

    invoke-virtual {v2, v4}, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;->setWindowToken(Landroid/os/IBinder;)V

    .line 2628
    :goto_2
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mTiltWallpaperScroller:Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;->resume(Z)V

    goto :goto_1

    .line 2626
    :cond_7
    const-string v2, "Launcher"

    const-string v4, "WallpaperScroller - mWindowToken is null"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private shutdownWallpaperScroller()V
    .locals 2

    .prologue
    .line 2634
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mTiltWallpaperScroller:Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mTiltWallpaperScroller:Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;

    invoke-virtual {v1}, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2635
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mTiltWallpaperScroller:Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;

    invoke-virtual {v1}, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;->pause()V

    .line 2636
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 2637
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/android/launcher3/Launcher$15;

    invoke-direct {v1, p0}, Lcom/android/launcher3/Launcher$15;-><init>(Lcom/android/launcher3/Launcher;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2646
    .end local v0    # "handler":Landroid/os/Handler;
    :cond_0
    return-void
.end method

.method private updateWhiteBgIfNecessary()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 2727
    invoke-static {}, Lcom/android/launcher3/util/WhiteBgManager;->isWhiteBg()Z

    move-result v0

    .line 2728
    .local v0, "isWhiteBg":Z
    invoke-static {p0}, Lcom/android/launcher3/util/WhiteBgManager;->setup(Landroid/content/Context;)V

    .line 2729
    invoke-static {}, Lcom/android/launcher3/util/WhiteBgManager;->isWhiteBg()Z

    move-result v3

    if-eq v0, v3, :cond_0

    .line 2730
    iget-object v3, p0, Lcom/android/launcher3/Launcher;->mDarkFontObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 2733
    :cond_0
    invoke-static {}, Lcom/android/launcher3/util/WhiteBgManager;->isWhiteStatusBar()Z

    move-result v2

    .line 2734
    .local v2, "isWhiteStatusBar":Z
    invoke-static {p0}, Lcom/android/launcher3/util/WhiteBgManager;->setupForStatusBar(Landroid/content/Context;)V

    .line 2735
    invoke-static {}, Lcom/android/launcher3/util/WhiteBgManager;->isWhiteStatusBar()Z

    move-result v3

    if-eq v2, v3, :cond_1

    .line 2736
    iget-object v3, p0, Lcom/android/launcher3/Launcher;->mDarkStatusBarObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 2739
    :cond_1
    invoke-static {}, Lcom/android/launcher3/util/WhiteBgManager;->isWhiteNavigationBar()Z

    move-result v1

    .line 2740
    .local v1, "isWhiteNavigationBar":Z
    invoke-static {p0}, Lcom/android/launcher3/util/WhiteBgManager;->setupForNavigationBar(Landroid/content/Context;)V

    .line 2741
    invoke-static {}, Lcom/android/launcher3/util/WhiteBgManager;->isWhiteNavigationBar()Z

    move-result v3

    if-eq v1, v3, :cond_2

    .line 2742
    iget-object v3, p0, Lcom/android/launcher3/Launcher;->mDarkNavigationBarObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 2744
    :cond_2
    return-void
.end method


# virtual methods
.method public addOnResumeCallback(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "run"    # Ljava/lang/Runnable;

    .prologue
    .line 1830
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mOnResumeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1831
    return-void
.end method

.method public beginDragFromWidget(Landroid/view/View;Landroid/graphics/Bitmap;Lcom/android/launcher3/common/drag/DragSource;Ljava/lang/Object;Landroid/graphics/Rect;F)V
    .locals 12
    .param p1, "v"    # Landroid/view/View;
    .param p2, "bmp"    # Landroid/graphics/Bitmap;
    .param p3, "source"    # Lcom/android/launcher3/common/drag/DragSource;
    .param p4, "dragInfo"    # Ljava/lang/Object;
    .param p5, "viewImageBounds"    # Landroid/graphics/Rect;
    .param p6, "initialDragViewScale"    # F

    .prologue
    .line 2027
    move-object/from16 v10, p4

    check-cast v10, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 2028
    .local v10, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->getWorkspace()Lcom/android/launcher3/home/Workspace;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/android/launcher3/home/Workspace;->estimateItemSize(Lcom/android/launcher3/common/base/item/ItemInfo;)[I

    move-result-object v11

    .line 2030
    .local v11, "size":[I
    instance-of v0, v10, Lcom/android/launcher3/widget/PendingAddShortcutInfo;

    if-eqz v0, :cond_0

    .line 2031
    invoke-static {p0, p2}, Lcom/android/launcher3/common/drag/DragViewHelper;->createDragOutline(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 2036
    .local v8, "dragOutline":Landroid/graphics/drawable/Drawable;
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    const/4 v6, 0x1

    const/4 v9, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v7, p6

    invoke-virtual/range {v0 .. v9}, Lcom/android/launcher3/common/drag/DragManager;->startDrag(Landroid/view/View;Landroid/graphics/Bitmap;Lcom/android/launcher3/common/drag/DragSource;Ljava/lang/Object;Landroid/graphics/Rect;IFLandroid/graphics/drawable/Drawable;Z)V

    .line 2038
    return-void

    .line 2033
    .end local v8    # "dragOutline":Landroid/graphics/drawable/Drawable;
    :cond_0
    const/4 v0, 0x0

    aget v0, v11, v0

    const/4 v1, 0x1

    aget v1, v11, v1

    invoke-static {p0, v0, v1}, Lcom/android/launcher3/common/drag/DragViewHelper;->createWidgetDragOutline(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .restart local v8    # "dragOutline":Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method public beginDragShared(Landroid/view/View;Lcom/android/launcher3/common/drag/DragSource;ZZ)V
    .locals 36
    .param p1, "child"    # Landroid/view/View;
    .param p2, "source"    # Lcom/android/launcher3/common/drag/DragSource;
    .param p3, "allowQuickOption"    # Z
    .param p4, "fromEmptyCell"    # Z

    .prologue
    .line 1933
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-nez v4, :cond_0

    .line 1934
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Drag started with a view that has no tag set. This will cause a crash (issue 11627249) down the line. View: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "  tag: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1936
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 1937
    .local v27, "msg":Ljava/lang/String;
    new-instance v4, Ljava/lang/IllegalStateException;

    move-object/from16 v0, v27

    invoke-direct {v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1940
    .end local v27    # "msg":Ljava/lang/String;
    :cond_0
    const/16 v35, 0x0

    .line 1941
    .local v35, "topDelta":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Launcher;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Launcher;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v4}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->isMultiSelectMode()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1942
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Launcher;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v4}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->isShowingHelpDialog()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1943
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Launcher;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->hideHelpDialog(Z)V

    .line 1945
    :cond_1
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFolderSelect()Z

    move-result v4

    if-eqz v4, :cond_2

    move-object/from16 v0, p1

    instance-of v4, v0, Lcom/android/launcher3/folder/view/FolderIconView;

    if-nez v4, :cond_3

    :cond_2
    move-object/from16 v0, p1

    instance-of v4, v0, Lcom/android/launcher3/common/view/IconView;

    if-eqz v4, :cond_4

    .line 1947
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/common/base/item/ItemInfo;->getChecked()Z

    move-result v4

    if-eqz v4, :cond_9

    move-object/from16 v4, p1

    .line 1948
    check-cast v4, Lcom/android/launcher3/common/view/IconView;

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Lcom/android/launcher3/common/view/IconView;->updateCountBadge(ZI)V

    move-object/from16 v4, p1

    .line 1949
    check-cast v4, Lcom/android/launcher3/common/view/IconView;

    invoke-virtual {v4}, Lcom/android/launcher3/common/view/IconView;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v4

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_0
    move-object/from16 v4, p1

    .line 1953
    check-cast v4, Lcom/android/launcher3/common/view/IconView;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Lcom/android/launcher3/common/view/IconView;->updateCheckBox(ZZ)V

    move-object/from16 v4, p1

    .line 1955
    check-cast v4, Lcom/android/launcher3/common/view/IconView;

    invoke-virtual {v4}, Lcom/android/launcher3/common/view/IconView;->getIconVew()Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ImageView;->getTop()I

    move-result v35

    .line 1959
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->clearFocus()V

    .line 1960
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->setPressed(Z)V

    .line 1964
    move-object/from16 v0, p1

    instance-of v4, v0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    if-eqz v4, :cond_a

    .line 1965
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 1966
    .local v24, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v4}, Lcom/android/launcher3/home/HomeController;->getWorkspace()Lcom/android/launcher3/home/Workspace;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Lcom/android/launcher3/home/Workspace;->estimateItemSize(Lcom/android/launcher3/common/base/item/ItemInfo;)[I

    move-result-object v32

    .line 1967
    .local v32, "size":[I
    const/4 v4, 0x0

    aget v4, v32, v4

    const/4 v7, 0x1

    aget v7, v32, v7

    move-object/from16 v0, p0

    invoke-static {v0, v4, v7}, Lcom/android/launcher3/common/drag/DragViewHelper;->createWidgetDragOutline(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .line 1973
    .end local v24    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v32    # "size":[I
    .local v14, "dragOutline":Landroid/graphics/drawable/Drawable;
    :goto_1
    new-instance v29, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v4, 0x6

    move-object/from16 v0, v29

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 1975
    .local v29, "padding":Ljava/util/concurrent/atomic/AtomicInteger;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Launcher;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    if-eqz v4, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Launcher;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    .line 1976
    invoke-virtual {v4}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->isMultiSelectMode()Z

    move-result v4

    .line 1975
    :goto_2
    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-static {v0, v1, v4}, Lcom/android/launcher3/common/drag/DragViewHelper;->createDragBitmap(Landroid/view/View;Ljava/util/concurrent/atomic/AtomicInteger;Z)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 1978
    .local v5, "b":Landroid/graphics/Bitmap;
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v18

    .line 1979
    .local v18, "bmpWidth":I
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    .line 1981
    .local v17, "bmpHeight":I
    const/4 v4, 0x2

    new-array v0, v4, [I

    move-object/from16 v33, v0

    .line 1982
    .local v33, "tempPt":[I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v4, v0, v1}, Lcom/android/launcher3/common/view/DragLayer;->getLocationInDragLayer(Landroid/view/View;[I)F

    move-result v13

    .line 1985
    .local v13, "scale":F
    move-object/from16 v0, p1

    instance-of v4, v0, Lcom/android/launcher3/common/view/IconView;

    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Launcher;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Launcher;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v4}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->isMultiSelectMode()Z

    move-result v4

    if-nez v4, :cond_6

    .line 1986
    :cond_5
    const v4, 0x3f666666    # 0.9f

    mul-float/2addr v13, v4

    .line 1989
    :cond_6
    const/4 v4, 0x0

    aget v4, v33, v4

    int-to-float v4, v4

    move/from16 v0, v18

    int-to-float v7, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v13

    sub-float/2addr v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    sub-float/2addr v4, v7

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 1990
    .local v6, "dragLayerX":I
    const/4 v4, 0x1

    aget v4, v33, v4

    int-to-float v4, v4

    move/from16 v0, v17

    int-to-float v7, v0

    move/from16 v0, v17

    int-to-float v8, v0

    mul-float/2addr v8, v13

    sub-float/2addr v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    sub-float/2addr v4, v7

    .line 1991
    invoke-virtual/range {v29 .. v29}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    sub-float/2addr v4, v7

    .line 1990
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v20

    .line 1993
    .local v20, "dragLayerY":I
    const/4 v11, 0x0

    .line 1994
    .local v11, "dragVisualizeOffset":Landroid/graphics/Point;
    const/4 v12, 0x0

    .line 1995
    .local v12, "dragRect":Landroid/graphics/Rect;
    move-object/from16 v0, p1

    instance-of v4, v0, Lcom/android/launcher3/common/view/IconView;

    if-eqz v4, :cond_7

    move-object/from16 v23, p1

    .line 1996
    check-cast v23, Lcom/android/launcher3/common/view/IconView;

    .line 1997
    .local v23, "iconView":Lcom/android/launcher3/common/view/IconView;
    invoke-virtual/range {v23 .. v23}, Lcom/android/launcher3/common/view/IconView;->getIconVew()Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v26

    check-cast v26, Landroid/widget/FrameLayout$LayoutParams;

    .line 1998
    .local v26, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual/range {v23 .. v23}, Lcom/android/launcher3/common/view/IconView;->getIconSize()I

    move-result v22

    .line 1999
    .local v22, "iconSize":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    move-object/from16 v0, v26

    iget v7, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int v34, v4, v7

    .line 2000
    .local v34, "top":I
    sub-int v4, v18, v22

    div-int/lit8 v25, v4, 0x2

    .line 2001
    .local v25, "left":I
    add-int v31, v25, v22

    .line 2002
    .local v31, "right":I
    add-int v19, v34, v22

    .line 2003
    .local v19, "bottom":I
    add-int v20, v20, v34

    .line 2006
    new-instance v11, Landroid/graphics/Point;

    .end local v11    # "dragVisualizeOffset":Landroid/graphics/Point;
    invoke-virtual/range {v29 .. v29}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    neg-int v4, v4

    div-int/lit8 v4, v4, 0x2

    invoke-virtual/range {v29 .. v29}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    invoke-direct {v11, v4, v7}, Landroid/graphics/Point;-><init>(II)V

    .line 2007
    .restart local v11    # "dragVisualizeOffset":Landroid/graphics/Point;
    new-instance v12, Landroid/graphics/Rect;

    .end local v12    # "dragRect":Landroid/graphics/Rect;
    move/from16 v0, v25

    move/from16 v1, v34

    move/from16 v2, v31

    move/from16 v3, v19

    invoke-direct {v12, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2010
    .end local v19    # "bottom":I
    .end local v22    # "iconSize":I
    .end local v23    # "iconView":Lcom/android/launcher3/common/view/IconView;
    .end local v25    # "left":I
    .end local v26    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v31    # "right":I
    .end local v34    # "top":I
    .restart local v12    # "dragRect":Landroid/graphics/Rect;
    :cond_7
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportQuickOption()Z

    move-result v4

    if-eqz v4, :cond_8

    if-eqz p3, :cond_8

    .line 2011
    new-instance v30, Landroid/graphics/Rect;

    invoke-direct/range {v30 .. v30}, Landroid/graphics/Rect;-><init>()V

    .line 2012
    .local v30, "r":Landroid/graphics/Rect;
    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 2013
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Launcher;->getQuickOptionManager()Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->setAnchorRect(Landroid/graphics/Rect;)V

    .line 2014
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Launcher;->getQuickOptionManager()Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->setAnchorView(Landroid/view/View;)V

    .line 2016
    .end local v30    # "r":Landroid/graphics/Rect;
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Launcher;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    sub-int v7, v20, v35

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    const/4 v10, 0x0

    move-object/from16 v8, p2

    move/from16 v15, p3

    move/from16 v16, p4

    invoke-virtual/range {v4 .. v16}, Lcom/android/launcher3/common/drag/DragManager;->startDrag(Landroid/graphics/Bitmap;IILcom/android/launcher3/common/drag/DragSource;Ljava/lang/Object;ILandroid/graphics/Point;Landroid/graphics/Rect;FLandroid/graphics/drawable/Drawable;ZZ)Lcom/android/launcher3/common/drag/DragView;

    move-result-object v21

    .line 2019
    .local v21, "dv":Lcom/android/launcher3/common/drag/DragView;
    invoke-interface/range {p2 .. p2}, Lcom/android/launcher3/common/drag/DragSource;->getIntrinsicIconSize()I

    move-result v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lcom/android/launcher3/common/drag/DragView;->setIntrinsicIconSize(I)V

    .line 2020
    move-object/from16 v0, v21

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/drag/DragView;->setTopDelta(I)V

    .line 2022
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 2023
    return-void

    .end local v5    # "b":Landroid/graphics/Bitmap;
    .end local v6    # "dragLayerX":I
    .end local v11    # "dragVisualizeOffset":Landroid/graphics/Point;
    .end local v12    # "dragRect":Landroid/graphics/Rect;
    .end local v13    # "scale":F
    .end local v14    # "dragOutline":Landroid/graphics/drawable/Drawable;
    .end local v17    # "bmpHeight":I
    .end local v18    # "bmpWidth":I
    .end local v20    # "dragLayerY":I
    .end local v21    # "dv":Lcom/android/launcher3/common/drag/DragView;
    .end local v29    # "padding":Ljava/util/concurrent/atomic/AtomicInteger;
    .end local v33    # "tempPt":[I
    :cond_9
    move-object/from16 v4, p1

    .line 1951
    check-cast v4, Lcom/android/launcher3/common/view/IconView;

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-virtual {v4, v7, v8}, Lcom/android/launcher3/common/view/IconView;->updateCountBadge(ZI)V

    goto/16 :goto_0

    .line 1969
    :cond_a
    invoke-interface/range {p2 .. p2}, Lcom/android/launcher3/common/drag/DragSource;->getOutlineColor()I

    move-result v28

    .line 1970
    .local v28, "outlineColor":I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v28

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/common/drag/DragViewHelper;->createDragOutline(Landroid/content/Context;Landroid/view/View;I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .restart local v14    # "dragOutline":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_1

    .line 1976
    .end local v28    # "outlineColor":I
    .restart local v29    # "padding":Ljava/util/concurrent/atomic/AtomicInteger;
    :cond_b
    const/4 v4, 0x0

    goto/16 :goto_2
.end method

.method public changeNavigationBarColor(Z)V
    .locals 5
    .param p1, "whiteBg"    # Z

    .prologue
    .line 2245
    :try_start_0
    const-string v2, "Launcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changeNavigationBarColor whiteBg = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2246
    if-eqz p1, :cond_0

    const v2, 0x7f0d002e

    :goto_0
    invoke-static {p0, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 2247
    .local v0, "color":I
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/WindowManager$LayoutParams;->semSetNavigationBarIconColor(I)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 2251
    .end local v0    # "color":I
    :goto_1
    return-void

    .line 2246
    :cond_0
    const v2, 0x7f0d002d

    goto :goto_0

    .line 2248
    :catch_0
    move-exception v1

    .line 2249
    .local v1, "e":Ljava/lang/NoSuchMethodError;
    const-string v2, "Launcher"

    const-string v3, "NoSuchMethodError occur when change nevigation color."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public changeStatusBarColor(Z)V
    .locals 3
    .param p1, "whiteBg"    # Z

    .prologue
    .line 2229
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeStatusBarColor whiteBg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2230
    if-eqz p1, :cond_0

    .line 2231
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 2232
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    or-int/lit16 v1, v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 2241
    :goto_0
    return-void

    .line 2236
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 2237
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    and-int/lit16 v1, v1, -0x2001

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0
.end method

.method public closeFolder()V
    .locals 1

    .prologue
    .line 2071
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getOpenFolderView()Lcom/android/launcher3/folder/view/FolderView;

    move-result-object v0

    .line 2072
    .local v0, "folder":Lcom/android/launcher3/folder/view/FolderView;
    if-eqz v0, :cond_0

    .line 2073
    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->closeFolder(Lcom/android/launcher3/folder/view/FolderView;)V

    .line 2075
    :cond_0
    return-void
.end method

.method public closeFolder(Lcom/android/launcher3/folder/view/FolderView;)V
    .locals 3
    .param p1, "folder"    # Lcom/android/launcher3/folder/view/FolderView;

    .prologue
    .line 2078
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/common/stage/StageManager;->finishStage(ILcom/android/launcher3/common/stage/StageEntry;)V

    .line 2079
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 1405
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    .line 1406
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 1423
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/common/stage/StageManager;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1426
    :goto_1
    :pswitch_0
    :sswitch_0
    return v0

    .line 1410
    :sswitch_1
    const-string v1, "launcher_dump_state"

    invoke-static {v1}, Lcom/android/launcher3/Utilities;->isPropertyEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1411
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->dumpState()V

    goto :goto_1

    .line 1416
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 1417
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1426
    :cond_2
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1

    .line 1406
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x19 -> :sswitch_1
    .end sparse-switch

    .line 1417
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    const v4, 0x7f0800c2

    .line 1756
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    .line 1757
    .local v0, "result":Z
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    .line 1758
    .local v1, "text":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1760
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getTopStageMode()I

    move-result v2

    .line 1761
    .local v2, "viewMode":I
    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 1762
    const v3, 0x7f08000f

    invoke-virtual {p0, v3}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1774
    :goto_0
    return v0

    .line 1763
    :cond_0
    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 1764
    const v3, 0x7f0800ba

    invoke-virtual {p0, v3}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1765
    :cond_1
    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 1766
    iget-object v3, p0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v3}, Lcom/android/launcher3/home/HomeController;->getWorkspace()Lcom/android/launcher3/home/Workspace;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1767
    iget-object v3, p0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v3}, Lcom/android/launcher3/home/HomeController;->getWorkspace()Lcom/android/launcher3/home/Workspace;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/home/Workspace;->getCurrentPageDescription()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1769
    :cond_2
    invoke-virtual {p0, v4}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1772
    :cond_3
    invoke-virtual {p0, v4}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    .line 2289
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2290
    sget-object v2, Lcom/android/launcher3/Launcher;->sDumpLogs:Ljava/util/ArrayList;

    monitor-enter v2

    .line 2291
    :try_start_0
    const-string v1, " "

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2292
    const-string v1, "Debug logs: "

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2293
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/android/launcher3/Launcher;->sDumpLogs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2294
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v1, Lcom/android/launcher3/Launcher;->sDumpLogs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2293
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2296
    :cond_0
    monitor-exit v2

    .line 2297
    return-void

    .line 2296
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public dumpLogsToLocalData()V
    .locals 0

    .prologue
    .line 2374
    return-void
.end method

.method public dumpState()V
    .locals 3

    .prologue
    .line 2274
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BEGIN launcher3 dump state for launcher "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2275
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSavedState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mSavedState:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2276
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mWorkspaceLoading="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mHomeBindController:Lcom/android/launcher3/home/HomeBindController;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeBindController;->isWorkspaceLoading()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2277
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mRestoring="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeController;->isRestoring()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2278
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mWaitingForResult="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeController;->isWaitingForResult()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2279
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSavedInstanceState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2280
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sFolders.size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/home/HomeBindController;->sFolders:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v2}, Lcom/android/launcher3/util/LongArrayMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2281
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->dumpState()V

    .line 2284
    const-string v0, "Launcher"

    const-string v1, "END launcher3 dump state"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2285
    return-void
.end method

.method public enableVoiceSearch(Landroid/widget/SearchView;)V
    .locals 6
    .param p1, "searchView"    # Landroid/widget/SearchView;

    .prologue
    .line 2455
    if-eqz p1, :cond_0

    .line 2456
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 2457
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2458
    .local v0, "className":Ljava/lang/String;
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2460
    .local v1, "componentName":Landroid/content/ComponentName;
    const-string v5, "search"

    invoke-virtual {p0, v5}, Lcom/android/launcher3/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/SearchManager;

    .line 2461
    .local v3, "searchManager":Landroid/app/SearchManager;
    invoke-virtual {v3, v1}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v4

    .line 2463
    .local v4, "searchableInfo":Landroid/app/SearchableInfo;
    invoke-virtual {p1, v4}, Landroid/widget/SearchView;->setSearchableInfo(Landroid/app/SearchableInfo;)V

    .line 2465
    .end local v0    # "className":Ljava/lang/String;
    .end local v1    # "componentName":Landroid/content/ComponentName;
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "searchManager":Landroid/app/SearchManager;
    .end local v4    # "searchableInfo":Landroid/app/SearchableInfo;
    :cond_0
    return-void
.end method

.method public finishStageOnTouchOutSide()Z
    .locals 2

    .prologue
    .line 2102
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    invoke-virtual {v1}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v0

    .line 2103
    .local v0, "stage":Lcom/android/launcher3/common/stage/Stage;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/common/stage/Stage;->finishOnTouchOutSide()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2104
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    invoke-virtual {v1}, Lcom/android/launcher3/common/stage/StageManager;->onBackPressed()V

    .line 2105
    const/4 v1, 0x1

    .line 2107
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getBindOnResumeCallbacks()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1876
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mBindOnResumeCallbacks:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;
    .locals 1

    .prologue
    .line 1884
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDeviceProfile:Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    return-object v0
.end method

.method public getDragLayer()Lcom/android/launcher3/common/view/DragLayer;
    .locals 1

    .prologue
    .line 1892
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    return-object v0
.end method

.method public getDragMgr()Lcom/android/launcher3/common/drag/DragManager;
    .locals 1

    .prologue
    .line 1888
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    return-object v0
.end method

.method public getHomeController()Lcom/android/launcher3/home/HomeController;
    .locals 1

    .prologue
    .line 1896
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    return-object v0
.end method

.method public getHotWordInstance()Lcom/android/launcher3/home/HotWord;
    .locals 1

    .prologue
    .line 2662
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mHotword:Lcom/android/launcher3/home/HotWord;

    return-object v0
.end method

.method public getInflater()Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 1649
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public getLauncherModel()Lcom/android/launcher3/LauncherModel;
    .locals 1

    .prologue
    .line 2451
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/LauncherModel;

    return-object v0
.end method

.method public getMultiSelectManager()Lcom/android/launcher3/common/multiselect/MultiSelectManager;
    .locals 1

    .prologue
    .line 2575
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    return-object v0
.end method

.method public getOpenFolderView()Lcom/android/launcher3/folder/view/FolderView;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 2085
    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    invoke-virtual {v5}, Lcom/android/launcher3/common/view/DragLayer;->getChildCount()I

    move-result v1

    .line 2086
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_3

    .line 2087
    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    invoke-virtual {v5, v3}, Lcom/android/launcher3/common/view/DragLayer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2088
    .local v0, "child":Landroid/view/View;
    instance-of v5, v0, Lcom/android/launcher3/folder/view/FolderView;

    if-eqz v5, :cond_2

    move-object v2, v0

    .line 2089
    check-cast v2, Lcom/android/launcher3/folder/view/FolderView;

    .line 2090
    .local v2, "folder":Lcom/android/launcher3/folder/view/FolderView;
    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    invoke-virtual {v5}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v5

    if-nez v5, :cond_1

    move-object v2, v4

    .line 2098
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "folder":Lcom/android/launcher3/folder/view/FolderView;
    :cond_0
    :goto_1
    return-object v2

    .line 2093
    .restart local v0    # "child":Landroid/view/View;
    .restart local v2    # "folder":Lcom/android/launcher3/folder/view/FolderView;
    :cond_1
    invoke-virtual {v2}, Lcom/android/launcher3/folder/view/FolderView;->getInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v5

    iget-boolean v5, v5, Lcom/android/launcher3/folder/FolderInfo;->opened:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    invoke-virtual {v5}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/common/stage/Stage;->getMode()I

    move-result v5

    const/4 v6, 0x5

    if-eq v5, v6, :cond_0

    .line 2086
    .end local v2    # "folder":Lcom/android/launcher3/folder/view/FolderView;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v0    # "child":Landroid/view/View;
    :cond_3
    move-object v2, v4

    .line 2098
    goto :goto_1
.end method

.method public getOutlineColor()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2667
    invoke-static {}, Lcom/android/launcher3/util/WhiteBgManager;->isWhiteBg()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2668
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000c

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 2672
    .local v0, "outlineColor":I
    :goto_0
    return v0

    .line 2670
    .end local v0    # "outlineColor":I
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000b

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .restart local v0    # "outlineColor":I
    goto :goto_0
.end method

.method public getPageTransitionManager()Lcom/android/launcher3/pagetransition/PageTransitionManager;
    .locals 1

    .prologue
    .line 1872
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPageTransitionManager:Lcom/android/launcher3/pagetransition/PageTransitionManager;

    return-object v0
.end method

.method public getQuickOptionManager()Lcom/android/launcher3/common/quickoption/QuickOptionManager;
    .locals 1

    .prologue
    .line 1904
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mQuickOptionManager:Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    return-object v0
.end method

.method public getSavedState()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 1782
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mSavedState:Landroid/os/Bundle;

    return-object v0
.end method

.method public getSearchedApp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2586
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mSearchedApp:Ljava/lang/String;

    return-object v0
.end method

.method public getSecondTopStageMode()I
    .locals 2

    .prologue
    .line 1913
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 1914
    .local v0, "secondTopStage":Lcom/android/launcher3/common/stage/Stage;
    :goto_0
    if-nez v0, :cond_1

    const/4 v1, 0x0

    :goto_1
    return v1

    .line 1913
    .end local v0    # "secondTopStage":Lcom/android/launcher3/common/stage/Stage;
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    invoke-virtual {v1}, Lcom/android/launcher3/common/stage/StageManager;->getSecondTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v0

    goto :goto_0

    .line 1914
    .restart local v0    # "secondTopStage":Lcom/android/launcher3/common/stage/Stage;
    :cond_1
    invoke-virtual {v0}, Lcom/android/launcher3/common/stage/Stage;->getMode()I

    move-result v1

    goto :goto_1
.end method

.method public getSharedPrefs()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 1880
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mSharedPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public getStageManager()Lcom/android/launcher3/common/stage/StageManager;
    .locals 1

    .prologue
    .line 1900
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    return-object v0
.end method

.method public getStats()Lcom/android/launcher3/Stats;
    .locals 1

    .prologue
    .line 2492
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mStats:Lcom/android/launcher3/Stats;

    return-object v0
.end method

.method public getTopStageMode()I
    .locals 2

    .prologue
    .line 1908
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 1909
    .local v0, "topStage":Lcom/android/launcher3/common/stage/Stage;
    :goto_0
    if-nez v0, :cond_1

    const/4 v1, 0x0

    :goto_1
    return v1

    .line 1908
    .end local v0    # "topStage":Lcom/android/launcher3/common/stage/Stage;
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    invoke-virtual {v1}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v0

    goto :goto_0

    .line 1909
    .restart local v0    # "topStage":Lcom/android/launcher3/common/stage/Stage;
    :cond_1
    invoke-virtual {v0}, Lcom/android/launcher3/common/stage/Stage;->getMode()I

    move-result v1

    goto :goto_1
.end method

.method public getTrayManager()Lcom/android/launcher3/common/tray/TrayManager;
    .locals 1

    .prologue
    .line 2500
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    return-object v0
.end method

.method public getViewIdForItem(Lcom/android/launcher3/common/base/item/ItemInfo;)I
    .locals 5
    .param p1, "info"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 1654
    iget-wide v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    long-to-int v0, v2

    .line 1655
    .local v0, "itemId":I
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mItemIdToViewId:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1656
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mItemIdToViewId:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1660
    :goto_0
    return v1

    .line 1658
    :cond_0
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v1

    .line 1659
    .local v1, "viewId":I
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mItemIdToViewId:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getVisible()Z
    .locals 1

    .prologue
    .line 1922
    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->mVisible:Z

    return v0
.end method

.method public hasVoiceSearch(Landroid/content/Context;)Z
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x0

    .line 2468
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 2469
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2471
    .local v0, "className":Ljava/lang/String;
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v3, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2472
    .local v1, "componentName":Landroid/content/ComponentName;
    const-string v9, "search"

    invoke-virtual {p0, v9}, Lcom/android/launcher3/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/SearchManager;

    .line 2473
    .local v5, "searchManager":Landroid/app/SearchManager;
    invoke-virtual {v5, v1}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v6

    .line 2475
    .local v6, "searchableInfo":Landroid/app/SearchableInfo;
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Landroid/app/SearchableInfo;->getVoiceSearchEnabled()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 2476
    const/4 v2, 0x0

    .line 2477
    .local v2, "micIntent":Landroid/content/Intent;
    invoke-virtual {v6}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchRecognizer()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 2478
    new-instance v7, Landroid/content/Intent;

    const-string v9, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v7, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2479
    .local v7, "voiceAppSearchIntent":Landroid/content/Intent;
    move-object v2, v7

    .line 2480
    const-string v9, "android.speech.extra.LANGUAGE_MODEL"

    const-string v10, "free_form"

    invoke-virtual {v2, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2482
    .end local v7    # "voiceAppSearchIntent":Landroid/content/Intent;
    :cond_0
    if-eqz v2, :cond_1

    .line 2483
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const/high16 v10, 0x10000

    invoke-virtual {v9, v2, v10}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    .line 2485
    .local v4, "ri":Landroid/content/pm/ResolveInfo;
    if-eqz v4, :cond_1

    const/4 v8, 0x1

    .line 2488
    .end local v2    # "micIntent":Landroid/content/Intent;
    .end local v4    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_1
    return v8
.end method

.method public isAppsStage()Z
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 2389
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getTopStageMode()I

    move-result v0

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher3/Launcher;->mOnResumeState:I

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDraggingEnabled()Z
    .locals 1

    .prologue
    .line 1928
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mHomeBindController:Lcom/android/launcher3/home/HomeBindController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeBindController;->isWorkspaceLoading()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFolderStage()Z
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 2394
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getTopStageMode()I

    move-result v0

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher3/Launcher;->mOnResumeState:I

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGoogleSearchWidget(I)Z
    .locals 10
    .param p1, "currentPage"    # I

    .prologue
    const/4 v7, 0x0

    .line 2692
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getHomeController()Lcom/android/launcher3/home/HomeController;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher3/home/HomeController;->getWorkspace()Lcom/android/launcher3/home/Workspace;

    move-result-object v6

    .line 2693
    .local v6, "workspace":Lcom/android/launcher3/home/Workspace;
    invoke-virtual {v6, p1}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 2694
    .local v0, "cellLayout":Lcom/android/launcher3/common/base/view/CellLayout;
    if-nez v0, :cond_1

    .line 2711
    :cond_0
    :goto_0
    return v7

    .line 2697
    :cond_1
    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v1

    .line 2698
    .local v1, "cl":Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    if-eqz v1, :cond_0

    .line 2701
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v3

    .line 2702
    .local v3, "itemCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_0

    .line 2703
    invoke-virtual {v1, v2}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2704
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    .line 2705
    .local v4, "tag":Ljava/lang/Object;
    instance-of v8, v4, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    if-eqz v8, :cond_2

    .line 2706
    check-cast v4, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    .end local v4    # "tag":Ljava/lang/Object;
    iget-object v8, v4, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    sget-object v9, Lcom/android/launcher3/Launcher;->GOOGLE_SEARCH_WIDGET:Landroid/content/ComponentName;

    invoke-virtual {v8, v9}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 2707
    const/4 v7, 0x1

    goto :goto_0

    .line 2702
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public isHomeNormal()Z
    .locals 1

    .prologue
    .line 1864
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->isModalState()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHomeStage()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2384
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getTopStageMode()I

    move-result v1

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/android/launcher3/Launcher;->mOnResumeState:I

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPaused()Z
    .locals 1

    .prologue
    .line 2496
    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->mPaused:Z

    return v0
.end method

.method public isRunningAnimation()Z
    .locals 1

    .prologue
    .line 1918
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    invoke-virtual {v0}, Lcom/android/launcher3/common/stage/StageManager;->isRunningAnimation()Z

    move-result v0

    return v0
.end method

.method public isSafeModeEnabled()Z
    .locals 1

    .prologue
    .line 1778
    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->mIsSafeModeEnabled:Z

    return v0
.end method

.method public isSkipAnim()Z
    .locals 1

    .prologue
    .line 2520
    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->mSkipAnim:Z

    return v0
.end method

.method public lockScreenOrientation()V
    .locals 1

    .prologue
    .line 730
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportRotate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 731
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->setRequestedOrientation(I)V

    .line 733
    :cond_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 1616
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/launcher3/common/stage/StageManager;->onActivityResult(IILandroid/content/Intent;)V

    .line 1617
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFolderLock()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    if-eqz v0, :cond_0

    .line 1619
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/launcher3/folder/folderlock/FolderLock;->onActivityResult(IILandroid/content/Intent;)V

    .line 1621
    :cond_0
    return-void
.end method

.method public onAppWidgetHostReset()V
    .locals 2

    .prologue
    .line 1640
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    if-eqz v1, :cond_0

    .line 1641
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->getAppWidgetHost()Lcom/android/launcher3/home/LauncherAppWidgetHost;

    move-result-object v0

    .line 1642
    .local v0, "appWidgetHost":Lcom/android/launcher3/home/LauncherAppWidgetHost;
    if-eqz v0, :cond_0

    .line 1643
    invoke-virtual {v0}, Lcom/android/launcher3/home/LauncherAppWidgetHost;->startListening()V

    .line 1646
    .end local v0    # "appWidgetHost":Lcom/android/launcher3/home/LauncherAppWidgetHost;
    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 977
    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    .line 978
    const-string v2, "Launcher"

    const-string v3, "onAttachedToWindow"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportGSAPreWarming()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 981
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mPrewarmingClient:Lcom/google/android/libraries/launcherclient/LauncherClient;

    if-eqz v2, :cond_0

    .line 982
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mPrewarmingClient:Lcom/google/android/libraries/launcherclient/LauncherClient;

    invoke-virtual {v2}, Lcom/google/android/libraries/launcherclient/LauncherClient;->onAttachedToWindow()V

    .line 990
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHotword()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 991
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/launcher3/Launcher;->setHotWordDetection(Z)V

    .line 994
    :cond_1
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportWallpaperTilt()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 995
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mTiltWallpaperScroller:Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mTiltWallpaperScroller:Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;

    invoke-virtual {v2}, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mWindowToken:Landroid/os/IBinder;

    if-nez v2, :cond_3

    .line 997
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v1

    .line 998
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_2

    .line 999
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/Launcher;->mWindowToken:Landroid/os/IBinder;

    .line 1001
    :cond_2
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mWindowToken:Landroid/os/IBinder;

    if-eqz v2, :cond_7

    .line 1002
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mTiltWallpaperScroller:Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;

    iget-object v3, p0, Lcom/android/launcher3/Launcher;->mWindowToken:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;->setWindowToken(Landroid/os/IBinder;)V

    .line 1003
    const-string v2, "Launcher"

    const-string v3, "WallpaperScroller - onAttachedToWindow - set mWindowToken"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    .end local v1    # "v":Landroid/view/View;
    :cond_3
    :goto_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1012
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1013
    const-string v2, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1014
    invoke-static {}, Lcom/android/launcher3/home/ZeroPageController;->supportVirtualScreen()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1015
    const-string v2, "com.sec.android.intent.action.SET_ZERO_PAGE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1017
    :cond_4
    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1018
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/android/launcher3/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1019
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "need_dark_font"

    .line 1020
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/Launcher;->mDarkFontObserver:Landroid/database/ContentObserver;

    .line 1019
    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1021
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "need_dark_statusbar"

    .line 1022
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/Launcher;->mDarkStatusBarObserver:Landroid/database/ContentObserver;

    .line 1021
    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1023
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "need_dark_navigationbar"

    .line 1024
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/Launcher;->mDarkNavigationBarObserver:Landroid/database/ContentObserver;

    .line 1023
    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1026
    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->updateWhiteBgIfNecessary()V

    .line 1028
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportEasyModeChange()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1029
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "easy_mode_switch"

    .line 1030
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/Launcher;->mEasyModeObserver:Landroid/database/ContentObserver;

    .line 1029
    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1032
    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/util/animation/FirstFrameAnimatorHelper;->initializeDrawListener(Landroid/view/View;)V

    .line 1033
    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->setIndicatorTransparency()V

    .line 1034
    iput-boolean v5, p0, Lcom/android/launcher3/Launcher;->mAttached:Z

    .line 1035
    iput-boolean v5, p0, Lcom/android/launcher3/Launcher;->mVisible:Z

    .line 1036
    return-void

    .line 985
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_6
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHotword()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mHotword:Lcom/android/launcher3/home/HotWord;

    if-eqz v2, :cond_0

    .line 986
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mHotword:Lcom/android/launcher3/home/HotWord;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HotWord;->onAttachedToWindow()V

    goto/16 :goto_0

    .line 1005
    .restart local v1    # "v":Landroid/view/View;
    :cond_7
    const-string v2, "Launcher"

    const-string v3, "WallpaperScroller - onAttachedToWindow - mWindowToken is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 1431
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    invoke-virtual {v0}, Lcom/android/launcher3/common/drag/DragManager;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1432
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    invoke-virtual {v0}, Lcom/android/launcher3/common/drag/DragManager;->cancelDrag()V

    .line 1441
    :goto_0
    return-void

    .line 1435
    :cond_0
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportQuickOption()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    invoke-virtual {v0}, Lcom/android/launcher3/common/drag/DragManager;->isQuickOptionShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1436
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/drag/DragManager;->removeQuickOptionView(Ljava/lang/String;)V

    goto :goto_0

    .line 1440
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    invoke-virtual {v0}, Lcom/android/launcher3/common/stage/StageManager;->onBackPressed()V

    goto :goto_0
.end method

.method public onChangeSelectMode(ZZ)V
    .locals 1
    .param p1, "enter"    # Z
    .param p2, "animated"    # Z

    .prologue
    .line 2571
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->onChangeSelectMode(ZZ)V

    .line 2572
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1447
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1451
    :goto_0
    return-void

    .line 1450
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/stage/StageManager;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onClickFolderIcon(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1485
    instance-of v5, p1, Lcom/android/launcher3/folder/view/FolderIconView;

    if-nez v5, :cond_0

    .line 1486
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Input must be a FolderIcon"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    move-object v1, p1

    .line 1490
    check-cast v1, Lcom/android/launcher3/folder/view/FolderIconView;

    .line 1491
    .local v1, "folderIconView":Lcom/android/launcher3/folder/view/FolderIconView;
    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v3

    .line 1492
    .local v3, "info":Lcom/android/launcher3/folder/FolderInfo;
    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v5, v3}, Lcom/android/launcher3/home/HomeController;->getFolderForTag(Ljava/lang/Object;)Lcom/android/launcher3/folder/view/FolderView;

    move-result-object v4

    .line 1496
    .local v4, "openFolder":Lcom/android/launcher3/folder/view/FolderView;
    iget-boolean v5, v3, Lcom/android/launcher3/folder/FolderInfo;->opened:Z

    if-eqz v5, :cond_1

    if-nez v4, :cond_1

    .line 1497
    const-string v5, "Launcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Folder info marked as open, but associated folder is not open. Screen: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, v3, Lcom/android/launcher3/folder/FolderInfo;->screenId:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/android/launcher3/folder/FolderInfo;->cellX:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/android/launcher3/folder/FolderInfo;->cellY:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1499
    const/4 v5, 0x0

    iput-boolean v5, v3, Lcom/android/launcher3/folder/FolderInfo;->opened:Z

    .line 1502
    :cond_1
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFolderLock()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    invoke-virtual {v5}, Lcom/android/launcher3/folder/folderlock/FolderLock;->isFolderLockEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1503
    invoke-virtual {v3}, Lcom/android/launcher3/folder/FolderInfo;->isLocked()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v3}, Lcom/android/launcher3/folder/FolderInfo;->isLockedFolderOpenedOnce()Z

    move-result v5

    if-nez v5, :cond_3

    .line 1505
    :try_start_0
    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    invoke-virtual {v5, v1}, Lcom/android/launcher3/folder/folderlock/FolderLock;->setBackupInfo(Lcom/android/launcher3/folder/view/FolderIconView;)V

    .line 1506
    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    invoke-virtual {v5, v3}, Lcom/android/launcher3/folder/folderlock/FolderLock;->openLockedFolder(Lcom/android/launcher3/folder/FolderInfo;)V

    .line 1507
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v5

    invoke-virtual {v5, v3, p0}, Lcom/android/launcher3/util/logging/SALogging;->insertLockedItemLaunchLog(Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/Launcher;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1531
    :cond_2
    :goto_0
    return-void

    .line 1508
    :catch_0
    move-exception v0

    .line 1509
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "Launcher"

    const-string v6, " can not open that locked folder "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1511
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    iget-boolean v5, v3, Lcom/android/launcher3/folder/FolderInfo;->opened:Z

    if-nez v5, :cond_4

    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderView()Lcom/android/launcher3/folder/view/FolderView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/folder/view/FolderView;->isDestroyed()Z

    move-result v5

    if-nez v5, :cond_4

    .line 1513
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->closeFolder()V

    .line 1515
    invoke-virtual {p0, v1}, Lcom/android/launcher3/Launcher;->openFolder(Lcom/android/launcher3/folder/view/FolderIconView;)V

    goto :goto_0

    .line 1519
    :cond_4
    if-eqz v4, :cond_2

    .line 1520
    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v5}, Lcom/android/launcher3/home/HomeController;->getWorkspace()Lcom/android/launcher3/home/Workspace;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/launcher3/home/Workspace;->getPageForView(Landroid/view/View;)I

    move-result v2

    .line 1522
    .local v2, "folderScreen":I
    invoke-virtual {p0, v4}, Lcom/android/launcher3/Launcher;->closeFolder(Lcom/android/launcher3/folder/view/FolderView;)V

    .line 1523
    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v5}, Lcom/android/launcher3/home/HomeController;->getWorkspace()Lcom/android/launcher3/home/Workspace;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v5

    if-eq v2, v5, :cond_2

    .line 1525
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->closeFolder()V

    .line 1527
    invoke-virtual {p0, v1}, Lcom/android/launcher3/Launcher;->openFolder(Lcom/android/launcher3/folder/view/FolderIconView;)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 932
    const-string v1, "Launcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onConfigurationChanged. newConfig : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 936
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportRotate()Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 938
    const-string v1, "Launcher"

    const-string v2, "onConfigurationChanged. launcher do not support landscape"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    :cond_0
    :goto_0
    return-void

    .line 942
    :cond_1
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    .line 943
    .local v0, "app":Lcom/android/launcher3/LauncherAppState;
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->makeDeviceProfile()V

    .line 944
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherAppState;->initScreenGrid(Z)V

    .line 946
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/Launcher;->mDeviceProfile:Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    .line 947
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mDeviceProfile:Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->layoutGrid(Lcom/android/launcher3/Launcher;)V

    .line 948
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/common/stage/StageManager;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 949
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    if-eqz v1, :cond_2

    .line 950
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 952
    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    if-eqz v1, :cond_0

    .line 953
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    invoke-virtual {v1}, Lcom/android/launcher3/common/tray/TrayManager;->setBottomViewDragEnable()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 304
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 306
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 307
    .local v4, "res":Landroid/content/res/Resources;
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 308
    .local v1, "configuration":Landroid/content/res/Configuration;
    const-string v5, "Launcher"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onCreate configuration = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", displayMetrics = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    const-string v5, "desktopmode"

    .line 312
    invoke-virtual {p0, v5}, Lcom/android/launcher3/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 313
    .local v2, "desktopModeManager":Lcom/samsung/android/desktopmode/SemDesktopModeManager;
    if-eqz v2, :cond_d

    invoke-static {}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->isDesktopMode()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 314
    const-string v5, "Launcher"

    const-string v9, "kill Process cause of wrong info from DeX"

    invoke-static {v5, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-static {v5}, Landroid/os/Process;->killProcess(I)V

    .line 329
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/launcher3/LauncherAppState;->setApplicationContext(Landroid/content/Context;)V

    .line 330
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    .line 332
    .local v0, "app":Lcom/android/launcher3/LauncherAppState;
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportEasyModeChange()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 333
    invoke-direct {p0, v7}, Lcom/android/launcher3/Launcher;->changeEasyModeIfNecessary(Z)V

    .line 335
    :cond_0
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHomeModeChange()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/LauncherAppState;->isEasyModeEnabled()Z

    move-result v5

    if-nez v5, :cond_1

    .line 336
    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->changeHomeModeIfNecessary()V

    .line 339
    :cond_1
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->makeDeviceProfile()V

    .line 340
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v5

    invoke-virtual {v0, v5}, Lcom/android/launcher3/LauncherAppState;->initScreenGrid(Z)V

    .line 343
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHotword()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportGSAPreWarming()Z

    move-result v5

    if-nez v5, :cond_2

    .line 344
    new-instance v5, Lcom/android/launcher3/home/HotWord;

    invoke-direct {v5, p0}, Lcom/android/launcher3/home/HotWord;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/launcher3/Launcher;->mHotword:Lcom/android/launcher3/home/HotWord;

    .line 346
    :cond_2
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportGSAPreWarming()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 347
    new-instance v5, Lcom/google/android/libraries/launcherclient/LauncherClient;

    new-instance v9, Lcom/android/launcher3/Launcher$GSAPrewamingClientCallbacks;

    invoke-direct {v9, v8}, Lcom/android/launcher3/Launcher$GSAPrewamingClientCallbacks;-><init>(Lcom/android/launcher3/Launcher$1;)V

    new-instance v10, Lcom/google/android/libraries/launcherclient/LauncherClient$ClientOptions;

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHotword()Z

    move-result v11

    invoke-direct {v10, v7, v11, v6}, Lcom/google/android/libraries/launcherclient/LauncherClient$ClientOptions;-><init>(ZZZ)V

    invoke-direct {v5, p0, v9, v10}, Lcom/google/android/libraries/launcherclient/LauncherClient;-><init>(Landroid/app/Activity;Lcom/google/android/libraries/launcherclient/LauncherClientCallbacks;Lcom/google/android/libraries/launcherclient/LauncherClient$ClientOptions;)V

    iput-object v5, p0, Lcom/android/launcher3/Launcher;->mPrewarmingClient:Lcom/google/android/libraries/launcherclient/LauncherClient;

    .line 351
    :cond_3
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher3/Launcher;->mDeviceProfile:Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    .line 353
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportChangeGridForDpi()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 354
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v5

    invoke-static {p0, v5}, Lcom/android/launcher3/util/ScreenGridUtilities;->changeGridForDpi(Landroid/content/Context;Z)V

    .line 357
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v5

    if-ne v5, v6, :cond_10

    move v5, v6

    :goto_1
    sput-boolean v5, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    .line 359
    invoke-static {}, Lcom/android/launcher3/theme/OpenThemeManager;->getInstance()Lcom/android/launcher3/theme/OpenThemeManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/theme/OpenThemeManager;->initThemeForIconLoading()V

    .line 360
    invoke-static {}, Lcom/android/launcher3/theme/OpenThemeManager;->getInstance()Lcom/android/launcher3/theme/OpenThemeManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/theme/OpenThemeManager;->preloadResources()V

    .line 362
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5, v7}, Lcom/android/launcher3/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher3/Launcher;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 363
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/launcher3/Launcher;->mIsSafeModeEnabled:Z

    .line 365
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportMultiSelect()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 366
    new-instance v5, Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-direct {v5}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;-><init>()V

    iput-object v5, p0, Lcom/android/launcher3/Launcher;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    .line 369
    :cond_5
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFolderLock()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 370
    invoke-static {}, Lcom/android/launcher3/folder/folderlock/FolderLock;->getInstance()Lcom/android/launcher3/folder/folderlock/FolderLock;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher3/Launcher;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    .line 371
    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    invoke-virtual {v5, p0}, Lcom/android/launcher3/folder/folderlock/FolderLock;->setup(Lcom/android/launcher3/Launcher;)V

    .line 374
    :cond_6
    invoke-virtual {v0, p0}, Lcom/android/launcher3/LauncherAppState;->setLauncher(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherModel;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/LauncherModel;

    .line 375
    new-instance v5, Lcom/android/launcher3/common/drag/DragManager;

    invoke-direct {v5, p0}, Lcom/android/launcher3/common/drag/DragManager;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v5, p0, Lcom/android/launcher3/Launcher;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    .line 376
    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    invoke-virtual {v5, p0}, Lcom/android/launcher3/common/drag/DragManager;->addDragListener(Lcom/android/launcher3/common/drag/DragManager$DragListener;)V

    .line 378
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportTraySwipeInteraction()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v5

    if-nez v5, :cond_7

    .line 379
    new-instance v5, Lcom/android/launcher3/common/tray/TrayManager;

    invoke-direct {v5}, Lcom/android/launcher3/common/tray/TrayManager;-><init>()V

    iput-object v5, p0, Lcom/android/launcher3/Launcher;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    .line 382
    :cond_7
    invoke-static {p0}, Lcom/android/launcher3/util/WhiteBgManager;->setup(Landroid/content/Context;)V

    .line 383
    invoke-static {p0}, Lcom/android/launcher3/util/WhiteBgManager;->setupForStatusBar(Landroid/content/Context;)V

    .line 384
    invoke-static {p0}, Lcom/android/launcher3/util/WhiteBgManager;->setupForNavigationBar(Landroid/content/Context;)V

    .line 386
    invoke-static {}, Lcom/android/launcher3/util/WhiteBgManager;->isWhiteNavigationBar()Z

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/launcher3/Launcher;->changeNavigationBarColor(Z)V

    .line 387
    invoke-static {}, Lcom/android/launcher3/util/WhiteBgManager;->isWhiteStatusBar()Z

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/launcher3/Launcher;->changeStatusBarColor(Z)V

    .line 389
    new-instance v9, Lcom/android/launcher3/common/stage/StageManager;

    sget-boolean v5, Lcom/android/launcher3/Launcher;->sIsRecreateModeChange:Z

    if-eqz v5, :cond_11

    move-object v5, v8

    :goto_2
    invoke-direct {v9, p0, v5}, Lcom/android/launcher3/common/stage/StageManager;-><init>(Lcom/android/launcher3/Launcher;Landroid/os/Bundle;)V

    iput-object v9, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    .line 390
    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    invoke-virtual {v5, v6}, Lcom/android/launcher3/common/stage/StageManager;->getStage(I)Lcom/android/launcher3/common/stage/Stage;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/home/HomeController;

    iput-object v5, p0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    .line 391
    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v5}, Lcom/android/launcher3/home/HomeController;->getBindController()Lcom/android/launcher3/home/HomeBindController;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher3/Launcher;->mHomeBindController:Lcom/android/launcher3/home/HomeBindController;

    .line 394
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportQuickOption()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 395
    new-instance v5, Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    invoke-direct {v5, p0}, Lcom/android/launcher3/common/quickoption/QuickOptionManager;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v5, p0, Lcom/android/launcher3/Launcher;->mQuickOptionManager:Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    .line 398
    :cond_8
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher3/Launcher;->mInflater:Landroid/view/LayoutInflater;

    .line 400
    new-instance v5, Lcom/android/launcher3/Stats;

    invoke-direct {v5, p0}, Lcom/android/launcher3/Stats;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v5, p0, Lcom/android/launcher3/Launcher;->mStats:Lcom/android/launcher3/Stats;

    .line 405
    iput-boolean v7, p0, Lcom/android/launcher3/Launcher;->mPaused:Z

    .line 412
    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v5, p0, Lcom/android/launcher3/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    .line 414
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v5

    if-eqz v5, :cond_12

    .line 415
    const v5, 0x7f03002e

    invoke-virtual {p0, v5}, Lcom/android/launcher3/Launcher;->setContentView(I)V

    .line 420
    :goto_3
    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->setupViews()V

    .line 421
    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mDeviceProfile:Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    invoke-virtual {v5, p0}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->layoutGrid(Lcom/android/launcher3/Launcher;)V

    .line 423
    iput-object p1, p0, Lcom/android/launcher3/Launcher;->mSavedState:Landroid/os/Bundle;

    .line 424
    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mSavedState:Landroid/os/Bundle;

    if-eqz v5, :cond_13

    sget-boolean v5, Lcom/android/launcher3/Launcher;->sIsRecreateModeChange:Z

    if-nez v5, :cond_13

    .line 425
    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mSavedState:Landroid/os/Bundle;

    invoke-direct {p0, v5}, Lcom/android/launcher3/Launcher;->restoreState(Landroid/os/Bundle;)V

    .line 429
    :goto_4
    sput-boolean v7, Lcom/android/launcher3/Launcher;->sIsRecreateModeChange:Z

    .line 435
    sget v5, Lcom/android/launcher3/Launcher;->sDensityDpi:I

    if-lez v5, :cond_9

    sget v5, Lcom/android/launcher3/Launcher;->sDensityDpi:I

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->densityDpi:I

    if-eq v5, v6, :cond_9

    .line 436
    const-string v5, "Launcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sDensityDpi = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v8, Lcom/android/launcher3/Launcher;->sDensityDpi:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", densityDpi = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/common/model/IconCache;

    move-result-object v5

    if-eqz v5, :cond_9

    .line 438
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/common/model/IconCache;

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher3/Launcher;->mDeviceProfile:Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    iget v6, v6, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->defaultIconSize:I

    invoke-virtual {v5, v6}, Lcom/android/launcher3/common/model/IconCache;->clearCache(I)V

    .line 441
    :cond_9
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->densityDpi:I

    sput v5, Lcom/android/launcher3/Launcher;->sDensityDpi:I

    .line 443
    invoke-static {p0}, Lcom/android/launcher3/util/ShortcutTray;->checkIconTrayEnabled(Landroid/content/Context;)V

    .line 444
    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v5}, Lcom/android/launcher3/home/HomeController;->isRestoring()Z

    move-result v5

    if-nez v5, :cond_b

    .line 445
    iget-boolean v5, p0, Lcom/android/launcher3/Launcher;->mChangeMode:Z

    if-eqz v5, :cond_a

    .line 446
    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v5}, Lcom/android/launcher3/home/HomeController;->getWorkspace()Lcom/android/launcher3/home/Workspace;

    move-result-object v5

    const/16 v6, -0x3e9

    invoke-virtual {v5, v6}, Lcom/android/launcher3/home/Workspace;->setRestorePage(I)V

    .line 447
    iput-boolean v7, p0, Lcom/android/launcher3/Launcher;->mChangeMode:Z

    .line 451
    :cond_a
    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/LauncherModel;

    iget-object v6, p0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v6}, Lcom/android/launcher3/home/HomeController;->getWorkspace()Lcom/android/launcher3/home/Workspace;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/home/Workspace;->getRestorePage()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/launcher3/LauncherModel;->startLoader(I)V

    .line 454
    :cond_b
    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-static {v5, v7}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 456
    invoke-static {}, Lcom/android/launcher3/gamehome/GameHomeManager;->getInstance()Lcom/android/launcher3/gamehome/GameHomeManager;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/android/launcher3/gamehome/GameHomeManager;->initGameHomeManager(Lcom/android/launcher3/Launcher;)V

    .line 458
    sget-object v5, Lcom/android/launcher3/util/LightingEffectManager;->INSTANCE:Lcom/android/launcher3/util/LightingEffectManager;

    invoke-virtual {v5, p0}, Lcom/android/launcher3/util/LightingEffectManager;->setup(Landroid/app/Activity;)V

    .line 460
    new-instance v3, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v3, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 461
    .local v3, "filter":Landroid/content/IntentFilter;
    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mCloseSystemDialogsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5, v3}, Lcom/android/launcher3/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 463
    new-instance v3, Landroid/content/IntentFilter;

    .end local v3    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 464
    .restart local v3    # "filter":Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 465
    const-string v5, "android.intent.action.TIME_SET"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 466
    const-string v5, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 467
    const-string v5, "com.samsung.action.MIDNIGHT_LIVEICONUPDATE"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 468
    const-string v5, "com.samsung.action.EVERY_MINUTE_CLOCK_UPDATE"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 469
    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mDateChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5, v3}, Lcom/android/launcher3/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 470
    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->setLiveIconAlarm()V

    .line 474
    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->setOrientation()V

    .line 475
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportTransitionEffects()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 476
    new-instance v5, Lcom/android/launcher3/pagetransition/PageTransitionManager;

    invoke-direct {v5, p0}, Lcom/android/launcher3/pagetransition/PageTransitionManager;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/launcher3/Launcher;->mPageTransitionManager:Lcom/android/launcher3/pagetransition/PageTransitionManager;

    .line 479
    :cond_c
    new-instance v5, Lcom/android/launcher3/util/GlobalSettingUtils;

    invoke-direct {v5, p0}, Lcom/android/launcher3/util/GlobalSettingUtils;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v5, p0, Lcom/android/launcher3/Launcher;->mGlobalSettingUtils:Lcom/android/launcher3/util/GlobalSettingUtils;

    .line 481
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/LauncherAppState;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v5

    new-instance v6, Lcom/android/launcher3/Launcher$2;

    invoke-direct {v6, p0}, Lcom/android/launcher3/Launcher$2;-><init>(Lcom/android/launcher3/Launcher;)V

    invoke-virtual {v5, v6}, Lcom/android/launcher3/proxy/LauncherProxy;->setLauncherActivityProxyCallbacks(Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;)V

    .line 680
    return-void

    .line 316
    .end local v0    # "app":Lcom/android/launcher3/LauncherAppState;
    .end local v3    # "filter":Landroid/content/IntentFilter;
    :cond_d
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->isTablet()Z

    move-result v5

    if-nez v5, :cond_f

    const/4 v5, 0x4

    invoke-virtual {v1, v5}, Landroid/content/res/Configuration;->isLayoutSizeAtLeast(I)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 317
    sget v5, Lcom/android/launcher3/Launcher;->sRecreateCountOnCreate:I

    add-int/lit8 v5, v5, 0x1

    sput v5, Lcom/android/launcher3/Launcher;->sRecreateCountOnCreate:I

    .line 318
    const-string v5, "Launcher"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Wrong configuration -> recreateLauncher (count = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/android/launcher3/Launcher;->sRecreateCountOnCreate:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    sget v5, Lcom/android/launcher3/Launcher;->sRecreateCountOnCreate:I

    const/4 v9, 0x5

    if-gt v5, v9, :cond_e

    .line 320
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->recreateLauncher()V

    goto/16 :goto_0

    .line 322
    :cond_e
    const-string v5, "Launcher"

    const-string v9, "We can\'t recreate activity any more"

    invoke-static {v5, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    sput v7, Lcom/android/launcher3/Launcher;->sRecreateCountOnCreate:I

    goto/16 :goto_0

    .line 326
    :cond_f
    sput v7, Lcom/android/launcher3/Launcher;->sRecreateCountOnCreate:I

    goto/16 :goto_0

    .restart local v0    # "app":Lcom/android/launcher3/LauncherAppState;
    :cond_10
    move v5, v7

    .line 357
    goto/16 :goto_1

    :cond_11
    move-object v5, p1

    .line 389
    goto/16 :goto_2

    .line 417
    :cond_12
    const v5, 0x7f03002c

    invoke-virtual {p0, v5}, Lcom/android/launcher3/Launcher;->setContentView(I)V

    goto/16 :goto_3

    .line 427
    :cond_13
    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    invoke-virtual {v5, v6, v8}, Lcom/android/launcher3/common/stage/StageManager;->startStage(ILcom/android/launcher3/common/stage/StageEntry;)V

    goto/16 :goto_4
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1583
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1265
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportGSAPreWarming()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1266
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mPrewarmingClient:Lcom/google/android/libraries/launcherclient/LauncherClient;

    if-eqz v1, :cond_0

    .line 1267
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mPrewarmingClient:Lcom/google/android/libraries/launcherclient/LauncherClient;

    invoke-virtual {v1}, Lcom/google/android/libraries/launcherclient/LauncherClient;->onDestroy()V

    .line 1270
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1271
    const-string v1, "Launcher"

    const-string v2, "onDestroy: "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1272
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    if-eqz v1, :cond_1

    .line 1273
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v1}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->clearCheckedApps()V

    .line 1274
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v1}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->clearUninstallApplist()V

    .line 1277
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mQuickOptionManager:Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    if-eqz v1, :cond_2

    .line 1278
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mQuickOptionManager:Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    invoke-virtual {v1}, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->onDestroy()V

    .line 1279
    iput-object v3, p0, Lcom/android/launcher3/Launcher;->mQuickOptionManager:Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    .line 1283
    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->getBindController()Lcom/android/launcher3/home/HomeBindController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeBindController;->removeAdvanceMessage()V

    .line 1284
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->getWorkspace()Lcom/android/launcher3/home/Workspace;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mBuildLayersRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/home/Workspace;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1287
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    .line 1291
    .local v0, "app":Lcom/android/launcher3/LauncherAppState;
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/LauncherModel;->isCurrentCallbacks(Lcom/android/launcher3/LauncherModel$Callbacks;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1292
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherModel;->stopLoader()V

    .line 1293
    invoke-virtual {v0, v3}, Lcom/android/launcher3/LauncherAppState;->setLauncher(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherModel;

    .line 1295
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherModel;->getHomeLoader()Lcom/android/launcher3/home/HomeLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeLoader;->unRegisterCallbacks()V

    .line 1296
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherModel;->getAppsLoader()Lcom/android/launcher3/allapps/model/AppsLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/model/AppsLoader;->unRegisterCallbacks()V

    .line 1299
    :cond_3
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/launcher3/home/HomeController;->exitResizeState(Z)V

    .line 1300
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    invoke-virtual {v1}, Lcom/android/launcher3/common/stage/StageManager;->onDestroy()V

    .line 1301
    iput-object v3, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    .line 1303
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    if-eqz v1, :cond_4

    .line 1304
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    invoke-virtual {v1}, Lcom/android/launcher3/common/tray/TrayManager;->onDestroy()V

    .line 1305
    iput-object v3, p0, Lcom/android/launcher3/Launcher;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    .line 1308
    :cond_4
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/method/TextKeyListener;->release()V

    .line 1309
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mCloseSystemDialogsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1311
    iput-object v3, p0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    .line 1312
    iput-object v3, p0, Lcom/android/launcher3/Launcher;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    .line 1314
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mDateChangedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_5

    .line 1315
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mDateChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1316
    iput-object v3, p0, Lcom/android/launcher3/Launcher;->mDateChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 1318
    :cond_5
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFolderLock()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    if-eqz v1, :cond_6

    .line 1319
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/folderlock/FolderLock;->onDestroy()V

    .line 1321
    :cond_6
    invoke-static {}, Lcom/android/launcher3/util/BlurUtils;->resetBlur()V

    .line 1322
    iput-object v3, p0, Lcom/android/launcher3/Launcher;->mPageTransitionManager:Lcom/android/launcher3/pagetransition/PageTransitionManager;

    .line 1323
    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->onDestroyActivity()V

    .line 1324
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1040
    invoke-super {p0}, Landroid/app/Activity;->onDetachedFromWindow()V

    .line 1041
    iput-boolean v3, p0, Lcom/android/launcher3/Launcher;->mVisible:Z

    .line 1043
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDetachedFromWindow mAttached="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/launcher3/Launcher;->mAttached:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportGSAPreWarming()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1046
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPrewarmingClient:Lcom/google/android/libraries/launcherclient/LauncherClient;

    if-eqz v0, :cond_0

    .line 1047
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPrewarmingClient:Lcom/google/android/libraries/launcherclient/LauncherClient;

    invoke-virtual {v0}, Lcom/google/android/libraries/launcherclient/LauncherClient;->onDetachedFromWindow()V

    .line 1050
    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->mAttached:Z

    if-eqz v0, :cond_3

    .line 1051
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHotword()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportGSAPreWarming()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mHotword:Lcom/android/launcher3/home/HotWord;

    if-eqz v0, :cond_1

    .line 1052
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mHotword:Lcom/android/launcher3/home/HotWord;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HotWord;->onDetachedFromWindow()V

    .line 1054
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1055
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mDarkFontObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1056
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mDarkStatusBarObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1057
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mDarkNavigationBarObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1058
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportEasyModeChange()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1059
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mEasyModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1061
    :cond_2
    iput-boolean v3, p0, Lcom/android/launcher3/Launcher;->mAttached:Z

    .line 1063
    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mHomeBindController:Lcom/android/launcher3/home/HomeBindController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeBindController;->updateAutoAdvanceState()V

    .line 1064
    return-void
.end method

.method public onDragEnd()Z
    .locals 1

    .prologue
    .line 1334
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->unlockScreenOrientation(Z)V

    .line 1335
    const/4 v0, 0x1

    return v0
.end method

.method public onDragStart(Lcom/android/launcher3/common/drag/DragSource;Ljava/lang/Object;I)Z
    .locals 1
    .param p1, "source"    # Lcom/android/launcher3/common/drag/DragSource;
    .param p2, "info"    # Ljava/lang/Object;
    .param p3, "dragAction"    # I

    .prologue
    .line 1328
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->lockScreenOrientation()V

    .line 1329
    const/4 v0, 0x1

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 10
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v9, 0x2

    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 1346
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v3

    .line 1347
    .local v3, "uniChar":I
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 1348
    .local v1, "handled":Z
    if-lez v3, :cond_1

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v5

    if-nez v5, :cond_1

    move v2, v4

    .line 1349
    .local v2, "isKeyNotWhitespace":Z
    :goto_0
    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->acceptFilter()Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz v2, :cond_2

    .line 1351
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v6}, Lcom/android/launcher3/home/HomeController;->getContainerView()Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Lcom/android/launcher3/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5, v6, v7, p1, p2}, Landroid/text/method/TextKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 1353
    .local v0, "gotKey":Z
    if-eqz v0, :cond_2

    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 1360
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->onSearchRequested()Z

    move-result v1

    .line 1390
    .end local v0    # "gotKey":Z
    .end local v1    # "handled":Z
    :cond_0
    :goto_1
    return v1

    .line 1348
    .end local v2    # "isKeyNotWhitespace":Z
    .restart local v1    # "handled":Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 1365
    .restart local v2    # "isKeyNotWhitespace":Z
    :cond_2
    const/16 v5, 0x52

    if-ne p1, v5, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v5

    if-eqz v5, :cond_3

    move v1, v4

    .line 1366
    goto :goto_1

    .line 1369
    :cond_3
    const/16 v5, 0x3ea

    if-ne p1, v5, :cond_0

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1370
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isHomeStage()Z

    move-result v5

    if-nez v5, :cond_4

    .line 1371
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isFolderStage()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1372
    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    const/4 v6, 0x5

    invoke-virtual {v5, v6, v8}, Lcom/android/launcher3/common/stage/StageManager;->finishStage(ILcom/android/launcher3/common/stage/StageEntry;)V

    .line 1373
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getSecondTopStageMode()I

    move-result v5

    if-eq v5, v9, :cond_4

    .line 1374
    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    invoke-virtual {v5, v9, v8}, Lcom/android/launcher3/common/stage/StageManager;->startStage(ILcom/android/launcher3/common/stage/StageEntry;)V

    .line 1380
    :cond_4
    :goto_2
    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v5}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->isMultiSelectMode()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1381
    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    invoke-virtual {v5}, Lcom/android/launcher3/common/stage/StageManager;->onBackPressed()V

    .line 1383
    :cond_5
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportQuickOption()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1384
    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    invoke-virtual {v5}, Lcom/android/launcher3/common/drag/DragManager;->removeQuickOptionView()V

    .line 1386
    :cond_6
    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    invoke-virtual {v5, v9, v8}, Lcom/android/launcher3/common/stage/StageManager;->startStage(ILcom/android/launcher3/common/stage/StageEntry;)V

    move v1, v4

    .line 1387
    goto :goto_1

    .line 1376
    :cond_7
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isAppsStage()Z

    move-result v5

    if-nez v5, :cond_4

    .line 1377
    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    invoke-virtual {v5, v8}, Lcom/android/launcher3/common/stage/StageManager;->finishAllStage(Lcom/android/launcher3/common/stage/StageEntry;)V

    goto :goto_2
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 23
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1068
    const-wide/16 v14, 0x0

    .line 1072
    .local v14, "startTime":J
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 1073
    const-string v20, "Launcher"

    const-string v21, "onNewIntent"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher3/Launcher;->mHasFocus:Z

    move/from16 v20, v0

    if-eqz v20, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getFlags()I

    move-result v20

    const/high16 v21, 0x400000

    and-int v20, v20, v21

    const/high16 v21, 0x400000

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_1

    const/4 v5, 0x1

    .line 1079
    .local v5, "alreadyOnHome":Z
    :goto_0
    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/launcher3/Launcher;->mSkipAnim:Z

    .line 1080
    if-eqz v5, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher3/home/HomeController;->isModalState()Z

    move-result v20

    if-eqz v20, :cond_2

    const/4 v12, 0x1

    .line 1081
    .local v12, "isModalState":Z
    :goto_1
    const-string v20, "android.intent.action.MAIN"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    .line 1082
    .local v11, "isActionMain":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher3/common/stage/Stage;->getMode()I

    move-result v16

    .line 1083
    .local v16, "topStage":I
    if-eqz v11, :cond_12

    .line 1084
    const-string v20, "extra_enter_screen_grid"

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 1085
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 1086
    new-instance v13, Landroid/os/Handler;

    invoke-direct {v13}, Landroid/os/Handler;-><init>()V

    .line 1087
    .local v13, "mHandler":Landroid/os/Handler;
    new-instance v20, Lcom/android/launcher3/Launcher$5;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/launcher3/Launcher$5;-><init>(Lcom/android/launcher3/Launcher;)V

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1237
    .end local v13    # "mHandler":Landroid/os/Handler;
    :cond_0
    :goto_2
    return-void

    .line 1076
    .end local v5    # "alreadyOnHome":Z
    .end local v11    # "isActionMain":Z
    .end local v12    # "isModalState":Z
    .end local v16    # "topStage":I
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 1080
    .restart local v5    # "alreadyOnHome":Z
    :cond_2
    const/4 v12, 0x0

    goto :goto_1

    .line 1098
    .restart local v11    # "isActionMain":Z
    .restart local v12    # "isModalState":Z
    .restart local v16    # "topStage":I
    :cond_3
    const-string v20, "ZeroPageSetting"

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 1099
    const v20, 0x7f04000a

    const v21, 0x7f04000b

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/Launcher;->overridePendingTransition(II)V

    .line 1100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher3/home/HomeController;->getZeroPageController()Lcom/android/launcher3/home/ZeroPageController;

    move-result-object v19

    .line 1101
    .local v19, "zeroPageController":Lcom/android/launcher3/home/ZeroPageController;
    if-eqz v19, :cond_0

    .line 1102
    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher3/home/ZeroPageController;->enterZeroPageSetting()V

    goto :goto_2

    .line 1105
    .end local v19    # "zeroPageController":Lcom/android/launcher3/home/ZeroPageController;
    :cond_4
    const-string v20, "StartEdit"

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 1106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mGlobalSettingUtils:Lcom/android/launcher3/util/GlobalSettingUtils;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/GlobalSettingUtils;->startHomeSettingBySettingMenu(Landroid/content/Intent;)V

    goto :goto_2

    .line 1108
    :cond_5
    const-string v20, "extra_enter_widgets"

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 1109
    const/16 v20, 0x3

    const/16 v21, 0x1

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/Launcher;->showAppsOrWidgets(IZZ)Z

    goto :goto_2

    .line 1111
    :cond_6
    const-string v20, "extra_enter_apps_screen_grid"

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v20

    if-eqz v20, :cond_7

    .line 1112
    const/16 v20, 0x2

    const/16 v21, 0x1

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/Launcher;->showAppsOrWidgets(IZZ)Z

    goto/16 :goto_2

    .line 1116
    :cond_7
    const-string v20, "extra_enter_hide_apps"

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v20

    if-eqz v20, :cond_8

    .line 1117
    new-instance v6, Lcom/android/launcher3/common/stage/StageEntry;

    invoke-direct {v6}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    .line 1118
    .local v6, "data":Lcom/android/launcher3/common/stage/StageEntry;
    const/16 v20, 0x0

    move/from16 v0, v20

    iput-boolean v0, v6, Lcom/android/launcher3/common/stage/StageEntry;->enableAnimation:Z

    .line 1119
    const-string v20, "KEY_PICKER_MODE"

    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Lcom/android/launcher3/common/stage/StageEntry;->putExtras(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    move-object/from16 v20, v0

    const/16 v21, 0x6

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v1, v6}, Lcom/android/launcher3/common/stage/StageManager;->startStage(ILcom/android/launcher3/common/stage/StageEntry;)V

    goto/16 :goto_2

    .line 1124
    .end local v6    # "data":Lcom/android/launcher3/common/stage/StageEntry;
    :cond_8
    const-string v20, "AppSearch"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher3/Launcher;->mSearchedApp:Ljava/lang/String;

    .line 1125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mSearchedApp:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_9

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v20

    if-nez v20, :cond_9

    .line 1126
    new-instance v7, Lcom/android/launcher3/common/stage/StageEntry;

    invoke-direct {v7}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    .line 1127
    .local v7, "entry":Lcom/android/launcher3/common/stage/StageEntry;
    const/16 v20, 0x0

    move/from16 v0, v20

    iput-boolean v0, v7, Lcom/android/launcher3/common/stage/StageEntry;->enableAnimation:Z

    .line 1128
    const/16 v20, 0x1

    move/from16 v0, v20

    iput v0, v7, Lcom/android/launcher3/common/stage/StageEntry;->fromStage:I

    .line 1129
    const/16 v20, 0x2

    move/from16 v0, v20

    iput v0, v7, Lcom/android/launcher3/common/stage/StageEntry;->toStage:I

    .line 1130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    move-object/from16 v20, v0

    const/16 v21, 0x2

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v1, v7}, Lcom/android/launcher3/common/stage/StageManager;->startStage(ILcom/android/launcher3/common/stage/StageEntry;)V

    goto/16 :goto_2

    .line 1135
    .end local v7    # "entry":Lcom/android/launcher3/common/stage/StageEntry;
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/Launcher;->closeSystemDialogs()V

    .line 1137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher3/home/HomeController;->getContainerView()Landroid/view/View;

    move-result-object v20

    if-eqz v20, :cond_0

    .line 1143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    const-string v22, "3"

    invoke-virtual/range {v20 .. v22}, Lcom/android/launcher3/home/HomeController;->exitResizeState(ZLjava/lang/String;)V

    .line 1148
    const-string v20, "android.intent.extra.FROM_HOME_KEY"

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    .line 1149
    .local v9, "fromHomeKey":Z
    const-string v20, "sec.android.intent.extra.LAUNCHER_ACTION"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    if-nez v20, :cond_15

    .line 1150
    if-nez v5, :cond_a

    if-eqz v9, :cond_14

    .line 1151
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher3/home/HomeController;->isScreenGridState()Z

    move-result v20

    if-eqz v20, :cond_b

    .line 1152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher3/home/HomeController;->cancelGridChange()V

    .line 1153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher3/home/HomeController;->finishAllStage()V

    .line 1155
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    move-object/from16 v20, v0

    if-eqz v20, :cond_d

    .line 1156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->isMultiSelectMode()Z

    move-result v20

    if-eqz v20, :cond_c

    .line 1157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->showMultiSelectPanel(ZZ)V

    .line 1158
    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/Launcher;->onChangeSelectMode(ZZ)V

    .line 1160
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->clearUninstallApplist()V

    .line 1162
    :cond_d
    if-eqz v5, :cond_e

    const/16 v20, 0x1

    move/from16 v0, v16

    move/from16 v1, v20

    if-eq v0, v1, :cond_f

    if-eqz v12, :cond_f

    .line 1163
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/android/launcher3/home/HomeController;->enableCustomLayoutAnimation(Z)V

    .line 1165
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher3/home/HomeController;->getZeroPageController()Lcom/android/launcher3/home/ZeroPageController;

    move-result-object v20

    if-eqz v20, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v20, v0

    .line 1166
    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher3/home/HomeController;->getZeroPageController()Lcom/android/launcher3/home/ZeroPageController;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher3/home/ZeroPageController;->isCurrentZeroPage()Z

    move-result v20

    if-eqz v20, :cond_13

    .line 1167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher3/home/HomeController;->getZeroPageController()Lcom/android/launcher3/home/ZeroPageController;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher3/home/ZeroPageController;->startZeroPage()V

    .line 1168
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher3/Launcher;->mZeropageStartedByHomeKey:Z

    .line 1200
    :cond_10
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v17

    .line 1201
    .local v17, "v":Landroid/view/View;
    if-eqz v17, :cond_11

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v20

    if-eqz v20, :cond_11

    .line 1202
    const-string v20, "input_method"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/inputmethod/InputMethodManager;

    .line 1203
    .local v10, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v10, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1206
    .end local v10    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_11
    invoke-static/range {p0 .. p0}, Lcom/android/launcher3/Utilities;->closeDialog(Landroid/app/Activity;)V

    .line 1208
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportChinaDA()Z

    move-result v20

    if-eqz v20, :cond_12

    .line 1209
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v8

    .line 1210
    .local v8, "fm":Landroid/app/FragmentManager;
    invoke-static {v8}, Lcom/android/launcher3/home/AddItemOnNewPageDialog;->isActive(Landroid/app/FragmentManager;)Z

    move-result v20

    if-eqz v20, :cond_12

    .line 1211
    invoke-static {v8}, Lcom/android/launcher3/home/AddItemOnNewPageDialog;->dismiss(Landroid/app/FragmentManager;)V

    .line 1219
    .end local v8    # "fm":Landroid/app/FragmentManager;
    .end local v9    # "fromHomeKey":Z
    .end local v17    # "v":Landroid/view/View;
    :cond_12
    if-eqz v11, :cond_0

    .line 1220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher3/home/HomeController;->getWorkspace()Lcom/android/launcher3/home/Workspace;

    move-result-object v18

    .line 1221
    .local v18, "workspace":Lcom/android/launcher3/home/Workspace;
    if-eqz v5, :cond_0

    if-nez v12, :cond_0

    const/16 v20, 0x1

    move/from16 v0, v16

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    .line 1222
    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher3/home/Workspace;->isTouchActive()Z

    move-result v20

    if-nez v20, :cond_0

    .line 1223
    new-instance v20, Lcom/android/launcher3/Launcher$6;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/Launcher$6;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/home/Workspace;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/Workspace;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_2

    .line 1170
    .end local v18    # "workspace":Lcom/android/launcher3/home/Workspace;
    .restart local v9    # "fromHomeKey":Z
    :cond_13
    invoke-static {}, Lcom/android/launcher3/util/GlobalSettingUtils;->resetSettingsValue()V

    .line 1171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lcom/android/launcher3/home/HomeController;->enterNormalState(Z)V

    .line 1172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Lcom/android/launcher3/home/HomeController;->enableCustomLayoutAnimation(Z)V

    goto/16 :goto_3

    .line 1175
    :cond_14
    new-instance v6, Lcom/android/launcher3/common/stage/StageEntry;

    invoke-direct {v6}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    .line 1176
    .restart local v6    # "data":Lcom/android/launcher3/common/stage/StageEntry;
    const/16 v20, 0x1

    move/from16 v0, v20

    iput-boolean v0, v6, Lcom/android/launcher3/common/stage/StageEntry;->broughtToHome:Z

    goto/16 :goto_3

    .line 1179
    .end local v6    # "data":Lcom/android/launcher3/common/stage/StageEntry;
    :cond_15
    const-string v20, "sec.android.intent.extra.LAUNCHER_ACTION"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1180
    .local v4, "action":Ljava/lang/String;
    const-string v20, "com.android.launcher2.ALL_APPS"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_10

    .line 1181
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v20

    if-nez v20, :cond_10

    .line 1182
    new-instance v6, Lcom/android/launcher3/common/stage/StageEntry;

    invoke-direct {v6}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    .line 1183
    .restart local v6    # "data":Lcom/android/launcher3/common/stage/StageEntry;
    const/16 v20, 0x0

    move/from16 v0, v20

    iput-boolean v0, v6, Lcom/android/launcher3/common/stage/StageEntry;->enableAnimation:Z

    .line 1184
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Launcher;->isHomeStage()Z

    move-result v20

    if-nez v20, :cond_16

    .line 1185
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Launcher;->isFolderStage()Z

    move-result v20

    if-eqz v20, :cond_18

    .line 1186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    move-object/from16 v20, v0

    const/16 v21, 0x5

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v1, v6}, Lcom/android/launcher3/common/stage/StageManager;->finishStage(ILcom/android/launcher3/common/stage/StageEntry;)V

    .line 1191
    :cond_16
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    move-object/from16 v20, v0

    if-eqz v20, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->isMultiSelectMode()Z

    move-result v20

    if-eqz v20, :cond_17

    .line 1192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher3/common/stage/StageManager;->onBackPressed()V

    .line 1194
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    move-object/from16 v20, v0

    const/16 v21, 0x2

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v1, v6}, Lcom/android/launcher3/common/stage/StageManager;->startStage(ILcom/android/launcher3/common/stage/StageEntry;)V

    goto/16 :goto_3

    .line 1187
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Launcher;->isAppsStage()Z

    move-result v20

    if-nez v20, :cond_16

    .line 1188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/android/launcher3/common/stage/StageManager;->finishAllStage(Lcom/android/launcher3/common/stage/StageEntry;)V

    goto :goto_4
.end method

.method protected onPause()V
    .locals 4

    .prologue
    .line 895
    const-string v1, "Launcher"

    const-string v2, "Launcher.onPause()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    invoke-virtual {v1}, Lcom/android/launcher3/common/stage/StageManager;->onPause()V

    .line 898
    invoke-static {}, Lcom/android/launcher3/home/ExternalRequestQueue;->enableExternalRequestQueue()V

    .line 899
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportGSAPreWarming()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 900
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mPrewarmingClient:Lcom/google/android/libraries/launcherclient/LauncherClient;

    if-eqz v1, :cond_0

    .line 901
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mPrewarmingClient:Lcom/google/android/libraries/launcherclient/LauncherClient;

    invoke-virtual {v1}, Lcom/google/android/libraries/launcherclient/LauncherClient;->onPause()V

    .line 904
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 905
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher3/Launcher;->mPaused:Z

    .line 906
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    invoke-virtual {v1}, Lcom/android/launcher3/common/drag/DragManager;->cancelDrag()V

    .line 907
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    invoke-virtual {v1}, Lcom/android/launcher3/common/drag/DragManager;->resetLastGestureUpTime()V

    .line 908
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportQuickOption()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 909
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    invoke-virtual {v1}, Lcom/android/launcher3/common/drag/DragManager;->removeQuickOptionView()V

    .line 912
    :cond_1
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportWallpaperTilt()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 913
    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->shutdownWallpaperScroller()V

    .line 916
    :cond_2
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    .line 917
    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->hasStartedSFinder()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 918
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 919
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/android/launcher3/Launcher$4;

    invoke-direct {v1, p0}, Lcom/android/launcher3/Launcher$4;-><init>(Lcom/android/launcher3/Launcher;)V

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 928
    .end local v0    # "handler":Landroid/os/Handler;
    :cond_3
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1588
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/stage/StageManager;->onPrepareOptionMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onRestart()V
    .locals 1

    .prologue
    .line 749
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 750
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    if-eqz v0, :cond_0

    .line 751
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    invoke-virtual {v0}, Lcom/android/launcher3/common/tray/TrayManager;->resetMoving()V

    .line 753
    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 1241
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1242
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    if-eqz v0, :cond_0

    .line 1243
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/stage/StageManager;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1245
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 20

    .prologue
    .line 758
    invoke-static {}, Lcom/android/launcher3/Utilities;->launcherResumeTesterStart()V

    .line 760
    const-wide/16 v12, 0x0

    .line 764
    .local v12, "startTime":J
    const-string v3, "Launcher"

    const-string v4, "Launcher.onResume()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    invoke-super/range {p0 .. p0}, Landroid/app/Activity;->onResume()V

    .line 768
    invoke-static {}, Lcom/android/launcher3/home/ZeroPageController;->isMoving()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 769
    const-string v3, "Launcher"

    const-string v4, "move to home stage"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    if-eqz v3, :cond_0

    .line 771
    new-instance v9, Lcom/android/launcher3/common/stage/StageEntry;

    invoke-direct {v9}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    .line 772
    .local v9, "data":Lcom/android/launcher3/common/stage/StageEntry;
    const/4 v3, 0x0

    iput-boolean v3, v9, Lcom/android/launcher3/common/stage/StageEntry;->enableAnimation:Z

    .line 773
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v9}, Lcom/android/launcher3/common/stage/StageManager;->startStage(ILcom/android/launcher3/common/stage/StageEntry;)V

    .line 775
    .end local v9    # "data":Lcom/android/launcher3/common/stage/StageEntry;
    :cond_0
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/launcher3/Launcher;->mOnResumeState:I

    .line 778
    :cond_1
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportZeroPageHome()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/launcher3/Launcher;->mZeropageStartedByHomeKey:Z

    if-nez v3, :cond_2

    .line 779
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "start_from_zeropage"

    invoke-static {v3, v4}, Lcom/android/launcher3/Utilities;->getZeroPageKey(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 780
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "start_from_zeropage"

    invoke-static {v3, v4, v5}, Lcom/android/launcher3/Utilities;->setZeroPageKey(Landroid/content/Context;ZLjava/lang/String;)V

    .line 782
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/launcher3/home/ZeroPageProvider;->notifyChange(Landroid/content/Context;)V

    .line 785
    :cond_2
    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/util/logging/GSIMLogging;->getZeroPageStayTime()J

    move-result-wide v6

    .line 786
    .local v6, "stayTime":J
    const-wide/16 v4, -0x1

    cmp-long v3, v6, v4

    if-eqz v3, :cond_3

    .line 787
    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v3

    const-string v4, "ZPST"

    .line 788
    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Lcom/android/launcher3/util/logging/GSIMLogging;->classifyZeroPageStayTime(J)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    .line 787
    invoke-virtual/range {v3 .. v8}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 792
    :cond_3
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/launcher3/Launcher;->mZeropageStartedByHomeKey:Z

    .line 794
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportEasyModeChange()Z

    move-result v3

    if-eqz v3, :cond_4

    sget-boolean v3, Lcom/android/launcher3/Launcher;->sNeedCheckEasyMode:Z

    if-eqz v3, :cond_4

    .line 795
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/launcher3/Launcher;->changeEasyModeIfNecessary(Z)V

    .line 799
    :cond_4
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportTransitionEffects()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 800
    invoke-static {}, Lcom/android/launcher3/theme/OpenThemeManager;->getInstance()Lcom/android/launcher3/theme/OpenThemeManager;

    move-result-object v11

    .line 801
    .local v11, "themeManager":Lcom/android/launcher3/theme/OpenThemeManager;
    sget-object v3, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->TRANSITON_EFFECT:Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;

    invoke-virtual {v3}, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->value()I

    move-result v3

    invoke-virtual {v11, v3}, Lcom/android/launcher3/theme/OpenThemeManager;->getInteger(I)I

    move-result v16

    .line 802
    .local v16, "transitionId":I
    const/4 v3, -0x1

    move/from16 v0, v16

    if-ne v0, v3, :cond_5

    const/16 v16, 0x0

    .end local v16    # "transitionId":I
    :cond_5
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/launcher3/Launcher;->setWhichTransitionEffect(I)V

    .line 805
    .end local v11    # "themeManager":Lcom/android/launcher3/theme/OpenThemeManager;
    :cond_6
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportGSAPreWarming()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 806
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Launcher;->mPrewarmingClient:Lcom/google/android/libraries/launcherclient/LauncherClient;

    if-eqz v3, :cond_7

    .line 807
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Launcher;->mPrewarmingClient:Lcom/google/android/libraries/launcherclient/LauncherClient;

    invoke-virtual {v3}, Lcom/google/android/libraries/launcherclient/LauncherClient;->onResume()V

    .line 812
    :cond_7
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher3/Launcher;->mOnResumeState:I

    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    if-eqz v3, :cond_8

    .line 813
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher3/Launcher;->mOnResumeState:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher3/common/stage/StageManager;->startStage(ILcom/android/launcher3/common/stage/StageEntry;)V

    .line 814
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/launcher3/Launcher;->mOnResumeState:I

    .line 817
    :cond_8
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/launcher3/Launcher;->mPaused:Z

    .line 818
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v3}, Lcom/android/launcher3/home/HomeController;->isRestoring()Z

    move-result v3

    if-nez v3, :cond_9

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/launcher3/Launcher;->mOnResumeNeedsLoad:Z

    if-eqz v3, :cond_a

    .line 819
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Launcher;->mHomeBindController:Lcom/android/launcher3/home/HomeBindController;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/launcher3/home/HomeBindController;->setWorkspaceLoading(Z)V

    .line 824
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Launcher;->mBindOnResumeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 826
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/LauncherModel;

    const/16 v4, -0x3e9

    invoke-virtual {v3, v4}, Lcom/android/launcher3/LauncherModel;->startLoader(I)V

    .line 827
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/launcher3/home/HomeController;->setRestoring(Z)V

    .line 828
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/launcher3/Launcher;->mOnResumeNeedsLoad:Z

    .line 831
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Launcher;->mBindOnResumeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_c

    .line 834
    const-string v3, "Launcher"

    const-string v4, "mBindOnResumeCallbacks run"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    const-wide/16 v14, 0x0

    .line 836
    .local v14, "startTimeCallbacks":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 837
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Launcher;->mBindOnResumeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 838
    .local v2, "callBackSize":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Launcher;->mBindOnResumeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v10, v3, :cond_b

    .line 839
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Launcher;->mBindOnResumeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 838
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 841
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Launcher;->mBindOnResumeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 842
    const-string v3, "Launcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Time spent processing callbacks in onResume: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 843
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    sub-long v18, v18, v14

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", CallCount  : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 842
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    .end local v2    # "callBackSize":I
    .end local v10    # "i":I
    .end local v14    # "startTimeCallbacks":J
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Launcher;->mOnResumeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_e

    .line 847
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Launcher;->mOnResumeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v10, v3, :cond_d

    .line 848
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Launcher;->mOnResumeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 847
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 850
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Launcher;->mOnResumeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 853
    .end local v10    # "i":I
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Launcher;->mAppsButtonOnResumeCallback:Ljava/lang/Runnable;

    if-eqz v3, :cond_f

    .line 854
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Launcher;->mAppsButtonOnResumeCallback:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 855
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/launcher3/Launcher;->mAppsButtonOnResumeCallback:Ljava/lang/Runnable;

    .line 862
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Launcher;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    if-eqz v3, :cond_11

    .line 863
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Launcher;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v3}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->isMultiSelectMode()Z

    move-result v3

    if-nez v3, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Launcher;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    .line 864
    invoke-virtual {v3}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->isShowingHelpDialog()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 865
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Launcher;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->hideHelpDialog(Z)V

    .line 867
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Launcher;->isSkipAnim()Z

    move-result v3

    if-nez v3, :cond_11

    .line 868
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Launcher;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v3}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->postUninstallActivity()V

    .line 872
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Launcher;->mHomeBindController:Lcom/android/launcher3/home/HomeBindController;

    invoke-virtual {v3}, Lcom/android/launcher3/home/HomeBindController;->isWorkspaceLoading()Z

    move-result v3

    if-nez v3, :cond_12

    .line 874
    invoke-static/range {p0 .. p0}, Lcom/android/launcher3/home/ExternalRequestQueue;->disableAndFlushExternalRequestQueue(Lcom/android/launcher3/Launcher;)V

    .line 877
    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    if-eqz v3, :cond_13

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    invoke-virtual {v3}, Lcom/android/launcher3/common/stage/StageManager;->onResume()V

    .line 878
    :cond_13
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/launcher3/Launcher;->mSkipAnim:Z

    .line 880
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/launcher3/LauncherAppState;->setSettingsActivity(Lcom/android/launcher3/SettingsActivity;)V

    .line 883
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportWallpaperTilt()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 884
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/Launcher;->setupWallpaperScroller()V

    .line 886
    :cond_14
    invoke-static/range {p0 .. p0}, Lcom/android/launcher3/Utilities;->broadcastStkIntent(Landroid/content/Context;)V

    .line 888
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Launcher;->mGlobalSettingUtils:Lcom/android/launcher3/util/GlobalSettingUtils;

    invoke-virtual {v3}, Lcom/android/launcher3/util/GlobalSettingUtils;->checkEnterNormalState()V

    .line 890
    invoke-static {}, Lcom/android/launcher3/Utilities;->launcherResumeTesterEnd()V

    .line 891
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 960
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/LauncherModel;->isCurrentCallbacks(Lcom/android/launcher3/LauncherModel$Callbacks;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 961
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->stopLoader()V

    .line 965
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 1249
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1251
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    if-eqz v0, :cond_0

    .line 1252
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/stage/StageManager;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1260
    :cond_0
    const-string v0, "launcher.view_ids"

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mItemIdToViewId:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1261
    return-void
.end method

.method public onSearchRequested()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1593
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0, v2, v1}, Lcom/android/launcher3/Launcher;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 1595
    return v1
.end method

.method public onSettingsChanged(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "settings"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 1625
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSettingsChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1626
    const-string v0, "pref_home_screen_mode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1627
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/home/HomeController;->changeHomeScreenMode(Ljava/lang/String;)V

    .line 1633
    :cond_0
    :goto_0
    return-void

    .line 1628
    :cond_1
    const-string v0, "pref_CloneItemEnabled"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1629
    invoke-direct {p0, p2}, Lcom/android/launcher3/Launcher;->setCloneItemEnabled(Z)V

    goto :goto_0

    .line 1630
    :cond_2
    const-string v0, "pref_apps_button_setting"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1631
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0, p2}, Lcom/android/launcher3/home/HomeController;->setAppsButtonEnabled(Z)V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 743
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 744
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/launcher3/util/animation/FirstFrameAnimatorHelper;->setIsVisible(Z)V

    .line 745
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 737
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 738
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/launcher3/util/animation/FirstFrameAnimatorHelper;->setIsVisible(Z)V

    .line 739
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 1743
    invoke-super {p0, p1}, Landroid/app/Activity;->onTrimMemory(I)V

    .line 1744
    const/16 v0, 0x14

    if-lt p1, v0, :cond_0

    .line 1747
    invoke-static {}, Landroid/database/sqlite/SQLiteDatabase;->releaseMemory()I

    .line 1752
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasFocus"    # Z

    .prologue
    .line 971
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 972
    iput-boolean p1, p0, Lcom/android/launcher3/Launcher;->mHasFocus:Z

    .line 973
    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 4
    .param p1, "visibility"    # I

    .prologue
    .line 1674
    if-nez p1, :cond_2

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/launcher3/Launcher;->mVisible:Z

    .line 1675
    const-string v1, "Launcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onWindowVisibilityChanged : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/launcher3/Launcher;->mVisible:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1676
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mHomeBindController:Lcom/android/launcher3/home/HomeBindController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeBindController;->updateAutoAdvanceState()V

    .line 1680
    iget-boolean v1, p0, Lcom/android/launcher3/Launcher;->mVisible:Z

    if-eqz v1, :cond_1

    .line 1681
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mHomeBindController:Lcom/android/launcher3/home/HomeBindController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeBindController;->isWorkspaceLoading()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1682
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->getContainerView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1686
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    new-instance v1, Lcom/android/launcher3/Launcher$7;

    invoke-direct {v1, p0}, Lcom/android/launcher3/Launcher$7;-><init>(Lcom/android/launcher3/Launcher;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 1712
    .end local v0    # "observer":Landroid/view/ViewTreeObserver;
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->clearTypedText()V

    .line 1714
    :cond_1
    return-void

    .line 1674
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public openFolder(Lcom/android/launcher3/folder/view/FolderIconView;)V
    .locals 5
    .param p1, "folderIconView"    # Lcom/android/launcher3/folder/view/FolderIconView;

    .prologue
    const/4 v2, 0x6

    const/4 v4, 0x0

    const/4 v3, 0x5

    .line 2046
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    invoke-virtual {v1}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/common/stage/Stage;->getMode()I

    move-result v1

    if-ne v1, v3, :cond_2

    .line 2047
    invoke-virtual {p1}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderView()Lcom/android/launcher3/folder/view/FolderView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    invoke-virtual {v2}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/common/stage/Stage;->getContainerView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2062
    :goto_0
    return-void

    .line 2050
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    invoke-virtual {v1, v3, v4}, Lcom/android/launcher3/common/stage/StageManager;->finishStage(ILcom/android/launcher3/common/stage/StageEntry;)V

    .line 2059
    :cond_1
    :goto_1
    new-instance v0, Lcom/android/launcher3/common/stage/StageEntry;

    invoke-direct {v0}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    .line 2060
    .local v0, "data":Lcom/android/launcher3/common/stage/StageEntry;
    const-string v1, "KEY_FOLDER_ICON_VIEW"

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher3/common/stage/StageEntry;->putExtras(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2061
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    invoke-virtual {v1, v3, v0}, Lcom/android/launcher3/common/stage/StageManager;->startStage(ILcom/android/launcher3/common/stage/StageEntry;)V

    goto :goto_0

    .line 2052
    .end local v0    # "data":Lcom/android/launcher3/common/stage/StageEntry;
    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    invoke-virtual {v1}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/common/stage/Stage;->getMode()I

    move-result v1

    if-ne v1, v2, :cond_3

    .line 2053
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    invoke-virtual {v1, v2, v4}, Lcom/android/launcher3/common/stage/StageManager;->finishStage(ILcom/android/launcher3/common/stage/StageEntry;)V

    .line 2054
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    invoke-virtual {v1, v3, v4}, Lcom/android/launcher3/common/stage/StageManager;->finishStage(ILcom/android/launcher3/common/stage/StageEntry;)V

    goto :goto_1

    .line 2055
    :cond_3
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    invoke-virtual {v1}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/common/stage/Stage;->getMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 2056
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->resetWorkspacePagesAlpha()V

    goto :goto_1
.end method

.method public recreateLauncher()V
    .locals 1

    .prologue
    .line 1858
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher3/Launcher;->sIsRecreateModeChange:Z

    .line 1859
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->recreate()V

    .line 1860
    return-void
.end method

.method public relayoutLauncher()V
    .locals 1

    .prologue
    .line 1868
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDeviceProfile:Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->layoutGrid(Lcom/android/launcher3/Launcher;)V

    .line 1869
    return-void
.end method

.method public setHotWordDetection(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 2715
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportGSAPreWarming()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2716
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mHotword:Lcom/android/launcher3/home/HotWord;

    if-eqz v0, :cond_0

    .line 2717
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mHotword:Lcom/android/launcher3/home/HotWord;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/home/HotWord;->setEnableHotWord(Z)V

    .line 2724
    :cond_0
    :goto_0
    return-void

    .line 2719
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPrewarmingClient:Lcom/google/android/libraries/launcherclient/LauncherClient;

    if-eqz v0, :cond_0

    .line 2720
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPrewarmingClient:Lcom/google/android/libraries/launcherclient/LauncherClient;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/launcherclient/LauncherClient;->requestHotwordDetection(Z)V

    .line 2721
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHotWordDetection : call requestHotwordDetection "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setLoadOnResume()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1848
    iget-boolean v1, p0, Lcom/android/launcher3/Launcher;->mPaused:Z

    if-eqz v1, :cond_0

    .line 1850
    iput-boolean v0, p0, Lcom/android/launcher3/Launcher;->mOnResumeNeedsLoad:Z

    .line 1853
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSavedState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "option"    # Landroid/os/Bundle;

    .prologue
    .line 1786
    iput-object p1, p0, Lcom/android/launcher3/Launcher;->mSavedState:Landroid/os/Bundle;

    .line 1787
    return-void
.end method

.method public setSearchedApp(Ljava/lang/String;)V
    .locals 0
    .param p1, "SearchedApp"    # Ljava/lang/String;

    .prologue
    .line 2590
    iput-object p1, p0, Lcom/android/launcher3/Launcher;->mSearchedApp:Ljava/lang/String;

    .line 2591
    return-void
.end method

.method public showAppsOrWidgets(IZZ)Z
    .locals 7
    .param p1, "toMode"    # I
    .param p2, "animated"    # Z
    .param p3, "fromSetting"    # Z

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2415
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getTopStageMode()I

    move-result v3

    if-ne v3, p1, :cond_2

    .line 2416
    if-eqz p3, :cond_1

    if-ne p1, v5, :cond_1

    .line 2417
    new-instance v0, Lcom/android/launcher3/common/stage/StageEntry;

    invoke-direct {v0}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    .line 2418
    .local v0, "data":Lcom/android/launcher3/common/stage/StageEntry;
    const-string v2, "KEY_WIDGET_FROM_SETTING"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/common/stage/StageEntry;->putExtras(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2419
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    invoke-virtual {v2, p1, v0}, Lcom/android/launcher3/common/stage/StageManager;->deliverDataWithOutStageChange(ILcom/android/launcher3/common/stage/StageEntry;)V

    .line 2447
    .end local v0    # "data":Lcom/android/launcher3/common/stage/StageEntry;
    :cond_0
    :goto_0
    return v1

    .line 2420
    :cond_1
    if-eqz p3, :cond_0

    if-ne p1, v4, :cond_0

    .line 2421
    new-instance v0, Lcom/android/launcher3/common/stage/StageEntry;

    invoke-direct {v0}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    .line 2422
    .restart local v0    # "data":Lcom/android/launcher3/common/stage/StageEntry;
    invoke-virtual {v0, v6}, Lcom/android/launcher3/common/stage/StageEntry;->setInternalStateTo(I)V

    .line 2423
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    invoke-virtual {v2, p1, v0}, Lcom/android/launcher3/common/stage/StageManager;->deliverDataWithOutStageChange(ILcom/android/launcher3/common/stage/StageEntry;)V

    goto :goto_0

    .line 2428
    .end local v0    # "data":Lcom/android/launcher3/common/stage/StageEntry;
    :cond_2
    new-instance v0, Lcom/android/launcher3/common/stage/StageEntry;

    invoke-direct {v0}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    .line 2429
    .restart local v0    # "data":Lcom/android/launcher3/common/stage/StageEntry;
    iput-boolean p2, v0, Lcom/android/launcher3/common/stage/StageEntry;->enableAnimation:Z

    .line 2430
    if-eqz p3, :cond_3

    .line 2431
    if-ne p1, v4, :cond_4

    .line 2432
    invoke-virtual {v0, v6}, Lcom/android/launcher3/common/stage/StageEntry;->setInternalStateTo(I)V

    .line 2438
    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    invoke-virtual {v3, p1, v0}, Lcom/android/launcher3/common/stage/StageManager;->startStage(ILcom/android/launcher3/common/stage/StageEntry;)V

    .line 2441
    iget-object v3, p0, Lcom/android/launcher3/Launcher;->mHomeBindController:Lcom/android/launcher3/home/HomeBindController;

    invoke-virtual {v3, v1}, Lcom/android/launcher3/home/HomeBindController;->setUserPresent(Z)V

    .line 2442
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mHomeBindController:Lcom/android/launcher3/home/HomeBindController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeBindController;->updateAutoAdvanceState()V

    .line 2445
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/16 v3, 0x20

    .line 2446
    invoke-virtual {v1, v3}, Landroid/view/View;->sendAccessibilityEvent(I)V

    move v1, v2

    .line 2447
    goto :goto_0

    .line 2433
    :cond_4
    if-ne p1, v5, :cond_3

    .line 2434
    const-string v3, "KEY_WIDGET_FROM_SETTING"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/android/launcher3/common/stage/StageEntry;->putExtras(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public showAppsView(ZZ)V
    .locals 3
    .param p1, "animated"    # Z
    .param p2, "resetToTop"    # Z

    .prologue
    .line 2402
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showAppsView:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " resetToTop:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2403
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/launcher3/Launcher;->showAppsOrWidgets(IZZ)Z

    .line 2404
    return-void
.end method

.method public showWidgetsView(ZZ)V
    .locals 3
    .param p1, "animated"    # Z
    .param p2, "resetToTop"    # Z

    .prologue
    .line 2410
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showWidgetsView:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " resetToTop:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2411
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/launcher3/Launcher;->showAppsOrWidgets(IZZ)Z

    .line 2412
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    .line 1535
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    invoke-virtual {v0, p2}, Lcom/android/launcher3/common/stage/StageManager;->onStartForResult(I)V

    .line 1536
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1537
    return-void
.end method

.method public startAppShortcutOrInfoActivity(Landroid/view/View;)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v10, 0x1

    const/4 v8, 0x0

    .line 1454
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    .line 1457
    .local v4, "tag":Ljava/lang/Object;
    instance-of v5, v4, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v5, :cond_1

    move-object v3, v4

    .line 1458
    check-cast v3, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 1459
    .local v3, "shortcut":Lcom/android/launcher3/common/base/item/IconInfo;
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v5

    invoke-virtual {v5, v3, p0}, Lcom/android/launcher3/util/logging/SALogging;->insertItemLaunchLog(Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/Launcher;)V

    .line 1460
    iget-object v5, v3, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 1461
    .local v1, "intent":Landroid/content/Intent;
    const/4 v5, 0x2

    new-array v2, v5, [I

    .line 1462
    .local v2, "pos":[I
    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1463
    new-instance v5, Landroid/graphics/Rect;

    aget v6, v2, v8

    aget v7, v2, v10

    aget v8, v2, v8

    .line 1464
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v9

    add-int/2addr v8, v9

    aget v9, v2, v10

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v10

    add-int/2addr v9, v10

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1463
    invoke-virtual {v1, v5}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 1469
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFolderLock()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    .line 1470
    invoke-virtual {v5}, Lcom/android/launcher3/folder/folderlock/FolderLock;->isFolderLockEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    invoke-virtual {v5, v3}, Lcom/android/launcher3/folder/folderlock/FolderLock;->isLockedApp(Lcom/android/launcher3/common/base/item/IconInfo;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1472
    :try_start_0
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v5

    invoke-virtual {v5, v3, p0}, Lcom/android/launcher3/util/logging/SALogging;->insertLockedItemLaunchLog(Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/Launcher;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1478
    :cond_0
    :goto_0
    invoke-static {p0, p1, v1, v4}, Lcom/android/launcher3/Utilities;->startActivitySafely(Landroid/app/Activity;Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    .line 1479
    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mStats:Lcom/android/launcher3/Stats;

    invoke-virtual {v5, p1, v1, v3}, Lcom/android/launcher3/Stats;->recordLaunch(Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/common/base/item/IconInfo;)V

    .line 1480
    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/util/logging/GSIMLogging;->runAllStatusLogging()V

    .line 1481
    return-void

    .line 1466
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "pos":[I
    .end local v3    # "shortcut":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_1
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Input must be a Shortcut or AppInfo"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1473
    .restart local v1    # "intent":Landroid/content/Intent;
    .restart local v2    # "pos":[I
    .restart local v3    # "shortcut":Lcom/android/launcher3/common/base/item/IconInfo;
    :catch_0
    move-exception v0

    .line 1474
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "Launcher"

    const-string v6, " can not SALogging locked app "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startApplicationUninstallActivity(Landroid/content/ComponentName;ILcom/android/launcher3/common/compat/UserHandleCompat;Z)Z
    .locals 8
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "flags"    # I
    .param p3, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .param p4, "showToast"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1718
    and-int/lit8 v6, p2, 0x1

    if-nez v6, :cond_1

    .line 1721
    if-eqz p4, :cond_0

    .line 1722
    const v6, 0x7f080063

    invoke-virtual {p0, v6}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v5, v5, [Ljava/lang/Object;

    const-string v7, " "

    aput-object v7, v5, v4

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1723
    .local v2, "message":Ljava/lang/String;
    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 1737
    .end local v2    # "message":Ljava/lang/String;
    :cond_0
    :goto_0
    return v4

    .line 1727
    :cond_1
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1728
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 1729
    .local v0, "className":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.DELETE"

    const-string v6, "package"

    .line 1730
    invoke-static {v6, v3, v0}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v1, v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1731
    .local v1, "intent":Landroid/content/Intent;
    const v4, 0x10808000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1733
    if-eqz p3, :cond_2

    .line 1734
    const-string v4, "android.intent.extra.USER"

    invoke-virtual {p3, v1, v4}, Lcom/android/launcher3/common/compat/UserHandleCompat;->addToIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1736
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/launcher3/Launcher;->startActivity(Landroid/content/Intent;)V

    move v4, v5

    .line 1737
    goto :goto_0
.end method

.method public startHomeSettingActivity()V
    .locals 3

    .prologue
    .line 2579
    const-string v1, "Launcher"

    const-string v2, "launch setting Activity."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2580
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/launcher3/SettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2581
    .local v0, "homescreenSetting":Landroid/content/Intent;
    const v1, 0x8000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2582
    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->startActivity(Landroid/content/Intent;)V

    .line 2583
    return-void
.end method

.method public startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/IntentSender;
    .param p2, "requestCode"    # I
    .param p3, "fillInIntent"    # Landroid/content/Intent;
    .param p4, "flagsMask"    # I
    .param p5, "flagsValues"    # I
    .param p6, "extraFlags"    # I
    .param p7, "options"    # Landroid/os/Bundle;

    .prologue
    .line 1542
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    invoke-virtual {v1, p2}, Lcom/android/launcher3/common/stage/StageManager;->onStartForResult(I)V

    .line 1544
    :try_start_0
    invoke-super/range {p0 .. p7}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1549
    return-void

    .line 1546
    :catch_0
    move-exception v0

    .line 1547
    .local v0, "e":Landroid/content/IntentSender$SendIntentException;
    new-instance v1, Landroid/content/ActivityNotFoundException;

    invoke-direct {v1}, Landroid/content/ActivityNotFoundException;-><init>()V

    throw v1
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .locals 6
    .param p1, "initialQuery"    # Ljava/lang/String;
    .param p2, "selectInitialQuery"    # Z
    .param p3, "appSearchData"    # Landroid/os/Bundle;
    .param p4, "globalSearch"    # Z

    .prologue
    .line 1559
    if-nez p1, :cond_0

    .line 1561
    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->getTypedText()Ljava/lang/String;

    move-result-object p1

    .line 1563
    :cond_0
    if-nez p3, :cond_1

    .line 1564
    new-instance p3, Landroid/os/Bundle;

    .end local p3    # "appSearchData":Landroid/os/Bundle;
    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 1565
    .restart local p3    # "appSearchData":Landroid/os/Bundle;
    const-string v1, "source"

    const-string v2, "launcher-search"

    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1568
    :cond_1
    const-string v1, "search"

    .line 1569
    invoke-virtual {p0, v1}, Lcom/android/launcher3/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    .line 1570
    .local v0, "searchManager":Landroid/app/SearchManager;
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/app/SearchManager;->startSearch(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;Z)V

    .line 1574
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/launcher3/home/HomeController;->enterNormalState(Z)V

    .line 1575
    return-void
.end method

.method public startSearchFromAllApps(Landroid/view/View;Landroid/content/Intent;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "searchIntent"    # Landroid/content/Intent;

    .prologue
    .line 1578
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/launcher3/Utilities;->startActivitySafely(Landroid/app/Activity;Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    .line 1579
    return-void
.end method

.method public unlockScreenOrientation(Z)V
    .locals 4
    .param p1, "immediate"    # Z

    .prologue
    .line 716
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportRotate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 717
    if-eqz p1, :cond_1

    .line 718
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->setRequestedOrientation(I)V

    .line 727
    :cond_0
    :goto_0
    return-void

    .line 720
    :cond_1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/launcher3/Launcher$3;

    invoke-direct {v1, p0}, Lcom/android/launcher3/Launcher$3;-><init>(Lcom/android/launcher3/Launcher;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public updateItemInfo(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2508
    .local p1, "hideItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .local p2, "addItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/LauncherModel;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/launcher3/LauncherModel;->updateItemInfo(Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    .line 2509
    return-void
.end method

.method public updateItemInfo(Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .locals 1
    .param p3, "isGameapp"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 2512
    .local p1, "hideItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .local p2, "addItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/launcher3/LauncherModel;->updateItemInfo(Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    .line 2513
    return-void
.end method

.method public updateItemInfoToAppsItems(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2516
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/LauncherModel;->updateItemInfoToAppsItems(Ljava/util/ArrayList;)V

    .line 2517
    return-void
.end method

.method public updateZeroPage(I)V
    .locals 1
    .param p1, "op"    # I

    .prologue
    .line 2378
    invoke-static {}, Lcom/android/launcher3/home/ZeroPageController;->supportVirtualScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    if-eqz v0, :cond_0

    .line 2379
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/home/HomeController;->updateZeroPage(I)V

    .line 2381
    :cond_0
    return-void
.end method

.method public waitUntilResume(Ljava/lang/Runnable;)Z
    .locals 1
    .param p1, "run"    # Ljava/lang/Runnable;

    .prologue
    .line 1817
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/Launcher;->waitUntilResume(Ljava/lang/Runnable;Z)Z

    move-result v0

    return v0
.end method

.method public waitUntilResume(Ljava/lang/Runnable;Z)Z
    .locals 1
    .param p1, "run"    # Ljava/lang/Runnable;
    .param p2, "deletePreviousRunnables"    # Z

    .prologue
    .line 1803
    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->mVisible:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->mPaused:Z

    if-eqz v0, :cond_2

    .line 1805
    if-eqz p2, :cond_1

    .line 1806
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mBindOnResumeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1809
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mBindOnResumeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1810
    const/4 v0, 0x1

    .line 1812
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public waitUntilResumeForAppsButton(Ljava/lang/Runnable;)Z
    .locals 1
    .param p1, "run"    # Ljava/lang/Runnable;

    .prologue
    .line 1821
    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->mPaused:Z

    if-eqz v0, :cond_0

    .line 1822
    iput-object p1, p0, Lcom/android/launcher3/Launcher;->mAppsButtonOnResumeCallback:Ljava/lang/Runnable;

    .line 1823
    const/4 v0, 0x1

    .line 1825
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
