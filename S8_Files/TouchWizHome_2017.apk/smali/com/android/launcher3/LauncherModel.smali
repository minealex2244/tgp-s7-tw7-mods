.class public Lcom/android/launcher3/LauncherModel;
.super Landroid/content/BroadcastReceiver;
.source "LauncherModel.java"

# interfaces
.implements Lcom/android/launcher3/common/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/LauncherModel$OnAllAppItemListLoadCompletedListener;,
        Lcom/android/launcher3/LauncherModel$OnRefreshLiveIconListener;,
        Lcom/android/launcher3/LauncherModel$OnBadgeBindingCompletedLisnter;,
        Lcom/android/launcher3/LauncherModel$OnLauncherBindingItemsCompletedListener;,
        Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;,
        Lcom/android/launcher3/LauncherModel$LoaderTask;,
        Lcom/android/launcher3/LauncherModel$Callbacks;
    }
.end annotation


# static fields
.field public static final ACTION_EDM_UNINSTALL_STATUS_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.EDM_UNINSTALL_STATUS_INTERNAL"

.field public static final ACTION_SPR_FORCE_REFRESH:Ljava/lang/String; = "com.sec.sprextension.FORCE_LAUNCHER_REFRESH"

.field public static final ACTION_STK_TITLE_IS_LOADED:Ljava/lang/String; = "android.intent.action.STK_TITLE_IS_LOADED"

.field static final DEBUG_LOADERS:Z = true

.field private static final DEBUG_RECEIVER:Z = false

.field public static final ICON_BACKGROUNDS_CHANGED:Ljava/lang/String; = "com.samsung.settings.ICON_BACKGROUNDS_CHANGED"

.field static final TAG:Ljava/lang/String; = "Launcher.Model"

.field static final sBgLock:Ljava/lang/Object;

.field private static final sPackageChangeRunnables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field static final sPendingPackages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/launcher3/common/compat/UserHandleCompat;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sWorker:Landroid/os/Handler;

.field public static final sWorkerThread:Landroid/os/HandlerThread;


# instance fields
.field private mAllAppsLoaded:Z

.field private final mApp:Lcom/android/launcher3/LauncherAppState;

.field private final mAppsCanBeOnRemoveableStorage:Z

.field mAppsLoader:Lcom/android/launcher3/allapps/model/AppsLoader;

.field private mBadgeCache:Lcom/android/launcher3/common/model/BadgeCache;

.field private mCallbacks:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/launcher3/LauncherModel$Callbacks;",
            ">;"
        }
    .end annotation
.end field

.field private mDisableableAppCache:Lcom/android/launcher3/common/model/DisableableAppCache;

.field private mHandler:Lcom/android/launcher3/common/model/DeferredHandler;

.field private mHasLoaderCompletedOnce:Z

.field mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

.field private mIconCache:Lcom/android/launcher3/common/model/IconCache;

.field private mIsLoaderTaskRunning:Z

.field private mLoaderTask:Lcom/android/launcher3/LauncherModel$LoaderTask;

.field private final mLock:Ljava/lang/Object;

.field public mOnAllAppItemListLoadCompletedListener:Lcom/android/launcher3/LauncherModel$OnAllAppItemListLoadCompletedListener;

.field private mOnBadgeBindingCompletedLisnter:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/LauncherModel$OnBadgeBindingCompletedLisnter;",
            ">;"
        }
    .end annotation
.end field

.field private mOnLauncherBindingItemsCompletedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/LauncherModel$OnLauncherBindingItemsCompletedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOnRefreshLiveIconListener:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/LauncherModel$OnRefreshLiveIconListener;",
            ">;"
        }
    .end annotation
.end field

.field mWidgetLoader:Lcom/android/launcher3/widget/model/WidgetLoader;

.field private mWorkspaceLoaded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 112
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "launcher-loader"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    .line 114
    sget-object v0, Lcom/android/launcher3/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 117
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/android/launcher3/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/launcher3/LauncherModel;->sWorker:Landroid/os/Handler;

    .line 135
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/launcher3/LauncherModel;->sBgLock:Ljava/lang/Object;

    .line 138
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/launcher3/LauncherModel;->sPendingPackages:Ljava/util/HashMap;

    .line 147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher3/LauncherModel;->sPackageChangeRunnables:Ljava/util/ArrayList;

    return-void
.end method

.method constructor <init>(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/common/model/IconCache;Lcom/android/launcher3/common/model/BadgeCache;Lcom/android/launcher3/common/model/DisableableAppCache;)V
    .locals 6
    .param p1, "app"    # Lcom/android/launcher3/LauncherAppState;
    .param p2, "iconCache"    # Lcom/android/launcher3/common/model/IconCache;
    .param p3, "badgeCache"    # Lcom/android/launcher3/common/model/BadgeCache;
    .param p4, "disableableAppCache"    # Lcom/android/launcher3/common/model/DisableableAppCache;

    .prologue
    .line 158
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 106
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/LauncherModel;->mLock:Ljava/lang/Object;

    .line 107
    new-instance v0, Lcom/android/launcher3/common/model/DeferredHandler;

    invoke-direct {v0}, Lcom/android/launcher3/common/model/DeferredHandler;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/LauncherModel;->mHandler:Lcom/android/launcher3/common/model/DeferredHandler;

    .line 1376
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/LauncherModel;->mOnLauncherBindingItemsCompletedListeners:Ljava/util/ArrayList;

    .line 1378
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/LauncherModel;->mOnBadgeBindingCompletedLisnter:Ljava/util/ArrayList;

    .line 1380
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/LauncherModel;->mOnRefreshLiveIconListener:Ljava/util/ArrayList;

    .line 159
    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 160
    .local v1, "context":Landroid/content/Context;
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/LauncherModel;->mAppsCanBeOnRemoveableStorage:Z

    .line 161
    iput-object p1, p0, Lcom/android/launcher3/LauncherModel;->mApp:Lcom/android/launcher3/LauncherAppState;

    .line 162
    new-instance v0, Lcom/android/launcher3/home/HomeLoader;

    move-object v2, p1

    move-object v3, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/home/HomeLoader;-><init>(Landroid/content/Context;Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/LauncherModel;Lcom/android/launcher3/common/model/IconCache;Lcom/android/launcher3/common/model/BadgeCache;)V

    iput-object v0, p0, Lcom/android/launcher3/LauncherModel;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    .line 163
    new-instance v0, Lcom/android/launcher3/allapps/model/AppsLoader;

    move-object v2, p1

    move-object v3, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/allapps/model/AppsLoader;-><init>(Landroid/content/Context;Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/LauncherModel;Lcom/android/launcher3/common/model/IconCache;Lcom/android/launcher3/common/model/BadgeCache;)V

    iput-object v0, p0, Lcom/android/launcher3/LauncherModel;->mAppsLoader:Lcom/android/launcher3/allapps/model/AppsLoader;

    .line 164
    new-instance v0, Lcom/android/launcher3/widget/model/WidgetLoader;

    invoke-direct {v0, p1}, Lcom/android/launcher3/widget/model/WidgetLoader;-><init>(Lcom/android/launcher3/LauncherAppState;)V

    iput-object v0, p0, Lcom/android/launcher3/LauncherModel;->mWidgetLoader:Lcom/android/launcher3/widget/model/WidgetLoader;

    .line 165
    iput-object p2, p0, Lcom/android/launcher3/LauncherModel;->mIconCache:Lcom/android/launcher3/common/model/IconCache;

    .line 166
    iput-object p3, p0, Lcom/android/launcher3/LauncherModel;->mBadgeCache:Lcom/android/launcher3/common/model/BadgeCache;

    .line 167
    iput-object p4, p0, Lcom/android/launcher3/LauncherModel;->mDisableableAppCache:Lcom/android/launcher3/common/model/DisableableAppCache;

    .line 168
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/LauncherModel;)Lcom/android/launcher3/common/model/IconCache;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/LauncherModel;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mIconCache:Lcom/android/launcher3/common/model/IconCache;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher3/LauncherModel;[Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/LauncherModel;
    .param p1, "x1"    # [Ljava/lang/String;
    .param p2, "x2"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .param p3, "x3"    # Z

    .prologue
    .line 88
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/LauncherModel;->loadWidgets([Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/launcher3/LauncherModel;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/LauncherModel;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/launcher3/LauncherModel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/LauncherModel;

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/android/launcher3/LauncherModel;->mIsLoaderTaskRunning:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/launcher3/LauncherModel;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/LauncherModel;
    .param p1, "x1"    # Z

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/android/launcher3/LauncherModel;->mIsLoaderTaskRunning:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/launcher3/LauncherModel;)Lcom/android/launcher3/LauncherAppState;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/LauncherModel;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mApp:Lcom/android/launcher3/LauncherAppState;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/launcher3/LauncherModel;)Lcom/android/launcher3/LauncherModel$LoaderTask;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/LauncherModel;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mLoaderTask:Lcom/android/launcher3/LauncherModel$LoaderTask;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/launcher3/LauncherModel;Lcom/android/launcher3/LauncherModel$LoaderTask;)Lcom/android/launcher3/LauncherModel$LoaderTask;
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/LauncherModel;
    .param p1, "x1"    # Lcom/android/launcher3/LauncherModel$LoaderTask;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/launcher3/LauncherModel;->mLoaderTask:Lcom/android/launcher3/LauncherModel$LoaderTask;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/launcher3/LauncherModel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/LauncherModel;

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/android/launcher3/LauncherModel;->mHasLoaderCompletedOnce:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/launcher3/LauncherModel;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/LauncherModel;
    .param p1, "x1"    # Z

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/android/launcher3/LauncherModel;->mHasLoaderCompletedOnce:Z

    return p1
.end method

.method static synthetic access$1500()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/android/launcher3/LauncherModel;->sPackageChangeRunnables:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/launcher3/LauncherModel;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/LauncherModel;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$1700(Landroid/content/Context;Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/android/launcher3/common/compat/UserHandleCompat;

    .prologue
    .line 88
    invoke-static {p0, p1, p2}, Lcom/android/launcher3/LauncherModel;->isPackageDisabled(Landroid/content/Context;Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/launcher3/LauncherModel;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/LauncherModel;
    .param p1, "x1"    # Z

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/android/launcher3/LauncherModel;->updateWidgetsProviders(Z)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/launcher3/LauncherModel;)Lcom/android/launcher3/common/model/BadgeCache;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/LauncherModel;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mBadgeCache:Lcom/android/launcher3/common/model/BadgeCache;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher3/LauncherModel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/LauncherModel;

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/android/launcher3/LauncherModel;->mWorkspaceLoaded:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/launcher3/LauncherModel;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/LauncherModel;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/android/launcher3/LauncherModel;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/launcher3/LauncherModel;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/LauncherModel;
    .param p1, "x1"    # Z

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/android/launcher3/LauncherModel;->mWorkspaceLoaded:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/launcher3/LauncherModel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/LauncherModel;

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/android/launcher3/LauncherModel;->mAllAppsLoaded:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/launcher3/LauncherModel;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/LauncherModel;
    .param p1, "x1"    # Z

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/android/launcher3/LauncherModel;->mAllAppsLoaded:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/launcher3/LauncherModel;)Lcom/android/launcher3/common/model/DisableableAppCache;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/LauncherModel;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mDisableableAppCache:Lcom/android/launcher3/common/model/DisableableAppCache;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/launcher3/LauncherModel;)Lcom/android/launcher3/common/model/DeferredHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/LauncherModel;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mHandler:Lcom/android/launcher3/common/model/DeferredHandler;

    return-object v0
.end method

.method private doLocaleChange()V
    .locals 1

    .prologue
    .line 431
    new-instance v0, Lcom/android/launcher3/LauncherModel$2;

    invoke-direct {v0, p0}, Lcom/android/launcher3/LauncherModel$2;-><init>(Lcom/android/launcher3/LauncherModel;)V

    invoke-static {v0}, Lcom/android/launcher3/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 439
    return-void
.end method

.method private forceIconReload()V
    .locals 2

    .prologue
    .line 414
    const-string v0, "Launcher.Model"

    const-string v1, "forceIconReload"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mIconCache:Lcom/android/launcher3/common/model/IconCache;

    invoke-virtual {v0}, Lcom/android/launcher3/common/model/IconCache;->clearDB()V

    .line 416
    new-instance v0, Lcom/android/launcher3/LauncherModel$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/LauncherModel$1;-><init>(Lcom/android/launcher3/LauncherModel;)V

    invoke-static {v0}, Lcom/android/launcher3/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 428
    return-void
.end method

.method public static getMarketIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1269
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "market"

    .line 1271
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "details"

    .line 1272
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "id"

    .line 1273
    invoke-virtual {v1, v2, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 1274
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 1270
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getOmcIntent()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 1278
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1279
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.app.omcagent"

    const-string v3, "com.samsung.android.app.omcagent.ui.application.AppInstallerActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1281
    return-object v0
.end method

.method public static getWorkerLooper()Landroid/os/Looper;
    .locals 1

    .prologue
    .line 1335
    sget-object v0, Lcom/android/launcher3/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method private static isPackageDisabled(Landroid/content/Context;Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;

    .prologue
    .line 1243
    invoke-static {p0}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/LauncherAppsCompat;

    move-result-object v0

    .line 1244
    .local v0, "launcherApps":Lcom/android/launcher3/common/compat/LauncherAppsCompat;
    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->isPackageEnabledForProfile(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isValidPackage(Landroid/content/Context;Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;

    .prologue
    .line 1261
    if-nez p1, :cond_0

    .line 1262
    const/4 v1, 0x0

    .line 1265
    :goto_0
    return v1

    .line 1264
    :cond_0
    invoke-static {p0}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/LauncherAppsCompat;

    move-result-object v0

    .line 1265
    .local v0, "launcherApps":Lcom/android/launcher3/common/compat/LauncherAppsCompat;
    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->isPackageEnabledForProfile(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Z

    move-result v1

    goto :goto_0
.end method

.method public static isValidPackageActivity(Landroid/content/Context;Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cn"    # Landroid/content/ComponentName;
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;

    .prologue
    const/4 v1, 0x0

    .line 1249
    if-nez p1, :cond_1

    .line 1256
    :cond_0
    :goto_0
    return v1

    .line 1252
    :cond_1
    invoke-static {p0}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/LauncherAppsCompat;

    move-result-object v0

    .line 1253
    .local v0, "launcherApps":Lcom/android/launcher3/common/compat/LauncherAppsCompat;
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p2}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->isPackageEnabledForProfile(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1256
    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->isActivityEnabledForProfile(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)Z

    move-result v1

    goto :goto_0
.end method

.method public static isValidProvider(Landroid/appwidget/AppWidgetProviderInfo;)Z
    .locals 1
    .param p0, "provider"    # Landroid/appwidget/AppWidgetProviderInfo;

    .prologue
    .line 1285
    if-eqz p0, :cond_0

    iget-object v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 1286
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isValidStateInKnoxMode(Lcom/android/launcher3/common/compat/UserHandleCompat;)Z
    .locals 3
    .param p1, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;

    .prologue
    .line 1517
    const-string v0, "Launcher.Model"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isValidStateInKnoxMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/launcher3/Utilities;->isKnoxMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " user:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1518
    invoke-static {}, Lcom/android/launcher3/Utilities;->isKnoxMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1519
    const/4 v0, 0x0

    .line 1521
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private loadWidgets([Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;Z)V
    .locals 1
    .param p1, "packages"    # [Ljava/lang/String;
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .param p3, "refresh"    # Z

    .prologue
    .line 1351
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mWidgetLoader:Lcom/android/launcher3/widget/model/WidgetLoader;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/launcher3/widget/model/WidgetLoader;->notifyDirty([Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;Z)V

    .line 1352
    return-void
.end method

.method private runOnMainThread(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 175
    sget-object v0, Lcom/android/launcher3/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 177
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mHandler:Lcom/android/launcher3/common/model/DeferredHandler;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/model/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 181
    :goto_0
    return-void

    .line 179
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public static runOnWorkerThread(Ljava/lang/Runnable;)V
    .locals 2
    .param p0, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 188
    sget-object v0, Lcom/android/launcher3/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 189
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 194
    :goto_0
    return-void

    .line 192
    :cond_0
    sget-object v0, Lcom/android/launcher3/LauncherModel;->sWorker:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private stopLoaderLocked()V
    .locals 3

    .prologue
    .line 484
    const-string v1, "Launcher.Model"

    const-string v2, "stopLoaderLocked"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mLoaderTask:Lcom/android/launcher3/LauncherModel$LoaderTask;

    .line 486
    .local v0, "oldTask":Lcom/android/launcher3/LauncherModel$LoaderTask;
    if-eqz v0, :cond_0

    .line 487
    const-string v1, "Launcher.Model"

    const-string v2, "oldTask is not null. call stop"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel$LoaderTask;->stopLocked()V

    .line 490
    :cond_0
    return-void
.end method

.method private unbindItemInfosAndClearQueuedBindRunnables()V
    .locals 2

    .prologue
    .line 197
    sget-object v0, Lcom/android/launcher3/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 198
    invoke-static {}, Lcom/android/launcher3/util/TestHelper;->isRoboUnitTest()Z

    move-result v0

    if-nez v0, :cond_0

    .line 199
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Expected unbindLauncherItemInfos() to be called from the main thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 203
    :cond_0
    const-string v0, "Launcher.Model"

    const-string v1, "unbindItemInfosAndClearQueuedBindRunnables: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeLoader;->clearDeferredBindRunnable()V

    .line 206
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mAppsLoader:Lcom/android/launcher3/allapps/model/AppsLoader;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/model/AppsLoader;->clearDeferredBindRunnable()V

    .line 209
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mHandler:Lcom/android/launcher3/common/model/DeferredHandler;

    invoke-virtual {v0}, Lcom/android/launcher3/common/model/DeferredHandler;->cancelAll()V

    .line 211
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeLoader;->unbindItemsOnMainThread()V

    .line 212
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mAppsLoader:Lcom/android/launcher3/allapps/model/AppsLoader;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/model/AppsLoader;->unbindItemsOnMainThread()V

    .line 213
    return-void
.end method

.method private updateWidgetsProviders(Z)V
    .locals 1
    .param p1, "refresh"    # Z

    .prologue
    .line 1156
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/launcher3/home/HomeLoader;->getWidgetProviders(Landroid/content/Context;Z)Ljava/util/List;

    .line 1157
    return-void
.end method

.method private updateZeroPage(ILjava/lang/String;)Z
    .locals 2
    .param p1, "op"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 229
    sget-object v1, Lcom/android/launcher3/home/ZeroPageController;->sZeroPageCompName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 230
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->getCallback()Lcom/android/launcher3/LauncherModel$Callbacks;

    move-result-object v0

    .line 231
    .local v0, "callbacks":Lcom/android/launcher3/LauncherModel$Callbacks;
    if-eqz v0, :cond_0

    .line 232
    invoke-interface {v0, p1}, Lcom/android/launcher3/LauncherModel$Callbacks;->updateZeroPage(I)V

    .line 234
    :cond_0
    const/4 v1, 0x1

    .line 236
    .end local v0    # "callbacks":Lcom/android/launcher3/LauncherModel$Callbacks;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public OnAllAppItemListLoadCompleted(Ljava/util/ArrayList;)V
    .locals 5
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
    .line 1415
    .local p1, "appItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    iget-object v3, p0, Lcom/android/launcher3/LauncherModel;->mOnAllAppItemListLoadCompletedListener:Lcom/android/launcher3/LauncherModel$OnAllAppItemListLoadCompletedListener;

    if-eqz v3, :cond_3

    .line 1416
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1417
    .local v0, "allAppItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 1418
    .local v2, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    instance-of v4, v2, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v4, :cond_0

    move-object v1, v2

    .line 1419
    check-cast v1, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 1420
    .local v1, "info":Lcom/android/launcher3/common/base/item/IconInfo;
    iget-object v4, v1, Lcom/android/launcher3/common/base/item/IconInfo;->mIcon:Landroid/graphics/Bitmap;

    if-nez v4, :cond_1

    .line 1421
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/common/model/IconCache;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/launcher3/common/base/item/IconInfo;->getIcon(Lcom/android/launcher3/common/model/IconCache;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v1, Lcom/android/launcher3/common/base/item/IconInfo;->mIcon:Landroid/graphics/Bitmap;

    .line 1423
    :cond_1
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/item/IconInfo;->isHiddenByXML()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1}, Lcom/android/launcher3/common/base/item/IconInfo;->isHiddenByGame()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1424
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1428
    .end local v1    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v2    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_2
    iget-object v3, p0, Lcom/android/launcher3/LauncherModel;->mOnAllAppItemListLoadCompletedListener:Lcom/android/launcher3/LauncherModel$OnAllAppItemListLoadCompletedListener;

    invoke-interface {v3, v0}, Lcom/android/launcher3/LauncherModel$OnAllAppItemListLoadCompletedListener;->onAllAppItemListLoadCompleted(Ljava/util/ArrayList;)V

    .line 1430
    .end local v0    # "allAppItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    :cond_3
    return-void
.end method

.method public dumpState()V
    .locals 3

    .prologue
    .line 1316
    const-string v0, "Launcher.Model"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCallbacks="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    const-string v0, "Launcher.Model"

    const-string v1, "mAllAppsList.added"

    iget-object v2, p0, Lcom/android/launcher3/LauncherModel;->mAppsLoader:Lcom/android/launcher3/allapps/model/AppsLoader;

    iget-object v2, v2, Lcom/android/launcher3/allapps/model/AppsLoader;->added:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/common/base/item/IconInfo;->dumpIconInfoList(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1318
    const-string v0, "Launcher.Model"

    const-string v1, "mAllAppsList.removed"

    iget-object v2, p0, Lcom/android/launcher3/LauncherModel;->mAppsLoader:Lcom/android/launcher3/allapps/model/AppsLoader;

    iget-object v2, v2, Lcom/android/launcher3/allapps/model/AppsLoader;->removed:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/common/base/item/IconInfo;->dumpIconInfoList(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1319
    const-string v0, "Launcher.Model"

    const-string v1, "mAllAppsList.modified"

    iget-object v2, p0, Lcom/android/launcher3/LauncherModel;->mAppsLoader:Lcom/android/launcher3/allapps/model/AppsLoader;

    iget-object v2, v2, Lcom/android/launcher3/allapps/model/AppsLoader;->modified:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/common/base/item/IconInfo;->dumpIconInfoList(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1320
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mLoaderTask:Lcom/android/launcher3/LauncherModel$LoaderTask;

    if-eqz v0, :cond_0

    .line 1321
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mLoaderTask:Lcom/android/launcher3/LauncherModel$LoaderTask;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel$LoaderTask;->dumpState()V

    .line 1325
    :goto_0
    return-void

    .line 1323
    :cond_0
    const-string v0, "Launcher.Model"

    const-string v1, "mLoaderTask=null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public enqueuePackageUpdated(Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;)V
    .locals 1
    .param p1, "task"    # Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;

    .prologue
    .line 881
    sget-object v0, Lcom/android/launcher3/LauncherModel;->sWorker:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 882
    return-void
.end method

.method public forceReload()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 442
    invoke-virtual {p0, v0, v0}, Lcom/android/launcher3/LauncherModel;->resetLoadedState(ZZ)V

    .line 447
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->startLoaderFromBackground()V

    .line 448
    return-void
.end method

.method public getAppsLoader()Lcom/android/launcher3/allapps/model/AppsLoader;
    .locals 1

    .prologue
    .line 1347
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mAppsLoader:Lcom/android/launcher3/allapps/model/AppsLoader;

    return-object v0
.end method

.method public getCallback()Lcom/android/launcher3/LauncherModel$Callbacks;
    .locals 1

    .prologue
    .line 1328
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherModel$Callbacks;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDisableableAppCache()Lcom/android/launcher3/common/model/DisableableAppCache;
    .locals 1

    .prologue
    .line 1529
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mDisableableAppCache:Lcom/android/launcher3/common/model/DisableableAppCache;

    return-object v0
.end method

.method public getHandler()Lcom/android/launcher3/common/model/DeferredHandler;
    .locals 1

    .prologue
    .line 1339
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mHandler:Lcom/android/launcher3/common/model/DeferredHandler;

    return-object v0
.end method

.method public getHomeLoader()Lcom/android/launcher3/home/HomeLoader;
    .locals 1

    .prologue
    .line 1343
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    return-object v0
.end method

.method public getLoaderTask()Lcom/android/launcher3/LauncherModel$LoaderTask;
    .locals 1

    .prologue
    .line 1525
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mLoaderTask:Lcom/android/launcher3/LauncherModel$LoaderTask;

    return-object v0
.end method

.method public getWidgetsLoader()Lcom/android/launcher3/widget/model/WidgetLoader;
    .locals 1

    .prologue
    .line 1355
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mWidgetLoader:Lcom/android/launcher3/widget/model/WidgetLoader;

    return-object v0
.end method

.method public handleSCloudRestoreComplete(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1452
    const-string v1, "Launcher.Model"

    const-string v2, "handleSCloudRestoreComplete"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1454
    new-instance v0, Lcom/android/launcher3/LauncherModel$9;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/LauncherModel$9;-><init>(Lcom/android/launcher3/LauncherModel;Landroid/content/Context;)V

    .line 1513
    .local v0, "r":Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/android/launcher3/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 1514
    return-void
.end method

.method public initialize(Lcom/android/launcher3/LauncherModel$Callbacks;)V
    .locals 2
    .param p1, "callbacks"    # Lcom/android/launcher3/LauncherModel$Callbacks;

    .prologue
    .line 220
    iget-object v1, p0, Lcom/android/launcher3/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 223
    :try_start_0
    invoke-direct {p0}, Lcom/android/launcher3/LauncherModel;->unbindItemInfosAndClearQueuedBindRunnables()V

    .line 224
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/launcher3/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    .line 225
    monitor-exit v1

    .line 226
    return-void

    .line 225
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isCurrentCallbacks(Lcom/android/launcher3/LauncherModel$Callbacks;)Z
    .locals 1
    .param p1, "callbacks"    # Lcom/android/launcher3/LauncherModel$Callbacks;

    .prologue
    .line 493
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadAllAppItemList()V
    .locals 1

    .prologue
    .line 1224
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHomeModeChange()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1225
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1226
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeLoader;->getAllAppItemInHome()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherModel;->OnAllAppItemListLoadCompleted(Ljava/util/ArrayList;)V

    .line 1230
    :goto_0
    return-void

    .line 1228
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mAppsLoader:Lcom/android/launcher3/allapps/model/AppsLoader;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/model/AppsLoader;->getAllAppItemInApps()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherModel;->OnAllAppItemListLoadCompleted(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public loadWidgetsAndShortcuts([Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;Z)V
    .locals 1
    .param p1, "packages"    # [Ljava/lang/String;
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .param p3, "refresh"    # Z

    .prologue
    .line 1140
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/LauncherModel;->loadWidgets([Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;Z)V

    .line 1142
    new-instance v0, Lcom/android/launcher3/LauncherModel$3;

    invoke-direct {v0, p0, p3}, Lcom/android/launcher3/LauncherModel$3;-><init>(Lcom/android/launcher3/LauncherModel;Z)V

    invoke-static {v0}, Lcom/android/launcher3/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 1148
    return-void
.end method

.method public onBadgeBindingCompleted(Ljava/util/ArrayList;)V
    .locals 3
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
    .line 1439
    .local p1, "badgeItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    iget-object v1, p0, Lcom/android/launcher3/LauncherModel;->mOnBadgeBindingCompletedLisnter:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherModel$OnBadgeBindingCompletedLisnter;

    .line 1440
    .local v0, "listener":Lcom/android/launcher3/LauncherModel$OnBadgeBindingCompletedLisnter;
    invoke-interface {v0, p1}, Lcom/android/launcher3/LauncherModel$OnBadgeBindingCompletedLisnter;->onBadgeBindingCompleted(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 1442
    .end local v0    # "listener":Lcom/android/launcher3/LauncherModel$OnBadgeBindingCompletedLisnter;
    :cond_0
    return-void
.end method

.method public onLauncherBindingItemsCompleted()V
    .locals 3

    .prologue
    .line 1433
    iget-object v1, p0, Lcom/android/launcher3/LauncherModel;->mOnLauncherBindingItemsCompletedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherModel$OnLauncherBindingItemsCompletedListener;

    .line 1434
    .local v0, "listener":Lcom/android/launcher3/LauncherModel$OnLauncherBindingItemsCompletedListener;
    invoke-interface {v0}, Lcom/android/launcher3/LauncherModel$OnLauncherBindingItemsCompletedListener;->onLauncherBindingItemsCompleted()V

    goto :goto_0

    .line 1436
    .end local v0    # "listener":Lcom/android/launcher3/LauncherModel$OnLauncherBindingItemsCompletedListener;
    :cond_0
    return-void
.end method

.method public onPackageAdded(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;

    .prologue
    .line 269
    const-string v1, "Launcher.Model"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPackageAdded:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " user:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    invoke-direct {p0, p2}, Lcom/android/launcher3/LauncherModel;->isValidStateInKnoxMode(Lcom/android/launcher3/common/compat/UserHandleCompat;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 272
    :cond_1
    const/4 v0, 0x1

    .line 274
    .local v0, "op":I
    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/LauncherModel;->updateZeroPage(ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 278
    new-instance v1, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, p0, v0, v2, p2}, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;-><init>(Lcom/android/launcher3/LauncherModel;I[Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    invoke-virtual {p0, v1}, Lcom/android/launcher3/LauncherModel;->enqueuePackageUpdated(Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;)V

    goto :goto_0
.end method

.method public onPackageChanged(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;

    .prologue
    .line 241
    const-string v1, "Launcher.Model"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPackageChanged:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " user:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    invoke-direct {p0, p2}, Lcom/android/launcher3/LauncherModel;->isValidStateInKnoxMode(Lcom/android/launcher3/common/compat/UserHandleCompat;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 251
    :cond_0
    :goto_0
    return-void

    .line 244
    :cond_1
    const/4 v0, 0x2

    .line 246
    .local v0, "op":I
    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/LauncherModel;->updateZeroPage(ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 250
    new-instance v1, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, p0, v0, v2, p2}, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;-><init>(Lcom/android/launcher3/LauncherModel;I[Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    invoke-virtual {p0, v1}, Lcom/android/launcher3/LauncherModel;->enqueuePackageUpdated(Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;)V

    goto :goto_0
.end method

.method public onPackageIconsUpdated(Ljava/util/HashSet;Lcom/android/launcher3/common/compat/UserHandleCompat;)V
    .locals 1
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/launcher3/common/compat/UserHandleCompat;",
            ")V"
        }
    .end annotation

    .prologue
    .line 873
    .local p1, "updatedPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/home/HomeLoader;->updateShortcut(Ljava/util/HashSet;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    .line 874
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mAppsLoader:Lcom/android/launcher3/allapps/model/AppsLoader;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/allapps/model/AppsLoader;->updateIconsAndLabels(Ljava/util/HashSet;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    .line 878
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;

    .prologue
    .line 255
    const-string v1, "Launcher.Model"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPackageRemoved:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " user:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    invoke-direct {p0, p2}, Lcom/android/launcher3/LauncherModel;->isValidStateInKnoxMode(Lcom/android/launcher3/common/compat/UserHandleCompat;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 265
    :cond_0
    :goto_0
    return-void

    .line 258
    :cond_1
    const/4 v0, 0x3

    .line 260
    .local v0, "op":I
    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/LauncherModel;->updateZeroPage(ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 264
    new-instance v1, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, p0, v0, v2, p2}, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;-><init>(Lcom/android/launcher3/LauncherModel;I[Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    invoke-virtual {p0, v1}, Lcom/android/launcher3/LauncherModel;->enqueuePackageUpdated(Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;)V

    goto :goto_0
.end method

.method public onPackagesAvailable([Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;Z)V
    .locals 2
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .param p3, "replacing"    # Z

    .prologue
    .line 284
    invoke-direct {p0, p2}, Lcom/android/launcher3/LauncherModel;->isValidStateInKnoxMode(Lcom/android/launcher3/common/compat/UserHandleCompat;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 298
    :cond_0
    :goto_0
    return-void

    .line 286
    :cond_1
    if-nez p3, :cond_2

    .line 287
    new-instance v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;-><init>(Lcom/android/launcher3/LauncherModel;I[Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherModel;->enqueuePackageUpdated(Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;)V

    .line 288
    iget-boolean v0, p0, Lcom/android/launcher3/LauncherModel;->mAppsCanBeOnRemoveableStorage:Z

    if-eqz v0, :cond_0

    .line 292
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->startLoaderFromBackground()V

    goto :goto_0

    .line 296
    :cond_2
    new-instance v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;-><init>(Lcom/android/launcher3/LauncherModel;I[Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherModel;->enqueuePackageUpdated(Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;)V

    goto :goto_0
.end method

.method public onPackagesSuspended([Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)V
    .locals 2
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;

    .prologue
    .line 314
    invoke-direct {p0, p2}, Lcom/android/launcher3/LauncherModel;->isValidStateInKnoxMode(Lcom/android/launcher3/common/compat/UserHandleCompat;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 317
    :goto_0
    return-void

    .line 316
    :cond_0
    new-instance v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;-><init>(Lcom/android/launcher3/LauncherModel;I[Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherModel;->enqueuePackageUpdated(Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;)V

    goto :goto_0
.end method

.method public onPackagesUnavailable([Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;Z)V
    .locals 2
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .param p3, "replacing"    # Z

    .prologue
    .line 303
    invoke-direct {p0, p2}, Lcom/android/launcher3/LauncherModel;->isValidStateInKnoxMode(Lcom/android/launcher3/common/compat/UserHandleCompat;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 310
    :cond_0
    :goto_0
    return-void

    .line 305
    :cond_1
    if-nez p3, :cond_0

    .line 306
    new-instance v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;-><init>(Lcom/android/launcher3/LauncherModel;I[Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherModel;->enqueuePackageUpdated(Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;)V

    goto :goto_0
.end method

.method public onPackagesUnsuspended([Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)V
    .locals 2
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;

    .prologue
    .line 321
    invoke-direct {p0, p2}, Lcom/android/launcher3/LauncherModel;->isValidStateInKnoxMode(Lcom/android/launcher3/common/compat/UserHandleCompat;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 324
    :goto_0
    return-void

    .line 323
    :cond_0
    new-instance v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;-><init>(Lcom/android/launcher3/LauncherModel;I[Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherModel;->enqueuePackageUpdated(Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;)V

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 334
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 335
    .local v0, "action":Ljava/lang/String;
    const-string v10, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 336
    invoke-direct {p0}, Lcom/android/launcher3/LauncherModel;->doLocaleChange()V

    .line 411
    :cond_0
    :goto_0
    return-void

    .line 337
    :cond_1
    const-string v10, "com.samsung.settings.ICON_BACKGROUNDS_CHANGED"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 338
    invoke-static {p1}, Lcom/android/launcher3/util/ShortcutTray;->checkIconTrayEnabled(Landroid/content/Context;)V

    .line 339
    invoke-direct {p0}, Lcom/android/launcher3/LauncherModel;->forceIconReload()V

    goto :goto_0

    .line 340
    :cond_2
    const-string v10, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    const-string v10, "android.intent.action.MANAGED_PROFILE_REMOVED"

    .line 341
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 342
    :cond_3
    invoke-static {p1}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/UserManagerCompat;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/launcher3/common/compat/UserManagerCompat;->enableAndResetCache()V

    .line 344
    iget-object v10, p0, Lcom/android/launcher3/LauncherModel;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    invoke-virtual {v10}, Lcom/android/launcher3/home/HomeLoader;->updateUsersList()V

    .line 345
    iget-object v10, p0, Lcom/android/launcher3/LauncherModel;->mAppsLoader:Lcom/android/launcher3/allapps/model/AppsLoader;

    invoke-virtual {v10}, Lcom/android/launcher3/allapps/model/AppsLoader;->updateUsersList()V

    .line 347
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 348
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v10, "com.samsung.sec.knox.EXTRA_PERSONA_ID"

    invoke-virtual {v1, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 349
    .local v9, "userId":I
    const-string v10, "Launcher.Model"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "userId:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    invoke-static {v9}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v10

    if-nez v10, :cond_0

    .line 351
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->forceReload()V

    goto :goto_0

    .line 353
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v9    # "userId":I
    :cond_4
    const-string v10, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    const-string v10, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    .line 354
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 355
    :cond_5
    invoke-static/range {p2 .. p2}, Lcom/android/launcher3/common/compat/UserHandleCompat;->fromIntent(Landroid/content/Intent;)Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v8

    .line 356
    .local v8, "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    if-eqz v8, :cond_0

    .line 357
    new-instance v10, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;

    const/4 v11, 0x7

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/String;

    invoke-direct {v10, p0, v11, v12, v8}, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;-><init>(Lcom/android/launcher3/LauncherModel;I[Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    invoke-virtual {p0, v10}, Lcom/android/launcher3/LauncherModel;->enqueuePackageUpdated(Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;)V

    goto :goto_0

    .line 361
    .end local v8    # "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    :cond_6
    const-string v10, "android.intent.action.STK_TITLE_IS_LOADED"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 362
    const-string v10, "Launcher.Model"

    const-string v11, "receive ACTION_STK_TITLE_IS_LOADED"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v10

    const-string v11, "CscFeature_RIL_FixedStkMenu"

    .line 365
    invoke-virtual {v10, v11}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 366
    .local v3, "isFixedStkMenu":Z
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v10

    const-string v11, "CscFeature_Launcher_FixedStkTitleAs"

    .line 367
    invoke-virtual {v10, v11}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 368
    .local v2, "fixedStkTitle":Ljava/lang/String;
    const-string v10, "gsm.STK_SETUP_MENU"

    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 370
    .local v7, "stkTitleFromSIM":Ljava/lang/String;
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_7

    const-string v10, "NoSIM%"

    invoke-virtual {v2, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 374
    :cond_7
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_0

    .line 378
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v5

    .line 379
    .local v5, "packageName":Ljava/lang/String;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_0

    .line 384
    const-string v10, "Launcher.Model"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ACTION_STK_TITLE_IS_LOADED stkTitleFromSIM = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    const/4 v4, 0x2

    .line 386
    .local v4, "op":I
    if-eqz v3, :cond_8

    .line 387
    new-instance v10, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v5, v11, v12

    const/4 v12, 0x1

    const-string v13, "com.sec.android.app.latin.launcher.stk"

    aput-object v13, v11, v12

    .line 389
    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v12

    invoke-direct {v10, p0, v4, v11, v12}, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;-><init>(Lcom/android/launcher3/LauncherModel;I[Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    .line 387
    invoke-virtual {p0, v10}, Lcom/android/launcher3/LauncherModel;->enqueuePackageUpdated(Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;)V

    goto/16 :goto_0

    .line 391
    :cond_8
    new-instance v10, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v5, v11, v12

    .line 392
    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v12

    invoke-direct {v10, p0, v4, v11, v12}, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;-><init>(Lcom/android/launcher3/LauncherModel;I[Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    .line 391
    invoke-virtual {p0, v10}, Lcom/android/launcher3/LauncherModel;->enqueuePackageUpdated(Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;)V

    goto/16 :goto_0

    .line 394
    .end local v2    # "fixedStkTitle":Ljava/lang/String;
    .end local v3    # "isFixedStkMenu":Z
    .end local v4    # "op":I
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v7    # "stkTitleFromSIM":Ljava/lang/String;
    :cond_9
    const-string v10, "com.sec.sprextension.FORCE_LAUNCHER_REFRESH"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 395
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getLauncherProviderID()Lcom/android/launcher3/LauncherProviderID;

    move-result-object v6

    .line 396
    .local v6, "providerID":Lcom/android/launcher3/LauncherProviderID;
    if-eqz v6, :cond_0

    .line 397
    const-string v10, "Launcher.Model"

    const-string v11, "[SPRINT] FLR Intent received. Refreshing Launcher..."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    invoke-virtual {v6}, Lcom/android/launcher3/LauncherProviderID;->getScreenIndex()I

    move-result v10

    const-string v11, "com.sec.android.app.launcher.home.defaultpage.prefs"

    invoke-static {p1, v10, v11}, Lcom/android/launcher3/Utilities;->setHomeDefaultPageKey(Landroid/content/Context;ILjava/lang/String;)V

    .line 404
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->forceReload()V

    goto/16 :goto_0

    .line 406
    .end local v6    # "providerID":Lcom/android/launcher3/LauncherProviderID;
    :cond_a
    const-string v10, "com.samsung.android.knox.intent.action.EDM_UNINSTALL_STATUS_INTERNAL"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 407
    iget-object v10, p0, Lcom/android/launcher3/LauncherModel;->mDisableableAppCache:Lcom/android/launcher3/common/model/DisableableAppCache;

    if-eqz v10, :cond_0

    .line 408
    iget-object v10, p0, Lcom/android/launcher3/LauncherModel;->mDisableableAppCache:Lcom/android/launcher3/common/model/DisableableAppCache;

    invoke-virtual {v10}, Lcom/android/launcher3/common/model/DisableableAppCache;->getEnterprisePolicyBlockUninstallList()V

    goto/16 :goto_0
.end method

.method public onRefreshLiveIcon()V
    .locals 3

    .prologue
    .line 1445
    iget-object v1, p0, Lcom/android/launcher3/LauncherModel;->mOnRefreshLiveIconListener:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherModel$OnRefreshLiveIconListener;

    .line 1446
    .local v0, "listener":Lcom/android/launcher3/LauncherModel$OnRefreshLiveIconListener;
    invoke-interface {v0}, Lcom/android/launcher3/LauncherModel$OnRefreshLiveIconListener;->onRefreshLiveIcon()V

    goto :goto_0

    .line 1448
    .end local v0    # "listener":Lcom/android/launcher3/LauncherModel$OnRefreshLiveIconListener;
    :cond_0
    return-void
.end method

.method public registerOnAllAppItemListLoadCompletedListener(Lcom/android/launcher3/LauncherModel$OnAllAppItemListLoadCompletedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/launcher3/LauncherModel$OnAllAppItemListLoadCompletedListener;

    .prologue
    .line 1383
    iput-object p1, p0, Lcom/android/launcher3/LauncherModel;->mOnAllAppItemListLoadCompletedListener:Lcom/android/launcher3/LauncherModel$OnAllAppItemListLoadCompletedListener;

    .line 1384
    return-void
.end method

.method public registerOnBadgeBindingCompletedLisnter(Lcom/android/launcher3/LauncherModel$OnBadgeBindingCompletedLisnter;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/launcher3/LauncherModel$OnBadgeBindingCompletedLisnter;

    .prologue
    .line 1391
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mOnBadgeBindingCompletedLisnter:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1392
    return-void
.end method

.method public registerOnLauncherBindingItemsCompletedListener(Lcom/android/launcher3/LauncherModel$OnLauncherBindingItemsCompletedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/launcher3/LauncherModel$OnLauncherBindingItemsCompletedListener;

    .prologue
    .line 1387
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mOnLauncherBindingItemsCompletedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1388
    return-void
.end method

.method public registerOnLiveIconUpdateListener(Lcom/android/launcher3/LauncherModel$OnRefreshLiveIconListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/launcher3/LauncherModel$OnRefreshLiveIconListener;

    .prologue
    .line 1395
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mOnRefreshLiveIconListener:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1396
    return-void
.end method

.method public reloadBadges(Lcom/android/launcher3/LauncherAppState;)V
    .locals 3
    .param p1, "appState"    # Lcom/android/launcher3/LauncherAppState;

    .prologue
    .line 1290
    const-string v1, "Launcher.Model"

    const-string v2, "reloadBadges entered."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1291
    new-instance v0, Lcom/android/launcher3/LauncherModel$8;

    invoke-direct {v0, p0}, Lcom/android/launcher3/LauncherModel$8;-><init>(Lcom/android/launcher3/LauncherModel;)V

    .line 1312
    .local v0, "r":Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/android/launcher3/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 1313
    return-void
.end method

.method public resetLoadedState(ZZ)V
    .locals 2
    .param p1, "resetAllAppsLoaded"    # Z
    .param p2, "resetWorkspaceLoaded"    # Z

    .prologue
    .line 451
    iget-object v1, p0, Lcom/android/launcher3/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 454
    :try_start_0
    invoke-direct {p0}, Lcom/android/launcher3/LauncherModel;->stopLoaderLocked()V

    .line 455
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/LauncherModel;->mAllAppsLoaded:Z

    .line 456
    :cond_0
    if-eqz p2, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/LauncherModel;->mWorkspaceLoaded:Z

    .line 457
    :cond_1
    monitor-exit v1

    .line 458
    return-void

    .line 457
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public startLoader(I)V
    .locals 4
    .param p1, "synchronousBindPage"    # I

    .prologue
    .line 497
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/common/model/DataLoader;->setDeviceProfile(Lcom/android/launcher3/common/deviceprofile/DeviceProfile;)V

    .line 498
    const-string v0, "Launcher.Model"

    const-string v1, "startLoader"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    invoke-static {}, Lcom/android/launcher3/home/ExternalRequestQueue;->enableExternalRequestQueue()V

    .line 501
    iget-object v1, p0, Lcom/android/launcher3/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 504
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeLoader;->clearDeferredBindRunnable()V

    .line 505
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mAppsLoader:Lcom/android/launcher3/allapps/model/AppsLoader;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/model/AppsLoader;->clearDeferredBindRunnable()V

    .line 508
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 510
    invoke-direct {p0}, Lcom/android/launcher3/LauncherModel;->stopLoaderLocked()V

    .line 511
    new-instance v2, Lcom/android/launcher3/LauncherModel$LoaderTask;

    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v3

    if-ltz p1, :cond_1

    move v0, p1

    :goto_0
    invoke-direct {v2, p0, v3, v0}, Lcom/android/launcher3/LauncherModel$LoaderTask;-><init>(Lcom/android/launcher3/LauncherModel;Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/android/launcher3/LauncherModel;->mLoaderTask:Lcom/android/launcher3/LauncherModel$LoaderTask;

    .line 514
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/home/HomeLoader;->createLoaderTask(Z)V

    .line 515
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mAppsLoader:Lcom/android/launcher3/allapps/model/AppsLoader;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/allapps/model/AppsLoader;->createLoaderTask(Z)V

    .line 516
    const/16 v0, -0x3e9

    if-eq p1, v0, :cond_2

    iget-boolean v0, p0, Lcom/android/launcher3/LauncherModel;->mAllAppsLoaded:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/launcher3/LauncherModel;->mWorkspaceLoaded:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/launcher3/LauncherModel;->mIsLoaderTaskRunning:Z

    if-nez v0, :cond_2

    .line 518
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mLoaderTask:Lcom/android/launcher3/LauncherModel$LoaderTask;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/LauncherModel$LoaderTask;->runBindSynchronousPage(I)V

    .line 524
    :cond_0
    :goto_1
    monitor-exit v1

    .line 525
    return-void

    .line 511
    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    .line 520
    :cond_2
    sget-object v0, Lcom/android/launcher3/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/os/HandlerThread;->setPriority(I)V

    .line 521
    sget-object v0, Lcom/android/launcher3/LauncherModel;->sWorker:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/launcher3/LauncherModel;->mLoaderTask:Lcom/android/launcher3/LauncherModel$LoaderTask;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 524
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public startLoaderFromBackground()V
    .locals 3

    .prologue
    .line 467
    const/4 v1, 0x0

    .line 468
    .local v1, "runLoader":Z
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->getCallback()Lcom/android/launcher3/LauncherModel$Callbacks;

    move-result-object v0

    .line 469
    .local v0, "callbacks":Lcom/android/launcher3/LauncherModel$Callbacks;
    if-eqz v0, :cond_0

    .line 471
    invoke-interface {v0}, Lcom/android/launcher3/LauncherModel$Callbacks;->setLoadOnResume()Z

    move-result v2

    if-nez v2, :cond_0

    .line 472
    const/4 v1, 0x1

    .line 475
    :cond_0
    if-eqz v1, :cond_1

    .line 476
    const/16 v2, -0x3e9

    invoke-virtual {p0, v2}, Lcom/android/launcher3/LauncherModel;->startLoader(I)V

    .line 478
    :cond_1
    return-void
.end method

.method public stopLoader()V
    .locals 2

    .prologue
    .line 528
    const-string v0, "Launcher.Model"

    const-string v1, "stopLoader"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    iget-object v1, p0, Lcom/android/launcher3/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 530
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mLoaderTask:Lcom/android/launcher3/LauncherModel$LoaderTask;

    if-eqz v0, :cond_0

    .line 531
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mLoaderTask:Lcom/android/launcher3/LauncherModel$LoaderTask;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel$LoaderTask;->stopLocked()V

    .line 533
    :cond_0
    monitor-exit v1

    .line 534
    return-void

    .line 533
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterOnAllAppItemListLoadCompletedListener()V
    .locals 1

    .prologue
    .line 1399
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/LauncherModel;->mOnAllAppItemListLoadCompletedListener:Lcom/android/launcher3/LauncherModel$OnAllAppItemListLoadCompletedListener;

    .line 1400
    return-void
.end method

.method public unregisterOnBadgeBindingCompletedLisnter(Lcom/android/launcher3/LauncherModel$OnBadgeBindingCompletedLisnter;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/launcher3/LauncherModel$OnBadgeBindingCompletedLisnter;

    .prologue
    .line 1407
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mOnBadgeBindingCompletedLisnter:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1408
    return-void
.end method

.method public unregisterOnLauncherBindingItemsCompletedListener(Lcom/android/launcher3/LauncherModel$OnLauncherBindingItemsCompletedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/launcher3/LauncherModel$OnLauncherBindingItemsCompletedListener;

    .prologue
    .line 1403
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mOnLauncherBindingItemsCompletedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1404
    return-void
.end method

.method public unregisterOnLiveIconUpdateLisnter(Lcom/android/launcher3/LauncherModel$OnRefreshLiveIconListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/launcher3/LauncherModel$OnRefreshLiveIconListener;

    .prologue
    .line 1411
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mOnRefreshLiveIconListener:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1412
    return-void
.end method

.method public updateAppsButton(Landroid/content/Context;ZLcom/android/launcher3/common/base/item/IconInfo;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z
    .param p3, "appsButton"    # Lcom/android/launcher3/common/base/item/IconInfo;

    .prologue
    .line 1161
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/launcher3/LauncherAppState;->setAppsButtonEnabled(Z)V

    .line 1162
    if-eqz p2, :cond_0

    .line 1163
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    invoke-virtual {v0, p1, p3}, Lcom/android/launcher3/home/HomeLoader;->addAndBindAppsButton(Landroid/content/Context;Lcom/android/launcher3/common/base/item/IconInfo;)V

    .line 1167
    :goto_0
    return-void

    .line 1165
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    iget-object v1, p0, Lcom/android/launcher3/LauncherModel;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeLoader;->getAppsButton()Lcom/android/launcher3/common/base/item/IconInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/HomeLoader;->removeAppsButton(Lcom/android/launcher3/common/base/item/IconInfo;)V

    goto :goto_0
.end method

.method public updateAppsForCloneItemEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1170
    new-instance v0, Lcom/android/launcher3/LauncherModel$4;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/LauncherModel$4;-><init>(Lcom/android/launcher3/LauncherModel;Z)V

    invoke-static {v0}, Lcom/android/launcher3/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 1181
    return-void
.end method

.method public updateAppsOnlyDB(Ljava/util/ArrayList;)V
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
    .line 1208
    .local p1, "updateItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v0, Lcom/android/launcher3/LauncherModel$6;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/LauncherModel$6;-><init>(Lcom/android/launcher3/LauncherModel;Ljava/util/ArrayList;)V

    invoke-static {v0}, Lcom/android/launcher3/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 1221
    return-void
.end method

.method public updateItemInfo(Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .locals 1
    .param p3, "isGameApp"    # Z
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
    .line 1184
    .local p1, "hideItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .local p2, "addItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v0, Lcom/android/launcher3/LauncherModel$5;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/android/launcher3/LauncherModel$5;-><init>(Lcom/android/launcher3/LauncherModel;Ljava/util/ArrayList;ZLjava/util/ArrayList;)V

    invoke-static {v0}, Lcom/android/launcher3/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 1205
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
    .line 1233
    .local p1, "updateItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v0, Lcom/android/launcher3/LauncherModel$7;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/LauncherModel$7;-><init>(Lcom/android/launcher3/LauncherModel;Ljava/util/ArrayList;)V

    invoke-static {v0}, Lcom/android/launcher3/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 1239
    return-void
.end method
