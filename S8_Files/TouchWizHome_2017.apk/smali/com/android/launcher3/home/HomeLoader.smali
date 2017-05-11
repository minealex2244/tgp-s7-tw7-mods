.class public Lcom/android/launcher3/home/HomeLoader;
.super Lcom/android/launcher3/common/model/DataLoader;
.source "HomeLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/home/HomeLoader$NewScreenInfo;,
        Lcom/android/launcher3/home/HomeLoader$AppsAvailabilityCheck;,
        Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;,
        Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;
    }
.end annotation


# static fields
.field private static final ACTION_APPWIDGET_SINGLE_INSTANCE:Ljava/lang/String; = "com.sec.launcher.action.APPWIDGET_SINGLE_INSTANCE"

.field private static final ACTION_APPWIDGET_SINGLE_INSTANCE_PACKAGE:Ljava/lang/String; = "com.sec.launcher.action.APPWIDGET_SINGLE_INSTANCE_PACKAGE"

.field private static final HOTSEAT_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final INVALID_SCREEN_ID:J = -0x1L

.field private static final ITEMS_CHUNK:I = 0x6

.field private static final TAG:Ljava/lang/String; = "HomeLoader"

.field private static final sBgWidgetLock:Ljava/lang/Object;

.field static sBgWidgetProviders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/launcher3/util/ComponentKey;",
            "Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final DEBUG_LOADERS:Z

.field private final EASY_APPS_INDEX:I

.field private final OCCUPIED_HOTSEAT:I

.field private final OCCUPIED_WORKSPACE:I

.field private final OUTSIDE_ITEM:I

.field private final OVERLAP_ITEM:I

.field private final REMOVE_ITEM:I

.field private final RESTORED_ITEM:I

.field private final mBgHotseatItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCallbacks:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private mExtraItemsAfterGridChanged:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mIsFirstBind:Z

.field private mItemPositionHelper:Lcom/android/launcher3/home/HomeItemPositionHelper;

.field private final mLock:Ljava/lang/Object;

.field private mNewPageIdsAfterGridChanged:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher3/home/HomeLoader$NewScreenInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 107
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/launcher3/home/HomeLoader;->sBgWidgetLock:Ljava/lang/Object;

    .line 2979
    new-instance v0, Lcom/android/launcher3/home/HomeLoader$31;

    invoke-direct {v0}, Lcom/android/launcher3/home/HomeLoader$31;-><init>()V

    sput-object v0, Lcom/android/launcher3/home/HomeLoader;->HOTSEAT_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/LauncherModel;Lcom/android/launcher3/common/model/IconCache;Lcom/android/launcher3/common/model/BadgeCache;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "app"    # Lcom/android/launcher3/LauncherAppState;
    .param p3, "model"    # Lcom/android/launcher3/LauncherModel;
    .param p4, "cache"    # Lcom/android/launcher3/common/model/IconCache;
    .param p5, "badgeCache"    # Lcom/android/launcher3/common/model/BadgeCache;

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 167
    invoke-direct {p0}, Lcom/android/launcher3/common/model/DataLoader;-><init>()V

    .line 106
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mLock:Ljava/lang/Object;

    .line 111
    iput-boolean v1, p0, Lcom/android/launcher3/home/HomeLoader;->DEBUG_LOADERS:Z

    .line 113
    iput-boolean v2, p0, Lcom/android/launcher3/home/HomeLoader;->mIsFirstBind:Z

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mBgHotseatItems:Ljava/util/ArrayList;

    .line 118
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mNewPageIdsAfterGridChanged:Ljava/util/HashMap;

    .line 119
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mExtraItemsAfterGridChanged:Ljava/util/HashMap;

    .line 121
    iput v1, p0, Lcom/android/launcher3/home/HomeLoader;->REMOVE_ITEM:I

    .line 122
    iput v3, p0, Lcom/android/launcher3/home/HomeLoader;->RESTORED_ITEM:I

    .line 123
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/launcher3/home/HomeLoader;->OUTSIDE_ITEM:I

    .line 124
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/launcher3/home/HomeLoader;->OVERLAP_ITEM:I

    .line 126
    iput v2, p0, Lcom/android/launcher3/home/HomeLoader;->OCCUPIED_WORKSPACE:I

    .line 127
    iput v1, p0, Lcom/android/launcher3/home/HomeLoader;->OCCUPIED_HOTSEAT:I

    .line 129
    iput v3, p0, Lcom/android/launcher3/home/HomeLoader;->EASY_APPS_INDEX:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p0

    .line 168
    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/home/HomeLoader;->init(Landroid/content/Context;Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/LauncherModel;Lcom/android/launcher3/common/model/IconCache;Lcom/android/launcher3/common/model/BadgeCache;Lcom/android/launcher3/common/model/DataLoader;)V

    .line 169
    new-instance v0, Lcom/android/launcher3/common/model/FavoritesUpdater;

    invoke-direct {v0, p1, p3, p4, p0}, Lcom/android/launcher3/common/model/FavoritesUpdater;-><init>(Landroid/content/Context;Lcom/android/launcher3/LauncherModel;Lcom/android/launcher3/common/model/IconCache;Lcom/android/launcher3/common/model/DataLoader;)V

    iput-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    .line 170
    new-instance v0, Lcom/android/launcher3/home/HomeItemPositionHelper;

    sget-object v1, Lcom/android/launcher3/home/HomeLoader;->sContentResolver:Landroid/content/ContentResolver;

    invoke-direct {v0, v1}, Lcom/android/launcher3/home/HomeItemPositionHelper;-><init>(Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mItemPositionHelper:Lcom/android/launcher3/home/HomeItemPositionHelper;

    .line 171
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/home/HomeLoader;)Lcom/android/launcher3/home/HomeItemPositionHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeLoader;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mItemPositionHelper:Lcom/android/launcher3/home/HomeItemPositionHelper;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/launcher3/home/HomeLoader;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeLoader;

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeLoader;->getAllApps()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/common/model/DataLoader$DataLoaderCallback;)Lcom/android/launcher3/common/model/DataLoader$DataLoaderCallback;
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeLoader;
    .param p1, "x1"    # Lcom/android/launcher3/common/model/DataLoader$DataLoaderCallback;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/launcher3/home/HomeLoader;->mLoaderCallback:Lcom/android/launcher3/common/model/DataLoader$DataLoaderCallback;

    return-object p1
.end method

.method static synthetic access$1100()Landroid/content/Context;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/launcher3/home/HomeLoader;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeLoader;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/android/launcher3/home/HomeLoader;->restoreStkPositionIfNecessary(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$1300()Landroid/content/Context;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sProfile:Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    return-object v0
.end method

.method static synthetic access$1500()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sProfile:Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    return-object v0
.end method

.method static synthetic access$1600()Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/launcher3/home/HomeLoader;Ljava/util/HashMap;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeLoader;
    .param p1, "x1"    # Ljava/util/HashMap;
    .param p2, "x2"    # Ljava/util/ArrayList;

    .prologue
    .line 101
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/home/HomeLoader;->doHandlingItems(Ljava/util/HashMap;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/launcher3/home/HomeLoader;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeLoader;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mExtraItemsAfterGridChanged:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/launcher3/home/HomeLoader;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeLoader;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mNewPageIdsAfterGridChanged:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher3/home/HomeLoader;)[Z
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeLoader;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mIsPageLoaded:[Z

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/launcher3/home/HomeLoader;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeLoader;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mBgOrderedScreens:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2100()Landroid/content/Context;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2200()Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$2300()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sBgLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2400()Lcom/android/launcher3/util/LongArrayMap;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/launcher3/home/HomeLoader;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeLoader;

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeLoader;->makeSingleInstanceAppWidgetList()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Lcom/android/launcher3/home/HomeLoader;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeLoader;

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeLoader;->getWidgetsInHome()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/home/LauncherAppWidgetInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeLoader;
    .param p1, "x1"    # Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/android/launcher3/home/HomeLoader;->checkAppWidgetSingleInstanceList(Lcom/android/launcher3/home/LauncherAppWidgetInfo;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeLoader;
    .param p1, "x1"    # Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/android/launcher3/home/HomeLoader;->bindFestivalPageIfNecessary(Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/launcher3/home/HomeLoader;)[Z
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeLoader;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mIsPageLoaded:[Z

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/launcher3/home/HomeLoader;)Lcom/android/launcher3/common/model/DataLoader$DataLoaderCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeLoader;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mLoaderCallback:Lcom/android/launcher3/common/model/DataLoader$DataLoaderCallback;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/launcher3/home/HomeLoader;)Lcom/android/launcher3/common/model/DataLoader$DataLoaderCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeLoader;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mLoaderCallback:Lcom/android/launcher3/common/model/DataLoader$DataLoaderCallback;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/launcher3/home/HomeLoader;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeLoader;

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/android/launcher3/home/HomeLoader;->mIsSdCardReady:Z

    return v0
.end method

.method static synthetic access$3400()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sPendingPackages:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$3500()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sWorkerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3600()Landroid/content/Context;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3702(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/common/model/DataLoader$DataLoaderCallback;)Lcom/android/launcher3/common/model/DataLoader$DataLoaderCallback;
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeLoader;
    .param p1, "x1"    # Lcom/android/launcher3/common/model/DataLoader$DataLoaderCallback;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/launcher3/home/HomeLoader;->mLoaderCallback:Lcom/android/launcher3/common/model/DataLoader$DataLoaderCallback;

    return-object p1
.end method

.method static synthetic access$3800(Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/Runnable;

    .prologue
    .line 101
    invoke-static {p0}, Lcom/android/launcher3/home/HomeLoader;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/launcher3/home/HomeLoader;)Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeLoader;

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeLoader;->getCallback()Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeLoader;
    .param p1, "x1"    # Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;
    .param p2, "x2"    # Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;

    .prologue
    .line 101
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/home/HomeLoader;->tryGetCallbacks(Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/common/model/DataLoader$PageLoaderTask;)Lcom/android/launcher3/common/model/DataLoader$PageLoaderTask;
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeLoader;
    .param p1, "x1"    # Lcom/android/launcher3/common/model/DataLoader$PageLoaderTask;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/launcher3/home/HomeLoader;->mPageLoaderTask:Lcom/android/launcher3/common/model/DataLoader$PageLoaderTask;

    return-object p1
.end method

.method static synthetic access$4102(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 101
    sput-boolean p0, Lcom/android/launcher3/home/HomeLoader;->sIsLoadingAndBindingWorkspace:Z

    return p0
.end method

.method static synthetic access$4200(Lcom/android/launcher3/home/HomeLoader;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeLoader;

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeLoader;->runAllBindCompleteRunnables()V

    return-void
.end method

.method static synthetic access$4302(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/common/model/DataLoader$PageLoaderTask;)Lcom/android/launcher3/common/model/DataLoader$PageLoaderTask;
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeLoader;
    .param p1, "x1"    # Lcom/android/launcher3/common/model/DataLoader$PageLoaderTask;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/launcher3/home/HomeLoader;->mPageLoaderTask:Lcom/android/launcher3/common/model/DataLoader$PageLoaderTask;

    return-object p1
.end method

.method static synthetic access$4400(Lcom/android/launcher3/home/HomeLoader;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeLoader;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 101
    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/HomeLoader;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$4500()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sBgLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$4600()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sPendingPackages:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$4700()Lcom/android/launcher3/common/compat/LauncherAppsCompat;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sLauncherApps:Lcom/android/launcher3/common/compat/LauncherAppsCompat;

    return-object v0
.end method

.method static synthetic access$4800()Landroid/content/pm/PackageManager;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$4900()Lcom/android/launcher3/common/compat/LauncherAppsCompat;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sLauncherApps:Lcom/android/launcher3/common/compat/LauncherAppsCompat;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/launcher3/home/HomeLoader;)Lcom/android/launcher3/common/model/DataLoader$PageLoaderTask;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeLoader;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mPageLoaderTask:Lcom/android/launcher3/common/model/DataLoader$PageLoaderTask;

    return-object v0
.end method

.method static synthetic access$5000()Lcom/android/launcher3/LauncherModel;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sLauncherModel:Lcom/android/launcher3/LauncherModel;

    return-object v0
.end method

.method static synthetic access$5100()Lcom/android/launcher3/LauncherModel;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sLauncherModel:Lcom/android/launcher3/LauncherModel;

    return-object v0
.end method

.method static synthetic access$5200()Lcom/android/launcher3/LauncherModel;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sLauncherModel:Lcom/android/launcher3/LauncherModel;

    return-object v0
.end method

.method static synthetic access$5300()Lcom/android/launcher3/LauncherModel;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sLauncherModel:Lcom/android/launcher3/LauncherModel;

    return-object v0
.end method

.method static synthetic access$5400()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sPendingPackages:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/android/launcher3/home/HomeLoader;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeLoader;

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeLoader;->getAllItemInHome()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5600()Lcom/android/launcher3/common/model/DeferredHandler;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sHandler:Lcom/android/launcher3/common/model/DeferredHandler;

    return-object v0
.end method

.method static synthetic access$5700()Lcom/android/launcher3/common/model/IconCache;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sIconCache:Lcom/android/launcher3/common/model/IconCache;

    return-object v0
.end method

.method static synthetic access$5800()Lcom/android/launcher3/common/model/IconCache;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sIconCache:Lcom/android/launcher3/common/model/IconCache;

    return-object v0
.end method

.method static synthetic access$5900()Lcom/android/launcher3/common/model/DeferredHandler;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sHandler:Lcom/android/launcher3/common/model/DeferredHandler;

    return-object v0
.end method

.method static synthetic access$600()Landroid/content/Context;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/android/launcher3/home/HomeLoader;)Lcom/android/launcher3/common/model/FavoritesUpdater;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeLoader;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    return-object v0
.end method

.method static synthetic access$6100(Lcom/android/launcher3/home/HomeLoader;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeLoader;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mBgHotseatItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$6200(Lcom/android/launcher3/home/HomeLoader;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeLoader;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 101
    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/HomeLoader;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$6300()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sBgLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$6400(Lcom/android/launcher3/home/HomeLoader;)Lcom/android/launcher3/common/model/FavoritesUpdater;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeLoader;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    return-object v0
.end method

.method static synthetic access$6500()Lcom/android/launcher3/common/model/FavoritesProvider;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    return-object v0
.end method

.method static synthetic access$6600(Lcom/android/launcher3/home/HomeLoader;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)Landroid/util/Pair;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeLoader;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # Ljava/util/ArrayList;
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # Z

    .prologue
    .line 101
    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/home/HomeLoader;->findSpaceForItem(Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6700(Lcom/android/launcher3/home/HomeLoader;)Lcom/android/launcher3/common/model/FavoritesUpdater;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeLoader;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    return-object v0
.end method

.method static synthetic access$6800(Lcom/android/launcher3/home/HomeLoader;)Lcom/android/launcher3/common/model/FavoritesUpdater;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeLoader;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    return-object v0
.end method

.method static synthetic access$6900(Lcom/android/launcher3/home/HomeLoader;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeLoader;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 101
    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/HomeLoader;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$700()Lcom/android/launcher3/common/compat/LauncherAppsCompat;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sLauncherApps:Lcom/android/launcher3/common/compat/LauncherAppsCompat;

    return-object v0
.end method

.method static synthetic access$7000(Lcom/android/launcher3/home/HomeLoader;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeLoader;
    .param p1, "x1"    # I

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/android/launcher3/home/HomeLoader;->getCellXFromHotseatOrder(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$7100(Lcom/android/launcher3/home/HomeLoader;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeLoader;
    .param p1, "x1"    # I

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/android/launcher3/home/HomeLoader;->getCellYFromHotseatOrder(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$7200(Lcom/android/launcher3/home/HomeLoader;)Lcom/android/launcher3/common/model/FavoritesUpdater;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeLoader;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    return-object v0
.end method

.method static synthetic access$7300(Lcom/android/launcher3/home/HomeLoader;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeLoader;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 101
    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/HomeLoader;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$7400()Lcom/android/launcher3/common/model/FavoritesProvider;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    return-object v0
.end method

.method static synthetic access$7500()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sBgLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$7600(Lcom/android/launcher3/home/HomeLoader;Landroid/content/Intent;Lcom/android/launcher3/common/compat/UserHandleCompat;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeLoader;
    .param p1, "x1"    # Landroid/content/Intent;
    .param p2, "x2"    # Lcom/android/launcher3/common/compat/UserHandleCompat;

    .prologue
    .line 101
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/home/HomeLoader;->shortcutExists(Landroid/content/Intent;Lcom/android/launcher3/common/compat/UserHandleCompat;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$7700()Lcom/android/launcher3/util/LongArrayMap;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    return-object v0
.end method

.method static synthetic access$7800(Lcom/android/launcher3/home/HomeLoader;)Lcom/android/launcher3/common/model/FavoritesUpdater;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeLoader;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    return-object v0
.end method

.method static synthetic access$7900(Lcom/android/launcher3/home/HomeLoader;)Lcom/android/launcher3/common/model/FavoritesUpdater;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeLoader;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    return-object v0
.end method

.method static synthetic access$800()Landroid/content/Context;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$8000(Lcom/android/launcher3/home/HomeLoader;)Lcom/android/launcher3/common/model/FavoritesUpdater;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeLoader;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    return-object v0
.end method

.method static synthetic access$8100(Lcom/android/launcher3/home/HomeLoader;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeLoader;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 101
    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/HomeLoader;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$8200()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sBgLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$8300()Lcom/android/launcher3/util/LongArrayMap;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    return-object v0
.end method

.method static synthetic access$8400(Lcom/android/launcher3/home/HomeLoader;)Lcom/android/launcher3/common/model/FavoritesUpdater;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeLoader;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    return-object v0
.end method

.method static synthetic access$8500(Lcom/android/launcher3/home/HomeLoader;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeLoader;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 101
    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/HomeLoader;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$8600()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sBgLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$8700(Lcom/android/launcher3/home/HomeLoader;)Lcom/android/launcher3/common/model/FavoritesUpdater;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeLoader;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    return-object v0
.end method

.method static synthetic access$8800(Lcom/android/launcher3/home/HomeLoader;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeLoader;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 101
    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/HomeLoader;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$8900()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sBgLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$900()Landroid/content/Context;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$9000()Lcom/android/launcher3/util/LongArrayMap;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    return-object v0
.end method

.method static synthetic access$9100()Z
    .locals 1

    .prologue
    .line 101
    sget-boolean v0, Lcom/android/launcher3/home/HomeLoader;->sIsLoadingAndBindingWorkspace:Z

    return v0
.end method

.method static synthetic access$9200()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sBindCompleteRunnables:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$9300()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sBindCompleteRunnables:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$9400(Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/Runnable;

    .prologue
    .line 101
    invoke-static {p0}, Lcom/android/launcher3/home/HomeLoader;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private addAppsButtonForEasy()V
    .locals 6

    .prologue
    .line 3833
    sget-object v2, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/launcher3/Utilities;->createAppsButton(Landroid/content/Context;)Lcom/android/launcher3/common/base/item/IconInfo;

    move-result-object v0

    .line 3835
    .local v0, "appsButton":Lcom/android/launcher3/common/base/item/IconInfo;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 3836
    .local v1, "values":Landroid/content/ContentValues;
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/launcher3/LauncherAppState;->setAppsButtonEnabled(Z)V

    .line 3837
    const-wide/16 v2, 0x2

    iput-wide v2, v0, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    .line 3838
    iget-wide v2, v0, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    long-to-int v2, v2

    invoke-direct {p0, v2}, Lcom/android/launcher3/home/HomeLoader;->getCellXFromHotseatOrder(I)I

    move-result v2

    iput v2, v0, Lcom/android/launcher3/common/base/item/IconInfo;->cellY:I

    iput v2, v0, Lcom/android/launcher3/common/base/item/IconInfo;->cellX:I

    .line 3840
    sget-object v2, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/common/base/item/IconInfo;->onAddToDatabase(Landroid/content/Context;Landroid/content/ContentValues;)V

    .line 3841
    iget-wide v2, v0, Lcom/android/launcher3/common/base/item/IconInfo;->id:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 3842
    sget-object v2, Lcom/android/launcher3/home/HomeLoader;->sFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    invoke-virtual {v2}, Lcom/android/launcher3/common/model/FavoritesProvider;->generateNewItemId()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/launcher3/common/base/item/IconInfo;->id:J

    .line 3843
    const-string v2, "_id"

    iget-wide v4, v0, Lcom/android/launcher3/common/base/item/IconInfo;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3848
    sget-object v2, Lcom/android/launcher3/home/HomeLoader;->sContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/launcher3/common/model/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 3849
    :goto_0
    return-void

    .line 3845
    :cond_0
    const-string v2, "HomeLoader"

    const-string v3, "HomeLoader:Don\'t add Apps button in EasyMode"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private arrangeItemToNewScreen(Ljava/util/ArrayList;J)Ljava/util/ArrayList;
    .locals 22
    .param p2, "newScreenId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;J)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3738
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    sget-object v3, Lcom/android/launcher3/home/HomeLoader;->sProfile:Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    iget-object v3, v3, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v3}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountX()I

    move-result v7

    .line 3739
    .local v7, "countX":I
    sget-object v3, Lcom/android/launcher3/home/HomeLoader;->sProfile:Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    iget-object v3, v3, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v3}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountY()I

    move-result v8

    .line 3740
    .local v8, "countY":I
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 3741
    .local v18, "againMoveItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    filled-new-array {v7, v8}, [I

    move-result-object v3

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [[Z

    .line 3742
    .local v9, "occupied":[[Z
    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 3744
    .local v4, "tmpXY":[I
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_0
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 3745
    .local v19, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    move-wide/from16 v0, p2

    move-object/from16 v2, v19

    iput-wide v0, v2, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    .line 3747
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/HomeLoader;->mItemPositionHelper:Lcom/android/launcher3/home/HomeItemPositionHelper;

    move-object/from16 v0, v19

    iget v5, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    move-object/from16 v0, v19

    iget v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    invoke-virtual/range {v3 .. v9}, Lcom/android/launcher3/home/HomeItemPositionHelper;->findEmptyCellWithOccupied([IIIII[[Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3749
    const/4 v3, 0x0

    aget v3, v4, v3

    move-object/from16 v0, v19

    iput v3, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    .line 3750
    const/4 v3, 0x1

    aget v3, v4, v3

    move-object/from16 v0, v19

    iput v3, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    .line 3751
    move-object/from16 v0, v19

    iget v13, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    move-object/from16 v0, v19

    iget v14, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    move-object/from16 v0, v19

    iget v15, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    move/from16 v16, v0

    move-object/from16 v10, p0

    move v11, v7

    move v12, v8

    move-object/from16 v17, v9

    invoke-direct/range {v10 .. v17}, Lcom/android/launcher3/home/HomeLoader;->fillOccupied(IIIIII[[Z)V

    goto :goto_0

    .line 3753
    :cond_0
    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3757
    .end local v19    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_1
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 3758
    .restart local v19    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3761
    .end local v19    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_2
    return-object v18
.end method

.method private bindFestivalPageIfNecessary(Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V
    .locals 4
    .param p1, "task"    # Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;

    .prologue
    .line 1658
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeLoader;->getCallback()Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    move-result-object v0

    .line 1659
    .local v0, "oldCallbacks":Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;
    if-nez v0, :cond_0

    .line 1660
    const-string v2, "HomeLoader"

    const-string v3, "bindFestivalPageIfNecessary failed with no launcher"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1674
    :goto_0
    return-void

    .line 1664
    :cond_0
    new-instance v1, Lcom/android/launcher3/home/HomeLoader$10;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/launcher3/home/HomeLoader$10;-><init>(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V

    .line 1673
    .local v1, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v1}, Lcom/android/launcher3/home/HomeLoader;->runOnMainThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private bindWorkspaceScreens(Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;Ljava/util/ArrayList;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V
    .locals 1
    .param p1, "oldCallbacks"    # Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;
    .param p3, "task"    # Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1626
    .local p2, "orderedScreens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v0, Lcom/android/launcher3/home/HomeLoader$8;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/android/launcher3/home/HomeLoader$8;-><init>(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;Ljava/util/ArrayList;)V

    .line 1635
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/HomeLoader;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 1636
    return-void
.end method

.method private calculateDiffXY([IIILjava/util/ArrayList;)V
    .locals 7
    .param p1, "diffXY"    # [I
    .param p2, "countX"    # I
    .param p3, "countY"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([III",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, "pageItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    const/4 v4, 0x0

    .line 3582
    move v1, p2

    .line 3583
    .local v1, "pageItemsMaxX":I
    move v2, p3

    .line 3585
    .local v2, "pageItemsMaxY":I
    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 3586
    .local v0, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget v5, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    iget v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    add-int/2addr v5, v6

    if-le v5, v1, :cond_0

    iget v5, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    iget v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    add-int v1, v5, v6

    .line 3588
    :cond_0
    iget v5, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    iget v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    add-int/2addr v5, v6

    if-le v5, v2, :cond_1

    iget v5, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    iget v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    add-int v2, v5, v6

    .line 3590
    :cond_1
    goto :goto_0

    .line 3592
    .end local v0    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_2
    if-le v1, p2, :cond_4

    sub-int v3, v1, p2

    :goto_1
    aput v3, p1, v4

    .line 3593
    const/4 v3, 0x1

    if-le v2, p3, :cond_3

    sub-int v4, v2, p3

    :cond_3
    aput v4, p1, v3

    .line 3594
    return-void

    :cond_4
    move v3, v4

    .line 3592
    goto :goto_1
.end method

.method private changeDialerAppOnLoadDefaultLayout()V
    .locals 18

    .prologue
    .line 3214
    const-string v0, "HomeLoader"

    const-string v1, "changeDialerAppOnLoadDefaultLayout : OEM -> T phone app"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3215
    new-instance v9, Landroid/content/ComponentName;

    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    .line 3216
    invoke-static {v0}, Lcom/android/launcher3/LauncherFeature;->getOemDialerPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 3217
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->getOemDialerClassName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v9, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3218
    .local v9, "oemDialerCN":Landroid/content/ComponentName;
    new-instance v7, Landroid/content/ComponentName;

    .line 3219
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->getCustomerDialerPackageName()Ljava/lang/String;

    move-result-object v0

    .line 3220
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->getCustomerDialerClassName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3221
    .local v7, "customerDialerCN":Landroid/content/ComponentName;
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "android.intent.category.LAUNCHER"

    .line 3222
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 3223
    invoke-virtual {v0, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10200000

    .line 3224
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v14

    .line 3225
    .local v14, "oemDialerIntent":Landroid/content/Intent;
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "android.intent.category.LAUNCHER"

    .line 3226
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 3227
    invoke-virtual {v0, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10200000

    .line 3228
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v8

    .line 3232
    .local v8, "customerDialerIntent":Landroid/content/Intent;
    const-string v3, "container=? AND intent=?"

    .line 3233
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const/16 v1, -0x65

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3234
    invoke-virtual {v14, v1}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 3236
    .local v4, "selectionArg":[Ljava/lang/String;
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/launcher3/common/model/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v16, "_id"

    aput-object v16, v2, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3239
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 3241
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3242
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 3243
    .local v12, "id":J
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 3244
    .local v15, "values":Landroid/content/ContentValues;
    const-string v0, "intent"

    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3245
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sContentResolver:Landroid/content/ContentResolver;

    invoke-static {v12, v13}, Lcom/android/launcher3/common/model/LauncherSettings$Favorites;->getContentUri(J)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v15, v2, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3250
    .end local v12    # "id":J
    .end local v15    # "values":Landroid/content/ContentValues;
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3257
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3258
    const-string v3, "container=? AND intent=?"

    .line 3259
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    .end local v4    # "selectionArg":[Ljava/lang/String;
    const/4 v0, 0x0

    const/16 v1, -0x64

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3260
    invoke-virtual {v8, v1}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 3269
    .restart local v4    # "selectionArg":[Ljava/lang/String;
    :goto_1
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/launcher3/common/model/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v16, "_id"

    aput-object v16, v2, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3272
    if-eqz v6, :cond_4

    .line 3274
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3275
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    .line 3276
    .local v12, "id":Ljava/lang/Long;
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 3277
    .restart local v15    # "values":Landroid/content/ContentValues;
    const-string v0, "intent"

    const/4 v1, 0x0

    invoke-virtual {v14, v1}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3278
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Lcom/android/launcher3/common/model/LauncherSettings$Favorites;->getContentUri(J)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v15, v2, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3283
    .end local v12    # "id":Ljava/lang/Long;
    .end local v15    # "values":Landroid/content/ContentValues;
    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3288
    :goto_3
    return-void

    .line 3247
    :cond_0
    :try_start_2
    const-string v0, "HomeLoader"

    const-string v1, "Oem dialer is not exist in the hotseat"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 3250
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 3253
    :cond_1
    const-string v0, "HomeLoader"

    const-string v1, "Oem dialer is not exist in the hotseat"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 3262
    :cond_2
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->getCustomerPageKey(Landroid/content/Context;)J

    move-result-wide v10

    .line 3263
    .local v10, "customerPage":J
    const-string v3, "container=? AND intent=? AND screen=?"

    .line 3265
    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    .end local v4    # "selectionArg":[Ljava/lang/String;
    const/4 v0, 0x0

    const/16 v1, -0x64

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3266
    invoke-virtual {v8, v1}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .restart local v4    # "selectionArg":[Ljava/lang/String;
    goto :goto_1

    .line 3280
    .end local v10    # "customerPage":J
    :cond_3
    :try_start_3
    const-string v0, "HomeLoader"

    const-string v1, "Customer dialer is not exist in the workspace"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    .line 3283
    :catchall_1
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 3286
    :cond_4
    const-string v0, "HomeLoader"

    const-string v1, "Customer dialer is not exist in the workspace"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private checkAppWidgetSingleInstanceList(Lcom/android/launcher3/home/LauncherAppWidgetInfo;)V
    .locals 6
    .param p1, "info"    # Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    .prologue
    const/4 v5, 0x1

    .line 3334
    sget-object v2, Lcom/android/launcher3/home/HomeController;->sSingleInstanceAppWidgetList:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3335
    sget-object v2, Lcom/android/launcher3/home/HomeLoader;->sUserManager:Lcom/android/launcher3/common/compat/UserManagerCompat;

    iget-object v3, p1, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher3/common/compat/UserHandleCompat;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 3336
    .local v0, "profileId":Ljava/lang/Long;
    sget-object v2, Lcom/android/launcher3/home/HomeController;->sSingleInstanceAppWidgetList:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    .line 3337
    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    .line 3336
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/LongSparseArray;

    .line 3338
    .local v1, "userMap":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 3341
    .end local v0    # "profileId":Ljava/lang/Long;
    .end local v1    # "userMap":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    :cond_0
    sget-object v2, Lcom/android/launcher3/home/HomeController;->sSingleInstanceAppWidgetPackageList:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3342
    sget-object v2, Lcom/android/launcher3/home/HomeLoader;->sUserManager:Lcom/android/launcher3/common/compat/UserManagerCompat;

    iget-object v3, p1, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher3/common/compat/UserHandleCompat;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 3343
    .restart local v0    # "profileId":Ljava/lang/Long;
    sget-object v2, Lcom/android/launcher3/home/HomeController;->sSingleInstanceAppWidgetPackageList:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    .line 3344
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 3343
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/LongSparseArray;

    .line 3345
    .restart local v1    # "userMap":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 3347
    .end local v0    # "profileId":Ljava/lang/Long;
    .end local v1    # "userMap":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    :cond_1
    return-void
.end method

.method private checkItemPlacement([[Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/common/base/item/ItemInfo;Ljava/util/HashMap;)Z
    .locals 16
    .param p1, "occupied"    # [[Lcom/android/launcher3/common/base/item/ItemInfo;
    .param p2, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<+",
            "Ljava/lang/Object;",
            ">;>;)Z"
        }
    .end annotation

    .prologue
    .line 1383
    .local p3, "needHandlingItems":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<+Ljava/lang/Object;>;>;"
    sget-object v11, Lcom/android/launcher3/home/HomeLoader;->sProfile:Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    iget-object v11, v11, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v11}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountX()I

    move-result v4

    .line 1384
    .local v4, "countX":I
    sget-object v11, Lcom/android/launcher3/home/HomeLoader;->sProfile:Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    iget-object v11, v11, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v11}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountY()I

    move-result v5

    .line 1386
    .local v5, "countY":I
    const/4 v11, 0x4

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    .line 1387
    .local v8, "overlapItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    const/4 v11, 0x3

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 1389
    .local v7, "outsideItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    .line 1390
    .local v2, "containerIndex":J
    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v14, -0x65

    cmp-long v11, v12, v14

    if-nez v11, :cond_2

    .line 1393
    sget-object v11, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0b003f

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 1394
    .local v6, "hotseatCount":I
    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    int-to-long v14, v6

    cmp-long v11, v12, v14

    if-ltz v11, :cond_0

    .line 1395
    const-string v11, "HomeLoader"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error loading shortcut "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " into hotseat position "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", position out of bounds: (0 to "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    add-int/lit8 v13, v6, -0x1

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1399
    const/4 v11, 0x0

    .line 1445
    .end local v6    # "hotseatCount":I
    :goto_0
    return v11

    .line 1402
    .restart local v6    # "hotseatCount":I
    :cond_0
    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    long-to-int v11, v12

    aget-object v11, p1, v11

    const/4 v12, 0x0

    aget-object v11, v11, v12

    if-eqz v11, :cond_1

    .line 1403
    const-string v11, "HomeLoader"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error loading shortcut into hotseat "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " into position ("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    iget v13, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    iget v13, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ") occupied by "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    long-to-int v13, v14

    aget-object v13, p1, v13

    const/4 v14, 0x0

    aget-object v13, v13, v14

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1407
    const/4 v11, 0x0

    goto :goto_0

    .line 1409
    :cond_1
    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    long-to-int v11, v12

    aget-object v11, p1, v11

    const/4 v12, 0x0

    aput-object p2, v11, v12

    .line 1410
    const/4 v11, 0x1

    goto :goto_0

    .line 1412
    .end local v6    # "hotseatCount":I
    :cond_2
    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v14, -0x64

    cmp-long v11, v12, v14

    if-nez v11, :cond_a

    .line 1413
    move-object/from16 v0, p2

    iget v11, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    if-ltz v11, :cond_3

    move-object/from16 v0, p2

    iget v11, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    if-ltz v11, :cond_3

    move-object/from16 v0, p2

    iget v11, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    move-object/from16 v0, p2

    iget v12, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    add-int/2addr v11, v12

    if-gt v11, v4, :cond_3

    move-object/from16 v0, p2

    iget v11, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    move-object/from16 v0, p2

    iget v12, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    add-int/2addr v11, v12

    if-le v11, v5, :cond_4

    .line 1415
    :cond_3
    const-string v11, "HomeLoader"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error loading shortcut "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " into cell ("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "-"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    iget v13, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    iget v13, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ") out of screen bounds ( "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "x"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1419
    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1420
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 1424
    :cond_4
    move-object/from16 v0, p2

    iget v9, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    .local v9, "x":I
    :goto_1
    move-object/from16 v0, p2

    iget v11, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    move-object/from16 v0, p2

    iget v12, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    add-int/2addr v11, v12

    if-ge v9, v11, :cond_7

    .line 1425
    move-object/from16 v0, p2

    iget v10, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    .local v10, "y":I
    :goto_2
    move-object/from16 v0, p2

    iget v11, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    move-object/from16 v0, p2

    iget v12, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    add-int/2addr v11, v12

    if-ge v10, v11, :cond_6

    .line 1426
    aget-object v11, p1, v9

    aget-object v11, v11, v10

    if-eqz v11, :cond_5

    .line 1427
    const-string v11, "HomeLoader"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error loading shortcut "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " into cell ("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "-"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ") occupied by "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    aget-object v13, p1, v9

    aget-object v13, v13, v10

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1432
    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1433
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 1425
    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 1424
    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 1437
    .end local v10    # "y":I
    :cond_7
    move-object/from16 v0, p2

    iget v9, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    :goto_3
    move-object/from16 v0, p2

    iget v11, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    move-object/from16 v0, p2

    iget v12, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    add-int/2addr v11, v12

    if-ge v9, v11, :cond_9

    .line 1438
    move-object/from16 v0, p2

    iget v10, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    .restart local v10    # "y":I
    :goto_4
    move-object/from16 v0, p2

    iget v11, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    move-object/from16 v0, p2

    iget v12, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    add-int/2addr v11, v12

    if-ge v10, v11, :cond_8

    .line 1439
    aget-object v11, p1, v9

    aput-object p2, v11, v10

    .line 1438
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 1437
    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 1442
    .end local v10    # "y":I
    :cond_9
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 1445
    .end local v9    # "x":I
    :cond_a
    const/4 v11, 0x1

    goto/16 :goto_0
.end method

.method public static checkNeedToRefreshWidget([Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;Z)Z
    .locals 5
    .param p0, "packages"    # [Ljava/lang/String;
    .param p1, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .param p2, "needToRefresh"    # Z

    .prologue
    .line 1558
    sget-object v3, Lcom/android/launcher3/home/HomeLoader;->sBgWidgetLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1559
    :try_start_0
    sget-object v2, Lcom/android/launcher3/home/HomeLoader;->sBgWidgetProviders:Ljava/util/HashMap;

    if-eqz v2, :cond_1

    .line 1560
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1561
    .local v1, "pkgSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {v1, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1563
    sget-object v2, Lcom/android/launcher3/home/HomeLoader;->sBgWidgetProviders:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/ComponentKey;

    .line 1564
    .local v0, "key":Lcom/android/launcher3/util/ComponentKey;
    iget-object v2, v0, Lcom/android/launcher3/util/ComponentKey;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {v2, p1}, Lcom/android/launcher3/common/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/launcher3/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    .line 1565
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    or-int/2addr p2, v2

    .line 1566
    goto :goto_0

    .line 1565
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 1568
    .end local v0    # "key":Lcom/android/launcher3/util/ComponentKey;
    .end local v1    # "pkgSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_1
    monitor-exit v3

    return p2

    .line 1569
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private createFolderItem(Landroid/database/Cursor;Lcom/android/launcher3/common/model/CursorInfo;Ljava/util/HashMap;Lcom/android/launcher3/util/LongArrayMap;)Lcom/android/launcher3/common/base/item/ItemInfo;
    .locals 14
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "cursorInfo"    # Lcom/android/launcher3/common/model/CursorInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Lcom/android/launcher3/common/model/CursorInfo;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<*>;>;",
            "Lcom/android/launcher3/util/LongArrayMap",
            "<[[",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;)",
            "Lcom/android/launcher3/common/base/item/ItemInfo;"
        }
    .end annotation

    .prologue
    .line 803
    .local p3, "needHandlingItems":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<*>;>;"
    .local p4, "occupied":Lcom/android/launcher3/util/LongArrayMap;, "Lcom/android/launcher3/util/LongArrayMap<[[Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    move-object/from16 v0, p2

    iget v10, v0, Lcom/android/launcher3/common/model/CursorInfo;->idIndex:I

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 804
    .local v4, "id":J
    move-object/from16 v0, p2

    iget v10, v0, Lcom/android/launcher3/common/model/CursorInfo;->containerIndex:I

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 805
    .local v2, "container":I
    move-object/from16 v0, p2

    iget v10, v0, Lcom/android/launcher3/common/model/CursorInfo;->restoredIndex:I

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    if-eqz v10, :cond_1

    const/4 v7, 0x1

    .line 807
    .local v7, "restored":Z
    :goto_0
    const/4 v9, 0x0

    .line 808
    .local v9, "returnItem":Lcom/android/launcher3/common/base/item/ItemInfo;
    sget-object v11, Lcom/android/launcher3/home/HomeLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v11

    .line 809
    :try_start_0
    sget-object v10, Lcom/android/launcher3/home/HomeLoader;->sBgFolders:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v10, v4, v5}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/folder/FolderInfo;

    .line 810
    .local v3, "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 812
    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 813
    .local v6, "itemsToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v10, 0x2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    .line 815
    .local v8, "restoredRows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    if-nez v3, :cond_0

    .line 816
    new-instance v3, Lcom/android/launcher3/folder/FolderInfo;

    .end local v3    # "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    invoke-direct {v3}, Lcom/android/launcher3/folder/FolderInfo;-><init>()V

    .line 820
    .restart local v3    # "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    :cond_0
    move-object/from16 v0, p2

    iget v10, v0, Lcom/android/launcher3/common/model/CursorInfo;->titleIndex:I

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v3, Lcom/android/launcher3/folder/FolderInfo;->title:Ljava/lang/CharSequence;

    .line 821
    iput-wide v4, v3, Lcom/android/launcher3/folder/FolderInfo;->id:J

    .line 822
    int-to-long v10, v2

    iput-wide v10, v3, Lcom/android/launcher3/folder/FolderInfo;->container:J

    .line 823
    move-object/from16 v0, p2

    iget v10, v0, Lcom/android/launcher3/common/model/CursorInfo;->screenIndex:I

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    int-to-long v10, v10

    iput-wide v10, v3, Lcom/android/launcher3/folder/FolderInfo;->screenId:J

    .line 824
    move-object/from16 v0, p2

    iget v10, v0, Lcom/android/launcher3/common/model/CursorInfo;->cellXIndex:I

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    iput v10, v3, Lcom/android/launcher3/folder/FolderInfo;->cellX:I

    .line 825
    move-object/from16 v0, p2

    iget v10, v0, Lcom/android/launcher3/common/model/CursorInfo;->cellYIndex:I

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    iput v10, v3, Lcom/android/launcher3/folder/FolderInfo;->cellY:I

    .line 826
    const/4 v10, 0x1

    iput v10, v3, Lcom/android/launcher3/folder/FolderInfo;->spanX:I

    .line 827
    const/4 v10, 0x1

    iput v10, v3, Lcom/android/launcher3/folder/FolderInfo;->spanY:I

    .line 828
    move-object/from16 v0, p2

    iget v10, v0, Lcom/android/launcher3/common/model/CursorInfo;->optionsIndex:I

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    iput v10, v3, Lcom/android/launcher3/folder/FolderInfo;->options:I

    .line 829
    move-object/from16 v0, p2

    iget v10, v0, Lcom/android/launcher3/common/model/CursorInfo;->colorIndex:I

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    iput v10, v3, Lcom/android/launcher3/folder/FolderInfo;->color:I

    .line 832
    iget-wide v10, v3, Lcom/android/launcher3/folder/FolderInfo;->container:J

    const-wide/16 v12, -0x65

    cmp-long v10, v10, v12

    if-nez v10, :cond_2

    const-wide/16 v10, 0x1

    :goto_1
    move-object/from16 v0, p4

    invoke-virtual {v0, v10, v11}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [[Lcom/android/launcher3/common/base/item/ItemInfo;

    move-object/from16 v0, p3

    invoke-direct {p0, v10, v3, v0}, Lcom/android/launcher3/home/HomeLoader;->checkItemPlacement([[Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/common/base/item/ItemInfo;Ljava/util/HashMap;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 834
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 835
    const/4 v10, 0x0

    .line 851
    :goto_2
    return-object v10

    .line 805
    .end local v3    # "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    .end local v6    # "itemsToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v7    # "restored":Z
    .end local v8    # "restoredRows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v9    # "returnItem":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_1
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 810
    .restart local v7    # "restored":Z
    .restart local v9    # "returnItem":Lcom/android/launcher3/common/base/item/ItemInfo;
    :catchall_0
    move-exception v10

    :try_start_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v10

    .line 832
    .restart local v3    # "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    .restart local v6    # "itemsToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v8    # "restoredRows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_2
    const-wide/16 v10, 0x0

    goto :goto_1

    .line 838
    :cond_3
    packed-switch v2, :pswitch_data_0

    .line 846
    :goto_3
    if-eqz v7, :cond_4

    .line 848
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 850
    :cond_4
    invoke-virtual {p0, v3}, Lcom/android/launcher3/home/HomeLoader;->putItemToIdMap(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    move-object v10, v9

    .line 851
    goto :goto_2

    .line 841
    :pswitch_0
    invoke-virtual {p0, v3}, Lcom/android/launcher3/home/HomeLoader;->addPagesItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 842
    move-object v9, v3

    goto :goto_3

    .line 838
    nop

    :pswitch_data_0
    .packed-switch -0x65
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private createItems(Landroid/database/Cursor;Lcom/android/launcher3/common/model/CursorInfo;Ljava/util/HashMap;Ljava/util/ArrayList;Lcom/android/launcher3/util/LongArrayMap;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)Lcom/android/launcher3/util/LongArrayMap;
    .locals 8
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "cursorIconInfo"    # Lcom/android/launcher3/common/model/CursorInfo;
    .param p6, "task"    # Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Lcom/android/launcher3/common/model/CursorInfo;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<*>;>;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;",
            "Lcom/android/launcher3/util/LongArrayMap",
            "<[[",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;",
            "Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;",
            ")",
            "Lcom/android/launcher3/util/LongArrayMap",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 647
    .local p3, "needHandlingItems":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<*>;>;"
    .local p4, "pageItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .local p5, "occupied":Lcom/android/launcher3/util/LongArrayMap;, "Lcom/android/launcher3/util/LongArrayMap<[[Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    const/4 v1, 0x0

    .line 648
    .local v1, "folders":Lcom/android/launcher3/util/LongArrayMap;, "Lcom/android/launcher3/util/LongArrayMap<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    :cond_0
    :goto_0
    invoke-virtual {p0, p6}, Lcom/android/launcher3/home/HomeLoader;->isStopped(Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 650
    :try_start_0
    iget v5, p2, Lcom/android/launcher3/common/model/CursorInfo;->itemTypeIndex:I

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 651
    .local v4, "itemType":I
    const/4 v3, 0x0

    .line 652
    .local v3, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    packed-switch v4, :pswitch_data_0

    .line 671
    :cond_1
    :goto_1
    :pswitch_0
    if-eqz v3, :cond_0

    iget v5, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->hidden:I

    if-nez v5, :cond_0

    .line 672
    invoke-virtual {p4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 674
    .end local v3    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v4    # "itemType":I
    :catch_0
    move-exception v0

    .line 675
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "HomeLoader"

    const-string v6, "Desktop items loading interrupted"

    const/4 v7, 0x1

    invoke-static {v5, v6, v0, v7}, Lcom/android/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Z)V

    goto :goto_0

    .line 655
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v3    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    .restart local v4    # "itemType":I
    :pswitch_1
    :try_start_1
    invoke-virtual {p0, p1, p2, p3, p5}, Lcom/android/launcher3/home/HomeLoader;->createShortcutItem(Landroid/database/Cursor;Lcom/android/launcher3/common/model/CursorInfo;Ljava/util/HashMap;Lcom/android/launcher3/util/LongArrayMap;)Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v3

    .line 656
    goto :goto_1

    .line 658
    :pswitch_2
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/launcher3/home/HomeLoader;->createFolderItem(Landroid/database/Cursor;Lcom/android/launcher3/common/model/CursorInfo;Ljava/util/HashMap;Lcom/android/launcher3/util/LongArrayMap;)Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v3

    .line 659
    if-eqz v3, :cond_1

    .line 660
    if-nez v1, :cond_2

    .line 661
    new-instance v2, Lcom/android/launcher3/util/LongArrayMap;

    invoke-direct {v2}, Lcom/android/launcher3/util/LongArrayMap;-><init>()V

    .end local v1    # "folders":Lcom/android/launcher3/util/LongArrayMap;, "Lcom/android/launcher3/util/LongArrayMap<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .local v2, "folders":Lcom/android/launcher3/util/LongArrayMap;, "Lcom/android/launcher3/util/LongArrayMap<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    move-object v1, v2

    .line 663
    .end local v2    # "folders":Lcom/android/launcher3/util/LongArrayMap;, "Lcom/android/launcher3/util/LongArrayMap<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .restart local v1    # "folders":Lcom/android/launcher3/util/LongArrayMap;, "Lcom/android/launcher3/util/LongArrayMap<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    :cond_2
    iget-wide v6, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    invoke-virtual {v1, v6, v7, v3}, Lcom/android/launcher3/util/LongArrayMap;->put(JLjava/lang/Object;)V

    goto :goto_1

    .line 668
    :pswitch_3
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/launcher3/home/HomeLoader;->createWidgetItem(Landroid/database/Cursor;Lcom/android/launcher3/common/model/CursorInfo;Ljava/util/HashMap;Lcom/android/launcher3/util/LongArrayMap;)Lcom/android/launcher3/common/base/item/ItemInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    goto :goto_1

    .line 678
    .end local v3    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v4    # "itemType":I
    :cond_3
    return-object v1

    .line 652
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private createWidgetItem(Landroid/database/Cursor;Lcom/android/launcher3/common/model/CursorInfo;Ljava/util/HashMap;Lcom/android/launcher3/util/LongArrayMap;)Lcom/android/launcher3/common/base/item/ItemInfo;
    .locals 32
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "cursorInfo"    # Lcom/android/launcher3/common/model/CursorInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Lcom/android/launcher3/common/model/CursorInfo;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<*>;>;",
            "Lcom/android/launcher3/util/LongArrayMap",
            "<[[",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;)",
            "Lcom/android/launcher3/common/base/item/ItemInfo;"
        }
    .end annotation

    .prologue
    .line 685
    .local p3, "needHandlingItems":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<*>;>;"
    .local p4, "occupied":Lcom/android/launcher3/util/LongArrayMap;, "Lcom/android/launcher3/util/LongArrayMap<[[Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/launcher3/common/model/CursorInfo;->containerIndex:I

    move/from16 v29, v0

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 686
    .local v7, "container":I
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/launcher3/common/model/CursorInfo;->itemTypeIndex:I

    move/from16 v29, v0

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 687
    .local v14, "itemType":I
    const/16 v29, 0x5

    move/from16 v0, v29

    if-ne v14, v0, :cond_0

    const/4 v8, 0x1

    .line 689
    .local v8, "customWidget":Z
    :goto_0
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/launcher3/common/model/CursorInfo;->appWidgetIdIndex:I

    move/from16 v29, v0

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 690
    .local v4, "appWidgetId":I
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/launcher3/common/model/CursorInfo;->profileIdIndex:I

    move/from16 v29, v0

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    move/from16 v0, v29

    int-to-long v0, v0

    move-wide/from16 v22, v0

    .line 691
    .local v22, "serialNumber":J
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/launcher3/common/model/CursorInfo;->appWidgetProviderIndex:I

    move/from16 v29, v0

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 692
    .local v21, "savedProvider":Ljava/lang/String;
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/launcher3/common/model/CursorInfo;->idIndex:I

    move/from16 v29, v0

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 693
    .local v10, "id":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/HomeLoader;->mAllUsers:Landroid/util/LongSparseArray;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/launcher3/common/compat/UserHandleCompat;

    .line 697
    .local v25, "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    const/16 v29, 0x1

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    move-object/from16 v0, p3

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    .line 699
    .local v15, "itemsToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    if-nez v25, :cond_1

    .line 700
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 701
    const/16 v20, 0x0

    .line 797
    :goto_1
    return-object v20

    .line 687
    .end local v4    # "appWidgetId":I
    .end local v8    # "customWidget":Z
    .end local v10    # "id":J
    .end local v15    # "itemsToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v21    # "savedProvider":Ljava/lang/String;
    .end local v22    # "serialNumber":J
    .end local v25    # "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    .line 704
    .restart local v4    # "appWidgetId":I
    .restart local v8    # "customWidget":Z
    .restart local v10    # "id":J
    .restart local v15    # "itemsToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v21    # "savedProvider":Ljava/lang/String;
    .restart local v22    # "serialNumber":J
    .restart local v25    # "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    :cond_1
    invoke-static/range {v21 .. v21}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v6

    .line 706
    .local v6, "component":Landroid/content/ComponentName;
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/launcher3/common/model/CursorInfo;->restoredIndex:I

    move/from16 v29, v0

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 707
    .local v19, "restoreStatus":I
    and-int/lit8 v29, v19, 0x1

    if-nez v29, :cond_2

    const/4 v12, 0x1

    .line 708
    .local v12, "isIdValid":Z
    :goto_2
    and-int/lit8 v29, v19, 0x2

    if-nez v29, :cond_3

    const/16 v27, 0x1

    .line 710
    .local v27, "wasProviderReady":Z
    :goto_3
    sget-object v29, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    invoke-static/range {v29 .. v29}, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;

    move-result-object v28

    .line 711
    .local v28, "wm":Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;
    if-lez v4, :cond_4

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v17

    .line 714
    .local v17, "provider":Landroid/appwidget/AppWidgetProviderInfo;
    :goto_4
    invoke-static/range {v17 .. v17}, Lcom/android/launcher3/LauncherModel;->isValidProvider(Landroid/appwidget/AppWidgetProviderInfo;)Z

    move-result v13

    .line 715
    .local v13, "isProviderReady":Z
    sget-boolean v29, Lcom/android/launcher3/home/HomeLoader;->sIsSafeMode:Z

    if-nez v29, :cond_5

    if-nez v8, :cond_5

    if-eqz v27, :cond_5

    if-nez v13, :cond_5

    .line 716
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Deleting widget that isn\'t installed anymore: id="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " appWidgetId="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 719
    .local v16, "log":Ljava/lang/String;
    const-string v29, "HomeLoader"

    move-object/from16 v0, v29

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    const-string v29, "HomeLoader"

    const/16 v30, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v16

    move/from16 v2, v30

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 721
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 722
    const/16 v20, 0x0

    goto :goto_1

    .line 707
    .end local v12    # "isIdValid":Z
    .end local v13    # "isProviderReady":Z
    .end local v16    # "log":Ljava/lang/String;
    .end local v17    # "provider":Landroid/appwidget/AppWidgetProviderInfo;
    .end local v27    # "wasProviderReady":Z
    .end local v28    # "wm":Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;
    :cond_2
    const/4 v12, 0x0

    goto :goto_2

    .line 708
    .restart local v12    # "isIdValid":Z
    :cond_3
    const/16 v27, 0x0

    goto :goto_3

    .line 711
    .restart local v27    # "wasProviderReady":Z
    .restart local v28    # "wm":Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;
    :cond_4
    sget-object v29, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    .line 712
    invoke-static/range {v21 .. v21}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/home/HomeLoader;->getProviderInfo(Landroid/content/Context;Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    move-result-object v17

    goto :goto_4

    .line 724
    .restart local v13    # "isProviderReady":Z
    .restart local v17    # "provider":Landroid/appwidget/AppWidgetProviderInfo;
    :cond_5
    if-eqz v13, :cond_8

    .line 725
    new-instance v5, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-direct {v5, v4, v0}, Lcom/android/launcher3/home/LauncherAppWidgetInfo;-><init>(ILandroid/content/ComponentName;)V

    .line 730
    .local v5, "appWidgetInfo":Lcom/android/launcher3/home/LauncherAppWidgetInfo;
    and-int/lit8 v24, v19, -0x9

    .line 731
    .local v24, "status":I
    if-nez v27, :cond_6

    .line 736
    if-eqz v12, :cond_7

    .line 737
    const/16 v24, 0x4

    .line 742
    :cond_6
    :goto_5
    move/from16 v0, v24

    iput v0, v5, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->restoreStatus:I

    .line 762
    .end local v24    # "status":I
    :goto_6
    iput-wide v10, v5, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->id:J

    .line 763
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/launcher3/common/model/CursorInfo;->screenIndex:I

    move/from16 v29, v0

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    move/from16 v0, v29

    int-to-long v0, v0

    move-wide/from16 v30, v0

    move-wide/from16 v0, v30

    iput-wide v0, v5, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->screenId:J

    .line 764
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/launcher3/common/model/CursorInfo;->cellXIndex:I

    move/from16 v29, v0

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    move/from16 v0, v29

    iput v0, v5, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->cellX:I

    .line 765
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/launcher3/common/model/CursorInfo;->cellYIndex:I

    move/from16 v29, v0

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    move/from16 v0, v29

    iput v0, v5, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->cellY:I

    .line 766
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/launcher3/common/model/CursorInfo;->spanXIndex:I

    move/from16 v29, v0

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    move/from16 v0, v29

    iput v0, v5, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->spanX:I

    .line 767
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/launcher3/common/model/CursorInfo;->spanYIndex:I

    move/from16 v29, v0

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    move/from16 v0, v29

    iput v0, v5, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->spanY:I

    .line 768
    move-object/from16 v0, v25

    iput-object v0, v5, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    .line 770
    const/16 v29, -0x64

    move/from16 v0, v29

    if-eq v7, v0, :cond_e

    const/16 v29, -0x65

    move/from16 v0, v29

    if-eq v7, v0, :cond_e

    .line 772
    const-string v29, "HomeLoader"

    const-string v30, "Widget found where container != CONTAINER_DESKTOP nor CONTAINER_HOTSEAT - ignoring!"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 774
    const/16 v20, 0x0

    goto/16 :goto_1

    .line 739
    .restart local v24    # "status":I
    :cond_7
    and-int/lit8 v24, v24, -0x3

    goto/16 :goto_5

    .line 744
    .end local v5    # "appWidgetInfo":Lcom/android/launcher3/home/LauncherAppWidgetInfo;
    .end local v24    # "status":I
    :cond_8
    const-string v29, "HomeLoader"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Widget restore pending id="

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " appWidgetId="

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " status ="

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    new-instance v5, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    invoke-direct {v5, v4, v6}, Lcom/android/launcher3/home/LauncherAppWidgetInfo;-><init>(ILandroid/content/ComponentName;)V

    .line 746
    .restart local v5    # "appWidgetInfo":Lcom/android/launcher3/home/LauncherAppWidgetInfo;
    move/from16 v0, v19

    iput v0, v5, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->restoreStatus:I

    .line 747
    sget-object v29, Lcom/android/launcher3/home/HomeLoader;->sInstallingPkgs:Ljava/util/HashMap;

    if-nez v29, :cond_a

    const/4 v9, 0x0

    .line 749
    .local v9, "installProgress":Ljava/lang/Integer;
    :goto_7
    and-int/lit8 v29, v19, 0x8

    if-eqz v29, :cond_b

    .line 759
    :cond_9
    :goto_8
    if-nez v9, :cond_d

    const/16 v29, 0x0

    :goto_9
    move/from16 v0, v29

    iput v0, v5, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->installProgress:I

    goto/16 :goto_6

    .line 747
    .end local v9    # "installProgress":Ljava/lang/Integer;
    :cond_a
    sget-object v29, Lcom/android/launcher3/home/HomeLoader;->sInstallingPkgs:Ljava/util/HashMap;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/Integer;

    move-object/from16 v9, v29

    goto :goto_7

    .line 751
    .restart local v9    # "installProgress":Ljava/lang/Integer;
    :cond_b
    if-eqz v9, :cond_c

    .line 753
    iget v0, v5, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->restoreStatus:I

    move/from16 v29, v0

    or-int/lit8 v29, v29, 0x8

    move/from16 v0, v29

    iput v0, v5, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->restoreStatus:I

    goto :goto_8

    .line 754
    :cond_c
    sget-boolean v29, Lcom/android/launcher3/home/HomeLoader;->sIsSafeMode:Z

    if-nez v29, :cond_9

    .line 755
    const-string v29, "HomeLoader"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Unrestored widget removed: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    const/16 v31, 0x1

    invoke-static/range {v29 .. v31}, Lcom/android/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 756
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 757
    const/16 v20, 0x0

    goto/16 :goto_1

    .line 759
    :cond_d
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v29

    goto :goto_9

    .line 777
    .end local v9    # "installProgress":Ljava/lang/Integer;
    :cond_e
    int-to-long v0, v7

    move-wide/from16 v30, v0

    move-wide/from16 v0, v30

    iput-wide v0, v5, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->container:J

    .line 779
    const-wide/16 v30, 0x0

    move-object/from16 v0, p4

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, [[Lcom/android/launcher3/common/base/item/ItemInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v5, v2}, Lcom/android/launcher3/home/HomeLoader;->checkItemPlacement([[Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/common/base/item/ItemInfo;Ljava/util/HashMap;)Z

    move-result v29

    if-nez v29, :cond_f

    .line 780
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 781
    const/16 v20, 0x0

    goto/16 :goto_1

    .line 784
    :cond_f
    if-nez v8, :cond_11

    .line 785
    iget-object v0, v5, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v18

    .line 786
    .local v18, "providerName":Ljava/lang/String;
    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_10

    iget v0, v5, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->restoreStatus:I

    move/from16 v29, v0

    move/from16 v0, v29

    move/from16 v1, v19

    if-eq v0, v1, :cond_11

    .line 787
    :cond_10
    new-instance v26, Landroid/content/ContentValues;

    invoke-direct/range {v26 .. v26}, Landroid/content/ContentValues;-><init>()V

    .line 788
    .local v26, "values":Landroid/content/ContentValues;
    const-string v29, "appWidgetProvider"

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    const-string v29, "restored"

    iget v0, v5, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->restoreStatus:I

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 790
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v10, v11, v1}, Lcom/android/launcher3/home/HomeLoader;->updateItem(JLandroid/content/ContentValues;)V

    .line 793
    .end local v18    # "providerName":Ljava/lang/String;
    .end local v26    # "values":Landroid/content/ContentValues;
    :cond_11
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/launcher3/home/HomeLoader;->putItemToIdMap(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 794
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/launcher3/home/HomeLoader;->addPagesItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 795
    move-object/from16 v20, v5

    .line 797
    .local v20, "returnItem":Lcom/android/launcher3/common/base/item/ItemInfo;
    goto/16 :goto_1
.end method

.method private doHandlingItems(Ljava/util/HashMap;Ljava/util/ArrayList;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<*>;>;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 590
    .local p1, "needHandlingItems":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<*>;>;"
    .local p2, "pageItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_0

    .line 592
    const-string v10, "_id"

    const/4 v9, 0x1

    .line 593
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Iterable;

    .line 592
    invoke-static {v10, v9}, Lcom/android/launcher3/Utilities;->createDbSelectionQuery(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v8

    .line 594
    .local v8, "where":Ljava/lang/String;
    sget-object v9, Lcom/android/launcher3/home/HomeLoader;->sContentResolver:Landroid/content/ContentResolver;

    sget-object v10, Lcom/android/launcher3/common/model/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v8, v11}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 595
    const-string v9, "HomeLoader"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "doHandlingItems Removed = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    sget-object v9, Lcom/android/launcher3/home/HomeLoader;->sFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    invoke-virtual {v9}, Lcom/android/launcher3/common/model/FavoritesProvider;->deleteEmptyFolders()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 599
    .local v2, "folderId":J
    sget-object v11, Lcom/android/launcher3/home/HomeLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v11

    .line 600
    :try_start_0
    sget-object v9, Lcom/android/launcher3/home/HomeLoader;->sBgFolders:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v9, v2, v3}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 601
    .local v6, "removeFolderItem":Lcom/android/launcher3/common/base/item/ItemInfo;
    invoke-virtual {p0, v6}, Lcom/android/launcher3/home/HomeLoader;->removePagesItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 602
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 603
    sget-object v9, Lcom/android/launcher3/home/HomeLoader;->sBgFolders:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v9, v2, v3}, Lcom/android/launcher3/util/LongArrayMap;->remove(J)V

    .line 604
    sget-object v9, Lcom/android/launcher3/home/HomeLoader;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v9, v2, v3}, Lcom/android/launcher3/util/LongArrayMap;->remove(J)V

    .line 605
    monitor-exit v11

    goto :goto_0

    .end local v6    # "removeFolderItem":Lcom/android/launcher3/common/base/item/ItemInfo;
    :catchall_0
    move-exception v9

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .line 610
    .end local v2    # "folderId":J
    .end local v8    # "where":Ljava/lang/String;
    :cond_0
    const/4 v9, 0x2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_1

    .line 612
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 613
    .local v7, "values":Landroid/content/ContentValues;
    const-string v10, "_id"

    const/4 v9, 0x2

    .line 614
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Iterable;

    .line 613
    invoke-static {v10, v9}, Lcom/android/launcher3/Utilities;->createDbSelectionQuery(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v8

    .line 615
    .restart local v8    # "where":Ljava/lang/String;
    const-string v9, "restored"

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 616
    sget-object v9, Lcom/android/launcher3/home/HomeLoader;->sContentResolver:Landroid/content/ContentResolver;

    sget-object v10, Lcom/android/launcher3/common/model/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v7, v8, v11}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 617
    const-string v9, "HomeLoader"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "doHandlingItems restored = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    .end local v7    # "values":Landroid/content/ContentValues;
    .end local v8    # "where":Ljava/lang/String;
    :cond_1
    const/4 v9, 0x4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_2

    .line 622
    const/4 v9, 0x4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 623
    .local v5, "overlapItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    sget-object v9, Lcom/android/launcher3/home/HomeLoader;->sProfile:Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    iget-object v9, v9, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v9}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountX()I

    move-result v0

    .line 624
    .local v0, "countX":I
    sget-object v9, Lcom/android/launcher3/home/HomeLoader;->sProfile:Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    iget-object v9, v9, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v9}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountY()I

    move-result v1

    .line 626
    .local v1, "countY":I
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 627
    .local v4, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    iput v0, v4, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    .line 628
    iput v1, v4, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    .line 629
    const-string v10, "HomeLoader"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "doHandlingItems overlap = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Lcom/android/launcher3/common/base/item/ItemInfo;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 634
    .end local v0    # "countX":I
    .end local v1    # "countY":I
    .end local v4    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v5    # "overlapItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    :cond_2
    const/4 v9, 0x4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-gtz v9, :cond_3

    const/4 v9, 0x3

    .line 635
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_4

    .line 636
    :cond_3
    invoke-direct {p0, p2}, Lcom/android/launcher3/home/HomeLoader;->handleOutsideItems(Ljava/util/ArrayList;)V

    .line 637
    const-string v10, "HomeLoader"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "doHandlingItems extra = "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v9, 0x3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    :cond_4
    return-void
.end method

.method private fillOccupied(IIIIII[[Z)V
    .locals 4
    .param p1, "countX"    # I
    .param p2, "countY"    # I
    .param p3, "cellX"    # I
    .param p4, "cellY"    # I
    .param p5, "spanX"    # I
    .param p6, "spanY"    # I
    .param p7, "occupied"    # [[Z

    .prologue
    .line 3571
    if-ltz p3, :cond_0

    if-ltz p4, :cond_0

    add-int v2, p3, p5

    if-gt v2, p1, :cond_0

    add-int v2, p4, p6

    if-le v2, p2, :cond_1

    .line 3579
    :cond_0
    return-void

    .line 3574
    :cond_1
    move v0, p3

    .local v0, "x":I
    :goto_0
    add-int v2, p3, p5

    if-ge v0, v2, :cond_0

    if-ge v0, p1, :cond_0

    .line 3575
    move v1, p4

    .local v1, "y":I
    :goto_1
    add-int v2, p4, p6

    if-ge v1, v2, :cond_2

    if-ge v1, p2, :cond_2

    .line 3576
    aget-object v2, p7, v0

    const/4 v3, 0x1

    aput-boolean v3, v2, v1

    .line 3575
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3574
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private findSpaceForItem(Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)Landroid/util/Pair;
    .locals 22
    .param p3, "spanX"    # I
    .param p4, "spanY"    # I
    .param p5, "lastPosition"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;IIZ)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "[I>;"
        }
    .end annotation

    .prologue
    .line 2207
    .local p1, "workspaceScreens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .local p2, "addedWorkspaceScreensFinal":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v18, Landroid/util/LongSparseArray;

    invoke-direct/range {v18 .. v18}, Landroid/util/LongSparseArray;-><init>()V

    .line 2210
    .local v18, "screenItems":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;>;"
    sget-object v3, Lcom/android/launcher3/home/HomeLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2211
    :try_start_0
    sget-object v2, Lcom/android/launcher3/home/HomeLoader;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v2}, Lcom/android/launcher3/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 2212
    .local v13, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-wide v8, v13, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v20, -0x64

    cmp-long v7, v8, v20

    if-nez v7, :cond_0

    iget v7, v13, Lcom/android/launcher3/common/base/item/ItemInfo;->hidden:I

    if-nez v7, :cond_0

    .line 2213
    iget-wide v8, v13, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    move-object/from16 v0, v18

    invoke-virtual {v0, v8, v9}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/ArrayList;

    .line 2214
    .local v14, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    if-nez v14, :cond_1

    .line 2215
    new-instance v14, Ljava/util/ArrayList;

    .end local v14    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 2216
    .restart local v14    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    iget-wide v8, v13, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    move-object/from16 v0, v18

    invoke-virtual {v0, v8, v9, v14}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 2218
    :cond_1
    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2221
    .end local v13    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v14    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_2
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2224
    const-wide/16 v4, 0x0

    .line 2225
    .local v4, "screenId":J
    const/4 v2, 0x2

    new-array v6, v2, [I

    .line 2226
    .local v6, "coordinates":[I
    sget-object v2, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/launcher3/Utilities;->getHomeDefaultPageKey(Landroid/content/Context;)I

    move-result v10

    .line 2227
    .local v10, "defaultScreenIndex":I
    const/4 v15, 0x0

    .line 2229
    .local v15, "needNewScreen":Z
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 2230
    .local v17, "screenCount":I
    if-eqz p5, :cond_7

    .line 2231
    add-int/lit8 v12, v17, -0x1

    .local v12, "i":I
    :goto_1
    const/4 v2, -0x1

    if-le v12, v2, :cond_3

    .line 2232
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 2233
    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 2251
    .end local v12    # "i":I
    :cond_3
    :goto_2
    const/4 v11, 0x0

    .line 2253
    .local v11, "found":Z
    if-nez v15, :cond_5

    .line 2254
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeLoader;->mItemPositionHelper:Lcom/android/launcher3/home/HomeItemPositionHelper;

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-virtual/range {v2 .. v9}, Lcom/android/launcher3/home/HomeItemPositionHelper;->findNextAvailableIconSpaceInScreen(Ljava/util/ArrayList;J[IIIZ)Z

    move-result v11

    .line 2257
    if-nez v11, :cond_5

    .line 2258
    add-int/lit8 v10, v10, 0x1

    move/from16 v16, v10

    .line 2259
    .local v16, "screen":I
    if-eqz p5, :cond_4

    .line 2260
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    add-int/lit8 v16, v2, 0x1

    .line 2263
    :cond_4
    :goto_3
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_5

    .line 2264
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 2265
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeLoader;->mItemPositionHelper:Lcom/android/launcher3/home/HomeItemPositionHelper;

    .line 2266
    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    .line 2265
    invoke-virtual/range {v2 .. v9}, Lcom/android/launcher3/home/HomeItemPositionHelper;->findNextAvailableIconSpaceInScreen(Ljava/util/ArrayList;J[IIIZ)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2268
    const/4 v11, 0x1

    .line 2275
    .end local v16    # "screen":I
    :cond_5
    if-nez v11, :cond_b

    .line 2277
    invoke-static {}, Lcom/android/launcher3/common/model/FavoritesProvider;->getInstance()Lcom/android/launcher3/common/model/FavoritesProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/common/model/FavoritesProvider;->generateNewScreenId()J

    move-result-wide v4

    .line 2280
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2281
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2284
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeLoader;->mItemPositionHelper:Lcom/android/launcher3/home/HomeItemPositionHelper;

    .line 2285
    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    .line 2284
    invoke-virtual/range {v2 .. v9}, Lcom/android/launcher3/home/HomeItemPositionHelper;->findNextAvailableIconSpaceInScreen(Ljava/util/ArrayList;J[IIIZ)Z

    move-result v2

    if-nez v2, :cond_b

    .line 2286
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Can\'t find space to add the item"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2231
    .end local v11    # "found":Z
    .restart local v12    # "i":I
    :cond_6
    add-int/lit8 v12, v12, -0x1

    goto/16 :goto_1

    .line 2240
    .end local v12    # "i":I
    :cond_7
    add-int/lit8 v10, v10, 0x1

    .line 2241
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v10, v2, :cond_8

    .line 2242
    const/4 v15, 0x1

    goto/16 :goto_2

    .line 2244
    :cond_8
    if-gez v10, :cond_9

    .line 2245
    const-string v2, "HomeLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "findSpaceForItem - index erorr : "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2246
    const/4 v10, 0x0

    .line 2248
    :cond_9
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto/16 :goto_2

    .line 2263
    .restart local v11    # "found":Z
    .restart local v16    # "screen":I
    :cond_a
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_3

    .line 2289
    .end local v16    # "screen":I
    :cond_b
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    return-object v2
.end method

.method private getAllItemInHome()Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const-wide/16 v10, -0x64

    const-wide/16 v8, -0x65

    .line 3492
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3493
    .local v3, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3494
    .local v0, "folderIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    sget-object v5, Lcom/android/launcher3/home/HomeLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v5

    .line 3495
    :try_start_0
    sget-object v4, Lcom/android/launcher3/home/HomeLoader;->sBgFolders:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v4}, Lcom/android/launcher3/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/folder/FolderInfo;

    .line 3496
    .local v1, "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    iget-wide v6, v1, Lcom/android/launcher3/folder/FolderInfo;->container:J

    cmp-long v6, v6, v10

    if-eqz v6, :cond_1

    iget-wide v6, v1, Lcom/android/launcher3/folder/FolderInfo;->container:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    .line 3498
    :cond_1
    iget-wide v6, v1, Lcom/android/launcher3/folder/FolderInfo;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3507
    .end local v1    # "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 3500
    :cond_2
    :try_start_1
    sget-object v4, Lcom/android/launcher3/home/HomeLoader;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v4}, Lcom/android/launcher3/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 3501
    .local v2, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-wide v6, v2, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    cmp-long v6, v6, v10

    if-eqz v6, :cond_4

    iget-wide v6, v2, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_4

    iget-wide v6, v2, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    .line 3503
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3504
    :cond_4
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3507
    .end local v2    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_5
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3508
    return-object v3
.end method

.method private getAppShortcutInfo(Landroid/content/Intent;Lcom/android/launcher3/common/compat/UserHandleCompat;Landroid/database/Cursor;Lcom/android/launcher3/common/model/CursorInfo;ZZ)Lcom/android/launcher3/common/base/item/IconInfo;
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .param p3, "c"    # Landroid/database/Cursor;
    .param p4, "cursorItemInfo"    # Lcom/android/launcher3/common/model/CursorInfo;
    .param p5, "allowMissingTarget"    # Z
    .param p6, "useLowResIcon"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 1275
    if-nez p2, :cond_1

    .line 1276
    const-string v0, "HomeLoader"

    const-string v4, "Null user found in getShortcutInfo"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1322
    :cond_0
    :goto_0
    return-object v1

    .line 1280
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 1281
    .local v2, "componentName":Landroid/content/ComponentName;
    if-nez v2, :cond_2

    .line 1282
    const-string v0, "HomeLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Missing component found in getShortcutInfo: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1286
    :cond_2
    new-instance v8, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1287
    .local v8, "newIntent":Landroid/content/Intent;
    const-string v0, "android.intent.category.LAUNCHER"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1288
    invoke-virtual {v8, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1289
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sLauncherApps:Lcom/android/launcher3/common/compat/LauncherAppsCompat;

    invoke-virtual {v0, v8, p2}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->resolveActivity(Landroid/content/Intent;Lcom/android/launcher3/common/compat/UserHandleCompat;)Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;

    move-result-object v3

    .line 1290
    .local v3, "lai":Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    if-nez v3, :cond_3

    if-nez p5, :cond_3

    .line 1291
    const-string v0, "HomeLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Missing activity found in getShortcutInfo: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1295
    :cond_3
    new-instance v1, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-direct {v1}, Lcom/android/launcher3/common/base/item/IconInfo;-><init>()V

    .line 1296
    .local v1, "info":Lcom/android/launcher3/common/base/item/IconInfo;
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sIconCache:Lcom/android/launcher3/common/model/IconCache;

    move-object v4, p2

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/common/model/IconCache;->getTitleAndIcon(Lcom/android/launcher3/common/base/item/IconInfo;Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;Lcom/android/launcher3/common/compat/UserHandleCompat;ZZ)V

    .line 1297
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sIconCache:Lcom/android/launcher3/common/model/IconCache;

    sget-object v4, Lcom/android/launcher3/home/HomeLoader;->sIconCache:Lcom/android/launcher3/common/model/IconCache;

    invoke-virtual {v1, v4}, Lcom/android/launcher3/common/base/item/IconInfo;->getIcon(Lcom/android/launcher3/common/model/IconCache;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v0, v4, p2}, Lcom/android/launcher3/common/model/IconCache;->isDefaultIcon(Landroid/graphics/Bitmap;Lcom/android/launcher3/common/compat/UserHandleCompat;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz p3, :cond_5

    .line 1298
    iget v0, p4, Lcom/android/launcher3/common/model/CursorInfo;->iconIndex:I

    sget-object v4, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    invoke-static {p3, v0, v4}, Lcom/android/launcher3/util/BitmapUtils;->createIconBitmap(Landroid/database/Cursor;ILandroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1299
    .local v7, "icon":Landroid/graphics/Bitmap;
    if-nez v7, :cond_4

    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sIconCache:Lcom/android/launcher3/common/model/IconCache;

    invoke-virtual {v0, p2}, Lcom/android/launcher3/common/model/IconCache;->getDefaultIcon(Lcom/android/launcher3/common/compat/UserHandleCompat;)Landroid/graphics/Bitmap;

    move-result-object v7

    .end local v7    # "icon":Landroid/graphics/Bitmap;
    :cond_4
    invoke-virtual {v1, v7}, Lcom/android/launcher3/common/base/item/IconInfo;->setIcon(Landroid/graphics/Bitmap;)V

    .line 1302
    :cond_5
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isAppSuspended(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1303
    const/4 v0, 0x4

    iput v0, v1, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    .line 1307
    :cond_6
    iget-object v0, v1, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz p3, :cond_7

    .line 1308
    iget v0, p4, Lcom/android/launcher3/common/model/CursorInfo;->titleIndex:I

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    .line 1312
    :cond_7
    iget-object v0, v1, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    if-nez v0, :cond_8

    .line 1313
    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    .line 1316
    :cond_8
    iput v5, v1, Lcom/android/launcher3/common/base/item/IconInfo;->itemType:I

    .line 1317
    iput-object p2, v1, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    .line 1318
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sUserManager:Lcom/android/launcher3/common/compat/UserManagerCompat;

    iget-object v4, v1, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    iget-object v5, v1, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {v0, v4, v5}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getBadgedLabelForUser(Ljava/lang/CharSequence;Lcom/android/launcher3/common/compat/UserHandleCompat;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v1, Lcom/android/launcher3/common/base/item/IconInfo;->contentDescription:Ljava/lang/CharSequence;

    .line 1319
    if-eqz v3, :cond_0

    .line 1320
    invoke-static {v3}, Lcom/android/launcher3/common/base/item/IconInfo;->initFlags(Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;)I

    move-result v0

    iput v0, v1, Lcom/android/launcher3/common/base/item/IconInfo;->flags:I

    goto/16 :goto_0
.end method

.method private getCallback()Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;
    .locals 2

    .prologue
    .line 2293
    iget-object v1, p0, Lcom/android/launcher3/home/HomeLoader;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2294
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mCallbacks:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2295
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getCellXFromHotseatOrder(I)I
    .locals 1
    .param p1, "rank"    # I

    .prologue
    .line 3776
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sProfile:Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .end local p1    # "rank":I
    :cond_0
    return p1
.end method

.method private getCellYFromHotseatOrder(I)I
    .locals 2
    .param p1, "rank"    # I

    .prologue
    .line 3780
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sProfile:Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sProfile:Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    iget-object v0, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountY()I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getDefaultLayoutParser()Lcom/android/launcher3/home/HomeDefaultLayoutParser;
    .locals 6

    .prologue
    .line 3097
    new-instance v0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;

    sget-object v1, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    sget-object v2, Lcom/android/launcher3/home/HomeLoader;->sFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    invoke-virtual {v2}, Lcom/android/launcher3/common/model/FavoritesProvider;->getAppWidgetHost()Landroid/appwidget/AppWidgetHost;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/home/HomeLoader;->sFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    sget-object v4, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    .line 3098
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/home/HomeDefaultLayoutParser;-><init>(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/common/model/DefaultLayoutParser$LayoutParserCallback;Landroid/content/res/Resources;I)V

    return-object v0
.end method

.method public static getProviderInfo(Landroid/content/Context;Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;

    .prologue
    .line 1507
    sget-object v1, Lcom/android/launcher3/home/HomeLoader;->sBgWidgetLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1508
    :try_start_0
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sBgWidgetProviders:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 1509
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/launcher3/home/HomeLoader;->getWidgetProviders(Landroid/content/Context;Z)Ljava/util/List;

    .line 1511
    :cond_0
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sBgWidgetProviders:Ljava/util/HashMap;

    new-instance v2, Lcom/android/launcher3/util/ComponentKey;

    invoke-direct {v2, p1, p2}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    monitor-exit v1

    return-object v0

    .line 1512
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getShortcutInfo(Landroid/content/Intent;Landroid/database/Cursor;Lcom/android/launcher3/common/model/CursorInfo;Lcom/android/launcher3/common/compat/UserHandleCompat;Landroid/content/ComponentName;)Lcom/android/launcher3/common/base/item/IconInfo;
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "iconInfo"    # Lcom/android/launcher3/common/model/CursorInfo;
    .param p4, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .param p5, "cn"    # Landroid/content/ComponentName;

    .prologue
    const/4 v7, 0x1

    .line 1330
    new-instance v1, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-direct {v1}, Lcom/android/launcher3/common/base/item/IconInfo;-><init>()V

    .line 1331
    .local v1, "info":Lcom/android/launcher3/common/base/item/IconInfo;
    iput-object p4, v1, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    .line 1332
    iput v7, v1, Lcom/android/launcher3/common/base/item/IconInfo;->itemType:I

    .line 1334
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.sec.launcher.action.SHOW_APPS_VIEW"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1336
    iput-boolean v7, v1, Lcom/android/launcher3/common/base/item/IconInfo;->isAppsButton:Z

    .line 1337
    sget-object v4, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08000f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    .line 1338
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/android/launcher3/LauncherAppState;->setAppsButtonEnabled(Z)V

    .line 1377
    :cond_0
    :goto_0
    return-object v1

    .line 1340
    :cond_1
    iget v4, p3, Lcom/android/launcher3/common/model/CursorInfo;->titleIndex:I

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/launcher3/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    .line 1342
    sget-object v4, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    invoke-virtual {p3, p2, v1, v4}, Lcom/android/launcher3/common/model/CursorInfo;->loadIcon(Landroid/database/Cursor;Lcom/android/launcher3/common/base/item/IconInfo;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1344
    .local v0, "icon":Landroid/graphics/Bitmap;
    if-nez v0, :cond_2

    .line 1345
    const-string v4, "HomeLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v1, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " shortcut\'s icon is null. use default icon"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1346
    sget-object v4, Lcom/android/launcher3/home/HomeLoader;->sIconCache:Lcom/android/launcher3/common/model/IconCache;

    iget-object v5, v1, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/common/model/IconCache;->getDefaultIcon(Lcom/android/launcher3/common/compat/UserHandleCompat;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1347
    iput-boolean v7, v1, Lcom/android/launcher3/common/base/item/IconInfo;->usingFallbackIcon:Z

    .line 1350
    :cond_2
    invoke-static {}, Lcom/android/launcher3/theme/OpenThemeManager;->getInstance()Lcom/android/launcher3/theme/OpenThemeManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/theme/OpenThemeManager;->isDefaultTheme()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1351
    invoke-virtual {v1, v0}, Lcom/android/launcher3/common/base/item/IconInfo;->setOriginalIcon(Landroid/graphics/Bitmap;)V

    .line 1352
    sget-object v4, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    invoke-static {v4, v0, p5}, Lcom/android/launcher3/util/ShortcutTray;->getIcon(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/content/ComponentName;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1353
    iput-boolean v7, v1, Lcom/android/launcher3/common/base/item/IconInfo;->customIcon:Z

    .line 1356
    :cond_3
    sget-object v4, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/launcher3/util/DualAppUtils;->supportDualApp(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, v1, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-static {v4}, Lcom/android/launcher3/util/DualAppUtils;->isDualAppId(Lcom/android/launcher3/common/compat/UserHandleCompat;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1357
    iget-boolean v4, v1, Lcom/android/launcher3/common/base/item/IconInfo;->customIcon:Z

    if-nez v4, :cond_4

    .line 1358
    iput-boolean v7, v1, Lcom/android/launcher3/common/base/item/IconInfo;->customIcon:Z

    .line 1359
    invoke-virtual {v1, v0}, Lcom/android/launcher3/common/base/item/IconInfo;->setOriginalIcon(Landroid/graphics/Bitmap;)V

    .line 1361
    :cond_4
    sget-object v4, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    sget-object v5, Lcom/android/launcher3/home/HomeLoader;->sProfile:Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    iget-object v5, v5, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    .line 1362
    invoke-virtual {v5}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getIconSize()I

    move-result v5

    iget-object v6, v1, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {v6}, Lcom/android/launcher3/common/compat/UserHandleCompat;->getUser()Landroid/os/UserHandle;

    move-result-object v6

    .line 1361
    invoke-static {v4, v0, v5, v6}, Lcom/android/launcher3/util/DualAppUtils;->makeUserBadgedIcon(Landroid/content/Context;Landroid/graphics/Bitmap;ILandroid/os/UserHandle;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1365
    :cond_5
    invoke-virtual {v1, v0}, Lcom/android/launcher3/common/base/item/IconInfo;->setIcon(Landroid/graphics/Bitmap;)V

    .line 1367
    if-eqz p5, :cond_0

    .line 1368
    iput-object p5, v1, Lcom/android/launcher3/common/base/item/IconInfo;->componentName:Landroid/content/ComponentName;

    .line 1369
    new-instance v3, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1370
    .local v3, "newIntent":Landroid/content/Intent;
    invoke-virtual {v3, p5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1371
    sget-object v4, Lcom/android/launcher3/home/HomeLoader;->sLauncherApps:Lcom/android/launcher3/common/compat/LauncherAppsCompat;

    invoke-virtual {v4, v3, p4}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->resolveActivity(Landroid/content/Intent;Lcom/android/launcher3/common/compat/UserHandleCompat;)Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;

    move-result-object v2

    .line 1372
    .local v2, "lai":Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    if-eqz v2, :cond_0

    .line 1373
    invoke-static {v2}, Lcom/android/launcher3/common/base/item/IconInfo;->initFlags(Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;)I

    move-result v4

    iput v4, v1, Lcom/android/launcher3/common/base/item/IconInfo;->flags:I

    goto/16 :goto_0
.end method

.method public static getWidgetProviders(Landroid/content/Context;Z)Ljava/util/List;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "refresh"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1516
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1518
    .local v3, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;>;"
    :try_start_0
    sget-object v9, Lcom/android/launcher3/home/HomeLoader;->sBgWidgetLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1519
    :try_start_1
    sget-object v8, Lcom/android/launcher3/home/HomeLoader;->sBgWidgetProviders:Ljava/util/HashMap;

    if-eqz v8, :cond_0

    if-eqz p1, :cond_3

    .line 1520
    :cond_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1522
    .local v4, "tmpWidgetProviders":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/ComponentKey;Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;>;"
    invoke-static {p0}, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;

    move-result-object v7

    .line 1525
    .local v7, "wm":Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;
    invoke-virtual {v7}, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->getAllProviders()Ljava/util/List;

    move-result-object v6

    .line 1526
    .local v6, "widgets":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/appwidget/AppWidgetProviderInfo;

    .line 1527
    .local v2, "pInfo":Landroid/appwidget/AppWidgetProviderInfo;
    invoke-static {p0, v2}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->fromProviderInfo(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    move-result-object v1

    .line 1528
    .local v1, "info":Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;
    invoke-virtual {v7, v1}, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->getUser(Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;)Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v5

    .line 1529
    .local v5, "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    new-instance v10, Lcom/android/launcher3/util/ComponentKey;

    iget-object v11, v1, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-direct {v10, v11, v5}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    invoke-virtual {v4, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1538
    .end local v1    # "info":Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;
    .end local v2    # "pInfo":Landroid/appwidget/AppWidgetProviderInfo;
    .end local v4    # "tmpWidgetProviders":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/ComponentKey;Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;>;"
    .end local v5    # "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    .end local v6    # "widgets":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    .end local v7    # "wm":Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1539
    :catch_0
    move-exception v0

    .line 1540
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v8

    instance-of v8, v8, Landroid/os/TransactionTooLargeException;

    if-eqz v8, :cond_4

    .line 1545
    sget-object v9, Lcom/android/launcher3/home/HomeLoader;->sBgWidgetLock:Ljava/lang/Object;

    monitor-enter v9

    .line 1546
    :try_start_3
    sget-object v8, Lcom/android/launcher3/home/HomeLoader;->sBgWidgetProviders:Ljava/util/HashMap;

    if-eqz v8, :cond_1

    .line 1547
    sget-object v8, Lcom/android/launcher3/home/HomeLoader;->sBgWidgetProviders:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1549
    :cond_1
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v3

    .line 1534
    .restart local v4    # "tmpWidgetProviders":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/ComponentKey;Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;>;"
    .restart local v6    # "widgets":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    .restart local v7    # "wm":Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;
    :cond_2
    :try_start_4
    sput-object v4, Lcom/android/launcher3/home/HomeLoader;->sBgWidgetProviders:Ljava/util/HashMap;

    .line 1536
    .end local v4    # "tmpWidgetProviders":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/ComponentKey;Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;>;"
    .end local v6    # "widgets":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    .end local v7    # "wm":Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;
    :cond_3
    sget-object v8, Lcom/android/launcher3/home/HomeLoader;->sBgWidgetProviders:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1537
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 1550
    .restart local v0    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v8

    :try_start_5
    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v8

    .line 1552
    :cond_4
    throw v0
.end method

.method private getWidgetsInHome()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/home/LauncherAppWidgetInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3350
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3351
    .local v1, "widgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/home/LauncherAppWidgetInfo;>;"
    sget-object v3, Lcom/android/launcher3/home/HomeLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v3

    .line 3352
    :try_start_0
    sget-object v2, Lcom/android/launcher3/home/HomeLoader;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v2}, Lcom/android/launcher3/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 3353
    .local v0, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    .line 3354
    check-cast v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    .end local v0    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3357
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3358
    return-object v1
.end method

.method private handleOutsideItems(Ljava/util/ArrayList;)V
    .locals 24
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
    .line 3512
    .local p1, "pageItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_2

    .line 3513
    :cond_0
    const-string v18, "HomeLoader"

    const-string v19, "pageItems is null or empty"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3567
    :cond_1
    return-void

    .line 3516
    :cond_2
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 3518
    .local v15, "reArrangeItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_3
    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_4

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 3519
    .local v6, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-wide v0, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    move-wide/from16 v20, v0

    const-wide/16 v22, -0x64

    cmp-long v19, v20, v22

    if-nez v19, :cond_3

    .line 3520
    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3524
    .end local v6    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_4
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/launcher3/home/HomeLoader;->reArrangeByGrid(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v12

    .line 3527
    .local v12, "outsideItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_5

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 3528
    .restart local v6    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3529
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/launcher3/home/HomeLoader;->removePagesItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto :goto_1

    .line 3533
    .end local v6    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_5
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 3534
    .local v7, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_6
    :goto_2
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_7

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 3536
    .restart local v6    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-wide v0, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    move-wide/from16 v20, v0

    const-wide/16 v22, -0x65

    cmp-long v19, v20, v22

    if-eqz v19, :cond_6

    .line 3539
    iget-wide v8, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    .line 3540
    .local v8, "itemId":J
    invoke-static {v8, v9}, Lcom/android/launcher3/common/model/LauncherSettings$Favorites;->getContentUri(J)Landroid/net/Uri;

    move-result-object v16

    .line 3541
    .local v16, "uri":Landroid/net/Uri;
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 3542
    .local v17, "values":Landroid/content/ContentValues;
    const-string v19, "cellX"

    iget v0, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3543
    const-string v19, "cellY"

    iget v0, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3544
    const-string v19, "spanX"

    iget v0, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3545
    const-string v19, "spanY"

    iget v0, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3547
    invoke-static/range {v16 .. v16}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 3550
    .end local v6    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v8    # "itemId":J
    .end local v16    # "uri":Landroid/net/Uri;
    .end local v17    # "values":Landroid/content/ContentValues;
    :cond_7
    :try_start_0
    sget-object v18, Lcom/android/launcher3/home/HomeLoader;->sContentResolver:Landroid/content/ContentResolver;

    sget-object v19, Lcom/android/launcher3/LauncherProvider;->AUTHORITY:Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v7}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3558
    :goto_3
    const/4 v13, 0x1

    .local v13, "plusIndex":I
    move v14, v13

    .line 3559
    .end local v13    # "plusIndex":I
    .local v14, "plusIndex":I
    :goto_4
    if-eqz v12, :cond_1

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_1

    .line 3560
    move-object v4, v12

    .line 3561
    .local v4, "arrangedItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-static {}, Lcom/android/launcher3/common/model/FavoritesProvider;->getInstance()Lcom/android/launcher3/common/model/FavoritesProvider;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher3/common/model/FavoritesProvider;->generateNewScreenId()J

    move-result-wide v10

    .line 3562
    .local v10, "newScreenId":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/HomeLoader;->mNewPageIdsAfterGridChanged:Ljava/util/HashMap;

    move-object/from16 v19, v0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    new-instance v21, Lcom/android/launcher3/home/HomeLoader$NewScreenInfo;

    const/16 v18, 0x0

    .line 3563
    move/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/launcher3/common/base/item/ItemInfo;

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    move-wide/from16 v22, v0

    add-int/lit8 v13, v14, 0x1

    .end local v14    # "plusIndex":I
    .restart local v13    # "plusIndex":I
    move-object/from16 v0, v21

    move-wide/from16 v1, v22

    invoke-direct {v0, v1, v2, v14}, Lcom/android/launcher3/home/HomeLoader$NewScreenInfo;-><init>(JI)V

    .line 3562
    invoke-virtual/range {v19 .. v21}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3564
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v10, v11}, Lcom/android/launcher3/home/HomeLoader;->arrangeItemToNewScreen(Ljava/util/ArrayList;J)Ljava/util/ArrayList;

    move-result-object v12

    .line 3565
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/HomeLoader;->mExtraItemsAfterGridChanged:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v14, v13

    .line 3566
    .end local v13    # "plusIndex":I
    .restart local v14    # "plusIndex":I
    goto :goto_4

    .line 3551
    .end local v4    # "arrangedItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .end local v10    # "newScreenId":J
    .end local v14    # "plusIndex":I
    :catch_0
    move-exception v5

    .line 3552
    .local v5, "e":Landroid/os/RemoteException;
    const-string v18, "HomeLoader"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "occurred RemoteException during handleOutsideItems - "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v5}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 3553
    .end local v5    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v5

    .line 3554
    .local v5, "e":Landroid/content/OperationApplicationException;
    const-string v18, "HomeLoader"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "occurred OperationApplicationException during handleOutsideItems - "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 3555
    invoke-virtual {v5}, Landroid/content/OperationApplicationException;->getMessage()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 3554
    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method private initFestivalPageIfNecessary(Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V
    .locals 4
    .param p1, "task"    # Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;

    .prologue
    .line 1639
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeLoader;->getCallback()Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    move-result-object v0

    .line 1640
    .local v0, "oldCallbacks":Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;
    if-nez v0, :cond_0

    .line 1641
    const-string v2, "HomeLoader"

    const-string v3, "initFestivalPageIfNecessary failed with no launcher"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1655
    :goto_0
    return-void

    .line 1645
    :cond_0
    new-instance v1, Lcom/android/launcher3/home/HomeLoader$9;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/launcher3/home/HomeLoader$9;-><init>(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V

    .line 1654
    .local v1, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v1}, Lcom/android/launcher3/home/HomeLoader;->runOnMainThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private isAllAppItemInApps(Lcom/android/launcher3/common/base/item/ItemInfo;)Z
    .locals 10
    .param p1, "info"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    const-wide/16 v8, -0x66

    const/4 v2, 0x1

    .line 3439
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3440
    .local v0, "folderIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    sget-object v3, Lcom/android/launcher3/home/HomeLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v3

    .line 3441
    :try_start_0
    iget v4, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    if-nez v4, :cond_3

    .line 3442
    iget-wide v4, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    cmp-long v4, v4, v8

    if-nez v4, :cond_0

    .line 3443
    monitor-exit v3

    .line 3456
    :goto_0
    return v2

    .line 3445
    :cond_0
    sget-object v4, Lcom/android/launcher3/home/HomeLoader;->sBgFolders:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v4}, Lcom/android/launcher3/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/folder/FolderInfo;

    .line 3446
    .local v1, "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    iget-wide v6, v1, Lcom/android/launcher3/folder/FolderInfo;->container:J

    cmp-long v5, v6, v8

    if-nez v5, :cond_1

    .line 3447
    iget-wide v6, v1, Lcom/android/launcher3/folder/FolderInfo;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3455
    .end local v1    # "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 3450
    :cond_2
    :try_start_1
    iget-wide v4, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3451
    monitor-exit v3

    goto :goto_0

    .line 3455
    :cond_3
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3456
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private makeSingleInstanceAppWidgetList()Z
    .locals 10

    .prologue
    const/4 v5, 0x0

    .line 3306
    sget-object v6, Lcom/android/launcher3/home/HomeController;->sSingleInstanceAppWidgetList:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 3307
    sget-object v6, Lcom/android/launcher3/home/HomeController;->sSingleInstanceAppWidgetPackageList:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 3308
    sget-object v6, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 3309
    .local v2, "pm":Landroid/content/pm/PackageManager;
    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.sec.launcher.action.APPWIDGET_SINGLE_INSTANCE"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3310
    .local v3, "singleInstanceIntent":Landroid/content/Intent;
    invoke-virtual {v2, v3, v5}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 3312
    .local v4, "singleInstanceList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 3313
    .local v0, "info":Landroid/content/pm/ResolveInfo;
    new-instance v1, Landroid/content/ComponentName;

    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v8, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3314
    .local v1, "mComponentName":Landroid/content/ComponentName;
    sget-object v7, Lcom/android/launcher3/home/HomeController;->sSingleInstanceAppWidgetList:Ljava/util/HashMap;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 3315
    const-string v7, "HomeLoader"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "This widget is single instance - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3316
    sget-object v7, Lcom/android/launcher3/home/HomeController;->sSingleInstanceAppWidgetList:Ljava/util/HashMap;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Landroid/util/LongSparseArray;

    invoke-direct {v9}, Landroid/util/LongSparseArray;-><init>()V

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 3320
    .end local v0    # "info":Landroid/content/pm/ResolveInfo;
    .end local v1    # "mComponentName":Landroid/content/ComponentName;
    :cond_1
    const-string v6, "com.sec.launcher.action.APPWIDGET_SINGLE_INSTANCE_PACKAGE"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3321
    invoke-virtual {v2, v3, v5}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 3322
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 3323
    .restart local v0    # "info":Landroid/content/pm/ResolveInfo;
    sget-object v7, Lcom/android/launcher3/home/HomeController;->sSingleInstanceAppWidgetPackageList:Ljava/util/HashMap;

    iget-object v8, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 3324
    const-string v7, "HomeLoader"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "This widget is single instance - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3325
    sget-object v7, Lcom/android/launcher3/home/HomeController;->sSingleInstanceAppWidgetPackageList:Ljava/util/HashMap;

    iget-object v8, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    new-instance v9, Landroid/util/LongSparseArray;

    invoke-direct {v9}, Landroid/util/LongSparseArray;-><init>()V

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 3329
    .end local v0    # "info":Landroid/content/pm/ResolveInfo;
    :cond_3
    sget-object v6, Lcom/android/launcher3/home/HomeController;->sSingleInstanceAppWidgetPackageList:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    sget-object v6, Lcom/android/launcher3/home/HomeController;->sSingleInstanceAppWidgetList:Ljava/util/HashMap;

    .line 3330
    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    :cond_4
    const/4 v5, 0x1

    :cond_5
    return v5
.end method

.method private reArrangeByGrid(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3598
    .local p1, "pageItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .line 3600
    .local v27, "outSideItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    sget-object v3, Lcom/android/launcher3/home/HomeLoader;->sProfile:Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    iget-object v3, v3, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v3}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountX()I

    move-result v4

    .line 3601
    .local v4, "countX":I
    sget-object v3, Lcom/android/launcher3/home/HomeLoader;->sProfile:Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    iget-object v3, v3, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v3}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountY()I

    move-result v5

    .line 3602
    .local v5, "countY":I
    filled-new-array {v4, v5}, [I

    move-result-object v3

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [[Z

    .line 3603
    .local v10, "occupied":[[Z
    const/4 v3, 0x2

    new-array v0, v3, [I

    move-object/from16 v22, v0

    .line 3604
    .local v22, "diffXY":[I
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 3605
    .local v24, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    move-object/from16 v0, v24

    iget v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    if-ltz v6, :cond_1

    move-object/from16 v0, v24

    iget v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    if-gez v6, :cond_0

    .line 3606
    :cond_1
    move-object/from16 v0, v24

    iput v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    .line 3607
    move-object/from16 v0, v24

    iput v5, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    goto :goto_0

    .line 3610
    .end local v24    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v4, v5, v2}, Lcom/android/launcher3/home/HomeLoader;->calculateDiffXY([IIILjava/util/ArrayList;)V

    .line 3611
    const/4 v3, 0x0

    aget v3, v22, v3

    if-lez v3, :cond_9

    const/4 v3, 0x0

    aget v3, v22, v3

    add-int/lit8 v20, v3, -0x1

    .line 3612
    .local v20, "diffIndexX":I
    :goto_1
    const/4 v3, 0x1

    aget v3, v22, v3

    if-lez v3, :cond_a

    const/4 v3, 0x1

    aget v3, v22, v3

    add-int/lit8 v21, v3, -0x1

    .line 3614
    .local v21, "diffIndexY":I
    :goto_2
    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v4, v5, v1, v2}, Lcom/android/launcher3/util/ScreenGridUtilities;->getOutSidePosition(Ljava/util/List;IIII)I

    move-result v28

    .line 3616
    .local v28, "position":I
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v23, v3, -0x1

    .local v23, "i":I
    :goto_3
    const/4 v3, -0x1

    move/from16 v0, v23

    if-le v0, v3, :cond_17

    .line 3617
    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 3618
    .local v25, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    if-eqz v25, :cond_16

    .line 3619
    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    move/from16 v30, v0

    .line 3620
    .local v30, "x":I
    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    move/from16 v31, v0

    .line 3622
    .local v31, "y":I
    move-object/from16 v0, v25

    iget v3, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    if-le v3, v4, :cond_4

    .line 3623
    move-object/from16 v0, v25

    iput v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    .line 3625
    const/4 v3, 0x1

    move/from16 v0, v28

    if-eq v0, v3, :cond_3

    const/4 v3, 0x3

    move/from16 v0, v28

    if-ne v0, v3, :cond_4

    .line 3627
    :cond_3
    const/4 v3, 0x0

    aget v3, v22, v3

    add-int v30, v30, v3

    .line 3630
    :cond_4
    move-object/from16 v0, v25

    iget v3, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    if-le v3, v5, :cond_6

    .line 3631
    move-object/from16 v0, v25

    iput v5, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    .line 3633
    const/4 v3, 0x2

    move/from16 v0, v28

    if-eq v0, v3, :cond_5

    const/4 v3, 0x3

    move/from16 v0, v28

    if-ne v0, v3, :cond_6

    .line 3635
    :cond_5
    const/4 v3, 0x1

    aget v3, v22, v3

    add-int v31, v31, v3

    .line 3639
    :cond_6
    move-object/from16 v0, v25

    iget v15, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    .line 3640
    .local v15, "spanX":I
    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    move/from16 v16, v0

    .line 3642
    .local v16, "spanY":I
    if-nez v28, :cond_b

    .line 3643
    add-int v3, v30, v15

    if-gt v3, v4, :cond_7

    add-int v3, v31, v16

    if-le v3, v5, :cond_e

    .line 3644
    :cond_7
    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3616
    .end local v15    # "spanX":I
    .end local v16    # "spanY":I
    .end local v30    # "x":I
    .end local v31    # "y":I
    :cond_8
    :goto_4
    add-int/lit8 v23, v23, -0x1

    goto :goto_3

    .line 3611
    .end local v20    # "diffIndexX":I
    .end local v21    # "diffIndexY":I
    .end local v23    # "i":I
    .end local v25    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v28    # "position":I
    :cond_9
    const/16 v20, 0x0

    goto/16 :goto_1

    .line 3612
    .restart local v20    # "diffIndexX":I
    :cond_a
    const/16 v21, 0x0

    goto/16 :goto_2

    .line 3647
    .restart local v15    # "spanX":I
    .restart local v16    # "spanY":I
    .restart local v21    # "diffIndexY":I
    .restart local v23    # "i":I
    .restart local v25    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    .restart local v28    # "position":I
    .restart local v30    # "x":I
    .restart local v31    # "y":I
    :cond_b
    const/4 v3, 0x1

    move/from16 v0, v28

    if-ne v0, v3, :cond_10

    .line 3648
    move/from16 v0, v30

    move/from16 v1, v20

    if-le v0, v1, :cond_c

    add-int v3, v31, v16

    if-le v3, v5, :cond_d

    .line 3649
    :cond_c
    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 3652
    :cond_d
    const/4 v3, 0x0

    aget v3, v22, v3

    sub-int v30, v30, v3

    .line 3671
    :cond_e
    :goto_5
    move-object/from16 v0, v25

    iget v3, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    move/from16 v0, v30

    if-ne v3, v0, :cond_f

    move-object/from16 v0, v25

    iget v3, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    move/from16 v0, v31

    if-eq v3, v0, :cond_8

    .line 3672
    :cond_f
    move/from16 v0, v30

    move-object/from16 v1, v25

    iput v0, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    .line 3673
    move/from16 v0, v31

    move-object/from16 v1, v25

    iput v0, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    goto :goto_4

    .line 3654
    :cond_10
    const/4 v3, 0x2

    move/from16 v0, v28

    if-ne v0, v3, :cond_13

    .line 3655
    add-int v3, v30, v15

    if-gt v3, v4, :cond_11

    move/from16 v0, v31

    move/from16 v1, v21

    if-gt v0, v1, :cond_12

    .line 3656
    :cond_11
    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 3659
    :cond_12
    const/4 v3, 0x1

    aget v3, v22, v3

    sub-int v31, v31, v3

    goto :goto_5

    .line 3661
    :cond_13
    const/4 v3, 0x3

    move/from16 v0, v28

    if-ne v0, v3, :cond_e

    .line 3662
    move/from16 v0, v30

    move/from16 v1, v20

    if-le v0, v1, :cond_14

    move/from16 v0, v31

    move/from16 v1, v21

    if-gt v0, v1, :cond_15

    .line 3663
    :cond_14
    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 3666
    :cond_15
    const/4 v3, 0x0

    aget v3, v22, v3

    sub-int v30, v30, v3

    .line 3667
    const/4 v3, 0x1

    aget v3, v22, v3

    sub-int v31, v31, v3

    goto :goto_5

    .line 3676
    .end local v15    # "spanX":I
    .end local v16    # "spanY":I
    .end local v30    # "x":I
    .end local v31    # "y":I
    :cond_16
    const-string v3, "HomeLoader"

    const-string v6, "HomeLoader: changeGrid() item is Null"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 3680
    .end local v25    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_17
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_18
    :goto_6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 3681
    .restart local v25    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    .line 3682
    move-object/from16 v0, v25

    iget v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    move-object/from16 v0, v25

    iget v7, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    move-object/from16 v0, v25

    iget v8, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    move-object/from16 v0, v25

    iget v9, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v10}, Lcom/android/launcher3/home/HomeLoader;->fillOccupied(IIIIII[[Z)V

    goto :goto_6

    .line 3687
    .end local v25    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_19
    const-string v3, "HomeLoader"

    const-string v6, "reArrangeByGrid occupied: "

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3689
    const/16 v31, 0x0

    .restart local v31    # "y":I
    :goto_7
    move/from16 v0, v31

    if-ge v0, v5, :cond_1d

    .line 3690
    const-string v26, ""

    .line 3691
    .local v26, "line":Ljava/lang/String;
    const/16 v30, 0x0

    .restart local v30    # "x":I
    :goto_8
    move/from16 v0, v30

    if-ge v0, v4, :cond_1c

    .line 3692
    array-length v3, v10

    move/from16 v0, v30

    if-ge v0, v3, :cond_1b

    aget-object v3, v10, v30

    array-length v3, v3

    move/from16 v0, v31

    if-ge v0, v3, :cond_1b

    .line 3693
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v3, v10, v30

    aget-boolean v3, v3, v31

    if-eqz v3, :cond_1a

    const-string v3, "#"

    :goto_9
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 3691
    :goto_a
    add-int/lit8 v30, v30, 0x1

    goto :goto_8

    .line 3693
    :cond_1a
    const-string v3, "."

    goto :goto_9

    .line 3695
    :cond_1b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "!"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    goto :goto_a

    .line 3698
    :cond_1c
    const-string v3, "HomeLoader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[ "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3689
    add-int/lit8 v31, v31, 0x1

    goto :goto_7

    .line 3702
    .end local v26    # "line":Ljava/lang/String;
    .end local v30    # "x":I
    :cond_1d
    invoke-static/range {v27 .. v28}, Lcom/android/launcher3/util/ScreenGridUtilities;->getOutSideItems(Ljava/util/List;I)Ljava/util/List;

    .line 3703
    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    .line 3704
    .local v29, "removeFromOutSideItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v32

    :cond_1e
    :goto_b
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 3705
    .restart local v25    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    const/4 v3, 0x2

    new-array v12, v3, [I

    .line 3707
    .local v12, "tmpXY":[I
    move-object/from16 v0, v25

    iget v13, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    .line 3708
    .local v13, "correctedX":I
    move-object/from16 v0, v25

    iget v14, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    .line 3709
    .local v14, "correctedY":I
    move-object/from16 v0, v25

    iget v3, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    if-lez v3, :cond_21

    move-object/from16 v0, v25

    iget v15, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    .line 3710
    .restart local v15    # "spanX":I
    :goto_c
    move-object/from16 v0, v25

    iget v3, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    if-lez v3, :cond_22

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    move/from16 v16, v0

    .line 3712
    .restart local v16    # "spanY":I
    :goto_d
    add-int/lit8 v3, v4, -0x1

    if-le v13, v3, :cond_1f

    .line 3713
    const/4 v3, 0x0

    aget v3, v22, v3

    sub-int/2addr v13, v3

    .line 3716
    :cond_1f
    add-int/lit8 v3, v5, -0x1

    if-le v14, v3, :cond_20

    .line 3717
    const/4 v3, 0x1

    aget v3, v22, v3

    sub-int/2addr v14, v3

    .line 3720
    :cond_20
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher3/home/HomeLoader;->mItemPositionHelper:Lcom/android/launcher3/home/HomeItemPositionHelper;

    move/from16 v17, v4

    move/from16 v18, v5

    move-object/from16 v19, v10

    invoke-virtual/range {v11 .. v19}, Lcom/android/launcher3/home/HomeItemPositionHelper;->findNearVacantCell([IIIIIII[[Z)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 3722
    const-string v3, "HomeLoader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "outside item - find new cell "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x0

    aget v7, v12, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    aget v7, v12, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v25 .. v25}, Lcom/android/launcher3/common/base/item/ItemInfo;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3723
    const/4 v3, 0x0

    aget v3, v12, v3

    move-object/from16 v0, v25

    iput v3, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    .line 3724
    const/4 v3, 0x1

    aget v3, v12, v3

    move-object/from16 v0, v25

    iput v3, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    .line 3725
    move-object/from16 v0, v25

    iget v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    move-object/from16 v0, v25

    iget v7, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    move-object/from16 v3, p0

    move v8, v15

    move/from16 v9, v16

    invoke-direct/range {v3 .. v10}, Lcom/android/launcher3/home/HomeLoader;->fillOccupied(IIIIII[[Z)V

    .line 3726
    move-object/from16 v0, v29

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_b

    .line 3709
    .end local v15    # "spanX":I
    .end local v16    # "spanY":I
    :cond_21
    const/4 v15, 0x1

    goto/16 :goto_c

    .line 3710
    .restart local v15    # "spanX":I
    :cond_22
    const/16 v16, 0x1

    goto/16 :goto_d

    .line 3730
    .end local v12    # "tmpXY":[I
    .end local v13    # "correctedX":I
    .end local v14    # "correctedY":I
    .end local v15    # "spanX":I
    .end local v25    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_23
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_24

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 3731
    .restart local v25    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_e

    .line 3734
    .end local v25    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_24
    return-object v27
.end method

.method private reArrangeHotseatData(Ljava/util/ArrayList;)V
    .locals 12
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
    .line 2943
    .local p1, "homeItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2945
    .local v2, "hotseatItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 2946
    .local v3, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-wide v8, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v10, -0x65

    cmp-long v7, v8, v10

    if-nez v7, :cond_0

    .line 2947
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2951
    .end local v3    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_6

    .line 2952
    sget-object v6, Lcom/android/launcher3/home/HomeLoader;->HOTSEAT_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v2, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2953
    const/4 v4, 0x0

    .line 2954
    .local v4, "itemPosition":I
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 2955
    .restart local v3    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 2956
    .local v5, "values":Landroid/content/ContentValues;
    iget-wide v8, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    int-to-long v10, v4

    cmp-long v7, v8, v10

    if-eqz v7, :cond_2

    .line 2957
    int-to-long v8, v4

    iput-wide v8, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    .line 2958
    const-string v7, "screen"

    iget-wide v8, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2961
    :cond_2
    iget-wide v8, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    long-to-int v7, v8

    invoke-direct {p0, v7}, Lcom/android/launcher3/home/HomeLoader;->getCellXFromHotseatOrder(I)I

    move-result v0

    .line 2962
    .local v0, "calculatedCellX":I
    iget-wide v8, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    long-to-int v7, v8

    invoke-direct {p0, v7}, Lcom/android/launcher3/home/HomeLoader;->getCellYFromHotseatOrder(I)I

    move-result v1

    .line 2963
    .local v1, "calculatedCellY":I
    iget v7, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    if-ne v7, v0, :cond_3

    iget v7, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    if-eq v7, v1, :cond_4

    .line 2964
    :cond_3
    iput v0, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    .line 2965
    iput v1, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    .line 2967
    const-string v7, "cellX"

    iget v8, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2968
    const-string v7, "cellY"

    iget v8, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2971
    :cond_4
    invoke-virtual {v5}, Landroid/content/ContentValues;->size()I

    move-result v7

    if-lez v7, :cond_5

    .line 2972
    iget-object v7, p0, Lcom/android/launcher3/home/HomeLoader;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    invoke-virtual {v7, v5, v3}, Lcom/android/launcher3/common/model/FavoritesUpdater;->updateItem(Landroid/content/ContentValues;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 2974
    :cond_5
    add-int/lit8 v4, v4, 0x1

    .line 2975
    goto :goto_1

    .line 2977
    .end local v0    # "calculatedCellX":I
    .end local v1    # "calculatedCellY":I
    .end local v3    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v4    # "itemPosition":I
    .end local v5    # "values":Landroid/content/ContentValues;
    :cond_6
    return-void
.end method

.method private restoreStkPositionIfNecessary(Ljava/util/ArrayList;)V
    .locals 25
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
    .line 3901
    .local p1, "addList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    .line 3902
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3970
    :cond_0
    return-void

    .line 3906
    :cond_1
    const/16 v18, 0x0

    .line 3907
    .local v18, "prefs":Landroid/content/SharedPreferences;
    sget-object v22, Lcom/android/launcher3/home/HomeLoader;->STK_PKG_LIST:[Ljava/lang/String;

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v23, v0

    const/4 v2, 0x0

    move/from16 v21, v2

    :goto_0
    move/from16 v0, v21

    move/from16 v1, v23

    if-ge v0, v1, :cond_0

    aget-object v20, v22, v21

    .line 3908
    .local v20, "stkPkg":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :cond_2
    :goto_1
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 3909
    .local v16, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    if-eqz v16, :cond_2

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v2, :cond_2

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    .line 3910
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3912
    const-wide/16 v12, -0x64

    move-object/from16 v0, v16

    iput-wide v12, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    .line 3913
    .local v12, "container":J
    const-wide/16 v4, -0x1

    move-object/from16 v0, v16

    iput-wide v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    .line 3914
    .local v4, "screen":J
    const/4 v9, -0x1

    move-object/from16 v0, v16

    iput v9, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    .line 3915
    .local v9, "cellX":I
    const/4 v10, -0x1

    move-object/from16 v0, v16

    iput v10, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    .line 3917
    .local v10, "cellY":I
    if-nez v18, :cond_3

    .line 3918
    sget-object v2, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    .line 3919
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    .line 3918
    invoke-virtual {v2, v3, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v18

    .line 3921
    :cond_3
    const/4 v2, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 3922
    .local v19, "savedInfo":Ljava/lang/String;
    if-eqz v19, :cond_2

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 3925
    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-interface {v2, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3927
    const-string v2, ";"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 3928
    .local v11, "data":[Ljava/lang/String;
    array-length v2, v11

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 3929
    const/4 v2, 0x0

    aget-object v2, v11, v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    .line 3930
    const/4 v2, 0x1

    aget-object v2, v11, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v4, v2

    .line 3931
    const/4 v2, 0x2

    aget-object v2, v11, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 3932
    const/4 v2, 0x3

    aget-object v2, v11, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 3937
    const-wide/16 v2, 0x0

    cmp-long v2, v12, v2

    if-lez v2, :cond_7

    .line 3938
    sget-object v3, Lcom/android/launcher3/home/HomeLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v3

    .line 3939
    const/4 v15, 0x0

    .line 3940
    .local v15, "folder":Lcom/android/launcher3/folder/FolderInfo;
    :try_start_0
    sget-object v2, Lcom/android/launcher3/home/HomeLoader;->sBgFolders:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v2}, Lcom/android/launcher3/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/launcher3/folder/FolderInfo;

    .line 3941
    .local v14, "fInfo":Lcom/android/launcher3/folder/FolderInfo;
    iget-wide v6, v14, Lcom/android/launcher3/folder/FolderInfo;->id:J

    cmp-long v6, v6, v12

    if-nez v6, :cond_4

    .line 3942
    move-object v15, v14

    goto :goto_2

    .line 3945
    .end local v14    # "fInfo":Lcom/android/launcher3/folder/FolderInfo;
    :cond_5
    if-eqz v15, :cond_6

    .line 3946
    move-object/from16 v0, v16

    iput-wide v12, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    .line 3947
    move-object/from16 v0, v16

    iput-wide v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    .line 3948
    move-object/from16 v0, v16

    iput v9, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    .line 3949
    move-object/from16 v0, v16

    iput v10, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    .line 3951
    :cond_6
    monitor-exit v3

    goto/16 :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 3952
    .end local v15    # "folder":Lcom/android/launcher3/folder/FolderInfo;
    :cond_7
    const-wide/16 v2, -0x65

    cmp-long v2, v12, v2

    if-nez v2, :cond_8

    .line 3953
    sget-object v2, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b003f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v17

    .line 3954
    .local v17, "maxHotseatCount":I
    move/from16 v0, v17

    int-to-long v2, v0

    cmp-long v2, v4, v2

    if-gez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeLoader;->mBgHotseatItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v17

    if-eq v2, v0, :cond_2

    .line 3955
    move-object/from16 v0, v16

    iput-wide v12, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    .line 3956
    move-object/from16 v0, v16

    iput-wide v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    .line 3957
    move-object/from16 v0, v16

    iput v9, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    .line 3958
    move-object/from16 v0, v16

    iput v10, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    goto/16 :goto_1

    .line 3960
    .end local v17    # "maxHotseatCount":I
    :cond_8
    const-wide/16 v2, -0x64

    cmp-long v2, v12, v2

    if-nez v2, :cond_2

    .line 3961
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeLoader;->mItemPositionHelper:Lcom/android/launcher3/home/HomeItemPositionHelper;

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v6, 0x0

    aput v9, v3, v6

    const/4 v6, 0x1

    aput v10, v3, v6

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-virtual/range {v2 .. v8}, Lcom/android/launcher3/home/HomeItemPositionHelper;->findEmptyCell([IJIIZ)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3962
    move-object/from16 v0, v16

    iput-wide v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    .line 3963
    move-object/from16 v0, v16

    iput v9, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    .line 3964
    move-object/from16 v0, v16

    iput v10, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    goto/16 :goto_1

    .line 3907
    .end local v4    # "screen":J
    .end local v9    # "cellX":I
    .end local v10    # "cellY":I
    .end local v11    # "data":[Ljava/lang/String;
    .end local v12    # "container":J
    .end local v16    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v19    # "savedInfo":Ljava/lang/String;
    :cond_9
    add-int/lit8 v2, v21, 0x1

    move/from16 v21, v2

    goto/16 :goto_0
.end method

.method private runAllBindCompleteRunnables()V
    .locals 4

    .prologue
    .line 2905
    const-string v1, "HomeLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "runAllBindCompleteRunnables, count : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/home/HomeLoader;->sBindCompleteRunnables:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2906
    sget-object v1, Lcom/android/launcher3/home/HomeLoader;->sBindCompleteRunnables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2907
    sget-object v2, Lcom/android/launcher3/home/HomeLoader;->sBindCompleteRunnables:Ljava/util/ArrayList;

    monitor-enter v2

    .line 2908
    :try_start_0
    sget-object v1, Lcom/android/launcher3/home/HomeLoader;->sBindCompleteRunnables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 2909
    .local v0, "r":Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/android/launcher3/home/HomeLoader;->runOnWorkerThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 2912
    .end local v0    # "r":Ljava/lang/Runnable;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2911
    :cond_0
    :try_start_1
    sget-object v1, Lcom/android/launcher3/home/HomeLoader;->sBindCompleteRunnables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2912
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2914
    :cond_1
    return-void
.end method

.method private saveCustomerPageKey()V
    .locals 14

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v13, 0x0

    .line 3179
    new-instance v7, Landroid/content/ComponentName;

    .line 3180
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->getCustomerDialerPackageName()Ljava/lang/String;

    move-result-object v0

    .line 3181
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->getCustomerDialerClassName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3182
    .local v7, "customerDialerCN":Landroid/content/ComponentName;
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "android.intent.category.LAUNCHER"

    .line 3183
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 3184
    invoke-virtual {v0, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10200000

    .line 3185
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v8

    .line 3187
    .local v8, "customerDialerIntent":Landroid/content/Intent;
    const-string v3, "container=? AND intent=?"

    .line 3188
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/16 v0, -0x64

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v13

    .line 3189
    invoke-virtual {v8, v13}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    .line 3191
    .local v4, "selectionArg":[Ljava/lang/String;
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/launcher3/common/model/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v2, [Ljava/lang/String;

    const-string v12, "screen"

    aput-object v12, v2, v13

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3194
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 3196
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3197
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 3198
    .local v10, "screenId":J
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    .line 3199
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 3198
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 3200
    .local v9, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "customerPagePref"

    invoke-interface {v0, v1, v10, v11}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3201
    const-string v0, "HomeLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "save customer page key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3206
    .end local v9    # "prefs":Landroid/content/SharedPreferences;
    .end local v10    # "screenId":J
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3211
    :goto_1
    return-void

    .line 3203
    :cond_0
    :try_start_1
    const-string v0, "HomeLoader"

    const-string v1, "customer dialer is not exist in the workspace"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3206
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 3209
    :cond_1
    const-string v0, "HomeLoader"

    const-string v1, "customer dialer is not exist in the workspace"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private shortcutExists(Landroid/content/Intent;Lcom/android/launcher3/common/compat/UserHandleCompat;)Z
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;

    .prologue
    const/4 v8, 0x0

    .line 4044
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 4047
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 4048
    .local v5, "packageName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 4049
    invoke-virtual {p1, v8}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    .line 4050
    .local v1, "intentWithPkg":Ljava/lang/String;
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    .line 4060
    .end local v5    # "packageName":Ljava/lang/String;
    .local v2, "intentWithoutPkg":Ljava/lang/String;
    :goto_0
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeLoader;->getAllItemInHome()Ljava/util/ArrayList;

    move-result-object v4

    .line 4062
    .local v4, "itemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 4063
    .local v3, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    instance-of v10, v3, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v10, :cond_0

    move-object v0, v3

    .line 4064
    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 4065
    .local v0, "info":Lcom/android/launcher3/common/base/item/IconInfo;
    iget-object v10, v0, Lcom/android/launcher3/common/base/item/IconInfo;->promisedIntent:Landroid/content/Intent;

    if-nez v10, :cond_5

    iget-object v7, v0, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    .line 4067
    .local v7, "targetIntent":Landroid/content/Intent;
    :goto_1
    if-eqz v7, :cond_0

    if-eqz p2, :cond_0

    iget-object v10, v0, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {p2, v10}, Lcom/android/launcher3/common/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 4068
    invoke-virtual {v7, v8}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v6

    .line 4069
    .local v6, "strIntent":Ljava/lang/String;
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 4070
    :cond_1
    const-string v8, "HomeLoader"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "shortcutExists : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/item/IconInfo;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4071
    const/4 v8, 0x1

    .line 4076
    .end local v0    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v3    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v6    # "strIntent":Ljava/lang/String;
    .end local v7    # "targetIntent":Landroid/content/Intent;
    :cond_2
    return v8

    .line 4052
    .end local v1    # "intentWithPkg":Ljava/lang/String;
    .end local v2    # "intentWithoutPkg":Ljava/lang/String;
    .end local v4    # "itemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .restart local v5    # "packageName":Ljava/lang/String;
    :cond_3
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v9, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    .line 4053
    .restart local v1    # "intentWithPkg":Ljava/lang/String;
    invoke-virtual {p1, v8}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "intentWithoutPkg":Ljava/lang/String;
    goto :goto_0

    .line 4056
    .end local v1    # "intentWithPkg":Ljava/lang/String;
    .end local v2    # "intentWithoutPkg":Ljava/lang/String;
    .end local v5    # "packageName":Ljava/lang/String;
    :cond_4
    invoke-virtual {p1, v8}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    .line 4057
    .restart local v1    # "intentWithPkg":Ljava/lang/String;
    invoke-virtual {p1, v8}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "intentWithoutPkg":Ljava/lang/String;
    goto :goto_0

    .line 4065
    .restart local v0    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    .restart local v3    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    .restart local v4    # "itemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    :cond_5
    iget-object v7, v0, Lcom/android/launcher3/common/base/item/IconInfo;->promisedIntent:Landroid/content/Intent;

    goto :goto_1
.end method

.method private tryGetCallbacks(Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;
    .locals 5
    .param p1, "oldCallbacks"    # Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;
    .param p2, "task"    # Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;

    .prologue
    const/4 v1, 0x0

    .line 1580
    iget-object v2, p0, Lcom/android/launcher3/home/HomeLoader;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1581
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/launcher3/home/HomeLoader;->isStopped(Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1582
    monitor-exit v2

    move-object v0, v1

    .line 1597
    :goto_0
    return-object v0

    .line 1585
    :cond_0
    iget-object v3, p0, Lcom/android/launcher3/home/HomeLoader;->mCallbacks:Ljava/lang/ref/WeakReference;

    if-nez v3, :cond_1

    .line 1586
    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    .line 1589
    :cond_1
    iget-object v3, p0, Lcom/android/launcher3/home/HomeLoader;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    .line 1590
    .local v0, "callbacks":Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;
    if-eq v0, p1, :cond_2

    .line 1591
    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    .line 1593
    :cond_2
    if-nez v0, :cond_3

    .line 1594
    const-string v3, "HomeLoader"

    const-string v4, "no mCallbacks"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1595
    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    .line 1597
    :cond_3
    monitor-exit v2

    goto :goto_0

    .line 1598
    .end local v0    # "callbacks":Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updateAndBindItems(Ljava/util/ArrayList;Z)V
    .locals 18
    .param p2, "isGameApp"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 2501
    .local p1, "updateItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2503
    .local v4, "addedWorkspaceScreensFinal":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    sget-object v2, Lcom/android/launcher3/home/HomeLoader;->sFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    invoke-virtual {v2}, Lcom/android/launcher3/common/model/FavoritesProvider;->loadScreensFromDb()Ljava/util/ArrayList;

    move-result-object v3

    .line 2504
    .local v3, "workspaceScreens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 2506
    .local v10, "contentValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 2507
    .local v14, "itemInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    const-wide/16 v6, -0x64

    iput-wide v6, v14, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    .line 2508
    const-wide/16 v6, -0x1

    iput-wide v6, v14, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    .line 2510
    iget v5, v14, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    iget v6, v14, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher3/home/HomeLoader;->findSpaceForItem(Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)Landroid/util/Pair;

    move-result-object v12

    .line 2512
    .local v12, "coords":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;[I>;"
    iget-object v2, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 2513
    .local v16, "screenId":J
    iget-object v11, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, [I

    .line 2515
    .local v11, "coordinates":[I
    move-wide/from16 v0, v16

    iput-wide v0, v14, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    .line 2516
    const/4 v2, 0x0

    aget v2, v11, v2

    iput v2, v14, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    .line 2517
    const/4 v2, 0x1

    aget v2, v11, v2

    iput v2, v14, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    .line 2518
    if-eqz p2, :cond_0

    const/4 v13, 0x4

    .line 2519
    .local v13, "hiddenFlag":I
    :goto_1
    invoke-virtual {v14, v13}, Lcom/android/launcher3/common/base/item/ItemInfo;->setUnHidden(I)I

    move-result v2

    iput v2, v14, Lcom/android/launcher3/common/base/item/ItemInfo;->hidden:I

    .line 2521
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 2522
    .local v9, "contentValues":Landroid/content/ContentValues;
    const-string v2, "container"

    iget-wide v6, v14, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v9, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2523
    const-string v2, "cellX"

    iget v5, v14, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v9, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2524
    const-string v2, "cellY"

    iget v5, v14, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v9, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2525
    const-string v2, "screen"

    iget-wide v6, v14, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v9, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2526
    const-string v2, "hidden"

    iget v5, v14, Lcom/android/launcher3/common/base/item/ItemInfo;->hidden:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v9, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2527
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2518
    .end local v9    # "contentValues":Landroid/content/ContentValues;
    .end local v13    # "hiddenFlag":I
    :cond_0
    const/4 v13, 0x2

    goto :goto_1

    .line 2530
    .end local v11    # "coordinates":[I
    .end local v12    # "coords":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;[I>;"
    .end local v14    # "itemInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v16    # "screenId":J
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeLoader;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    sget-object v5, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-virtual {v2, v5, v10, v0}, Lcom/android/launcher3/common/model/FavoritesUpdater;->updateItemsInDatabaseHelper(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 2532
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeLoader;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    sget-object v5, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    invoke-virtual {v2, v5, v3}, Lcom/android/launcher3/common/model/FavoritesUpdater;->updateScreenOrder(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 2534
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/home/HomeLoader;->getCallback()Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    move-result-object v8

    .line 2535
    .local v8, "callbacks":Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;
    sget-object v2, Lcom/android/launcher3/home/HomeLoader;->sHandler:Lcom/android/launcher3/common/model/DeferredHandler;

    new-instance v5, Lcom/android/launcher3/home/HomeLoader$23;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v5, v0, v8, v4, v1}, Lcom/android/launcher3/home/HomeLoader$23;-><init>(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v5}, Lcom/android/launcher3/common/model/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 2543
    return-void
.end method

.method private updateHideItems(Ljava/util/ArrayList;Z)V
    .locals 20
    .param p2, "isGameApp"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 2546
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 2547
    .local v9, "contentValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2548
    .local v7, "hideItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2549
    .local v6, "itemsInFolder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2551
    .local v5, "folderInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/folder/FolderInfo;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 2552
    .local v11, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-object v8, v11, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    .line 2553
    .local v8, "componentName":Landroid/content/ComponentName;
    if-nez v8, :cond_1

    move-object v2, v11

    .line 2554
    check-cast v2, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/common/base/item/IconInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v8

    .line 2557
    :cond_1
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHomeModeChange()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2558
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2559
    if-eqz p2, :cond_2

    const/4 v10, 0x4

    .line 2560
    .local v10, "hiddenFlag":I
    :goto_1
    invoke-virtual {v11, v10}, Lcom/android/launcher3/common/base/item/ItemInfo;->setHidden(I)I

    move-result v2

    iput v2, v11, Lcom/android/launcher3/common/base/item/ItemInfo;->hidden:I

    .line 2561
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 2562
    .local v14, "values":Landroid/content/ContentValues;
    const-string v2, "hidden"

    iget v15, v11, Lcom/android/launcher3/common/base/item/ItemInfo;->hidden:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v2, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2563
    const-string v2, "screen"

    const/4 v15, -0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v2, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2565
    iget-wide v0, v11, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    move-wide/from16 v16, v0

    const-wide/16 v18, -0x64

    cmp-long v2, v16, v18

    if-eqz v2, :cond_3

    iget-wide v0, v11, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    move-wide/from16 v16, v0

    const-wide/16 v18, -0x65

    cmp-long v2, v16, v18

    if-eqz v2, :cond_3

    .line 2567
    sget-object v15, Lcom/android/launcher3/home/HomeLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v15

    .line 2568
    :try_start_0
    sget-object v2, Lcom/android/launcher3/home/HomeLoader;->sBgFolders:Lcom/android/launcher3/util/LongArrayMap;

    iget-wide v0, v11, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2569
    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2570
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2571
    const-wide/16 v16, -0x64

    move-wide/from16 v0, v16

    iput-wide v0, v11, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    .line 2572
    const-string v2, "container"

    iget-wide v0, v11, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v14, v2, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2577
    :goto_2
    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2559
    .end local v10    # "hiddenFlag":I
    .end local v14    # "values":Landroid/content/ContentValues;
    :cond_2
    const/4 v10, 0x2

    goto :goto_1

    .line 2569
    .restart local v10    # "hiddenFlag":I
    .restart local v14    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 2574
    :cond_3
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2575
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/launcher3/home/HomeLoader;->removePagesItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto :goto_2

    .line 2579
    .end local v10    # "hiddenFlag":I
    .end local v14    # "values":Landroid/content/ContentValues;
    :cond_4
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2581
    iget-object v2, v11, Lcom/android/launcher3/common/base/item/ItemInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    const/4 v15, 0x1

    .line 2582
    invoke-static {v8, v2, v15}, Lcom/android/launcher3/home/HomeLoader;->getItemInfoByComponentName(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;Z)Ljava/util/ArrayList;

    move-result-object v13

    .line 2583
    .local v13, "itemsByComponentName":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 2584
    .local v12, "itemByComponentName":Lcom/android/launcher3/common/base/item/ItemInfo;
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/launcher3/home/HomeLoader;->isAllAppItemInApps(Lcom/android/launcher3/common/base/item/ItemInfo;)Z

    move-result v15

    if-nez v15, :cond_5

    .line 2585
    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2586
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher3/home/HomeLoader;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    invoke-virtual {v15, v12}, Lcom/android/launcher3/common/model/FavoritesUpdater;->deleteItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto :goto_3

    .line 2592
    .end local v8    # "componentName":Landroid/content/ComponentName;
    .end local v11    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v12    # "itemByComponentName":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v13    # "itemsByComponentName":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    :cond_6
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHomeModeChange()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2593
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2594
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeLoader;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    sget-object v3, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-virtual {v2, v3, v9, v0}, Lcom/android/launcher3/common/model/FavoritesUpdater;->updateItemsInDatabaseHelper(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 2597
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/home/HomeLoader;->getCallback()Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    move-result-object v4

    .line 2598
    .local v4, "callbacks":Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;
    sget-object v15, Lcom/android/launcher3/home/HomeLoader;->sHandler:Lcom/android/launcher3/common/model/DeferredHandler;

    new-instance v2, Lcom/android/launcher3/home/HomeLoader$24;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher3/home/HomeLoader$24;-><init>(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {v15, v2}, Lcom/android/launcher3/common/model/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 2607
    return-void
.end method


# virtual methods
.method addAndBindAddedWorkspaceItems(Landroid/content/Context;Ljava/util/ArrayList;Z)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "lastPosition"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<+",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1940
    .local p2, "workspaceApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<+Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeLoader;->getCallback()Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    move-result-object v5

    .line 1941
    .local v5, "callbacks":Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2028
    :goto_0
    return-void

    .line 1945
    :cond_0
    new-instance v0, Lcom/android/launcher3/home/HomeLoader$16;

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/home/HomeLoader$16;-><init>(Lcom/android/launcher3/home/HomeLoader;Ljava/util/ArrayList;ZLandroid/content/Context;Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;)V

    .line 2027
    .local v0, "r":Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/android/launcher3/home/HomeLoader;->runOnWorkerThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public addAndBindAppsButton(Landroid/content/Context;Lcom/android/launcher3/common/base/item/IconInfo;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appsButton"    # Lcom/android/launcher3/common/base/item/IconInfo;

    .prologue
    .line 1855
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeLoader;->getCallback()Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    move-result-object v0

    .line 1856
    .local v0, "callbacks":Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;
    new-instance v1, Lcom/android/launcher3/home/HomeLoader$15;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/android/launcher3/home/HomeLoader$15;-><init>(Lcom/android/launcher3/home/HomeLoader;Landroid/content/Context;Lcom/android/launcher3/common/base/item/IconInfo;Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;)V

    .line 1922
    .local v1, "r":Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/launcher3/home/HomeLoader;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 1923
    return-void
.end method

.method public addOrUpdater([Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/HashMap;Lcom/android/launcher3/common/compat/UserHandleCompat;)V
    .locals 27
    .param p1, "packages"    # [Ljava/lang/String;
    .param p4, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;",
            "Lcom/android/launcher3/common/compat/UserHandleCompat;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2321
    .local p2, "addedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    .local p3, "addedOrUpdatedApps":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/content/ComponentName;Lcom/android/launcher3/common/base/item/IconInfo;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2322
    .local v5, "updatedIcons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2323
    .local v6, "removedIcons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 2325
    .local v24, "widgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/home/LauncherAppWidgetInfo;>;"
    new-instance v20, Ljava/util/HashSet;

    invoke-static/range {p1 .. p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 2326
    .local v20, "packageSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    sget-object v3, Lcom/android/launcher3/home/HomeLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2327
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/home/HomeLoader;->getAllItemInHome()Ljava/util/ArrayList;

    move-result-object v9

    .line 2328
    .local v9, "allItemInHome":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 2329
    .local v16, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    move-object/from16 v0, v16

    instance-of v7, v0, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v7, :cond_e

    move-object/from16 v0, v16

    iget-object v7, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-object/from16 v0, p4

    invoke-virtual {v0, v7}, Lcom/android/launcher3/common/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 2330
    move-object/from16 v0, v16

    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    move-object v14, v0

    .line 2331
    .local v14, "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    const/16 v17, 0x0

    .line 2332
    .local v17, "infoUpdated":Z
    const/4 v15, 0x0

    .line 2335
    .local v15, "iconUpdated":Z
    iget-object v7, v14, Lcom/android/launcher3/common/base/item/IconInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    if-eqz v7, :cond_1

    iget-object v7, v14, Lcom/android/launcher3/common/base/item/IconInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v7, v7, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    .line 2336
    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2337
    iget-object v7, v14, Lcom/android/launcher3/common/base/item/IconInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v7, v7, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    iget-object v0, v14, Lcom/android/launcher3/common/base/item/IconInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    move-object/from16 v25, v0

    sget-object v26, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v7, v0, v1}, Lcom/android/launcher3/util/BitmapUtils;->createIconBitmap(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 2340
    .local v13, "icon":Landroid/graphics/Bitmap;
    if-eqz v13, :cond_1

    .line 2341
    invoke-virtual {v14, v13}, Lcom/android/launcher3/common/base/item/IconInfo;->setOriginalIcon(Landroid/graphics/Bitmap;)V

    .line 2342
    sget-object v7, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    iget-object v0, v14, Lcom/android/launcher3/common/base/item/IconInfo;->componentName:Landroid/content/ComponentName;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-static {v7, v13, v0}, Lcom/android/launcher3/util/ShortcutTray;->getIcon(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/content/ComponentName;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 2343
    const/4 v7, 0x1

    iput-boolean v7, v14, Lcom/android/launcher3/common/base/item/IconInfo;->customIcon:Z

    .line 2345
    invoke-virtual {v14, v13}, Lcom/android/launcher3/common/base/item/IconInfo;->setIcon(Landroid/graphics/Bitmap;)V

    .line 2346
    const/4 v7, 0x0

    iput-boolean v7, v14, Lcom/android/launcher3/common/base/item/IconInfo;->usingFallbackIcon:Z

    .line 2347
    const/16 v17, 0x1

    .line 2351
    .end local v13    # "icon":Landroid/graphics/Bitmap;
    :cond_1
    invoke-virtual {v14}, Lcom/android/launcher3/common/base/item/IconInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v12

    .line 2352
    .local v12, "cn":Landroid/content/ComponentName;
    if-eqz v12, :cond_9

    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 2353
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 2354
    .local v10, "appInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    invoke-virtual {v14}, Lcom/android/launcher3/common/base/item/IconInfo;->isPromise()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 2355
    sget-object v7, Lcom/android/launcher3/home/HomeLoader;->sLauncherApps:Lcom/android/launcher3/common/compat/LauncherAppsCompat;

    .line 2356
    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p4

    invoke-virtual {v7, v0, v1}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object v11

    .line 2357
    .local v11, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;>;"
    move-object/from16 v0, p4

    invoke-static {v11, v12, v0}, Lcom/android/launcher3/home/HomeLoader;->findActivityInfo(Ljava/util/List;Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;

    move-result-object v8

    .line 2358
    .local v8, "activityInfo":Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    const/16 v7, 0x26

    invoke-virtual {v14, v7}, Lcom/android/launcher3/common/base/item/IconInfo;->hasStatusFlag(I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2361
    sget-object v7, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v21

    .line 2362
    .local v21, "pm":Landroid/content/pm/PackageManager;
    new-instance v7, Landroid/content/Intent;

    const-string v25, "android.intent.action.MAIN"

    move-object/from16 v0, v25

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2364
    invoke-virtual {v7, v12}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v7

    const-string v25, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    const/high16 v25, 0x10000

    .line 2362
    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-virtual {v0, v7, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v19

    .line 2366
    .local v19, "matched":Landroid/content/pm/ResolveInfo;
    if-nez v19, :cond_3

    .line 2368
    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v18

    .line 2370
    .local v18, "intent":Landroid/content/Intent;
    if-nez v18, :cond_2

    .line 2371
    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2450
    .end local v8    # "activityInfo":Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    .end local v9    # "allItemInHome":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .end local v10    # "appInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v11    # "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;>;"
    .end local v12    # "cn":Landroid/content/ComponentName;
    .end local v14    # "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v15    # "iconUpdated":Z
    .end local v16    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v17    # "infoUpdated":Z
    .end local v18    # "intent":Landroid/content/Intent;
    .end local v19    # "matched":Landroid/content/pm/ResolveInfo;
    .end local v21    # "pm":Landroid/content/pm/PackageManager;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 2374
    .restart local v8    # "activityInfo":Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    .restart local v9    # "allItemInHome":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .restart local v10    # "appInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    .restart local v11    # "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;>;"
    .restart local v12    # "cn":Landroid/content/ComponentName;
    .restart local v14    # "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    .restart local v15    # "iconUpdated":Z
    .restart local v16    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    .restart local v17    # "infoUpdated":Z
    .restart local v18    # "intent":Landroid/content/Intent;
    .restart local v19    # "matched":Landroid/content/pm/ResolveInfo;
    .restart local v21    # "pm":Landroid/content/pm/PackageManager;
    :cond_2
    :try_start_1
    move-object/from16 v0, v18

    iput-object v0, v14, Lcom/android/launcher3/common/base/item/IconInfo;->promisedIntent:Landroid/content/Intent;

    .line 2378
    .end local v18    # "intent":Landroid/content/Intent;
    .end local v19    # "matched":Landroid/content/pm/ResolveInfo;
    .end local v21    # "pm":Landroid/content/pm/PackageManager;
    :cond_3
    const/4 v7, 0x4

    invoke-virtual {v14, v7}, Lcom/android/launcher3/common/base/item/IconInfo;->hasStatusFlag(I)Z

    move-result v7

    if-eqz v7, :cond_5

    iget v7, v14, Lcom/android/launcher3/common/base/item/IconInfo;->itemType:I

    const/16 v25, 0x1

    move/from16 v0, v25

    if-ne v7, v0, :cond_5

    iget-object v7, v14, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    .line 2380
    invoke-static {v7}, Lcom/android/launcher3/Utilities;->isLauncherAppTarget(Landroid/content/Intent;)Z

    move-result v7

    if-eqz v7, :cond_5

    if-eqz v8, :cond_5

    .line 2382
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 2383
    const-string v7, "HomeLoader"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "addOrUpdater : this shortcut(restored) is app shortcut. so remove "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    iget-object v0, v14, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2384
    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2387
    :cond_4
    const-string v7, "HomeLoader"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "addOrUpdater : this shortcut(restored) is app shortcut. change item type "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    iget-object v0, v14, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2388
    const/4 v7, 0x0

    iput v7, v14, Lcom/android/launcher3/common/base/item/IconInfo;->itemType:I

    .line 2392
    :cond_5
    if-eqz v8, :cond_6

    .line 2393
    invoke-static {v8}, Lcom/android/launcher3/common/base/item/IconInfo;->initFlags(Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;)I

    move-result v7

    iput v7, v14, Lcom/android/launcher3/common/base/item/IconInfo;->flags:I

    .line 2396
    :cond_6
    iget-object v7, v14, Lcom/android/launcher3/common/base/item/IconInfo;->promisedIntent:Landroid/content/Intent;

    iput-object v7, v14, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    .line 2397
    const/4 v7, 0x0

    iput-object v7, v14, Lcom/android/launcher3/common/base/item/IconInfo;->promisedIntent:Landroid/content/Intent;

    .line 2398
    const/4 v7, 0x0

    iput v7, v14, Lcom/android/launcher3/common/base/item/IconInfo;->status:I

    .line 2399
    iget v7, v14, Lcom/android/launcher3/common/base/item/IconInfo;->itemType:I

    if-nez v7, :cond_7

    .line 2400
    const/4 v7, 0x0

    iput-boolean v7, v14, Lcom/android/launcher3/common/base/item/IconInfo;->customIcon:Z

    .line 2402
    :cond_7
    const/16 v17, 0x1

    .line 2403
    sget-object v7, Lcom/android/launcher3/home/HomeLoader;->sIconCache:Lcom/android/launcher3/common/model/IconCache;

    invoke-virtual {v14, v7}, Lcom/android/launcher3/common/base/item/IconInfo;->updateIcon(Lcom/android/launcher3/common/model/IconCache;)V

    .line 2411
    .end local v8    # "activityInfo":Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    .end local v11    # "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;>;"
    :cond_8
    :goto_1
    iget v7, v14, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_d

    .line 2413
    iget v7, v14, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    and-int/lit8 v7, v7, -0x3

    iput v7, v14, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    .line 2414
    const/4 v15, 0x1

    .line 2421
    .end local v10    # "appInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_9
    :goto_2
    if-nez v17, :cond_a

    if-eqz v15, :cond_b

    .line 2422
    :cond_a
    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2425
    :cond_b
    if-eqz v17, :cond_0

    .line 2426
    new-instance v22, Landroid/content/ContentValues;

    invoke-direct/range {v22 .. v22}, Landroid/content/ContentValues;-><init>()V

    .line 2427
    .local v22, "values":Landroid/content/ContentValues;
    sget-object v7, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    move-object/from16 v0, v22

    invoke-virtual {v14, v7, v0}, Lcom/android/launcher3/common/base/item/IconInfo;->onAddToDatabase(Landroid/content/Context;Landroid/content/ContentValues;)V

    .line 2428
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/HomeLoader;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    move-object/from16 v0, v22

    invoke-virtual {v7, v0, v14}, Lcom/android/launcher3/common/model/FavoritesUpdater;->updateItem(Landroid/content/ContentValues;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto/16 :goto_0

    .line 2404
    .end local v22    # "values":Landroid/content/ContentValues;
    .restart local v10    # "appInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_c
    if-eqz v10, :cond_8

    const-string v7, "android.intent.action.MAIN"

    iget-object v0, v14, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    iget v7, v14, Lcom/android/launcher3/common/base/item/IconInfo;->itemType:I

    if-nez v7, :cond_8

    .line 2406
    sget-object v7, Lcom/android/launcher3/home/HomeLoader;->sIconCache:Lcom/android/launcher3/common/model/IconCache;

    invoke-virtual {v14, v7}, Lcom/android/launcher3/common/base/item/IconInfo;->updateIcon(Lcom/android/launcher3/common/model/IconCache;)V

    .line 2407
    iget-object v7, v10, Lcom/android/launcher3/common/base/item/IconInfo;->contentDescription:Ljava/lang/CharSequence;

    iput-object v7, v14, Lcom/android/launcher3/common/base/item/IconInfo;->contentDescription:Ljava/lang/CharSequence;

    .line 2408
    const/16 v17, 0x1

    goto :goto_1

    .line 2415
    :cond_d
    iget v7, v14, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    and-int/lit8 v7, v7, 0x20

    if-eqz v7, :cond_9

    .line 2416
    iget v7, v14, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    and-int/lit8 v7, v7, -0x21

    iput v7, v14, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    .line 2417
    const/4 v15, 0x1

    goto :goto_2

    .line 2430
    .end local v10    # "appInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v12    # "cn":Landroid/content/ComponentName;
    .end local v14    # "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v15    # "iconUpdated":Z
    .end local v17    # "infoUpdated":Z
    :cond_e
    move-object/from16 v0, v16

    instance-of v7, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    if-eqz v7, :cond_0

    .line 2431
    move-object/from16 v0, v16

    check-cast v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    move-object/from16 v23, v0

    .line 2432
    .local v23, "widgetInfo":Lcom/android/launcher3/home/LauncherAppWidgetInfo;
    move-object/from16 v0, v23

    iget-object v7, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-object/from16 v0, p4

    invoke-virtual {v0, v7}, Lcom/android/launcher3/common/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x2

    .line 2433
    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v7

    if-eqz v7, :cond_0

    move-object/from16 v0, v23

    iget-object v7, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    .line 2434
    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2435
    move-object/from16 v0, v23

    iget v7, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->restoreStatus:I

    and-int/lit8 v7, v7, -0xb

    move-object/from16 v0, v23

    iput v7, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->restoreStatus:I

    .line 2441
    move-object/from16 v0, v23

    iget v7, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->restoreStatus:I

    or-int/lit8 v7, v7, 0x4

    move-object/from16 v0, v23

    iput v7, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->restoreStatus:I

    .line 2443
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2444
    new-instance v22, Landroid/content/ContentValues;

    invoke-direct/range {v22 .. v22}, Landroid/content/ContentValues;-><init>()V

    .line 2445
    .restart local v22    # "values":Landroid/content/ContentValues;
    sget-object v7, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v7, v1}, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->onAddToDatabase(Landroid/content/Context;Landroid/content/ContentValues;)V

    .line 2446
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/HomeLoader;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v7, v0, v1}, Lcom/android/launcher3/common/model/FavoritesUpdater;->updateItem(Landroid/content/ContentValues;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto/16 :goto_0

    .line 2450
    .end local v16    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v22    # "values":Landroid/content/ContentValues;
    .end local v23    # "widgetInfo":Lcom/android/launcher3/home/LauncherAppWidgetInfo;
    :cond_f
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2452
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/home/HomeLoader;->getCallback()Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    move-result-object v4

    .line 2453
    .local v4, "callbacks":Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;
    if-nez v4, :cond_11

    .line 2454
    const-string v2, "HomeLoader"

    const-string v3, "addOrUpdater. Nobody to tell about the new app.  Launcher is probably loading."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2490
    :cond_10
    :goto_3
    return-void

    .line 2459
    :cond_11
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHomeModeChange()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 2460
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_12

    if-eqz p2, :cond_12

    .line 2461
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_12

    .line 2462
    new-instance v2, Ljava/util/ArrayList;

    move-object/from16 v0, p2

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/launcher3/home/HomeLoader;->restoreStkPositionIfNecessary(Ljava/util/ArrayList;)V

    .line 2463
    sget-object v2, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/launcher3/home/HomeLoader;->addAndBindAddedWorkspaceItems(Landroid/content/Context;Ljava/util/ArrayList;Z)V

    .line 2466
    :cond_12
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_14

    .line 2467
    :cond_13
    sget-object v25, Lcom/android/launcher3/home/HomeLoader;->sHandler:Lcom/android/launcher3/common/model/DeferredHandler;

    new-instance v2, Lcom/android/launcher3/home/HomeLoader$21;

    move-object/from16 v3, p0

    move-object/from16 v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher3/home/HomeLoader$21;-><init>(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lcom/android/launcher3/common/model/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 2475
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_14

    .line 2476
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeLoader;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    invoke-virtual {v2, v6}, Lcom/android/launcher3/common/model/FavoritesUpdater;->deleteItemsFromDatabase(Ljava/util/ArrayList;)V

    .line 2480
    :cond_14
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_10

    .line 2481
    sget-object v2, Lcom/android/launcher3/home/HomeLoader;->sHandler:Lcom/android/launcher3/common/model/DeferredHandler;

    new-instance v3, Lcom/android/launcher3/home/HomeLoader$22;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v3, v0, v4, v1}, Lcom/android/launcher3/home/HomeLoader$22;-><init>(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v3}, Lcom/android/launcher3/common/model/DeferredHandler;->post(Ljava/lang/Runnable;)V

    goto :goto_3
.end method

.method public addPagesItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 4
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 3000
    iget-wide v0, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget v0, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->hidden:I

    if-eqz v0, :cond_1

    .line 3014
    :cond_0
    :goto_0
    return-void

    .line 3002
    :cond_1
    iget-wide v0, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v2, -0x65

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 3003
    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mBgHotseatItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3004
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/util/logging/SALogging;->updateLogValuesForHomeItems()V

    goto :goto_0

    .line 3005
    :cond_2
    iget-wide v0, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v2, -0x64

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    .line 3006
    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mBgPagesItems:Ljava/util/HashMap;

    iget-wide v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    .line 3007
    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mBgPagesItems:Ljava/util/HashMap;

    iget-wide v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3009
    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mBgPagesItems:Ljava/util/HashMap;

    iget-wide v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3010
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/util/logging/SALogging;->updateLogValuesForHomeItems()V

    goto :goto_0

    .line 3012
    :cond_4
    const-string v0, "HomeLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addPagesItem : input item container error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method bindItemAfterChangePosition(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 4
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 1926
    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/HomeLoader;->removePagesItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 1927
    const/4 v1, -0x1

    iput v1, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    iput v1, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    int-to-long v2, v1

    iput-wide v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    .line 1928
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1929
    .local v0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1931
    sget-object v1, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/launcher3/home/HomeLoader;->addAndBindAddedWorkspaceItems(Landroid/content/Context;Ljava/util/ArrayList;Z)V

    .line 1932
    return-void
.end method

.method bindItems(Ljava/util/ArrayList;)V
    .locals 12
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
    .line 2031
    .local p1, "addedItemsFinal":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeLoader;->getCallback()Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    move-result-object v2

    .line 2033
    .local v2, "callbacks":Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_8

    .line 2034
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2035
    .local v0, "addAnimated":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2037
    .local v1, "addNotAnimated":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    const/4 v3, 0x0

    .line 2038
    .local v3, "currentScreenIndex":I
    if-eqz v2, :cond_0

    .line 2039
    invoke-interface {v2}, Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;->getCurrentWorkspaceScreen()I

    move-result v3

    .line 2041
    :cond_0
    iget-object v8, p0, Lcom/android/launcher3/home/HomeLoader;->mBgOrderedScreens:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lt v3, v8, :cond_1

    .line 2042
    iget-object v8, p0, Lcom/android/launcher3/home/HomeLoader;->mBgOrderedScreens:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v3, v8, -0x1

    .line 2044
    :cond_1
    if-gez v3, :cond_2

    .line 2045
    const-string v8, "HomeLoader"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "bindItems currentScreenIndex : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mBgOrderedScreens.size : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/launcher3/home/HomeLoader;->mBgOrderedScreens:Ljava/util/ArrayList;

    .line 2046
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2045
    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2047
    const/4 v3, 0x0

    .line 2049
    :cond_2
    iget-object v8, p0, Lcom/android/launcher3/home/HomeLoader;->mBgOrderedScreens:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 2050
    .local v4, "currentScreenId":J
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 2051
    .local v6, "i":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-wide v10, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    cmp-long v9, v10, v4

    if-nez v9, :cond_3

    instance-of v9, v6, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    if-nez v9, :cond_3

    .line 2052
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2054
    :cond_3
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2058
    .end local v6    # "i":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 2059
    .local v7, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    instance-of v8, v7, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v8, :cond_5

    move-object v8, v7

    .line 2060
    check-cast v8, Lcom/android/launcher3/common/base/item/IconInfo;

    sget-object v10, Lcom/android/launcher3/home/HomeLoader;->sIconCache:Lcom/android/launcher3/common/model/IconCache;

    invoke-virtual {v8, v10}, Lcom/android/launcher3/common/base/item/IconInfo;->getIcon(Lcom/android/launcher3/common/model/IconCache;)Landroid/graphics/Bitmap;

    .line 2062
    :cond_5
    new-instance v8, Lcom/android/launcher3/home/HomeLoader$17;

    invoke-direct {v8, p0, v2, v7}, Lcom/android/launcher3/home/HomeLoader$17;-><init>(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    invoke-virtual {p0, v8}, Lcom/android/launcher3/home/HomeLoader;->runOnMainThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 2081
    .end local v7    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 2082
    .restart local v7    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    instance-of v8, v7, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v8, :cond_7

    move-object v8, v7

    .line 2083
    check-cast v8, Lcom/android/launcher3/common/base/item/IconInfo;

    sget-object v10, Lcom/android/launcher3/home/HomeLoader;->sIconCache:Lcom/android/launcher3/common/model/IconCache;

    invoke-virtual {v8, v10}, Lcom/android/launcher3/common/base/item/IconInfo;->getIcon(Lcom/android/launcher3/common/model/IconCache;)Landroid/graphics/Bitmap;

    .line 2085
    :cond_7
    new-instance v8, Lcom/android/launcher3/home/HomeLoader$18;

    invoke-direct {v8, p0, v2, v7}, Lcom/android/launcher3/home/HomeLoader$18;-><init>(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    invoke-virtual {p0, v8}, Lcom/android/launcher3/home/HomeLoader;->runOnMainThread(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 2108
    .end local v0    # "addAnimated":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .end local v1    # "addNotAnimated":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .end local v3    # "currentScreenIndex":I
    .end local v4    # "currentScreenId":J
    .end local v7    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_8
    return-void
.end method

.method public bindItemsSync(ILcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V
    .locals 18
    .param p1, "synchronousBindPage"    # I
    .param p2, "task"    # Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;

    .prologue
    .line 2670
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/home/HomeLoader;->getCallback()Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    move-result-object v8

    .line 2671
    .local v8, "oldCallbacks":Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;
    if-nez v8, :cond_0

    .line 2673
    const-string v14, "HomeLoader"

    const-string v15, "bindItemsSync running with no launcher"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2755
    :goto_0
    return-void

    .line 2677
    :cond_0
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFestivalPage()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 2678
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/launcher3/home/HomeLoader;->initFestivalPageIfNecessary(Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V

    .line 2681
    :cond_1
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 2682
    .local v9, "orderedScreenIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    sget-object v15, Lcom/android/launcher3/home/HomeLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v15

    .line 2683
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/home/HomeLoader;->mBgOrderedScreens:Ljava/util/ArrayList;

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2684
    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2685
    const/16 v14, -0x3e9

    move/from16 v0, p1

    if-eq v0, v14, :cond_3

    const/4 v7, 0x1

    .line 2686
    .local v7, "isLoadingSynchronously":Z
    :goto_1
    if-eqz v7, :cond_4

    move/from16 v2, p1

    .line 2687
    .local v2, "currScreen":I
    :goto_2
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-lt v2, v14, :cond_2

    .line 2688
    const/16 v2, -0x3e9

    .line 2690
    :cond_2
    move v3, v2

    .line 2691
    .local v3, "currentScreen":I
    if-gez v3, :cond_5

    const-wide/16 v4, -0x1

    .line 2693
    .local v4, "currentScreenId":J
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/home/HomeLoader;->unbindItemsOnMainThread()V

    .line 2695
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2696
    .local v6, "currentWorkspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 2697
    .local v10, "otherWorkspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    sget-object v15, Lcom/android/launcher3/home/HomeLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v15

    .line 2698
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/home/HomeLoader;->mBgPagesItems:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_4
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 2699
    .local v12, "screenId":J
    cmp-long v14, v12, v4

    if-nez v14, :cond_6

    .line 2700
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/home/HomeLoader;->mBgPagesItems:Ljava/util/HashMap;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Collection;

    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_4

    .line 2705
    .end local v12    # "screenId":J
    :catchall_0
    move-exception v14

    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v14

    .line 2684
    .end local v2    # "currScreen":I
    .end local v3    # "currentScreen":I
    .end local v4    # "currentScreenId":J
    .end local v6    # "currentWorkspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .end local v7    # "isLoadingSynchronously":Z
    .end local v10    # "otherWorkspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    :catchall_1
    move-exception v14

    :try_start_2
    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v14

    .line 2685
    :cond_3
    const/4 v7, 0x0

    goto :goto_1

    .line 2686
    .restart local v7    # "isLoadingSynchronously":Z
    :cond_4
    invoke-interface {v8}, Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;->getCurrentWorkspaceScreen()I

    move-result v2

    goto :goto_2

    .line 2691
    .restart local v2    # "currScreen":I
    .restart local v3    # "currentScreen":I
    :cond_5
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto :goto_3

    .line 2702
    .restart local v4    # "currentScreenId":J
    .restart local v6    # "currentWorkspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .restart local v10    # "otherWorkspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .restart local v12    # "screenId":J
    :cond_6
    :try_start_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/home/HomeLoader;->mBgPagesItems:Ljava/util/HashMap;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Collection;

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_4

    .line 2705
    .end local v12    # "screenId":J
    :cond_7
    monitor-exit v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2707
    new-instance v11, Lcom/android/launcher3/home/HomeLoader$26;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v11, v0, v8, v1}, Lcom/android/launcher3/home/HomeLoader$26;-><init>(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V

    .line 2715
    .local v11, "r":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/launcher3/home/HomeLoader;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 2717
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v8, v9, v1}, Lcom/android/launcher3/home/HomeLoader;->bindWorkspaceScreens(Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;Ljava/util/ArrayList;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V

    .line 2718
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/home/HomeLoader;->mBgHotseatItems:Ljava/util/ArrayList;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v14, v15, v1}, Lcom/android/launcher3/home/HomeLoader;->bindPageItems(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V

    .line 2719
    const/4 v14, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v6, v14, v1}, Lcom/android/launcher3/home/HomeLoader;->bindPageItems(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V

    .line 2721
    new-instance v11, Lcom/android/launcher3/home/HomeLoader$27;

    .end local v11    # "r":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v11, v0, v8, v1, v3}, Lcom/android/launcher3/home/HomeLoader$27;-><init>(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;I)V

    .line 2729
    .restart local v11    # "r":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/launcher3/home/HomeLoader;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 2731
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/home/HomeLoader;->clearDeferredBindRunnable()V

    .line 2732
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/home/HomeLoader;->mDeferredBindRunnables:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v10, v14, v1}, Lcom/android/launcher3/home/HomeLoader;->bindPageItems(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V

    .line 2734
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFestivalPage()Z

    move-result v14

    if-eqz v14, :cond_8

    .line 2735
    new-instance v11, Lcom/android/launcher3/home/HomeLoader$28;

    .end local v11    # "r":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v11, v0, v1}, Lcom/android/launcher3/home/HomeLoader$28;-><init>(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V

    .line 2740
    .restart local v11    # "r":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/launcher3/home/HomeLoader;->addDeferredBindRunnable(Ljava/lang/Runnable;)V

    .line 2743
    :cond_8
    new-instance v11, Lcom/android/launcher3/home/HomeLoader$29;

    .end local v11    # "r":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v11, v0, v8, v1}, Lcom/android/launcher3/home/HomeLoader$29;-><init>(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V

    .line 2754
    .restart local v11    # "r":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/launcher3/home/HomeLoader;->addDeferredBindRunnable(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method

.method public bindPageItems(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V
    .locals 22
    .param p3, "task"    # Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;",
            "Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1100
    .local p1, "pageItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .local p2, "deferredBindRunnables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Runnable;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/HomeLoader;->isStopped(Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1101
    const-string v3, "HomeLoader"

    const-string v5, "bindPageItems task is stopped"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1244
    :cond_0
    :goto_0
    return-void

    .line 1105
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/home/HomeLoader;->getCallback()Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    move-result-object v4

    .line 1106
    .local v4, "oldCallbacks":Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;
    if-nez v4, :cond_2

    .line 1107
    const-string v3, "HomeLoader"

    const-string v5, "bindPageItems running with no launcher"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1111
    :cond_2
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFestivalPage()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1112
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/launcher3/home/HomeLoader;->initFestivalPageIfNecessary(Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V

    .line 1115
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/launcher3/home/HomeLoader;->mIsFirstBind:Z

    if-eqz v3, :cond_4

    .line 1116
    new-instance v2, Lcom/android/launcher3/home/HomeLoader$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v2, v0, v4, v1}, Lcom/android/launcher3/home/HomeLoader$2;-><init>(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V

    .line 1124
    .local v2, "r":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/home/HomeLoader;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 1126
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 1127
    .local v14, "orderedScreenIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    sget-object v5, Lcom/android/launcher3/home/HomeLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1128
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/HomeLoader;->mBgOrderedScreens:Ljava/util/ArrayList;

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1129
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1130
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v4, v14, v1}, Lcom/android/launcher3/home/HomeLoader;->bindWorkspaceScreens(Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;Ljava/util/ArrayList;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V

    .line 1131
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/launcher3/home/HomeLoader;->mIsFirstBind:Z

    .line 1134
    .end local v2    # "r":Ljava/lang/Runnable;
    .end local v14    # "orderedScreenIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_4
    if-eqz p1, :cond_5

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1135
    :cond_5
    const-string v3, "HomeLoader"

    const-string v5, "bindPageItems page item is null or empty!"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1129
    .restart local v2    # "r":Ljava/lang/Runnable;
    .restart local v14    # "orderedScreenIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 1139
    .end local v2    # "r":Ljava/lang/Runnable;
    .end local v14    # "orderedScreenIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_6
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1140
    .local v6, "shortcuts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 1141
    .local v16, "widgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1142
    .local v11, "hotseatShortcuts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v10, Lcom/android/launcher3/util/LongArrayMap;

    invoke-direct {v10}, Lcom/android/launcher3/util/LongArrayMap;-><init>()V

    .line 1143
    .local v10, "folders":Lcom/android/launcher3/util/LongArrayMap;, "Lcom/android/launcher3/util/LongArrayMap<Lcom/android/launcher3/folder/FolderInfo;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 1144
    .local v13, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget v3, v13, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 1149
    :goto_2
    :pswitch_1
    iget-wide v0, v13, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    move-wide/from16 v18, v0

    const-wide/16 v20, -0x65

    cmp-long v3, v18, v20

    if-nez v3, :cond_7

    .line 1150
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1146
    :pswitch_2
    iget-wide v0, v13, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    move-wide/from16 v18, v0

    move-object v3, v13

    check-cast v3, Lcom/android/launcher3/folder/FolderInfo;

    move-wide/from16 v0, v18

    invoke-virtual {v10, v0, v1, v3}, Lcom/android/launcher3/util/LongArrayMap;->put(JLjava/lang/Object;)V

    goto :goto_2

    .line 1152
    :cond_7
    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1157
    :pswitch_3
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1163
    .end local v13    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_8
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_9

    .line 1164
    new-instance v2, Lcom/android/launcher3/home/HomeLoader$3;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v2, v0, v4, v1, v11}, Lcom/android/launcher3/home/HomeLoader$3;-><init>(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;Ljava/util/ArrayList;)V

    .line 1173
    .restart local v2    # "r":Ljava/lang/Runnable;
    if-eqz p2, :cond_a

    .line 1174
    monitor-enter p2

    .line 1175
    :try_start_2
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1176
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1183
    .end local v2    # "r":Ljava/lang/Runnable;
    :cond_9
    :goto_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 1184
    .local v9, "N":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_4
    if-ge v12, v9, :cond_d

    .line 1185
    move v7, v12

    .line 1186
    .local v7, "start":I
    add-int/lit8 v3, v12, 0x6

    if-gt v3, v9, :cond_b

    const/4 v8, 0x6

    .line 1187
    .local v8, "chunkSize":I
    :goto_5
    new-instance v2, Lcom/android/launcher3/home/HomeLoader$4;

    move-object/from16 v3, p0

    move-object/from16 v5, p3

    invoke-direct/range {v2 .. v8}, Lcom/android/launcher3/home/HomeLoader$4;-><init>(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;Ljava/util/ArrayList;II)V

    .line 1196
    .restart local v2    # "r":Ljava/lang/Runnable;
    if-eqz p2, :cond_c

    .line 1197
    monitor-enter p2

    .line 1198
    :try_start_3
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1199
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1184
    :goto_6
    add-int/lit8 v12, v12, 0x6

    goto :goto_4

    .line 1176
    .end local v7    # "start":I
    .end local v8    # "chunkSize":I
    .end local v9    # "N":I
    .end local v12    # "i":I
    :catchall_1
    move-exception v3

    :try_start_4
    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v3

    .line 1178
    :cond_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/home/HomeLoader;->runOnMainThread(Ljava/lang/Runnable;)V

    goto :goto_3

    .line 1186
    .end local v2    # "r":Ljava/lang/Runnable;
    .restart local v7    # "start":I
    .restart local v9    # "N":I
    .restart local v12    # "i":I
    :cond_b
    sub-int v8, v9, v12

    goto :goto_5

    .line 1199
    .restart local v2    # "r":Ljava/lang/Runnable;
    .restart local v8    # "chunkSize":I
    :catchall_2
    move-exception v3

    :try_start_5
    monitor-exit p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v3

    .line 1201
    :cond_c
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/home/HomeLoader;->runOnMainThread(Ljava/lang/Runnable;)V

    goto :goto_6

    .line 1206
    .end local v2    # "r":Ljava/lang/Runnable;
    .end local v7    # "start":I
    .end local v8    # "chunkSize":I
    :cond_d
    invoke-virtual {v10}, Lcom/android/launcher3/util/LongArrayMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_e

    .line 1207
    new-instance v2, Lcom/android/launcher3/home/HomeLoader$5;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v2, v0, v4, v1, v10}, Lcom/android/launcher3/home/HomeLoader$5;-><init>(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;Lcom/android/launcher3/util/LongArrayMap;)V

    .line 1215
    .restart local v2    # "r":Ljava/lang/Runnable;
    if-eqz p2, :cond_f

    .line 1216
    monitor-enter p2

    .line 1217
    :try_start_6
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1218
    monitor-exit p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 1225
    .end local v2    # "r":Ljava/lang/Runnable;
    :cond_e
    :goto_7
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 1226
    const/4 v12, 0x0

    :goto_8
    if-ge v12, v9, :cond_0

    .line 1227
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    .line 1228
    .local v15, "widget":Lcom/android/launcher3/home/LauncherAppWidgetInfo;
    new-instance v2, Lcom/android/launcher3/home/HomeLoader$6;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v2, v0, v4, v1, v15}, Lcom/android/launcher3/home/HomeLoader$6;-><init>(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;Lcom/android/launcher3/home/LauncherAppWidgetInfo;)V

    .line 1236
    .restart local v2    # "r":Ljava/lang/Runnable;
    if-eqz p2, :cond_10

    .line 1237
    monitor-enter p2

    .line 1238
    :try_start_7
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1239
    monitor-exit p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 1226
    :goto_9
    add-int/lit8 v12, v12, 0x1

    goto :goto_8

    .line 1218
    .end local v15    # "widget":Lcom/android/launcher3/home/LauncherAppWidgetInfo;
    :catchall_3
    move-exception v3

    :try_start_8
    monitor-exit p2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v3

    .line 1220
    :cond_f
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/home/HomeLoader;->runOnMainThread(Ljava/lang/Runnable;)V

    goto :goto_7

    .line 1239
    .restart local v15    # "widget":Lcom/android/launcher3/home/LauncherAppWidgetInfo;
    :catchall_4
    move-exception v3

    :try_start_9
    monitor-exit p2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw v3

    .line 1241
    :cond_10
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/home/HomeLoader;->runOnMainThread(Ljava/lang/Runnable;)V

    goto :goto_9

    .line 1144
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method bindRemainingSynchronousPages()V
    .locals 6

    .prologue
    .line 2805
    iget-object v3, p0, Lcom/android/launcher3/home/HomeLoader;->mDeferredBindRunnables:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2806
    const/4 v1, 0x0

    .line 2807
    .local v1, "deferredBindRunnables":[Ljava/lang/Runnable;
    iget-object v4, p0, Lcom/android/launcher3/home/HomeLoader;->mDeferredBindRunnables:Ljava/util/ArrayList;

    monitor-enter v4

    .line 2808
    :try_start_0
    iget-object v3, p0, Lcom/android/launcher3/home/HomeLoader;->mDeferredBindRunnables:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/launcher3/home/HomeLoader;->mDeferredBindRunnables:Ljava/util/ArrayList;

    .line 2809
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/Runnable;

    .line 2808
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, [Ljava/lang/Runnable;

    move-object v1, v0

    .line 2810
    iget-object v3, p0, Lcom/android/launcher3/home/HomeLoader;->mDeferredBindRunnables:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 2811
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2812
    array-length v4, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v2, v1, v3

    .line 2813
    .local v2, "r":Ljava/lang/Runnable;
    sget-object v5, Lcom/android/launcher3/home/HomeLoader;->sHandler:Lcom/android/launcher3/common/model/DeferredHandler;

    invoke-virtual {v5, v2}, Lcom/android/launcher3/common/model/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 2812
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2811
    .end local v2    # "r":Ljava/lang/Runnable;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 2816
    .end local v1    # "deferredBindRunnables":[Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method checkDuplicatedSingleInstanceWidgetExist(Lcom/android/launcher3/common/base/item/PendingAddItemInfo;)Ljava/lang/String;
    .locals 5
    .param p1, "info"    # Lcom/android/launcher3/common/base/item/PendingAddItemInfo;

    .prologue
    const/4 v1, 0x0

    .line 3291
    iget-object v2, p0, Lcom/android/launcher3/home/HomeLoader;->mBgPagesItems:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/home/HomeLoader;->mBgPagesItems:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 3302
    :cond_0
    :goto_0
    return-object v1

    .line 3295
    :cond_1
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeLoader;->getWidgetsInHome()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    .line 3296
    .local v0, "item":Lcom/android/launcher3/home/LauncherAppWidgetInfo;
    iget-object v3, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3297
    iget-object v3, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    iget-object v4, p1, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 3298
    iget-object v1, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v1}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    goto :goto_0
.end method

.method clearPreservedPosition()V
    .locals 1

    .prologue
    .line 178
    new-instance v0, Lcom/android/launcher3/home/HomeLoader$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/home/HomeLoader$1;-><init>(Lcom/android/launcher3/home/HomeLoader;)V

    invoke-static {v0}, Lcom/android/launcher3/home/HomeLoader;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 184
    return-void
.end method

.method protected clearSBgDataStructures()V
    .locals 2

    .prologue
    .line 1454
    sget-object v1, Lcom/android/launcher3/home/HomeLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1455
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mBgPagesItems:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1456
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sBgFolders:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LongArrayMap;->clear()V

    .line 1457
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LongArrayMap;->clear()V

    .line 1458
    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mBgOrderedScreens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1459
    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mBgHotseatItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1460
    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->added:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1461
    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->modified:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1462
    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->removed:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1463
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1464
    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mNewPageIdsAfterGridChanged:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1465
    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mExtraItemsAfterGridChanged:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1466
    return-void

    .line 1463
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public containPagesItem(Lcom/android/launcher3/common/base/item/ItemInfo;)Z
    .locals 4
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    const/4 v1, 0x1

    .line 3059
    iget-object v2, p0, Lcom/android/launcher3/home/HomeLoader;->mBgHotseatItems:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3068
    :goto_0
    return v1

    .line 3062
    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/home/HomeLoader;->mBgPagesItems:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 3063
    .local v0, "pageItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 3068
    .end local v0    # "pageItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public createLoaderTask(Z)V
    .locals 3
    .param p1, "isStopped"    # Z

    .prologue
    .line 1262
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/HomeLoader;->setLoaderTaskStop(Z)V

    .line 1263
    const-string v0, "HomeLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createLoaderTask isStopped : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1264
    new-instance v0, Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;-><init>(Lcom/android/launcher3/home/HomeLoader;Z)V

    iput-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mPageLoaderTask:Lcom/android/launcher3/common/model/DataLoader$PageLoaderTask;

    .line 1265
    return-void
.end method

.method createShortcutItem(Landroid/database/Cursor;Lcom/android/launcher3/common/model/CursorInfo;Ljava/util/HashMap;Lcom/android/launcher3/util/LongArrayMap;)Lcom/android/launcher3/common/base/item/ItemInfo;
    .locals 42
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "cursorInfo"    # Lcom/android/launcher3/common/model/CursorInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Lcom/android/launcher3/common/model/CursorInfo;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<*>;>;",
            "Lcom/android/launcher3/util/LongArrayMap",
            "<[[",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;)",
            "Lcom/android/launcher3/common/base/item/ItemInfo;"
        }
    .end annotation

    .prologue
    .line 858
    .local p3, "needHandlingItems":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<*>;>;"
    .local p4, "occupied":Lcom/android/launcher3/util/LongArrayMap;, "Lcom/android/launcher3/util/LongArrayMap<[[Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/launcher3/common/model/CursorInfo;->intentIndex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 859
    .local v28, "intentDescription":Ljava/lang/String;
    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/launcher3/common/model/CursorInfo;->containerIndex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 860
    .local v20, "container":I
    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/launcher3/common/model/CursorInfo;->idIndex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    .line 861
    .local v24, "id":J
    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/launcher3/common/model/CursorInfo;->profileIdIndex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v0, v4

    move-wide/from16 v36, v0

    .line 863
    .local v36, "serialNumber":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/HomeLoader;->mAllUsers:Landroid/util/LongSparseArray;

    move-wide/from16 v0, v36

    invoke-virtual {v4, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/launcher3/common/compat/UserHandleCompat;

    .line 865
    .local v17, "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/launcher3/common/model/CursorInfo;->restoredIndex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v32

    .line 866
    .local v32, "promiseType":I
    if-eqz v32, :cond_0

    const/16 v33, 0x1

    .line 867
    .local v33, "restored":Z
    :goto_0
    const/16 v19, 0x0

    .line 869
    .local v19, "allowMissingTarget":Z
    const/16 v21, 0x0

    .line 871
    .local v21, "disabledState":I
    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/launcher3/common/model/CursorInfo;->itemTypeIndex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    .line 873
    .local v29, "itemType":I
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/util/ArrayList;

    .line 874
    .local v30, "itemsToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/util/ArrayList;

    .line 876
    .local v34, "restoredRows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    if-nez v17, :cond_1

    .line 878
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 879
    const/16 v35, 0x0

    move/from16 v11, v19

    .line 1093
    .end local v19    # "allowMissingTarget":Z
    .local v11, "allowMissingTarget":Z
    :goto_1
    return-object v35

    .line 866
    .end local v11    # "allowMissingTarget":Z
    .end local v21    # "disabledState":I
    .end local v29    # "itemType":I
    .end local v30    # "itemsToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v33    # "restored":Z
    .end local v34    # "restoredRows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_0
    const/16 v33, 0x0

    goto :goto_0

    .line 882
    .restart local v19    # "allowMissingTarget":Z
    .restart local v21    # "disabledState":I
    .restart local v29    # "itemType":I
    .restart local v30    # "itemsToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v33    # "restored":Z
    .restart local v34    # "restoredRows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_1
    const/16 v35, 0x0

    .line 885
    .local v35, "returnItem":Lcom/android/launcher3/common/base/item/ItemInfo;
    if-nez v29, :cond_6

    .line 886
    const/4 v4, 0x0

    :try_start_0
    move-object/from16 v0, v28

    invoke-static {v0, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v7

    .local v7, "intent":Landroid/content/Intent;
    move-object/from16 v27, v7

    .line 890
    .end local v7    # "intent":Landroid/content/Intent;
    .local v27, "intent":Landroid/content/Intent;
    :goto_2
    invoke-virtual/range {v27 .. v27}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v18

    .line 891
    .local v18, "cn":Landroid/content/ComponentName;
    if-eqz v18, :cond_17

    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_17

    .line 892
    sget-object v4, Lcom/android/launcher3/home/HomeLoader;->sLauncherApps:Lcom/android/launcher3/common/compat/LauncherAppsCompat;

    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v4, v5, v0}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->isPackageEnabledForProfile(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Z

    move-result v39

    .line 893
    .local v39, "validPkg":Z
    if-eqz v39, :cond_7

    sget-object v4, Lcom/android/launcher3/home/HomeLoader;->sLauncherApps:Lcom/android/launcher3/common/compat/LauncherAppsCompat;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->isActivityEnabledForProfile(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/16 v38, 0x1

    .line 894
    .local v38, "validComponent":Z
    :goto_3
    if-eqz v38, :cond_a

    .line 895
    if-eqz v33, :cond_3

    .line 896
    and-int/lit8 v4, v32, 0x20

    if-eqz v4, :cond_8

    .line 897
    new-instance v41, Landroid/content/ContentValues;

    invoke-direct/range {v41 .. v41}, Landroid/content/ContentValues;-><init>()V

    .line 898
    .local v41, "values":Landroid/content/ContentValues;
    const-string v4, "title"

    const-string v5, ""

    move-object/from16 v0, v41

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 899
    const-string v5, "icon"

    const/4 v4, 0x0

    check-cast v4, [B

    move-object/from16 v0, v41

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 900
    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    move-object/from16 v3, v41

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/home/HomeLoader;->updateItem(JLandroid/content/ContentValues;)V

    .line 916
    .end local v41    # "values":Landroid/content/ContentValues;
    :cond_2
    :goto_4
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 917
    const/16 v33, 0x0

    .line 919
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/HomeLoader;->mQuietModeUsers:Landroid/util/LongSparseArray;

    move-wide/from16 v0, v36

    invoke-virtual {v4, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_24

    .line 920
    const/16 v21, 0x8

    move/from16 v11, v19

    .end local v19    # "allowMissingTarget":Z
    .restart local v11    # "allowMissingTarget":Z
    move-object/from16 v7, v27

    .line 1005
    .end local v27    # "intent":Landroid/content/Intent;
    .end local v38    # "validComponent":Z
    .end local v39    # "validPkg":Z
    .restart local v7    # "intent":Landroid/content/Intent;
    :goto_5
    if-ltz v20, :cond_18

    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/launcher3/common/model/CursorInfo;->rankIndex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/16 v5, 0x9

    if-lt v4, v5, :cond_18

    const/4 v12, 0x1

    .line 1006
    .local v12, "useLowResIcon":Z
    :goto_6
    if-eqz v33, :cond_1a

    .line 1007
    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/android/launcher3/common/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 1008
    const-string v4, "HomeLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "constructing info for restored package promiseType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/android/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, v18

    move/from16 v8, v32

    move-object/from16 v9, p2

    .line 1009
    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher3/home/HomeLoader;->getRestoredItemInfo(Landroid/database/Cursor;Landroid/content/ComponentName;Landroid/content/Intent;ILcom/android/launcher3/common/model/CursorInfo;)Lcom/android/launcher3/common/base/item/IconInfo;

    move-result-object v26

    .line 1010
    .local v26, "info":Lcom/android/launcher3/common/base/item/IconInfo;
    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v7, v1}, Lcom/android/launcher3/home/HomeLoader;->getRestoredItemIntent(Landroid/content/Intent;I)Landroid/content/Intent;

    move-result-object v7

    .line 1022
    :goto_7
    if-eqz v26, :cond_23

    .line 1023
    move-wide/from16 v0, v24

    move-object/from16 v2, v26

    iput-wide v0, v2, Lcom/android/launcher3/common/base/item/IconInfo;->id:J

    .line 1024
    move-object/from16 v0, v26

    iput-object v7, v0, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    .line 1025
    move/from16 v0, v20

    int-to-long v4, v0

    move-object/from16 v0, v26

    iput-wide v4, v0, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    .line 1026
    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/launcher3/common/model/CursorInfo;->screenIndex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v4, v4

    move-object/from16 v0, v26

    iput-wide v4, v0, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    .line 1027
    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/launcher3/common/model/CursorInfo;->cellXIndex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v26

    iput v4, v0, Lcom/android/launcher3/common/base/item/IconInfo;->cellX:I

    .line 1028
    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/launcher3/common/model/CursorInfo;->cellYIndex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v26

    iput v4, v0, Lcom/android/launcher3/common/base/item/IconInfo;->cellY:I

    .line 1029
    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/launcher3/common/model/CursorInfo;->rankIndex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v26

    iput v4, v0, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    .line 1030
    const/4 v4, 0x1

    move-object/from16 v0, v26

    iput v4, v0, Lcom/android/launcher3/common/base/item/IconInfo;->spanX:I

    .line 1031
    const/4 v4, 0x1

    move-object/from16 v0, v26

    iput v4, v0, Lcom/android/launcher3/common/base/item/IconInfo;->spanY:I

    .line 1032
    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/launcher3/common/model/CursorInfo;->hiddenIndex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v26

    iput v4, v0, Lcom/android/launcher3/common/base/item/IconInfo;->hidden:I

    .line 1034
    move-object/from16 v0, v26

    iget v4, v0, Lcom/android/launcher3/common/base/item/IconInfo;->itemType:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_4

    .line 1035
    move-object/from16 v0, v26

    iget-object v4, v0, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    const-string v5, "profile"

    move-wide/from16 v0, v36

    invoke-virtual {v4, v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1036
    move-object/from16 v0, v26

    iget-object v4, v0, Lcom/android/launcher3/common/base/item/IconInfo;->promisedIntent:Landroid/content/Intent;

    if-eqz v4, :cond_4

    .line 1037
    move-object/from16 v0, v26

    iget-object v4, v0, Lcom/android/launcher3/common/base/item/IconInfo;->promisedIntent:Landroid/content/Intent;

    const-string v5, "profile"

    move-wide/from16 v0, v36

    invoke-virtual {v4, v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1040
    :cond_4
    move-object/from16 v0, v26

    iget v4, v0, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    or-int v4, v4, v21

    move-object/from16 v0, v26

    iput v4, v0, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    .line 1041
    sget-boolean v4, Lcom/android/launcher3/home/HomeLoader;->sIsSafeMode:Z

    if-eqz v4, :cond_5

    sget-object v4, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    invoke-static {v4, v7}, Lcom/android/launcher3/Utilities;->isSystemApp(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 1042
    move-object/from16 v0, v26

    iget v4, v0, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    or-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v26

    iput v4, v0, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    .line 1046
    :cond_5
    move-object/from16 v0, v26

    iget v4, v0, Lcom/android/launcher3/common/base/item/IconInfo;->hidden:I

    if-nez v4, :cond_1d

    move-object/from16 v0, v26

    iget-wide v4, v0, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    const-wide/16 v8, -0x65

    cmp-long v4, v4, v8

    if-nez v4, :cond_1c

    const-wide/16 v4, 0x1

    .line 1047
    :goto_8
    move-object/from16 v0, p4

    invoke-virtual {v0, v4, v5}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[Lcom/android/launcher3/common/base/item/ItemInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, p3

    invoke-direct {v0, v4, v1, v2}, Lcom/android/launcher3/home/HomeLoader;->checkItemPlacement([[Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/common/base/item/ItemInfo;Ljava/util/HashMap;)Z

    move-result v4

    if-nez v4, :cond_1d

    .line 1049
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1050
    const/16 v35, 0x0

    goto/16 :goto_1

    .line 888
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v11    # "allowMissingTarget":Z
    .end local v12    # "useLowResIcon":Z
    .end local v18    # "cn":Landroid/content/ComponentName;
    .end local v26    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    .restart local v19    # "allowMissingTarget":Z
    :cond_6
    const/4 v4, 0x4

    :try_start_1
    move-object/from16 v0, v28

    invoke-static {v0, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v7

    .restart local v7    # "intent":Landroid/content/Intent;
    move-object/from16 v27, v7

    .end local v7    # "intent":Landroid/content/Intent;
    .restart local v27    # "intent":Landroid/content/Intent;
    goto/16 :goto_2

    .line 893
    .restart local v18    # "cn":Landroid/content/ComponentName;
    .restart local v39    # "validPkg":Z
    :cond_7
    const/16 v38, 0x0

    goto/16 :goto_3

    .line 901
    .restart local v38    # "validComponent":Z
    :cond_8
    and-int/lit8 v4, v32, 0x4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    move/from16 v0, v29

    if-ne v0, v4, :cond_2

    .line 903
    invoke-static/range {v27 .. v27}, Lcom/android/launcher3/Utilities;->isLauncherAppTarget(Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 904
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 905
    const-string v4, "HomeLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createShortcutItem : this shortcut(restored) is app shortcut. so remove "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v24

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 907
    const/16 v35, 0x0

    .end local v35    # "returnItem":Lcom/android/launcher3/common/base/item/ItemInfo;
    move/from16 v11, v19

    .end local v19    # "allowMissingTarget":Z
    .restart local v11    # "allowMissingTarget":Z
    goto/16 :goto_1

    .line 909
    .end local v11    # "allowMissingTarget":Z
    .restart local v19    # "allowMissingTarget":Z
    .restart local v35    # "returnItem":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_9
    const-string v4, "HomeLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createShortcutItem : this shortcut(restored) is app shortcut. change item type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v24

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    new-instance v41, Landroid/content/ContentValues;

    invoke-direct/range {v41 .. v41}, Landroid/content/ContentValues;-><init>()V

    .line 911
    .restart local v41    # "values":Landroid/content/ContentValues;
    const-string v4, "itemType"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v41

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 912
    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    move-object/from16 v3, v41

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/home/HomeLoader;->updateItem(JLandroid/content/ContentValues;)V

    .line 913
    const/16 v29, 0x0

    goto/16 :goto_4

    .line 922
    .end local v41    # "values":Landroid/content/ContentValues;
    :cond_a
    if-eqz v39, :cond_10

    .line 923
    const/16 v40, 0x0

    .line 924
    .local v40, "validPkgIntent":Landroid/content/Intent;
    and-int/lit8 v4, v32, 0x2

    if-nez v4, :cond_b

    and-int/lit8 v4, v32, 0x20

    if-eqz v4, :cond_c

    .line 927
    :cond_b
    sget-object v4, Lcom/android/launcher3/home/HomeLoader;->sPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v40

    .line 928
    if-eqz v40, :cond_c

    .line 929
    new-instance v41, Landroid/content/ContentValues;

    invoke-direct/range {v41 .. v41}, Landroid/content/ContentValues;-><init>()V

    .line 930
    .restart local v41    # "values":Landroid/content/ContentValues;
    const-string v4, "intent"

    const/4 v5, 0x0

    move-object/from16 v0, v40

    invoke-virtual {v0, v5}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v41

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 931
    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    move-object/from16 v3, v41

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/home/HomeLoader;->updateItem(JLandroid/content/ContentValues;)V

    .line 935
    .end local v41    # "values":Landroid/content/ContentValues;
    :cond_c
    if-nez v40, :cond_e

    .line 937
    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    move/from16 v0, v20

    int-to-long v6, v0

    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/launcher3/common/model/CursorInfo;->screenIndex:I

    .line 938
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v8, v4

    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/launcher3/common/model/CursorInfo;->cellXIndex:I

    .line 939
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/launcher3/common/model/CursorInfo;->cellYIndex:I

    .line 940
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    move-object/from16 v4, p0

    .line 937
    invoke-virtual/range {v4 .. v11}, Lcom/android/launcher3/home/HomeLoader;->backupStkPositionIfNecessary(Ljava/lang/String;JJII)V

    .line 942
    and-int/lit8 v4, v32, 0x20

    if-eqz v4, :cond_d

    .line 943
    const-string v4, "HomeLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "package not yet restored (validPkg): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/android/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v7, v27

    .end local v27    # "intent":Landroid/content/Intent;
    .restart local v7    # "intent":Landroid/content/Intent;
    :goto_9
    move/from16 v11, v19

    .line 960
    .end local v19    # "allowMissingTarget":Z
    .restart local v11    # "allowMissingTarget":Z
    goto/16 :goto_5

    .line 945
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v11    # "allowMissingTarget":Z
    .restart local v19    # "allowMissingTarget":Z
    .restart local v27    # "intent":Landroid/content/Intent;
    :cond_d
    const-string v4, "HomeLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid intent removed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/android/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 946
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 947
    const/16 v35, 0x0

    .end local v35    # "returnItem":Lcom/android/launcher3/common/base/item/ItemInfo;
    move/from16 v11, v19

    .end local v19    # "allowMissingTarget":Z
    .restart local v11    # "allowMissingTarget":Z
    goto/16 :goto_1

    .line 950
    .end local v11    # "allowMissingTarget":Z
    .restart local v19    # "allowMissingTarget":Z
    .restart local v35    # "returnItem":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_e
    move-object/from16 v7, v40

    .line 951
    .end local v27    # "intent":Landroid/content/Intent;
    .restart local v7    # "intent":Landroid/content/Intent;
    and-int/lit8 v4, v32, 0x20

    if-eqz v4, :cond_f

    .line 952
    new-instance v41, Landroid/content/ContentValues;

    invoke-direct/range {v41 .. v41}, Landroid/content/ContentValues;-><init>()V

    .line 953
    .restart local v41    # "values":Landroid/content/ContentValues;
    const-string v4, "title"

    const-string v5, ""

    move-object/from16 v0, v41

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 954
    const-string v5, "icon"

    const/4 v4, 0x0

    check-cast v4, [B

    move-object/from16 v0, v41

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 955
    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    move-object/from16 v3, v41

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/home/HomeLoader;->updateItem(JLandroid/content/ContentValues;)V

    .line 957
    .end local v41    # "values":Landroid/content/ContentValues;
    :cond_f
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 958
    const/16 v33, 0x0

    goto :goto_9

    .line 960
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v40    # "validPkgIntent":Landroid/content/Intent;
    .restart local v27    # "intent":Landroid/content/Intent;
    :cond_10
    if-eqz v33, :cond_13

    .line 962
    const-string v4, "HomeLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "package not yet restored: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/android/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 964
    and-int/lit8 v4, v32, 0x2

    if-nez v4, :cond_11

    and-int/lit8 v4, v32, 0x1

    if-eqz v4, :cond_24

    .line 966
    :cond_11
    sget-object v4, Lcom/android/launcher3/home/HomeLoader;->sInstallingPkgs:Ljava/util/HashMap;

    if-eqz v4, :cond_12

    sget-object v4, Lcom/android/launcher3/home/HomeLoader;->sInstallingPkgs:Ljava/util/HashMap;

    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_24

    .line 967
    :cond_12
    const-string v4, "HomeLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UnRestored package removed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/android/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 968
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 969
    const/16 v35, 0x0

    .end local v35    # "returnItem":Lcom/android/launcher3/common/base/item/ItemInfo;
    move/from16 v11, v19

    .end local v19    # "allowMissingTarget":Z
    .restart local v11    # "allowMissingTarget":Z
    goto/16 :goto_1

    .line 972
    .end local v11    # "allowMissingTarget":Z
    .restart local v19    # "allowMissingTarget":Z
    .restart local v35    # "returnItem":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_13
    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x2000

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/launcher3/home/HomeLoader;->isNotAvailableApps(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 974
    const/4 v11, 0x1

    .line 975
    .end local v19    # "allowMissingTarget":Z
    .restart local v11    # "allowMissingTarget":Z
    const/16 v21, 0x2

    move-object/from16 v7, v27

    .end local v27    # "intent":Landroid/content/Intent;
    .restart local v7    # "intent":Landroid/content/Intent;
    goto/16 :goto_5

    .line 976
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v11    # "allowMissingTarget":Z
    .restart local v19    # "allowMissingTarget":Z
    .restart local v27    # "intent":Landroid/content/Intent;
    :cond_14
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/launcher3/home/HomeLoader;->mIsSdCardReady:Z

    if-nez v4, :cond_15

    .line 979
    const-string v4, "HomeLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid package: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " (check again later)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/android/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 980
    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v4, v1}, Lcom/android/launcher3/home/HomeLoader;->addAppToPendingPackages(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    .line 981
    const/4 v11, 0x1

    .end local v19    # "allowMissingTarget":Z
    .restart local v11    # "allowMissingTarget":Z
    move-object/from16 v7, v27

    .end local v27    # "intent":Landroid/content/Intent;
    .restart local v7    # "intent":Landroid/content/Intent;
    goto/16 :goto_5

    .line 983
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v11    # "allowMissingTarget":Z
    .restart local v19    # "allowMissingTarget":Z
    .restart local v27    # "intent":Landroid/content/Intent;
    :cond_15
    sget-object v4, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/launcher3/util/DualAppUtils;->supportDualApp(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_16

    const/4 v4, 0x1

    move/from16 v0, v29

    if-ne v0, v4, :cond_16

    const-string v4, "com.samsung.android.da.daagent"

    .line 985
    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 986
    const-string v4, "HomeLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Dual app shortcut : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v11, v19

    .end local v19    # "allowMissingTarget":Z
    .restart local v11    # "allowMissingTarget":Z
    move-object/from16 v7, v27

    .end local v27    # "intent":Landroid/content/Intent;
    .restart local v7    # "intent":Landroid/content/Intent;
    goto/16 :goto_5

    .line 990
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v11    # "allowMissingTarget":Z
    .restart local v19    # "allowMissingTarget":Z
    .restart local v27    # "intent":Landroid/content/Intent;
    :cond_16
    const-string v4, "HomeLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid package removed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/android/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 991
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 992
    const/16 v35, 0x0

    .end local v35    # "returnItem":Lcom/android/launcher3/common/base/item/ItemInfo;
    move/from16 v11, v19

    .end local v19    # "allowMissingTarget":Z
    .restart local v11    # "allowMissingTarget":Z
    goto/16 :goto_1

    .line 994
    .end local v11    # "allowMissingTarget":Z
    .end local v38    # "validComponent":Z
    .end local v39    # "validPkg":Z
    .restart local v19    # "allowMissingTarget":Z
    .restart local v35    # "returnItem":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_17
    if-nez v18, :cond_24

    .line 996
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    .line 997
    const/16 v33, 0x0

    move/from16 v11, v19

    .end local v19    # "allowMissingTarget":Z
    .restart local v11    # "allowMissingTarget":Z
    move-object/from16 v7, v27

    .end local v27    # "intent":Landroid/content/Intent;
    .restart local v7    # "intent":Landroid/content/Intent;
    goto/16 :goto_5

    .line 999
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v11    # "allowMissingTarget":Z
    .end local v18    # "cn":Landroid/content/ComponentName;
    .restart local v19    # "allowMissingTarget":Z
    :catch_0
    move-exception v22

    .line 1000
    .local v22, "e":Ljava/net/URISyntaxException;
    const-string v4, "HomeLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid uri: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/android/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1001
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1002
    const/16 v35, 0x0

    move/from16 v11, v19

    .end local v19    # "allowMissingTarget":Z
    .restart local v11    # "allowMissingTarget":Z
    goto/16 :goto_1

    .line 1005
    .end local v22    # "e":Ljava/net/URISyntaxException;
    .restart local v7    # "intent":Landroid/content/Intent;
    .restart local v18    # "cn":Landroid/content/ComponentName;
    :cond_18
    const/4 v12, 0x0

    goto/16 :goto_6

    .line 1013
    .restart local v12    # "useLowResIcon":Z
    :cond_19
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1014
    const/16 v35, 0x0

    goto/16 :goto_1

    .line 1016
    :cond_1a
    if-nez v29, :cond_1b

    move-object/from16 v6, p0

    move-object/from16 v8, v17

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    .line 1017
    invoke-direct/range {v6 .. v12}, Lcom/android/launcher3/home/HomeLoader;->getAppShortcutInfo(Landroid/content/Intent;Lcom/android/launcher3/common/compat/UserHandleCompat;Landroid/database/Cursor;Lcom/android/launcher3/common/model/CursorInfo;ZZ)Lcom/android/launcher3/common/base/item/IconInfo;

    move-result-object v26

    .restart local v26    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    goto/16 :goto_7

    .end local v26    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_1b
    move-object/from16 v13, p0

    move-object v14, v7

    move-object/from16 v15, p1

    move-object/from16 v16, p2

    .line 1019
    invoke-direct/range {v13 .. v18}, Lcom/android/launcher3/home/HomeLoader;->getShortcutInfo(Landroid/content/Intent;Landroid/database/Cursor;Lcom/android/launcher3/common/model/CursorInfo;Lcom/android/launcher3/common/compat/UserHandleCompat;Landroid/content/ComponentName;)Lcom/android/launcher3/common/base/item/IconInfo;

    move-result-object v26

    .restart local v26    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    goto/16 :goto_7

    .line 1046
    :cond_1c
    const-wide/16 v4, 0x0

    goto/16 :goto_8

    .line 1053
    :cond_1d
    if-eqz v7, :cond_1e

    .line 1054
    invoke-virtual/range {v26 .. v26}, Lcom/android/launcher3/common/base/item/IconInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v18

    .line 1055
    if-eqz v18, :cond_1e

    .line 1056
    sget-object v4, Lcom/android/launcher3/home/HomeLoader;->sBadgeCache:Lcom/android/launcher3/common/model/BadgeCache;

    new-instance v5, Lcom/android/launcher3/common/model/BadgeCache$CacheKey;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-direct {v5, v0, v1}, Lcom/android/launcher3/common/model/BadgeCache$CacheKey;-><init>(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    invoke-virtual {v4, v5}, Lcom/android/launcher3/common/model/BadgeCache;->getBadgeCount(Lcom/android/launcher3/common/model/BadgeCache$CacheKey;)I

    move-result v4

    move-object/from16 v0, v26

    iput v4, v0, Lcom/android/launcher3/common/base/item/IconInfo;->mBadgeCount:I

    .line 1060
    :cond_1e
    if-eqz v33, :cond_1f

    .line 1061
    invoke-virtual/range {v26 .. v26}, Lcom/android/launcher3/common/base/item/IconInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v18

    .line 1062
    if-eqz v18, :cond_1f

    .line 1063
    sget-object v4, Lcom/android/launcher3/home/HomeLoader;->sInstallingPkgs:Ljava/util/HashMap;

    if-nez v4, :cond_21

    const/16 v31, 0x0

    .line 1064
    .local v31, "progress":Ljava/lang/Integer;
    :goto_a
    if-eqz v31, :cond_22

    .line 1065
    invoke-virtual/range {v31 .. v31}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Lcom/android/launcher3/common/base/item/IconInfo;->setInstallProgress(I)V

    .line 1072
    .end local v31    # "progress":Ljava/lang/Integer;
    :cond_1f
    :goto_b
    packed-switch v20, :pswitch_data_0

    .line 1081
    sget-object v5, Lcom/android/launcher3/home/HomeLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1082
    :try_start_2
    sget-object v4, Lcom/android/launcher3/home/HomeLoader;->sBgFolders:Lcom/android/launcher3/util/LongArrayMap;

    move/from16 v0, v20

    int-to-long v8, v0

    invoke-virtual {v4, v8, v9}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/launcher3/folder/FolderInfo;

    .line 1083
    .local v23, "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1084
    if-eqz v23, :cond_20

    .line 1085
    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/FolderInfo;->add(Lcom/android/launcher3/common/base/item/IconInfo;)V

    .line 1089
    .end local v23    # "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    :cond_20
    :goto_c
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/HomeLoader;->putItemToIdMap(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto/16 :goto_1

    .line 1063
    :cond_21
    sget-object v4, Lcom/android/launcher3/home/HomeLoader;->sInstallingPkgs:Ljava/util/HashMap;

    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    move-object/from16 v31, v4

    goto :goto_a

    .line 1067
    .restart local v31    # "progress":Ljava/lang/Integer;
    :cond_22
    move-object/from16 v0, v26

    iget v4, v0, Lcom/android/launcher3/common/base/item/IconInfo;->status:I

    and-int/lit8 v4, v4, -0x9

    move-object/from16 v0, v26

    iput v4, v0, Lcom/android/launcher3/common/base/item/IconInfo;->status:I

    goto :goto_b

    .line 1075
    .end local v31    # "progress":Ljava/lang/Integer;
    :pswitch_0
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/HomeLoader;->addPagesItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 1076
    move-object/from16 v35, v26

    .line 1077
    goto :goto_c

    .line 1083
    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    .line 1091
    :cond_23
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Unexpected null IconInfo"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .end local v7    # "intent":Landroid/content/Intent;
    .end local v11    # "allowMissingTarget":Z
    .end local v12    # "useLowResIcon":Z
    .end local v26    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    .restart local v19    # "allowMissingTarget":Z
    .restart local v27    # "intent":Landroid/content/Intent;
    :cond_24
    move/from16 v11, v19

    .end local v19    # "allowMissingTarget":Z
    .restart local v11    # "allowMissingTarget":Z
    move-object/from16 v7, v27

    .end local v27    # "intent":Landroid/content/Intent;
    .restart local v7    # "intent":Landroid/content/Intent;
    goto/16 :goto_5

    .line 1072
    :pswitch_data_0
    .packed-switch -0x65
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public dumpState()V
    .locals 4

    .prologue
    .line 2308
    sget-object v1, Lcom/android/launcher3/home/HomeLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2309
    :try_start_0
    const-string v0, "HomeLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HomeLoader.mContext="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2310
    const-string v2, "HomeLoader"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Home PageLoaderTask.mStopped="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mPageLoaderTask:Lcom/android/launcher3/common/model/DataLoader$PageLoaderTask;

    if-nez v0, :cond_0

    const-string v0, "task null "

    .line 2311
    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2310
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2312
    const-string v0, "HomeLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HotSeat Items size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/home/HomeLoader;->mBgHotseatItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2313
    const-string v0, "HomeLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Workspace Items size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/home/HomeLoader;->mBgPagesItems:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2314
    monitor-exit v1

    .line 2315
    return-void

    .line 2310
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mPageLoaderTask:Lcom/android/launcher3/common/model/DataLoader$PageLoaderTask;

    check-cast v0, Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;

    .line 2311
    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;->isStopped()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 2314
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public filterCurrentPageItems(JLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 13
    .param p1, "currentScreenId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;",
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
    .line 2763
    .local p3, "allWorkspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .local p4, "currentScreenItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .local p5, "otherScreenItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 2764
    .local v5, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2765
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 2766
    .local v2, "i":Lcom/android/launcher3/common/base/item/ItemInfo;
    if-nez v2, :cond_0

    .line 2767
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 2774
    .end local v2    # "i":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_1
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 2775
    .local v4, "itemsOnScreen":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    new-instance v6, Lcom/android/launcher3/home/HomeLoader$30;

    invoke-direct {v6, p0}, Lcom/android/launcher3/home/HomeLoader$30;-><init>(Lcom/android/launcher3/home/HomeLoader;)V

    move-object/from16 v0, p3

    invoke-static {v0, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2781
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 2782
    .local v3, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-wide v8, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v10, -0x64

    cmp-long v7, v8, v10

    if-nez v7, :cond_3

    .line 2783
    iget-wide v8, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    cmp-long v7, v8, p1

    if-nez v7, :cond_2

    .line 2784
    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2785
    iget-wide v8, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2787
    :cond_2
    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2789
    :cond_3
    iget-wide v8, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v10, -0x65

    cmp-long v7, v8, v10

    if-nez v7, :cond_4

    .line 2790
    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2791
    iget-wide v8, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2793
    :cond_4
    iget-wide v8, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 2794
    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2795
    iget-wide v8, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2797
    :cond_5
    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2801
    .end local v3    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_6
    return-void
.end method

.method findFolderById(Ljava/lang/Long;)Lcom/android/launcher3/folder/FolderInfo;
    .locals 4
    .param p1, "folderId"    # Ljava/lang/Long;

    .prologue
    .line 2302
    sget-object v1, Lcom/android/launcher3/home/HomeLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2303
    :try_start_0
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sBgFolders:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/folder/FolderInfo;

    monitor-exit v1

    return-object v0

    .line 2304
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAllAppItemInHome()Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const-wide/16 v10, -0x64

    const-wide/16 v8, -0x65

    .line 3362
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3363
    .local v0, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3364
    .local v1, "folderIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    sget-object v5, Lcom/android/launcher3/home/HomeLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v5

    .line 3365
    :try_start_0
    sget-object v4, Lcom/android/launcher3/home/HomeLoader;->sBgFolders:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v4}, Lcom/android/launcher3/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/folder/FolderInfo;

    .line 3366
    .local v2, "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    iget-wide v6, v2, Lcom/android/launcher3/folder/FolderInfo;->container:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_1

    iget-wide v6, v2, Lcom/android/launcher3/folder/FolderInfo;->container:J

    cmp-long v6, v6, v10

    if-nez v6, :cond_0

    .line 3368
    :cond_1
    iget-wide v6, v2, Lcom/android/launcher3/folder/FolderInfo;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3384
    .end local v2    # "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 3371
    :cond_2
    :try_start_1
    sget-object v4, Lcom/android/launcher3/home/HomeLoader;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v4}, Lcom/android/launcher3/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 3372
    .local v3, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget v6, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    if-nez v6, :cond_4

    iget-wide v6, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_5

    iget-wide v6, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    cmp-long v6, v6, v10

    if-eqz v6, :cond_5

    :cond_4
    iget-wide v6, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    .line 3375
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3376
    :cond_5
    iget-object v6, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    if-nez v6, :cond_6

    .line 3377
    invoke-virtual {v3}, Lcom/android/launcher3/common/base/item/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    iput-object v6, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    .line 3378
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3380
    :cond_6
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3384
    .end local v3    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_7
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3385
    return-object v0
.end method

.method public getAppsButton()Lcom/android/launcher3/common/base/item/IconInfo;
    .locals 5

    .prologue
    .line 3784
    sget-object v3, Lcom/android/launcher3/home/HomeLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v3

    .line 3785
    :try_start_0
    iget-object v2, p0, Lcom/android/launcher3/home/HomeLoader;->mBgHotseatItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 3786
    .local v1, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    instance-of v2, v1, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v2, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    move-object v2, v0

    iget-boolean v2, v2, Lcom/android/launcher3/common/base/item/IconInfo;->isAppsButton:Z

    if-eqz v2, :cond_0

    .line 3787
    check-cast v1, Lcom/android/launcher3/common/base/item/IconInfo;

    .end local v1    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    monitor-exit v3

    .line 3791
    :goto_0
    return-object v1

    .line 3790
    :cond_1
    monitor-exit v3

    .line 3791
    const/4 v1, 0x0

    goto :goto_0

    .line 3790
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method getHotseatCountFromDb()I
    .locals 1

    .prologue
    .line 2939
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    invoke-virtual {v0}, Lcom/android/launcher3/common/model/FavoritesProvider;->loadHotseatCount()I

    move-result v0

    return v0
.end method

.method public getIgnorePackage(Ljava/util/HashSet;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1815
    .local p1, "packagesToIgnore":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    sget-object v5, Lcom/android/launcher3/home/HomeLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1816
    :try_start_0
    sget-object v4, Lcom/android/launcher3/home/HomeLoader;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v4}, Lcom/android/launcher3/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 1817
    .local v1, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    instance-of v6, v1, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v6, :cond_1

    .line 1818
    move-object v0, v1

    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    move-object v3, v0

    .line 1819
    .local v3, "si":Lcom/android/launcher3/common/base/item/IconInfo;
    invoke-virtual {v3}, Lcom/android/launcher3/common/base/item/IconInfo;->isPromise()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v3}, Lcom/android/launcher3/common/base/item/IconInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 1820
    invoke-virtual {v3}, Lcom/android/launcher3/common/base/item/IconInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1829
    .end local v1    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v3    # "si":Lcom/android/launcher3/common/base/item/IconInfo;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 1822
    .restart local v1    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_1
    :try_start_1
    instance-of v6, v1, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    if-eqz v6, :cond_0

    .line 1823
    move-object v0, v1

    check-cast v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    move-object v2, v0

    .line 1824
    .local v2, "lawi":Lcom/android/launcher3/home/LauncherAppWidgetInfo;
    const/4 v6, 0x2

    invoke-virtual {v2, v6}, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1825
    iget-object v6, v2, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1829
    .end local v1    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v2    # "lawi":Lcom/android/launcher3/home/LauncherAppWidgetInfo;
    :cond_2
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1830
    return-void
.end method

.method getItemById(J)Lcom/android/launcher3/common/base/item/ItemInfo;
    .locals 3
    .param p1, "key"    # J

    .prologue
    .line 2661
    sget-object v1, Lcom/android/launcher3/home/HomeLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2662
    :try_start_0
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    monitor-exit v1

    return-object v0

    .line 2663
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getItemPositionHelper()Lcom/android/launcher3/home/HomeItemPositionHelper;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mItemPositionHelper:Lcom/android/launcher3/home/HomeItemPositionHelper;

    return-object v0
.end method

.method getItemsForDexSync()Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const-wide/16 v10, -0x66

    .line 3389
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3390
    .local v0, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    sget-object v4, Lcom/android/launcher3/home/HomeLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v4

    .line 3391
    :try_start_0
    sget-object v3, Lcom/android/launcher3/home/HomeLoader;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v3}, Lcom/android/launcher3/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 3392
    .local v2, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-wide v6, v2, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_1

    .line 3394
    iget-wide v6, v2, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-virtual {p0, v6, v7}, Lcom/android/launcher3/home/HomeLoader;->getItemById(J)Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v1

    .line 3395
    .local v1, "folder":Lcom/android/launcher3/common/base/item/ItemInfo;
    if-eqz v1, :cond_0

    iget-wide v6, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    cmp-long v5, v6, v10

    if-eqz v5, :cond_0

    .line 3396
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3405
    .end local v1    # "folder":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v2    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 3399
    .restart local v2    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_1
    :try_start_1
    iget-wide v6, v2, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    cmp-long v5, v6, v10

    if-eqz v5, :cond_0

    iget v5, v2, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    const/4 v6, 0x4

    if-eq v5, v6, :cond_0

    .line 3401
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3405
    .end local v2    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_2
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3406
    return-object v0
.end method

.method protected getUpdater()Lcom/android/launcher3/common/model/DataUpdater;
    .locals 1

    .prologue
    .line 2918
    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    return-object v0
.end method

.method getUser(J)Lcom/android/launcher3/common/compat/UserHandleCompat;
    .locals 1
    .param p1, "serialNumber"    # J

    .prologue
    .line 3829
    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mAllUsers:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/compat/UserHandleCompat;

    return-object v0
.end method

.method getWorkspaceScreenCount()I
    .locals 2

    .prologue
    .line 2922
    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mBgOrderedScreens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 2923
    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mBgOrderedScreens:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/launcher3/home/HomeLoader;->sFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    invoke-virtual {v1}, Lcom/android/launcher3/common/model/FavoritesProvider;->loadScreensFromDb()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2926
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mBgOrderedScreens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method getWorkspaceScreenId(I)J
    .locals 2
    .param p1, "rank"    # I

    .prologue
    .line 2930
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeLoader;->getWorkspaceScreenCount()I

    move-result v0

    if-ge v0, p1, :cond_0

    .line 2931
    const-string v0, "HomeLoader"

    const-string v1, "wrong rank value for screen requested"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2932
    const-wide/16 v0, -0x1

    .line 2935
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mBgOrderedScreens:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0
.end method

.method public hideApps(Ljava/util/ArrayList;Z)V
    .locals 0
    .param p2, "isGameApp"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 2497
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/home/HomeLoader;->updateHideItems(Ljava/util/ArrayList;Z)V

    .line 2498
    return-void
.end method

.method infoFromShortcutIntent(Landroid/content/Context;Landroid/content/Intent;)Lcom/android/launcher3/common/base/item/IconInfo;
    .locals 23
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 2819
    const-string v20, "android.intent.extra.shortcut.INTENT"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/content/Intent;

    .line 2820
    .local v10, "intent":Landroid/content/Intent;
    const-string v20, "android.intent.extra.shortcut.NAME"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2821
    .local v13, "name":Ljava/lang/String;
    const-string v20, "android.intent.extra.shortcut.ICON"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    .line 2823
    .local v4, "bitmap":Landroid/os/Parcelable;
    invoke-static/range {p1 .. p1}, Lcom/android/launcher3/util/DualAppUtils;->supportDualApp(Landroid/content/Context;)Z

    move-result v20

    if-eqz v20, :cond_0

    invoke-static/range {p2 .. p2}, Lcom/android/launcher3/common/compat/UserHandleCompat;->fromIntent(Landroid/content/Intent;)Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v11

    .line 2825
    .local v11, "intentUser":Lcom/android/launcher3/common/compat/UserHandleCompat;
    :goto_0
    if-nez v10, :cond_1

    .line 2827
    const-string v20, "HomeLoader"

    const-string v21, "Can\'t construct ShorcutInfo with null intent"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2828
    const/4 v9, 0x0

    .line 2901
    .end local v4    # "bitmap":Landroid/os/Parcelable;
    .end local v11    # "intentUser":Lcom/android/launcher3/common/compat/UserHandleCompat;
    :goto_1
    return-object v9

    .line 2823
    .restart local v4    # "bitmap":Landroid/os/Parcelable;
    :cond_0
    const/4 v11, 0x0

    goto :goto_0

    .line 2831
    .restart local v11    # "intentUser":Lcom/android/launcher3/common/compat/UserHandleCompat;
    :cond_1
    const/4 v7, 0x0

    .line 2832
    .local v7, "icon":Landroid/graphics/Bitmap;
    const/4 v5, 0x0

    .line 2833
    .local v5, "customIcon":Z
    const/4 v8, 0x0

    .line 2835
    .local v8, "iconResource":Landroid/content/Intent$ShortcutIconResource;
    instance-of v0, v4, Landroid/graphics/Bitmap;

    move/from16 v20, v0

    if-eqz v20, :cond_8

    .line 2836
    check-cast v4, Landroid/graphics/Bitmap;

    .end local v4    # "bitmap":Landroid/os/Parcelable;
    move-object/from16 v0, p1

    invoke-static {v4, v0}, Lcom/android/launcher3/util/BitmapUtils;->createIconBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 2846
    :cond_2
    :goto_2
    new-instance v9, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-direct {v9}, Lcom/android/launcher3/common/base/item/IconInfo;-><init>()V

    .line 2847
    .local v9, "info":Lcom/android/launcher3/common/base/item/IconInfo;
    const/16 v20, 0x1

    move/from16 v0, v20

    iput v0, v9, Lcom/android/launcher3/common/base/item/IconInfo;->itemType:I

    .line 2849
    if-eqz v7, :cond_3

    .line 2850
    invoke-virtual {v9, v7}, Lcom/android/launcher3/common/base/item/IconInfo;->setOriginalIcon(Landroid/graphics/Bitmap;)V

    .line 2851
    const/4 v5, 0x1

    .line 2854
    :cond_3
    if-eqz v11, :cond_9

    .end local v11    # "intentUser":Lcom/android/launcher3/common/compat/UserHandleCompat;
    :goto_3
    iput-object v11, v9, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    .line 2855
    const-string v20, "HomeLoader"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "infoFromShortcutIntent EXTRA_USER "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget-object v0, v9, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher3/common/compat/UserHandleCompat;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2856
    invoke-static {v10}, Lcom/android/launcher3/common/view/IconView;->isKnoxShortcut(Landroid/content/Intent;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 2857
    sget-object v20, Lcom/android/launcher3/home/HomeLoader;->sUserManager:Lcom/android/launcher3/common/compat/UserManagerCompat;

    iget-object v0, v9, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher3/common/compat/UserHandleCompat;)J

    move-result-wide v16

    .line 2858
    .local v16, "userDefaultSerial":J
    const-string v20, "userid"

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v21, v0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v18, v0

    .line 2861
    .local v18, "userSerial":J
    const-wide/16 v20, 0x64

    cmp-long v20, v18, v20

    if-ltz v20, :cond_4

    .line 2862
    sget-object v20, Lcom/android/launcher3/home/HomeLoader;->sUserManager:Lcom/android/launcher3/common/compat/UserManagerCompat;

    move-object/from16 v0, v20

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getUserForSerialNumber(J)Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v9, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    .line 2866
    .end local v16    # "userDefaultSerial":J
    .end local v18    # "userSerial":J
    :cond_4
    if-nez v7, :cond_5

    .line 2867
    sget-object v20, Lcom/android/launcher3/home/HomeLoader;->sIconCache:Lcom/android/launcher3/common/model/IconCache;

    iget-object v0, v9, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/android/launcher3/common/model/IconCache;->getDefaultIcon(Lcom/android/launcher3/common/compat/UserHandleCompat;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 2868
    const/16 v20, 0x1

    move/from16 v0, v20

    iput-boolean v0, v9, Lcom/android/launcher3/common/base/item/IconInfo;->usingFallbackIcon:Z

    .line 2871
    :cond_5
    if-eqz v5, :cond_6

    .line 2872
    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v20

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-static {v0, v7, v1}, Lcom/android/launcher3/util/ShortcutTray;->getIcon(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/content/ComponentName;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 2873
    invoke-static/range {p1 .. p1}, Lcom/android/launcher3/util/DualAppUtils;->supportDualApp(Landroid/content/Context;)Z

    move-result v20

    if-eqz v20, :cond_6

    iget-object v0, v9, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/launcher3/util/DualAppUtils;->isDualAppId(Lcom/android/launcher3/common/compat/UserHandleCompat;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 2874
    sget-object v20, Lcom/android/launcher3/home/HomeLoader;->sProfile:Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    move-object/from16 v20, v0

    .line 2875
    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getIconSize()I

    move-result v20

    iget-object v0, v9, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher3/common/compat/UserHandleCompat;->getUser()Landroid/os/UserHandle;

    move-result-object v21

    .line 2874
    move-object/from16 v0, p1

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v0, v7, v1, v2}, Lcom/android/launcher3/util/DualAppUtils;->makeUserBadgedIcon(Landroid/content/Context;Landroid/graphics/Bitmap;ILandroid/os/UserHandle;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 2878
    :cond_6
    invoke-virtual {v9, v7}, Lcom/android/launcher3/common/base/item/IconInfo;->setIcon(Landroid/graphics/Bitmap;)V

    .line 2880
    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v20

    if-eqz v20, :cond_7

    invoke-static {v10}, Lcom/android/launcher3/common/view/IconView;->isKnoxShortcut(Landroid/content/Intent;)Z

    move-result v20

    if-nez v20, :cond_7

    .line 2881
    sget-object v20, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    .line 2882
    .local v14, "pm":Landroid/content/pm/PackageManager;
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v14, v10, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v15

    .line 2884
    .local v15, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v15, :cond_7

    .line 2886
    sget-object v20, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    .line 2887
    move-object/from16 v0, v20

    invoke-static {v15, v0}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->fromResolveInfo(Landroid/content/pm/ResolveInfo;Landroid/content/Context;)Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;

    move-result-object v12

    .line 2888
    .local v12, "launcherInfo":Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    if-eqz v12, :cond_7

    .line 2889
    invoke-static {v12}, Lcom/android/launcher3/common/base/item/IconInfo;->initFlags(Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;)I

    move-result v20

    move/from16 v0, v20

    iput v0, v9, Lcom/android/launcher3/common/base/item/IconInfo;->flags:I

    .line 2894
    .end local v12    # "launcherInfo":Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    .end local v14    # "pm":Landroid/content/pm/PackageManager;
    .end local v15    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_7
    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v9, Lcom/android/launcher3/common/base/item/IconInfo;->componentName:Landroid/content/ComponentName;

    .line 2895
    invoke-static {v13}, Lcom/android/launcher3/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v9, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    .line 2896
    sget-object v20, Lcom/android/launcher3/home/HomeLoader;->sUserManager:Lcom/android/launcher3/common/compat/UserManagerCompat;

    iget-object v0, v9, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    iget-object v0, v9, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-object/from16 v22, v0

    invoke-virtual/range {v20 .. v22}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getBadgedLabelForUser(Ljava/lang/CharSequence;Lcom/android/launcher3/common/compat/UserHandleCompat;)Ljava/lang/CharSequence;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v9, Lcom/android/launcher3/common/base/item/IconInfo;->contentDescription:Ljava/lang/CharSequence;

    .line 2897
    iput-object v10, v9, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    .line 2898
    iput-boolean v5, v9, Lcom/android/launcher3/common/base/item/IconInfo;->customIcon:Z

    .line 2899
    iput-object v8, v9, Lcom/android/launcher3/common/base/item/IconInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    goto/16 :goto_1

    .line 2838
    .end local v9    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    .restart local v4    # "bitmap":Landroid/os/Parcelable;
    .restart local v11    # "intentUser":Lcom/android/launcher3/common/compat/UserHandleCompat;
    :cond_8
    const-string v20, "android.intent.extra.shortcut.ICON_RESOURCE"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    .line 2839
    .local v6, "extra":Landroid/os/Parcelable;
    instance-of v0, v6, Landroid/content/Intent$ShortcutIconResource;

    move/from16 v20, v0

    if-eqz v20, :cond_2

    move-object v8, v6

    .line 2840
    check-cast v8, Landroid/content/Intent$ShortcutIconResource;

    .line 2841
    iget-object v0, v8, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    iget-object v0, v8, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/util/BitmapUtils;->createIconBitmap(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v7

    goto/16 :goto_2

    .line 2854
    .end local v4    # "bitmap":Landroid/os/Parcelable;
    .end local v6    # "extra":Landroid/os/Parcelable;
    .restart local v9    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_9
    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v11

    goto/16 :goto_3
.end method

.method insertWorkspaceScreen(Landroid/content/Context;IJ)J
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "insertIndex"    # I
    .param p3, "insertScreenId"    # J

    .prologue
    const-wide/16 v4, -0x1

    .line 3460
    sget-object v1, Lcom/android/launcher3/home/HomeLoader;->sFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    invoke-virtual {v1}, Lcom/android/launcher3/common/model/FavoritesProvider;->loadScreensFromDb()Ljava/util/ArrayList;

    move-result-object v0

    .line 3462
    .local v0, "workspaceScreens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, p2, :cond_1

    .line 3463
    const-string v1, "HomeLoader"

    const-string v2, "insert page should be less than total workspace screen count."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3487
    :cond_0
    :goto_0
    return-wide v4

    .line 3467
    :cond_1
    cmp-long v1, p3, v4

    if-nez v1, :cond_2

    .line 3468
    invoke-static {}, Lcom/android/launcher3/common/model/FavoritesProvider;->getInstance()Lcom/android/launcher3/common/model/FavoritesProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/common/model/FavoritesProvider;->generateNewScreenId()J

    move-result-wide v4

    .line 3470
    .local v4, "screenId":J
    :goto_1
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3473
    iget-object v1, p0, Lcom/android/launcher3/home/HomeLoader;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    invoke-virtual {v1, p1, v0}, Lcom/android/launcher3/common/model/FavoritesUpdater;->updateScreenOrder(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 3475
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3476
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeLoader;->getCallback()Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    move-result-object v3

    .line 3477
    .local v3, "callbacks":Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;
    new-instance v1, Lcom/android/launcher3/home/HomeLoader$35;

    move-object v2, p0

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher3/home/HomeLoader$35;-><init>(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;JI)V

    invoke-virtual {p0, v1}, Lcom/android/launcher3/home/HomeLoader;->runOnMainThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .end local v3    # "callbacks":Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;
    .end local v4    # "screenId":J
    :cond_2
    move-wide v4, p3

    .line 3468
    goto :goto_1
.end method

.method protected loadDefaultLayout(Lcom/android/launcher3/common/model/AutoInstallsLayout;Z)V
    .locals 10
    .param p1, "autoInstallLayout"    # Lcom/android/launcher3/common/model/AutoInstallsLayout;
    .param p2, "isSwitchedDb"    # Z

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 3103
    const/4 v0, 0x0

    .line 3104
    .local v0, "parser":Lcom/android/launcher3/home/HomeDefaultLayoutParser;
    if-eqz p1, :cond_0

    .line 3105
    const-string v1, "HomeLoader"

    const-string v2, "use auto install layout for home"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3106
    invoke-virtual {p1}, Lcom/android/launcher3/common/model/AutoInstallsLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 3107
    .local v4, "res":Landroid/content/res/Resources;
    const-string v1, "default_workspace"

    const-string v2, "xml"

    invoke-virtual {p1}, Lcom/android/launcher3/common/model/AutoInstallsLayout;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 3109
    .local v5, "workspaceResId":I
    if-eqz v5, :cond_7

    .line 3110
    new-instance v0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;

    .end local v0    # "parser":Lcom/android/launcher3/home/HomeDefaultLayoutParser;
    sget-object v1, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    sget-object v2, Lcom/android/launcher3/home/HomeLoader;->sFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    invoke-virtual {v2}, Lcom/android/launcher3/common/model/FavoritesProvider;->getAppWidgetHost()Landroid/appwidget/AppWidgetHost;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/home/HomeLoader;->sFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/home/HomeDefaultLayoutParser;-><init>(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/common/model/DefaultLayoutParser$LayoutParserCallback;Landroid/content/res/Resources;I)V

    .line 3118
    .end local v4    # "res":Landroid/content/res/Resources;
    .end local v5    # "workspaceResId":I
    .restart local v0    # "parser":Lcom/android/launcher3/home/HomeDefaultLayoutParser;
    :cond_0
    :goto_0
    if-eqz v0, :cond_8

    move v6, v7

    .line 3119
    .local v6, "usingExternallyProvidedLayout":Z
    :goto_1
    if-nez v0, :cond_1

    .line 3120
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeLoader;->getDefaultLayoutParser()Lcom/android/launcher3/home/HomeDefaultLayoutParser;

    move-result-object v0

    .line 3125
    :cond_1
    if-nez p2, :cond_3

    .line 3126
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getLauncherProvider()Lcom/android/launcher3/LauncherProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherProvider;->createEmptyDB()V

    .line 3129
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHomeModeChange()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3130
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled(Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3131
    sget-object v1, Lcom/android/launcher3/home/HomeLoader;->sFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    invoke-virtual {v1, v7, v7}, Lcom/android/launcher3/common/model/FavoritesProvider;->switchTable(IZ)Z

    .line 3133
    :cond_2
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportEasyModeChange()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3134
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->isEasyModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3135
    sget-object v1, Lcom/android/launcher3/home/HomeLoader;->sFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    invoke-virtual {v1, v9, v7}, Lcom/android/launcher3/common/model/FavoritesProvider;->switchTable(IZ)Z

    .line 3140
    :cond_3
    sget-object v1, Lcom/android/launcher3/home/HomeLoader;->sFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/common/model/FavoritesProvider;->loadFavorites(Lcom/android/launcher3/common/model/DefaultLayoutParser;)I

    move-result v1

    if-gtz v1, :cond_6

    .line 3141
    if-eqz v6, :cond_6

    .line 3143
    if-nez p2, :cond_5

    .line 3144
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getLauncherProvider()Lcom/android/launcher3/LauncherProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherProvider;->createEmptyDB()V

    .line 3147
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHomeModeChange()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3148
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled(Z)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3149
    sget-object v1, Lcom/android/launcher3/home/HomeLoader;->sFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    invoke-virtual {v1, v7, v7}, Lcom/android/launcher3/common/model/FavoritesProvider;->switchTable(IZ)Z

    .line 3151
    :cond_4
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportEasyModeChange()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3152
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->isEasyModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3153
    sget-object v1, Lcom/android/launcher3/home/HomeLoader;->sFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    invoke-virtual {v1, v9, v7}, Lcom/android/launcher3/common/model/FavoritesProvider;->switchTable(IZ)Z

    .line 3156
    :cond_5
    sget-object v1, Lcom/android/launcher3/home/HomeLoader;->sFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    invoke-direct {p0}, Lcom/android/launcher3/home/HomeLoader;->getDefaultLayoutParser()Lcom/android/launcher3/home/HomeDefaultLayoutParser;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/common/model/FavoritesProvider;->loadFavorites(Lcom/android/launcher3/common/model/DefaultLayoutParser;)I

    .line 3159
    :cond_6
    return-void

    .line 3113
    .end local v6    # "usingExternallyProvidedLayout":Z
    .restart local v4    # "res":Landroid/content/res/Resources;
    .restart local v5    # "workspaceResId":I
    :cond_7
    const-string v1, "HomeLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "default_workspace layout not found in package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3114
    invoke-virtual {p1}, Lcom/android/launcher3/common/model/AutoInstallsLayout;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3113
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v4    # "res":Landroid/content/res/Resources;
    .end local v5    # "workspaceResId":I
    :cond_8
    move v6, v8

    .line 3118
    goto/16 :goto_1
.end method

.method protected loadDefaultLayoutCompleted()V
    .locals 3

    .prologue
    .line 3163
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportCustomerDialerChange()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3165
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeLoader;->saveCustomerPageKey()V

    .line 3167
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sContentResolver:Landroid/content/ContentResolver;

    const-string v1, "skt_phone20_settings"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3168
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeLoader;->changeDialerAppOnLoadDefaultLayout()V

    .line 3172
    :cond_0
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportEasyModeChange()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3173
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->isEasyModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3174
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeLoader;->addAppsButtonForEasy()V

    .line 3176
    :cond_1
    return-void
.end method

.method public loadPageItems(ILcom/android/launcher3/common/model/DataLoader$DataLoaderState;)Ljava/util/ArrayList;
    .locals 33
    .param p1, "rank"    # I
    .param p2, "task"    # Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 459
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/home/HomeLoader;->getCallback()Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    move-result-object v25

    .line 460
    .local v25, "oldCallbacks":Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;
    if-nez v25, :cond_1

    .line 461
    const-string v2, "HomeLoader"

    const-string v7, "loadPageItems running with no launcher"

    invoke-static {v2, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    const/4 v11, 0x0

    .line 584
    :cond_0
    :goto_0
    return-object v11

    .line 465
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeLoader;->mBgOrderedScreens:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 466
    const-string v2, "HomeLoader"

    const-string v7, "loadPageItems running with no screen : mBgOrderedScreens.isEmpty()"

    invoke-static {v2, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    const/4 v11, 0x0

    goto :goto_0

    .line 470
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v30

    .line 471
    .local v30, "t":J
    if-gez p1, :cond_3

    .line 472
    invoke-interface/range {v25 .. v25}, Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;->getCurrentWorkspaceScreen()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/HomeLoader;->mBgOrderedScreens:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-static {v2, v7}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 474
    :cond_3
    if-ltz p1, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeLoader;->mBgOrderedScreens:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, p1

    if-lt v0, v2, :cond_5

    .line 475
    :cond_4
    const-string v2, "HomeLoader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "loadPageItems this rank is invalid : rank "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    const/4 v11, 0x0

    goto :goto_0

    .line 479
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeLoader;->mBgOrderedScreens:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    .line 480
    .local v28, "screen":J
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 481
    .local v11, "pageItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 482
    .local v10, "needHandlingItems":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<*>;>;"
    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v10, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v10, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v10, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v10, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    sget-object v3, Lcom/android/launcher3/common/model/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    .line 489
    .local v3, "contentUri":Landroid/net/Uri;
    const/4 v4, 0x0

    .line 492
    .local v4, "projection":[Ljava/lang/String;
    const/16 v23, 0x0

    .line 493
    .local v23, "isReArrangeHotseatData":Z
    new-instance v12, Lcom/android/launcher3/util/LongArrayMap;

    invoke-direct {v12}, Lcom/android/launcher3/util/LongArrayMap;-><init>()V

    .line 494
    .local v12, "occupied":Lcom/android/launcher3/util/LongArrayMap;, "Lcom/android/launcher3/util/LongArrayMap<[[Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    const-wide/16 v14, 0x0

    sget-object v2, Lcom/android/launcher3/home/HomeLoader;->sProfile:Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    iget-object v2, v2, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountX()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    sget-object v7, Lcom/android/launcher3/home/HomeLoader;->sProfile:Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    iget-object v7, v7, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    .line 495
    invoke-virtual {v7}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountY()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    filled-new-array {v2, v7}, [I

    move-result-object v2

    const-class v7, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-static {v7, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 494
    invoke-virtual {v12, v14, v15, v2}, Lcom/android/launcher3/util/LongArrayMap;->put(JLjava/lang/Object;)V

    .line 496
    if-nez p1, :cond_6

    .line 497
    const-string v5, "(screen=? AND container=?) OR (container=?)"

    .line 499
    .local v5, "selection":Ljava/lang/String;
    const/4 v2, 0x3

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static/range {v28 .. v29}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v2, 0x1

    const/16 v7, -0x64

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v2, 0x2

    const/16 v7, -0x65

    .line 500
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    .line 501
    .local v6, "selectionArg":[Ljava/lang/String;
    const/16 v23, 0x1

    .line 502
    sget-object v2, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v7, 0x7f0b003f

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v22

    .line 503
    .local v22, "hotseatCount":I
    const-wide/16 v14, 0x1

    const/4 v2, 0x1

    move/from16 v0, v22

    filled-new-array {v0, v2}, [I

    move-result-object v2

    const-class v7, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-static {v7, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-virtual {v12, v14, v15, v2}, Lcom/android/launcher3/util/LongArrayMap;->put(JLjava/lang/Object;)V

    .line 509
    .end local v22    # "hotseatCount":I
    :goto_1
    sget-object v2, Lcom/android/launcher3/home/HomeLoader;->sContentResolver:Landroid/content/ContentResolver;

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 514
    .local v8, "c":Landroid/database/Cursor;
    if-nez v8, :cond_7

    .line 515
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 505
    .end local v5    # "selection":Ljava/lang/String;
    .end local v6    # "selectionArg":[Ljava/lang/String;
    .end local v8    # "c":Landroid/database/Cursor;
    :cond_6
    const-string v5, "screen=? AND container=?"

    .line 506
    .restart local v5    # "selection":Ljava/lang/String;
    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static/range {v28 .. v29}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v2, 0x1

    const/16 v7, -0x64

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    .restart local v6    # "selectionArg":[Ljava/lang/String;
    goto :goto_1

    .line 518
    .restart local v8    # "c":Landroid/database/Cursor;
    :cond_7
    new-instance v9, Lcom/android/launcher3/common/model/CursorInfo;

    invoke-direct {v9, v8}, Lcom/android/launcher3/common/model/CursorInfo;-><init>(Landroid/database/Cursor;)V

    .local v9, "cursorIconInfo":Lcom/android/launcher3/common/model/CursorInfo;
    move-object/from16 v7, p0

    move-object/from16 v13, p2

    .line 521
    :try_start_0
    invoke-direct/range {v7 .. v13}, Lcom/android/launcher3/home/HomeLoader;->createItems(Landroid/database/Cursor;Lcom/android/launcher3/common/model/CursorInfo;Ljava/util/HashMap;Ljava/util/ArrayList;Lcom/android/launcher3/util/LongArrayMap;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)Lcom/android/launcher3/util/LongArrayMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v21

    .line 523
    .local v21, "folders":Lcom/android/launcher3/util/LongArrayMap;, "Lcom/android/launcher3/util/LongArrayMap<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_8

    .line 524
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 527
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/HomeLoader;->isStopped(Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 528
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 523
    .end local v21    # "folders":Lcom/android/launcher3/util/LongArrayMap;, "Lcom/android/launcher3/util/LongArrayMap<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    :catchall_0
    move-exception v2

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-nez v7, :cond_9

    .line 524
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v2

    .line 531
    .restart local v21    # "folders":Lcom/android/launcher3/util/LongArrayMap;, "Lcom/android/launcher3/util/LongArrayMap<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    :cond_a
    if-eqz v21, :cond_b

    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher3/util/LongArrayMap;->size()I

    move-result v2

    if-lez v2, :cond_b

    .line 532
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "container in ("

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/HomeLoader;->makeFoldersIdToString(Lcom/android/launcher3/util/LongArrayMap;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v7, 0x29

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 533
    sget-object v13, Lcom/android/launcher3/home/HomeLoader;->sContentResolver:Landroid/content/ContentResolver;

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v14, v3

    move-object v15, v4

    move-object/from16 v16, v5

    invoke-virtual/range {v13 .. v18}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 535
    if-eqz v8, :cond_d

    move-object/from16 v7, p0

    move-object/from16 v13, p2

    .line 537
    :try_start_1
    invoke-direct/range {v7 .. v13}, Lcom/android/launcher3/home/HomeLoader;->createItems(Landroid/database/Cursor;Lcom/android/launcher3/common/model/CursorInfo;Ljava/util/HashMap;Ljava/util/ArrayList;Lcom/android/launcher3/util/LongArrayMap;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)Lcom/android/launcher3/util/LongArrayMap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 539
    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_b

    .line 540
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 548
    :cond_b
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/HomeLoader;->isStopped(Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 549
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 539
    :catchall_1
    move-exception v2

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-nez v7, :cond_c

    .line 540
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_c
    throw v2

    .line 544
    :cond_d
    const-string v2, "HomeLoader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Cursor is null. Exist empty folder. folders size : "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher3/util/LongArrayMap;->size()I

    move-result v13

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 553
    :cond_e
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/android/launcher3/home/HomeLoader;->doHandlingItems(Ljava/util/HashMap;Ljava/util/ArrayList;)V

    .line 556
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/HomeLoader;->sortItemsInFolder(Lcom/android/launcher3/util/LongArrayMap;)V

    .line 558
    if-eqz v23, :cond_f

    .line 559
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/launcher3/home/HomeLoader;->reArrangeHotseatData(Ljava/util/ArrayList;)V

    .line 563
    :cond_f
    const-string v2, "HomeLoader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "loaded workspace in "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    sub-long v14, v14, v30

    invoke-virtual {v7, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v13, "ms"

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    const-string v2, "HomeLoader"

    const-string v7, "workspace layout: "

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    sget-object v2, Lcom/android/launcher3/home/HomeLoader;->sProfile:Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    iget-object v2, v2, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountX()I

    move-result v19

    .line 566
    .local v19, "countX":I
    sget-object v2, Lcom/android/launcher3/home/HomeLoader;->sProfile:Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    iget-object v2, v2, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountY()I

    move-result v20

    .line 568
    .local v20, "countY":I
    const/16 v32, 0x0

    .local v32, "y":I
    :goto_3
    move/from16 v0, v32

    move/from16 v1, v20

    if-ge v0, v1, :cond_13

    .line 569
    const-string v24, ""

    .line 570
    .local v24, "line":Ljava/lang/String;
    const-wide/16 v14, 0x0

    invoke-virtual {v12, v14, v15}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, [[Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 571
    .local v26, "page":[[Lcom/android/launcher3/common/base/item/ItemInfo;
    const/16 v27, 0x0

    .local v27, "x":I
    :goto_4
    move/from16 v0, v27

    move/from16 v1, v19

    if-ge v0, v1, :cond_12

    .line 572
    move-object/from16 v0, v26

    array-length v2, v0

    move/from16 v0, v27

    if-ge v0, v2, :cond_11

    aget-object v2, v26, v27

    array-length v2, v2

    move/from16 v0, v32

    if-ge v0, v2, :cond_11

    .line 573
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v2, v26, v27

    aget-object v2, v2, v32

    if-eqz v2, :cond_10

    const-string v2, "#"

    :goto_5
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 571
    :goto_6
    add-int/lit8 v27, v27, 0x1

    goto :goto_4

    .line 573
    :cond_10
    const-string v2, "."

    goto :goto_5

    .line 575
    :cond_11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "!"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    goto :goto_6

    .line 578
    :cond_12
    const-string v2, "HomeLoader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[ "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v13, " ]"

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    add-int/lit8 v32, v32, 0x1

    goto :goto_3

    .line 581
    .end local v24    # "line":Ljava/lang/String;
    .end local v26    # "page":[[Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v27    # "x":I
    :cond_13
    if-ltz p1, :cond_0

    .line 582
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeLoader;->mIsPageLoaded:[Z

    const/4 v7, 0x1

    aput-boolean v7, v2, p1

    goto/16 :goto_0
.end method

.method registerCallbacks(Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;)V
    .locals 2
    .param p1, "callbacks"    # Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    .prologue
    .line 446
    iget-object v1, p0, Lcom/android/launcher3/home/HomeLoader;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 447
    :try_start_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mCallbacks:Ljava/lang/ref/WeakReference;

    .line 448
    monitor-exit v1

    .line 449
    return-void

    .line 448
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeAppsButton(Lcom/android/launcher3/common/base/item/IconInfo;)V
    .locals 4
    .param p1, "appsButton"    # Lcom/android/launcher3/common/base/item/IconInfo;

    .prologue
    .line 1833
    if-nez p1, :cond_0

    .line 1834
    const-string v2, "HomeLoader"

    const-string v3, "removeAppsButton but apps button is null!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1852
    :goto_0
    return-void

    .line 1837
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeLoader;->getCallback()Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    move-result-object v0

    .line 1838
    .local v0, "callbacks":Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;
    new-instance v1, Lcom/android/launcher3/home/HomeLoader$14;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/launcher3/home/HomeLoader$14;-><init>(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/common/base/item/IconInfo;Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;)V

    .line 1851
    .local v1, "r":Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/launcher3/home/HomeLoader;->runOnWorkerThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public removePackagesAndComponents(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/launcher3/common/compat/UserHandleCompat;I)Ljava/util/ArrayList;
    .locals 12
    .param p3, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .param p4, "reason"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;",
            "Lcom/android/launcher3/common/compat/UserHandleCompat;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2621
    .local p1, "removedPackageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, "removedApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 2622
    .local v4, "removedComponents":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 2623
    .local v10, "removedAppsInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    if-nez p4, :cond_1

    .line 2625
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 2626
    .local v9, "pn":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/launcher3/home/HomeLoader;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    invoke-virtual {v1, v9, p3}, Lcom/android/launcher3/common/model/FavoritesUpdater;->deletePackageFromDatabase(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    goto :goto_0

    .line 2629
    .end local v9    # "pn":Ljava/lang/String;
    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 2630
    .local v7, "a":Lcom/android/launcher3/common/base/item/IconInfo;
    iget-object v1, v7, Lcom/android/launcher3/common/base/item/IconInfo;->componentName:Landroid/content/ComponentName;

    const/4 v3, 0x0

    invoke-static {v1, p3, v3}, Lcom/android/launcher3/home/HomeLoader;->getItemInfoByComponentName(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;Z)Ljava/util/ArrayList;

    move-result-object v8

    .line 2631
    .local v8, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    iget-object v1, p0, Lcom/android/launcher3/home/HomeLoader;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    invoke-virtual {v1, v8}, Lcom/android/launcher3/common/model/FavoritesUpdater;->deleteItemsFromDatabase(Ljava/util/ArrayList;)V

    .line 2632
    iget-object v1, v7, Lcom/android/launcher3/common/base/item/IconInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2633
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2638
    .end local v7    # "a":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v8    # "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    :cond_1
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    invoke-static {v0, p1, p3}, Lcom/android/launcher3/home/ExternalRequestQueue;->removeFromExternalRequestQueue(Landroid/content/Context;Ljava/util/ArrayList;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    .line 2640
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeLoader;->getCallback()Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    move-result-object v2

    .line 2641
    .local v2, "callbacks":Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;
    if-nez v2, :cond_2

    .line 2642
    const-string v0, "HomeLoader"

    const-string v1, "removePackagesAndComponents Nobody to tell about the new app.  Launcher is probably loading."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2657
    :goto_2
    return-object v10

    .line 2647
    :cond_2
    sget-object v11, Lcom/android/launcher3/home/HomeLoader;->sHandler:Lcom/android/launcher3/common/model/DeferredHandler;

    new-instance v0, Lcom/android/launcher3/home/HomeLoader$25;

    move-object v1, p0

    move-object v3, p1

    move-object v5, p3

    move/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/home/HomeLoader$25;-><init>(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;Ljava/util/ArrayList;Ljava/util/HashSet;Lcom/android/launcher3/common/compat/UserHandleCompat;I)V

    invoke-virtual {v11, v0}, Lcom/android/launcher3/common/model/DeferredHandler;->post(Ljava/lang/Runnable;)V

    goto :goto_2
.end method

.method public removePagesItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 3
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 3018
    iget-object v1, p0, Lcom/android/launcher3/home/HomeLoader;->mBgHotseatItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3019
    iget-object v1, p0, Lcom/android/launcher3/home/HomeLoader;->mBgHotseatItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3020
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/util/logging/SALogging;->updateLogValuesForHomeItems()V

    .line 3030
    :cond_0
    :goto_0
    return-void

    .line 3022
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/home/HomeLoader;->mBgPagesItems:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 3023
    .local v0, "screenId":Ljava/lang/Long;
    iget-object v1, p0, Lcom/android/launcher3/home/HomeLoader;->mBgPagesItems:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3024
    iget-object v1, p0, Lcom/android/launcher3/home/HomeLoader;->mBgPagesItems:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3025
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/util/logging/SALogging;->updateLogValuesForHomeItems()V

    goto :goto_0
.end method

.method public removeUnRestoredItems()V
    .locals 3

    .prologue
    .line 3079
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeLoader;->getAllItemInHome()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/launcher3/home/HomeLoader;->getUnRestoredItems(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    .line 3081
    .local v1, "removeItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3082
    iget-object v2, p0, Lcom/android/launcher3/home/HomeLoader;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/common/model/FavoritesUpdater;->deleteItemsFromDatabase(Ljava/util/ArrayList;)V

    .line 3084
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeLoader;->getCallback()Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    move-result-object v0

    .line 3085
    .local v0, "callbacks":Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;
    new-instance v2, Lcom/android/launcher3/home/HomeLoader$32;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/launcher3/home/HomeLoader$32;-><init>(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v2}, Lcom/android/launcher3/home/HomeLoader;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 3094
    .end local v0    # "callbacks":Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;
    :cond_0
    return-void
.end method

.method removeWorkspaceItem(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<+",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2111
    .local p1, "workspaceApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<+Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeLoader;->getCallback()Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    move-result-object v0

    .line 2113
    .local v0, "callbacks":Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;
    new-instance v1, Lcom/android/launcher3/home/HomeLoader$19;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/launcher3/home/HomeLoader$19;-><init>(Lcom/android/launcher3/home/HomeLoader;Ljava/util/ArrayList;Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;)V

    .line 2139
    .local v1, "r":Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/launcher3/home/HomeLoader;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 2140
    return-void
.end method

.method removeWorkspaceItem(ZILjava/lang/String;Landroid/content/Intent;Z)V
    .locals 9
    .param p1, "isWidget"    # Z
    .param p2, "appWidgetId"    # I
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "duplicate"    # Z

    .prologue
    .line 2144
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeLoader;->getCallback()Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    move-result-object v8

    .line 2145
    .local v8, "callbacks":Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v5

    .line 2147
    .local v5, "isHomeOnlyMode":Z
    new-instance v0, Lcom/android/launcher3/home/HomeLoader$20;

    move-object v1, p0

    move v2, p1

    move-object v3, p3

    move v4, p2

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v8}, Lcom/android/launcher3/home/HomeLoader$20;-><init>(Lcom/android/launcher3/home/HomeLoader;ZLjava/lang/String;IZLandroid/content/Intent;ZLcom/android/launcher3/home/HomeLoader$HomeCallbacks;)V

    .line 2195
    .local v0, "r":Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/android/launcher3/home/HomeLoader;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 2196
    return-void
.end method

.method public setOrderedScreen(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3073
    .local p1, "screen":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mBgOrderedScreens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3074
    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mBgOrderedScreens:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3075
    return-void
.end method

.method public setPackageState(Lcom/android/launcher3/common/compat/PackageInstallerCompat$PackageInstallInfo;)V
    .locals 2
    .param p1, "installInfo"    # Lcom/android/launcher3/common/compat/PackageInstallerCompat$PackageInstallInfo;

    .prologue
    .line 1677
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/android/launcher3/common/compat/PackageInstallerCompat$PackageInstallInfo;->packageName:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 1730
    :cond_0
    :goto_0
    return-void

    .line 1681
    :cond_1
    new-instance v0, Lcom/android/launcher3/home/HomeLoader$11;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/home/HomeLoader$11;-><init>(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/common/compat/PackageInstallerCompat$PackageInstallInfo;)V

    .line 1729
    .local v0, "updateRunnable":Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/android/launcher3/home/HomeLoader;->runOnWorkerThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setup(Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V
    .locals 5
    .param p1, "task"    # Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;

    .prologue
    const/4 v1, 0x1

    .line 1248
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeLoader;->unbindItemsOnMainThread()V

    .line 1250
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeLoader;->clearSBgDataStructures()V

    .line 1252
    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mBgOrderedScreens:Ljava/util/ArrayList;

    sget-object v2, Lcom/android/launcher3/home/HomeLoader;->sFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    invoke-virtual {v2}, Lcom/android/launcher3/common/model/FavoritesProvider;->loadScreensFromDb()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1253
    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mBgOrderedScreens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mIsPageLoaded:[Z

    .line 1254
    iput-boolean v1, p0, Lcom/android/launcher3/home/HomeLoader;->mIsFirstBind:Z

    .line 1256
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    const/4 v2, 0x0

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.android.launcher3.SYSTEM_READY"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/launcher3/home/HomeLoader;->mIsSdCardReady:Z

    .line 1257
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isExistSdCard(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/launcher3/home/HomeLoader;->mIsSdCardReady:Z

    :cond_0
    iput-boolean v1, p0, Lcom/android/launcher3/home/HomeLoader;->mIsSdCardReady:Z

    .line 1258
    return-void

    .line 1256
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showApps(Ljava/util/ArrayList;Z)V
    .locals 0
    .param p2, "isGameApp"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 2493
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/home/HomeLoader;->updateAndBindItems(Ljava/util/ArrayList;Z)V

    .line 2494
    return-void
.end method

.method public titleUpdate()V
    .locals 8

    .prologue
    .line 3974
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeLoader;->getAllAppItemInHome()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/launcher3/home/HomeLoader;->getNeedTitleUpdateIcons(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v4

    .line 3975
    .local v4, "needUpdateItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/LauncherAppState;->getAppsButtonEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3976
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeLoader;->getAppsButton()Lcom/android/launcher3/common/base/item/IconInfo;

    move-result-object v0

    .line 3977
    .local v0, "apps":Lcom/android/launcher3/common/base/item/IconInfo;
    if-eqz v0, :cond_0

    .line 3978
    sget-object v5, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f08000f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    .line 3979
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3983
    .end local v0    # "apps":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeLoader;->getCallback()Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    move-result-object v1

    .line 3984
    .local v1, "callbacks":Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;
    if-nez v1, :cond_1

    .line 3985
    const-string v5, "HomeLoader"

    const-string v6, "titleUpdate. Nobody to tell about the new app. Launcher is probably loading."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4005
    :goto_0
    return-void

    .line 3990
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3991
    .local v2, "finalUpdateItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    sget-object v6, Lcom/android/launcher3/home/HomeLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v6

    .line 3992
    :try_start_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 3993
    .local v3, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    check-cast v3, Lcom/android/launcher3/common/base/item/IconInfo;

    .end local v3    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3995
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    :cond_2
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3996
    new-instance v5, Lcom/android/launcher3/home/HomeLoader$38;

    invoke-direct {v5, p0, v1, v2}, Lcom/android/launcher3/home/HomeLoader$38;-><init>(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v5}, Lcom/android/launcher3/home/HomeLoader;->runOnMainThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public unRegisterCallbacks()V
    .locals 3

    .prologue
    .line 452
    iget-object v1, p0, Lcom/android/launcher3/home/HomeLoader;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 453
    :try_start_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mCallbacks:Ljava/lang/ref/WeakReference;

    .line 454
    monitor-exit v1

    .line 455
    return-void

    .line 454
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unbindItemsOnMainThread()V
    .locals 6

    .prologue
    .line 1606
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1607
    .local v2, "tmpItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    sget-object v4, Lcom/android/launcher3/home/HomeLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1608
    :try_start_0
    iget-object v3, p0, Lcom/android/launcher3/home/HomeLoader;->mBgHotseatItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1609
    iget-object v3, p0, Lcom/android/launcher3/home/HomeLoader;->mBgPagesItems:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1610
    .local v0, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 1611
    .end local v0    # "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1612
    new-instance v1, Lcom/android/launcher3/home/HomeLoader$7;

    invoke-direct {v1, p0, v2}, Lcom/android/launcher3/home/HomeLoader$7;-><init>(Lcom/android/launcher3/home/HomeLoader;Ljava/util/ArrayList;)V

    .line 1620
    .local v1, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v1}, Lcom/android/launcher3/home/HomeLoader;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 1621
    return-void
.end method

.method updateContactShortcutInfo(JLandroid/content/Intent;)V
    .locals 3
    .param p1, "id"    # J
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 4008
    new-instance v0, Lcom/android/launcher3/home/HomeLoader$39;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/launcher3/home/HomeLoader$39;-><init>(Lcom/android/launcher3/home/HomeLoader;JLandroid/content/Intent;)V

    .line 4022
    .local v0, "r":Ljava/lang/Runnable;
    new-instance v1, Lcom/android/launcher3/home/HomeLoader$40;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher3/home/HomeLoader$40;-><init>(Lcom/android/launcher3/home/HomeLoader;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v1}, Lcom/android/launcher3/home/HomeLoader;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 4036
    return-void
.end method

.method updateContainerForDexSync(ZLcom/android/launcher3/folder/FolderInfo;Lcom/android/launcher3/common/base/item/IconInfo;)V
    .locals 6
    .param p1, "addToFolder"    # Z
    .param p2, "folder"    # Lcom/android/launcher3/folder/FolderInfo;
    .param p3, "item"    # Lcom/android/launcher3/common/base/item/IconInfo;

    .prologue
    .line 3425
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeLoader;->getCallback()Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    move-result-object v2

    .line 3426
    .local v2, "oldCallbacks":Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;
    new-instance v0, Lcom/android/launcher3/home/HomeLoader$34;

    move-object v1, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/home/HomeLoader$34;-><init>(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;ZLcom/android/launcher3/folder/FolderInfo;Lcom/android/launcher3/common/base/item/IconInfo;)V

    .line 3435
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/HomeLoader;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 3436
    return-void
.end method

.method updateFolderTitle(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 2
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 3410
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeLoader;->getCallback()Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    move-result-object v0

    .line 3411
    .local v0, "oldCallbacks":Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;
    new-instance v1, Lcom/android/launcher3/home/HomeLoader$33;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/launcher3/home/HomeLoader$33;-><init>(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 3420
    .local v1, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v1}, Lcom/android/launcher3/home/HomeLoader;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 3421
    return-void
.end method

.method public updateItemsOnlyDB(Ljava/util/ArrayList;)V
    .locals 6
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
    .line 2610
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2611
    .local v0, "contentValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 2612
    .local v1, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 2613
    .local v2, "values":Landroid/content/ContentValues;
    const-string v4, "hidden"

    iget v5, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->hidden:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2614
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2616
    .end local v1    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v2    # "values":Landroid/content/ContentValues;
    :cond_0
    iget-object v3, p0, Lcom/android/launcher3/home/HomeLoader;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    sget-object v4, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    invoke-virtual {v3, v4, v0, p1}, Lcom/android/launcher3/common/model/FavoritesUpdater;->updateItemsInDatabaseHelper(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 2617
    return-void
.end method

.method public updatePackageFlags(Lcom/android/launcher3/util/StringFilter;Lcom/android/launcher3/common/compat/UserHandleCompat;Lcom/android/launcher3/util/FlagOp;)V
    .locals 12
    .param p1, "pkgFilter"    # Lcom/android/launcher3/util/StringFilter;
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .param p3, "flagOp"    # Lcom/android/launcher3/util/FlagOp;

    .prologue
    .line 3796
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 3798
    .local v7, "updatedShortcuts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    const-string v8, ""

    invoke-virtual {p1, v8}, Lcom/android/launcher3/util/StringFilter;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 3799
    iget-object v9, p0, Lcom/android/launcher3/home/HomeLoader;->mQuietModeUsers:Landroid/util/LongSparseArray;

    sget-object v8, Lcom/android/launcher3/home/HomeLoader;->sUserManager:Lcom/android/launcher3/common/compat/UserManagerCompat;

    invoke-virtual {v8, p2}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher3/common/compat/UserHandleCompat;)J

    move-result-wide v10

    const/16 v8, 0x8

    .line 3800
    invoke-virtual {p3, v8}, Lcom/android/launcher3/util/FlagOp;->apply(I)I

    move-result v8

    if-lez v8, :cond_2

    const/4 v8, 0x1

    :goto_0
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 3799
    invoke-virtual {v9, v10, v11, v8}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 3802
    :cond_0
    sget-object v9, Lcom/android/launcher3/home/HomeLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v9

    .line 3803
    :try_start_0
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeLoader;->getAllItemInHome()Ljava/util/ArrayList;

    move-result-object v2

    .line 3804
    .local v2, "allItemInHome":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 3805
    .local v5, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    instance-of v10, v5, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v10, :cond_1

    .line 3806
    move-object v0, v5

    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    move-object v4, v0

    .line 3807
    .local v4, "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    invoke-virtual {v4}, Lcom/android/launcher3/common/base/item/IconInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v3

    .line 3808
    .local v3, "cn":Landroid/content/ComponentName;
    iget-object v10, v4, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {v10, p2}, Lcom/android/launcher3/common/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    if-eqz v3, :cond_1

    .line 3809
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Lcom/android/launcher3/util/StringFilter;->matches(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 3810
    iget v10, v4, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    invoke-virtual {p3, v10}, Lcom/android/launcher3/util/FlagOp;->apply(I)I

    move-result v10

    iput v10, v4, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    .line 3811
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3815
    .end local v2    # "allItemInHome":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .end local v3    # "cn":Landroid/content/ComponentName;
    .end local v4    # "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v5    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 3800
    :cond_2
    const/4 v8, 0x0

    goto :goto_0

    .line 3815
    .restart local v2    # "allItemInHome":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    :cond_3
    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3817
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeLoader;->getCallback()Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    move-result-object v6

    .line 3818
    .local v6, "oldCallback":Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;
    sget-object v8, Lcom/android/launcher3/home/HomeLoader;->sHandler:Lcom/android/launcher3/common/model/DeferredHandler;

    new-instance v9, Lcom/android/launcher3/home/HomeLoader$36;

    invoke-direct {v9, p0, v6, v7, p2}, Lcom/android/launcher3/home/HomeLoader$36;-><init>(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;Ljava/util/ArrayList;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    invoke-virtual {v8, v9}, Lcom/android/launcher3/common/model/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 3826
    return-void
.end method

.method public updatePagesItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 6
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 3034
    iget-object v1, p0, Lcom/android/launcher3/home/HomeLoader;->mBgHotseatItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3035
    iget v1, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->hidden:I

    if-eqz v1, :cond_1

    .line 3036
    iget-object v1, p0, Lcom/android/launcher3/home/HomeLoader;->mBgHotseatItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3037
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/util/logging/SALogging;->updateLogValuesForHomeItems()V

    .line 3055
    :cond_0
    :goto_0
    return-void

    .line 3038
    :cond_1
    iget-wide v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v4, -0x65

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 3039
    iget-object v1, p0, Lcom/android/launcher3/home/HomeLoader;->mBgHotseatItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3040
    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/HomeLoader;->addPagesItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 3041
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/util/logging/SALogging;->updateLogValuesForHomeItems()V

    goto :goto_0

    .line 3044
    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/home/HomeLoader;->mBgPagesItems:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 3045
    .local v0, "screenId":Ljava/lang/Long;
    iget-object v1, p0, Lcom/android/launcher3/home/HomeLoader;->mBgPagesItems:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3046
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-wide v4, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_4

    iget-wide v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v4, -0x64

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 3047
    :cond_4
    iget-object v1, p0, Lcom/android/launcher3/home/HomeLoader;->mBgPagesItems:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3048
    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/HomeLoader;->addPagesItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 3049
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/util/logging/SALogging;->updateLogValuesForHomeItems()V

    goto :goto_0
.end method

.method public updateSessionDisplayInfo(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1736
    if-nez p1, :cond_0

    .line 1785
    :goto_0
    return-void

    .line 1740
    :cond_0
    new-instance v0, Lcom/android/launcher3/home/HomeLoader$12;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/home/HomeLoader$12;-><init>(Lcom/android/launcher3/home/HomeLoader;Ljava/lang/String;)V

    .line 1784
    .local v0, "updateRunnable":Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/android/launcher3/home/HomeLoader;->runOnWorkerThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public updateShortcut(Ljava/util/HashSet;Lcom/android/launcher3/common/compat/UserHandleCompat;)V
    .locals 9
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
    .line 1788
    .local p1, "updatedPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1789
    .local v5, "updatedShortcuts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    sget-object v7, Lcom/android/launcher3/home/HomeLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1790
    :try_start_0
    sget-object v6, Lcom/android/launcher3/home/HomeLoader;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v6}, Lcom/android/launcher3/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 1791
    .local v2, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    instance-of v8, v2, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v8, :cond_0

    iget-object v8, v2, Lcom/android/launcher3/common/base/item/ItemInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {p2, v8}, Lcom/android/launcher3/common/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget v8, v2, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    if-nez v8, :cond_0

    .line 1793
    move-object v0, v2

    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    move-object v4, v0

    .line 1794
    .local v4, "si":Lcom/android/launcher3/common/base/item/IconInfo;
    invoke-virtual {v4}, Lcom/android/launcher3/common/base/item/IconInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 1795
    .local v1, "cn":Landroid/content/ComponentName;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1796
    sget-object v8, Lcom/android/launcher3/home/HomeLoader;->sIconCache:Lcom/android/launcher3/common/model/IconCache;

    invoke-virtual {v4, v8}, Lcom/android/launcher3/common/base/item/IconInfo;->updateIcon(Lcom/android/launcher3/common/model/IconCache;)V

    .line 1797
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1801
    .end local v1    # "cn":Landroid/content/ComponentName;
    .end local v2    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v4    # "si":Lcom/android/launcher3/common/base/item/IconInfo;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    :cond_1
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1803
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeLoader;->getCallback()Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    move-result-object v3

    .line 1804
    .local v3, "oldCallbacks":Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;
    sget-object v6, Lcom/android/launcher3/home/HomeLoader;->sHandler:Lcom/android/launcher3/common/model/DeferredHandler;

    new-instance v7, Lcom/android/launcher3/home/HomeLoader$13;

    invoke-direct {v7, p0, v3, v5, p2}, Lcom/android/launcher3/home/HomeLoader$13;-><init>(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;Ljava/util/ArrayList;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    invoke-virtual {v6, v7}, Lcom/android/launcher3/common/model/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1812
    return-void
.end method

.method public updateShortcutIcons()V
    .locals 12

    .prologue
    .line 3858
    sget-object v8, Lcom/android/launcher3/home/HomeLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v8

    .line 3859
    :try_start_0
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeLoader;->getAllItemInHome()Ljava/util/ArrayList;

    move-result-object v1

    .line 3860
    .local v1, "allItemInHome":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 3861
    .local v6, "updatedIcons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 3862
    .local v4, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    instance-of v7, v4, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v7, :cond_0

    move-object v0, v4

    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    move-object v7, v0

    iget-boolean v7, v7, Lcom/android/launcher3/common/base/item/IconInfo;->customIcon:Z

    if-eqz v7, :cond_0

    iget v7, v4, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    const/4 v10, 0x1

    if-ne v7, v10, :cond_0

    .line 3864
    move-object v0, v4

    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/android/launcher3/common/base/item/IconInfo;->getOriginalIcon()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 3865
    .local v5, "originalIcon":Landroid/graphics/Bitmap;
    if-eqz v5, :cond_0

    .line 3866
    move-object v3, v5

    .line 3867
    .local v3, "icon":Landroid/graphics/Bitmap;
    invoke-static {}, Lcom/android/launcher3/util/ShortcutTray;->isIconTrayEnabled()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 3868
    sget-object v7, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    iget-object v10, v4, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    invoke-static {v7, v5, v10}, Lcom/android/launcher3/util/ShortcutTray;->getIcon(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/content/ComponentName;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 3871
    :cond_1
    sget-object v7, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/launcher3/util/DualAppUtils;->supportDualApp(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, v4, Lcom/android/launcher3/common/base/item/ItemInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-static {v7}, Lcom/android/launcher3/util/DualAppUtils;->isDualAppId(Lcom/android/launcher3/common/compat/UserHandleCompat;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 3872
    sget-object v7, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    sget-object v10, Lcom/android/launcher3/home/HomeLoader;->sProfile:Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    iget-object v10, v10, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    .line 3873
    invoke-virtual {v10}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getIconSize()I

    move-result v10

    iget-object v11, v4, Lcom/android/launcher3/common/base/item/ItemInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {v11}, Lcom/android/launcher3/common/compat/UserHandleCompat;->getUser()Landroid/os/UserHandle;

    move-result-object v11

    .line 3872
    invoke-static {v7, v3, v10, v11}, Lcom/android/launcher3/util/DualAppUtils;->makeUserBadgedIcon(Landroid/content/Context;Landroid/graphics/Bitmap;ILandroid/os/UserHandle;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 3875
    :cond_2
    move-object v0, v4

    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    move-object v7, v0

    invoke-virtual {v7, v3}, Lcom/android/launcher3/common/base/item/IconInfo;->setIcon(Landroid/graphics/Bitmap;)V

    .line 3876
    check-cast v4, Lcom/android/launcher3/common/base/item/IconInfo;

    .end local v4    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3897
    .end local v1    # "allItemInHome":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .end local v3    # "icon":Landroid/graphics/Bitmap;
    .end local v5    # "originalIcon":Landroid/graphics/Bitmap;
    .end local v6    # "updatedIcons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 3881
    .restart local v1    # "allItemInHome":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .restart local v6    # "updatedIcons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    :cond_3
    :try_start_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    .line 3882
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeLoader;->getCallback()Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    move-result-object v2

    .line 3883
    .local v2, "callbacks":Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;
    if-nez v2, :cond_4

    .line 3884
    const-string v7, "HomeLoader"

    const-string v9, "updateShortcutIcons. Nobody to tell about the new app. Launcher is probably loading."

    invoke-static {v7, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3886
    monitor-exit v8

    .line 3898
    .end local v2    # "callbacks":Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;
    :goto_1
    return-void

    .line 3888
    .restart local v2    # "callbacks":Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;
    :cond_4
    sget-object v7, Lcom/android/launcher3/home/HomeLoader;->sHandler:Lcom/android/launcher3/common/model/DeferredHandler;

    new-instance v9, Lcom/android/launcher3/home/HomeLoader$37;

    invoke-direct {v9, p0, v2, v6}, Lcom/android/launcher3/home/HomeLoader$37;-><init>(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;Ljava/util/ArrayList;)V

    invoke-virtual {v7, v9}, Lcom/android/launcher3/common/model/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 3897
    .end local v2    # "callbacks":Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;
    :cond_5
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public updateUnavailablePackage(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;I)V
    .locals 0
    .param p1, "disabledPackages"    # Ljava/lang/String;
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .param p3, "reason"    # I

    .prologue
    .line 3855
    return-void
.end method
