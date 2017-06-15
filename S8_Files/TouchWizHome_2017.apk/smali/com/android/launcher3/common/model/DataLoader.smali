.class public abstract Lcom/android/launcher3/common/model/DataLoader;
.super Ljava/lang/Object;
.source "DataLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/common/model/DataLoader$ItemInfoFilter;,
        Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;,
        Lcom/android/launcher3/common/model/DataLoader$DataLoaderCallback;,
        Lcom/android/launcher3/common/model/DataLoader$PageLoaderTask;
    }
.end annotation


# static fields
.field protected static final STK_PKG_LIST:[Ljava/lang/String;

.field protected static final STK_SPLIT:Ljava/lang/String; = ";"

.field private static final TAG:Ljava/lang/String; = "DataLoader"

.field protected static sBadgeCache:Lcom/android/launcher3/common/model/BadgeCache;

.field protected static final sBgFolders:Lcom/android/launcher3/util/LongArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/LongArrayMap",
            "<",
            "Lcom/android/launcher3/folder/FolderInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected static final sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/LongArrayMap",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected static final sBgLock:Ljava/lang/Object;

.field protected static final sBindCompleteRunnables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field protected static sContentResolver:Landroid/content/ContentResolver;

.field protected static sContext:Landroid/content/Context;

.field protected static sFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

.field protected static sHandler:Lcom/android/launcher3/common/model/DeferredHandler;

.field protected static sIconCache:Lcom/android/launcher3/common/model/IconCache;

.field protected static volatile sInstallingPkgs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected static sIsLoadingAndBindingWorkspace:Z

.field protected static sIsSafeMode:Z

.field protected static sLauncherApps:Lcom/android/launcher3/common/compat/LauncherAppsCompat;

.field protected static sLauncherModel:Lcom/android/launcher3/LauncherModel;

.field private static final sLoaderList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/model/DataLoader;",
            ">;"
        }
    .end annotation
.end field

.field protected static sPackageManager:Landroid/content/pm/PackageManager;

.field protected static final sPendingPackages:Ljava/util/HashMap;
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

.field protected static sProfile:Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

.field protected static sUserManager:Lcom/android/launcher3/common/compat/UserManagerCompat;

.field protected static sWorkerHandler:Landroid/os/Handler;


# instance fields
.field public added:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mAllUsers:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Lcom/android/launcher3/common/compat/UserHandleCompat;",
            ">;"
        }
    .end annotation
.end field

.field protected final mBgOrderedScreens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected final mBgPagesItems:Ljava/util/HashMap;
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

.field protected final mDeferredBindRunnables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field protected mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

.field protected mIsPageLoaded:[Z

.field protected mIsSdCardReady:Z

.field protected mLoaderCallback:Lcom/android/launcher3/common/model/DataLoader$DataLoaderCallback;

.field protected mPageLoaderTask:Lcom/android/launcher3/common/model/DataLoader$PageLoaderTask;

.field protected mQuietModeUsers:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public modified:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;"
        }
    .end annotation
.end field

.field public removed:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 92
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/launcher3/common/model/DataLoader;->sBgLock:Ljava/lang/Object;

    .line 96
    new-instance v0, Lcom/android/launcher3/util/LongArrayMap;

    invoke-direct {v0}, Lcom/android/launcher3/util/LongArrayMap;-><init>()V

    sput-object v0, Lcom/android/launcher3/common/model/DataLoader;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    .line 99
    new-instance v0, Lcom/android/launcher3/util/LongArrayMap;

    invoke-direct {v0}, Lcom/android/launcher3/util/LongArrayMap;-><init>()V

    sput-object v0, Lcom/android/launcher3/common/model/DataLoader;->sBgFolders:Lcom/android/launcher3/util/LongArrayMap;

    .line 128
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/launcher3/common/model/DataLoader;->sPendingPackages:Ljava/util/HashMap;

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher3/common/model/DataLoader;->sBindCompleteRunnables:Ljava/util/ArrayList;

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher3/common/model/DataLoader;->sLoaderList:Ljava/util/ArrayList;

    .line 146
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.android.stk"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.android.stk2"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/launcher3/common/model/DataLoader;->STK_PKG_LIST:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/model/DataLoader;->mBgOrderedScreens:Ljava/util/ArrayList;

    .line 104
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/model/DataLoader;->mBgPagesItems:Ljava/util/HashMap;

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/model/DataLoader;->mDeferredBindRunnables:Ljava/util/ArrayList;

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/model/DataLoader;->added:Ljava/util/ArrayList;

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/model/DataLoader;->removed:Ljava/util/ArrayList;

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/model/DataLoader;->modified:Ljava/util/ArrayList;

    return-void
.end method

.method public static filterItemInfo(Ljava/lang/Iterable;Lcom/android/launcher3/common/model/DataLoader$ItemInfoFilter;Z)Ljava/util/ArrayList;
    .locals 9
    .param p1, "f"    # Lcom/android/launcher3/common/model/DataLoader$ItemInfoFilter;
    .param p2, "exceptWidget"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;",
            "Lcom/android/launcher3/common/model/DataLoader$ItemInfoFilter;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "infos":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    const/4 v8, 0x0

    .line 392
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 393
    .local v1, "filtered":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 394
    .local v2, "i":Lcom/android/launcher3/common/base/item/ItemInfo;
    instance-of v6, v2, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v6, :cond_1

    move-object v3, v2

    .line 395
    check-cast v3, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 396
    .local v3, "info":Lcom/android/launcher3/common/base/item/IconInfo;
    invoke-virtual {v3}, Lcom/android/launcher3/common/base/item/IconInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 397
    .local v0, "cn":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    invoke-interface {p1, v8, v3, v0}, Lcom/android/launcher3/common/model/DataLoader$ItemInfoFilter;->filterItem(Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/content/ComponentName;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 398
    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 400
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v3    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_1
    instance-of v6, v2, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v6, :cond_3

    move-object v3, v2

    .line 401
    check-cast v3, Lcom/android/launcher3/folder/FolderInfo;

    .line 402
    .local v3, "info":Lcom/android/launcher3/folder/FolderInfo;
    iget-object v6, v3, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 403
    .local v4, "s":Lcom/android/launcher3/common/base/item/IconInfo;
    invoke-virtual {v4}, Lcom/android/launcher3/common/base/item/IconInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 404
    .restart local v0    # "cn":Landroid/content/ComponentName;
    if-eqz v0, :cond_2

    invoke-interface {p1, v3, v4, v0}, Lcom/android/launcher3/common/model/DataLoader$ItemInfoFilter;->filterItem(Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/content/ComponentName;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 405
    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 408
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v3    # "info":Lcom/android/launcher3/folder/FolderInfo;
    .end local v4    # "s":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_3
    instance-of v6, v2, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    if-eqz v6, :cond_0

    if-nez p2, :cond_0

    move-object v3, v2

    .line 409
    check-cast v3, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    .line 410
    .local v3, "info":Lcom/android/launcher3/home/LauncherAppWidgetInfo;
    iget-object v0, v3, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    .line 411
    .restart local v0    # "cn":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    invoke-interface {p1, v8, v3, v0}, Lcom/android/launcher3/common/model/DataLoader$ItemInfoFilter;->filterItem(Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/content/ComponentName;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 412
    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 416
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v2    # "i":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v3    # "info":Lcom/android/launcher3/home/LauncherAppWidgetInfo;
    :cond_4
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v5
.end method

.method private static findActivity(Ljava/util/List;Landroid/content/ComponentName;)Z
    .locals 3
    .param p1, "component"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;",
            ">;",
            "Landroid/content/ComponentName;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 805
    .local p0, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;

    .line 806
    .local v0, "info":Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    invoke-virtual {v0}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 807
    const/4 v1, 0x1

    .line 810
    .end local v0    # "info":Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected static findActivityInfo(Ljava/util/List;Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    .locals 4
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;",
            ">;",
            "Landroid/content/ComponentName;",
            "Lcom/android/launcher3/common/compat/UserHandleCompat;",
            ")",
            "Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;"
        }
    .end annotation

    .prologue
    .local p0, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;>;"
    const/4 v1, 0x0

    .line 639
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move-object v0, v1

    .line 648
    :goto_0
    return-object v0

    .line 643
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;

    .line 644
    .local v0, "info":Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    invoke-virtual {v0}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getUser()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/android/launcher3/common/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .end local v0    # "info":Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    :cond_3
    move-object v0, v1

    .line 648
    goto :goto_0
.end method

.method public static getFolderInfo(I)Lcom/android/launcher3/folder/FolderInfo;
    .locals 4
    .param p0, "id"    # I

    .prologue
    .line 683
    sget-object v1, Lcom/android/launcher3/common/model/DataLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v1

    .line 684
    :try_start_0
    sget-object v0, Lcom/android/launcher3/common/model/DataLoader;->sBgFolders:Lcom/android/launcher3/util/LongArrayMap;

    int-to-long v2, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/folder/FolderInfo;

    monitor-exit v1

    return-object v0

    .line 685
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getItemInfoByComponentName(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;Z)Ljava/util/ArrayList;
    .locals 3
    .param p0, "cName"    # Landroid/content/ComponentName;
    .param p1, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .param p2, "exceptWidget"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Lcom/android/launcher3/common/compat/UserHandleCompat;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 375
    new-instance v0, Lcom/android/launcher3/common/model/DataLoader$2;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/common/model/DataLoader$2;-><init>(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    .line 385
    .local v0, "filter":Lcom/android/launcher3/common/model/DataLoader$ItemInfoFilter;
    sget-object v2, Lcom/android/launcher3/common/model/DataLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v2

    .line 386
    :try_start_0
    sget-object v1, Lcom/android/launcher3/common/model/DataLoader;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    invoke-static {v1, v0, p2}, Lcom/android/launcher3/common/model/DataLoader;->filterItemInfo(Ljava/lang/Iterable;Lcom/android/launcher3/common/model/DataLoader$ItemInfoFilter;Z)Ljava/util/ArrayList;

    move-result-object v1

    monitor-exit v2

    return-object v1

    .line 387
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getItemInfoByComponentName(Landroid/content/ComponentName;Ljava/util/ArrayList;Lcom/android/launcher3/common/compat/UserHandleCompat;Z)Ljava/util/ArrayList;
    .locals 3
    .param p1, "cName"    # Landroid/content/ComponentName;
    .param p3, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .param p4, "exceptWidget"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;",
            "Lcom/android/launcher3/common/compat/UserHandleCompat;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 785
    .local p2, "currentItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v0, Lcom/android/launcher3/common/model/DataLoader$4;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/launcher3/common/model/DataLoader$4;-><init>(Lcom/android/launcher3/common/model/DataLoader;Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    .line 795
    .local v0, "filter":Lcom/android/launcher3/common/model/DataLoader$ItemInfoFilter;
    sget-object v2, Lcom/android/launcher3/common/model/DataLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v2

    .line 796
    :try_start_0
    invoke-static {p2, v0, p4}, Lcom/android/launcher3/common/model/DataLoader;->filterItemInfo(Ljava/lang/Iterable;Lcom/android/launcher3/common/model/DataLoader$ItemInfoFilter;Z)Ljava/util/ArrayList;

    move-result-object v1

    monitor-exit v2

    return-object v1

    .line 797
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getItemList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 351
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 353
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    sget-object v3, Lcom/android/launcher3/common/model/DataLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v3

    .line 354
    :try_start_0
    sget-object v2, Lcom/android/launcher3/common/model/DataLoader;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v2}, Lcom/android/launcher3/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 355
    .local v0, "itemInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 357
    .end local v0    # "itemInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 358
    return-object v1
.end method

.method public static getItemsByPackageName(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Ljava/util/ArrayList;
    .locals 4
    .param p0, "pn"    # Ljava/lang/String;
    .param p1, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/launcher3/common/compat/UserHandleCompat;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 362
    new-instance v0, Lcom/android/launcher3/common/model/DataLoader$1;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/common/model/DataLoader$1;-><init>(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    .line 368
    .local v0, "filter":Lcom/android/launcher3/common/model/DataLoader$ItemInfoFilter;
    sget-object v2, Lcom/android/launcher3/common/model/DataLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v2

    .line 369
    :try_start_0
    sget-object v1, Lcom/android/launcher3/common/model/DataLoader;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    const/4 v3, 0x0

    invoke-static {v1, v0, v3}, Lcom/android/launcher3/common/model/DataLoader;->filterItemInfo(Ljava/lang/Iterable;Lcom/android/launcher3/common/model/DataLoader$ItemInfoFilter;Z)Ljava/util/ArrayList;

    move-result-object v1

    monitor-exit v2

    return-object v1

    .line 370
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static loadDefaultLayoutIfNecessary()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 466
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v5

    .line 467
    .local v5, "spKey":Ljava/lang/String;
    sget-object v6, Lcom/android/launcher3/common/model/DataLoader;->sContext:Landroid/content/Context;

    invoke-virtual {v6, v5, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 468
    .local v4, "sp":Landroid/content/SharedPreferences;
    const/4 v2, 0x0

    .line 469
    .local v2, "isEmptyDb":Z
    const/4 v0, 0x0

    .line 470
    .local v0, "SwitchedDb":Z
    const-string v6, "EMPTY_DATABASE_CREATED"

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 471
    const-string v6, "DataLoader"

    const-string v7, "loading default workspace"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    const/4 v2, 0x1

    .line 477
    .end local v2    # "isEmptyDb":Z
    :cond_0
    :goto_0
    if-eqz v2, :cond_4

    .line 478
    const/4 v1, 0x0

    .line 479
    .local v1, "autoInstallLayout":Lcom/android/launcher3/common/model/AutoInstallsLayout;
    if-nez v0, :cond_1

    .line 480
    sget-object v6, Lcom/android/launcher3/common/model/DataLoader;->sContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/launcher3/common/model/AutoInstallsLayout;->get(Landroid/content/Context;)Lcom/android/launcher3/common/model/AutoInstallsLayout;

    move-result-object v1

    .line 481
    sget-object v6, Lcom/android/launcher3/common/model/DataLoader;->sContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/launcher3/common/model/DefaultLayoutParser;->loadOmcIfNecessary(Landroid/content/Context;)V

    .line 483
    :cond_1
    sget-object v6, Lcom/android/launcher3/common/model/DataLoader;->sLoaderList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/model/DataLoader;

    .line 484
    .local v3, "loader":Lcom/android/launcher3/common/model/DataLoader;
    invoke-virtual {v3, v1, v0}, Lcom/android/launcher3/common/model/DataLoader;->loadDefaultLayout(Lcom/android/launcher3/common/model/AutoInstallsLayout;Z)V

    goto :goto_1

    .line 473
    .end local v1    # "autoInstallLayout":Lcom/android/launcher3/common/model/AutoInstallsLayout;
    .end local v3    # "loader":Lcom/android/launcher3/common/model/DataLoader;
    .restart local v2    # "isEmptyDb":Z
    :cond_2
    const-string v6, "EMPTY_DATABASE_SWITCHED"

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 474
    const-string v6, "DataLoader"

    const-string v7, "loading default workspace without switch table"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    const/4 v0, 0x1

    move v2, v0

    .local v2, "isEmptyDb":I
    goto :goto_0

    .line 486
    .end local v2    # "isEmptyDb":I
    .restart local v1    # "autoInstallLayout":Lcom/android/launcher3/common/model/AutoInstallsLayout;
    :cond_3
    if-nez v0, :cond_5

    .line 487
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getLauncherProvider()Lcom/android/launcher3/LauncherProvider;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/LauncherProvider;->clearFlagEmptyDbCreated()V

    .line 493
    .end local v1    # "autoInstallLayout":Lcom/android/launcher3/common/model/AutoInstallsLayout;
    :cond_4
    :goto_2
    sget-object v6, Lcom/android/launcher3/common/model/DataLoader;->sFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    invoke-virtual {v6}, Lcom/android/launcher3/common/model/FavoritesProvider;->checkChangedComponentExist()V

    .line 495
    if-eqz v2, :cond_6

    .line 496
    sget-object v6, Lcom/android/launcher3/common/model/DataLoader;->sLoaderList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/model/DataLoader;

    .line 497
    .restart local v3    # "loader":Lcom/android/launcher3/common/model/DataLoader;
    invoke-virtual {v3}, Lcom/android/launcher3/common/model/DataLoader;->loadDefaultLayoutCompleted()V

    goto :goto_3

    .line 489
    .end local v3    # "loader":Lcom/android/launcher3/common/model/DataLoader;
    .restart local v1    # "autoInstallLayout":Lcom/android/launcher3/common/model/AutoInstallsLayout;
    :cond_5
    sget-object v6, Lcom/android/launcher3/common/model/DataLoader;->sFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    invoke-virtual {v6}, Lcom/android/launcher3/common/model/FavoritesProvider;->clearFlagEmptyDbSwitched()V

    goto :goto_2

    .line 500
    .end local v1    # "autoInstallLayout":Lcom/android/launcher3/common/model/AutoInstallsLayout;
    :cond_6
    sget-object v6, Lcom/android/launcher3/common/model/DataLoader;->sContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/launcher3/common/customer/PostPositionController;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/customer/PostPositionController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/common/customer/PostPositionController;->checkAndEnablePositioner()V

    .line 501
    return-void
.end method

.method protected static runOnWorkerThread(Ljava/lang/Runnable;)V
    .locals 2
    .param p0, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 287
    sget-object v0, Lcom/android/launcher3/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 288
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 293
    :goto_0
    return-void

    .line 291
    :cond_0
    sget-object v0, Lcom/android/launcher3/common/model/DataLoader;->sWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static setDeviceProfile(Lcom/android/launcher3/common/deviceprofile/DeviceProfile;)V
    .locals 0
    .param p0, "dp"    # Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    .prologue
    .line 239
    sput-object p0, Lcom/android/launcher3/common/model/DataLoader;->sProfile:Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    .line 240
    return-void
.end method

.method public static setInstallingPackage(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 457
    sget-object v0, Lcom/android/launcher3/common/model/DataLoader;->sInstallingPkgs:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 458
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/launcher3/common/model/DataLoader;->sInstallingPkgs:Ljava/util/HashMap;

    .line 462
    :goto_0
    invoke-static {p0}, Lcom/android/launcher3/common/compat/PackageInstallerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/PackageInstallerCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/compat/PackageInstallerCompat;->updateAndGetActiveSessionCache()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/common/model/DataLoader;->sInstallingPkgs:Ljava/util/HashMap;

    .line 463
    return-void

    .line 460
    :cond_0
    sget-object v0, Lcom/android/launcher3/common/model/DataLoader;->sInstallingPkgs:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    goto :goto_0
.end method

.method public static setLoadingAndBindingWorkspace(Z)V
    .locals 0
    .param p0, "isLoadAndBinding"    # Z

    .prologue
    .line 322
    sput-boolean p0, Lcom/android/launcher3/common/model/DataLoader;->sIsLoadingAndBindingWorkspace:Z

    .line 323
    return-void
.end method

.method public static updateBadgeCounts(Ljava/util/Map;)Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/android/launcher3/common/model/BadgeCache$CacheKey;",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 425
    .local p0, "badgeCounts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/common/model/BadgeCache$CacheKey;Ljava/lang/Integer;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 426
    .local v7, "updated":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    sget-object v9, Lcom/android/launcher3/common/model/DataLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v9

    .line 427
    :try_start_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 428
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/launcher3/common/model/BadgeCache$CacheKey;Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/model/BadgeCache$CacheKey;

    .line 429
    .local v1, "cacheKey":Lcom/android/launcher3/common/model/BadgeCache$CacheKey;
    sget-object v8, Lcom/android/launcher3/common/model/DataLoader;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v8}, Lcom/android/launcher3/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 430
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 431
    .local v5, "itemInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    instance-of v8, v5, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v8, :cond_1

    .line 432
    move-object v0, v5

    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    move-object v3, v0

    .line 433
    .local v3, "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    iget-object v8, v1, Lcom/android/launcher3/common/model/BadgeCache$CacheKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Lcom/android/launcher3/common/base/item/IconInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, v1, Lcom/android/launcher3/common/model/BadgeCache$CacheKey;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    .line 434
    invoke-virtual {v3}, Lcom/android/launcher3/common/base/item/IconInfo;->getUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/android/launcher3/common/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 435
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 436
    .local v6, "newCount":I
    iget v8, v3, Lcom/android/launcher3/common/base/item/IconInfo;->mBadgeCount:I

    if-eq v8, v6, :cond_1

    .line 437
    iput v6, v3, Lcom/android/launcher3/common/base/item/IconInfo;->mBadgeCount:I

    .line 438
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 444
    .end local v1    # "cacheKey":Lcom/android/launcher3/common/model/BadgeCache$CacheKey;
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/launcher3/common/model/BadgeCache$CacheKey;Ljava/lang/Integer;>;"
    .end local v3    # "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .end local v5    # "itemInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v6    # "newCount":I
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    :cond_2
    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 445
    return-object v7
.end method

.method private declared-synchronized updatePackageActivities(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/List;Lcom/android/launcher3/common/compat/UserHandleCompat;)V
    .locals 14
    .param p1, "packageName"    # Ljava/lang/String;
    .param p4, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;",
            ">;",
            "Lcom/android/launcher3/common/compat/UserHandleCompat;",
            ")V"
        }
    .end annotation

    .prologue
    .line 737
    .local p2, "currentItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .local p3, "activities":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;>;"
    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 738
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 739
    .local v11, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    move-object v0, v11

    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    move-object v2, v0

    .line 740
    .local v2, "info":Lcom/android/launcher3/common/base/item/IconInfo;
    iget-object v8, v2, Lcom/android/launcher3/common/base/item/IconInfo;->componentName:Landroid/content/ComponentName;

    .line 741
    .local v8, "cn":Landroid/content/ComponentName;
    if-eqz v8, :cond_0

    iget-object v3, v11, Lcom/android/launcher3/common/base/item/ItemInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Lcom/android/launcher3/common/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 742
    move-object/from16 v0, p3

    invoke-static {v0, v8}, Lcom/android/launcher3/common/model/DataLoader;->findActivity(Ljava/util/List;Landroid/content/ComponentName;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 743
    iget-object v3, p0, Lcom/android/launcher3/common/model/DataLoader;->removed:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 744
    invoke-interface {v10}, Ljava/util/Iterator;->remove()V

    .line 746
    sget-object v3, Lcom/android/launcher3/common/model/DataLoader;->sIconCache:Lcom/android/launcher3/common/model/IconCache;

    move-object/from16 v0, p4

    invoke-virtual {v3, v8, v0}, Lcom/android/launcher3/common/model/IconCache;->remove(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    .line 747
    iget-object v3, p0, Lcom/android/launcher3/common/model/DataLoader;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    invoke-virtual {v3, v11}, Lcom/android/launcher3/common/model/FavoritesUpdater;->deleteItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 737
    .end local v2    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v8    # "cn":Landroid/content/ComponentName;
    .end local v10    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .end local v11    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 754
    .restart local v10    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    :cond_1
    :try_start_1
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_2
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;

    .line 755
    .local v4, "app":Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    invoke-virtual {v4}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v8

    .line 757
    .restart local v8    # "cn":Landroid/content/ComponentName;
    const/4 v3, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-direct {p0, v8, v0, v1, v3}, Lcom/android/launcher3/common/model/DataLoader;->getItemInfoByComponentName(Landroid/content/ComponentName;Ljava/util/ArrayList;Lcom/android/launcher3/common/compat/UserHandleCompat;Z)Ljava/util/ArrayList;

    move-result-object v12

    .line 760
    .local v12, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 761
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 762
    .restart local v11    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    move-object v0, v11

    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    move-object v9, v0

    .line 763
    .local v9, "icon":Lcom/android/launcher3/common/base/item/IconInfo;
    const/4 v5, 0x0

    iput v5, v9, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    .line 764
    iget-object v5, p0, Lcom/android/launcher3/common/model/DataLoader;->modified:Ljava/util/ArrayList;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 766
    .end local v9    # "icon":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v11    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_3
    sget-object v3, Lcom/android/launcher3/common/model/DataLoader;->sFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    if-eqz v3, :cond_2

    .line 767
    new-instance v2, Lcom/android/launcher3/common/base/item/IconInfo;

    sget-object v3, Lcom/android/launcher3/common/model/DataLoader;->sContext:Landroid/content/Context;

    sget-object v6, Lcom/android/launcher3/common/model/DataLoader;->sIconCache:Lcom/android/launcher3/common/model/IconCache;

    sget-object v5, Lcom/android/launcher3/common/model/DataLoader;->sUserManager:Lcom/android/launcher3/common/compat/UserManagerCompat;

    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Lcom/android/launcher3/common/compat/UserManagerCompat;->isQuietModeEnabled(Lcom/android/launcher3/common/compat/UserHandleCompat;)Z

    move-result v7

    move-object/from16 v5, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher3/common/base/item/IconInfo;-><init>(Landroid/content/Context;Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;Lcom/android/launcher3/common/compat/UserHandleCompat;Lcom/android/launcher3/common/model/IconCache;Z)V

    .line 768
    .restart local v2    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v3

    if-nez v3, :cond_4

    .line 769
    const-wide/16 v6, -0x66

    iput-wide v6, v2, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    .line 770
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/launcher3/common/base/item/IconInfo;->mDirty:Z

    .line 771
    sget-object v3, Lcom/android/launcher3/common/model/DataLoader;->sFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    invoke-virtual {v3}, Lcom/android/launcher3/common/model/FavoritesProvider;->generateNewItemId()J

    move-result-wide v6

    iput-wide v6, v2, Lcom/android/launcher3/common/base/item/IconInfo;->id:J

    .line 772
    const-string v3, "DataLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " createAppInfoIfNecessary ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    invoke-virtual {p0, v2}, Lcom/android/launcher3/common/model/DataLoader;->putItemToIdMap(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 774
    iget-object v3, p0, Lcom/android/launcher3/common/model/DataLoader;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    invoke-virtual {v3, v2}, Lcom/android/launcher3/common/model/FavoritesUpdater;->addItem(Lcom/android/launcher3/common/base/item/ItemInfo;)J

    .line 776
    :cond_4
    iget-object v3, p0, Lcom/android/launcher3/common/model/DataLoader;->added:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 779
    .end local v2    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v4    # "app":Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    .end local v8    # "cn":Landroid/content/ComponentName;
    .end local v12    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    :cond_5
    monitor-exit p0

    return-void
.end method


# virtual methods
.method protected declared-synchronized addAppToPendingPackages(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;

    .prologue
    .line 868
    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/android/launcher3/common/model/DataLoader;->sPendingPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 869
    .local v0, "pkgs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 870
    new-instance v0, Ljava/util/HashSet;

    .end local v0    # "pkgs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 871
    .restart local v0    # "pkgs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    sget-object v1, Lcom/android/launcher3/common/model/DataLoader;->sPendingPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 873
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 874
    monitor-exit p0

    return-void

    .line 868
    .end local v0    # "pkgs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected addDeferredBindRunnable(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 302
    iget-object v1, p0, Lcom/android/launcher3/common/model/DataLoader;->mDeferredBindRunnables:Ljava/util/ArrayList;

    monitor-enter v1

    .line 303
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/common/model/DataLoader;->mDeferredBindRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    monitor-exit v1

    .line 305
    return-void

    .line 304
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public abstract addPagesItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V
.end method

.method protected backupStkPositionIfNecessary(Ljava/lang/String;JJII)V
    .locals 10
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "container"    # J
    .param p4, "screen"    # J
    .param p6, "cellX"    # I
    .param p7, "cellY"    # I

    .prologue
    .line 815
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v6

    if-nez v6, :cond_1

    .line 839
    :cond_0
    :goto_0
    return-void

    .line 819
    :cond_1
    const/4 v3, 0x0

    .line 820
    .local v3, "needToBackupPosition":Z
    sget-object v7, Lcom/android/launcher3/common/model/DataLoader;->STK_PKG_LIST:[Ljava/lang/String;

    array-length v8, v7

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v8, :cond_2

    aget-object v5, v7, v6

    .line 821
    .local v5, "s":Ljava/lang/String;
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 822
    const/4 v3, 0x1

    .line 826
    .end local v5    # "s":Ljava/lang/String;
    :cond_2
    if-eqz v3, :cond_0

    .line 827
    sget-object v6, Lcom/android/launcher3/common/model/DataLoader;->sProfile:Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    iget-object v6, v6, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v6}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountX()I

    move-result v1

    .line 828
    .local v1, "countX":I
    sget-object v6, Lcom/android/launcher3/common/model/DataLoader;->sProfile:Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    iget-object v6, v6, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v6}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountY()I

    move-result v2

    .line 829
    .local v2, "countY":I
    if-ltz p6, :cond_3

    if-ltz p7, :cond_3

    move/from16 v0, p6

    if-ge v0, v1, :cond_3

    move/from16 v0, p7

    if-lt v0, v2, :cond_5

    .line 830
    :cond_3
    const-string v6, "DataLoader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Stk outside position cellX : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p6

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " cellY : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 820
    .end local v1    # "countX":I
    .end local v2    # "countY":I
    .restart local v5    # "s":Ljava/lang/String;
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 834
    .end local v5    # "s":Ljava/lang/String;
    .restart local v1    # "countX":I
    .restart local v2    # "countY":I
    :cond_5
    sget-object v6, Lcom/android/launcher3/common/model/DataLoader;->sContext:Landroid/content/Context;

    .line 835
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    .line 834
    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 835
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 836
    .local v4, "prefs":Landroid/content/SharedPreferences$Editor;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p7

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, p1, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 837
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0
.end method

.method public abstract bindItemsSync(ILcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V
.end method

.method public abstract bindPageItems(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V
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
.end method

.method public clearDeferredBindRunnable()V
    .locals 2

    .prologue
    .line 296
    iget-object v1, p0, Lcom/android/launcher3/common/model/DataLoader;->mDeferredBindRunnables:Ljava/util/ArrayList;

    monitor-enter v1

    .line 297
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/common/model/DataLoader;->mDeferredBindRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 298
    monitor-exit v1

    .line 299
    return-void

    .line 298
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected abstract clearSBgDataStructures()V
.end method

.method public abstract containPagesItem(Lcom/android/launcher3/common/base/item/ItemInfo;)Z
.end method

.method protected createLoaderTask(Z)V
    .locals 0
    .param p1, "isStopped"    # Z

    .prologue
    .line 680
    return-void
.end method

.method public executeLoaderTask(Lcom/android/launcher3/common/model/DataLoader$DataLoaderCallback;)V
    .locals 1
    .param p1, "loaderCallback"    # Lcom/android/launcher3/common/model/DataLoader$DataLoaderCallback;

    .prologue
    .line 670
    new-instance v0, Lcom/android/launcher3/common/model/DataLoader$3;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/common/model/DataLoader$3;-><init>(Lcom/android/launcher3/common/model/DataLoader;Lcom/android/launcher3/common/model/DataLoader$DataLoaderCallback;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/model/DataLoader;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 678
    return-void
.end method

.method public abstract filterCurrentPageItems(JLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
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
.end method

.method protected getAllApps()Ljava/util/ArrayList;
    .locals 5
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
    .line 335
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 336
    .local v0, "allApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    sget-object v3, Lcom/android/launcher3/common/model/DataLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v3

    .line 337
    :try_start_0
    sget-object v2, Lcom/android/launcher3/common/model/DataLoader;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v2}, Lcom/android/launcher3/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 338
    .local v1, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget v4, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    if-nez v4, :cond_0

    .line 339
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 342
    .end local v1    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
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

    .line 343
    return-object v0
.end method

.method public getBadgeCount(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)I
    .locals 2
    .param p1, "cn"    # Landroid/content/ComponentName;
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;

    .prologue
    .line 864
    sget-object v0, Lcom/android/launcher3/common/model/DataLoader;->sBadgeCache:Lcom/android/launcher3/common/model/BadgeCache;

    new-instance v1, Lcom/android/launcher3/common/model/BadgeCache$CacheKey;

    invoke-direct {v1, p1, p2}, Lcom/android/launcher3/common/model/BadgeCache$CacheKey;-><init>(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/model/BadgeCache;->getBadgeCount(Lcom/android/launcher3/common/model/BadgeCache$CacheKey;)I

    move-result v0

    return v0
.end method

.method protected getNeedTitleUpdateIcons(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 11
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
    .line 842
    .local p1, "allItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    sget-object v7, Lcom/android/launcher3/common/model/DataLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v7

    .line 843
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 844
    .local v3, "needUpdateItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 845
    .local v1, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    instance-of v5, v1, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v5, :cond_0

    iget-object v5, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v5, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    if-eqz v5, :cond_0

    .line 847
    new-instance v4, Landroid/content/Intent;

    move-object v0, v1

    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 848
    .local v4, "newIntent":Landroid/content/Intent;
    const-string v5, "android.intent.category.LAUNCHER"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 849
    iget-object v5, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 850
    sget-object v5, Lcom/android/launcher3/common/model/DataLoader;->sLauncherApps:Lcom/android/launcher3/common/compat/LauncherAppsCompat;

    invoke-virtual {v1}, Lcom/android/launcher3/common/base/item/ItemInfo;->getUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->resolveActivity(Landroid/content/Intent;Lcom/android/launcher3/common/compat/UserHandleCompat;)Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;

    move-result-object v2

    .line 851
    .local v2, "lai":Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    if-eqz v2, :cond_0

    .line 852
    move-object v0, v1

    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    move-object v5, v0

    sget-object v6, Lcom/android/launcher3/common/model/DataLoader;->sIconCache:Lcom/android/launcher3/common/model/IconCache;

    invoke-virtual {v6, v2}, Lcom/android/launcher3/common/model/IconCache;->getPackageItemTitle(Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v6}, Lcom/android/launcher3/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    .line 853
    move-object v0, v1

    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    move-object v5, v0

    sget-object v9, Lcom/android/launcher3/common/model/DataLoader;->sUserManager:Lcom/android/launcher3/common/compat/UserManagerCompat;

    move-object v0, v1

    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    move-object v6, v0

    iget-object v10, v6, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    move-object v0, v1

    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {v9, v10, v6}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getBadgedLabelForUser(Ljava/lang/CharSequence;Lcom/android/launcher3/common/compat/UserHandleCompat;)Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, v5, Lcom/android/launcher3/common/base/item/IconInfo;->contentDescription:Ljava/lang/CharSequence;

    .line 855
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 860
    .end local v1    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v2    # "lai":Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    .end local v3    # "needUpdateItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .end local v4    # "newIntent":Landroid/content/Intent;
    :catchall_0
    move-exception v5

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 859
    .restart local v3    # "needUpdateItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    :cond_1
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v3
.end method

.method protected getRestoredItemInfo(Landroid/database/Cursor;Landroid/content/ComponentName;Landroid/content/Intent;ILcom/android/launcher3/common/model/CursorInfo;)Lcom/android/launcher3/common/base/item/IconInfo;
    .locals 6
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "cn"    # Landroid/content/ComponentName;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "promiseType"    # I
    .param p5, "iconInfo"    # Lcom/android/launcher3/common/model/CursorInfo;

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 568
    new-instance v1, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-direct {v1}, Lcom/android/launcher3/common/base/item/IconInfo;-><init>()V

    .line 569
    .local v1, "info":Lcom/android/launcher3/common/base/item/IconInfo;
    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v3

    iput-object v3, v1, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    .line 571
    if-eqz p1, :cond_2

    iget v3, p5, Lcom/android/launcher3/common/model/CursorInfo;->itemTypeIndex:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    :goto_0
    iput v3, v1, Lcom/android/launcher3/common/base/item/IconInfo;->itemType:I

    .line 574
    and-int/lit8 v3, p4, 0x4

    if-eqz v3, :cond_3

    iget v3, v1, Lcom/android/launcher3/common/base/item/IconInfo;->itemType:I

    if-nez v3, :cond_3

    .line 576
    sget-object v3, Lcom/android/launcher3/common/model/DataLoader;->sContext:Landroid/content/Context;

    invoke-static {v3, p2, v1}, Lcom/android/launcher3/common/bnr/scloud/SCloudBnr;->getRestoreDummyInfo(Landroid/content/Context;Landroid/content/ComponentName;Lcom/android/launcher3/common/base/item/IconInfo;)V

    .line 577
    iget-object v3, v1, Lcom/android/launcher3/common/base/item/IconInfo;->mIcon:Landroid/graphics/Bitmap;

    if-nez v3, :cond_0

    .line 578
    const-string v3, "DataLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getRestoredItemInfo SCloud dummy icon is null cn = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    sget-object v3, Lcom/android/launcher3/common/model/DataLoader;->sIconCache:Lcom/android/launcher3/common/model/IconCache;

    iget-object v4, v1, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {v3, v4}, Lcom/android/launcher3/common/model/IconCache;->getDefaultIcon(Lcom/android/launcher3/common/compat/UserHandleCompat;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v1, Lcom/android/launcher3/common/base/item/IconInfo;->mIcon:Landroid/graphics/Bitmap;

    .line 610
    :cond_0
    :goto_1
    iget-object v3, v1, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    if-nez v3, :cond_1

    .line 611
    const-string v3, ""

    iput-object v3, v1, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    .line 614
    :cond_1
    sget-object v3, Lcom/android/launcher3/common/model/DataLoader;->sUserManager:Lcom/android/launcher3/common/compat/UserManagerCompat;

    iget-object v4, v1, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    iget-object v5, v1, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getBadgedLabelForUser(Ljava/lang/CharSequence;Lcom/android/launcher3/common/compat/UserHandleCompat;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v1, Lcom/android/launcher3/common/base/item/IconInfo;->contentDescription:Ljava/lang/CharSequence;

    .line 615
    iput-object p3, v1, Lcom/android/launcher3/common/base/item/IconInfo;->promisedIntent:Landroid/content/Intent;

    .line 616
    iput p4, v1, Lcom/android/launcher3/common/base/item/IconInfo;->status:I

    .line 617
    return-object v1

    :cond_2
    move v3, v4

    .line 571
    goto :goto_0

    .line 582
    :cond_3
    if-nez p1, :cond_5

    move-object v0, v2

    .line 584
    .local v0, "icon":Landroid/graphics/Bitmap;
    :goto_2
    if-nez v0, :cond_6

    .line 585
    sget-object v3, Lcom/android/launcher3/common/model/DataLoader;->sIconCache:Lcom/android/launcher3/common/model/IconCache;

    iget-object v5, v1, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {v3, v1, p3, v5, v4}, Lcom/android/launcher3/common/model/IconCache;->getTitleAndIcon(Lcom/android/launcher3/common/base/item/IconInfo;Landroid/content/Intent;Lcom/android/launcher3/common/compat/UserHandleCompat;Z)V

    .line 593
    :goto_3
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_7

    .line 594
    if-eqz p1, :cond_4

    iget v3, p5, Lcom/android/launcher3/common/model/CursorInfo;->titleIndex:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 595
    .local v2, "title":Ljava/lang/String;
    :cond_4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 596
    invoke-static {v2}, Lcom/android/launcher3/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    goto :goto_1

    .line 582
    .end local v0    # "icon":Landroid/graphics/Bitmap;
    .end local v2    # "title":Ljava/lang/String;
    :cond_5
    sget-object v3, Lcom/android/launcher3/common/model/DataLoader;->sContext:Landroid/content/Context;

    invoke-virtual {p5, p1, v1, v3}, Lcom/android/launcher3/common/model/CursorInfo;->loadIcon(Landroid/database/Cursor;Lcom/android/launcher3/common/base/item/IconInfo;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_2

    .line 587
    .restart local v0    # "icon":Landroid/graphics/Bitmap;
    :cond_6
    invoke-virtual {v1, v0}, Lcom/android/launcher3/common/base/item/IconInfo;->setOriginalIcon(Landroid/graphics/Bitmap;)V

    .line 588
    sget-object v3, Lcom/android/launcher3/common/model/DataLoader;->sContext:Landroid/content/Context;

    invoke-static {v3, v0, p2}, Lcom/android/launcher3/util/ShortcutTray;->getIcon(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/content/ComponentName;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 589
    invoke-virtual {v1, v0}, Lcom/android/launcher3/common/base/item/IconInfo;->setIcon(Landroid/graphics/Bitmap;)V

    .line 590
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/android/launcher3/common/base/item/IconInfo;->customIcon:Z

    goto :goto_3

    .line 598
    :cond_7
    and-int/lit8 v3, p4, 0x2

    if-nez v3, :cond_8

    and-int/lit8 v3, p4, 0x20

    if-nez v3, :cond_8

    and-int/lit8 v3, p4, 0x4

    if-eqz v3, :cond_a

    .line 601
    :cond_8
    iget-object v3, v1, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 602
    if-eqz p1, :cond_9

    iget v3, p5, Lcom/android/launcher3/common/model/CursorInfo;->titleIndex:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 603
    .restart local v2    # "title":Ljava/lang/String;
    :cond_9
    invoke-static {v2}, Lcom/android/launcher3/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    goto :goto_1

    .line 606
    .end local v2    # "title":Ljava/lang/String;
    :cond_a
    new-instance v3, Ljava/security/InvalidParameterException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid restoreType "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected getRestoredItemIntent(Landroid/content/Intent;I)Landroid/content/Intent;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "promiseType"    # I

    .prologue
    .line 625
    and-int/lit8 v1, p2, 0x1

    if-nez v1, :cond_0

    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_2

    .line 627
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 628
    .local v0, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/LauncherModel;->getMarketIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 632
    .end local v0    # "componentName":Landroid/content/ComponentName;
    .end local p1    # "intent":Landroid/content/Intent;
    :cond_1
    :goto_0
    return-object p1

    .line 629
    .restart local p1    # "intent":Landroid/content/Intent;
    :cond_2
    and-int/lit8 v1, p2, 0x20

    if-eqz v1, :cond_1

    .line 630
    invoke-static {}, Lcom/android/launcher3/LauncherModel;->getOmcIntent()Landroid/content/Intent;

    move-result-object p1

    goto :goto_0
.end method

.method protected getUnRestoredItems(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 11
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
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    const/4 v10, 0x0

    .line 504
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 505
    .local v4, "removeItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 507
    .local v5, "updateIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    sget-object v7, Lcom/android/launcher3/common/model/DataLoader;->sContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/LauncherAppsCompat;

    move-result-object v3

    .line 509
    .local v3, "launcherApps":Lcom/android/launcher3/common/compat/LauncherAppsCompat;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 510
    .local v2, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    instance-of v8, v2, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v8, :cond_0

    move-object v1, v2

    .line 511
    check-cast v1, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 513
    .local v1, "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    iget v8, v1, Lcom/android/launcher3/common/base/item/IconInfo;->status:I

    and-int/lit8 v8, v8, 0x4

    if-eqz v8, :cond_0

    .line 518
    iget-object v8, v1, Lcom/android/launcher3/common/base/item/IconInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v8, :cond_1

    .line 519
    iget-object v0, v1, Lcom/android/launcher3/common/base/item/IconInfo;->componentName:Landroid/content/ComponentName;

    .line 527
    .local v0, "cn":Landroid/content/ComponentName;
    :goto_1
    iget-object v8, v1, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {v3, v0, v8}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->isActivityEnabledForProfile(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 528
    iget-wide v8, v1, Lcom/android/launcher3/common/base/item/IconInfo;->id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 529
    iput v10, v1, Lcom/android/launcher3/common/base/item/IconInfo;->status:I

    goto :goto_0

    .line 520
    .end local v0    # "cn":Landroid/content/ComponentName;
    :cond_1
    iget-object v8, v1, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    if-eqz v8, :cond_2

    iget-object v8, v1, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 521
    iget-object v8, v1, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .restart local v0    # "cn":Landroid/content/ComponentName;
    goto :goto_1

    .line 523
    .end local v0    # "cn":Landroid/content/ComponentName;
    :cond_2
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 531
    .restart local v0    # "cn":Landroid/content/ComponentName;
    :cond_3
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 536
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v1    # "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v2    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    .line 537
    const-string v7, "DataLoader"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "update restored value "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 539
    .local v6, "values":Landroid/content/ContentValues;
    const-string v7, "restored"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 540
    sget-object v7, Lcom/android/launcher3/common/model/DataLoader;->sContentResolver:Landroid/content/ContentResolver;

    sget-object v8, Lcom/android/launcher3/common/model/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const-string v9, "_id"

    .line 541
    invoke-static {v9, v5}, Lcom/android/launcher3/Utilities;->createDbSelectionQuery(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    .line 540
    invoke-virtual {v7, v8, v6, v9, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 545
    .end local v6    # "values":Landroid/content/ContentValues;
    :cond_5
    return-object v4
.end method

.method protected abstract getUpdater()Lcom/android/launcher3/common/model/DataUpdater;
.end method

.method protected init(Landroid/content/Context;Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/LauncherModel;Lcom/android/launcher3/common/model/IconCache;Lcom/android/launcher3/common/model/BadgeCache;Lcom/android/launcher3/common/model/DataLoader;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "app"    # Lcom/android/launcher3/LauncherAppState;
    .param p3, "model"    # Lcom/android/launcher3/LauncherModel;
    .param p4, "cache"    # Lcom/android/launcher3/common/model/IconCache;
    .param p5, "badgeCache"    # Lcom/android/launcher3/common/model/BadgeCache;
    .param p6, "loader"    # Lcom/android/launcher3/common/model/DataLoader;

    .prologue
    const/4 v1, 0x1

    .line 196
    sget-object v0, Lcom/android/launcher3/common/model/DataLoader;->sContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 197
    sput-object p1, Lcom/android/launcher3/common/model/DataLoader;->sContext:Landroid/content/Context;

    .line 198
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/android/launcher3/LauncherModel;->getWorkerLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/launcher3/common/model/DataLoader;->sWorkerHandler:Landroid/os/Handler;

    .line 199
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/common/model/DataLoader;->sContentResolver:Landroid/content/ContentResolver;

    .line 200
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher3/common/model/DataLoader;->sIsSafeMode:Z

    .line 201
    invoke-static {p1}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/LauncherAppsCompat;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/common/model/DataLoader;->sLauncherApps:Lcom/android/launcher3/common/compat/LauncherAppsCompat;

    .line 202
    invoke-virtual {p2}, Lcom/android/launcher3/LauncherAppState;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/common/model/DataLoader;->sProfile:Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    .line 203
    invoke-static {p1}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/UserManagerCompat;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/common/model/DataLoader;->sUserManager:Lcom/android/launcher3/common/compat/UserManagerCompat;

    .line 204
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/common/model/DataLoader;->sPackageManager:Landroid/content/pm/PackageManager;

    .line 205
    sput-object p4, Lcom/android/launcher3/common/model/DataLoader;->sIconCache:Lcom/android/launcher3/common/model/IconCache;

    .line 206
    sput-object p5, Lcom/android/launcher3/common/model/DataLoader;->sBadgeCache:Lcom/android/launcher3/common/model/BadgeCache;

    .line 207
    sput-object p3, Lcom/android/launcher3/common/model/DataLoader;->sLauncherModel:Lcom/android/launcher3/LauncherModel;

    .line 208
    invoke-virtual {p3}, Lcom/android/launcher3/LauncherModel;->getHandler()Lcom/android/launcher3/common/model/DeferredHandler;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/common/model/DataLoader;->sHandler:Lcom/android/launcher3/common/model/DeferredHandler;

    .line 209
    invoke-static {}, Lcom/android/launcher3/common/model/FavoritesProvider;->getInstance()Lcom/android/launcher3/common/model/FavoritesProvider;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/common/model/DataLoader;->sFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    .line 212
    :cond_0
    const/4 v0, 0x0

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.android.launcher3.SYSTEM_READY"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/launcher3/common/model/DataLoader;->mIsSdCardReady:Z

    .line 213
    invoke-static {p1}, Lcom/android/launcher3/Utilities;->isExistSdCard(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/android/launcher3/common/model/DataLoader;->mIsSdCardReady:Z

    :cond_1
    iput-boolean v1, p0, Lcom/android/launcher3/common/model/DataLoader;->mIsSdCardReady:Z

    .line 214
    invoke-virtual {p0}, Lcom/android/launcher3/common/model/DataLoader;->updateUsersList()V

    .line 216
    sget-object v0, Lcom/android/launcher3/common/model/DataLoader;->sLoaderList:Ljava/util/ArrayList;

    invoke-virtual {v0, p6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 217
    sget-object v0, Lcom/android/launcher3/common/model/DataLoader;->sLoaderList:Ljava/util/ArrayList;

    invoke-virtual {v0, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    :cond_2
    return-void

    .line 212
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isNotAvailableApps(Ljava/lang/String;I)Z
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 653
    :try_start_0
    sget-object v7, Lcom/android/launcher3/common/model/DataLoader;->sPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v7, p1, p2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 654
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_2

    .line 655
    iget v7, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_3

    move v4, v5

    .line 656
    .local v4, "isSystemApp":Z
    :goto_0
    iget v7, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v8, 0x40000

    and-int/2addr v7, v8

    if-eqz v7, :cond_4

    move v2, v5

    .line 657
    .local v2, "externalInstalled":Z
    :goto_1
    if-nez v4, :cond_5

    if-nez v2, :cond_5

    iget v7, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v8, 0x800000

    and-int/2addr v7, v8

    if-eqz v7, :cond_5

    move v3, v5

    .line 660
    .local v3, "internalInstalled":Z
    :goto_2
    sget-boolean v7, Lcom/android/launcher3/common/model/DataLoader;->sIsSafeMode:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v7, :cond_0

    if-nez v3, :cond_1

    :cond_0
    if-eqz v2, :cond_6

    :cond_1
    :goto_3
    move v6, v5

    .line 665
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "externalInstalled":Z
    .end local v3    # "internalInstalled":Z
    .end local v4    # "isSystemApp":Z
    :cond_2
    :goto_4
    return v6

    .restart local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_3
    move v4, v6

    .line 655
    goto :goto_0

    .restart local v4    # "isSystemApp":Z
    :cond_4
    move v2, v6

    .line 656
    goto :goto_1

    .restart local v2    # "externalInstalled":Z
    :cond_5
    move v3, v6

    .line 657
    goto :goto_2

    .restart local v3    # "internalInstalled":Z
    :cond_6
    move v5, v6

    .line 660
    goto :goto_3

    .line 664
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "externalInstalled":Z
    .end local v3    # "internalInstalled":Z
    .end local v4    # "isSystemApp":Z
    :catch_0
    move-exception v1

    .line 665
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_4
.end method

.method protected isStopped(Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)Z
    .locals 1
    .param p1, "task"    # Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;

    .prologue
    .line 318
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-interface {p1}, Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;->isStopped()Z

    move-result v0

    goto :goto_0
.end method

.method protected loadDefaultLayout(Lcom/android/launcher3/common/model/AutoInstallsLayout;Z)V
    .locals 0
    .param p1, "autoInstallLayout"    # Lcom/android/launcher3/common/model/AutoInstallsLayout;
    .param p2, "isSwitchedDb"    # Z

    .prologue
    .line 548
    return-void
.end method

.method protected loadDefaultLayoutCompleted()V
    .locals 0

    .prologue
    .line 550
    return-void
.end method

.method protected abstract loadPageItems(ILcom/android/launcher3/common/model/DataLoader$DataLoaderState;)Ljava/util/ArrayList;
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
.end method

.method protected makeFoldersIdToString(Lcom/android/launcher3/util/LongArrayMap;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/util/LongArrayMap",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 243
    .local p1, "folders":Lcom/android/launcher3/util/LongArrayMap;, "Lcom/android/launcher3/util/LongArrayMap<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v1, Lcom/android/launcher3/util/StringJoiner;

    const-string v2, ","

    invoke-direct {v1, v2}, Lcom/android/launcher3/util/StringJoiner;-><init>(Ljava/lang/String;)V

    .line 244
    .local v1, "joiner":Lcom/android/launcher3/util/StringJoiner;
    invoke-virtual {p1}, Lcom/android/launcher3/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 245
    .local v0, "folder":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-wide v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    invoke-virtual {v1, v4, v5}, Lcom/android/launcher3/util/StringJoiner;->append(J)V

    goto :goto_0

    .line 247
    .end local v0    # "folder":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_0
    invoke-virtual {v1}, Lcom/android/launcher3/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method protected putItemToIdMap(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 4
    .param p1, "info"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 326
    sget-object v1, Lcom/android/launcher3/common/model/DataLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v1

    .line 327
    :try_start_0
    sget-object v0, Lcom/android/launcher3/common/model/DataLoader;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    iget-wide v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    invoke-virtual {v0, v2, v3, p1}, Lcom/android/launcher3/util/LongArrayMap;->put(JLjava/lang/Object;)V

    .line 328
    instance-of v0, p1, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v0, :cond_0

    .line 329
    sget-object v0, Lcom/android/launcher3/common/model/DataLoader;->sBgFolders:Lcom/android/launcher3/util/LongArrayMap;

    iget-wide v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    check-cast p1, Lcom/android/launcher3/folder/FolderInfo;

    .end local p1    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    invoke-virtual {v0, v2, v3, p1}, Lcom/android/launcher3/util/LongArrayMap;->put(JLjava/lang/Object;)V

    .line 331
    :cond_0
    monitor-exit v1

    .line 332
    return-void

    .line 331
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removePackage(Ljava/lang/String;Ljava/util/ArrayList;Lcom/android/launcher3/common/compat/UserHandleCompat;)V
    .locals 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p3, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;",
            "Lcom/android/launcher3/common/compat/UserHandleCompat;",
            ")V"
        }
    .end annotation

    .prologue
    .line 711
    .local p2, "currentItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 712
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher3/common/base/item/ItemInfo;

    .local v11, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    move-object v9, v11

    .line 713
    check-cast v9, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 714
    .local v9, "info":Lcom/android/launcher3/common/base/item/IconInfo;
    iget-object v8, v9, Lcom/android/launcher3/common/base/item/IconInfo;->componentName:Landroid/content/ComponentName;

    .line 715
    .local v8, "cn":Landroid/content/ComponentName;
    if-eqz v8, :cond_0

    iget-object v0, v11, Lcom/android/launcher3/common/base/item/ItemInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {p3, v0}, Lcom/android/launcher3/common/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 716
    iget-object v0, p0, Lcom/android/launcher3/common/model/DataLoader;->removed:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 717
    invoke-interface {v10}, Ljava/util/Iterator;->remove()V

    .line 719
    iget-wide v2, v9, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    iget-wide v4, v9, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    iget v6, v9, Lcom/android/launcher3/common/base/item/IconInfo;->cellX:I

    iget v7, v9, Lcom/android/launcher3/common/base/item/IconInfo;->cellY:I

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/common/model/DataLoader;->backupStkPositionIfNecessary(Ljava/lang/String;JJII)V

    .line 721
    sget-object v0, Lcom/android/launcher3/common/model/DataLoader;->sIconCache:Lcom/android/launcher3/common/model/IconCache;

    invoke-virtual {v0, v8, p3}, Lcom/android/launcher3/common/model/IconCache;->remove(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    .line 722
    iget-object v0, p0, Lcom/android/launcher3/common/model/DataLoader;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    invoke-virtual {v0, v11}, Lcom/android/launcher3/common/model/FavoritesUpdater;->deleteItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto :goto_0

    .line 725
    .end local v8    # "cn":Landroid/content/ComponentName;
    .end local v9    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v11    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_1
    return-void
.end method

.method public abstract removePagesItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V
.end method

.method public abstract removeUnRestoredItems()V
.end method

.method protected runOnMainThread(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 274
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 276
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 280
    :goto_0
    return-void

    .line 278
    :cond_0
    sget-object v0, Lcom/android/launcher3/common/model/DataLoader;->sHandler:Lcom/android/launcher3/common/model/DeferredHandler;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/model/DeferredHandler;->post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected setBadgeCount(Lcom/android/launcher3/common/base/item/IconInfo;)V
    .locals 4
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/IconInfo;

    .prologue
    .line 453
    sget-object v0, Lcom/android/launcher3/common/model/DataLoader;->sBadgeCache:Lcom/android/launcher3/common/model/BadgeCache;

    new-instance v1, Lcom/android/launcher3/common/model/BadgeCache$CacheKey;

    invoke-virtual {p1}, Lcom/android/launcher3/common/base/item/IconInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v2

    iget-object v3, p1, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-direct {v1, v2, v3}, Lcom/android/launcher3/common/model/BadgeCache$CacheKey;-><init>(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/model/BadgeCache;->getBadgeCount(Lcom/android/launcher3/common/model/BadgeCache$CacheKey;)I

    move-result v0

    iput v0, p1, Lcom/android/launcher3/common/base/item/IconInfo;->mBadgeCount:I

    .line 454
    return-void
.end method

.method public setLoaderTaskStop(Z)V
    .locals 4
    .param p1, "isStopped"    # Z

    .prologue
    .line 308
    const-string v1, "DataLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setLoaderTaskStop isStopped "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-object v0, p0, Lcom/android/launcher3/common/model/DataLoader;->mPageLoaderTask:Lcom/android/launcher3/common/model/DataLoader$PageLoaderTask;

    .line 310
    .local v0, "oldTask":Lcom/android/launcher3/common/model/DataLoader$PageLoaderTask;
    if-eqz v0, :cond_0

    .line 311
    const-string v1, "DataLoader"

    const-string v2, "oldTask is not null. set stop & cancel"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/model/DataLoader$PageLoaderTask;->setStopped(Z)V

    .line 313
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/model/DataLoader$PageLoaderTask;->cancel(Z)Z

    .line 315
    :cond_0
    return-void
.end method

.method public abstract setOrderedScreen(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setup(Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V
.end method

.method protected sortItemsInFolder(Lcom/android/launcher3/util/LongArrayMap;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/util/LongArrayMap",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 251
    .local p1, "folders":Lcom/android/launcher3/util/LongArrayMap;, "Lcom/android/launcher3/util/LongArrayMap<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    if-nez p1, :cond_1

    .line 267
    :cond_0
    return-void

    .line 253
    :cond_1
    invoke-virtual {p1}, Lcom/android/launcher3/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/item/ItemInfo;

    .local v2, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    move-object v0, v2

    .line 254
    check-cast v0, Lcom/android/launcher3/folder/FolderInfo;

    .line 255
    .local v0, "folder":Lcom/android/launcher3/folder/FolderInfo;
    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderInfo;->sortContents()V

    .line 256
    const/4 v3, 0x0

    .line 257
    .local v3, "pos":I
    iget-object v4, v0, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    .local v1, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    move-object v4, v1

    .line 258
    check-cast v4, Lcom/android/launcher3/common/base/item/IconInfo;

    iget-boolean v4, v4, Lcom/android/launcher3/common/base/item/IconInfo;->usingLowResIcon:Z

    if-eqz v4, :cond_4

    .line 259
    check-cast v1, Lcom/android/launcher3/common/base/item/IconInfo;

    .end local v1    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    sget-object v4, Lcom/android/launcher3/common/model/DataLoader;->sIconCache:Lcom/android/launcher3/common/model/IconCache;

    const/4 v7, 0x0

    invoke-virtual {v1, v4, v7}, Lcom/android/launcher3/common/base/item/IconInfo;->updateIcon(Lcom/android/launcher3/common/model/IconCache;Z)V

    .line 261
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 262
    const/16 v4, 0x9

    if-lt v3, v4, :cond_3

    goto :goto_0
.end method

.method public abstract titleUpdate()V
.end method

.method public abstract unbindItemsOnMainThread()V
.end method

.method protected updateItem(JLandroid/content/ContentValues;)V
    .locals 7
    .param p1, "itemId"    # J
    .param p3, "update"    # Landroid/content/ContentValues;

    .prologue
    .line 555
    sget-object v0, Lcom/android/launcher3/common/model/DataLoader;->sContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/launcher3/common/model/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "_id= ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 559
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 555
    invoke-virtual {v0, v1, p3, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 560
    return-void
.end method

.method public updatePackage(Ljava/lang/String;Ljava/util/ArrayList;Lcom/android/launcher3/common/compat/UserHandleCompat;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p3, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;",
            "Lcom/android/launcher3/common/compat/UserHandleCompat;",
            ")V"
        }
    .end annotation

    .prologue
    .line 693
    .local p2, "currentItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    sget-object v1, Lcom/android/launcher3/common/model/DataLoader;->sLauncherApps:Lcom/android/launcher3/common/compat/LauncherAppsCompat;

    invoke-virtual {v1, p1, p3}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object v0

    .line 694
    .local v0, "matches":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;>;"
    const-string v1, "DataLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updatePackage:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 697
    const-string v1, "com.sec.android.app.magnifier"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 704
    :goto_0
    return-void

    .line 700
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/common/model/DataLoader;->removePackage(Ljava/lang/String;Ljava/util/ArrayList;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    goto :goto_0

    .line 702
    :cond_1
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/launcher3/common/model/DataLoader;->updatePackageActivities(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/List;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    goto :goto_0
.end method

.method public abstract updatePackageFlags(Lcom/android/launcher3/util/StringFilter;Lcom/android/launcher3/common/compat/UserHandleCompat;Lcom/android/launcher3/util/FlagOp;)V
.end method

.method public abstract updatePagesItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V
.end method

.method public abstract updateUnavailablePackage(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;I)V
.end method

.method public updateUsersList()V
    .locals 6

    .prologue
    .line 222
    iget-object v3, p0, Lcom/android/launcher3/common/model/DataLoader;->mAllUsers:Landroid/util/LongSparseArray;

    if-nez v3, :cond_0

    .line 223
    new-instance v3, Landroid/util/LongSparseArray;

    invoke-direct {v3}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v3, p0, Lcom/android/launcher3/common/model/DataLoader;->mAllUsers:Landroid/util/LongSparseArray;

    .line 225
    :cond_0
    iget-object v3, p0, Lcom/android/launcher3/common/model/DataLoader;->mQuietModeUsers:Landroid/util/LongSparseArray;

    if-nez v3, :cond_1

    .line 226
    new-instance v3, Landroid/util/LongSparseArray;

    invoke-direct {v3}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v3, p0, Lcom/android/launcher3/common/model/DataLoader;->mQuietModeUsers:Landroid/util/LongSparseArray;

    .line 229
    :cond_1
    iget-object v3, p0, Lcom/android/launcher3/common/model/DataLoader;->mAllUsers:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/util/LongSparseArray;->clear()V

    .line 230
    iget-object v3, p0, Lcom/android/launcher3/common/model/DataLoader;->mQuietModeUsers:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/util/LongSparseArray;->clear()V

    .line 231
    sget-object v3, Lcom/android/launcher3/common/model/DataLoader;->sUserManager:Lcom/android/launcher3/common/compat/UserManagerCompat;

    invoke-virtual {v3}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getUserProfiles()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/compat/UserHandleCompat;

    .line 232
    .local v2, "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    sget-object v4, Lcom/android/launcher3/common/model/DataLoader;->sUserManager:Lcom/android/launcher3/common/compat/UserManagerCompat;

    invoke-virtual {v4, v2}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher3/common/compat/UserHandleCompat;)J

    move-result-wide v0

    .line 233
    .local v0, "serialNo":J
    iget-object v4, p0, Lcom/android/launcher3/common/model/DataLoader;->mAllUsers:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v0, v1, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 234
    iget-object v4, p0, Lcom/android/launcher3/common/model/DataLoader;->mQuietModeUsers:Landroid/util/LongSparseArray;

    sget-object v5, Lcom/android/launcher3/common/model/DataLoader;->sUserManager:Lcom/android/launcher3/common/compat/UserManagerCompat;

    invoke-virtual {v5, v2}, Lcom/android/launcher3/common/compat/UserManagerCompat;->isQuietModeEnabled(Lcom/android/launcher3/common/compat/UserHandleCompat;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v0, v1, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    .line 236
    .end local v0    # "serialNo":J
    .end local v2    # "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    :cond_2
    return-void
.end method
