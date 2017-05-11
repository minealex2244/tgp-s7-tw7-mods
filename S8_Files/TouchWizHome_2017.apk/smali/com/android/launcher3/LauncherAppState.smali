.class public Lcom/android/launcher3/LauncherAppState;
.super Ljava/lang/Object;
.source "LauncherAppState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/LauncherAppState$SingletonHolder;
    }
.end annotation


# static fields
.field private static EASY_GRID_CELLX:I = 0x0

.field private static EASY_GRID_CELLY:I = 0x0

.field public static final EASY_MODE:Ljava/lang/String; = "easy_mode"

.field public static final HOMESCREEN_BADGE_ALL_APPS_DISABLE:I = 0x0

.field public static final HOMESCREEN_BADGE_ALL_APPS_ENABLE:I = 0x2

.field public static final HOMESCREEN_BADGE_SINGLE_APP_DISABLE:I = 0x1

.field public static final HOME_APPS_MODE:Ljava/lang/String; = "home_apps_mode"

.field public static final HOME_ONLY_MODE:Ljava/lang/String; = "home_only_mode"

.field private static final PREFERENCES_APPS_BUTTON_SETTINGS:Ljava/lang/String; = "apps_button_settings"

.field private static final PREFERENCES_APPS_BUTTON_SETTINGS_APPLY_COUNT:Ljava/lang/String; = "apps_button_settings_apply_count"

.field private static final PREFERENCES_APPS_BUTTON_SETTINGS_EASY:Ljava/lang/String; = "apps_button_settings_easy"

.field private static final PREFERENCES_BADGE_SETTINGS:Ljava/lang/String; = "badge_settings"

.field private static final PREFERENCES_HOME_LAYOUT_SETTINGS_APPLY_COUNT:Ljava/lang/String; = "home_layout_settings_apply_count"

.field private static sContext:Landroid/content/Context;

.field private static sLauncherProvider:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/launcher3/LauncherProvider;",
            ">;"
        }
    .end annotation
.end field

.field private static sLauncherProviderID:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/launcher3/LauncherProviderID;",
            ">;"
        }
    .end annotation
.end field

.field private static sSettingsActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/launcher3/SettingsActivity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mBadgeCache:Lcom/android/launcher3/common/model/BadgeCache;

.field private final mBadgeObserver:Landroid/database/ContentObserver;

.field private mBadgeRefreshRunnable:Ljava/lang/Runnable;

.field private mCloneItemEnabled:Z

.field private final mDisableableAppCache:Lcom/android/launcher3/common/model/DisableableAppCache;

.field private mHandler:Landroid/os/Handler;

.field private final mIconCache:Lcom/android/launcher3/common/model/IconCache;

.field private mIsEasyMode:Z

.field private mIsHomeOnlyMode:Z

.field public mLandscapeProfile:Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

.field private final mLauncherProxy:Lcom/android/launcher3/proxy/LauncherProxy;

.field private final mModel:Lcom/android/launcher3/LauncherModel;

.field public mPortraitProfile:Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

.field private mSavedHotseatIconsBitmap:[Landroid/os/Parcelable;

.field private mStateManager:Lcom/android/launcher3/executor/StateManager;

.field private mThreadPool:Lcom/android/launcher3/util/threadpool/ThreadPool;

.field private mTopViewChangedMessageHandler:Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;

.field private mWallpaperChangedSinceLastCheck:Z

.field private final mWidgetCache:Lcom/android/launcher3/widget/model/WidgetPreviewLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x3

    sput v0, Lcom/android/launcher3/LauncherAppState;->EASY_GRID_CELLX:I

    .line 80
    const/4 v0, 0x4

    sput v0, Lcom/android/launcher3/LauncherAppState;->EASY_GRID_CELLY:I

    return-void
.end method

.method private constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-boolean v7, p0, Lcom/android/launcher3/LauncherAppState;->mCloneItemEnabled:Z

    .line 77
    iput-boolean v6, p0, Lcom/android/launcher3/LauncherAppState;->mIsEasyMode:Z

    .line 82
    iput-boolean v6, p0, Lcom/android/launcher3/LauncherAppState;->mIsHomeOnlyMode:Z

    .line 122
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/launcher3/LauncherAppState;->mHandler:Landroid/os/Handler;

    .line 471
    new-instance v2, Lcom/android/launcher3/LauncherAppState$1;

    iget-object v3, p0, Lcom/android/launcher3/LauncherAppState;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/android/launcher3/LauncherAppState$1;-><init>(Lcom/android/launcher3/LauncherAppState;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/launcher3/LauncherAppState;->mBadgeObserver:Landroid/database/ContentObserver;

    .line 479
    new-instance v2, Lcom/android/launcher3/LauncherAppState$2;

    invoke-direct {v2, p0}, Lcom/android/launcher3/LauncherAppState$2;-><init>(Lcom/android/launcher3/LauncherAppState;)V

    iput-object v2, p0, Lcom/android/launcher3/LauncherAppState;->mBadgeRefreshRunnable:Ljava/lang/Runnable;

    .line 132
    sget-object v2, Lcom/android/launcher3/LauncherAppState;->sContext:Landroid/content/Context;

    if-nez v2, :cond_0

    .line 133
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "LauncherAppState inited before app context set"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 136
    :cond_0
    const-string v2, "Launcher"

    const-string v3, "LauncherAppState inited"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppState;->makeDeviceProfile()V

    .line 138
    sget-object v2, Lcom/android/launcher3/LauncherAppState;->sContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/common/model/BadgeCache;->BADGE_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/launcher3/LauncherAppState;->mBadgeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v7, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 139
    new-instance v2, Lcom/android/launcher3/common/model/IconCache;

    sget-object v3, Lcom/android/launcher3/LauncherAppState;->sContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppState;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v4

    iget v4, v4, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->defaultIconSize:I

    invoke-direct {v2, v3, v4}, Lcom/android/launcher3/common/model/IconCache;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/android/launcher3/LauncherAppState;->mIconCache:Lcom/android/launcher3/common/model/IconCache;

    .line 140
    new-instance v2, Lcom/android/launcher3/common/model/BadgeCache;

    sget-object v3, Lcom/android/launcher3/LauncherAppState;->sContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/launcher3/common/model/BadgeCache;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/launcher3/LauncherAppState;->mBadgeCache:Lcom/android/launcher3/common/model/BadgeCache;

    .line 141
    new-instance v2, Lcom/android/launcher3/widget/model/WidgetPreviewLoader;

    sget-object v3, Lcom/android/launcher3/LauncherAppState;->sContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/launcher3/LauncherAppState;->mIconCache:Lcom/android/launcher3/common/model/IconCache;

    invoke-direct {v2, v3, v4}, Lcom/android/launcher3/widget/model/WidgetPreviewLoader;-><init>(Landroid/content/Context;Lcom/android/launcher3/common/model/IconCache;)V

    iput-object v2, p0, Lcom/android/launcher3/LauncherAppState;->mWidgetCache:Lcom/android/launcher3/widget/model/WidgetPreviewLoader;

    .line 142
    new-instance v2, Lcom/android/launcher3/common/model/DisableableAppCache;

    sget-object v3, Lcom/android/launcher3/LauncherAppState;->sContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/launcher3/common/model/DisableableAppCache;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/launcher3/LauncherAppState;->mDisableableAppCache:Lcom/android/launcher3/common/model/DisableableAppCache;

    .line 144
    new-instance v2, Lcom/android/launcher3/LauncherModel;

    iget-object v3, p0, Lcom/android/launcher3/LauncherAppState;->mIconCache:Lcom/android/launcher3/common/model/IconCache;

    iget-object v4, p0, Lcom/android/launcher3/LauncherAppState;->mBadgeCache:Lcom/android/launcher3/common/model/BadgeCache;

    iget-object v5, p0, Lcom/android/launcher3/LauncherAppState;->mDisableableAppCache:Lcom/android/launcher3/common/model/DisableableAppCache;

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/android/launcher3/LauncherModel;-><init>(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/common/model/IconCache;Lcom/android/launcher3/common/model/BadgeCache;Lcom/android/launcher3/common/model/DisableableAppCache;)V

    iput-object v2, p0, Lcom/android/launcher3/LauncherAppState;->mModel:Lcom/android/launcher3/LauncherModel;

    .line 146
    sget-object v2, Lcom/android/launcher3/LauncherAppState;->sContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/LauncherAppsCompat;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/LauncherAppState;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->addOnAppsChangedCallback(Lcom/android/launcher3/common/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;)V

    .line 149
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 150
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 152
    const-string v2, "com.samsung.settings.ICON_BACKGROUNDS_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 153
    const-string v2, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 154
    const-string v2, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 155
    const-string v2, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 156
    const-string v2, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 157
    const-string v2, "com.samsung.android.knox.intent.action.EDM_UNINSTALL_STATUS_INTERNAL"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 160
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportSprintExtension()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 161
    const-string v2, "Launcher"

    const-string v3, "[SPRINT] Adding Force Launhcer Refresh Intent"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const-string v2, "com.sec.sprextension.FORCE_LAUNCHER_REFRESH"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 165
    :cond_1
    sget-object v2, Lcom/android/launcher3/LauncherAppState;->sContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/launcher3/LauncherAppState;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 167
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 168
    .restart local v0    # "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.STK_TITLE_IS_LOADED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 169
    const-string v2, "package"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 170
    sget-object v2, Lcom/android/launcher3/LauncherAppState;->sContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/launcher3/LauncherAppState;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 172
    sget-object v2, Lcom/android/launcher3/LauncherAppState;->sContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/UserManagerCompat;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/common/compat/UserManagerCompat;->enableAndResetCache()V

    .line 174
    sget-object v2, Lcom/android/launcher3/LauncherAppState;->sContext:Landroid/content/Context;

    .line 175
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v3

    .line 174
    invoke-virtual {v2, v3, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 176
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "pref_CloneItemEnabled"

    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/launcher3/LauncherAppState;->mCloneItemEnabled:Z

    .line 177
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportEasyModeChange()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 178
    invoke-direct {p0}, Lcom/android/launcher3/LauncherAppState;->initEasyMode()V

    .line 180
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppState;->initHomeOnlyMode()V

    .line 181
    iget-boolean v2, p0, Lcom/android/launcher3/LauncherAppState;->mIsHomeOnlyMode:Z

    invoke-virtual {p0, v2}, Lcom/android/launcher3/LauncherAppState;->initScreenGrid(Z)V

    .line 182
    invoke-static {}, Lcom/android/launcher3/util/TestHelper;->isRoboUnitTest()Z

    move-result v2

    if-nez v2, :cond_3

    .line 183
    iget-object v2, p0, Lcom/android/launcher3/LauncherAppState;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v2, p0}, Lcom/android/launcher3/LauncherModel;->reloadBadges(Lcom/android/launcher3/LauncherAppState;)V

    .line 186
    :cond_3
    new-instance v2, Lcom/android/launcher3/executor/StateManager;

    invoke-direct {v2}, Lcom/android/launcher3/executor/StateManager;-><init>()V

    iput-object v2, p0, Lcom/android/launcher3/LauncherAppState;->mStateManager:Lcom/android/launcher3/executor/StateManager;

    .line 187
    new-instance v2, Lcom/android/launcher3/proxy/LauncherProxy;

    invoke-direct {v2}, Lcom/android/launcher3/proxy/LauncherProxy;-><init>()V

    iput-object v2, p0, Lcom/android/launcher3/LauncherAppState;->mLauncherProxy:Lcom/android/launcher3/proxy/LauncherProxy;

    .line 188
    new-instance v2, Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;

    invoke-direct {v2}, Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;-><init>()V

    iput-object v2, p0, Lcom/android/launcher3/LauncherAppState;->mTopViewChangedMessageHandler:Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;

    .line 189
    iget-object v2, p0, Lcom/android/launcher3/LauncherAppState;->mTopViewChangedMessageHandler:Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;

    iget-object v3, p0, Lcom/android/launcher3/LauncherAppState;->mStateManager:Lcom/android/launcher3/executor/StateManager;

    invoke-virtual {v3}, Lcom/android/launcher3/executor/StateManager;->getTopViewListener()Lcom/android/launcher3/executor/StateManager$TopViewListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;->registerOnLauncherTopViewChangedListener(Lcom/android/launcher3/proxy/OnLauncherTopViewChangedListener;)V

    .line 190
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/LauncherAppState$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/launcher3/LauncherAppState$1;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/launcher3/LauncherAppState;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/launcher3/LauncherAppState;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/LauncherAppState;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppState;->mBadgeRefreshRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/launcher3/LauncherAppState;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/LauncherAppState;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppState;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/launcher3/LauncherAppState;)Lcom/android/launcher3/LauncherModel;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/LauncherAppState;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppState;->mModel:Lcom/android/launcher3/LauncherModel;

    return-object v0
.end method

.method public static getInstance()Lcom/android/launcher3/LauncherAppState;
    .locals 1

    .prologue
    .line 111
    # getter for: Lcom/android/launcher3/LauncherAppState$SingletonHolder;->sLauncherAppStateInstance:Lcom/android/launcher3/LauncherAppState;
    invoke-static {}, Lcom/android/launcher3/LauncherAppState$SingletonHolder;->access$100()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    return-object v0
.end method

.method public static getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;
    .locals 1

    .prologue
    .line 115
    # getter for: Lcom/android/launcher3/LauncherAppState$SingletonHolder;->sLauncherAppStateInstance:Lcom/android/launcher3/LauncherAppState;
    invoke-static {}, Lcom/android/launcher3/LauncherAppState$SingletonHolder;->access$100()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    return-object v0
.end method

.method public static getLauncherProvider()Lcom/android/launcher3/LauncherProvider;
    .locals 1

    .prologue
    .line 254
    sget-object v0, Lcom/android/launcher3/LauncherAppState;->sLauncherProvider:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherProvider;

    return-object v0
.end method

.method public static getLauncherProviderID()Lcom/android/launcher3/LauncherProviderID;
    .locals 1

    .prologue
    .line 262
    sget-object v0, Lcom/android/launcher3/LauncherAppState;->sLauncherProviderID:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/launcher3/LauncherAppState;->sLauncherProviderID:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherProviderID;

    goto :goto_0
.end method

.method public static getSharedPreferencesKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 266
    const-string v0, "com.sec.android.app.launcher.prefs"

    return-object v0
.end method

.method private initEasyMode()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 316
    sget-object v1, Lcom/android/launcher3/LauncherAppState;->sContext:Landroid/content/Context;

    .line 317
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v2

    .line 316
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 319
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "easy_mode"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/launcher3/LauncherAppState;->mIsEasyMode:Z

    .line 320
    const-string v1, "Launcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initEasyMode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/launcher3/LauncherAppState;->mIsEasyMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    return-void
.end method

.method public static setApplicationContext(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 125
    sget-object v0, Lcom/android/launcher3/LauncherAppState;->sContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 126
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setApplicationContext called twice! old="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/LauncherAppState;->sContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " new="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/LauncherAppState;->sContext:Landroid/content/Context;

    .line 129
    return-void
.end method

.method static setLauncherProvider(Lcom/android/launcher3/LauncherProvider;)V
    .locals 1
    .param p0, "provider"    # Lcom/android/launcher3/LauncherProvider;

    .prologue
    .line 250
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/android/launcher3/LauncherAppState;->sLauncherProvider:Ljava/lang/ref/WeakReference;

    .line 251
    return-void
.end method

.method static setLauncherProviderID(Lcom/android/launcher3/LauncherProviderID;)V
    .locals 1
    .param p0, "provider"    # Lcom/android/launcher3/LauncherProviderID;

    .prologue
    .line 258
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/android/launcher3/LauncherAppState;->sLauncherProviderID:Ljava/lang/ref/WeakReference;

    .line 259
    return-void
.end method


# virtual methods
.method public getAppsButtonApplyCount()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 416
    sget-object v2, Lcom/android/launcher3/LauncherAppState;->sContext:Landroid/content/Context;

    .line 417
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v3

    .line 416
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 418
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "apps_button_settings_apply_count"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 419
    .local v0, "count":I
    return v0
.end method

.method public getAppsButtonEnabled()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 408
    sget-object v2, Lcom/android/launcher3/LauncherAppState;->sContext:Landroid/content/Context;

    .line 409
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v3

    .line 408
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 410
    .local v1, "prefs":Landroid/content/SharedPreferences;
    iget-boolean v2, p0, Lcom/android/launcher3/LauncherAppState;->mIsEasyMode:Z

    if-eqz v2, :cond_0

    const-string v2, "apps_button_settings_easy"

    :goto_0
    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 412
    .local v0, "enabled":Z
    return v0

    .line 410
    .end local v0    # "enabled":Z
    :cond_0
    const-string v2, "apps_button_settings"

    goto :goto_0
.end method

.method public getBadgeSetings()I
    .locals 5

    .prologue
    .line 378
    sget-object v2, Lcom/android/launcher3/LauncherAppState;->sContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 379
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "badge_settings"

    const/4 v3, 0x2

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 380
    .local v0, "mBadgeSettings":I
    return v0
.end method

.method public getCloneItemEnabled()Z
    .locals 1

    .prologue
    .line 294
    iget-boolean v0, p0, Lcom/android/launcher3/LauncherAppState;->mCloneItemEnabled:Z

    return v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 119
    sget-object v0, Lcom/android/launcher3/LauncherAppState;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;
    .locals 3

    .prologue
    .line 284
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 285
    .local v0, "config":Landroid/content/res/Configuration;
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportRotate()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 287
    iget-object v1, p0, Lcom/android/launcher3/LauncherAppState;->mLandscapeProfile:Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    .line 289
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/LauncherAppState;->mPortraitProfile:Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    goto :goto_0
.end method

.method public getHomeLayoutApplyCount()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 423
    sget-object v2, Lcom/android/launcher3/LauncherAppState;->sContext:Landroid/content/Context;

    .line 424
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v3

    .line 423
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 425
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "home_layout_settings_apply_count"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 426
    .local v0, "count":I
    return v0
.end method

.method public getIconCache()Lcom/android/launcher3/common/model/IconCache;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppState;->mIconCache:Lcom/android/launcher3/common/model/IconCache;

    return-object v0
.end method

.method public getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppState;->mLauncherProxy:Lcom/android/launcher3/proxy/LauncherProxy;

    return-object v0
.end method

.method public getModel()Lcom/android/launcher3/LauncherModel;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppState;->mModel:Lcom/android/launcher3/LauncherModel;

    return-object v0
.end method

.method getSavedHotseatIconsBitmap()[Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 540
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppState;->mSavedHotseatIconsBitmap:[Landroid/os/Parcelable;

    return-object v0
.end method

.method public getSettingsActivity()Lcom/android/launcher3/SettingsActivity;
    .locals 1

    .prologue
    .line 525
    sget-object v0, Lcom/android/launcher3/LauncherAppState;->sSettingsActivity:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    .line 526
    const/4 v0, 0x0

    .line 528
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/launcher3/LauncherAppState;->sSettingsActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/SettingsActivity;

    goto :goto_0
.end method

.method public getStateManager()Lcom/android/launcher3/executor/StateManager;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppState;->mStateManager:Lcom/android/launcher3/executor/StateManager;

    return-object v0
.end method

.method public getThreadPool()Lcom/android/launcher3/util/threadpool/ThreadPool;
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppState;->mThreadPool:Lcom/android/launcher3/util/threadpool/ThreadPool;

    if-nez v0, :cond_0

    .line 431
    new-instance v0, Lcom/android/launcher3/util/threadpool/ThreadPool;

    invoke-direct {v0}, Lcom/android/launcher3/util/threadpool/ThreadPool;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/LauncherAppState;->mThreadPool:Lcom/android/launcher3/util/threadpool/ThreadPool;

    .line 433
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppState;->mThreadPool:Lcom/android/launcher3/util/threadpool/ThreadPool;

    return-object v0
.end method

.method public getTopViewChangedMessageHandler()Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppState;->mTopViewChangedMessageHandler:Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;

    return-object v0
.end method

.method public getWidgetCache()Lcom/android/launcher3/widget/model/WidgetPreviewLoader;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppState;->mWidgetCache:Lcom/android/launcher3/widget/model/WidgetPreviewLoader;

    return-object v0
.end method

.method public hasWallpaperChangedSinceLastCheck()Z
    .locals 2

    .prologue
    .line 278
    iget-boolean v0, p0, Lcom/android/launcher3/LauncherAppState;->mWallpaperChangedSinceLastCheck:Z

    .line 279
    .local v0, "result":Z
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher3/LauncherAppState;->mWallpaperChangedSinceLastCheck:Z

    .line 280
    return v0
.end method

.method public initHomeOnlyMode()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 348
    sget-object v3, Lcom/android/launcher3/LauncherAppState;->sContext:Landroid/content/Context;

    .line 349
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v4

    .line 348
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 350
    .local v2, "prefs":Landroid/content/SharedPreferences;
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHomeModeChange()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 351
    const-string v3, "home_only_mode"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 352
    const-string v3, "Launcher"

    const-string v4, "PREFERENCES_HOME_ONLY_MODE is exist"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    const-string v3, "home_only_mode"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/launcher3/LauncherAppState;->mIsHomeOnlyMode:Z

    .line 369
    :cond_0
    :goto_0
    return-void

    .line 355
    :cond_1
    const-string v3, "Launcher"

    const-string v4, "PREFERENCES_HOME_ONLY_MODE is not exist. Check CSC"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->getSupportHomeModeChangeIndex()I

    move-result v1

    .line 358
    .local v1, "homeMode":I
    const-string v3, "Launcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "homeMode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    if-nez v1, :cond_2

    .line 362
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/launcher3/LauncherAppState;->mIsHomeOnlyMode:Z

    .line 364
    :cond_2
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 365
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "home_only_mode"

    iget-boolean v4, p0, Lcom/android/launcher3/LauncherAppState;->mIsHomeOnlyMode:Z

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 366
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method public initScreenGrid(Z)V
    .locals 10
    .param p1, "isHomeOnly"    # Z

    .prologue
    const/4 v9, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 487
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFlexibleGrid()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 488
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppState;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v4

    .line 489
    .local v4, "dp":Lcom/android/launcher3/common/deviceprofile/DeviceProfile;
    iget-object v5, v4, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v5}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountX()I

    move-result v2

    .line 490
    .local v2, "defaultX":I
    iget-object v5, v4, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v5}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountY()I

    move-result v3

    .line 491
    .local v3, "defaultY":I
    new-array v1, v9, [I

    .line 493
    .local v1, "cellSize":[I
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHomeModeChange()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 494
    sget-object v8, Lcom/android/launcher3/LauncherAppState;->sContext:Landroid/content/Context;

    if-nez p1, :cond_4

    move v5, v6

    :goto_0
    invoke-static {v8, v1, v5}, Lcom/android/launcher3/util/ScreenGridUtilities;->loadCurrentGridSize(Landroid/content/Context;[IZ)V

    .line 495
    aget v5, v1, v7

    if-lez v5, :cond_0

    aget v5, v1, v6

    if-gtz v5, :cond_1

    .line 496
    :cond_0
    sget-object v8, Lcom/android/launcher3/LauncherAppState;->sContext:Landroid/content/Context;

    if-nez p1, :cond_5

    move v5, v6

    :goto_1
    invoke-static {v8, v2, v3, v5}, Lcom/android/launcher3/util/ScreenGridUtilities;->storeGridLayoutPreference(Landroid/content/Context;IIZ)V

    .line 500
    :cond_1
    sget-object v5, Lcom/android/launcher3/LauncherAppState;->sContext:Landroid/content/Context;

    invoke-static {v5, v1, p1}, Lcom/android/launcher3/util/ScreenGridUtilities;->loadCurrentGridSize(Landroid/content/Context;[IZ)V

    .line 501
    aget v5, v1, v7

    if-lez v5, :cond_2

    aget v5, v1, v6

    if-gtz v5, :cond_6

    .line 502
    :cond_2
    sget-object v5, Lcom/android/launcher3/LauncherAppState;->sContext:Landroid/content/Context;

    invoke-static {v5, v2, v3, p1}, Lcom/android/launcher3/util/ScreenGridUtilities;->storeGridLayoutPreference(Landroid/content/Context;IIZ)V

    .line 522
    .end local v1    # "cellSize":[I
    .end local v2    # "defaultX":I
    .end local v3    # "defaultY":I
    .end local v4    # "dp":Lcom/android/launcher3/common/deviceprofile/DeviceProfile;
    :cond_3
    :goto_2
    return-void

    .restart local v1    # "cellSize":[I
    .restart local v2    # "defaultX":I
    .restart local v3    # "defaultY":I
    .restart local v4    # "dp":Lcom/android/launcher3/common/deviceprofile/DeviceProfile;
    :cond_4
    move v5, v7

    .line 494
    goto :goto_0

    :cond_5
    move v5, v7

    .line 496
    goto :goto_1

    .line 504
    :cond_6
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportEasyModeChange()Z

    move-result v5

    if-eqz v5, :cond_7

    iget-boolean v5, p0, Lcom/android/launcher3/LauncherAppState;->mIsEasyMode:Z

    if-eqz v5, :cond_7

    .line 505
    sget-object v5, Lcom/android/launcher3/LauncherAppState;->sContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b000c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    sput v5, Lcom/android/launcher3/LauncherAppState;->EASY_GRID_CELLX:I

    .line 506
    sget-object v5, Lcom/android/launcher3/LauncherAppState;->sContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b000d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    sput v5, Lcom/android/launcher3/LauncherAppState;->EASY_GRID_CELLY:I

    .line 507
    sget v5, Lcom/android/launcher3/LauncherAppState;->EASY_GRID_CELLX:I

    sget v6, Lcom/android/launcher3/LauncherAppState;->EASY_GRID_CELLY:I

    invoke-virtual {v4, v5, v6}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->setCurrentGrid(II)V

    .line 508
    sget v5, Lcom/android/launcher3/LauncherAppState;->EASY_GRID_CELLX:I

    sget v6, Lcom/android/launcher3/LauncherAppState;->EASY_GRID_CELLY:I

    invoke-virtual {v4, v5, v6}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->setAppsCurrentGrid(II)V

    goto :goto_2

    .line 510
    :cond_7
    aget v5, v1, v7

    aget v8, v1, v6

    invoke-virtual {v4, v5, v8}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->setCurrentGrid(II)V

    .line 512
    new-array v0, v9, [I

    .line 513
    .local v0, "appsGridXY":[I
    sget-object v5, Lcom/android/launcher3/LauncherAppState;->sContext:Landroid/content/Context;

    invoke-static {v5, v0}, Lcom/android/launcher3/util/ScreenGridUtilities;->loadCurrentAppsGridSize(Landroid/content/Context;[I)V

    .line 514
    aget v5, v0, v7

    if-lez v5, :cond_8

    aget v5, v0, v6

    if-gtz v5, :cond_9

    .line 515
    :cond_8
    sget-object v5, Lcom/android/launcher3/LauncherAppState;->sContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f0b0001

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    aput v5, v0, v7

    .line 516
    sget-object v5, Lcom/android/launcher3/LauncherAppState;->sContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f0b0002

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    aput v5, v0, v6

    .line 518
    :cond_9
    aget v5, v0, v7

    aget v6, v0, v6

    invoke-virtual {v4, v5, v6}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->setAppsCurrentGrid(II)V

    goto :goto_2
.end method

.method public isEasyModeEnabled()Z
    .locals 1

    .prologue
    .line 302
    iget-boolean v0, p0, Lcom/android/launcher3/LauncherAppState;->mIsEasyMode:Z

    return v0
.end method

.method public isHomeOnlyModeEnabled()Z
    .locals 1

    .prologue
    .line 324
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled(Z)Z

    move-result v0

    return v0
.end method

.method public isHomeOnlyModeEnabled(Z)Z
    .locals 1
    .param p1, "checkEasyMode"    # Z

    .prologue
    .line 328
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppState;->isEasyModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    const/4 v0, 0x0

    .line 332
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/LauncherAppState;->mIsHomeOnlyMode:Z

    goto :goto_0
.end method

.method public makeDeviceProfile()V
    .locals 21

    .prologue
    .line 437
    sget-object v2, Lcom/android/launcher3/LauncherAppState;->sContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v15

    .line 438
    .local v15, "config":Landroid/content/res/Configuration;
    sget-object v2, Lcom/android/launcher3/LauncherAppState;->sContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v18

    .line 439
    .local v18, "dm":Landroid/util/DisplayMetrics;
    move-object/from16 v0, v18

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object/from16 v0, v18

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 440
    .local v5, "availableSmallSide":I
    move-object/from16 v0, v18

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object/from16 v0, v18

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 442
    .local v4, "availableLargeSide":I
    sget-object v2, Lcom/android/launcher3/LauncherAppState;->sContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/view/WindowManager;

    .line 443
    .local v20, "wm":Landroid/view/WindowManager;
    invoke-interface/range {v20 .. v20}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v17

    .line 444
    .local v17, "display":Landroid/view/Display;
    new-instance v19, Landroid/graphics/Point;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Point;-><init>()V

    .line 445
    .local v19, "realSize":Landroid/graphics/Point;
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 446
    move-object/from16 v0, v19

    iget v2, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v19

    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 447
    .local v7, "smallSide":I
    move-object/from16 v0, v19

    iget v2, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v19

    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 450
    .local v6, "largeSide":I
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportRotate()Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, v15, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 452
    const-string v2, "Launcher"

    const-string v3, "create land profile"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    new-instance v2, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    sget-object v3, Lcom/android/launcher3/LauncherAppState;->sContext:Landroid/content/Context;

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;-><init>(Landroid/content/Context;IIIIZ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher3/LauncherAppState;->mLandscapeProfile:Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    .line 455
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/LauncherAppState;->mLandscapeProfile:Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    iget v0, v2, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->defaultIconSize:I

    move/from16 v16, v0

    .line 462
    .local v16, "defaultIconSize":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/LauncherAppState;->mIconCache:Lcom/android/launcher3/common/model/IconCache;

    if-eqz v2, :cond_0

    .line 463
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/LauncherAppState;->mIconCache:Lcom/android/launcher3/common/model/IconCache;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/android/launcher3/common/model/IconCache;->clearCache(I)V

    .line 464
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/LauncherAppState;->mIconCache:Lcom/android/launcher3/common/model/IconCache;

    invoke-virtual {v2}, Lcom/android/launcher3/common/model/IconCache;->clearDB()V

    .line 466
    :cond_0
    return-void

    .line 457
    .end local v16    # "defaultIconSize":I
    :cond_1
    const-string v2, "Launcher"

    const-string v3, "create port profile"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    new-instance v8, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    sget-object v9, Lcom/android/launcher3/LauncherAppState;->sContext:Landroid/content/Context;

    const/4 v14, 0x0

    move v10, v5

    move v11, v4

    move v12, v7

    move v13, v6

    invoke-direct/range {v8 .. v14}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;-><init>(Landroid/content/Context;IIIIZ)V

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/android/launcher3/LauncherAppState;->mPortraitProfile:Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    .line 460
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/LauncherAppState;->mPortraitProfile:Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    iget v0, v2, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->defaultIconSize:I

    move/from16 v16, v0

    .restart local v16    # "defaultIconSize":I
    goto :goto_0
.end method

.method public onTerminate()V
    .locals 3

    .prologue
    .line 208
    sget-object v1, Lcom/android/launcher3/LauncherAppState;->sContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/LauncherAppState;->mBadgeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 209
    sget-object v1, Lcom/android/launcher3/LauncherAppState;->sContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/launcher3/LauncherAppState;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 210
    sget-object v1, Lcom/android/launcher3/LauncherAppState;->sContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/LauncherAppsCompat;

    move-result-object v0

    .line 211
    .local v0, "launcherApps":Lcom/android/launcher3/common/compat/LauncherAppsCompat;
    iget-object v1, p0, Lcom/android/launcher3/LauncherAppState;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->removeOnAppsChangedCallback(Lcom/android/launcher3/common/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;)V

    .line 212
    sget-object v1, Lcom/android/launcher3/LauncherAppState;->sContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/launcher3/common/compat/PackageInstallerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/PackageInstallerCompat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/common/compat/PackageInstallerCompat;->onStop()V

    .line 213
    return-void
.end method

.method public onWallpaperChanged()V
    .locals 1

    .prologue
    .line 274
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/LauncherAppState;->mWallpaperChangedSinceLastCheck:Z

    .line 275
    return-void
.end method

.method public reloadApps()V
    .locals 3

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppState;->mModel:Lcom/android/launcher3/LauncherModel;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/LauncherModel;->resetLoadedState(ZZ)V

    .line 230
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppState;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->startLoaderFromBackground()V

    .line 231
    return-void
.end method

.method public reloadWorkspace()V
    .locals 3

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppState;->mModel:Lcom/android/launcher3/LauncherModel;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/LauncherModel;->resetLoadedState(ZZ)V

    .line 221
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppState;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->startLoaderFromBackground()V

    .line 222
    return-void
.end method

.method public removeAppsButtonPref(Z)V
    .locals 4
    .param p1, "isEasyMode"    # Z

    .prologue
    .line 384
    sget-object v1, Lcom/android/launcher3/LauncherAppState;->sContext:Landroid/content/Context;

    .line 385
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 384
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 385
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 386
    .local v0, "prefs":Landroid/content/SharedPreferences$Editor;
    if-eqz p1, :cond_0

    const-string v1, "apps_button_settings_easy"

    :goto_0
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 388
    const-string v1, "pref_apps_button_setting"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 389
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 390
    return-void

    .line 386
    :cond_0
    const-string v1, "apps_button_settings"

    goto :goto_0
.end method

.method saveHotseatIconsBitmap([Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "bitmaps"    # [Landroid/os/Parcelable;

    .prologue
    .line 536
    iput-object p1, p0, Lcom/android/launcher3/LauncherAppState;->mSavedHotseatIconsBitmap:[Landroid/os/Parcelable;

    .line 537
    return-void
.end method

.method public setAppsButtonEnabled(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 393
    iget-boolean v0, p0, Lcom/android/launcher3/LauncherAppState;->mIsEasyMode:Z

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/LauncherAppState;->setAppsButtonEnabled(ZZ)V

    .line 394
    return-void
.end method

.method public setAppsButtonEnabled(ZZ)V
    .locals 5
    .param p1, "value"    # Z
    .param p2, "isEasyMode"    # Z

    .prologue
    const/4 v4, 0x0

    .line 397
    sget-object v2, Lcom/android/launcher3/LauncherAppState;->sContext:Landroid/content/Context;

    .line 398
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v3

    .line 397
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 399
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 400
    .local v1, "prefsEdit":Landroid/content/SharedPreferences$Editor;
    if-eqz p2, :cond_0

    const-string v2, "apps_button_settings_easy"

    :goto_0
    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 402
    const-string v2, "apps_button_settings_apply_count"

    const-string v3, "apps_button_settings_apply_count"

    .line 403
    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    .line 402
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 404
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 405
    return-void

    .line 400
    :cond_0
    const-string v2, "apps_button_settings"

    goto :goto_0
.end method

.method public setBadgeSetings(I)V
    .locals 4
    .param p1, "status"    # I

    .prologue
    .line 372
    sget-object v1, Lcom/android/launcher3/LauncherAppState;->sContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 373
    .local v0, "prefs":Landroid/content/SharedPreferences$Editor;
    const-string v1, "badge_settings"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 374
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 375
    return-void
.end method

.method public setCloneItemEnabled(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 298
    iput-boolean p1, p0, Lcom/android/launcher3/LauncherAppState;->mCloneItemEnabled:Z

    .line 299
    return-void
.end method

.method setLauncher(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherModel;
    .locals 1
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;

    .prologue
    .line 234
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getLauncherProvider()Lcom/android/launcher3/LauncherProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 235
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getLauncherProvider()Lcom/android/launcher3/LauncherProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/LauncherProvider;->setLauncherProviderChangeListener(Lcom/android/launcher3/LauncherProviderChangeListener;)V

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppState;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/LauncherModel;->initialize(Lcom/android/launcher3/LauncherModel$Callbacks;)V

    .line 237
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppState;->mModel:Lcom/android/launcher3/LauncherModel;

    return-object v0
.end method

.method setSettingsActivity(Lcom/android/launcher3/SettingsActivity;)V
    .locals 1
    .param p1, "activity"    # Lcom/android/launcher3/SettingsActivity;

    .prologue
    .line 532
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/android/launcher3/LauncherAppState;->sSettingsActivity:Ljava/lang/ref/WeakReference;

    .line 533
    return-void
.end method

.method public writeEasyModeEnabled(Z)V
    .locals 5
    .param p1, "isEasyMode"    # Z

    .prologue
    .line 306
    iput-boolean p1, p0, Lcom/android/launcher3/LauncherAppState;->mIsEasyMode:Z

    .line 308
    sget-object v2, Lcom/android/launcher3/LauncherAppState;->sContext:Landroid/content/Context;

    .line 309
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 308
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 310
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 311
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "easy_mode"

    iget-boolean v3, p0, Lcom/android/launcher3/LauncherAppState;->mIsEasyMode:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 312
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 313
    return-void
.end method

.method public writeHomeOnlyModeEnabled(Z)V
    .locals 5
    .param p1, "isHomeOnlyMode"    # Z

    .prologue
    const/4 v4, 0x0

    .line 336
    iput-boolean p1, p0, Lcom/android/launcher3/LauncherAppState;->mIsHomeOnlyMode:Z

    .line 338
    sget-object v2, Lcom/android/launcher3/LauncherAppState;->sContext:Landroid/content/Context;

    .line 339
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v3

    .line 338
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 340
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 341
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "home_only_mode"

    iget-boolean v3, p0, Lcom/android/launcher3/LauncherAppState;->mIsHomeOnlyMode:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 342
    const-string v2, "home_layout_settings_apply_count"

    const-string v3, "home_layout_settings_apply_count"

    .line 343
    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    .line 342
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 344
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 345
    return-void
.end method
