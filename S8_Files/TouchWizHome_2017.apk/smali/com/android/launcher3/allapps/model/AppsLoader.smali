.class public Lcom/android/launcher3/allapps/model/AppsLoader;
.super Lcom/android/launcher3/common/model/DataLoader;
.source "AppsLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;,
        Lcom/android/launcher3/allapps/model/AppsLoader$Normalizer;
    }
.end annotation


# static fields
.field private static final INVALID_SCREEN_ID:J = -0x1L

.field private static final ITEMS_CHUNK:I = 0x2

.field public static final MENU_ALPHA_NORMALIZER:Lcom/android/launcher3/allapps/model/AppsLoader$Normalizer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/allapps/model/AppsLoader$Normalizer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final MENU_CUSTOM_NORMALIZER:Lcom/android/launcher3/allapps/model/AppsLoader$Normalizer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/allapps/model/AppsLoader$Normalizer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final MENU_CUSTOM_TIDE_UP_NORMALIZER:Lcom/android/launcher3/allapps/model/AppsLoader$Normalizer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/allapps/model/AppsLoader$Normalizer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "AppsLoader"

.field private static mCellCountX:I

.field private static final mNormalizeLock:Ljava/lang/Object;

.field private static sCollator:Ljava/text/Collator;


# instance fields
.field private final DEBUG_LOADERS:Z

.field private mAllAppsComponentKey:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/util/ComponentKey;",
            ">;"
        }
    .end annotation
.end field

.field private mBgDuplicateCheckList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/util/ComponentKey;",
            ">;"
        }
    .end annotation
.end field

.field private mCallbacks:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private mIsFirstBind:Z

.field private final mLock:Ljava/lang/Object;

.field private mMaxItemsPerPage:I

.field private mNormalizer:Lcom/android/launcher3/allapps/model/AppsLoader$Normalizer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/allapps/model/AppsLoader$Normalizer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mTotalPageNumber:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 90
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/launcher3/allapps/model/AppsLoader;->mNormalizeLock:Ljava/lang/Object;

    .line 139
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/allapps/model/AppsLoader;->sCollator:Ljava/text/Collator;

    .line 147
    const/4 v0, 0x4

    sput v0, Lcom/android/launcher3/allapps/model/AppsLoader;->mCellCountX:I

    .line 324
    new-instance v0, Lcom/android/launcher3/allapps/model/AppsLoader$3;

    invoke-direct {v0}, Lcom/android/launcher3/allapps/model/AppsLoader$3;-><init>()V

    sput-object v0, Lcom/android/launcher3/allapps/model/AppsLoader;->MENU_ALPHA_NORMALIZER:Lcom/android/launcher3/allapps/model/AppsLoader$Normalizer;

    .line 1788
    new-instance v0, Lcom/android/launcher3/allapps/model/AppsLoader$26;

    invoke-direct {v0}, Lcom/android/launcher3/allapps/model/AppsLoader$26;-><init>()V

    sput-object v0, Lcom/android/launcher3/allapps/model/AppsLoader;->MENU_CUSTOM_NORMALIZER:Lcom/android/launcher3/allapps/model/AppsLoader$Normalizer;

    .line 1916
    new-instance v0, Lcom/android/launcher3/allapps/model/AppsLoader$27;

    invoke-direct {v0}, Lcom/android/launcher3/allapps/model/AppsLoader$27;-><init>()V

    sput-object v0, Lcom/android/launcher3/allapps/model/AppsLoader;->MENU_CUSTOM_TIDE_UP_NORMALIZER:Lcom/android/launcher3/allapps/model/AppsLoader$Normalizer;

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
    .line 187
    invoke-direct {p0}, Lcom/android/launcher3/common/model/DataLoader;-><init>()V

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->DEBUG_LOADERS:Z

    .line 89
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mLock:Ljava/lang/Object;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mBgDuplicateCheckList:Ljava/util/ArrayList;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mAllAppsComponentKey:Ljava/util/ArrayList;

    .line 146
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mMaxItemsPerPage:I

    .line 155
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mIsFirstBind:Z

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p0

    .line 188
    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/allapps/model/AppsLoader;->init(Landroid/content/Context;Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/LauncherModel;Lcom/android/launcher3/common/model/IconCache;Lcom/android/launcher3/common/model/BadgeCache;Lcom/android/launcher3/common/model/DataLoader;)V

    .line 189
    new-instance v0, Lcom/android/launcher3/common/model/FavoritesUpdater;

    invoke-direct {v0, p1, p3, p4, p0}, Lcom/android/launcher3/common/model/FavoritesUpdater;-><init>(Landroid/content/Context;Lcom/android/launcher3/LauncherModel;Lcom/android/launcher3/common/model/IconCache;Lcom/android/launcher3/common/model/DataLoader;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    .line 190
    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/android/launcher3/allapps/model/AppsLoader;->mNormalizeLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher3/allapps/model/AppsLoader;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/model/AppsLoader;

    .prologue
    .line 84
    iget v0, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mTotalPageNumber:I

    return v0
.end method

.method static synthetic access$1000()Z
    .locals 1

    .prologue
    .line 84
    sget-boolean v0, Lcom/android/launcher3/allapps/model/AppsLoader;->sIsLoadingAndBindingWorkspace:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/launcher3/allapps/model/AppsLoader;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/allapps/model/AppsLoader;
    .param p1, "x1"    # I

    .prologue
    .line 84
    iput p1, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mTotalPageNumber:I

    return p1
.end method

.method static synthetic access$1100()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/android/launcher3/allapps/model/AppsLoader;->sBindCompleteRunnables:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1200()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/android/launcher3/allapps/model/AppsLoader;->sBindCompleteRunnables:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1300(Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/Runnable;

    .prologue
    .line 84
    invoke-static {p0}, Lcom/android/launcher3/allapps/model/AppsLoader;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/launcher3/allapps/model/AppsLoader;Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/model/AppsLoader;
    .param p1, "x1"    # Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;
    .param p2, "x2"    # Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/allapps/model/AppsLoader;->tryGetCallbacks(Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500()Lcom/android/launcher3/LauncherModel;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/android/launcher3/allapps/model/AppsLoader;->sLauncherModel:Lcom/android/launcher3/LauncherModel;

    return-object v0
.end method

.method static synthetic access$1600()Lcom/android/launcher3/LauncherModel;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/android/launcher3/allapps/model/AppsLoader;->sLauncherModel:Lcom/android/launcher3/LauncherModel;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/launcher3/allapps/model/AppsLoader;)Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/model/AppsLoader;

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/launcher3/allapps/model/AppsLoader;->getCallback()Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800()Landroid/content/Context;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/android/launcher3/allapps/model/AppsLoader;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/launcher3/allapps/model/AppsLoader;)Lcom/android/launcher3/common/model/FavoritesUpdater;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/model/AppsLoader;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher3/allapps/model/AppsLoader;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/model/AppsLoader;

    .prologue
    .line 84
    iget v0, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mMaxItemsPerPage:I

    return v0
.end method

.method static synthetic access$2000()Lcom/android/launcher3/LauncherModel;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/android/launcher3/allapps/model/AppsLoader;->sLauncherModel:Lcom/android/launcher3/LauncherModel;

    return-object v0
.end method

.method static synthetic access$2100()Landroid/content/Context;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/android/launcher3/allapps/model/AppsLoader;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/launcher3/allapps/model/AppsLoader;)Lcom/android/launcher3/common/model/FavoritesUpdater;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/model/AppsLoader;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    return-object v0
.end method

.method static synthetic access$2300()Lcom/android/launcher3/LauncherModel;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/android/launcher3/allapps/model/AppsLoader;->sLauncherModel:Lcom/android/launcher3/LauncherModel;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/launcher3/allapps/model/AppsLoader;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/allapps/model/AppsLoader;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/model/AppsLoader;->runOrAddDifferRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$2500()Lcom/android/launcher3/LauncherModel;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/android/launcher3/allapps/model/AppsLoader;->sLauncherModel:Lcom/android/launcher3/LauncherModel;

    return-object v0
.end method

.method static synthetic access$2600()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/android/launcher3/allapps/model/AppsLoader;->sBgLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2700()Lcom/android/launcher3/util/LongArrayMap;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/android/launcher3/allapps/model/AppsLoader;->sBgFolders:Lcom/android/launcher3/util/LongArrayMap;

    return-object v0
.end method

.method static synthetic access$2800()Landroid/content/Context;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/android/launcher3/allapps/model/AppsLoader;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/launcher3/allapps/model/AppsLoader;)Lcom/android/launcher3/common/model/FavoritesUpdater;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/model/AppsLoader;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    return-object v0
.end method

.method static synthetic access$3000()Lcom/android/launcher3/LauncherModel;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/android/launcher3/allapps/model/AppsLoader;->sLauncherModel:Lcom/android/launcher3/LauncherModel;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/launcher3/allapps/model/AppsLoader;[Z)[Z
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/allapps/model/AppsLoader;
    .param p1, "x1"    # [Z

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mIsPageLoaded:[Z

    return-object p1
.end method

.method static synthetic access$3100()Landroid/content/Context;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/android/launcher3/allapps/model/AppsLoader;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/launcher3/allapps/model/AppsLoader;)Lcom/android/launcher3/common/model/FavoritesUpdater;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/model/AppsLoader;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    return-object v0
.end method

.method static synthetic access$3300(JJ)I
    .locals 2
    .param p0, "x0"    # J
    .param p2, "x1"    # J

    .prologue
    .line 84
    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher3/allapps/model/AppsLoader;->longCompare(JJ)I

    move-result v0

    return v0
.end method

.method static synthetic access$3400(II)I
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # I

    .prologue
    .line 84
    invoke-static {p0, p1}, Lcom/android/launcher3/allapps/model/AppsLoader;->integerCompare(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$3500()Lcom/android/launcher3/LauncherModel;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/android/launcher3/allapps/model/AppsLoader;->sLauncherModel:Lcom/android/launcher3/LauncherModel;

    return-object v0
.end method

.method static synthetic access$3600()Lcom/android/launcher3/LauncherModel;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/android/launcher3/allapps/model/AppsLoader;->sLauncherModel:Lcom/android/launcher3/LauncherModel;

    return-object v0
.end method

.method static synthetic access$3700()Lcom/android/launcher3/common/model/IconCache;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/android/launcher3/allapps/model/AppsLoader;->sIconCache:Lcom/android/launcher3/common/model/IconCache;

    return-object v0
.end method

.method static synthetic access$3800()Lcom/android/launcher3/common/model/IconCache;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/android/launcher3/allapps/model/AppsLoader;->sIconCache:Lcom/android/launcher3/common/model/IconCache;

    return-object v0
.end method

.method static synthetic access$3900()Lcom/android/launcher3/LauncherModel;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/android/launcher3/allapps/model/AppsLoader;->sLauncherModel:Lcom/android/launcher3/LauncherModel;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/launcher3/allapps/model/AppsLoader;)[Z
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/model/AppsLoader;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mIsPageLoaded:[Z

    return-object v0
.end method

.method static synthetic access$4000()Lcom/android/launcher3/LauncherModel;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/android/launcher3/allapps/model/AppsLoader;->sLauncherModel:Lcom/android/launcher3/LauncherModel;

    return-object v0
.end method

.method static synthetic access$4100()Lcom/android/launcher3/LauncherModel;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/android/launcher3/allapps/model/AppsLoader;->sLauncherModel:Lcom/android/launcher3/LauncherModel;

    return-object v0
.end method

.method static synthetic access$4200()Lcom/android/launcher3/LauncherModel;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/android/launcher3/allapps/model/AppsLoader;->sLauncherModel:Lcom/android/launcher3/LauncherModel;

    return-object v0
.end method

.method static synthetic access$4300()Lcom/android/launcher3/LauncherModel;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/android/launcher3/allapps/model/AppsLoader;->sLauncherModel:Lcom/android/launcher3/LauncherModel;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/launcher3/allapps/model/AppsLoader;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/model/AppsLoader;
    .param p1, "x1"    # Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/model/AppsLoader;->isStopped(Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/launcher3/allapps/model/AppsLoader;)[Z
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/model/AppsLoader;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mIsPageLoaded:[Z

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/launcher3/allapps/model/AppsLoader;)[Z
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/model/AppsLoader;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mIsPageLoaded:[Z

    return-object v0
.end method

.method static synthetic access$800()Ljava/text/Collator;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/android/launcher3/allapps/model/AppsLoader;->sCollator:Ljava/text/Collator;

    return-object v0
.end method

.method static synthetic access$900()I
    .locals 1

    .prologue
    .line 84
    sget v0, Lcom/android/launcher3/allapps/model/AppsLoader;->mCellCountX:I

    return v0
.end method

.method private appFolderInfoClear()V
    .locals 8

    .prologue
    .line 933
    sget-object v5, Lcom/android/launcher3/allapps/model/AppsLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v5

    .line 934
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 935
    .local v0, "appFolderIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    sget-object v4, Lcom/android/launcher3/allapps/model/AppsLoader;->sBgFolders:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v4}, Lcom/android/launcher3/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/folder/FolderInfo;

    .line 936
    .local v1, "f":Lcom/android/launcher3/folder/FolderInfo;
    invoke-virtual {v1}, Lcom/android/launcher3/folder/FolderInfo;->isContainApps()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 937
    iget-wide v6, v1, Lcom/android/launcher3/folder/FolderInfo;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 946
    .end local v0    # "appFolderIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v1    # "f":Lcom/android/launcher3/folder/FolderInfo;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 941
    .restart local v0    # "appFolderIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 942
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 943
    .local v2, "id":J
    sget-object v4, Lcom/android/launcher3/allapps/model/AppsLoader;->sBgFolders:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v4, v2, v3}, Lcom/android/launcher3/util/LongArrayMap;->remove(J)V

    goto :goto_1

    .line 946
    .end local v2    # "id":J
    :cond_2
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 947
    return-void
.end method

.method private createAppInfoIfNecessary(Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;Lcom/android/launcher3/common/compat/UserHandleCompat;)Lcom/android/launcher3/common/base/item/IconInfo;
    .locals 6
    .param p1, "info"    # Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;

    .prologue
    .line 1344
    const/4 v1, 0x0

    .line 1345
    .local v1, "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    invoke-virtual {p1}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 1346
    .local v0, "cn":Landroid/content/ComponentName;
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getCloneItemEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mBgDuplicateCheckList:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/launcher3/util/ComponentKey;

    invoke-direct {v3, v0, p2}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    .line 1347
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1349
    const-string v2, "AppsLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is exist in home. skip create app info"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1351
    const/4 v2, 0x0

    .line 1363
    :goto_0
    return-object v2

    .line 1353
    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mAllAppsComponentKey:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/launcher3/util/ComponentKey;

    invoke-direct {v3, v0, p2}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1354
    new-instance v1, Lcom/android/launcher3/common/base/item/IconInfo;

    .end local v1    # "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    sget-object v2, Lcom/android/launcher3/allapps/model/AppsLoader;->sContext:Landroid/content/Context;

    sget-object v3, Lcom/android/launcher3/allapps/model/AppsLoader;->sIconCache:Lcom/android/launcher3/common/model/IconCache;

    invoke-direct {v1, v2, p1, p2, v3}, Lcom/android/launcher3/common/base/item/IconInfo;-><init>(Landroid/content/Context;Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;Lcom/android/launcher3/common/compat/UserHandleCompat;Lcom/android/launcher3/common/model/IconCache;)V

    .line 1355
    .restart local v1    # "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    const-wide/16 v2, -0x66

    iput-wide v2, v1, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    .line 1356
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/launcher3/common/base/item/IconInfo;->mDirty:Z

    .line 1357
    iget-object v2, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mQuietModeUsers:Landroid/util/LongSparseArray;

    sget-object v3, Lcom/android/launcher3/allapps/model/AppsLoader;->sUserManager:Lcom/android/launcher3/common/compat/UserManagerCompat;

    invoke-virtual {v3, p2}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher3/common/compat/UserHandleCompat;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1358
    iget v2, v1, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    or-int/lit8 v2, v2, 0x8

    iput v2, v1, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    .line 1360
    :cond_1
    const-string v2, "AppsLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " createAppInfoIfNecessary ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move-object v2, v1

    .line 1363
    goto :goto_0
.end method

.method private createFolderInfo(Landroid/database/Cursor;Lcom/android/launcher3/common/model/CursorInfo;Ljava/util/ArrayList;)Lcom/android/launcher3/common/base/item/ItemInfo;
    .locals 8
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "cursorInfo"    # Lcom/android/launcher3/common/model/CursorInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Lcom/android/launcher3/common/model/CursorInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/android/launcher3/common/base/item/ItemInfo;"
        }
    .end annotation

    .prologue
    .line 1274
    .local p3, "restoredRows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget v6, p2, Lcom/android/launcher3/common/model/CursorInfo;->idIndex:I

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 1275
    .local v4, "id":J
    const/4 v2, 0x0

    .line 1276
    .local v2, "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    sget-object v7, Lcom/android/launcher3/allapps/model/AppsLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1277
    :try_start_0
    sget-object v6, Lcom/android/launcher3/allapps/model/AppsLoader;->sBgFolders:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v6, v4, v5}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/android/launcher3/folder/FolderInfo;

    move-object v2, v0

    .line 1278
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1279
    if-nez v2, :cond_0

    .line 1280
    new-instance v2, Lcom/android/launcher3/folder/FolderInfo;

    .end local v2    # "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    invoke-direct {v2}, Lcom/android/launcher3/folder/FolderInfo;-><init>()V

    .line 1283
    .restart local v2    # "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    :cond_0
    iget v6, p2, Lcom/android/launcher3/common/model/CursorInfo;->restoredIndex:I

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-eqz v6, :cond_2

    const/4 v3, 0x1

    .line 1284
    .local v3, "restored":Z
    :goto_0
    iget v6, p2, Lcom/android/launcher3/common/model/CursorInfo;->titleIndex:I

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/android/launcher3/folder/FolderInfo;->title:Ljava/lang/CharSequence;

    .line 1285
    iput-wide v4, v2, Lcom/android/launcher3/folder/FolderInfo;->id:J

    .line 1286
    iget v6, p2, Lcom/android/launcher3/common/model/CursorInfo;->containerIndex:I

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    int-to-long v6, v6

    iput-wide v6, v2, Lcom/android/launcher3/folder/FolderInfo;->container:J

    .line 1287
    iget v6, p2, Lcom/android/launcher3/common/model/CursorInfo;->screenIndex:I

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    int-to-long v6, v6

    iput-wide v6, v2, Lcom/android/launcher3/folder/FolderInfo;->screenId:J

    .line 1288
    iget v6, p2, Lcom/android/launcher3/common/model/CursorInfo;->itemTypeIndex:I

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v2, Lcom/android/launcher3/folder/FolderInfo;->itemType:I

    .line 1289
    iget v6, p2, Lcom/android/launcher3/common/model/CursorInfo;->rankIndex:I

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v2, Lcom/android/launcher3/folder/FolderInfo;->rank:I

    .line 1290
    iget v6, p2, Lcom/android/launcher3/common/model/CursorInfo;->colorIndex:I

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v2, Lcom/android/launcher3/folder/FolderInfo;->color:I

    .line 1291
    iget v6, p2, Lcom/android/launcher3/common/model/CursorInfo;->lockIndex:I

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v2, Lcom/android/launcher3/folder/FolderInfo;->lock:I

    .line 1292
    iget v6, p2, Lcom/android/launcher3/common/model/CursorInfo;->optionsIndex:I

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v2, Lcom/android/launcher3/folder/FolderInfo;->options:I

    .line 1294
    if-eqz v3, :cond_1

    .line 1296
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1299
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/launcher3/allapps/model/AppsLoader;->putItemToIdMap(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 1300
    return-object v2

    .line 1278
    .end local v3    # "restored":Z
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 1283
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private createIconInfo(Landroid/database/Cursor;Lcom/android/launcher3/common/model/CursorInfo;Ljava/util/ArrayList;)Lcom/android/launcher3/common/base/item/ItemInfo;
    .locals 30
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "cursorInfo"    # Lcom/android/launcher3/common/model/CursorInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Lcom/android/launcher3/common/model/CursorInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/android/launcher3/common/base/item/ItemInfo;"
        }
    .end annotation

    .prologue
    .line 1031
    .local p3, "restoredRows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/launcher3/common/model/CursorInfo;->containerIndex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 1032
    .local v14, "container":I
    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/launcher3/common/model/CursorInfo;->idIndex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 1033
    .local v18, "id":J
    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/launcher3/common/model/CursorInfo;->profileIdIndex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v0, v4

    move-wide/from16 v22, v0

    .line 1034
    .local v22, "serialNumber":J
    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/launcher3/common/model/CursorInfo;->restoredIndex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 1035
    .local v8, "promiseType":I
    if-eqz v8, :cond_1

    const/16 v21, 0x1

    .line 1039
    .local v21, "restored":Z
    :goto_0
    :try_start_0
    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/launcher3/common/model/CursorInfo;->intentIndex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v7

    .line 1040
    .local v7, "intent":Landroid/content/Intent;
    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 1044
    .local v6, "cn":Landroid/content/ComponentName;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/model/AppsLoader;->mAllUsers:Landroid/util/LongSparseArray;

    move-wide/from16 v0, v22

    invoke-virtual {v4, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/launcher3/common/compat/UserHandleCompat;

    .line 1045
    .local v24, "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    if-nez v24, :cond_2

    .line 1046
    const/4 v12, 0x0

    .line 1196
    .end local v6    # "cn":Landroid/content/ComponentName;
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v24    # "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    :cond_0
    :goto_1
    return-object v12

    .line 1035
    .end local v21    # "restored":Z
    :cond_1
    const/16 v21, 0x0

    goto :goto_0

    .line 1041
    .restart local v21    # "restored":Z
    :catch_0
    move-exception v16

    .line 1042
    .local v16, "e":Ljava/net/URISyntaxException;
    const/4 v12, 0x0

    goto :goto_1

    .line 1049
    .end local v16    # "e":Ljava/net/URISyntaxException;
    .restart local v6    # "cn":Landroid/content/ComponentName;
    .restart local v7    # "intent":Landroid/content/Intent;
    .restart local v24    # "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    :cond_2
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->getCloneItemEnabled()Z

    move-result v4

    if-nez v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/model/AppsLoader;->mBgDuplicateCheckList:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/launcher3/util/ComponentKey;

    move-object/from16 v0, v24

    invoke-direct {v5, v6, v0}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    .line 1050
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/model/AppsLoader;->mAllAppsComponentKey:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/launcher3/util/ComponentKey;

    move-object/from16 v0, v24

    invoke-direct {v5, v6, v0}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    .line 1051
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1052
    :cond_4
    const-string v4, "AppsLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " createIconInfo fail- already exist:"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, " user:"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    const/4 v12, 0x0

    goto :goto_1

    .line 1056
    :cond_5
    const/16 v26, 0x1

    .line 1057
    .local v26, "validPkg":Z
    const/16 v25, 0x1

    .line 1058
    .local v25, "validComponent":Z
    const/4 v11, 0x0

    .line 1059
    .local v11, "allowMissingTarget":Z
    const/4 v15, 0x0

    .line 1061
    .local v15, "disabledState":I
    sget-object v4, Lcom/android/launcher3/allapps/model/AppsLoader;->sLauncherApps:Lcom/android/launcher3/common/compat/LauncherAppsCompat;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-virtual {v4, v5, v0}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object v13

    .line 1062
    .local v13, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;>;"
    if-eqz v13, :cond_6

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1063
    :cond_6
    const/16 v26, 0x0

    .line 1065
    :cond_7
    if-eqz v26, :cond_e

    move-object/from16 v0, v24

    invoke-static {v13, v6, v0}, Lcom/android/launcher3/allapps/model/AppsLoader;->findActivityInfo(Ljava/util/List;Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;

    move-result-object v10

    .line 1066
    .local v10, "activityInfo":Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    :goto_2
    if-nez v10, :cond_8

    .line 1067
    const/16 v25, 0x0

    .line 1070
    :cond_8
    if-eqz v25, :cond_f

    .line 1071
    if-eqz v21, :cond_a

    .line 1072
    and-int/lit8 v4, v8, 0x20

    if-eqz v4, :cond_9

    .line 1073
    new-instance v27, Landroid/content/ContentValues;

    invoke-direct/range {v27 .. v27}, Landroid/content/ContentValues;-><init>()V

    .line 1074
    .local v27, "values":Landroid/content/ContentValues;
    const-string v4, "title"

    const-string v5, ""

    move-object/from16 v0, v27

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1075
    const-string v5, "icon"

    const/4 v4, 0x0

    check-cast v4, [B

    move-object/from16 v0, v27

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1076
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/allapps/model/AppsLoader;->updateItem(JLandroid/content/ContentValues;)V

    .line 1078
    .end local v27    # "values":Landroid/content/ContentValues;
    :cond_9
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1079
    const/16 v21, 0x0

    .line 1081
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/model/AppsLoader;->mQuietModeUsers:Landroid/util/LongSparseArray;

    move-wide/from16 v0, v22

    invoke-virtual {v4, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1082
    const/16 v15, 0x8

    .line 1136
    :cond_b
    :goto_3
    const/4 v12, 0x0

    .line 1137
    .local v12, "appInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    if-eqz v21, :cond_1b

    .line 1138
    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Lcom/android/launcher3/common/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 1139
    const-string v4, "AppsLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "constructing info for restored package promiseType: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x1

    invoke-static {v4, v5, v9}, Lcom/android/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v9, p2

    .line 1140
    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher3/allapps/model/AppsLoader;->getRestoredItemInfo(Landroid/database/Cursor;Landroid/content/ComponentName;Landroid/content/Intent;ILcom/android/launcher3/common/model/CursorInfo;)Lcom/android/launcher3/common/base/item/IconInfo;

    move-result-object v12

    .line 1141
    iput-object v6, v12, Lcom/android/launcher3/common/base/item/IconInfo;->componentName:Landroid/content/ComponentName;

    .line 1142
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Lcom/android/launcher3/allapps/model/AppsLoader;->getRestoredItemIntent(Landroid/content/Intent;I)Landroid/content/Intent;

    move-result-object v7

    .line 1143
    iput-object v7, v12, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    .line 1160
    :goto_4
    if-eqz v12, :cond_c

    .line 1161
    int-to-long v4, v14

    iput-wide v4, v12, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    .line 1162
    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/launcher3/common/model/CursorInfo;->screenIndex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v4, v4

    iput-wide v4, v12, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    .line 1163
    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/launcher3/common/model/CursorInfo;->rankIndex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v12, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    .line 1164
    move-wide/from16 v0, v18

    iput-wide v0, v12, Lcom/android/launcher3/common/base/item/IconInfo;->id:J

    .line 1165
    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/launcher3/common/model/CursorInfo;->hiddenIndex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v12, Lcom/android/launcher3/common/base/item/IconInfo;->hidden:I

    .line 1166
    iget v4, v12, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    or-int/2addr v4, v15

    iput v4, v12, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    .line 1168
    if-eqz v21, :cond_c

    .line 1169
    invoke-virtual {v12}, Lcom/android/launcher3/common/base/item/IconInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v6

    .line 1170
    if-eqz v6, :cond_c

    .line 1171
    sget-object v4, Lcom/android/launcher3/allapps/model/AppsLoader;->sInstallingPkgs:Ljava/util/HashMap;

    if-nez v4, :cond_1e

    const/16 v20, 0x0

    .line 1172
    .local v20, "progress":Ljava/lang/Integer;
    :goto_5
    if-eqz v20, :cond_1f

    .line 1173
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v12, v4}, Lcom/android/launcher3/common/base/item/IconInfo;->setInstallProgress(I)V

    .line 1181
    .end local v20    # "progress":Ljava/lang/Integer;
    :cond_c
    :goto_6
    const/16 v4, -0x66

    if-eq v14, v4, :cond_d

    .line 1182
    const/16 v17, 0x0

    .line 1183
    .local v17, "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    sget-object v5, Lcom/android/launcher3/allapps/model/AppsLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1184
    :try_start_1
    sget-object v4, Lcom/android/launcher3/allapps/model/AppsLoader;->sBgFolders:Lcom/android/launcher3/util/LongArrayMap;

    int-to-long v0, v14

    move-wide/from16 v28, v0

    move-wide/from16 v0, v28

    invoke-virtual {v4, v0, v1}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/android/launcher3/folder/FolderInfo;

    move-object/from16 v17, v0

    .line 1185
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1186
    if-eqz v17, :cond_d

    if-eqz v12, :cond_d

    iget v4, v12, Lcom/android/launcher3/common/base/item/IconInfo;->hidden:I

    if-nez v4, :cond_d

    .line 1187
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Lcom/android/launcher3/folder/FolderInfo;->add(Lcom/android/launcher3/common/base/item/IconInfo;)V

    .line 1191
    .end local v17    # "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    :cond_d
    if-eqz v12, :cond_0

    .line 1192
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/launcher3/allapps/model/AppsLoader;->setBadgeCount(Lcom/android/launcher3/common/base/item/IconInfo;)V

    .line 1193
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/launcher3/allapps/model/AppsLoader;->putItemToIdMap(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto/16 :goto_1

    .line 1065
    .end local v10    # "activityInfo":Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    .end local v12    # "appInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_e
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 1084
    .restart local v10    # "activityInfo":Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    :cond_f
    if-eqz v26, :cond_14

    .line 1085
    const/4 v7, 0x0

    .line 1086
    and-int/lit8 v4, v8, 0x2

    if-nez v4, :cond_10

    and-int/lit8 v4, v8, 0x20

    if-eqz v4, :cond_11

    .line 1089
    :cond_10
    sget-object v4, Lcom/android/launcher3/allapps/model/AppsLoader;->sPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    .line 1090
    if-eqz v7, :cond_11

    .line 1091
    new-instance v27, Landroid/content/ContentValues;

    invoke-direct/range {v27 .. v27}, Landroid/content/ContentValues;-><init>()V

    .line 1092
    .restart local v27    # "values":Landroid/content/ContentValues;
    const-string v4, "intent"

    const/4 v5, 0x0

    invoke-virtual {v7, v5}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v27

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1093
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/allapps/model/AppsLoader;->updateItem(JLandroid/content/ContentValues;)V

    .line 1097
    .end local v27    # "values":Landroid/content/ContentValues;
    :cond_11
    if-nez v7, :cond_12

    .line 1099
    const-string v4, "AppsLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid component removed: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x1

    invoke-static {v4, v5, v9}, Lcom/android/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1100
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 1102
    :cond_12
    and-int/lit8 v4, v8, 0x20

    if-eqz v4, :cond_13

    .line 1103
    new-instance v27, Landroid/content/ContentValues;

    invoke-direct/range {v27 .. v27}, Landroid/content/ContentValues;-><init>()V

    .line 1104
    .restart local v27    # "values":Landroid/content/ContentValues;
    const-string v4, "title"

    const-string v5, ""

    move-object/from16 v0, v27

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1105
    const-string v5, "icon"

    const/4 v4, 0x0

    check-cast v4, [B

    move-object/from16 v0, v27

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1106
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/allapps/model/AppsLoader;->updateItem(JLandroid/content/ContentValues;)V

    .line 1108
    .end local v27    # "values":Landroid/content/ContentValues;
    :cond_13
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1109
    const/16 v21, 0x0

    goto/16 :goto_3

    .line 1111
    :cond_14
    if-eqz v21, :cond_17

    .line 1113
    const-string v4, "AppsLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "package not yet restored: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x1

    invoke-static {v4, v5, v9}, Lcom/android/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1115
    and-int/lit8 v4, v8, 0x2

    if-nez v4, :cond_15

    and-int/lit8 v4, v8, 0x1

    if-eqz v4, :cond_b

    .line 1117
    :cond_15
    sget-object v4, Lcom/android/launcher3/allapps/model/AppsLoader;->sInstallingPkgs:Ljava/util/HashMap;

    if-eqz v4, :cond_16

    sget-object v4, Lcom/android/launcher3/allapps/model/AppsLoader;->sInstallingPkgs:Ljava/util/HashMap;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 1118
    :cond_16
    const-string v4, "AppsLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "UnRestored package removed: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x1

    invoke-static {v4, v5, v9}, Lcom/android/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1119
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 1122
    :cond_17
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/launcher3/allapps/model/AppsLoader;->mIsSdCardReady:Z

    if-nez v4, :cond_18

    .line 1125
    const-string v4, "AppsLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid package: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, " (check again later)"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x1

    invoke-static {v4, v5, v9}, Lcom/android/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1126
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v4, v1}, Lcom/android/launcher3/allapps/model/AppsLoader;->addAppToPendingPackages(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    .line 1127
    const/4 v11, 0x1

    goto/16 :goto_3

    .line 1129
    :cond_18
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x2000

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/launcher3/allapps/model/AppsLoader;->isNotAvailableApps(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 1130
    const/4 v11, 0x1

    goto/16 :goto_3

    .line 1132
    :cond_19
    const-string v4, "AppsLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid package removed: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x1

    invoke-static {v4, v5, v9}, Lcom/android/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1133
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 1146
    .restart local v12    # "appInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_1a
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 1148
    :cond_1b
    if-eqz v11, :cond_1d

    .line 1150
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/launcher3/allapps/model/AppsLoader;->mIsSdCardReady:Z

    if-nez v4, :cond_1c

    .line 1151
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v6, v7, v2}, Lcom/android/launcher3/allapps/model/AppsLoader;->getTemporaryItemInfo(Landroid/database/Cursor;Landroid/content/ComponentName;Landroid/content/Intent;Lcom/android/launcher3/common/model/CursorInfo;)Lcom/android/launcher3/common/base/item/IconInfo;

    move-result-object v12

    goto/16 :goto_4

    .line 1153
    :cond_1c
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v6, v7, v2}, Lcom/android/launcher3/allapps/model/AppsLoader;->getDisabledItemInfo(Landroid/database/Cursor;Landroid/content/ComponentName;Landroid/content/Intent;Lcom/android/launcher3/common/model/CursorInfo;)Lcom/android/launcher3/common/base/item/IconInfo;

    move-result-object v12

    goto/16 :goto_4

    .line 1157
    :cond_1d
    new-instance v12, Lcom/android/launcher3/common/base/item/IconInfo;

    .end local v12    # "appInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    sget-object v4, Lcom/android/launcher3/allapps/model/AppsLoader;->sContext:Landroid/content/Context;

    sget-object v5, Lcom/android/launcher3/allapps/model/AppsLoader;->sIconCache:Lcom/android/launcher3/common/model/IconCache;

    move-object/from16 v0, v24

    invoke-direct {v12, v4, v10, v0, v5}, Lcom/android/launcher3/common/base/item/IconInfo;-><init>(Landroid/content/Context;Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;Lcom/android/launcher3/common/compat/UserHandleCompat;Lcom/android/launcher3/common/model/IconCache;)V

    .restart local v12    # "appInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    goto/16 :goto_4

    .line 1171
    :cond_1e
    sget-object v4, Lcom/android/launcher3/allapps/model/AppsLoader;->sInstallingPkgs:Ljava/util/HashMap;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    move-object/from16 v20, v4

    goto/16 :goto_5

    .line 1175
    .restart local v20    # "progress":Ljava/lang/Integer;
    :cond_1f
    iget v4, v12, Lcom/android/launcher3/common/base/item/IconInfo;->status:I

    and-int/lit8 v4, v4, -0x9

    iput v4, v12, Lcom/android/launcher3/common/base/item/IconInfo;->status:I

    goto/16 :goto_6

    .line 1185
    .end local v20    # "progress":Ljava/lang/Integer;
    .restart local v17    # "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4
.end method

.method private createItems(Landroid/database/Cursor;Lcom/android/launcher3/common/model/CursorInfo;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/launcher3/util/LongArrayMap;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V
    .locals 8
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "cursorInfo"    # Lcom/android/launcher3/common/model/CursorInfo;
    .param p6, "task"    # Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Lcom/android/launcher3/common/model/CursorInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;",
            "Lcom/android/launcher3/util/LongArrayMap",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;",
            "Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;",
            ")V"
        }
    .end annotation

    .prologue
    .line 979
    .local p3, "restoredRows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .local p4, "pageItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .local p5, "folders":Lcom/android/launcher3/util/LongArrayMap;, "Lcom/android/launcher3/util/LongArrayMap<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 981
    .local v4, "itemsToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_0
    :goto_0
    invoke-virtual {p0, p6}, Lcom/android/launcher3/allapps/model/AppsLoader;->isStopped(Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 982
    const/4 v3, 0x0

    .line 984
    .local v3, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :try_start_0
    iget v5, p2, Lcom/android/launcher3/common/model/CursorInfo;->intentIndex:I

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 985
    .local v0, "component":Ljava/lang/String;
    if-nez v0, :cond_3

    .line 986
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/allapps/model/AppsLoader;->createFolderInfo(Landroid/database/Cursor;Lcom/android/launcher3/common/model/CursorInfo;Ljava/util/ArrayList;)Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v3

    .line 987
    if-nez p5, :cond_1

    .line 988
    new-instance v2, Lcom/android/launcher3/util/LongArrayMap;

    invoke-direct {v2}, Lcom/android/launcher3/util/LongArrayMap;-><init>()V

    .end local p5    # "folders":Lcom/android/launcher3/util/LongArrayMap;, "Lcom/android/launcher3/util/LongArrayMap<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .local v2, "folders":Lcom/android/launcher3/util/LongArrayMap;, "Lcom/android/launcher3/util/LongArrayMap<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    move-object p5, v2

    .line 990
    .end local v2    # "folders":Lcom/android/launcher3/util/LongArrayMap;, "Lcom/android/launcher3/util/LongArrayMap<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .restart local p5    # "folders":Lcom/android/launcher3/util/LongArrayMap;, "Lcom/android/launcher3/util/LongArrayMap<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    :cond_1
    iget-wide v6, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    invoke-virtual {p5, v6, v7, v3}, Lcom/android/launcher3/util/LongArrayMap;->put(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1000
    .end local v0    # "component":Ljava/lang/String;
    :cond_2
    :goto_1
    if-eqz v3, :cond_0

    iget v5, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->hidden:I

    if-nez v5, :cond_0

    .line 1001
    invoke-virtual {p4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 992
    .restart local v0    # "component":Ljava/lang/String;
    :cond_3
    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/allapps/model/AppsLoader;->createIconInfo(Landroid/database/Cursor;Lcom/android/launcher3/common/model/CursorInfo;Ljava/util/ArrayList;)Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v3

    .line 993
    if-nez v3, :cond_2

    .line 994
    iget v5, p2, Lcom/android/launcher3/common/model/CursorInfo;->idIndex:I

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 997
    .end local v0    # "component":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 998
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "AppsLoader"

    const-string v6, "Apps items loading interrupted"

    const/4 v7, 0x1

    invoke-static {v5, v6, v1, v7}, Lcom/android/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Z)V

    goto :goto_1

    .line 1006
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_4
    invoke-direct {p0, v4, p4}, Lcom/android/launcher3/allapps/model/AppsLoader;->removeItems(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1007
    return-void
.end method

.method private createItemsInFolder(Landroid/database/Cursor;Lcom/android/launcher3/common/model/CursorInfo;Ljava/util/ArrayList;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V
    .locals 6
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "cursorInfo"    # Lcom/android/launcher3/common/model/CursorInfo;
    .param p4, "task"    # Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Lcom/android/launcher3/common/model/CursorInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1011
    .local p3, "restoredRows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1013
    .local v2, "itemsToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_0
    :goto_0
    invoke-virtual {p0, p4}, Lcom/android/launcher3/allapps/model/AppsLoader;->isStopped(Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1015
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/allapps/model/AppsLoader;->createIconInfo(Landroid/database/Cursor;Lcom/android/launcher3/common/model/CursorInfo;Ljava/util/ArrayList;)Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v1

    .line 1016
    .local v1, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    if-nez v1, :cond_0

    .line 1017
    iget v3, p2, Lcom/android/launcher3/common/model/CursorInfo;->idIndex:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1019
    .end local v1    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :catch_0
    move-exception v0

    .line 1020
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "AppsLoader"

    const-string v4, "Apps items loading interrupted"

    const/4 v5, 0x1

    invoke-static {v3, v4, v0, v5}, Lcom/android/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Z)V

    goto :goto_0

    .line 1026
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/launcher3/allapps/model/AppsLoader;->removeItems(Ljava/util/ArrayList;)V

    .line 1027
    return-void
.end method

.method private getCallback()Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;
    .locals 2

    .prologue
    .line 261
    iget-object v1, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 262
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mCallbacks:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 263
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getDefaultLayoutParser()Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;
    .locals 6

    .prologue
    .line 1304
    new-instance v0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;

    sget-object v1, Lcom/android/launcher3/allapps/model/AppsLoader;->sContext:Landroid/content/Context;

    const/4 v2, 0x0

    sget-object v3, Lcom/android/launcher3/allapps/model/AppsLoader;->sFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    sget-object v4, Lcom/android/launcher3/allapps/model/AppsLoader;->sContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;-><init>(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/common/model/DefaultLayoutParser$LayoutParserCallback;Landroid/content/res/Resources;I)V

    return-object v0
.end method

.method private hasDefferedBindRunnable()I
    .locals 2

    .prologue
    .line 2071
    iget-object v1, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mDeferredBindRunnables:Ljava/util/ArrayList;

    monitor-enter v1

    .line 2072
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mDeferredBindRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    monitor-exit v1

    return v0

    .line 2073
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static integerCompare(II)I
    .locals 1
    .param p0, "a"    # I
    .param p1, "b"    # I

    .prologue
    .line 1761
    const/4 v0, 0x0

    .line 1763
    .local v0, "ret":I
    if-le p0, p1, :cond_1

    .line 1764
    const/4 v0, 0x1

    .line 1768
    :cond_0
    :goto_0
    return v0

    .line 1765
    :cond_1
    if-ge p0, p1, :cond_0

    .line 1766
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private loadDuplicateCheckList()Ljava/util/ArrayList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/util/ComponentKey;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2460
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2461
    .local v6, "componentList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/util/ComponentKey;>;"
    const/4 v10, 0x0

    .line 2464
    .local v10, "folderIds":Ljava/lang/String;
    const-string v3, "itemType=2 AND (container=-100 OR container=-101)"

    .line 2468
    .local v3, "where":Ljava/lang/String;
    sget-object v0, Lcom/android/launcher3/allapps/model/AppsLoader;->sContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/launcher3/common/model/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 2471
    .local v9, "folderIdCursor":Landroid/database/Cursor;
    if-eqz v9, :cond_1

    .line 2472
    new-instance v12, Lcom/android/launcher3/util/StringJoiner;

    const-string v0, ","

    invoke-direct {v12, v0}, Lcom/android/launcher3/util/StringJoiner;-><init>(Ljava/lang/String;)V

    .line 2473
    .local v12, "joiner":Lcom/android/launcher3/util/StringJoiner;
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2474
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {v12, v0, v1}, Lcom/android/launcher3/util/StringJoiner;->append(J)V

    goto :goto_0

    .line 2476
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 2477
    invoke-virtual {v12}, Lcom/android/launcher3/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v10

    .line 2481
    .end local v12    # "joiner":Lcom/android/launcher3/util/StringJoiner;
    :cond_1
    const-string v3, "itemType=0 AND (container=-100 OR container=-101"

    .line 2485
    if-eqz v10, :cond_4

    .line 2486
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " OR container in ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "))"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2491
    :goto_1
    sget-object v0, Lcom/android/launcher3/allapps/model/AppsLoader;->sContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/launcher3/common/model/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "intent"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "profileId"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2494
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_3

    .line 2496
    :cond_2
    :goto_2
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2497
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v11

    .line 2498
    .local v11, "intent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mAllUsers:Landroid/util/LongSparseArray;

    const/4 v1, 0x1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/launcher3/common/compat/UserHandleCompat;

    .line 2499
    .local v13, "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    if-eqz v11, :cond_2

    invoke-virtual {v11}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz v13, :cond_2

    .line 2500
    new-instance v0, Lcom/android/launcher3/util/ComponentKey;

    invoke-virtual {v11}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-direct {v0, v1, v13}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 2503
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v13    # "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    :catch_0
    move-exception v8

    .line 2504
    .local v8, "e":Ljava/net/URISyntaxException;
    :try_start_1
    const-string v0, "AppsLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception reading intent to make duplicate check list: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2506
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2509
    .end local v8    # "e":Ljava/net/URISyntaxException;
    :cond_3
    :goto_3
    return-object v6

    .line 2488
    .end local v7    # "cursor":Landroid/database/Cursor;
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 2506
    .restart local v7    # "cursor":Landroid/database/Cursor;
    :cond_5
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private loadRemainedApps(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 26
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
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 533
    .local p1, "remainedItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .local p2, "remainedItemsInFolder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 534
    .local v4, "allRemainedItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    .line 535
    .local v14, "loadTime":J
    sget-object v21, Lcom/android/launcher3/allapps/model/AppsLoader;->sUserManager:Lcom/android/launcher3/common/compat/UserManagerCompat;

    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getUserProfiles()Ljava/util/List;

    move-result-object v16

    .line 536
    .local v16, "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/compat/UserHandleCompat;>;"
    sget-object v21, Lcom/android/launcher3/allapps/model/AppsLoader;->sContext:Landroid/content/Context;

    invoke-static/range {v21 .. v21}, Lcom/android/launcher3/common/customer/PostPositionController;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/customer/PostPositionController;

    move-result-object v13

    .line 538
    .local v13, "pp":Lcom/android/launcher3/common/customer/PostPositionController;
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_0
    :goto_0
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_6

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/launcher3/common/compat/UserHandleCompat;

    .line 540
    .local v20, "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    .line 541
    .local v18, "qiaTime":J
    sget-object v22, Lcom/android/launcher3/allapps/model/AppsLoader;->sLauncherApps:Lcom/android/launcher3/common/compat/LauncherAppsCompat;

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object v6

    .line 544
    .local v6, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;>;"
    if-eqz v6, :cond_1

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v22

    if-eqz v22, :cond_2

    .line 545
    :cond_1
    const-string v22, "AppsLoader"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "There is no getActivityList apps for user "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 550
    :cond_2
    const-string v22, "AppsLoader"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "getActivityList took "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 551
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v24

    sub-long v24, v24, v18

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "ms for user "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 550
    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    const-string v22, "AppsLoader"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "getActivityList got "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " apps for user "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v11, v0, :cond_5

    .line 556
    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;

    .line 557
    .local v5, "app":Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v5, v1}, Lcom/android/launcher3/allapps/model/AppsLoader;->createAppInfoIfNecessary(Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;Lcom/android/launcher3/common/compat/UserHandleCompat;)Lcom/android/launcher3/common/base/item/IconInfo;

    move-result-object v12

    .line 559
    .local v12, "info":Lcom/android/launcher3/common/base/item/IconInfo;
    if-eqz v12, :cond_3

    sget-object v22, Lcom/android/launcher3/allapps/model/AppsLoader;->sFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    if-eqz v22, :cond_3

    .line 560
    sget-object v22, Lcom/android/launcher3/allapps/model/AppsLoader;->sFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher3/common/model/FavoritesProvider;->generateNewItemId()J

    move-result-wide v22

    move-wide/from16 v0, v22

    iput-wide v0, v12, Lcom/android/launcher3/common/base/item/IconInfo;->id:J

    .line 561
    iget-object v0, v12, Lcom/android/launcher3/common/base/item/IconInfo;->componentName:Landroid/content/ComponentName;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Lcom/android/launcher3/common/customer/PostPositionController;->getAppsAutoFolderId(Ljava/lang/String;)J

    move-result-wide v8

    .line 563
    .local v8, "folderId":J
    sget-object v22, Lcom/android/launcher3/allapps/model/AppsLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v22

    .line 564
    :try_start_0
    sget-object v23, Lcom/android/launcher3/allapps/model/AppsLoader;->sBgFolders:Lcom/android/launcher3/util/LongArrayMap;

    move-object/from16 v0, v23

    invoke-virtual {v0, v8, v9}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/folder/FolderInfo;

    .line 565
    .local v7, "folder":Lcom/android/launcher3/folder/FolderInfo;
    monitor-exit v22
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 566
    const-wide/16 v22, -0x1

    cmp-long v22, v8, v22

    if-eqz v22, :cond_4

    if-eqz v7, :cond_4

    .line 569
    iput-wide v8, v12, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    .line 570
    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 574
    :goto_2
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 575
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/allapps/model/AppsLoader;->mAllAppsComponentKey:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    new-instance v23, Lcom/android/launcher3/util/ComponentKey;

    iget-object v0, v12, Lcom/android/launcher3/common/base/item/IconInfo;->componentName:Landroid/content/ComponentName;

    move-object/from16 v24, v0

    iget-object v0, v12, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-object/from16 v25, v0

    invoke-direct/range {v23 .. v25}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 555
    .end local v7    # "folder":Lcom/android/launcher3/folder/FolderInfo;
    .end local v8    # "folderId":J
    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 565
    .restart local v8    # "folderId":J
    :catchall_0
    move-exception v21

    :try_start_1
    monitor-exit v22
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v21

    .line 572
    .restart local v7    # "folder":Lcom/android/launcher3/folder/FolderInfo;
    :cond_4
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 579
    .end local v5    # "app":Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    .end local v7    # "folder":Lcom/android/launcher3/folder/FolderInfo;
    .end local v8    # "folderId":J
    .end local v12    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_5
    sget-object v22, Lcom/android/launcher3/allapps/model/AppsLoader;->sContext:Landroid/content/Context;

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/launcher3/home/ManagedProfileHeuristic;->get(Landroid/content/Context;Lcom/android/launcher3/common/compat/UserHandleCompat;)Lcom/android/launcher3/home/ManagedProfileHeuristic;

    move-result-object v10

    .line 580
    .local v10, "heuristic":Lcom/android/launcher3/home/ManagedProfileHeuristic;
    if-eqz v10, :cond_0

    .line 581
    new-instance v17, Lcom/android/launcher3/allapps/model/AppsLoader$4;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v10, v6}, Lcom/android/launcher3/allapps/model/AppsLoader$4;-><init>(Lcom/android/launcher3/allapps/model/AppsLoader;Lcom/android/launcher3/home/ManagedProfileHeuristic;Ljava/util/List;)V

    .line 587
    .local v17, "r":Ljava/lang/Runnable;
    new-instance v22, Lcom/android/launcher3/allapps/model/AppsLoader$5;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/allapps/model/AppsLoader$5;-><init>(Lcom/android/launcher3/allapps/model/AppsLoader;Ljava/lang/Runnable;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/model/AppsLoader;->runOnMainThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 603
    .end local v6    # "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;>;"
    .end local v10    # "heuristic":Lcom/android/launcher3/home/ManagedProfileHeuristic;
    .end local v11    # "i":I
    .end local v17    # "r":Ljava/lang/Runnable;
    .end local v18    # "qiaTime":J
    .end local v20    # "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    :cond_6
    new-instance v21, Lcom/android/launcher3/allapps/model/AppsLoader$6;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/launcher3/allapps/model/AppsLoader$6;-><init>(Lcom/android/launcher3/allapps/model/AppsLoader;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 611
    const-string v21, "AppsLoader"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Icons processed in "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 612
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v24

    sub-long v24, v24, v14

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "ms"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 611
    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    sget-object v21, Lcom/android/launcher3/allapps/model/AppsLoader;->sContext:Landroid/content/Context;

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/android/launcher3/home/ManagedProfileHeuristic;->processAllUsers(Ljava/util/List;Landroid/content/Context;)V

    .line 616
    return-object v4
.end method

.method private static longCompare(JJ)I
    .locals 2
    .param p0, "a"    # J
    .param p2, "b"    # J

    .prologue
    .line 1772
    const/4 v0, 0x0

    .line 1774
    .local v0, "ret":I
    cmp-long v1, p0, p2

    if-lez v1, :cond_1

    .line 1775
    const/4 v0, 0x1

    .line 1779
    :cond_0
    :goto_0
    return v0

    .line 1776
    :cond_1
    cmp-long v1, p0, p2

    if-gez v1, :cond_0

    .line 1777
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private removeAllItems(Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V
    .locals 4
    .param p1, "task"    # Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;

    .prologue
    .line 773
    const-string v2, "AppsLoader"

    const-string v3, "removeAllItems "

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    iget-object v2, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mAllAppsComponentKey:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 776
    invoke-direct {p0}, Lcom/android/launcher3/allapps/model/AppsLoader;->getCallback()Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;

    move-result-object v0

    .line 777
    .local v0, "oldCallbacks":Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;
    if-nez v0, :cond_0

    .line 778
    const-string v2, "AppsLoader"

    const-string v3, "removeAllItems running with no AppsCallbacks"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    :goto_0
    return-void

    .line 781
    :cond_0
    new-instance v1, Lcom/android/launcher3/allapps/model/AppsLoader$11;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/launcher3/allapps/model/AppsLoader$11;-><init>(Lcom/android/launcher3/allapps/model/AppsLoader;Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V

    .line 790
    .local v1, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v1}, Lcom/android/launcher3/allapps/model/AppsLoader;->runOnMainThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private removeItems(Ljava/util/ArrayList;)V
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
    .line 950
    .local p1, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/allapps/model/AppsLoader;->removeItems(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 951
    return-void
.end method

.method private removeItems(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 954
    .local p1, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .local p2, "pageItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 956
    sget-object v3, Lcom/android/launcher3/allapps/model/AppsLoader;->sContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/launcher3/common/model/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "_id"

    .line 957
    invoke-static {v5, p1}, Lcom/android/launcher3/Utilities;->createDbSelectionQuery(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 956
    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 959
    const-string v3, "AppsLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removed = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_id"

    invoke-static {v5, p1}, Lcom/android/launcher3/Utilities;->createDbSelectionQuery(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    sget-object v3, Lcom/android/launcher3/allapps/model/AppsLoader;->sContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/launcher3/common/customer/PostPositionController;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/customer/PostPositionController;

    move-result-object v2

    .line 963
    .local v2, "pp":Lcom/android/launcher3/common/customer/PostPositionController;
    sget-object v3, Lcom/android/launcher3/allapps/model/AppsLoader;->sFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    invoke-virtual {v3}, Lcom/android/launcher3/common/model/FavoritesProvider;->deleteEmptyFolders()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 964
    .local v0, "folderId":J
    invoke-virtual {v2, v0, v1}, Lcom/android/launcher3/common/customer/PostPositionController;->removeAutoFolderInfo(J)V

    .line 965
    sget-object v5, Lcom/android/launcher3/allapps/model/AppsLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v5

    .line 966
    if-eqz p2, :cond_0

    .line 967
    :try_start_0
    sget-object v3, Lcom/android/launcher3/allapps/model/AppsLoader;->sBgFolders:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v3, v0, v1}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 969
    :cond_0
    sget-object v3, Lcom/android/launcher3/allapps/model/AppsLoader;->sBgFolders:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v3, v0, v1}, Lcom/android/launcher3/util/LongArrayMap;->remove(J)V

    .line 970
    sget-object v3, Lcom/android/launcher3/allapps/model/AppsLoader;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v3, v0, v1}, Lcom/android/launcher3/util/LongArrayMap;->remove(J)V

    .line 971
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 974
    .end local v0    # "folderId":J
    .end local v2    # "pp":Lcom/android/launcher3/common/customer/PostPositionController;
    :cond_1
    return-void
.end method

.method private runOrAddDifferRunnable(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 2077
    invoke-direct {p0}, Lcom/android/launcher3/allapps/model/AppsLoader;->hasDefferedBindRunnable()I

    move-result v0

    if-lez v0, :cond_0

    .line 2078
    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/model/AppsLoader;->addDeferredBindRunnable(Ljava/lang/Runnable;)V

    .line 2082
    :goto_0
    return-void

    .line 2080
    :cond_0
    sget-object v0, Lcom/android/launcher3/allapps/model/AppsLoader;->sHandler:Lcom/android/launcher3/common/model/DeferredHandler;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/model/DeferredHandler;->post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private setupDefaultGridInfo(Lcom/android/launcher3/common/deviceprofile/DeviceProfile;[I)V
    .locals 12
    .param p1, "dp"    # Lcom/android/launcher3/common/deviceprofile/DeviceProfile;
    .param p2, "gridXY"    # [I

    .prologue
    const v10, 0x7f0b0001

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2809
    sget-object v9, Lcom/android/launcher3/allapps/model/AppsLoader;->sContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 2810
    .local v6, "res":Landroid/content/res/Resources;
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->isDreamProject()Z

    move-result v9

    if-nez v9, :cond_0

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->isCruiserProject()Z

    move-result v9

    if-eqz v9, :cond_3

    :cond_0
    move v5, v8

    .line 2811
    .local v5, "isDreamProject":Z
    :goto_0
    if-nez v5, :cond_1

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->isTablet()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 2812
    :cond_1
    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 2814
    .local v3, "gridX":I
    :goto_1
    const v9, 0x7f0a0004

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 2816
    .local v1, "gridSet":[Ljava/lang/String;
    const-string v0, ""

    .line 2817
    .local v0, "grid":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "index":I
    :goto_2
    array-length v9, v1

    if-ge v4, v9, :cond_6

    .line 2818
    aget-object v0, v1, v4

    .line 2819
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 2820
    :cond_2
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "invalid gridset : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .end local v0    # "grid":Ljava/lang/String;
    .end local v1    # "gridSet":[Ljava/lang/String;
    .end local v3    # "gridX":I
    .end local v4    # "index":I
    .end local v5    # "isDreamProject":Z
    :cond_3
    move v5, v7

    .line 2810
    goto :goto_0

    .line 2812
    .restart local v5    # "isDreamProject":Z
    :cond_4
    iget-object v9, p1, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v9}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountX()I

    move-result v3

    goto :goto_1

    .line 2823
    .restart local v0    # "grid":Ljava/lang/String;
    .restart local v1    # "gridSet":[Ljava/lang/String;
    .restart local v3    # "gridX":I
    .restart local v4    # "index":I
    :cond_5
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 2828
    :cond_6
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_8

    .line 2829
    const-string v9, "x"

    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2830
    .local v2, "gridVaules":[Ljava/lang/String;
    aget-object v9, v2, v7

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aput v9, p2, v7

    .line 2831
    aget-object v9, v2, v8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aput v9, p2, v8

    .line 2836
    .end local v2    # "gridVaules":[Ljava/lang/String;
    :goto_3
    sget-object v9, Lcom/android/launcher3/allapps/model/AppsLoader;->sContext:Landroid/content/Context;

    aget v10, p2, v7

    aget v11, p2, v8

    invoke-static {v9, v10, v11}, Lcom/android/launcher3/util/ScreenGridUtilities;->storeAppsGridLayoutPreference(Landroid/content/Context;II)V

    .line 2837
    const-string v9, "AppsLoader"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setupDefaultAppsGridInfo : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget v7, p2, v7

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " , "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v8, p2, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2838
    return-void

    .line 2817
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    .line 2833
    :cond_8
    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    aput v9, p2, v7

    .line 2834
    const v9, 0x7f0b0002

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    aput v9, p2, v8

    goto :goto_3
.end method

.method private setupGridInfo()V
    .locals 10

    .prologue
    const/4 v6, -0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 288
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v5

    sput-object v5, Lcom/android/launcher3/allapps/model/AppsLoader;->sCollator:Ljava/text/Collator;

    .line 289
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/LauncherAppState;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v2

    .line 291
    .local v2, "dp":Lcom/android/launcher3/common/deviceprofile/DeviceProfile;
    const/4 v5, 0x2

    new-array v4, v5, [I

    .line 293
    .local v4, "gridXY":[I
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/LauncherAppState;->isEasyModeEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 294
    iget-object v5, v2, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v5}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountX()I

    move-result v5

    aput v5, v4, v8

    .line 295
    iget-object v5, v2, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v5}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountY()I

    move-result v5

    aput v5, v4, v9

    .line 315
    :cond_0
    :goto_0
    aget v5, v4, v8

    sput v5, Lcom/android/launcher3/allapps/model/AppsLoader;->mCellCountX:I

    .line 316
    aget v5, v4, v8

    aget v6, v4, v9

    mul-int/2addr v5, v6

    iput v5, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mMaxItemsPerPage:I

    .line 317
    const-string v5, "AppsLoader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setupGridInfo : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v4, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v4, v9

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mMaxItemsPerPage:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , easymode "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 318
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher3/LauncherAppState;->isEasyModeEnabled()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 317
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    return-void

    .line 297
    :cond_1
    sget-object v5, Lcom/android/launcher3/allapps/model/AppsLoader;->sContext:Landroid/content/Context;

    invoke-static {v5, v4}, Lcom/android/launcher3/util/ScreenGridUtilities;->loadCurrentAppsGridSize(Landroid/content/Context;[I)V

    .line 298
    sget-object v5, Lcom/android/launcher3/allapps/model/AppsLoader;->sContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/launcher3/util/ScreenGridUtilities;->loadAppsSupportedGridSet(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 300
    .local v3, "gridSet":Ljava/lang/String;
    aget v5, v4, v8

    if-eq v5, v6, :cond_2

    aget v5, v4, v9

    if-ne v5, v6, :cond_5

    .line 302
    :cond_2
    invoke-direct {p0, v2, v4}, Lcom/android/launcher3/allapps/model/AppsLoader;->setupDefaultGridInfo(Lcom/android/launcher3/common/deviceprofile/DeviceProfile;[I)V

    .line 303
    invoke-direct {p0}, Lcom/android/launcher3/allapps/model/AppsLoader;->setupGridSet()V

    .line 308
    :cond_3
    :goto_1
    iget-object v5, v2, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v5}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountX()I

    move-result v0

    .line 309
    .local v0, "cellCountX":I
    iget-object v5, v2, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v5}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountY()I

    move-result v1

    .line 310
    .local v1, "cellCountY":I
    aget v5, v4, v8

    if-ne v0, v5, :cond_4

    aget v5, v4, v9

    if-eq v1, v5, :cond_0

    .line 311
    :cond_4
    const-string v5, "AppsLoader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateGridInfo : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v4, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v4, v9

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    aget v5, v4, v8

    aget v6, v4, v9

    invoke-direct {p0, v5, v6}, Lcom/android/launcher3/allapps/model/AppsLoader;->updateAppsGridInfo(II)V

    goto/16 :goto_0

    .line 304
    .end local v0    # "cellCountX":I
    .end local v1    # "cellCountY":I
    :cond_5
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 305
    :cond_6
    invoke-direct {p0}, Lcom/android/launcher3/allapps/model/AppsLoader;->setupGridSet()V

    goto :goto_1
.end method

.method private setupGridSet()V
    .locals 8

    .prologue
    .line 2789
    sget-object v5, Lcom/android/launcher3/allapps/model/AppsLoader;->sContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 2790
    .local v4, "res":Landroid/content/res/Resources;
    const v5, 0x7f0a0004

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 2792
    .local v2, "gridSet":[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2793
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_0
    array-length v5, v2

    if-ge v3, v5, :cond_3

    .line 2794
    aget-object v1, v2, v3

    .line 2795
    .local v1, "grid":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2796
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "invalid gridset : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2799
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2800
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-eq v3, v5, :cond_2

    .line 2801
    const-string v5, "|"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2793
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2804
    .end local v1    # "grid":Ljava/lang/String;
    :cond_3
    sget-object v5, Lcom/android/launcher3/allapps/model/AppsLoader;->sContext:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/launcher3/util/ScreenGridUtilities;->storeAppsSupportedGridSet(Landroid/content/Context;Ljava/lang/String;)V

    .line 2805
    const-string v5, "AppsLoader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setupAppsGridSet : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2806
    return-void
.end method

.method private tryGetCallbacks(Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;
    .locals 5
    .param p1, "oldCallbacks"    # Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;
    .param p2, "task"    # Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;

    .prologue
    const/4 v1, 0x0

    .line 2034
    iget-object v2, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2035
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/launcher3/allapps/model/AppsLoader;->isStopped(Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2036
    monitor-exit v2

    move-object v0, v1

    .line 2051
    :goto_0
    return-object v0

    .line 2039
    :cond_0
    iget-object v3, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mCallbacks:Ljava/lang/ref/WeakReference;

    if-nez v3, :cond_1

    .line 2040
    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    .line 2043
    :cond_1
    iget-object v3, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;

    .line 2044
    .local v0, "callbacks":Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;
    if-eq v0, p1, :cond_2

    .line 2045
    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    .line 2047
    :cond_2
    if-nez v0, :cond_3

    .line 2048
    const-string v3, "AppsLoader"

    const-string v4, "no mCallbacks"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2049
    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    .line 2051
    :cond_3
    monitor-exit v2

    goto :goto_0

    .line 2052
    .end local v0    # "callbacks":Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updateAppsGridInfo(II)V
    .locals 2
    .param p1, "gridX"    # I
    .param p2, "gridY"    # I

    .prologue
    .line 2771
    invoke-direct {p0}, Lcom/android/launcher3/allapps/model/AppsLoader;->getCallback()Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;

    move-result-object v0

    .line 2772
    .local v0, "oldCallbacks":Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;
    new-instance v1, Lcom/android/launcher3/allapps/model/AppsLoader$37;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/android/launcher3/allapps/model/AppsLoader$37;-><init>(Lcom/android/launcher3/allapps/model/AppsLoader;Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;II)V

    .line 2785
    .local v1, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v1}, Lcom/android/launcher3/allapps/model/AppsLoader;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 2786
    return-void
.end method

.method private updateHideItems(Ljava/util/ArrayList;Z)V
    .locals 1
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
    .line 1696
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v0, Lcom/android/launcher3/allapps/model/AppsLoader$24;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/launcher3/allapps/model/AppsLoader$24;-><init>(Lcom/android/launcher3/allapps/model/AppsLoader;Ljava/util/ArrayList;Z)V

    .line 1742
    .local v0, "updateRunnable":Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/android/launcher3/allapps/model/AppsLoader;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 1743
    return-void
.end method


# virtual methods
.method public addFolderAndBindItem(Lcom/android/launcher3/common/base/item/ItemInfo;Ljava/util/ArrayList;)V
    .locals 6
    .param p1, "folderInfo"    # Lcom/android/launcher3/common/base/item/ItemInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1672
    .local p2, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1673
    .local v4, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1674
    .local v3, "addedAppsScreensFinal":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v1, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/common/model/FavoritesUpdater;->addItem(Lcom/android/launcher3/common/base/item/ItemInfo;)J

    .line 1675
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1677
    invoke-direct {p0}, Lcom/android/launcher3/allapps/model/AppsLoader;->getCallback()Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;

    move-result-object v2

    .line 1678
    .local v2, "oldCallbacks":Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;
    if-nez v2, :cond_0

    .line 1679
    const-string v1, "AppsLoader"

    const-string v5, "addFolderAndBindItem running with no AppsCallbacks"

    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1692
    :goto_0
    return-void

    .line 1682
    :cond_0
    new-instance v0, Lcom/android/launcher3/allapps/model/AppsLoader$23;

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/allapps/model/AppsLoader$23;-><init>(Lcom/android/launcher3/allapps/model/AppsLoader;Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1691
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/model/AppsLoader;->runOnMainThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public addOrUpdater([Ljava/lang/String;Ljava/util/HashMap;Lcom/android/launcher3/common/compat/UserHandleCompat;)V
    .locals 32
    .param p1, "packages"    # [Ljava/lang/String;
    .param p3, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
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
    .line 1435
    .local p2, "addedOrUpdatedApps":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/content/ComponentName;Lcom/android/launcher3/common/base/item/IconInfo;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1436
    .local v7, "addedApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 1437
    .local v13, "updatedApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 1438
    .local v14, "removedApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1440
    .local v9, "addedAppsScreensFinal":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const-string v5, "AppsLoader"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "addOrUpdater:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p1

    array-length v10, v0

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1442
    sget-object v8, Lcom/android/launcher3/allapps/model/AppsLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v8

    .line 1443
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/allapps/model/AppsLoader;->getAllAppItemInApps()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .local v25, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    :cond_0
    :goto_0
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1444
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 1445
    .local v21, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    move-object/from16 v0, v21

    instance-of v5, v0, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v5, :cond_0

    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Lcom/android/launcher3/common/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1446
    move-object/from16 v0, v21

    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    move-object/from16 v20, v0

    .line 1447
    .local v20, "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    const/16 v23, 0x0

    .line 1448
    .local v23, "infoUpdated":Z
    const/16 v22, 0x0

    .line 1450
    .local v22, "infoAdded":Z
    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher3/common/base/item/IconInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v19

    .line 1451
    .local v19, "cn":Landroid/content/ComponentName;
    if-eqz v19, :cond_6

    .line 1452
    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 1453
    .local v17, "appInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    if-eqz v17, :cond_6

    .line 1454
    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher3/common/base/item/IconInfo;->isPromise()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1455
    sget-object v5, Lcom/android/launcher3/allapps/model/AppsLoader;->sLauncherApps:Lcom/android/launcher3/common/compat/LauncherAppsCompat;

    .line 1456
    invoke-virtual/range {v19 .. v19}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p3

    invoke-virtual {v5, v10, v0}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object v18

    .line 1457
    .local v18, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;>;"
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, p3

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/allapps/model/AppsLoader;->findActivityInfo(Ljava/util/List;Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;

    move-result-object v16

    .line 1458
    .local v16, "activityInfo":Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    const/16 v5, 0x26

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lcom/android/launcher3/common/base/item/IconInfo;->hasStatusFlag(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1461
    sget-object v5, Lcom/android/launcher3/allapps/model/AppsLoader;->sContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v27

    .line 1462
    .local v27, "pm":Landroid/content/pm/PackageManager;
    new-instance v5, Landroid/content/Intent;

    const-string v10, "android.intent.action.MAIN"

    invoke-direct {v5, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1464
    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v5

    const-string v10, "android.intent.category.LAUNCHER"

    invoke-virtual {v5, v10}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    const/high16 v10, 0x10000

    .line 1462
    move-object/from16 v0, v27

    invoke-virtual {v0, v5, v10}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v26

    .line 1466
    .local v26, "matched":Landroid/content/pm/ResolveInfo;
    if-nez v26, :cond_2

    .line 1469
    invoke-virtual/range {v19 .. v19}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 1468
    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v24

    .line 1471
    .local v24, "intent":Landroid/content/Intent;
    if-nez v24, :cond_1

    .line 1472
    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1532
    .end local v16    # "activityInfo":Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    .end local v17    # "appInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v18    # "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;>;"
    .end local v19    # "cn":Landroid/content/ComponentName;
    .end local v20    # "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v21    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v22    # "infoAdded":Z
    .end local v23    # "infoUpdated":Z
    .end local v24    # "intent":Landroid/content/Intent;
    .end local v25    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .end local v26    # "matched":Landroid/content/pm/ResolveInfo;
    .end local v27    # "pm":Landroid/content/pm/PackageManager;
    :catchall_0
    move-exception v5

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 1475
    .restart local v16    # "activityInfo":Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    .restart local v17    # "appInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    .restart local v18    # "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;>;"
    .restart local v19    # "cn":Landroid/content/ComponentName;
    .restart local v20    # "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    .restart local v21    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    .restart local v22    # "infoAdded":Z
    .restart local v23    # "infoUpdated":Z
    .restart local v24    # "intent":Landroid/content/Intent;
    .restart local v25    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .restart local v26    # "matched":Landroid/content/pm/ResolveInfo;
    .restart local v27    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    :try_start_1
    move-object/from16 v0, v24

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/android/launcher3/common/base/item/IconInfo;->promisedIntent:Landroid/content/Intent;

    .line 1479
    .end local v24    # "intent":Landroid/content/Intent;
    .end local v26    # "matched":Landroid/content/pm/ResolveInfo;
    .end local v27    # "pm":Landroid/content/pm/PackageManager;
    :cond_2
    if-eqz v16, :cond_3

    .line 1480
    invoke-static/range {v16 .. v16}, Lcom/android/launcher3/common/base/item/IconInfo;->initFlags(Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;)I

    move-result v5

    move-object/from16 v0, v20

    iput v5, v0, Lcom/android/launcher3/common/base/item/IconInfo;->flags:I

    .line 1481
    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getFirstInstallTime()J

    move-result-wide v10

    move-object/from16 v0, v20

    iput-wide v10, v0, Lcom/android/launcher3/common/base/item/IconInfo;->firstInstallTime:J

    .line 1484
    :cond_3
    move-object/from16 v0, v20

    iget-object v5, v0, Lcom/android/launcher3/common/base/item/IconInfo;->promisedIntent:Landroid/content/Intent;

    move-object/from16 v0, v20

    iput-object v5, v0, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    .line 1485
    const/4 v5, 0x0

    move-object/from16 v0, v20

    iput-object v5, v0, Lcom/android/launcher3/common/base/item/IconInfo;->promisedIntent:Landroid/content/Intent;

    .line 1486
    const/4 v5, 0x0

    move-object/from16 v0, v20

    iput v5, v0, Lcom/android/launcher3/common/base/item/IconInfo;->status:I

    .line 1487
    const/16 v23, 0x1

    .line 1488
    sget-object v5, Lcom/android/launcher3/allapps/model/AppsLoader;->sIconCache:Lcom/android/launcher3/common/model/IconCache;

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lcom/android/launcher3/common/base/item/IconInfo;->updateIcon(Lcom/android/launcher3/common/model/IconCache;)V

    .line 1490
    .end local v16    # "activityInfo":Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    .end local v18    # "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;>;"
    :cond_4
    if-eqz v17, :cond_6

    const-string v5, "android.intent.action.MAIN"

    move-object/from16 v0, v20

    iget-object v10, v0, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v10}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1491
    sget-object v5, Lcom/android/launcher3/allapps/model/AppsLoader;->sIconCache:Lcom/android/launcher3/common/model/IconCache;

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lcom/android/launcher3/common/base/item/IconInfo;->updateIcon(Lcom/android/launcher3/common/model/IconCache;)V

    .line 1492
    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/android/launcher3/common/base/item/IconInfo;->contentDescription:Ljava/lang/CharSequence;

    move-object/from16 v0, v20

    iput-object v5, v0, Lcom/android/launcher3/common/base/item/IconInfo;->contentDescription:Ljava/lang/CharSequence;

    .line 1493
    move-object/from16 v0, v20

    iget-wide v10, v0, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    const-wide/16 v30, -0x1

    cmp-long v5, v10, v30

    if-eqz v5, :cond_5

    move-object/from16 v0, v20

    iget v5, v0, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    const/4 v10, -0x1

    if-ne v5, v10, :cond_7

    .line 1494
    :cond_5
    const/16 v22, 0x1

    .line 1502
    .end local v17    # "appInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_6
    :goto_1
    if-eqz v23, :cond_8

    .line 1503
    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1496
    .restart local v17    # "appInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_7
    const/16 v23, 0x1

    goto :goto_1

    .line 1504
    .end local v17    # "appInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_8
    if-eqz v22, :cond_0

    .line 1505
    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1511
    .end local v19    # "cn":Landroid/content/ComponentName;
    .end local v20    # "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v21    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v22    # "infoAdded":Z
    .end local v23    # "infoUpdated":Z
    :cond_9
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 1512
    .restart local v21    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    new-instance v28, Landroid/content/ContentValues;

    invoke-direct/range {v28 .. v28}, Landroid/content/ContentValues;-><init>()V

    .line 1513
    .local v28, "values":Landroid/content/ContentValues;
    sget-object v10, Lcom/android/launcher3/allapps/model/AppsLoader;->sContext:Landroid/content/Context;

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v10, v1}, Lcom/android/launcher3/common/base/item/ItemInfo;->onAddToDatabase(Landroid/content/Context;Landroid/content/ContentValues;)V

    .line 1514
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher3/allapps/model/AppsLoader;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    move-object/from16 v0, v28

    move-object/from16 v1, v21

    invoke-virtual {v10, v0, v1}, Lcom/android/launcher3/common/model/FavoritesUpdater;->updateItem(Landroid/content/ContentValues;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto :goto_2

    .line 1532
    .end local v21    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v28    # "values":Landroid/content/ContentValues;
    :cond_a
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1534
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/allapps/model/AppsLoader;->getCallback()Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;

    move-result-object v6

    .line 1535
    .local v6, "oldCallbacks":Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_b

    .line 1536
    new-instance v4, Lcom/android/launcher3/allapps/model/AppsLoader$19;

    move-object/from16 v5, p0

    move-object/from16 v8, p1

    invoke-direct/range {v4 .. v9}, Lcom/android/launcher3/allapps/model/AppsLoader$19;-><init>(Lcom/android/launcher3/allapps/model/AppsLoader;Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;Ljava/util/ArrayList;[Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1561
    .local v4, "r":Ljava/lang/Runnable;
    if-eqz v6, :cond_e

    invoke-interface {v6}, Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;->needDefferToBind()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 1562
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/launcher3/allapps/model/AppsLoader;->addDeferredBindRunnable(Ljava/lang/Runnable;)V

    .line 1568
    .end local v4    # "r":Ljava/lang/Runnable;
    :cond_b
    :goto_3
    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_d

    .line 1569
    :cond_c
    new-instance v4, Lcom/android/launcher3/allapps/model/AppsLoader$20;

    move-object v10, v4

    move-object/from16 v11, p0

    move-object v12, v6

    move-object/from16 v15, p3

    invoke-direct/range {v10 .. v15}, Lcom/android/launcher3/allapps/model/AppsLoader$20;-><init>(Lcom/android/launcher3/allapps/model/AppsLoader;Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    .line 1577
    .restart local v4    # "r":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/launcher3/allapps/model/AppsLoader;->runOrAddDifferRunnable(Ljava/lang/Runnable;)V

    .line 1578
    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_d

    .line 1579
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/model/AppsLoader;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    invoke-virtual {v5, v14}, Lcom/android/launcher3/common/model/FavoritesUpdater;->deleteItemsFromDatabase(Ljava/util/ArrayList;)V

    .line 1582
    .end local v4    # "r":Ljava/lang/Runnable;
    :cond_d
    return-void

    .line 1564
    .restart local v4    # "r":Ljava/lang/Runnable;
    :cond_e
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/launcher3/allapps/model/AppsLoader;->runOrAddDifferRunnable(Ljava/lang/Runnable;)V

    goto :goto_3
.end method

.method public addPagesItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 1
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 2163
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/util/logging/SALogging;->updateStatusLogValuesForAppsItem()V

    .line 2164
    return-void
.end method

.method public addToFolderItem(Lcom/android/launcher3/folder/FolderInfo;Ljava/util/ArrayList;)V
    .locals 3
    .param p1, "folder"    # Lcom/android/launcher3/folder/FolderInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/folder/FolderInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2692
    .local p2, "addedAppInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    invoke-direct {p0}, Lcom/android/launcher3/allapps/model/AppsLoader;->getCallback()Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;

    move-result-object v0

    .line 2693
    .local v0, "oldCallbacks":Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;
    if-nez v0, :cond_0

    .line 2694
    const-string v1, "AppsLoader"

    const-string v2, "addToFolderItem running with no AppsCallbacks"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2720
    :goto_0
    return-void

    .line 2697
    :cond_0
    new-instance v1, Lcom/android/launcher3/allapps/model/AppsLoader$34;

    invoke-direct {v1, p0, v0, p2, p1}, Lcom/android/launcher3/allapps/model/AppsLoader$34;-><init>(Lcom/android/launcher3/allapps/model/AppsLoader;Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;Ljava/util/ArrayList;Lcom/android/launcher3/folder/FolderInfo;)V

    invoke-virtual {p0, v1}, Lcom/android/launcher3/allapps/model/AppsLoader;->runOnMainThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public addViewAndUpdateItemInfoToDb(Ljava/util/ArrayList;ZZ)V
    .locals 1
    .param p2, "setHidden"    # Z
    .param p3, "isGameApp"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 1621
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v0, Lcom/android/launcher3/allapps/model/AppsLoader$22;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/android/launcher3/allapps/model/AppsLoader$22;-><init>(Lcom/android/launcher3/allapps/model/AppsLoader;Ljava/util/ArrayList;ZZ)V

    .line 1668
    .local v0, "updateRunnable":Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/android/launcher3/allapps/model/AppsLoader;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 1669
    return-void
.end method

.method public bindItemsSync(ILcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V
    .locals 18
    .param p1, "synchronousBindPage"    # I
    .param p2, "task"    # Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;

    .prologue
    .line 720
    const-string v3, "AppsLoader"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "bindItemsSync : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v3, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 725
    .local v6, "appItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/allapps/model/AppsLoader;->getTopLevelItemsInApps()Ljava/util/ArrayList;

    move-result-object v11

    .line 726
    .local v11, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 727
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/model/AppsLoader;->setup(Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V

    .line 733
    :goto_0
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher3/allapps/model/AppsLoader;->mTotalPageNumber:I

    .line 734
    .local v13, "oldPageNumber":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/allapps/model/AppsLoader;->getCurrentComparator()Lcom/android/launcher3/allapps/model/AppsLoader$Normalizer;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/allapps/model/AppsLoader;->getTopLevelItemsInApps()Ljava/util/ArrayList;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/allapps/model/AppsLoader;->mMaxItemsPerPage:I

    move/from16 v16, v0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v3, v15, v0, v1}, Lcom/android/launcher3/allapps/model/AppsLoader$Normalizer;->normalize(Ljava/util/ArrayList;IZ)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/launcher3/allapps/model/AppsLoader;->mTotalPageNumber:I

    .line 736
    const-string v3, "AppsLoader"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "bindItemsSync mTotalPageNumber : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/allapps/model/AppsLoader;->mTotalPageNumber:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " , oldPageNumber : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v3, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/allapps/model/AppsLoader;->getTopLevelItemsInApps()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 740
    const/16 v3, -0x3e9

    move/from16 v0, p1

    if-eq v0, v3, :cond_2

    const/4 v10, 0x1

    .line 741
    .local v10, "isLoadingSynchronously":Z
    :goto_1
    if-eqz v10, :cond_3

    move/from16 v2, p1

    .line 742
    .local v2, "currScreen":I
    :goto_2
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher3/allapps/model/AppsLoader;->mTotalPageNumber:I

    if-lt v2, v3, :cond_0

    .line 743
    const/16 v2, -0x3e9

    .line 745
    :cond_0
    move v9, v2

    .line 746
    .local v9, "currentScreen":I
    if-gez v9, :cond_4

    const-wide/16 v4, -0x1

    .line 748
    .local v4, "currentScreenId":J
    :goto_3
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 749
    .local v7, "currentScreenItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .local v8, "otherScreenItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    move-object/from16 v3, p0

    .line 750
    invoke-virtual/range {v3 .. v8}, Lcom/android/launcher3/allapps/model/AppsLoader;->filterCurrentPageItems(JLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 751
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v7, v3, v1}, Lcom/android/launcher3/allapps/model/AppsLoader;->bindPageItems(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V

    .line 753
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/allapps/model/AppsLoader;->clearDeferredBindRunnable()V

    .line 754
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/allapps/model/AppsLoader;->mDeferredBindRunnables:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v8, v3, v1}, Lcom/android/launcher3/allapps/model/AppsLoader;->bindPageItems(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V

    .line 756
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/allapps/model/AppsLoader;->getCallback()Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;

    move-result-object v12

    .line 757
    .local v12, "oldCallbacks":Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;
    if-nez v12, :cond_5

    .line 758
    const-string v3, "AppsLoader"

    const-string v15, "bindItemsSync running with no AppsCallbacks"

    invoke-static {v3, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    :goto_4
    return-void

    .line 729
    .end local v2    # "currScreen":I
    .end local v4    # "currentScreenId":J
    .end local v7    # "currentScreenItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .end local v8    # "otherScreenItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .end local v9    # "currentScreen":I
    .end local v10    # "isLoadingSynchronously":Z
    .end local v12    # "oldCallbacks":Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;
    .end local v13    # "oldPageNumber":I
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/allapps/model/AppsLoader;->unbindItemsOnMainThread()V

    .line 730
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/allapps/model/AppsLoader;->setupGridInfo()V

    goto/16 :goto_0

    .line 740
    .restart local v13    # "oldPageNumber":I
    :cond_2
    const/4 v10, 0x0

    goto :goto_1

    .line 741
    .restart local v10    # "isLoadingSynchronously":Z
    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    .line 746
    .restart local v2    # "currScreen":I
    .restart local v9    # "currentScreen":I
    :cond_4
    int-to-long v4, v9

    goto :goto_3

    .line 761
    .restart local v4    # "currentScreenId":J
    .restart local v7    # "currentScreenItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .restart local v8    # "otherScreenItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .restart local v12    # "oldCallbacks":Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;
    :cond_5
    new-instance v14, Lcom/android/launcher3/allapps/model/AppsLoader$10;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v14, v0, v12, v1}, Lcom/android/launcher3/allapps/model/AppsLoader$10;-><init>(Lcom/android/launcher3/allapps/model/AppsLoader;Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V

    .line 769
    .local v14, "r":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/launcher3/allapps/model/AppsLoader;->addDeferredBindRunnable(Ljava/lang/Runnable;)V

    goto :goto_4
.end method

.method public bindPageItems(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V
    .locals 19
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
    .line 623
    .local p1, "pageItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .local p2, "deferredBindRunnables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Runnable;>;"
    const-string v3, "AppsLoader"

    const-string v5, "bindPageItems "

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/model/AppsLoader;->isStopped(Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 626
    :cond_0
    const-string v5, "AppsLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "bindPageItems page item is null or empty!:"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-nez p3, :cond_2

    const-string v3, "task null"

    .line 627
    :goto_0
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 626
    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    :cond_1
    :goto_1
    return-void

    .line 627
    :cond_2
    invoke-interface/range {p3 .. p3}, Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;->isStopped()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0

    .line 631
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/allapps/model/AppsLoader;->getCallback()Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;

    move-result-object v4

    .line 632
    .local v4, "oldCallbacks":Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;
    if-nez v4, :cond_4

    .line 633
    const-string v3, "AppsLoader"

    const-string v5, "bindPageItems running with no AppsCallbacks"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 637
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/launcher3/allapps/model/AppsLoader;->mIsFirstBind:Z

    if-eqz v3, :cond_5

    .line 638
    new-instance v2, Lcom/android/launcher3/allapps/model/AppsLoader$7;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v2, v0, v4, v1}, Lcom/android/launcher3/allapps/model/AppsLoader$7;-><init>(Lcom/android/launcher3/allapps/model/AppsLoader;Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V

    .line 646
    .local v2, "r":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/allapps/model/AppsLoader;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 647
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/launcher3/allapps/model/AppsLoader;->mIsFirstBind:Z

    .line 650
    .end local v2    # "r":Ljava/lang/Runnable;
    :cond_5
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 651
    .local v6, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    const/16 v18, 0x0

    .line 652
    .local v18, "numHiddenItem":I
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 653
    .local v17, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/model/AppsLoader;->isStopped(Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 656
    move-object/from16 v0, v17

    iget v5, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    goto :goto_2

    .line 658
    :pswitch_1
    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 659
    move-object/from16 v0, v17

    iget v5, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->hidden:I

    if-eqz v5, :cond_6

    .line 660
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 664
    :pswitch_2
    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 670
    .end local v17    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_7
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 672
    .local v15, "appsSize":I
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_3
    move/from16 v0, v16

    if-ge v0, v15, :cond_a

    .line 673
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/model/AppsLoader;->isStopped(Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 676
    move/from16 v7, v16

    .line 677
    .local v7, "start":I
    add-int/lit8 v3, v16, 0x2

    if-gt v3, v15, :cond_8

    const/4 v8, 0x2

    .line 678
    .local v8, "chunkSize":I
    :goto_4
    new-instance v2, Lcom/android/launcher3/allapps/model/AppsLoader$8;

    move-object/from16 v3, p0

    move-object/from16 v5, p3

    invoke-direct/range {v2 .. v8}, Lcom/android/launcher3/allapps/model/AppsLoader$8;-><init>(Lcom/android/launcher3/allapps/model/AppsLoader;Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;Ljava/util/ArrayList;II)V

    .line 687
    .restart local v2    # "r":Ljava/lang/Runnable;
    if-eqz p2, :cond_9

    .line 688
    monitor-enter p2

    .line 689
    :try_start_0
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 690
    monitor-exit p2

    .line 672
    :goto_5
    add-int/lit8 v16, v16, 0x2

    goto :goto_3

    .line 677
    .end local v2    # "r":Ljava/lang/Runnable;
    .end local v8    # "chunkSize":I
    :cond_8
    sub-int v8, v15, v16

    goto :goto_4

    .line 690
    .restart local v2    # "r":Ljava/lang/Runnable;
    .restart local v8    # "chunkSize":I
    :catchall_0
    move-exception v3

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 692
    :cond_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/allapps/model/AppsLoader;->runOnMainThread(Ljava/lang/Runnable;)V

    goto :goto_5

    .line 696
    .end local v2    # "r":Ljava/lang/Runnable;
    .end local v7    # "start":I
    .end local v8    # "chunkSize":I
    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/model/AppsLoader;->isStopped(Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 697
    const/4 v3, 0x0

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-wide v10, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    long-to-int v13, v10

    .line 698
    .local v13, "page":I
    sub-int v14, v15, v18

    .line 699
    .local v14, "itemNum":I
    new-instance v2, Lcom/android/launcher3/allapps/model/AppsLoader$9;

    move-object v9, v2

    move-object/from16 v10, p0

    move-object v11, v4

    move-object/from16 v12, p3

    invoke-direct/range {v9 .. v14}, Lcom/android/launcher3/allapps/model/AppsLoader$9;-><init>(Lcom/android/launcher3/allapps/model/AppsLoader;Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;II)V

    .line 708
    .restart local v2    # "r":Ljava/lang/Runnable;
    if-eqz p2, :cond_b

    .line 709
    monitor-enter p2

    .line 710
    :try_start_1
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 711
    monitor-exit p2

    goto/16 :goto_1

    :catchall_1
    move-exception v3

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v3

    .line 713
    :cond_b
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/allapps/model/AppsLoader;->runOnMainThread(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    .line 656
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public bindRemainedItems(Ljava/util/ArrayList;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V
    .locals 13
    .param p2, "task"    # Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;",
            "Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "deferredBindRunnables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Runnable;>;"
    const/4 v12, 0x0

    .line 795
    const-string v1, "AppsLoader"

    const-string v3, "bindRemainedItems "

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 798
    .local v4, "remainedItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 799
    .local v10, "remainedItemsInFolder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-direct {p0, v4, v10}, Lcom/android/launcher3/allapps/model/AppsLoader;->loadRemainedApps(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v9

    .line 800
    .local v9, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 801
    :cond_0
    const-string v1, "AppsLoader"

    const-string v3, "bindRemainedItems page item is null or empty!"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    :cond_1
    :goto_0
    return-void

    .line 804
    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    invoke-virtual {v1, v9}, Lcom/android/launcher3/common/model/FavoritesUpdater;->addItems(Ljava/util/ArrayList;)V

    .line 807
    sget-object v1, Lcom/android/launcher3/allapps/model/AppsLoader;->MENU_CUSTOM_NORMALIZER:Lcom/android/launcher3/allapps/model/AppsLoader$Normalizer;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/model/AppsLoader;->getTopLevelItemsInApps()Ljava/util/ArrayList;

    move-result-object v3

    iget v11, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mMaxItemsPerPage:I

    invoke-virtual {v1, v3, v11, v12}, Lcom/android/launcher3/allapps/model/AppsLoader$Normalizer;->normalize(Ljava/util/ArrayList;IZ)I

    .line 808
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/model/AppsLoader;->updateDirtyItems()V

    .line 810
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/model/AppsLoader;->getCurrentComparator()Lcom/android/launcher3/allapps/model/AppsLoader$Normalizer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/model/AppsLoader;->getTopLevelItemsInApps()Ljava/util/ArrayList;

    move-result-object v3

    iget v11, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mMaxItemsPerPage:I

    invoke-virtual {v1, v3, v11, v12}, Lcom/android/launcher3/allapps/model/AppsLoader$Normalizer;->normalize(Ljava/util/ArrayList;IZ)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mTotalPageNumber:I

    .line 812
    invoke-direct {p0}, Lcom/android/launcher3/allapps/model/AppsLoader;->getCallback()Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;

    move-result-object v2

    .line 813
    .local v2, "oldCallbacks":Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;
    if-nez v2, :cond_3

    .line 814
    const-string v1, "AppsLoader"

    const-string v3, "bindRemainedItems running with no AppsCallbacks"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 818
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/model/AppsLoader;->getCurrentComparator()Lcom/android/launcher3/allapps/model/AppsLoader$Normalizer;

    move-result-object v1

    sget-object v3, Lcom/android/launcher3/allapps/model/AppsLoader;->MENU_CUSTOM_NORMALIZER:Lcom/android/launcher3/allapps/model/AppsLoader$Normalizer;

    if-ne v1, v3, :cond_6

    .line 819
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 820
    .local v7, "appsSize":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v7, :cond_7

    .line 821
    move v5, v8

    .line 822
    .local v5, "start":I
    add-int/lit8 v1, v8, 0x2

    if-gt v1, v7, :cond_4

    const/4 v6, 0x2

    .line 823
    .local v6, "chunkSize":I
    :goto_2
    new-instance v0, Lcom/android/launcher3/allapps/model/AppsLoader$12;

    move-object v1, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/allapps/model/AppsLoader$12;-><init>(Lcom/android/launcher3/allapps/model/AppsLoader;Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;Ljava/util/ArrayList;II)V

    .line 832
    .local v0, "r":Ljava/lang/Runnable;
    if-eqz p1, :cond_5

    .line 833
    monitor-enter p1

    .line 834
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 835
    monitor-exit p1

    .line 820
    :goto_3
    add-int/lit8 v8, v8, 0x2

    goto :goto_1

    .line 822
    .end local v0    # "r":Ljava/lang/Runnable;
    .end local v6    # "chunkSize":I
    :cond_4
    sub-int v6, v7, v8

    goto :goto_2

    .line 835
    .restart local v0    # "r":Ljava/lang/Runnable;
    .restart local v6    # "chunkSize":I
    :catchall_0
    move-exception v1

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 837
    :cond_5
    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/model/AppsLoader;->runOnMainThread(Ljava/lang/Runnable;)V

    goto :goto_3

    .line 841
    .end local v0    # "r":Ljava/lang/Runnable;
    .end local v5    # "start":I
    .end local v6    # "chunkSize":I
    .end local v7    # "appsSize":I
    .end local v8    # "i":I
    :cond_6
    new-instance v0, Lcom/android/launcher3/allapps/model/AppsLoader$13;

    invoke-direct {v0, p0, p2}, Lcom/android/launcher3/allapps/model/AppsLoader$13;-><init>(Lcom/android/launcher3/allapps/model/AppsLoader;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V

    .line 848
    .restart local v0    # "r":Ljava/lang/Runnable;
    if-eqz p1, :cond_8

    .line 849
    monitor-enter p1

    .line 850
    :try_start_1
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 851
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 857
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_7
    :goto_4
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 858
    new-instance v0, Lcom/android/launcher3/allapps/model/AppsLoader$14;

    invoke-direct {v0, p0, v2, p2, v10}, Lcom/android/launcher3/allapps/model/AppsLoader$14;-><init>(Lcom/android/launcher3/allapps/model/AppsLoader;Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;Ljava/util/ArrayList;)V

    .line 866
    .restart local v0    # "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/model/AppsLoader;->runOnMainThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 851
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 853
    :cond_8
    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/model/AppsLoader;->runOnMainThread(Ljava/lang/Runnable;)V

    goto :goto_4
.end method

.method public bindRemainingSynchronousPages()V
    .locals 6

    .prologue
    .line 2057
    iget-object v3, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mDeferredBindRunnables:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2058
    const/4 v1, 0x0

    .line 2059
    .local v1, "deferredBindRunnables":[Ljava/lang/Runnable;
    iget-object v4, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mDeferredBindRunnables:Ljava/util/ArrayList;

    monitor-enter v4

    .line 2060
    :try_start_0
    iget-object v3, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mDeferredBindRunnables:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mDeferredBindRunnables:Ljava/util/ArrayList;

    .line 2061
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/Runnable;

    .line 2060
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, [Ljava/lang/Runnable;

    move-object v1, v0

    .line 2062
    iget-object v3, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mDeferredBindRunnables:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 2063
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2064
    array-length v4, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v2, v1, v3

    .line 2065
    .local v2, "r":Ljava/lang/Runnable;
    sget-object v5, Lcom/android/launcher3/allapps/model/AppsLoader;->sHandler:Lcom/android/launcher3/common/model/DeferredHandler;

    invoke-virtual {v5, v2}, Lcom/android/launcher3/common/model/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 2064
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2063
    .end local v2    # "r":Ljava/lang/Runnable;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 2068
    .end local v1    # "deferredBindRunnables":[Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method protected clearSBgDataStructures()V
    .locals 1

    .prologue
    .line 928
    iget-object v0, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mBgDuplicateCheckList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 929
    invoke-direct {p0}, Lcom/android/launcher3/allapps/model/AppsLoader;->appFolderInfoClear()V

    .line 930
    return-void
.end method

.method public containPagesItem(Lcom/android/launcher3/common/base/item/ItemInfo;)Z
    .locals 1
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 2178
    const/4 v0, 0x0

    return v0
.end method

.method public createLoaderTask(Z)V
    .locals 0
    .param p1, "isStopped"    # Z

    .prologue
    .line 322
    return-void
.end method

.method public dumpTopLevelItemsCount()V
    .locals 1

    .prologue
    .line 2723
    new-instance v0, Lcom/android/launcher3/allapps/model/AppsLoader$35;

    invoke-direct {v0, p0}, Lcom/android/launcher3/allapps/model/AppsLoader$35;-><init>(Lcom/android/launcher3/allapps/model/AppsLoader;)V

    .line 2729
    .local v0, "r":Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/android/launcher3/allapps/model/AppsLoader;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 2730
    return-void
.end method

.method public filterCurrentPageItems(JLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 8
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
    .line 894
    .local p3, "allItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .local p4, "currentScreenItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .local p5, "otherScreenItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 895
    .local v3, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 896
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 897
    .local v0, "i":Lcom/android/launcher3/common/base/item/ItemInfo;
    if-nez v0, :cond_0

    .line 898
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 905
    .end local v0    # "i":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_1
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 906
    .local v2, "itemsOnScreen":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    new-instance v4, Lcom/android/launcher3/allapps/model/AppsLoader$16;

    invoke-direct {v4, p0}, Lcom/android/launcher3/allapps/model/AppsLoader$16;-><init>(Lcom/android/launcher3/allapps/model/AppsLoader;)V

    invoke-static {p3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 912
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 913
    .local v1, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-wide v6, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 914
    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 915
    iget-wide v6, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 917
    :cond_2
    invoke-virtual {p5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 920
    .end local v1    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_3
    return-void
.end method

.method public findFolderById(Ljava/lang/Long;)Lcom/android/launcher3/folder/FolderInfo;
    .locals 4
    .param p1, "folderId"    # Ljava/lang/Long;

    .prologue
    .line 2680
    sget-object v1, Lcom/android/launcher3/allapps/model/AppsLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2681
    :try_start_0
    sget-object v0, Lcom/android/launcher3/allapps/model/AppsLoader;->sBgFolders:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/folder/FolderInfo;

    monitor-exit v1

    return-object v0

    .line 2682
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public finishBind(Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V
    .locals 4
    .param p1, "task"    # Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;

    .prologue
    .line 872
    invoke-direct {p0}, Lcom/android/launcher3/allapps/model/AppsLoader;->getCallback()Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;

    move-result-object v0

    .line 873
    .local v0, "oldCallbacks":Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;
    if-nez v0, :cond_0

    .line 874
    const-string v2, "AppsLoader"

    const-string v3, "finishBind running with no AppsCallbacks"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    :goto_0
    return-void

    .line 877
    :cond_0
    new-instance v1, Lcom/android/launcher3/allapps/model/AppsLoader$15;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/launcher3/allapps/model/AppsLoader$15;-><init>(Lcom/android/launcher3/allapps/model/AppsLoader;Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V

    .line 885
    .local v1, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v1}, Lcom/android/launcher3/allapps/model/AppsLoader;->runOnMainThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public getAllAppItemInApps()Ljava/util/ArrayList;
    .locals 10
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
    const-wide/16 v8, -0x66

    .line 2384
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2385
    .local v0, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2386
    .local v1, "folderIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    sget-object v5, Lcom/android/launcher3/allapps/model/AppsLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v5

    .line 2387
    :try_start_0
    sget-object v4, Lcom/android/launcher3/allapps/model/AppsLoader;->sBgFolders:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v4}, Lcom/android/launcher3/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/folder/FolderInfo;

    .line 2388
    .local v2, "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    iget-wide v6, v2, Lcom/android/launcher3/folder/FolderInfo;->container:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    .line 2389
    iget-wide v6, v2, Lcom/android/launcher3/folder/FolderInfo;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2398
    .end local v2    # "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 2391
    :cond_1
    :try_start_1
    sget-object v4, Lcom/android/launcher3/allapps/model/AppsLoader;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v4}, Lcom/android/launcher3/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 2392
    .local v3, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget v6, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    if-nez v6, :cond_2

    iget-wide v6, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_3

    iget-wide v6, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    .line 2394
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2395
    :cond_3
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2398
    .end local v3    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_4
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2399
    return-object v0
.end method

.method public getAllAppItemListInHome()Ljava/util/ArrayList;
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

    .line 2434
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2435
    .local v0, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2436
    .local v1, "folderIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    sget-object v5, Lcom/android/launcher3/allapps/model/AppsLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v5

    .line 2437
    :try_start_0
    sget-object v4, Lcom/android/launcher3/allapps/model/AppsLoader;->sBgFolders:Lcom/android/launcher3/util/LongArrayMap;

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

    .line 2438
    .local v2, "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    iget-wide v6, v2, Lcom/android/launcher3/folder/FolderInfo;->container:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_1

    iget-wide v6, v2, Lcom/android/launcher3/folder/FolderInfo;->container:J

    cmp-long v6, v6, v10

    if-nez v6, :cond_0

    .line 2440
    :cond_1
    iget-wide v6, v2, Lcom/android/launcher3/folder/FolderInfo;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2455
    .end local v2    # "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 2442
    :cond_2
    :try_start_1
    sget-object v4, Lcom/android/launcher3/allapps/model/AppsLoader;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

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

    .line 2443
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

    .line 2446
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2447
    :cond_5
    iget-object v6, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    if-nez v6, :cond_6

    .line 2448
    invoke-virtual {v3}, Lcom/android/launcher3/common/base/item/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    iput-object v6, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    .line 2449
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2451
    :cond_6
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2455
    .end local v3    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_7
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2456
    return-object v0
.end method

.method public getCurrentComparator()Lcom/android/launcher3/allapps/model/AppsLoader$Normalizer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/launcher3/allapps/model/AppsLoader$Normalizer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1425
    iget-object v0, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mNormalizer:Lcom/android/launcher3/allapps/model/AppsLoader$Normalizer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mNormalizer:Lcom/android/launcher3/allapps/model/AppsLoader$Normalizer;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/launcher3/allapps/model/AppsLoader;->MENU_CUSTOM_NORMALIZER:Lcom/android/launcher3/allapps/model/AppsLoader$Normalizer;

    goto :goto_0
.end method

.method public getDirtyItems()Ljava/util/ArrayList;
    .locals 9
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
    const/4 v8, 0x0

    .line 2085
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2086
    .local v4, "updateList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/model/AppsLoader;->getTopLevelItemsInApps()Ljava/util/ArrayList;

    move-result-object v3

    .line 2087
    .local v3, "topLevelItemsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 2088
    .local v2, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-boolean v6, v2, Lcom/android/launcher3/common/base/item/ItemInfo;->mDirty:Z

    if-eqz v6, :cond_1

    .line 2089
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2090
    iput-boolean v8, v2, Lcom/android/launcher3/common/base/item/ItemInfo;->mDirty:Z

    .line 2093
    :cond_1
    instance-of v6, v2, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v6, :cond_0

    move-object v1, v2

    .line 2094
    check-cast v1, Lcom/android/launcher3/folder/FolderInfo;

    .line 2095
    .local v1, "fInfo":Lcom/android/launcher3/folder/FolderInfo;
    iget-object v6, v1, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 2096
    .local v0, "child":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-boolean v7, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->mDirty:Z

    if-eqz v7, :cond_2

    .line 2097
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2098
    iput-boolean v8, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->mDirty:Z

    goto :goto_0

    .line 2104
    .end local v0    # "child":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v1    # "fInfo":Lcom/android/launcher3/folder/FolderInfo;
    .end local v2    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_3
    return-object v4
.end method

.method protected getDisabledItemInfo(Landroid/database/Cursor;Landroid/content/ComponentName;Landroid/content/Intent;Lcom/android/launcher3/common/model/CursorInfo;)Lcom/android/launcher3/common/base/item/IconInfo;
    .locals 5
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "cn"    # Landroid/content/ComponentName;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "iconInfo"    # Lcom/android/launcher3/common/model/CursorInfo;

    .prologue
    .line 1204
    new-instance v1, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-direct {v1}, Lcom/android/launcher3/common/base/item/IconInfo;-><init>()V

    .line 1205
    .local v1, "info":Lcom/android/launcher3/common/base/item/IconInfo;
    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v2

    iput-object v2, v1, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    .line 1206
    sget-object v2, Lcom/android/launcher3/allapps/model/AppsLoader;->sContext:Landroid/content/Context;

    invoke-virtual {p4, p1, v1, v2}, Lcom/android/launcher3/common/model/CursorInfo;->loadIcon(Landroid/database/Cursor;Lcom/android/launcher3/common/base/item/IconInfo;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1207
    .local v0, "icon":Landroid/graphics/Bitmap;
    const/4 v2, 0x2

    iput v2, v1, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    .line 1208
    sget-object v2, Lcom/android/launcher3/allapps/model/AppsLoader;->sContext:Landroid/content/Context;

    invoke-static {v2, p3}, Lcom/android/launcher3/Utilities;->isSystemApp(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1209
    const/4 v2, 0x1

    iput v2, v1, Lcom/android/launcher3/common/base/item/IconInfo;->flags:I

    .line 1210
    sget-boolean v2, Lcom/android/launcher3/allapps/model/AppsLoader;->sIsSafeMode:Z

    if-eqz v2, :cond_0

    .line 1211
    iget v2, v1, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    .line 1216
    :cond_0
    if-nez v0, :cond_2

    .line 1217
    sget-object v2, Lcom/android/launcher3/allapps/model/AppsLoader;->sIconCache:Lcom/android/launcher3/common/model/IconCache;

    iget-object v3, v1, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    const/4 v4, 0x0

    invoke-virtual {v2, v1, p3, v3, v4}, Lcom/android/launcher3/common/model/IconCache;->getTitleAndIcon(Lcom/android/launcher3/common/base/item/IconInfo;Landroid/content/Intent;Lcom/android/launcher3/common/compat/UserHandleCompat;Z)V

    .line 1223
    :goto_0
    iget-object v2, v1, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    if-nez v2, :cond_1

    .line 1224
    const-string v2, ""

    iput-object v2, v1, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    .line 1226
    :cond_1
    iput-object p3, v1, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    .line 1227
    iput-object p2, v1, Lcom/android/launcher3/common/base/item/IconInfo;->componentName:Landroid/content/ComponentName;

    .line 1228
    sget-object v2, Lcom/android/launcher3/allapps/model/AppsLoader;->sUserManager:Lcom/android/launcher3/common/compat/UserManagerCompat;

    iget-object v3, v1, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    iget-object v4, v1, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getBadgedLabelForUser(Ljava/lang/CharSequence;Lcom/android/launcher3/common/compat/UserHandleCompat;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v1, Lcom/android/launcher3/common/base/item/IconInfo;->contentDescription:Ljava/lang/CharSequence;

    .line 1229
    iget v2, p4, Lcom/android/launcher3/common/model/CursorInfo;->itemTypeIndex:I

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcom/android/launcher3/common/base/item/IconInfo;->itemType:I

    .line 1231
    return-object v1

    .line 1219
    :cond_2
    invoke-virtual {v1, v0}, Lcom/android/launcher3/common/base/item/IconInfo;->setIcon(Landroid/graphics/Bitmap;)V

    .line 1220
    iget v2, p4, Lcom/android/launcher3/common/model/CursorInfo;->titleIndex:I

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public getItemById(J)Lcom/android/launcher3/common/base/item/ItemInfo;
    .locals 3
    .param p1, "key"    # J

    .prologue
    .line 2686
    sget-object v1, Lcom/android/launcher3/allapps/model/AppsLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2687
    :try_start_0
    sget-object v0, Lcom/android/launcher3/allapps/model/AppsLoader;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    monitor-exit v1

    return-object v0

    .line 2688
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getItemInfoInAppsForComponentName(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;Z)Lcom/android/launcher3/common/base/item/ItemInfo;
    .locals 5
    .param p1, "cName"    # Landroid/content/ComponentName;
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .param p3, "exceptWidget"    # Z

    .prologue
    .line 2320
    new-instance v1, Lcom/android/launcher3/allapps/model/AppsLoader$32;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/launcher3/allapps/model/AppsLoader$32;-><init>(Lcom/android/launcher3/allapps/model/AppsLoader;Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    .line 2330
    .local v1, "filter":Lcom/android/launcher3/common/model/DataLoader$ItemInfoFilter;
    sget-object v3, Lcom/android/launcher3/allapps/model/AppsLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2331
    :try_start_0
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/model/AppsLoader;->getAllAppItemInApps()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v2, v1, p3}, Lcom/android/launcher3/allapps/model/AppsLoader;->filterItemInfo(Ljava/lang/Iterable;Lcom/android/launcher3/common/model/DataLoader$ItemInfoFilter;Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 2332
    .local v0, "appInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x1

    if-le v2, v4, :cond_0

    .line 2333
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v4, "Duplicated app icons in Apps"

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2339
    .end local v0    # "appInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 2334
    .restart local v0    # "appInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2335
    const/4 v2, 0x0

    monitor-exit v3

    .line 2337
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/item/ItemInfo;

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getLoaderStop()Z
    .locals 1

    .prologue
    .line 245
    sget-object v0, Lcom/android/launcher3/allapps/model/AppsLoader;->sLauncherModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->getLoaderTask()Lcom/android/launcher3/LauncherModel$LoaderTask;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/model/AppsLoader;->isStopped(Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)Z

    move-result v0

    return v0
.end method

.method public getMaxItemsPerPage()I
    .locals 1

    .prologue
    .line 2513
    iget v0, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mMaxItemsPerPage:I

    return v0
.end method

.method protected getTemporaryItemInfo(Landroid/database/Cursor;Landroid/content/ComponentName;Landroid/content/Intent;Lcom/android/launcher3/common/model/CursorInfo;)Lcom/android/launcher3/common/base/item/IconInfo;
    .locals 8
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "cn"    # Landroid/content/ComponentName;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "cursorItemInfo"    # Lcom/android/launcher3/common/model/CursorInfo;

    .prologue
    const/4 v5, 0x0

    .line 1240
    new-instance v1, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-direct {v1}, Lcom/android/launcher3/common/base/item/IconInfo;-><init>()V

    .line 1242
    .local v1, "info":Lcom/android/launcher3/common/base/item/IconInfo;
    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v0

    iput-object v0, v1, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    .line 1244
    sget-object v0, Lcom/android/launcher3/allapps/model/AppsLoader;->sLauncherApps:Lcom/android/launcher3/common/compat/LauncherAppsCompat;

    iget-object v2, v1, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {v0, p3, v2}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->resolveActivity(Landroid/content/Intent;Lcom/android/launcher3/common/compat/UserHandleCompat;)Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;

    move-result-object v3

    .line 1245
    .local v3, "lai":Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    sget-object v0, Lcom/android/launcher3/allapps/model/AppsLoader;->sIconCache:Lcom/android/launcher3/common/model/IconCache;

    iget-object v4, v1, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-object v2, p2

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/common/model/IconCache;->getTitleAndIcon(Lcom/android/launcher3/common/base/item/IconInfo;Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;Lcom/android/launcher3/common/compat/UserHandleCompat;ZZ)V

    .line 1246
    sget-object v0, Lcom/android/launcher3/allapps/model/AppsLoader;->sIconCache:Lcom/android/launcher3/common/model/IconCache;

    sget-object v2, Lcom/android/launcher3/allapps/model/AppsLoader;->sIconCache:Lcom/android/launcher3/common/model/IconCache;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/common/base/item/IconInfo;->getIcon(Lcom/android/launcher3/common/model/IconCache;)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v4, v1, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {v0, v2, v4}, Lcom/android/launcher3/common/model/IconCache;->isDefaultIcon(Landroid/graphics/Bitmap;Lcom/android/launcher3/common/compat/UserHandleCompat;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 1247
    iget v0, p4, Lcom/android/launcher3/common/model/CursorInfo;->iconIndex:I

    sget-object v2, Lcom/android/launcher3/allapps/model/AppsLoader;->sContext:Landroid/content/Context;

    invoke-static {p1, v0, v2}, Lcom/android/launcher3/util/BitmapUtils;->createIconBitmap(Landroid/database/Cursor;ILandroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1248
    .local v7, "icon":Landroid/graphics/Bitmap;
    if-nez v7, :cond_0

    sget-object v0, Lcom/android/launcher3/allapps/model/AppsLoader;->sIconCache:Lcom/android/launcher3/common/model/IconCache;

    iget-object v2, v1, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/common/model/IconCache;->getDefaultIcon(Lcom/android/launcher3/common/compat/UserHandleCompat;)Landroid/graphics/Bitmap;

    move-result-object v7

    .end local v7    # "icon":Landroid/graphics/Bitmap;
    :cond_0
    invoke-virtual {v1, v7}, Lcom/android/launcher3/common/base/item/IconInfo;->setIcon(Landroid/graphics/Bitmap;)V

    .line 1252
    :cond_1
    iget-object v0, v1, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 1253
    iget v0, p4, Lcom/android/launcher3/common/model/CursorInfo;->titleIndex:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    .line 1257
    :cond_2
    iget-object v0, v1, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    if-nez v0, :cond_3

    .line 1258
    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    .line 1261
    :cond_3
    iget-object v0, v1, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    if-nez v0, :cond_4

    .line 1262
    const-string v0, ""

    iput-object v0, v1, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    .line 1264
    :cond_4
    iput-object p3, v1, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    .line 1265
    iput-object p2, v1, Lcom/android/launcher3/common/base/item/IconInfo;->componentName:Landroid/content/ComponentName;

    .line 1266
    sget-object v0, Lcom/android/launcher3/allapps/model/AppsLoader;->sUserManager:Lcom/android/launcher3/common/compat/UserManagerCompat;

    iget-object v2, v1, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    iget-object v4, v1, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {v0, v2, v4}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getBadgedLabelForUser(Ljava/lang/CharSequence;Lcom/android/launcher3/common/compat/UserHandleCompat;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v1, Lcom/android/launcher3/common/base/item/IconInfo;->contentDescription:Ljava/lang/CharSequence;

    .line 1267
    iget v0, p4, Lcom/android/launcher3/common/model/CursorInfo;->itemTypeIndex:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v1, Lcom/android/launcher3/common/base/item/IconInfo;->itemType:I

    .line 1269
    return-object v1
.end method

.method public getTopLevelItemsFromNextPage(I)Ljava/util/ArrayList;
    .locals 8
    .param p1, "screen"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2405
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2406
    .local v0, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    sget-object v3, Lcom/android/launcher3/allapps/model/AppsLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2407
    :try_start_0
    sget-object v2, Lcom/android/launcher3/allapps/model/AppsLoader;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

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

    .line 2408
    .local v1, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-wide v4, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    int-to-long v6, p1

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    iget-wide v4, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v6, -0x66

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    iget v4, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->hidden:I

    if-nez v4, :cond_0

    .line 2410
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2413
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

    .line 2414
    return-object v0
.end method

.method public getTopLevelItemsFromOnPage(II)Ljava/util/ArrayList;
    .locals 8
    .param p1, "screen"    # I
    .param p2, "rank"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2421
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2422
    .local v0, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    sget-object v3, Lcom/android/launcher3/allapps/model/AppsLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2423
    :try_start_0
    sget-object v2, Lcom/android/launcher3/allapps/model/AppsLoader;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

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

    .line 2424
    .local v1, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-wide v4, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    int-to-long v6, p1

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    iget v4, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    if-lt v4, p2, :cond_0

    iget-wide v4, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v6, -0x66

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    iget v4, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->hidden:I

    if-nez v4, :cond_0

    .line 2426
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2429
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

    .line 2430
    return-object v0
.end method

.method public getTopLevelItemsInApps()Ljava/util/ArrayList;
    .locals 8
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
    .line 2371
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2372
    .local v0, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    sget-object v3, Lcom/android/launcher3/allapps/model/AppsLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2373
    :try_start_0
    sget-object v2, Lcom/android/launcher3/allapps/model/AppsLoader;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

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

    .line 2374
    .local v1, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-wide v4, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v6, -0x66

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    iget v4, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->hidden:I

    if-nez v4, :cond_0

    .line 2375
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2378
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

    .line 2379
    return-object v0
.end method

.method public getTopLevelPageItemsInApps(I)Ljava/util/ArrayList;
    .locals 8
    .param p1, "page"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2343
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2344
    .local v0, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    sget-object v3, Lcom/android/launcher3/allapps/model/AppsLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2345
    :try_start_0
    sget-object v2, Lcom/android/launcher3/allapps/model/AppsLoader;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

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

    .line 2346
    .local v1, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-wide v4, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v6, -0x66

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    iget-wide v4, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    int-to-long v6, p1

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    iget v4, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->hidden:I

    if-nez v4, :cond_0

    .line 2348
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2351
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

    .line 2352
    return-object v0
.end method

.method public getTotalScreenInApps()J
    .locals 10

    .prologue
    .line 2356
    const-wide/16 v2, -0x1

    .line 2357
    .local v2, "screen":J
    sget-object v4, Lcom/android/launcher3/allapps/model/AppsLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2358
    :try_start_0
    sget-object v1, Lcom/android/launcher3/allapps/model/AppsLoader;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v1}, Lcom/android/launcher3/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 2359
    .local v0, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-wide v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v8, -0x66

    cmp-long v5, v6, v8

    if-nez v5, :cond_0

    iget v5, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->hidden:I

    if-nez v5, :cond_0

    .line 2360
    iget-wide v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    cmp-long v5, v2, v6

    if-gez v5, :cond_0

    .line 2361
    iget-wide v2, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    goto :goto_0

    .line 2365
    .end local v0    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_1
    monitor-exit v4

    .line 2366
    return-wide v2

    .line 2365
    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getUpdater()Lcom/android/launcher3/common/model/DataUpdater;
    .locals 1

    .prologue
    .line 2158
    iget-object v0, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    return-object v0
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
    .line 1616
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/allapps/model/AppsLoader;->updateHideItems(Ljava/util/ArrayList;Z)V

    .line 1617
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/model/AppsLoader;->updateDirtyItems()V

    .line 1618
    return-void
.end method

.method public loadAllAppsItemsFromDB(Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)I
    .locals 21
    .param p1, "task"    # Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;

    .prologue
    .line 424
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 425
    .local v19, "itemsToUpdate":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 426
    .local v10, "restoredRows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 429
    .local v11, "pageItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    sget-object v3, Lcom/android/launcher3/common/model/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    .line 430
    .local v3, "contentUri":Landroid/net/Uri;
    const/4 v4, 0x0

    .line 431
    .local v4, "projection":[Ljava/lang/String;
    const-string v5, "(container=?)"

    .line 432
    .local v5, "selection":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v7, -0x66

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    .line 434
    .local v6, "selectionArg":[Ljava/lang/String;
    sget-object v2, Lcom/android/launcher3/allapps/model/AppsLoader;->sContentResolver:Landroid/content/ContentResolver;

    const-string v7, "screen ASC, rank ASC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 435
    .local v8, "c":Landroid/database/Cursor;
    if-nez v8, :cond_0

    .line 436
    const/4 v2, 0x0

    .line 487
    :goto_0
    return v2

    .line 439
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-gtz v2, :cond_1

    .line 440
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 441
    const/4 v2, 0x0

    goto :goto_0

    .line 444
    :cond_1
    new-instance v9, Lcom/android/launcher3/common/model/CursorInfo;

    invoke-direct {v9, v8}, Lcom/android/launcher3/common/model/CursorInfo;-><init>(Landroid/database/Cursor;)V

    .line 445
    .local v9, "cursorInfo":Lcom/android/launcher3/common/model/CursorInfo;
    new-instance v12, Lcom/android/launcher3/util/LongArrayMap;

    invoke-direct {v12}, Lcom/android/launcher3/util/LongArrayMap;-><init>()V

    .local v12, "folders":Lcom/android/launcher3/util/LongArrayMap;, "Lcom/android/launcher3/util/LongArrayMap<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    move-object/from16 v7, p0

    move-object/from16 v13, p1

    .line 447
    :try_start_0
    invoke-direct/range {v7 .. v13}, Lcom/android/launcher3/allapps/model/AppsLoader;->createItems(Landroid/database/Cursor;Lcom/android/launcher3/common/model/CursorInfo;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/launcher3/util/LongArrayMap;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 449
    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_2

    .line 450
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 454
    :cond_2
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher3/allapps/model/AppsLoader;->isStopped(Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 455
    const/4 v2, 0x0

    goto :goto_0

    .line 449
    :catchall_0
    move-exception v2

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-nez v7, :cond_3

    .line 450
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v2

    .line 458
    :cond_4
    if-eqz v12, :cond_6

    invoke-virtual {v12}, Lcom/android/launcher3/util/LongArrayMap;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 459
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "container in ("

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/launcher3/allapps/model/AppsLoader;->makeFoldersIdToString(Lcom/android/launcher3/util/LongArrayMap;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v7, 0x29

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 460
    sget-object v13, Lcom/android/launcher3/allapps/model/AppsLoader;->sContentResolver:Landroid/content/ContentResolver;

    const/16 v17, 0x0

    const-string v18, "rank ASC"

    move-object v14, v3

    move-object v15, v4

    move-object/from16 v16, v5

    invoke-virtual/range {v13 .. v18}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 461
    if-nez v8, :cond_5

    .line 462
    const/4 v2, 0x0

    goto :goto_0

    .line 465
    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v8, v9, v10, v1}, Lcom/android/launcher3/allapps/model/AppsLoader;->createItemsInFolder(Landroid/database/Cursor;Lcom/android/launcher3/common/model/CursorInfo;Ljava/util/ArrayList;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 467
    if-eqz v8, :cond_6

    .line 468
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 473
    :cond_6
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher3/allapps/model/AppsLoader;->isStopped(Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 474
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 467
    :catchall_1
    move-exception v2

    if-eqz v8, :cond_7

    .line 468
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v2

    .line 477
    :cond_8
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_9

    .line 479
    new-instance v20, Landroid/content/ContentValues;

    invoke-direct/range {v20 .. v20}, Landroid/content/ContentValues;-><init>()V

    .line 480
    .local v20, "values":Landroid/content/ContentValues;
    const-string v2, "restored"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 481
    sget-object v2, Lcom/android/launcher3/allapps/model/AppsLoader;->sContentResolver:Landroid/content/ContentResolver;

    sget-object v7, Lcom/android/launcher3/common/model/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const-string v13, "_id"

    .line 482
    invoke-static {v13, v10}, Lcom/android/launcher3/Utilities;->createDbSelectionQuery(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    .line 481
    move-object/from16 v0, v20

    invoke-virtual {v2, v7, v0, v13, v14}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 486
    .end local v20    # "values":Landroid/content/ContentValues;
    :cond_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/launcher3/allapps/model/AppsLoader;->sortItemsInFolder(Lcom/android/launcher3/util/LongArrayMap;)V

    .line 487
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/allapps/model/AppsLoader;->getCurrentComparator()Lcom/android/launcher3/allapps/model/AppsLoader$Normalizer;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/allapps/model/AppsLoader;->getTopLevelItemsInApps()Ljava/util/ArrayList;

    move-result-object v7

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher3/allapps/model/AppsLoader;->mMaxItemsPerPage:I

    const/4 v14, 0x0

    invoke-virtual {v2, v7, v13, v14}, Lcom/android/launcher3/allapps/model/AppsLoader$Normalizer;->normalize(Ljava/util/ArrayList;IZ)I

    move-result v2

    goto/16 :goto_0
.end method

.method public loadDefaultLayout(Lcom/android/launcher3/common/model/AutoInstallsLayout;Z)V
    .locals 6
    .param p1, "autoInstallLayout"    # Lcom/android/launcher3/common/model/AutoInstallsLayout;
    .param p2, "isSwitchedDb"    # Z

    .prologue
    .line 1309
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1310
    const-string v1, "AppsLoader"

    const-string v2, "current mode is home only mode. skip loadDefaultLayout"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1330
    :goto_0
    return-void

    .line 1313
    :cond_0
    const/4 v0, 0x0

    .line 1314
    .local v0, "appsParser":Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;
    if-eqz p1, :cond_1

    .line 1315
    const-string v1, "AppsLoader"

    const-string v2, "use auto install layout for apps"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1316
    invoke-virtual {p1}, Lcom/android/launcher3/common/model/AutoInstallsLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 1317
    .local v4, "res":Landroid/content/res/Resources;
    const-string v1, "default_application_order"

    const-string v2, "xml"

    invoke-virtual {p1}, Lcom/android/launcher3/common/model/AutoInstallsLayout;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 1319
    .local v5, "appOrderResId":I
    if-eqz v5, :cond_3

    .line 1320
    new-instance v0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;

    .end local v0    # "appsParser":Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;
    sget-object v1, Lcom/android/launcher3/allapps/model/AppsLoader;->sContext:Landroid/content/Context;

    const/4 v2, 0x0

    sget-object v3, Lcom/android/launcher3/allapps/model/AppsLoader;->sFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;-><init>(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/common/model/DefaultLayoutParser$LayoutParserCallback;Landroid/content/res/Resources;I)V

    .line 1326
    .end local v4    # "res":Landroid/content/res/Resources;
    .end local v5    # "appOrderResId":I
    .restart local v0    # "appsParser":Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    .line 1327
    invoke-direct {p0}, Lcom/android/launcher3/allapps/model/AppsLoader;->getDefaultLayoutParser()Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;

    move-result-object v0

    .line 1329
    :cond_2
    sget-object v1, Lcom/android/launcher3/allapps/model/AppsLoader;->sFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/common/model/FavoritesProvider;->loadAppsFavorites(Lcom/android/launcher3/common/model/DefaultLayoutParser;)I

    goto :goto_0

    .line 1322
    .restart local v4    # "res":Landroid/content/res/Resources;
    .restart local v5    # "appOrderResId":I
    :cond_3
    const-string v1, "AppsLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "default_application_order layout not found in package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/launcher3/common/model/AutoInstallsLayout;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public loadDefaultLayoutCompleted()V
    .locals 0

    .prologue
    .line 1334
    return-void
.end method

.method public loadPageItems(ILcom/android/launcher3/common/model/DataLoader$DataLoaderState;)Ljava/util/ArrayList;
    .locals 4
    .param p1, "page"    # I
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
    .line 409
    const-string v1, "AppsLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadPageItems: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    if-gez p1, :cond_0

    .line 411
    const/4 p1, 0x0

    .line 414
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/model/AppsLoader;->getTopLevelPageItemsInApps(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 415
    .local v0, "pageItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    iget-object v1, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mIsPageLoaded:[Z

    array-length v1, v1

    if-ge p1, v1, :cond_1

    .line 416
    iget-object v1, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mIsPageLoaded:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, p1

    .line 418
    :cond_1
    return-object v0
.end method

.method public onChangeScreenGrid(III)V
    .locals 5
    .param p1, "cellCountX"    # I
    .param p2, "cellCountY"    # I
    .param p3, "maxItemsPerPage"    # I

    .prologue
    const/4 v4, 0x0

    .line 2754
    const-string v1, "AppsLoader"

    const-string v2, "changeScreenGridSize for preview"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2755
    iput p3, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mMaxItemsPerPage:I

    .line 2756
    sput p1, Lcom/android/launcher3/allapps/model/AppsLoader;->mCellCountX:I

    .line 2758
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 2759
    .local v0, "gridXY":[I
    sget-object v1, Lcom/android/launcher3/allapps/model/AppsLoader;->sContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/launcher3/util/ScreenGridUtilities;->loadCurrentAppsGridSize(Landroid/content/Context;[I)V

    .line 2760
    aget v1, v0, v4

    if-ne p1, v1, :cond_0

    const/4 v1, 0x1

    aget v1, v0, v1

    if-ne p2, v1, :cond_0

    .line 2761
    invoke-virtual {p0, v4}, Lcom/android/launcher3/allapps/model/AppsLoader;->reloadPositionAllAppsItemsFromDB(Z)V

    .line 2768
    :goto_0
    return-void

    .line 2763
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mNormalizer:Lcom/android/launcher3/allapps/model/AppsLoader$Normalizer;

    sget-object v2, Lcom/android/launcher3/allapps/model/AppsLoader;->MENU_ALPHA_NORMALIZER:Lcom/android/launcher3/allapps/model/AppsLoader$Normalizer;

    if-ne v1, v2, :cond_1

    .line 2764
    invoke-virtual {p0, v4}, Lcom/android/launcher3/allapps/model/AppsLoader;->reloadPositionAllAppsItemsFromDB(Z)V

    .line 2766
    :cond_1
    sget-object v1, Lcom/android/launcher3/allapps/model/AppsLoader;->MENU_CUSTOM_NORMALIZER:Lcom/android/launcher3/allapps/model/AppsLoader$Normalizer;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/model/AppsLoader;->getTopLevelItemsInApps()Ljava/util/ArrayList;

    move-result-object v2

    iget v3, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mMaxItemsPerPage:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/launcher3/allapps/model/AppsLoader$Normalizer;->normalize(Ljava/util/ArrayList;IZ)I

    goto :goto_0
.end method

.method protected putItemToIdMap(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 4
    .param p1, "info"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 2670
    invoke-super {p0, p1}, Lcom/android/launcher3/common/model/DataLoader;->putItemToIdMap(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 2671
    instance-of v0, p1, Lcom/android/launcher3/folder/FolderInfo;

    if-nez v0, :cond_0

    .line 2672
    iget-object v0, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mAllAppsComponentKey:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/launcher3/util/ComponentKey;

    iget-object v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    iget-object v3, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-direct {v1, v2, v3}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2674
    :cond_0
    return-void
.end method

.method public registerCallbacks(Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;)V
    .locals 2
    .param p1, "callbacks"    # Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;

    .prologue
    .line 255
    iget-object v1, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 256
    :try_start_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mCallbacks:Ljava/lang/ref/WeakReference;

    .line 257
    monitor-exit v1

    .line 258
    return-void

    .line 257
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public reloadPositionAllAppsItemsFromDB(Z)V
    .locals 21
    .param p1, "withFolderContents"    # Z

    .prologue
    .line 2518
    sget-object v3, Lcom/android/launcher3/common/model/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    .line 2519
    .local v3, "contentUri":Landroid/net/Uri;
    const/4 v4, 0x0

    .line 2520
    .local v4, "projection":[Ljava/lang/String;
    const-string v5, "(container=?)"

    .line 2521
    .local v5, "selection":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v7, -0x66

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    .line 2523
    .local v6, "selectionArg":[Ljava/lang/String;
    sget-object v2, Lcom/android/launcher3/allapps/model/AppsLoader;->sContentResolver:Landroid/content/ContentResolver;

    const-string v7, "rank ASC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 2524
    .local v13, "c":Landroid/database/Cursor;
    if-nez v13, :cond_1

    .line 2594
    :cond_0
    :goto_0
    return-void

    .line 2528
    :cond_1
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-gtz v2, :cond_2

    .line 2529
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2533
    :cond_2
    new-instance v14, Lcom/android/launcher3/common/model/CursorInfo;

    invoke-direct {v14, v13}, Lcom/android/launcher3/common/model/CursorInfo;-><init>(Landroid/database/Cursor;)V

    .line 2534
    .local v14, "cursorInfo":Lcom/android/launcher3/common/model/CursorInfo;
    new-instance v15, Lcom/android/launcher3/util/LongArrayMap;

    invoke-direct {v15}, Lcom/android/launcher3/util/LongArrayMap;-><init>()V

    .line 2536
    .local v15, "folders":Lcom/android/launcher3/util/LongArrayMap;, "Lcom/android/launcher3/util/LongArrayMap<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    :cond_3
    :goto_1
    :try_start_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2537
    iget v2, v14, Lcom/android/launcher3/common/model/CursorInfo;->idIndex:I

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 2538
    .local v16, "id":J
    iget v2, v14, Lcom/android/launcher3/common/model/CursorInfo;->screenIndex:I

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 2539
    .local v20, "screenId":I
    iget v2, v14, Lcom/android/launcher3/common/model/CursorInfo;->rankIndex:I

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 2540
    .local v19, "rank":I
    const/16 v18, 0x0

    .line 2541
    .local v18, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    sget-object v7, Lcom/android/launcher3/allapps/model/AppsLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2542
    :try_start_1
    sget-object v2, Lcom/android/launcher3/allapps/model/AppsLoader;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    move-object/from16 v18, v0

    .line 2543
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2544
    if-eqz v18, :cond_5

    .line 2545
    move/from16 v0, v20

    int-to-long v8, v0

    :try_start_2
    move-object/from16 v0, v18

    iput-wide v8, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    .line 2546
    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    .line 2547
    if-eqz p1, :cond_3

    move-object/from16 v0, v18

    instance-of v2, v0, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v2, :cond_3

    .line 2548
    move-object/from16 v0, v18

    iget-wide v8, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    move-object/from16 v0, v18

    invoke-virtual {v15, v8, v9, v0}, Lcom/android/launcher3/util/LongArrayMap;->put(JLjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 2556
    .end local v16    # "id":J
    .end local v18    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v19    # "rank":I
    .end local v20    # "screenId":I
    :catchall_0
    move-exception v2

    invoke-interface {v13}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-nez v7, :cond_4

    .line 2557
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v2

    .line 2543
    .restart local v16    # "id":J
    .restart local v18    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    .restart local v19    # "rank":I
    .restart local v20    # "screenId":I
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v2

    .line 2551
    :cond_5
    const-string v2, "AppsLoader"

    const-string v7, "no item in sBgItemsIdMap"

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 2556
    .end local v16    # "id":J
    .end local v18    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v19    # "rank":I
    .end local v20    # "screenId":I
    :cond_6
    invoke-interface {v13}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_7

    .line 2557
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 2561
    :cond_7
    invoke-virtual {v15}, Lcom/android/launcher3/util/LongArrayMap;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 2562
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "container in ("

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/launcher3/allapps/model/AppsLoader;->makeFoldersIdToString(Lcom/android/launcher3/util/LongArrayMap;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v7, 0x29

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2563
    sget-object v7, Lcom/android/launcher3/allapps/model/AppsLoader;->sContentResolver:Landroid/content/ContentResolver;

    const/4 v11, 0x0

    const-string v12, "rank ASC"

    move-object v8, v3

    move-object v9, v4

    move-object v10, v5

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 2564
    if-eqz v13, :cond_0

    .line 2568
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-gtz v2, :cond_8

    .line 2569
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 2574
    :cond_8
    :goto_2
    :try_start_5
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 2575
    iget v2, v14, Lcom/android/launcher3/common/model/CursorInfo;->idIndex:I

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 2576
    .restart local v16    # "id":J
    iget v2, v14, Lcom/android/launcher3/common/model/CursorInfo;->rankIndex:I

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 2577
    .restart local v19    # "rank":I
    const/16 v18, 0x0

    .line 2578
    .restart local v18    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    sget-object v7, Lcom/android/launcher3/allapps/model/AppsLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 2579
    :try_start_6
    sget-object v2, Lcom/android/launcher3/allapps/model/AppsLoader;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    move-object/from16 v18, v0

    .line 2580
    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 2581
    if-eqz v18, :cond_a

    .line 2582
    :try_start_7
    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_2

    .line 2589
    .end local v16    # "id":J
    .end local v18    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v19    # "rank":I
    :catchall_2
    move-exception v2

    if-eqz v13, :cond_9

    .line 2590
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v2

    .line 2580
    .restart local v16    # "id":J
    .restart local v18    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    .restart local v19    # "rank":I
    :catchall_3
    move-exception v2

    :try_start_8
    monitor-exit v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    throw v2

    .line 2584
    :cond_a
    const-string v2, "AppsLoader"

    const-string v7, "no item in sBgItemsIdMap for folder"

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_2

    .line 2589
    .end local v16    # "id":J
    .end local v18    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v19    # "rank":I
    :cond_b
    if-eqz v13, :cond_0

    .line 2590
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method public reloadPositionFromDB(Lcom/android/launcher3/common/base/item/ItemInfo;)Lcom/android/launcher3/common/base/item/ItemInfo;
    .locals 12
    .param p1, "iteminfo"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    const/4 v5, 0x0

    .line 2598
    new-instance v8, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-direct {v8}, Lcom/android/launcher3/common/base/item/ItemInfo;-><init>()V

    .line 2599
    .local v8, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    invoke-virtual {v8, p1}, Lcom/android/launcher3/common/base/item/ItemInfo;->copyFrom(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 2600
    sget-object v1, Lcom/android/launcher3/common/model/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    .line 2601
    .local v1, "contentUri":Landroid/net/Uri;
    const/4 v2, 0x0

    .line 2602
    .local v2, "projection":[Ljava/lang/String;
    const-string v3, "(_id=?)"

    .line 2603
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-wide v10, v8, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v0

    .line 2605
    .local v4, "selectionArg":[Ljava/lang/String;
    sget-object v0, Lcom/android/launcher3/allapps/model/AppsLoader;->sContentResolver:Landroid/content/ContentResolver;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2606
    .local v6, "c":Landroid/database/Cursor;
    if-nez v6, :cond_1

    move-object v8, v5

    .line 2628
    .end local v8    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_0
    :goto_0
    return-object v8

    .line 2610
    .restart local v8    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_2

    .line 2611
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2615
    :cond_2
    new-instance v7, Lcom/android/launcher3/common/model/CursorInfo;

    invoke-direct {v7, v6}, Lcom/android/launcher3/common/model/CursorInfo;-><init>(Landroid/database/Cursor;)V

    .line 2617
    .local v7, "cursorInfo":Lcom/android/launcher3/common/model/CursorInfo;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2618
    iget v0, v7, Lcom/android/launcher3/common/model/CursorInfo;->screenIndex:I

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v10, v0

    iput-wide v10, v8, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    .line 2619
    iget v0, v7, Lcom/android/launcher3/common/model/CursorInfo;->rankIndex:I

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v8, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    .line 2620
    iget v0, v7, Lcom/android/launcher3/common/model/CursorInfo;->cellXIndex:I

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v8, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    .line 2621
    iget v0, v7, Lcom/android/launcher3/common/model/CursorInfo;->cellYIndex:I

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v8, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2624
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2625
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2624
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_4

    .line 2625
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public removeCloneItem(Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V
    .locals 11
    .param p1, "task"    # Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;

    .prologue
    const/4 v10, 0x1

    .line 2108
    invoke-direct {p0}, Lcom/android/launcher3/allapps/model/AppsLoader;->getCallback()Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;

    move-result-object v2

    .line 2109
    .local v2, "oldCallbacks":Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;
    if-eqz v2, :cond_0

    .line 2110
    new-instance v3, Lcom/android/launcher3/allapps/model/AppsLoader$28;

    invoke-direct {v3, p0, v2, p1}, Lcom/android/launcher3/allapps/model/AppsLoader$28;-><init>(Lcom/android/launcher3/allapps/model/AppsLoader;Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V

    .line 2119
    .local v3, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v3}, Lcom/android/launcher3/allapps/model/AppsLoader;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 2122
    .end local v3    # "r":Ljava/lang/Runnable;
    :cond_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 2123
    .local v4, "removeList":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/common/compat/UserHandleCompat;Ljava/util/HashSet<Landroid/content/ComponentName;>;>;"
    iget-object v5, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mBgDuplicateCheckList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 2124
    invoke-direct {p0}, Lcom/android/launcher3/allapps/model/AppsLoader;->loadDuplicateCheckList()Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mBgDuplicateCheckList:Ljava/util/ArrayList;

    .line 2125
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/model/AppsLoader;->getAllAppItemInApps()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 2126
    .local v0, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-object v6, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mBgDuplicateCheckList:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/launcher3/util/ComponentKey;

    iget-object v8, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    iget-object v9, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-direct {v7, v8, v9}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2127
    iget-object v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    .line 2128
    .local v1, "list":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    if-nez v1, :cond_2

    .line 2129
    new-instance v1, Ljava/util/HashSet;

    .end local v1    # "list":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 2130
    .restart local v1    # "list":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    iget-object v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {v4, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2132
    :cond_2
    iget-object v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2133
    iget-object v6, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    invoke-virtual {v6, v0}, Lcom/android/launcher3/common/model/FavoritesUpdater;->deleteItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto :goto_0

    .line 2136
    .end local v0    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v1    # "list":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    :cond_3
    const/4 v5, 0x0

    invoke-virtual {p0, v5, v10, v10, p1}, Lcom/android/launcher3/allapps/model/AppsLoader;->startAppsLoaderTask(IZZLcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V

    .line 2137
    return-void
.end method

.method public removePackagesAndComponents(Ljava/util/ArrayList;Lcom/android/launcher3/common/compat/UserHandleCompat;)V
    .locals 4
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;",
            "Lcom/android/launcher3/common/compat/UserHandleCompat;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1368
    .local p1, "removedApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-direct {p0}, Lcom/android/launcher3/allapps/model/AppsLoader;->getCallback()Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;

    move-result-object v0

    .line 1369
    .local v0, "oldCallbacks":Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;
    if-nez v0, :cond_0

    .line 1370
    const-string v2, "AppsLoader"

    const-string v3, "removePackagesAndComponents running with no AppsCallbacks"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1388
    :goto_0
    return-void

    .line 1375
    :cond_0
    new-instance v1, Lcom/android/launcher3/allapps/model/AppsLoader$17;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/android/launcher3/allapps/model/AppsLoader$17;-><init>(Lcom/android/launcher3/allapps/model/AppsLoader;Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;Ljava/util/ArrayList;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    .line 1383
    .local v1, "r":Ljava/lang/Runnable;
    invoke-interface {v0}, Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;->needDefferToBind()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1384
    invoke-virtual {p0, v1}, Lcom/android/launcher3/allapps/model/AppsLoader;->addDeferredBindRunnable(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1386
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/launcher3/allapps/model/AppsLoader;->runOrAddDifferRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public removePagesItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 1
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 2168
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/util/logging/SALogging;->updateStatusLogValuesForAppsItem()V

    .line 2169
    return-void
.end method

.method public removeUnRestoredItems()V
    .locals 3

    .prologue
    .line 2188
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/model/AppsLoader;->getAllAppItemInApps()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/launcher3/allapps/model/AppsLoader;->getUnRestoredItems(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    .line 2190
    .local v1, "removeItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2191
    iget-object v2, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/common/model/FavoritesUpdater;->deleteItemsFromDatabase(Ljava/util/ArrayList;)V

    .line 2193
    invoke-direct {p0}, Lcom/android/launcher3/allapps/model/AppsLoader;->getCallback()Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;

    move-result-object v0

    .line 2194
    .local v0, "oldCallbacks":Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;
    if-eqz v0, :cond_0

    .line 2195
    new-instance v2, Lcom/android/launcher3/allapps/model/AppsLoader$29;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/launcher3/allapps/model/AppsLoader$29;-><init>(Lcom/android/launcher3/allapps/model/AppsLoader;Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v2}, Lcom/android/launcher3/allapps/model/AppsLoader;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 2205
    .end local v0    # "oldCallbacks":Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;
    :cond_0
    return-void
.end method

.method public runCurrentComparatorNormalizerNormalize()V
    .locals 4

    .prologue
    .line 1429
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/model/AppsLoader;->getCurrentComparator()Lcom/android/launcher3/allapps/model/AppsLoader$Normalizer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/model/AppsLoader;->getTopLevelItemsInApps()Ljava/util/ArrayList;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mMaxItemsPerPage:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/allapps/model/AppsLoader$Normalizer;->normalize(Ljava/util/ArrayList;IZ)I

    .line 1430
    return-void
.end method

.method public runDBUpdateOnWorkerThread()V
    .locals 1

    .prologue
    .line 193
    new-instance v0, Lcom/android/launcher3/allapps/model/AppsLoader$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/allapps/model/AppsLoader$1;-><init>(Lcom/android/launcher3/allapps/model/AppsLoader;)V

    invoke-static {v0}, Lcom/android/launcher3/allapps/model/AppsLoader;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 199
    return-void
.end method

.method public setLoaderTaskStop(Z)V
    .locals 0
    .param p1, "isStopped"    # Z

    .prologue
    .line 242
    return-void
.end method

.method public setNormalizer(Lcom/android/launcher3/allapps/model/AppsLoader$Normalizer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/allapps/model/AppsLoader$Normalizer",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1413
    .local p1, "normalizer":Lcom/android/launcher3/allapps/model/AppsLoader$Normalizer;, "Lcom/android/launcher3/allapps/model/AppsLoader$Normalizer<Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mNormalizer:Lcom/android/launcher3/allapps/model/AppsLoader$Normalizer;

    if-eq p1, v0, :cond_0

    .line 1414
    const-string v0, "AppsLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setNormalizer : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1415
    iput-object p1, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mNormalizer:Lcom/android/launcher3/allapps/model/AppsLoader$Normalizer;

    .line 1417
    :cond_0
    return-void
.end method

.method public setOrderedScreen(Ljava/util/ArrayList;)V
    .locals 0
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
    .line 2184
    .local p1, "screen":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    return-void
.end method

.method public setPackageState(Lcom/android/launcher3/common/compat/PackageInstallerCompat$PackageInstallInfo;)V
    .locals 2
    .param p1, "installInfo"    # Lcom/android/launcher3/common/compat/PackageInstallerCompat$PackageInstallInfo;

    .prologue
    .line 2208
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/android/launcher3/common/compat/PackageInstallerCompat$PackageInstallInfo;->packageName:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 2258
    :cond_0
    :goto_0
    return-void

    .line 2212
    :cond_1
    new-instance v0, Lcom/android/launcher3/allapps/model/AppsLoader$30;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/allapps/model/AppsLoader$30;-><init>(Lcom/android/launcher3/allapps/model/AppsLoader;Lcom/android/launcher3/common/compat/PackageInstallerCompat$PackageInstallInfo;)V

    .line 2257
    .local v0, "updateRunnable":Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/android/launcher3/allapps/model/AppsLoader;->runOnWorkerThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setup(Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V
    .locals 5
    .param p1, "task"    # Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;

    .prologue
    const/4 v1, 0x1

    .line 268
    const-string v0, "AppsLoader"

    const-string v2, "setup"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/model/AppsLoader;->removeAllItems(Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V

    .line 271
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/model/AppsLoader;->unbindItemsOnMainThread()V

    .line 272
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/model/AppsLoader;->clearSBgDataStructures()V

    .line 273
    invoke-direct {p0}, Lcom/android/launcher3/allapps/model/AppsLoader;->setupGridInfo()V

    .line 275
    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/model/AppsLoader;->loadAllAppsItemsFromDB(Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mTotalPageNumber:I

    .line 276
    iget v0, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mTotalPageNumber:I

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mIsPageLoaded:[Z

    .line 277
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getCloneItemEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 278
    invoke-direct {p0}, Lcom/android/launcher3/allapps/model/AppsLoader;->loadDuplicateCheckList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mBgDuplicateCheckList:Ljava/util/ArrayList;

    .line 281
    :cond_0
    sget-object v0, Lcom/android/launcher3/allapps/model/AppsLoader;->sContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    .line 282
    sget-object v0, Lcom/android/launcher3/allapps/model/AppsLoader;->sContext:Landroid/content/Context;

    const/4 v2, 0x0

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.android.launcher3.SYSTEM_READY"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mIsSdCardReady:Z

    .line 283
    sget-object v0, Lcom/android/launcher3/allapps/model/AppsLoader;->sContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isExistSdCard(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mIsSdCardReady:Z

    :cond_1
    iput-boolean v1, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mIsSdCardReady:Z

    .line 285
    :cond_2
    return-void

    .line 282
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showApps(Ljava/util/ArrayList;Z)V
    .locals 1
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
    .line 1612
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/launcher3/allapps/model/AppsLoader;->addViewAndUpdateItemInfoToDb(Ljava/util/ArrayList;ZZ)V

    .line 1613
    return-void
.end method

.method protected sortItemsInFolder(Lcom/android/launcher3/util/LongArrayMap;)V
    .locals 12
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
    .local p1, "folders":Lcom/android/launcher3/util/LongArrayMap;, "Lcom/android/launcher3/util/LongArrayMap<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 492
    if-nez p1, :cond_1

    .line 530
    :cond_0
    return-void

    .line 494
    :cond_1
    invoke-virtual {p1}, Lcom/android/launcher3/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/base/item/ItemInfo;

    .local v3, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    move-object v1, v3

    .line 495
    check-cast v1, Lcom/android/launcher3/folder/FolderInfo;

    .line 496
    .local v1, "folder":Lcom/android/launcher3/folder/FolderInfo;
    iget-object v6, v1, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-gt v6, v11, :cond_4

    .line 497
    iget-object v6, v1, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v6, v11, :cond_3

    .line 498
    iget-object v6, v1, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 499
    .local v0, "appInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    iget-wide v8, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    iput-wide v8, v0, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    .line 500
    iget v6, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    iput v6, v0, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    .line 501
    iget v6, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    iput v6, v0, Lcom/android/launcher3/common/base/item/IconInfo;->cellX:I

    .line 502
    iget v6, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    iput v6, v0, Lcom/android/launcher3/common/base/item/IconInfo;->cellY:I

    .line 503
    iget-wide v8, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    iput-wide v8, v0, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    .line 505
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 507
    .local v5, "values":Landroid/content/ContentValues;
    const-string v6, "container"

    iget-wide v8, v0, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 508
    const-string v6, "rank"

    iget v8, v0, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 509
    const-string v6, "cellX"

    iget v8, v0, Lcom/android/launcher3/common/base/item/IconInfo;->cellX:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 510
    const-string v6, "cellY"

    iget v8, v0, Lcom/android/launcher3/common/base/item/IconInfo;->cellY:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 511
    const-string v6, "screen"

    iget-wide v8, v0, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 513
    iget-object v6, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    invoke-virtual {v6, v5, v0}, Lcom/android/launcher3/common/model/FavoritesUpdater;->updateItem(Landroid/content/ContentValues;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 515
    .end local v0    # "appInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v5    # "values":Landroid/content/ContentValues;
    :cond_3
    iget-object v6, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    invoke-virtual {v6, v3}, Lcom/android/launcher3/common/model/FavoritesUpdater;->deleteItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto/16 :goto_0

    .line 517
    :cond_4
    invoke-virtual {v1}, Lcom/android/launcher3/folder/FolderInfo;->sortContents()V

    .line 518
    const/4 v4, 0x0

    .line 519
    .local v4, "pos":I
    iget-object v6, v1, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/item/ItemInfo;

    .local v2, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    move-object v6, v2

    .line 520
    check-cast v6, Lcom/android/launcher3/common/base/item/IconInfo;

    iget-boolean v6, v6, Lcom/android/launcher3/common/base/item/IconInfo;->usingLowResIcon:Z

    if-eqz v6, :cond_6

    .line 521
    check-cast v2, Lcom/android/launcher3/common/base/item/IconInfo;

    .end local v2    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    sget-object v6, Lcom/android/launcher3/allapps/model/AppsLoader;->sIconCache:Lcom/android/launcher3/common/model/IconCache;

    invoke-virtual {v2, v6, v10}, Lcom/android/launcher3/common/base/item/IconInfo;->updateIcon(Lcom/android/launcher3/common/model/IconCache;Z)V

    .line 523
    :cond_6
    add-int/lit8 v4, v4, 0x1

    .line 524
    const/16 v6, 0x9

    if-lt v4, v6, :cond_5

    goto/16 :goto_0
.end method

.method public startAppsLoaderTask(IZZLcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V
    .locals 6
    .param p1, "startPage"    # I
    .param p2, "needDBUpdate"    # Z
    .param p3, "bindFinished"    # Z
    .param p4, "task"    # Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;

    .prologue
    .line 203
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mIsFirstBind:Z

    .line 204
    new-instance v0, Lcom/android/launcher3/allapps/model/AppsLoader$2;

    move-object v1, p0

    move v2, p1

    move-object v3, p4

    move v4, p3

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/allapps/model/AppsLoader$2;-><init>(Lcom/android/launcher3/allapps/model/AppsLoader;ILcom/android/launcher3/common/model/DataLoader$DataLoaderState;ZZ)V

    invoke-static {v0}, Lcom/android/launcher3/allapps/model/AppsLoader;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 239
    return-void
.end method

.method public titleUpdate()V
    .locals 5

    .prologue
    .line 2734
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/model/AppsLoader;->getAllAppItemInApps()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/launcher3/allapps/model/AppsLoader;->getNeedTitleUpdateIcons(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 2736
    .local v0, "needUpdateItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-direct {p0}, Lcom/android/launcher3/allapps/model/AppsLoader;->getCallback()Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;

    move-result-object v1

    .line 2737
    .local v1, "oldCallbacks":Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;
    if-nez v1, :cond_0

    .line 2738
    const-string v3, "AppsLoader"

    const-string v4, "titleUpdate running with no AppsCallbacks"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2751
    :goto_0
    return-void

    .line 2742
    :cond_0
    new-instance v2, Lcom/android/launcher3/allapps/model/AppsLoader$36;

    invoke-direct {v2, p0, v1, v0}, Lcom/android/launcher3/allapps/model/AppsLoader$36;-><init>(Lcom/android/launcher3/allapps/model/AppsLoader;Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;Ljava/util/ArrayList;)V

    .line 2750
    .local v2, "r":Ljava/lang/Runnable;
    invoke-direct {p0, v2}, Lcom/android/launcher3/allapps/model/AppsLoader;->runOrAddDifferRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public unRegisterCallbacks()V
    .locals 3

    .prologue
    .line 249
    iget-object v1, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 250
    :try_start_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mCallbacks:Ljava/lang/ref/WeakReference;

    .line 251
    monitor-exit v1

    .line 252
    return-void

    .line 251
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unbindItemsOnMainThread()V
    .locals 0

    .prologue
    .line 924
    return-void
.end method

.method public updateDirtyItems()V
    .locals 6

    .prologue
    .line 2140
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/model/AppsLoader;->getDirtyItems()Ljava/util/ArrayList;

    move-result-object v2

    .line 2141
    .local v2, "updateList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2142
    :cond_0
    const-string v4, "AppsLoader"

    const-string v5, "update dirty list is empty"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2154
    :goto_0
    return-void

    .line 2146
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2148
    .local v0, "contentValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 2149
    .local v1, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 2150
    .local v3, "values":Landroid/content/ContentValues;
    sget-object v5, Lcom/android/launcher3/allapps/model/AppsLoader;->sContext:Landroid/content/Context;

    invoke-virtual {v1, v5, v3}, Lcom/android/launcher3/common/base/item/ItemInfo;->onAddToDatabase(Landroid/content/Context;Landroid/content/ContentValues;)V

    .line 2151
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2153
    .end local v1    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v3    # "values":Landroid/content/ContentValues;
    :cond_2
    iget-object v4, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    sget-object v5, Lcom/android/launcher3/allapps/model/AppsLoader;->sContext:Landroid/content/Context;

    invoke-virtual {v4, v5, v0, v2}, Lcom/android/launcher3/common/model/FavoritesUpdater;->updateItemsInDatabaseHelper(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public updateIconsAndLabels(Ljava/util/HashSet;Lcom/android/launcher3/common/compat/UserHandleCompat;)V
    .locals 7
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
    .line 1585
    .local p1, "packages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1586
    .local v3, "outUpdates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/model/AppsLoader;->getAllAppItemInApps()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    .local v1, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    move-object v0, v1

    .line 1587
    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 1588
    .local v0, "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    iget-object v6, v0, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {v6, p2}, Lcom/android/launcher3/common/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, v0, Lcom/android/launcher3/common/base/item/IconInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1589
    sget-object v6, Lcom/android/launcher3/allapps/model/AppsLoader;->sIconCache:Lcom/android/launcher3/common/model/IconCache;

    invoke-virtual {v6, v0}, Lcom/android/launcher3/common/model/IconCache;->updateTitleAndIcon(Lcom/android/launcher3/common/base/item/IconInfo;)V

    .line 1590
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1594
    .end local v0    # "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v1    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_1
    invoke-direct {p0}, Lcom/android/launcher3/allapps/model/AppsLoader;->getCallback()Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;

    move-result-object v2

    .line 1595
    .local v2, "oldCallbacks":Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;
    if-nez v2, :cond_2

    .line 1596
    const-string v5, "AppsLoader"

    const-string v6, "updateIconsAndLabels running with no AppsCallbacks"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1609
    :goto_1
    return-void

    .line 1600
    :cond_2
    new-instance v4, Lcom/android/launcher3/allapps/model/AppsLoader$21;

    invoke-direct {v4, p0, v2, v3, p2}, Lcom/android/launcher3/allapps/model/AppsLoader$21;-><init>(Lcom/android/launcher3/allapps/model/AppsLoader;Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;Ljava/util/ArrayList;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    .line 1608
    .local v4, "r":Ljava/lang/Runnable;
    invoke-direct {p0, v4}, Lcom/android/launcher3/allapps/model/AppsLoader;->runOrAddDifferRunnable(Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method public updateItemsOnlyDB(Ljava/util/ArrayList;)V
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
    .line 1746
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v0, Lcom/android/launcher3/allapps/model/AppsLoader$25;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/allapps/model/AppsLoader$25;-><init>(Lcom/android/launcher3/allapps/model/AppsLoader;Ljava/util/ArrayList;)V

    .line 1757
    .local v0, "updateRunnable":Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/android/launcher3/allapps/model/AppsLoader;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 1758
    return-void
.end method

.method public updatePackageFlags(Lcom/android/launcher3/util/StringFilter;Lcom/android/launcher3/common/compat/UserHandleCompat;Lcom/android/launcher3/util/FlagOp;)V
    .locals 12
    .param p1, "pkgFilter"    # Lcom/android/launcher3/util/StringFilter;
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .param p3, "flagOp"    # Lcom/android/launcher3/util/FlagOp;

    .prologue
    .line 2633
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2635
    .local v7, "updatedIcons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    const-string v8, ""

    invoke-virtual {p1, v8}, Lcom/android/launcher3/util/StringFilter;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2636
    iget-object v9, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mQuietModeUsers:Landroid/util/LongSparseArray;

    sget-object v8, Lcom/android/launcher3/allapps/model/AppsLoader;->sUserManager:Lcom/android/launcher3/common/compat/UserManagerCompat;

    invoke-virtual {v8, p2}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher3/common/compat/UserHandleCompat;)J

    move-result-wide v10

    const/16 v8, 0x8

    .line 2637
    invoke-virtual {p3, v8}, Lcom/android/launcher3/util/FlagOp;->apply(I)I

    move-result v8

    if-lez v8, :cond_2

    const/4 v8, 0x1

    :goto_0
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 2636
    invoke-virtual {v9, v10, v11, v8}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 2639
    :cond_0
    sget-object v9, Lcom/android/launcher3/allapps/model/AppsLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v9

    .line 2640
    :try_start_0
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/model/AppsLoader;->getAllAppItemInApps()Ljava/util/ArrayList;

    move-result-object v2

    .line 2641
    .local v2, "allAppItemInApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 2642
    .local v4, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    instance-of v10, v4, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v10, :cond_1

    .line 2643
    move-object v0, v4

    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    move-object v3, v0

    .line 2644
    .local v3, "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    iget-object v10, v3, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {v10, p2}, Lcom/android/launcher3/common/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    iget-object v10, v3, Lcom/android/launcher3/common/base/item/IconInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v10, :cond_1

    iget-object v10, v3, Lcom/android/launcher3/common/base/item/IconInfo;->componentName:Landroid/content/ComponentName;

    .line 2645
    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Lcom/android/launcher3/util/StringFilter;->matches(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 2646
    iget v10, v3, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    invoke-virtual {p3, v10}, Lcom/android/launcher3/util/FlagOp;->apply(I)I

    move-result v10

    iput v10, v3, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    .line 2647
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2651
    .end local v2    # "allAppItemInApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .end local v3    # "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v4    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 2637
    :cond_2
    const/4 v8, 0x0

    goto :goto_0

    .line 2651
    .restart local v2    # "allAppItemInApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    :cond_3
    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2653
    invoke-direct {p0}, Lcom/android/launcher3/allapps/model/AppsLoader;->getCallback()Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;

    move-result-object v5

    .line 2654
    .local v5, "oldCallbacks":Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;
    if-eqz v5, :cond_4

    .line 2655
    new-instance v6, Lcom/android/launcher3/allapps/model/AppsLoader$33;

    invoke-direct {v6, p0, v5, v7, p2}, Lcom/android/launcher3/allapps/model/AppsLoader$33;-><init>(Lcom/android/launcher3/allapps/model/AppsLoader;Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;Ljava/util/ArrayList;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    .line 2664
    .local v6, "r":Ljava/lang/Runnable;
    invoke-direct {p0, v6}, Lcom/android/launcher3/allapps/model/AppsLoader;->runOrAddDifferRunnable(Ljava/lang/Runnable;)V

    .line 2666
    .end local v6    # "r":Ljava/lang/Runnable;
    :cond_4
    return-void
.end method

.method public updatePagesItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 1
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 2173
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/util/logging/SALogging;->updateStatusLogValuesForAppsItem()V

    .line 2174
    return-void
.end method

.method public updateSessionDisplayInfo(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2264
    if-nez p1, :cond_0

    .line 2316
    :goto_0
    return-void

    .line 2268
    :cond_0
    new-instance v0, Lcom/android/launcher3/allapps/model/AppsLoader$31;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/allapps/model/AppsLoader$31;-><init>(Lcom/android/launcher3/allapps/model/AppsLoader;Ljava/lang/String;)V

    .line 2315
    .local v0, "updateRunnable":Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/android/launcher3/allapps/model/AppsLoader;->runOnWorkerThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public updateUnavailablePackage(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;I)V
    .locals 6
    .param p1, "disabledPackages"    # Ljava/lang/String;
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .param p3, "reason"    # I

    .prologue
    .line 1393
    invoke-direct {p0}, Lcom/android/launcher3/allapps/model/AppsLoader;->getCallback()Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;

    move-result-object v2

    .line 1394
    .local v2, "oldCallbacks":Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;
    if-nez v2, :cond_0

    .line 1395
    const-string v1, "AppsLoader"

    const-string v3, "updateUnavailablePackage running with no AppsCallbacks"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1408
    :goto_0
    return-void

    .line 1399
    :cond_0
    new-instance v0, Lcom/android/launcher3/allapps/model/AppsLoader$18;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/allapps/model/AppsLoader$18;-><init>(Lcom/android/launcher3/allapps/model/AppsLoader;Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;I)V

    .line 1407
    .local v0, "r":Ljava/lang/Runnable;
    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/model/AppsLoader;->runOrAddDifferRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
