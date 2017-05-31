.class public Lcom/android/systemui/recents/model/RecentsAppListLoader;
.super Ljava/lang/Object;
.source "RecentsAppListLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/model/RecentsAppListLoader$1;,
        Lcom/android/systemui/recents/model/RecentsAppListLoader$2;,
        Lcom/android/systemui/recents/model/RecentsAppListLoader$3;,
        Lcom/android/systemui/recents/model/RecentsAppListLoader$AppInfo;,
        Lcom/android/systemui/recents/model/RecentsAppListLoader$AppListPackageMonitor;,
        Lcom/android/systemui/recents/model/RecentsAppListLoader$LoadIconDynamicAsyncTask;
    }
.end annotation


# static fields
.field public static MAX_FREQUENTLY_USED_APPS:I

.field public static SIZE_ICON_CACHE:I

.field public static mAppInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/RecentsAppListLoader$AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static mEmptyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/RecentsAppListLoader$AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static mRawResolveInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static mResolveInfoFilterList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static mTempList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/RecentsAppListLoader$AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static sLoader:Lcom/android/systemui/recents/model/RecentsAppListLoader;


# instance fields
.field COMPARATOR_ALPHABETICAL_ORDER:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/systemui/recents/model/RecentsAppListLoader$AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private EXECUTE_COUNT_ORDER:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/systemui/recents/model/RecentsAppListLoader$AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field mAppListUpdateReceiver:Landroid/content/BroadcastReceiver;

.field mApplicationContext:Landroid/content/Context;

.field private mBackgroundHandler:Landroid/os/Handler;

.field private mBackgroundThread:Landroid/os/HandlerThread;

.field mFreqAppCount:I

.field private mIconCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mIsPreloaded:Z

.field private mKioskId:I

.field private mPackageMonitor:Lcom/android/systemui/recents/model/RecentsAppListLoader$AppListPackageMonitor;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/recents/model/RecentsAppListLoader;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mBackgroundHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/recents/model/RecentsAppListLoader;)Landroid/util/LruCache;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mIconCache:Landroid/util/LruCache;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/recents/model/RecentsAppListLoader;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mKioskId:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/recents/model/RecentsAppListLoader;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mIsPreloaded:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/recents/model/RecentsAppListLoader;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mKioskId:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/recents/model/RecentsAppListLoader;Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "resolveInfo"    # Landroid/content/pm/ResolveInfo;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/model/RecentsAppListLoader;->getBadgedActivityIcon(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/recents/model/RecentsAppListLoader;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/recents/model/RecentsAppListLoader;->addDrawableToMemCache(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/recents/model/RecentsAppListLoader;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/model/RecentsAppListLoader;->removeDrawableCache(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mRawResolveInfoList:Ljava/util/List;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mResolveInfoFilterList:Ljava/util/ArrayList;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mAppInfoList:Ljava/util/ArrayList;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mTempList:Ljava/util/ArrayList;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mEmptyList:Ljava/util/ArrayList;

    .line 69
    const/16 v0, 0x8

    sput v0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->MAX_FREQUENTLY_USED_APPS:I

    .line 71
    const/16 v0, 0x28

    sput v0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->SIZE_ICON_CACHE:I

    .line 37
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mKioskId:I

    .line 74
    new-instance v1, Lcom/android/systemui/recents/model/RecentsAppListLoader$AppListPackageMonitor;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/model/RecentsAppListLoader$AppListPackageMonitor;-><init>(Lcom/android/systemui/recents/model/RecentsAppListLoader;)V

    iput-object v1, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mPackageMonitor:Lcom/android/systemui/recents/model/RecentsAppListLoader$AppListPackageMonitor;

    .line 76
    iput v2, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mFreqAppCount:I

    .line 78
    iput-boolean v2, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mIsPreloaded:Z

    .line 160
    new-instance v1, Lcom/android/systemui/recents/model/RecentsAppListLoader$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/model/RecentsAppListLoader$1;-><init>(Lcom/android/systemui/recents/model/RecentsAppListLoader;)V

    iput-object v1, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->COMPARATOR_ALPHABETICAL_ORDER:Ljava/util/Comparator;

    .line 173
    new-instance v1, Lcom/android/systemui/recents/model/RecentsAppListLoader$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/model/RecentsAppListLoader$2;-><init>(Lcom/android/systemui/recents/model/RecentsAppListLoader;)V

    iput-object v1, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->EXECUTE_COUNT_ORDER:Ljava/util/Comparator;

    .line 528
    new-instance v1, Lcom/android/systemui/recents/model/RecentsAppListLoader$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/model/RecentsAppListLoader$3;-><init>(Lcom/android/systemui/recents/model/RecentsAppListLoader;)V

    iput-object v1, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mAppListUpdateReceiver:Landroid/content/BroadcastReceiver;

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mApplicationContext:Landroid/content/Context;

    .line 86
    invoke-direct {p0}, Lcom/android/systemui/recents/model/RecentsAppListLoader;->initLruCache()V

    .line 88
    new-instance v1, Landroid/os/HandlerThread;

    const-string/jumbo v2, "Recents-AppListLoader"

    .line 89
    const/16 v3, 0xa

    .line 88
    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mBackgroundThread:Landroid/os/HandlerThread;

    .line 90
    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 91
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mBackgroundHandler:Landroid/os/Handler;

    .line 93
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/systemui/recents/events/EventBus;->register(Ljava/lang/Object;)V

    .line 94
    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mPackageMonitor:Lcom/android/systemui/recents/model/RecentsAppListLoader$AppListPackageMonitor;

    invoke-virtual {v1, p1}, Lcom/android/systemui/recents/model/RecentsAppListLoader$AppListPackageMonitor;->register(Landroid/content/Context;)V

    .line 95
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 96
    .local v0, "appListUpdateFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.samsung.android.theme.themecenter.THEME_APPLY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 97
    const-string/jumbo v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 98
    const-string/jumbo v1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 99
    const-string/jumbo v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 100
    const-string/jumbo v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 101
    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mApplicationContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mAppListUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 82
    return-void
.end method

.method private addDrawableToMemCache(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mIconCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mIconCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    :cond_0
    return-void
.end method

.method private getBadgedActivityIcon(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p1, "resolveInfo"    # Landroid/content/pm/ResolveInfo;

    .prologue
    const/4 v6, 0x0

    .line 554
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_0

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v2, :cond_1

    .line 555
    :cond_0
    return-object v6

    .line 559
    :cond_1
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v2

    .line 560
    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 559
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getBadgedActivityIcon(Landroid/content/pm/ActivityInfo;ILandroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 562
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_2

    .line 563
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 564
    .local v1, "systemResources":Landroid/content/res/Resources;
    const/high16 v2, 0x10d0000

    invoke-virtual {v1, v2, v6}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 567
    .end local v1    # "systemResources":Landroid/content/res/Resources;
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    return-object v2
.end method

.method private getDrawableFromMemCache(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mIconCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsAppListLoader;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    sget-object v0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->sLoader:Lcom/android/systemui/recents/model/RecentsAppListLoader;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lcom/android/systemui/recents/model/RecentsAppListLoader;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/model/RecentsAppListLoader;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->sLoader:Lcom/android/systemui/recents/model/RecentsAppListLoader;

    .line 59
    :cond_0
    sget-object v0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->sLoader:Lcom/android/systemui/recents/model/RecentsAppListLoader;

    return-object v0
.end method

.method private initLruCache()V
    .locals 2

    .prologue
    .line 271
    new-instance v0, Landroid/util/LruCache;

    sget v1, Lcom/android/systemui/recents/model/RecentsAppListLoader;->SIZE_ICON_CACHE:I

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mIconCache:Landroid/util/LruCache;

    .line 269
    return-void
.end method

.method private removeDrawableCache(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 288
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mIconCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    return-void
.end method


# virtual methods
.method public buildAppInfos()V
    .locals 2

    .prologue
    .line 116
    new-instance v0, Lcom/android/systemui/recents/model/RecentsAppListLoader$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/model/RecentsAppListLoader$4;-><init>(Lcom/android/systemui/recents/model/RecentsAppListLoader;)V

    .line 154
    .local v0, "r":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 115
    return-void
.end method

.method public getAppInfos(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/RecentsAppListLoader$AppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 216
    .local p1, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/RecentsAppListLoader$AppInfo;>;"
    iget-boolean v0, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mIsPreloaded:Z

    if-nez v0, :cond_0

    .line 217
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mFreqAppCount:I

    .line 218
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 219
    return-void

    .line 222
    :cond_0
    sget-object v1, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mAppInfoList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 223
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/model/RecentsAppListLoader;->sortAppInfoList()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mFreqAppCount:I

    .line 224
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 225
    sget-object v0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mAppInfoList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 215
    return-void

    .line 222
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getFrequentlyUsedAppCount()I
    .locals 3

    .prologue
    .line 211
    const-string/jumbo v0, "RecentsAppListLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getFrequentlyUsedAppCount - count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mFreqAppCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget v0, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mFreqAppCount:I

    return v0
.end method

.method public getIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "componentName"    # Ljava/lang/String;

    .prologue
    .line 236
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/model/RecentsAppListLoader;->getDrawableFromMemCache(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public loadIcon(Lcom/android/systemui/recents/views/BaseAppListViewHolder;Lcom/android/systemui/recents/model/RecentsAppListLoader$AppInfo;Z)Lcom/android/systemui/recents/model/RecentsAppListLoader$LoadIconDynamicAsyncTask;
    .locals 4
    .param p1, "holder"    # Lcom/android/systemui/recents/views/BaseAppListViewHolder;
    .param p2, "appInfo"    # Lcom/android/systemui/recents/model/RecentsAppListLoader$AppInfo;
    .param p3, "disabled"    # Z

    .prologue
    .line 230
    new-instance v0, Lcom/android/systemui/recents/model/RecentsAppListLoader$LoadIconDynamicAsyncTask;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/systemui/recents/model/RecentsAppListLoader$LoadIconDynamicAsyncTask;-><init>(Lcom/android/systemui/recents/model/RecentsAppListLoader;Lcom/android/systemui/recents/views/BaseAppListViewHolder;Z)V

    .line 231
    .local v0, "task":Lcom/android/systemui/recents/model/RecentsAppListLoader$LoadIconDynamicAsyncTask;
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/android/systemui/recents/model/RecentsAppListLoader$AppInfo;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/model/RecentsAppListLoader$LoadIconDynamicAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 232
    return-object v0
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/IconTraySettingChangedEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/IconTraySettingChangedEvent;

    .prologue
    .line 546
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mIconCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 547
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/NotifyDataLoadEvent;

    invoke-direct {v1}, Lcom/android/systemui/recents/events/activity/NotifyDataLoadEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 545
    return-void
.end method

.method public preload()V
    .locals 0

    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/android/systemui/recents/model/RecentsAppListLoader;->buildAppInfos()V

    .line 241
    invoke-virtual {p0}, Lcom/android/systemui/recents/model/RecentsAppListLoader;->preloadData()V

    .line 239
    return-void
.end method

.method public preloadData()V
    .locals 2

    .prologue
    .line 245
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mIsPreloaded:Z

    .line 246
    new-instance v0, Lcom/android/systemui/recents/model/RecentsAppListLoader$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/model/RecentsAppListLoader$5;-><init>(Lcom/android/systemui/recents/model/RecentsAppListLoader;)V

    .line 263
    .local v0, "r":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 244
    return-void
.end method

.method public sortAppInfoList()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 185
    sget-object v1, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mAppInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 186
    sget-object v1, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mTempList:Ljava/util/ArrayList;

    sget-object v2, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mAppInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 187
    sget-object v1, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mAppInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 189
    sget-object v1, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mTempList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->EXECUTE_COUNT_ORDER:Ljava/util/Comparator;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 191
    const/4 v0, 0x0

    .line 192
    .local v0, "count":I
    :goto_0
    sget-object v1, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mTempList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    sget v1, Lcom/android/systemui/recents/model/RecentsAppListLoader;->MAX_FREQUENTLY_USED_APPS:I

    if-ge v0, v1, :cond_0

    .line 193
    sget-object v1, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mTempList:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/model/RecentsAppListLoader$AppInfo;

    iget v1, v1, Lcom/android/systemui/recents/model/RecentsAppListLoader$AppInfo;->executeCount:I

    if-lez v1, :cond_0

    .line 194
    sget-object v2, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mAppInfoList:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mTempList:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/model/RecentsAppListLoader$AppInfo;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 200
    :cond_0
    sget-object v1, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mTempList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 201
    sget-object v1, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mTempList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->COMPARATOR_ALPHABETICAL_ORDER:Ljava/util/Comparator;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 202
    sget-object v1, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mAppInfoList:Ljava/util/ArrayList;

    sget-object v2, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mTempList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 204
    :cond_1
    sget-object v1, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mTempList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 205
    return v0

    .line 207
    .end local v0    # "count":I
    :cond_2
    return v3
.end method
