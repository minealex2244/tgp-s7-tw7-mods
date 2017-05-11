.class public Lcom/android/launcher3/common/model/IconCache;
.super Ljava/lang/Object;
.source "IconCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/common/model/IconCache$IconDB;,
        Lcom/android/launcher3/common/model/IconCache$SerializedIconUpdateTask;,
        Lcom/android/launcher3/common/model/IconCache$IconLoadRequest;,
        Lcom/android/launcher3/common/model/IconCache$CacheEntry;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final EMPTY_CLASS_NAME:Ljava/lang/String; = "."

.field private static final ICON_SIZE_DEFINED_IN_APP_DP:F = 48.0f

.field private static final ICON_UPDATE_TOKEN:Ljava/lang/Object;

.field private static final INITIAL_ICON_CACHE_CAPACITY:I = 0x32

.field private static final LOW_RES_SCALE_FACTOR:I = 0x5

.field private static final TAG:Ljava/lang/String; = "Launcher.IconCache"


# instance fields
.field private final mActivityBgColor:I

.field private final mCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/launcher3/util/ComponentKey;",
            "Lcom/android/launcher3/common/model/IconCache$CacheEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mDefaultIcons:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/launcher3/common/compat/UserHandleCompat;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final mIconDb:Lcom/android/launcher3/common/model/IconCache$IconDB;

.field private mIconDpi:I

.field private final mLauncherApps:Lcom/android/launcher3/common/compat/LauncherAppsCompat;

.field private mLowResBitmap:Landroid/graphics/Bitmap;

.field private mLowResCanvas:Landroid/graphics/Canvas;

.field private final mLowResOptions:Landroid/graphics/BitmapFactory$Options;

.field private mLowResPaint:Landroid/graphics/Paint;

.field private final mMainThreadExecutor:Lcom/android/launcher3/util/MainThreadExecutor;

.field private final mPackageBgColor:I

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mSDCardBitmap:Landroid/graphics/Bitmap;

.field private mSystemState:Ljava/lang/String;

.field private final mUserManager:Lcom/android/launcher3/common/compat/UserManagerCompat;

.field private final mWorkerHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 91
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/launcher3/common/model/IconCache;->ICON_UPDATE_TOKEN:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "iconSize"    # I

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/common/model/IconCache;->mDefaultIcons:Ljava/util/HashMap;

    .line 101
    new-instance v1, Lcom/android/launcher3/util/MainThreadExecutor;

    invoke-direct {v1}, Lcom/android/launcher3/util/MainThreadExecutor;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/common/model/IconCache;->mMainThreadExecutor:Lcom/android/launcher3/util/MainThreadExecutor;

    .line 107
    new-instance v1, Ljava/util/HashMap;

    const/16 v2, 0x32

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lcom/android/launcher3/common/model/IconCache;->mCache:Ljava/util/HashMap;

    .line 132
    iput-object p1, p0, Lcom/android/launcher3/common/model/IconCache;->mContext:Landroid/content/Context;

    .line 133
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/common/model/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 134
    iget-object v1, p0, Lcom/android/launcher3/common/model/IconCache;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/UserManagerCompat;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/common/model/IconCache;->mUserManager:Lcom/android/launcher3/common/compat/UserManagerCompat;

    .line 135
    iget-object v1, p0, Lcom/android/launcher3/common/model/IconCache;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/LauncherAppsCompat;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/common/model/IconCache;->mLauncherApps:Lcom/android/launcher3/common/compat/LauncherAppsCompat;

    .line 136
    invoke-direct {p0, p2}, Lcom/android/launcher3/common/model/IconCache;->getLauncherIconDensity(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/common/model/IconCache;->mIconDpi:I

    .line 137
    new-instance v1, Lcom/android/launcher3/common/model/IconCache$IconDB;

    invoke-direct {v1, p1}, Lcom/android/launcher3/common/model/IconCache$IconDB;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/launcher3/common/model/IconCache;->mIconDb:Lcom/android/launcher3/common/model/IconCache$IconDB;

    .line 139
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Lcom/android/launcher3/LauncherModel;->getWorkerLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/launcher3/common/model/IconCache;->mWorkerHandler:Landroid/os/Handler;

    .line 141
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0023

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/common/model/IconCache;->mActivityBgColor:I

    .line 142
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0024

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/common/model/IconCache;->mPackageBgColor:I

    .line 143
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/common/model/IconCache;->mLowResOptions:Landroid/graphics/BitmapFactory$Options;

    .line 146
    iget-object v1, p0, Lcom/android/launcher3/common/model/IconCache;->mLowResOptions:Landroid/graphics/BitmapFactory$Options;

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 147
    iget-object v1, p0, Lcom/android/launcher3/common/model/IconCache;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200f7

    iget v3, p0, Lcom/android/launcher3/common/model/IconCache;->mIconDpi:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 149
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lcom/android/launcher3/util/BitmapUtils;->getBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/common/model/IconCache;->mSDCardBitmap:Landroid/graphics/Bitmap;

    .line 150
    invoke-direct {p0}, Lcom/android/launcher3/common/model/IconCache;->updateSystemStateString()V

    .line 152
    const-string v1, "Launcher.IconCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IconCache : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/launcher3/common/model/IconCache;->mIconDpi:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/common/model/IconCache;)Lcom/android/launcher3/util/MainThreadExecutor;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/model/IconCache;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/launcher3/common/model/IconCache;->mMainThreadExecutor:Lcom/android/launcher3/util/MainThreadExecutor;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher3/common/model/IconCache;Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;Z)Landroid/content/ContentValues;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/model/IconCache;
    .param p1, "x1"    # Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    .param p2, "x2"    # Z

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/common/model/IconCache;->updateCacheAndGetContentValues(Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;Z)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher3/common/model/IconCache;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/model/IconCache;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/launcher3/common/model/IconCache;->mSystemState:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/launcher3/common/model/IconCache;)Lcom/android/launcher3/common/model/IconCache$IconDB;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/model/IconCache;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/launcher3/common/model/IconCache;->mIconDb:Lcom/android/launcher3/common/model/IconCache$IconDB;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/launcher3/common/model/IconCache;)Lcom/android/launcher3/common/compat/UserManagerCompat;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/model/IconCache;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/launcher3/common/model/IconCache;->mUserManager:Lcom/android/launcher3/common/compat/UserManagerCompat;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/launcher3/common/model/IconCache;Lcom/android/launcher3/util/ComponentKey;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/model/IconCache;
    .param p1, "x1"    # Lcom/android/launcher3/util/ComponentKey;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/launcher3/common/model/IconCache;->isExistIconInDB(Lcom/android/launcher3/util/ComponentKey;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/launcher3/common/model/IconCache;Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;Landroid/content/pm/PackageInfo;J)V
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/model/IconCache;
    .param p1, "x1"    # Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    .param p2, "x2"    # Landroid/content/pm/PackageInfo;
    .param p3, "x3"    # J

    .prologue
    .line 76
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher3/common/model/IconCache;->addIconToDBAndMemCache(Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;Landroid/content/pm/PackageInfo;J)V

    return-void
.end method

.method static synthetic access$700()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/android/launcher3/common/model/IconCache;->ICON_UPDATE_TOKEN:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/launcher3/common/model/IconCache;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/model/IconCache;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/launcher3/common/model/IconCache;->mWorkerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private addIconToDB(Landroid/content/ContentValues;Landroid/content/ComponentName;Landroid/content/pm/PackageInfo;J)V
    .locals 4
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "key"    # Landroid/content/ComponentName;
    .param p3, "info"    # Landroid/content/pm/PackageInfo;
    .param p4, "userSerial"    # J

    .prologue
    .line 418
    const-string v0, "componentName"

    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    const-string v0, "profileId"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 420
    const-string v0, "lastUpdated"

    iget-wide v2, p3, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 421
    const-string v0, "version"

    iget v1, p3, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 422
    iget-object v0, p0, Lcom/android/launcher3/common/model/IconCache;->mIconDb:Lcom/android/launcher3/common/model/IconCache$IconDB;

    invoke-virtual {v0}, Lcom/android/launcher3/common/model/IconCache$IconDB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "icons"

    const/4 v2, 0x0

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 424
    return-void
.end method

.method private addIconToDBAndMemCache(Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;Landroid/content/pm/PackageInfo;J)V
    .locals 7
    .param p1, "app"    # Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    .param p2, "info"    # Landroid/content/pm/PackageInfo;
    .param p3, "userSerial"    # J

    .prologue
    .line 407
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/common/model/IconCache;->updateCacheAndGetContentValues(Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;Z)Landroid/content/ContentValues;

    move-result-object v1

    .line 408
    .local v1, "values":Landroid/content/ContentValues;
    invoke-virtual {p1}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    move-object v0, p0

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/common/model/IconCache;->addIconToDB(Landroid/content/ContentValues;Landroid/content/ComponentName;Landroid/content/pm/PackageInfo;J)V

    .line 409
    return-void
.end method

.method private cacheLocked(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;Lcom/android/launcher3/common/compat/UserHandleCompat;ZZI)Lcom/android/launcher3/common/model/IconCache$CacheEntry;
    .locals 12
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "info"    # Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    .param p3, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .param p4, "usePackageIcon"    # Z
    .param p5, "useLowResIcon"    # Z
    .param p6, "isDisabled"    # I

    .prologue
    .line 594
    new-instance v7, Lcom/android/launcher3/util/ComponentKey;

    invoke-direct {v7, p1, p3}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    .line 595
    .local v7, "cacheKey":Lcom/android/launcher3/util/ComponentKey;
    iget-object v1, p0, Lcom/android/launcher3/common/model/IconCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher3/common/model/IconCache$CacheEntry;

    .line 596
    .local v9, "entry":Lcom/android/launcher3/common/model/IconCache$CacheEntry;
    if-eqz v9, :cond_0

    iget-boolean v1, v9, Lcom/android/launcher3/common/model/IconCache$CacheEntry;->isLowResIcon:Z

    if-eqz v1, :cond_3

    if-nez p5, :cond_3

    .line 597
    :cond_0
    new-instance v9, Lcom/android/launcher3/common/model/IconCache$CacheEntry;

    .end local v9    # "entry":Lcom/android/launcher3/common/model/IconCache$CacheEntry;
    invoke-direct {v9}, Lcom/android/launcher3/common/model/IconCache$CacheEntry;-><init>()V

    .line 598
    .restart local v9    # "entry":Lcom/android/launcher3/common/model/IconCache$CacheEntry;
    iget-object v1, p0, Lcom/android/launcher3/common/model/IconCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v1, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    move/from16 v0, p5

    invoke-direct {p0, v7, v9, v0}, Lcom/android/launcher3/common/model/IconCache;->getEntryFromDB(Lcom/android/launcher3/util/ComponentKey;Lcom/android/launcher3/common/model/IconCache$CacheEntry;Z)Z

    move-result v1

    if-nez v1, :cond_2

    .line 601
    if-eqz p2, :cond_5

    .line 602
    invoke-virtual {p2}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/launcher3/common/model/IconCache;->getCSCPackageItemIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 603
    .local v8, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v8, :cond_1

    .line 604
    iget v1, p0, Lcom/android/launcher3/common/model/IconCache;->mIconDpi:I

    invoke-virtual {p2, v1}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getBadgedIconForIconTray(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 606
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/common/model/IconCache;->mContext:Landroid/content/Context;

    invoke-static {v8, v1}, Lcom/android/launcher3/util/BitmapUtils;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v9, Lcom/android/launcher3/common/model/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    .line 624
    .end local v8    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    :goto_0
    iget-object v1, v9, Lcom/android/launcher3/common/model/IconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz p2, :cond_3

    .line 625
    invoke-virtual {p0, p2}, Lcom/android/launcher3/common/model/IconCache;->getPackageItemTitle(Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;)Ljava/lang/CharSequence;

    move-result-object v11

    .line 626
    .local v11, "title":Ljava/lang/CharSequence;
    iput-object v11, v9, Lcom/android/launcher3/common/model/IconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    .line 627
    iget-object v1, p0, Lcom/android/launcher3/common/model/IconCache;->mUserManager:Lcom/android/launcher3/common/compat/UserManagerCompat;

    iget-object v2, v9, Lcom/android/launcher3/common/model/IconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2, p3}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getBadgedLabelForUser(Ljava/lang/CharSequence;Lcom/android/launcher3/common/compat/UserHandleCompat;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v9, Lcom/android/launcher3/common/model/IconCache$CacheEntry;->contentDescription:Ljava/lang/CharSequence;

    .line 630
    .end local v11    # "title":Ljava/lang/CharSequence;
    :cond_3
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/common/view/LiveIconManager;->isLiveIconPackage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 631
    iget-object v1, p0, Lcom/android/launcher3/common/model/IconCache;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p3}, Lcom/android/launcher3/common/view/LiveIconManager;->getLiveIcon(Landroid/content/Context;Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v9, Lcom/android/launcher3/common/model/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    .line 633
    :cond_4
    return-object v9

    .line 608
    :cond_5
    if-eqz p4, :cond_6

    .line 610
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    move-object v3, p3

    move/from16 v5, p6

    .line 609
    invoke-direct/range {v1 .. v6}, Lcom/android/launcher3/common/model/IconCache;->getEntryForPackageLocked(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;ZIZ)Lcom/android/launcher3/common/model/IconCache$CacheEntry;

    move-result-object v10

    .line 611
    .local v10, "packageEntry":Lcom/android/launcher3/common/model/IconCache$CacheEntry;
    if-eqz v10, :cond_6

    .line 612
    const-string v1, "Launcher.IconCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "using package default icon for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    iget-object v1, v10, Lcom/android/launcher3/common/model/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    iput-object v1, v9, Lcom/android/launcher3/common/model/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    .line 614
    iget-object v1, v10, Lcom/android/launcher3/common/model/IconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    iput-object v1, v9, Lcom/android/launcher3/common/model/IconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    .line 615
    iget-object v1, v10, Lcom/android/launcher3/common/model/IconCache$CacheEntry;->contentDescription:Ljava/lang/CharSequence;

    iput-object v1, v9, Lcom/android/launcher3/common/model/IconCache$CacheEntry;->contentDescription:Ljava/lang/CharSequence;

    .line 618
    .end local v10    # "packageEntry":Lcom/android/launcher3/common/model/IconCache$CacheEntry;
    :cond_6
    iget-object v1, v9, Lcom/android/launcher3/common/model/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    if-nez v1, :cond_2

    .line 619
    const-string v1, "Launcher.IconCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "using default icon for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    invoke-virtual {p0, p3}, Lcom/android/launcher3/common/model/IconCache;->getDefaultIcon(Lcom/android/launcher3/common/compat/UserHandleCompat;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v9, Lcom/android/launcher3/common/model/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    goto/16 :goto_0
.end method

.method private getCSCPackageItemIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 1077
    const/4 v0, 0x0

    .line 1078
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/android/launcher3/common/model/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->semGetCscPackageItemIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1079
    if-nez v0, :cond_0

    .line 1080
    iget-object v1, p0, Lcom/android/launcher3/common/model/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->semGetCscPackageItemIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1083
    :cond_0
    return-object v0
.end method

.method private getCSCPackageItemText(Landroid/content/ComponentName;)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 1087
    iget-object v1, p0, Lcom/android/launcher3/common/model/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->semGetCscPackageItemText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1088
    .local v0, "text":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1089
    iget-object v1, p0, Lcom/android/launcher3/common/model/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->semGetCscPackageItemText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1092
    :cond_0
    return-object v0
.end method

.method private getEntryForPackageLocked(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;ZIZ)Lcom/android/launcher3/common/model/IconCache$CacheEntry;
    .locals 16
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .param p3, "useLowResIcon"    # Z
    .param p4, "isDisabled"    # I
    .param p5, "useDBUpdate"    # Z

    .prologue
    .line 715
    invoke-static/range {p1 .. p2}, Lcom/android/launcher3/common/model/IconCache;->getPackageKey(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Lcom/android/launcher3/util/ComponentKey;

    move-result-object v9

    .line 716
    .local v9, "cacheKey":Lcom/android/launcher3/util/ComponentKey;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/common/model/IconCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v2, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/launcher3/common/model/IconCache$CacheEntry;

    .line 717
    .local v12, "entry":Lcom/android/launcher3/common/model/IconCache$CacheEntry;
    if-eqz v12, :cond_0

    iget-boolean v2, v12, Lcom/android/launcher3/common/model/IconCache$CacheEntry;->isLowResIcon:Z

    if-eqz v2, :cond_2

    if-nez p3, :cond_2

    .line 718
    :cond_0
    new-instance v12, Lcom/android/launcher3/common/model/IconCache$CacheEntry;

    .end local v12    # "entry":Lcom/android/launcher3/common/model/IconCache$CacheEntry;
    invoke-direct {v12}, Lcom/android/launcher3/common/model/IconCache$CacheEntry;-><init>()V

    .line 719
    .restart local v12    # "entry":Lcom/android/launcher3/common/model/IconCache$CacheEntry;
    const/4 v13, 0x1

    .line 721
    .local v13, "entryUpdated":Z
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v9, v12, v1}, Lcom/android/launcher3/common/model/IconCache;->getEntryFromDB(Lcom/android/launcher3/util/ComponentKey;Lcom/android/launcher3/common/model/IconCache$CacheEntry;Z)Z

    move-result v2

    if-nez v2, :cond_1

    .line 723
    :try_start_0
    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/android/launcher3/common/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-nez p4, :cond_3

    const/4 v14, 0x0

    .line 726
    .local v14, "flags":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/common/model/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v14}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 727
    .local v5, "info":Landroid/content/pm/PackageInfo;
    iget-object v8, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 728
    .local v8, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v8, :cond_4

    .line 729
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    const-string v4, "ApplicationInfo is null"

    invoke-direct {v2, v4}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 753
    .end local v5    # "info":Landroid/content/pm/PackageInfo;
    .end local v8    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v14    # "flags":I
    :catch_0
    move-exception v11

    .line 755
    .local v11, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v13, 0x0

    .line 759
    .end local v11    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    :goto_1
    if-eqz v13, :cond_2

    .line 760
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/common/model/IconCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v2, v9, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 763
    .end local v13    # "entryUpdated":Z
    :cond_2
    return-object v12

    .line 723
    .restart local v13    # "entryUpdated":Z
    :cond_3
    const/16 v14, 0x2000

    goto :goto_0

    .line 731
    .restart local v5    # "info":Landroid/content/pm/PackageInfo;
    .restart local v8    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v14    # "flags":I
    :cond_4
    :try_start_1
    iget-object v2, v9, Lcom/android/launcher3/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/launcher3/common/model/IconCache;->getCSCPackageItemIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 732
    .local v10, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v10, :cond_5

    .line 733
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/common/model/IconCache;->mUserManager:Lcom/android/launcher3/common/compat/UserManagerCompat;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/common/model/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v8, v4}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v2, v4, v0}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getBadgedDrawableForUser(Landroid/graphics/drawable/Drawable;Lcom/android/launcher3/common/compat/UserHandleCompat;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 735
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/common/model/IconCache;->mContext:Landroid/content/Context;

    invoke-static {v10, v2}, Lcom/android/launcher3/util/BitmapUtils;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v12, Lcom/android/launcher3/common/model/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    .line 737
    iget-object v2, v9, Lcom/android/launcher3/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v2}, Lcom/android/launcher3/common/model/IconCache;->getPackageItemTitle(Landroid/content/pm/ApplicationInfo;Landroid/content/ComponentName;)Ljava/lang/CharSequence;

    move-result-object v15

    .line 738
    .local v15, "title":Ljava/lang/CharSequence;
    iput-object v15, v12, Lcom/android/launcher3/common/model/IconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    .line 739
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/common/model/IconCache;->mUserManager:Lcom/android/launcher3/common/compat/UserManagerCompat;

    iget-object v4, v12, Lcom/android/launcher3/common/model/IconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    move-object/from16 v0, p2

    invoke-virtual {v2, v4, v0}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getBadgedLabelForUser(Ljava/lang/CharSequence;Lcom/android/launcher3/common/compat/UserHandleCompat;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v12, Lcom/android/launcher3/common/model/IconCache$CacheEntry;->contentDescription:Ljava/lang/CharSequence;

    .line 740
    const/4 v2, 0x0

    iput-boolean v2, v12, Lcom/android/launcher3/common/model/IconCache$CacheEntry;->isLowResIcon:Z

    .line 742
    if-eqz p5, :cond_1

    .line 746
    iget-object v2, v12, Lcom/android/launcher3/common/model/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    iget-object v4, v12, Lcom/android/launcher3/common/model/IconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher3/common/model/IconCache;->mPackageBgColor:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4, v6}, Lcom/android/launcher3/common/model/IconCache;->newContentValues(Landroid/graphics/Bitmap;Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v3

    .line 749
    .local v3, "values":Landroid/content/ContentValues;
    iget-object v4, v9, Lcom/android/launcher3/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/common/model/IconCache;->mUserManager:Lcom/android/launcher3/common/compat/UserManagerCompat;

    .line 750
    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher3/common/compat/UserHandleCompat;)J

    move-result-wide v6

    move-object/from16 v2, p0

    .line 749
    invoke-direct/range {v2 .. v7}, Lcom/android/launcher3/common/model/IconCache;->addIconToDB(Landroid/content/ContentValues;Landroid/content/ComponentName;Landroid/content/pm/PackageInfo;J)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private getEntryFromDB(Lcom/android/launcher3/util/ComponentKey;Lcom/android/launcher3/common/model/IconCache$CacheEntry;Z)Z
    .locals 10
    .param p1, "cacheKey"    # Lcom/android/launcher3/util/ComponentKey;
    .param p2, "entry"    # Lcom/android/launcher3/common/model/IconCache$CacheEntry;
    .param p3, "lowRes"    # Z

    .prologue
    .line 799
    const/4 v8, 0x0

    .line 801
    .local v8, "c":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/common/model/IconCache;->mIconDb:Lcom/android/launcher3/common/model/IconCache$IconDB;

    invoke-virtual {v0}, Lcom/android/launcher3/common/model/IconCache$IconDB;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "icons"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    if-eqz p3, :cond_1

    const-string v3, "icon_low_res"

    :goto_0
    aput-object v3, v2, v4

    const/4 v3, 0x1

    const-string v4, "label"

    aput-object v4, v2, v3

    const-string v3, "componentName = ? AND profileId = ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p1, Lcom/android/launcher3/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    .line 804
    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/launcher3/common/model/IconCache;->mUserManager:Lcom/android/launcher3/common/compat/UserManagerCompat;

    iget-object v7, p1, Lcom/android/launcher3/util/ComponentKey;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    .line 805
    invoke-virtual {v6, v7}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher3/common/compat/UserHandleCompat;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 801
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 808
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 809
    const/4 v1, 0x0

    if-eqz p3, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/common/model/IconCache;->mLowResOptions:Landroid/graphics/BitmapFactory$Options;

    :goto_1
    invoke-static {v8, v1, v0}, Lcom/android/launcher3/common/model/IconCache;->loadIconNoResize(Landroid/database/Cursor;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p2, Lcom/android/launcher3/common/model/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    .line 810
    iput-boolean p3, p2, Lcom/android/launcher3/common/model/IconCache$CacheEntry;->isLowResIcon:Z

    .line 811
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/android/launcher3/common/model/IconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    .line 812
    iget-object v0, p2, Lcom/android/launcher3/common/model/IconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    if-nez v0, :cond_3

    .line 813
    const-string v0, ""

    iput-object v0, p2, Lcom/android/launcher3/common/model/IconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    .line 814
    const-string v0, ""

    iput-object v0, p2, Lcom/android/launcher3/common/model/IconCache$CacheEntry;->contentDescription:Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 819
    :goto_2
    const/4 v0, 0x1

    .line 824
    if-eqz v8, :cond_0

    .line 825
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 828
    :cond_0
    :goto_3
    return v0

    .line 801
    :cond_1
    :try_start_1
    const-string v3, "icon"

    goto :goto_0

    .line 809
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 816
    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/common/model/IconCache;->mUserManager:Lcom/android/launcher3/common/compat/UserManagerCompat;

    iget-object v1, p2, Lcom/android/launcher3/common/model/IconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    iget-object v2, p1, Lcom/android/launcher3/util/ComponentKey;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getBadgedLabelForUser(Ljava/lang/CharSequence;Lcom/android/launcher3/common/compat/UserHandleCompat;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p2, Lcom/android/launcher3/common/model/IconCache$CacheEntry;->contentDescription:Ljava/lang/CharSequence;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 821
    :catch_0
    move-exception v9

    .line 822
    .local v9, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v0, "Launcher.IconCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getEntryFromDB exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 824
    if-eqz v8, :cond_4

    .line 825
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 828
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_4
    const/4 v0, 0x0

    goto :goto_3

    .line 824
    :cond_5
    if-eqz v8, :cond_4

    .line 825
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_4

    .line 824
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_6

    .line 825
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
.end method

.method private getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 156
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10d0000

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/common/model/IconCache;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "iconId"    # I

    .prologue
    .line 163
    :try_start_0
    iget v2, p0, Lcom/android/launcher3/common/model/IconCache;->mIconDpi:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 168
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    :goto_0
    if-eqz v0, :cond_0

    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :goto_1
    return-object v0

    .line 164
    :catch_0
    move-exception v1

    .line 165
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    const/4 v0, 0x0

    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 168
    .end local v1    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/common/model/IconCache;->getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1
.end method

.method private getLauncherIconDensity(I)I
    .locals 6
    .param p1, "requiredSize"    # I

    .prologue
    .line 1050
    const/4 v4, 0x7

    new-array v1, v4, [I

    fill-array-data v1, :array_0

    .line 1060
    .local v1, "densityBuckets":[I
    const/16 v0, 0x280

    .line 1061
    .local v0, "density":I
    array-length v4, v1

    add-int/lit8 v3, v4, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_1

    .line 1062
    const/high16 v4, 0x42400000    # 48.0f

    aget v5, v1, v3

    int-to-float v5, v5

    mul-float/2addr v4, v5

    const/high16 v5, 0x43200000    # 160.0f

    div-float v2, v4, v5

    .line 1064
    .local v2, "expectedSize":F
    int-to-float v4, p1

    cmpl-float v4, v2, v4

    if-ltz v4, :cond_0

    .line 1065
    aget v0, v1, v3

    .line 1061
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 1069
    .end local v2    # "expectedSize":F
    :cond_1
    return v0

    .line 1050
    :array_0
    .array-data 4
        0x78
        0xa0
        0xd5
        0xf0
        0x140
        0x1e0
        0x280
    .end array-data
.end method

.method private getNonNullIcon(Lcom/android/launcher3/common/model/IconCache$CacheEntry;Lcom/android/launcher3/common/compat/UserHandleCompat;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "entry"    # Lcom/android/launcher3/common/model/IconCache$CacheEntry;
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;

    .prologue
    .line 483
    iget-object v0, p1, Lcom/android/launcher3/common/model/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/launcher3/common/model/IconCache;->getDefaultIcon(Lcom/android/launcher3/common/compat/UserHandleCompat;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p1, Lcom/android/launcher3/common/model/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method private static getPackageKey(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Lcom/android/launcher3/util/ComponentKey;
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;

    .prologue
    .line 663
    new-instance v0, Landroid/content/ComponentName;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    .local v0, "cn":Landroid/content/ComponentName;
    new-instance v1, Lcom/android/launcher3/util/ComponentKey;

    invoke-direct {v1, v0, p1}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    return-object v1
.end method

.method private getWidgetEntryForPackage(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;ZI)Lcom/android/launcher3/common/model/IconCache$CacheEntry;
    .locals 17
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .param p3, "useLowResIcon"    # Z
    .param p4, "isDisabled"    # I

    .prologue
    .line 676
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/common/model/IconCache;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    .line 677
    .local v15, "pm":Landroid/content/pm/PackageManager;
    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v12

    .line 678
    .local v12, "intent":Landroid/content/Intent;
    if-eqz v12, :cond_3

    .line 679
    invoke-virtual {v12}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    .line 680
    .local v8, "cn":Landroid/content/ComponentName;
    new-instance v13, Lcom/android/launcher3/util/ComponentKey;

    move-object/from16 v0, p2

    invoke-direct {v13, v8, v0}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    .line 681
    .local v13, "key":Lcom/android/launcher3/util/ComponentKey;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/common/model/IconCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v1, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher3/common/model/IconCache$CacheEntry;

    .line 682
    .local v9, "entry":Lcom/android/launcher3/common/model/IconCache$CacheEntry;
    if-eqz v9, :cond_3

    iget-boolean v1, v9, Lcom/android/launcher3/common/model/IconCache$CacheEntry;->isLowResIcon:Z

    if-eqz v1, :cond_0

    if-eqz p3, :cond_3

    .line 683
    :cond_0
    new-instance v14, Lcom/android/launcher3/common/model/IconCache$CacheEntry;

    invoke-direct {v14}, Lcom/android/launcher3/common/model/IconCache$CacheEntry;-><init>()V

    .line 685
    .local v14, "newEntry":Lcom/android/launcher3/common/model/IconCache$CacheEntry;
    :try_start_0
    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Lcom/android/launcher3/common/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p4, :cond_1

    const/4 v10, 0x0

    .line 688
    .local v10, "flags":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/common/model/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v11

    .line 689
    .local v11, "info":Landroid/content/pm/PackageInfo;
    iget-object v7, v11, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 690
    .local v7, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v7, :cond_2

    .line 691
    new-instance v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    const-string v2, "ApplicationInfo is null"

    invoke-direct {v1, v2}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 695
    .end local v7    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v10    # "flags":I
    .end local v11    # "info":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v1

    .line 698
    :goto_1
    iget-object v1, v9, Lcom/android/launcher3/common/model/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    iput-object v1, v14, Lcom/android/launcher3/common/model/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    .line 699
    iget-boolean v1, v9, Lcom/android/launcher3/common/model/IconCache$CacheEntry;->isLowResIcon:Z

    iput-boolean v1, v14, Lcom/android/launcher3/common/model/IconCache$CacheEntry;->isLowResIcon:Z

    .line 700
    iget-object v1, v9, Lcom/android/launcher3/common/model/IconCache$CacheEntry;->contentDescription:Ljava/lang/CharSequence;

    iput-object v1, v14, Lcom/android/launcher3/common/model/IconCache$CacheEntry;->contentDescription:Ljava/lang/CharSequence;

    .line 705
    .end local v8    # "cn":Landroid/content/ComponentName;
    .end local v9    # "entry":Lcom/android/launcher3/common/model/IconCache$CacheEntry;
    .end local v13    # "key":Lcom/android/launcher3/util/ComponentKey;
    .end local v14    # "newEntry":Lcom/android/launcher3/common/model/IconCache$CacheEntry;
    :goto_2
    return-object v14

    .line 685
    .restart local v8    # "cn":Landroid/content/ComponentName;
    .restart local v9    # "entry":Lcom/android/launcher3/common/model/IconCache$CacheEntry;
    .restart local v13    # "key":Lcom/android/launcher3/util/ComponentKey;
    .restart local v14    # "newEntry":Lcom/android/launcher3/common/model/IconCache$CacheEntry;
    :cond_1
    const/16 v10, 0x2000

    goto :goto_0

    .line 693
    .restart local v7    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v10    # "flags":I
    .restart local v11    # "info":Landroid/content/pm/PackageInfo;
    :cond_2
    :try_start_1
    iget-object v1, v13, Lcom/android/launcher3/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v1}, Lcom/android/launcher3/common/model/IconCache;->getPackageItemTitle(Landroid/content/pm/ApplicationInfo;Landroid/content/ComponentName;)Ljava/lang/CharSequence;

    move-result-object v16

    .line 694
    .local v16, "title":Ljava/lang/CharSequence;
    move-object/from16 v0, v16

    iput-object v0, v14, Lcom/android/launcher3/common/model/IconCache$CacheEntry;->title:Ljava/lang/CharSequence;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 705
    .end local v7    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v8    # "cn":Landroid/content/ComponentName;
    .end local v9    # "entry":Lcom/android/launcher3/common/model/IconCache$CacheEntry;
    .end local v10    # "flags":I
    .end local v11    # "info":Landroid/content/pm/PackageInfo;
    .end local v13    # "key":Lcom/android/launcher3/util/ComponentKey;
    .end local v14    # "newEntry":Lcom/android/launcher3/common/model/IconCache$CacheEntry;
    .end local v16    # "title":Ljava/lang/CharSequence;
    :cond_3
    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher3/common/model/IconCache;->getEntryForPackageLocked(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;ZIZ)Lcom/android/launcher3/common/model/IconCache$CacheEntry;

    move-result-object v14

    goto :goto_2
.end method

.method private isExistIconInDB(Lcom/android/launcher3/util/ComponentKey;)Z
    .locals 12
    .param p1, "cacheKey"    # Lcom/android/launcher3/util/ComponentKey;

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 832
    const/4 v8, 0x0

    .line 834
    .local v8, "c":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/common/model/IconCache;->mIconDb:Lcom/android/launcher3/common/model/IconCache$IconDB;

    invoke-virtual {v0}, Lcom/android/launcher3/common/model/IconCache$IconDB;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "icons"

    const/4 v2, 0x0

    const-string v3, "componentName = ? AND profileId = ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p1, Lcom/android/launcher3/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    .line 836
    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/launcher3/common/model/IconCache;->mUserManager:Lcom/android/launcher3/common/compat/UserManagerCompat;

    iget-object v7, p1, Lcom/android/launcher3/util/ComponentKey;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    .line 837
    invoke-virtual {v6, v7}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher3/common/compat/UserHandleCompat;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 834
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 840
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 841
    const-string v0, "Launcher.IconCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isExistIconInDB exist icon : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/launcher3/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 847
    if-eqz v8, :cond_0

    .line 848
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_0
    move v0, v10

    .line 851
    :goto_0
    return v0

    .line 847
    :cond_1
    if-eqz v8, :cond_2

    .line 848
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    move v0, v11

    .line 851
    goto :goto_0

    .line 844
    :catch_0
    move-exception v9

    .line 845
    .local v9, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "Launcher.IconCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isExistIconInDB exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 847
    if-eqz v8, :cond_2

    .line 848
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 847
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    .line 848
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private static loadIconNoResize(Landroid/database/Cursor;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "c"    # Landroid/database/Cursor;
    .param p1, "iconIndex"    # I
    .param p2, "options"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 1040
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 1042
    .local v0, "data":[B
    const/4 v2, 0x0

    :try_start_0
    array-length v3, v0

    invoke-static {v0, v2, v3, p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1044
    :goto_0
    return-object v2

    .line 1043
    :catch_0
    move-exception v1

    .line 1044
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private makeDefaultIcon(Lcom/android/launcher3/common/compat/UserHandleCompat;)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 236
    invoke-direct {p0}, Lcom/android/launcher3/common/model/IconCache;->getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 237
    .local v3, "unbadged":Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Lcom/android/launcher3/common/model/IconCache;->mUserManager:Lcom/android/launcher3/common/compat/UserManagerCompat;

    invoke-virtual {v4, v3, p1}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getBadgedDrawableForUser(Landroid/graphics/drawable/Drawable;Lcom/android/launcher3/common/compat/UserHandleCompat;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 238
    .local v2, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 239
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 238
    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 241
    .local v0, "b":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 242
    .local v1, "c":Landroid/graphics/Canvas;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v2, v7, v7, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 243
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 244
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 245
    return-object v0
.end method

.method private newContentValues(Landroid/graphics/Bitmap;Ljava/lang/String;I)Landroid/content/ContentValues;
    .locals 8
    .param p1, "icon"    # Landroid/graphics/Bitmap;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "lowResBackgroundColor"    # I

    .prologue
    .line 1010
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1011
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "icon"

    invoke-static {p1}, Lcom/android/launcher3/Utilities;->flattenBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1013
    const-string v1, "label"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1014
    const-string v1, "system_state"

    iget-object v2, p0, Lcom/android/launcher3/common/model/IconCache;->mSystemState:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1016
    if-nez p3, :cond_0

    .line 1017
    const-string v1, "icon_low_res"

    .line 1019
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x5

    .line 1020
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x5

    const/4 v4, 0x1

    .line 1018
    invoke-static {p1, v2, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1017
    invoke-static {v2}, Lcom/android/launcher3/Utilities;->flattenBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1036
    :goto_0
    return-object v0

    .line 1022
    :cond_0
    monitor-enter p0

    .line 1023
    :try_start_0
    iget-object v1, p0, Lcom/android/launcher3/common/model/IconCache;->mLowResBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_1

    .line 1024
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x5

    .line 1025
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x5

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 1024
    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/common/model/IconCache;->mLowResBitmap:Landroid/graphics/Bitmap;

    .line 1026
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/android/launcher3/common/model/IconCache;->mLowResBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/android/launcher3/common/model/IconCache;->mLowResCanvas:Landroid/graphics/Canvas;

    .line 1027
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/android/launcher3/common/model/IconCache;->mLowResPaint:Landroid/graphics/Paint;

    .line 1029
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/common/model/IconCache;->mLowResCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, p3}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 1030
    iget-object v1, p0, Lcom/android/launcher3/common/model/IconCache;->mLowResCanvas:Landroid/graphics/Canvas;

    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v3, Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/launcher3/common/model/IconCache;->mLowResBitmap:Landroid/graphics/Bitmap;

    .line 1031
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    iget-object v7, p0, Lcom/android/launcher3/common/model/IconCache;->mLowResBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v4, p0, Lcom/android/launcher3/common/model/IconCache;->mLowResPaint:Landroid/graphics/Paint;

    .line 1030
    invoke-virtual {v1, p1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1033
    const-string v1, "icon_low_res"

    iget-object v2, p0, Lcom/android/launcher3/common/model/IconCache;->mLowResBitmap:Landroid/graphics/Bitmap;

    invoke-static {v2}, Lcom/android/launcher3/Utilities;->flattenBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1034
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private removeFromMemCacheLocked(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;

    .prologue
    .line 259
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 260
    .local v1, "forDeletion":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/launcher3/util/ComponentKey;>;"
    iget-object v3, p0, Lcom/android/launcher3/common/model/IconCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/util/ComponentKey;

    .line 261
    .local v2, "key":Lcom/android/launcher3/util/ComponentKey;
    iget-object v4, v2, Lcom/android/launcher3/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v2, Lcom/android/launcher3/util/ComponentKey;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    .line 262
    invoke-virtual {v4, p2}, Lcom/android/launcher3/common/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 263
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 266
    .end local v2    # "key":Lcom/android/launcher3/util/ComponentKey;
    :cond_1
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/ComponentKey;

    .line 267
    .local v0, "condemned":Lcom/android/launcher3/util/ComponentKey;
    iget-object v4, p0, Lcom/android/launcher3/common/model/IconCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 269
    .end local v0    # "condemned":Lcom/android/launcher3/util/ComponentKey;
    :cond_2
    return-void
.end method

.method private updateCacheAndGetContentValues(Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;Z)Landroid/content/ContentValues;
    .locals 8
    .param p1, "app"    # Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    .param p2, "replaceExisting"    # Z

    .prologue
    .line 428
    new-instance v2, Lcom/android/launcher3/util/ComponentKey;

    invoke-virtual {p1}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getUser()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    .line 429
    .local v2, "key":Lcom/android/launcher3/util/ComponentKey;
    const/4 v1, 0x0

    .line 430
    .local v1, "entry":Lcom/android/launcher3/common/model/IconCache$CacheEntry;
    if-nez p2, :cond_1

    .line 431
    iget-object v4, p0, Lcom/android/launcher3/common/model/IconCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "entry":Lcom/android/launcher3/common/model/IconCache$CacheEntry;
    check-cast v1, Lcom/android/launcher3/common/model/IconCache$CacheEntry;

    .line 433
    .restart local v1    # "entry":Lcom/android/launcher3/common/model/IconCache$CacheEntry;
    if-eqz v1, :cond_0

    iget-boolean v4, v1, Lcom/android/launcher3/common/model/IconCache$CacheEntry;->isLowResIcon:Z

    if-nez v4, :cond_0

    iget-object v4, v1, Lcom/android/launcher3/common/model/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    if-nez v4, :cond_1

    .line 434
    :cond_0
    const/4 v1, 0x0

    .line 437
    :cond_1
    if-nez v1, :cond_2

    .line 438
    new-instance v1, Lcom/android/launcher3/common/model/IconCache$CacheEntry;

    .end local v1    # "entry":Lcom/android/launcher3/common/model/IconCache$CacheEntry;
    invoke-direct {v1}, Lcom/android/launcher3/common/model/IconCache$CacheEntry;-><init>()V

    .line 441
    .restart local v1    # "entry":Lcom/android/launcher3/common/model/IconCache$CacheEntry;
    :cond_2
    invoke-virtual {p1}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/launcher3/common/model/IconCache;->getCSCPackageItemIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 442
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_3

    .line 443
    iget v4, p0, Lcom/android/launcher3/common/model/IconCache;->mIconDpi:I

    invoke-virtual {p1, v4}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getBadgedIconForIconTray(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 445
    :cond_3
    iget-object v4, p0, Lcom/android/launcher3/common/model/IconCache;->mContext:Landroid/content/Context;

    invoke-static {v0, v4}, Lcom/android/launcher3/util/BitmapUtils;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v1, Lcom/android/launcher3/common/model/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    .line 446
    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/model/IconCache;->getPackageItemTitle(Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 447
    .local v3, "title":Ljava/lang/CharSequence;
    iput-object v3, v1, Lcom/android/launcher3/common/model/IconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    .line 448
    iget-object v4, p0, Lcom/android/launcher3/common/model/IconCache;->mUserManager:Lcom/android/launcher3/common/compat/UserManagerCompat;

    iget-object v5, v1, Lcom/android/launcher3/common/model/IconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getUser()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getBadgedLabelForUser(Ljava/lang/CharSequence;Lcom/android/launcher3/common/compat/UserHandleCompat;)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, v1, Lcom/android/launcher3/common/model/IconCache$CacheEntry;->contentDescription:Ljava/lang/CharSequence;

    .line 449
    iget-object v4, p0, Lcom/android/launcher3/common/model/IconCache;->mCache:Ljava/util/HashMap;

    new-instance v5, Lcom/android/launcher3/util/ComponentKey;

    invoke-virtual {p1}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getUser()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    iget-object v4, v1, Lcom/android/launcher3/common/model/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    iget-object v5, v1, Lcom/android/launcher3/common/model/IconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/android/launcher3/common/model/IconCache;->mActivityBgColor:I

    invoke-direct {p0, v4, v5, v6}, Lcom/android/launcher3/common/model/IconCache;->newContentValues(Landroid/graphics/Bitmap;Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v4

    return-object v4
.end method

.method private updateDBIcons(Lcom/android/launcher3/common/compat/UserHandleCompat;Ljava/util/List;Ljava/util/Set;)V
    .locals 30
    .param p1, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/common/compat/UserHandleCompat;",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 328
    .local p2, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;>;"
    .local p3, "ignorePackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/common/model/IconCache;->mUserManager:Lcom/android/launcher3/common/compat/UserManagerCompat;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher3/common/compat/UserHandleCompat;)J

    move-result-wide v26

    .line 329
    .local v26, "userSerial":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/common/model/IconCache;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v21

    .line 330
    .local v21, "pm":Landroid/content/pm/PackageManager;
    new-instance v20, Ljava/util/HashMap;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashMap;-><init>()V

    .line 331
    .local v20, "pkgInfoMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;"
    const/16 v2, 0x2000

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/pm/PackageInfo;

    .line 332
    .local v18, "info":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, v18

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 335
    .end local v18    # "info":Landroid/content/pm/PackageInfo;
    :cond_0
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 336
    .local v14, "componentMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;>;"
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;

    .line 337
    .local v10, "app":Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    invoke-virtual {v10}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v14, v3, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 340
    .end local v10    # "app":Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/common/model/IconCache;->mIconDb:Lcom/android/launcher3/common/model/IconCache$IconDB;

    invoke-virtual {v2}, Lcom/android/launcher3/common/model/IconCache$IconDB;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "icons"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "rowid"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "componentName"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "lastUpdated"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "version"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "system_state"

    aput-object v6, v4, v5

    const-string v5, "profileId = ? "

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v9, 0x0

    .line 345
    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v29

    aput-object v29, v6, v9

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 340
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 348
    .local v11, "c":Landroid/database/Cursor;
    const-string v2, "componentName"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 349
    .local v15, "indexComponent":I
    const-string v2, "lastUpdated"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 350
    .local v16, "indexLastUpdate":I
    const-string v2, "version"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 351
    .local v17, "indexVersion":I
    const-string v2, "rowid"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    .line 352
    .local v22, "rowIndex":I
    const-string v2, "system_state"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    .line 354
    .local v23, "systemStateIndex":I
    new-instance v19, Ljava/util/HashSet;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashSet;-><init>()V

    .line 355
    .local v19, "itemsToRemove":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    new-instance v8, Ljava/util/Stack;

    invoke-direct {v8}, Ljava/util/Stack;-><init>()V

    .line 357
    .local v8, "appsToUpdate":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;>;"
    :cond_2
    :goto_2
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 358
    invoke-interface {v11, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 359
    .local v12, "cn":Ljava/lang/String;
    invoke-static {v12}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v13

    .line 360
    .local v13, "component":Landroid/content/ComponentName;
    invoke-virtual {v13}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/pm/PackageInfo;

    .line 361
    .restart local v18    # "info":Landroid/content/pm/PackageInfo;
    if-nez v18, :cond_3

    .line 362
    invoke-virtual {v13}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 363
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v13, v1}, Lcom/android/launcher3/common/model/IconCache;->remove(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    .line 364
    move/from16 v0, v22

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 368
    :cond_3
    move-object/from16 v0, v18

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x1000000

    and-int/2addr v2, v3

    if-nez v2, :cond_2

    .line 373
    move/from16 v0, v16

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    .line 374
    .local v24, "updateTime":J
    move/from16 v0, v17

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    .line 375
    .local v28, "version":I
    invoke-virtual {v14, v13}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;

    .line 376
    .restart local v10    # "app":Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    move-object/from16 v0, v18

    iget v2, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    move/from16 v0, v28

    if-ne v0, v2, :cond_4

    move-object/from16 v0, v18

    iget-wide v2, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    cmp-long v2, v24, v2

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/common/model/IconCache;->mSystemState:Ljava/lang/String;

    .line 377
    move/from16 v0, v23

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 380
    :cond_4
    if-nez v10, :cond_5

    .line 381
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v13, v1}, Lcom/android/launcher3/common/model/IconCache;->remove(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    .line 382
    move/from16 v0, v22

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 384
    :cond_5
    invoke-virtual {v8, v10}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 387
    .end local v10    # "app":Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    .end local v12    # "cn":Ljava/lang/String;
    .end local v13    # "component":Landroid/content/ComponentName;
    .end local v18    # "info":Landroid/content/pm/PackageInfo;
    .end local v24    # "updateTime":J
    .end local v28    # "version":I
    :cond_6
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 388
    invoke-virtual/range {v19 .. v19}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    .line 389
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/common/model/IconCache;->mIconDb:Lcom/android/launcher3/common/model/IconCache$IconDB;

    invoke-virtual {v2}, Lcom/android/launcher3/common/model/IconCache$IconDB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "icons"

    const-string v4, "rowid"

    .line 390
    move-object/from16 v0, v19

    invoke-static {v4, v0}, Lcom/android/launcher3/Utilities;->createDbSelectionQuery(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 389
    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 395
    :cond_7
    invoke-virtual {v14}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v8}, Ljava/util/Stack;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    .line 396
    :cond_8
    new-instance v7, Ljava/util/Stack;

    invoke-direct {v7}, Ljava/util/Stack;-><init>()V

    .line 397
    .local v7, "appsToAdd":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;>;"
    invoke-virtual {v14}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/Stack;->addAll(Ljava/util/Collection;)Z

    .line 398
    new-instance v2, Lcom/android/launcher3/common/model/IconCache$SerializedIconUpdateTask;

    move-object/from16 v3, p0

    move-wide/from16 v4, v26

    move-object/from16 v6, v20

    invoke-direct/range {v2 .. v8}, Lcom/android/launcher3/common/model/IconCache$SerializedIconUpdateTask;-><init>(Lcom/android/launcher3/common/model/IconCache;JLjava/util/HashMap;Ljava/util/Stack;Ljava/util/Stack;)V

    .line 399
    invoke-virtual {v2}, Lcom/android/launcher3/common/model/IconCache$SerializedIconUpdateTask;->scheduleNext()V

    .line 401
    .end local v7    # "appsToAdd":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;>;"
    :cond_9
    return-void
.end method

.method private updateSystemStateString()V
    .locals 1

    .prologue
    .line 944
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/common/model/IconCache;->mSystemState:Ljava/lang/String;

    .line 945
    return-void
.end method


# virtual methods
.method public declared-synchronized cachePackageInstallInfo(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .param p3, "icon"    # Landroid/graphics/Bitmap;
    .param p4, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 641
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/common/model/IconCache;->removeFromMemCacheLocked(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    .line 643
    invoke-static {p1, p2}, Lcom/android/launcher3/common/model/IconCache;->getPackageKey(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Lcom/android/launcher3/util/ComponentKey;

    move-result-object v0

    .line 644
    .local v0, "cacheKey":Lcom/android/launcher3/util/ComponentKey;
    iget-object v2, p0, Lcom/android/launcher3/common/model/IconCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/model/IconCache$CacheEntry;

    .line 647
    .local v1, "entry":Lcom/android/launcher3/common/model/IconCache$CacheEntry;
    if-nez v1, :cond_0

    .line 648
    new-instance v1, Lcom/android/launcher3/common/model/IconCache$CacheEntry;

    .end local v1    # "entry":Lcom/android/launcher3/common/model/IconCache$CacheEntry;
    invoke-direct {v1}, Lcom/android/launcher3/common/model/IconCache$CacheEntry;-><init>()V

    .line 649
    .restart local v1    # "entry":Lcom/android/launcher3/common/model/IconCache$CacheEntry;
    iget-object v2, p0, Lcom/android/launcher3/common/model/IconCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 651
    :cond_0
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 652
    iput-object p4, v1, Lcom/android/launcher3/common/model/IconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    .line 654
    :cond_1
    if-eqz p3, :cond_2

    .line 655
    iget-object v2, p0, Lcom/android/launcher3/common/model/IconCache;->mContext:Landroid/content/Context;

    invoke-static {p3, v2}, Lcom/android/launcher3/util/BitmapUtils;->createIconBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v1, Lcom/android/launcher3/common/model/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    .line 658
    :cond_2
    const-string v3, "Launcher.IconCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cachePackageInstallInfo packageName = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", title = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", icon = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p3, :cond_3

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 660
    monitor-exit p0

    return-void

    .line 658
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 641
    .end local v0    # "cacheKey":Lcom/android/launcher3/util/ComponentKey;
    .end local v1    # "entry":Lcom/android/launcher3/common/model/IconCache$CacheEntry;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public clearCache(I)V
    .locals 3
    .param p1, "iconSize"    # I

    .prologue
    .line 1128
    iget-object v1, p0, Lcom/android/launcher3/common/model/IconCache;->mCache:Ljava/util/HashMap;

    monitor-enter v1

    .line 1129
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/common/model/IconCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1130
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1131
    invoke-direct {p0, p1}, Lcom/android/launcher3/common/model/IconCache;->getLauncherIconDensity(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/common/model/IconCache;->mIconDpi:I

    .line 1132
    const-string v0, "Launcher.IconCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearCache : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/common/model/IconCache;->mIconDpi:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    return-void

    .line 1130
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public clearDB()V
    .locals 2

    .prologue
    .line 1114
    const-string v0, "Launcher.IconCache"

    const-string v1, "mIconDb is cleared"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    invoke-static {}, Lcom/android/launcher3/util/TestHelper;->isRoboUnitTest()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1116
    iget-object v0, p0, Lcom/android/launcher3/common/model/IconCache;->mWorkerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/launcher3/common/model/IconCache$2;

    invoke-direct {v1, p0}, Lcom/android/launcher3/common/model/IconCache$2;-><init>(Lcom/android/launcher3/common/model/IconCache;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1125
    :cond_0
    return-void
.end method

.method public declared-synchronized getDefaultIcon(Lcom/android/launcher3/common/compat/UserHandleCompat;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;

    .prologue
    .line 577
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/common/model/IconCache;->mDefaultIcons:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 578
    iget-object v0, p0, Lcom/android/launcher3/common/model/IconCache;->mDefaultIcons:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lcom/android/launcher3/common/model/IconCache;->makeDefaultIcon(Lcom/android/launcher3/common/compat/UserHandleCompat;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/common/model/IconCache;->mDefaultIcons:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 577
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getFullResIcon(Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 221
    :try_start_0
    iget-object v3, p0, Lcom/android/launcher3/common/model/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v4, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 226
    .local v2, "resources":Landroid/content/res/Resources;
    :goto_0
    if-eqz v2, :cond_0

    .line 227
    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v1

    .line 228
    .local v1, "iconId":I
    if-eqz v1, :cond_0

    .line 229
    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/common/model/IconCache;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 232
    .end local v1    # "iconId":I
    :goto_1
    return-object v3

    .line 223
    .end local v2    # "resources":Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 224
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    .restart local v2    # "resources":Landroid/content/res/Resources;
    goto :goto_0

    .line 232
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/common/model/IconCache;->getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_1
.end method

.method public getFullResIcon(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "iconId"    # I

    .prologue
    .line 201
    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/model/IconCache;->getIconFromCache(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 202
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 215
    .end local v1    # "icon":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v1

    .line 206
    .restart local v1    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/launcher3/common/model/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 210
    .local v2, "resources":Landroid/content/res/Resources;
    :goto_1
    if-eqz v2, :cond_1

    .line 211
    if-eqz p2, :cond_1

    .line 212
    invoke-direct {p0, v2, p2}, Lcom/android/launcher3/common/model/IconCache;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    .line 207
    .end local v2    # "resources":Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 208
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    .restart local v2    # "resources":Landroid/content/res/Resources;
    goto :goto_1

    .line 215
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    invoke-direct {p0}, Lcom/android/launcher3/common/model/IconCache;->getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method public declared-synchronized getIcon(Landroid/content/Intent;Lcom/android/launcher3/common/compat/UserHandleCompat;)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;

    .prologue
    .line 518
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 521
    .local v1, "component":Landroid/content/ComponentName;
    if-nez v1, :cond_0

    .line 522
    invoke-virtual {p0, p2}, Lcom/android/launcher3/common/model/IconCache;->getDefaultIcon(Lcom/android/launcher3/common/compat/UserHandleCompat;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 527
    :goto_0
    monitor-exit p0

    return-object v0

    .line 525
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/launcher3/common/model/IconCache;->mLauncherApps:Lcom/android/launcher3/common/compat/LauncherAppsCompat;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->resolveActivity(Landroid/content/Intent;Lcom/android/launcher3/common/compat/UserHandleCompat;)Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;

    move-result-object v2

    .line 526
    .local v2, "launcherActInfo":Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/common/model/IconCache;->cacheLocked(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;Lcom/android/launcher3/common/compat/UserHandleCompat;ZZI)Lcom/android/launcher3/common/model/IconCache$CacheEntry;

    move-result-object v7

    .line 527
    .local v7, "entry":Lcom/android/launcher3/common/model/IconCache$CacheEntry;
    iget-object v0, v7, Lcom/android/launcher3/common/model/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 518
    .end local v1    # "component":Landroid/content/ComponentName;
    .end local v2    # "launcherActInfo":Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    .end local v7    # "entry":Lcom/android/launcher3/common/model/IconCache$CacheEntry;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getIconDpi()I
    .locals 1

    .prologue
    .line 1073
    iget v0, p0, Lcom/android/launcher3/common/model/IconCache;->mIconDpi:I

    return v0
.end method

.method public getIconFromCache(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 183
    iget-object v5, p0, Lcom/android/launcher3/common/model/IconCache;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 184
    .local v4, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v4, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 185
    .local v2, "intent":Landroid/content/Intent;
    const/4 v1, 0x0

    .line 186
    .local v1, "entry":Lcom/android/launcher3/common/model/IconCache$CacheEntry;
    if-eqz v2, :cond_0

    .line 187
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 188
    .local v0, "cn":Landroid/content/ComponentName;
    new-instance v3, Lcom/android/launcher3/util/ComponentKey;

    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v5

    invoke-direct {v3, v0, v5}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    .line 189
    .local v3, "key":Lcom/android/launcher3/util/ComponentKey;
    iget-object v5, p0, Lcom/android/launcher3/common/model/IconCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "entry":Lcom/android/launcher3/common/model/IconCache$CacheEntry;
    check-cast v1, Lcom/android/launcher3/common/model/IconCache$CacheEntry;

    .line 191
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v3    # "key":Lcom/android/launcher3/util/ComponentKey;
    .restart local v1    # "entry":Lcom/android/launcher3/common/model/IconCache$CacheEntry;
    :cond_0
    if-nez v1, :cond_1

    .line 192
    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/android/launcher3/common/model/IconCache;->getPackageKey(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Lcom/android/launcher3/util/ComponentKey;

    move-result-object v3

    .line 193
    .restart local v3    # "key":Lcom/android/launcher3/util/ComponentKey;
    iget-object v5, p0, Lcom/android/launcher3/common/model/IconCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "entry":Lcom/android/launcher3/common/model/IconCache$CacheEntry;
    check-cast v1, Lcom/android/launcher3/common/model/IconCache$CacheEntry;

    .line 195
    .end local v3    # "key":Lcom/android/launcher3/util/ComponentKey;
    .restart local v1    # "entry":Lcom/android/launcher3/common/model/IconCache$CacheEntry;
    :cond_1
    if-eqz v1, :cond_2

    .line 196
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v6, p0, Lcom/android/launcher3/common/model/IconCache;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v7, v1, Lcom/android/launcher3/common/model/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    invoke-direct {v5, v6, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 197
    :goto_0
    return-object v5

    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public getPackageItemTitle(Landroid/content/pm/ApplicationInfo;Landroid/content/ComponentName;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 1104
    invoke-direct {p0, p2}, Lcom/android/launcher3/common/model/IconCache;->getCSCPackageItemText(Landroid/content/ComponentName;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1105
    .local v0, "title":Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    .line 1106
    iget-object v1, p0, Lcom/android/launcher3/common/model/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1108
    :cond_0
    return-object v0
.end method

.method public getPackageItemTitle(Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "info"    # Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;

    .prologue
    .line 1096
    invoke-virtual {p1}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/launcher3/common/model/IconCache;->getCSCPackageItemText(Landroid/content/ComponentName;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1097
    .local v0, "title":Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    .line 1098
    invoke-virtual {p1}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1100
    :cond_0
    return-object v0
.end method

.method public getSDCardBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/launcher3/common/model/IconCache;->mSDCardBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public declared-synchronized getTitleAndIcon(Lcom/android/launcher3/common/base/item/IconInfo;Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;Lcom/android/launcher3/common/compat/UserHandleCompat;ZZ)V
    .locals 8
    .param p1, "iconInfo"    # Lcom/android/launcher3/common/base/item/IconInfo;
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "info"    # Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    .param p4, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .param p5, "usePkgIcon"    # Z
    .param p6, "useLowResIcon"    # Z

    .prologue
    .line 556
    monitor-enter p0

    :try_start_0
    iget v6, p1, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/common/model/IconCache;->cacheLocked(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;Lcom/android/launcher3/common/compat/UserHandleCompat;ZZI)Lcom/android/launcher3/common/model/IconCache$CacheEntry;

    move-result-object v7

    .line 557
    .local v7, "entry":Lcom/android/launcher3/common/model/IconCache$CacheEntry;
    invoke-direct {p0, v7, p4}, Lcom/android/launcher3/common/model/IconCache;->getNonNullIcon(Lcom/android/launcher3/common/model/IconCache$CacheEntry;Lcom/android/launcher3/common/compat/UserHandleCompat;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/common/base/item/IconInfo;->setIcon(Landroid/graphics/Bitmap;)V

    .line 558
    if-nez p3, :cond_0

    iget-object v0, v7, Lcom/android/launcher3/common/model/IconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    :goto_0
    invoke-static {v0}, Lcom/android/launcher3/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    .line 559
    iget-object v0, v7, Lcom/android/launcher3/common/model/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0, p4}, Lcom/android/launcher3/common/model/IconCache;->isDefaultIcon(Landroid/graphics/Bitmap;Lcom/android/launcher3/common/compat/UserHandleCompat;)Z

    move-result v0

    iput-boolean v0, p1, Lcom/android/launcher3/common/base/item/IconInfo;->usingFallbackIcon:Z

    .line 560
    iget-boolean v0, v7, Lcom/android/launcher3/common/model/IconCache$CacheEntry;->isLowResIcon:Z

    iput-boolean v0, p1, Lcom/android/launcher3/common/base/item/IconInfo;->usingLowResIcon:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 561
    monitor-exit p0

    return-void

    .line 558
    :cond_0
    :try_start_1
    invoke-virtual {p0, p3}, Lcom/android/launcher3/common/model/IconCache;->getPackageItemTitle(Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;)Ljava/lang/CharSequence;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 556
    .end local v7    # "entry":Lcom/android/launcher3/common/model/IconCache$CacheEntry;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTitleAndIcon(Lcom/android/launcher3/common/base/item/IconInfo;Landroid/content/Intent;Lcom/android/launcher3/common/compat/UserHandleCompat;Z)V
    .locals 7
    .param p1, "iconInfo"    # Lcom/android/launcher3/common/base/item/IconInfo;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .param p4, "useLowResIcon"    # Z

    .prologue
    .line 536
    monitor-enter p0

    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 539
    .local v2, "component":Landroid/content/ComponentName;
    if-nez v2, :cond_0

    .line 540
    invoke-virtual {p0, p3}, Lcom/android/launcher3/common/model/IconCache;->getDefaultIcon(Lcom/android/launcher3/common/compat/UserHandleCompat;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/common/base/item/IconInfo;->setIcon(Landroid/graphics/Bitmap;)V

    .line 541
    const-string v0, ""

    iput-object v0, p1, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    .line 542
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/launcher3/common/base/item/IconInfo;->usingFallbackIcon:Z

    .line 543
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/launcher3/common/base/item/IconInfo;->usingLowResIcon:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 548
    :goto_0
    monitor-exit p0

    return-void

    .line 545
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/launcher3/common/model/IconCache;->mLauncherApps:Lcom/android/launcher3/common/compat/LauncherAppsCompat;

    invoke-virtual {v0, p2, p3}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->resolveActivity(Landroid/content/Intent;Lcom/android/launcher3/common/compat/UserHandleCompat;)Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;

    move-result-object v3

    .line 546
    .local v3, "info":Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/common/model/IconCache;->getTitleAndIcon(Lcom/android/launcher3/common/base/item/IconInfo;Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;Lcom/android/launcher3/common/compat/UserHandleCompat;ZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 536
    .end local v2    # "component":Landroid/content/ComponentName;
    .end local v3    # "info":Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTitleAndIcon(Lcom/android/launcher3/common/base/item/IconInfo;Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;Z)V
    .locals 8
    .param p1, "application"    # Lcom/android/launcher3/common/base/item/IconInfo;
    .param p2, "info"    # Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    .param p3, "useLowResIcon"    # Z

    .prologue
    .line 491
    monitor-enter p0

    if-nez p2, :cond_0

    :try_start_0
    iget-object v3, p1, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    .line 492
    .local v3, "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    :goto_0
    iget-object v1, p1, Lcom/android/launcher3/common/base/item/IconInfo;->componentName:Landroid/content/ComponentName;

    const/4 v4, 0x0

    iget v6, p1, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    move-object v0, p0

    move-object v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/common/model/IconCache;->cacheLocked(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;Lcom/android/launcher3/common/compat/UserHandleCompat;ZZI)Lcom/android/launcher3/common/model/IconCache$CacheEntry;

    move-result-object v7

    .line 494
    .local v7, "entry":Lcom/android/launcher3/common/model/IconCache$CacheEntry;
    iget-object v0, v7, Lcom/android/launcher3/common/model/IconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    .line 495
    invoke-direct {p0, v7, v3}, Lcom/android/launcher3/common/model/IconCache;->getNonNullIcon(Lcom/android/launcher3/common/model/IconCache$CacheEntry;Lcom/android/launcher3/common/compat/UserHandleCompat;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p1, Lcom/android/launcher3/common/base/item/IconInfo;->mIcon:Landroid/graphics/Bitmap;

    .line 496
    iget-object v0, v7, Lcom/android/launcher3/common/model/IconCache$CacheEntry;->contentDescription:Ljava/lang/CharSequence;

    iput-object v0, p1, Lcom/android/launcher3/common/base/item/IconInfo;->contentDescription:Ljava/lang/CharSequence;

    .line 497
    iget-boolean v0, v7, Lcom/android/launcher3/common/model/IconCache$CacheEntry;->isLowResIcon:Z

    iput-boolean v0, p1, Lcom/android/launcher3/common/base/item/IconInfo;->usingLowResIcon:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 498
    monitor-exit p0

    return-void

    .line 491
    .end local v3    # "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    .end local v7    # "entry":Lcom/android/launcher3/common/model/IconCache$CacheEntry;
    :cond_0
    :try_start_1
    invoke-virtual {p2}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getUser()Lcom/android/launcher3/common/compat/UserHandleCompat;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTitleAndIconForApp(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;ZLcom/android/launcher3/common/model/PackageItemInfo;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .param p3, "useLowResIcon"    # Z
    .param p4, "infoOut"    # Lcom/android/launcher3/common/model/PackageItemInfo;

    .prologue
    .line 569
    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/android/launcher3/common/model/IconCache;->getWidgetEntryForPackage(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;ZI)Lcom/android/launcher3/common/model/IconCache$CacheEntry;

    move-result-object v0

    .line 570
    .local v0, "entry":Lcom/android/launcher3/common/model/IconCache$CacheEntry;
    invoke-direct {p0, v0, p2}, Lcom/android/launcher3/common/model/IconCache;->getNonNullIcon(Lcom/android/launcher3/common/model/IconCache$CacheEntry;Lcom/android/launcher3/common/compat/UserHandleCompat;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p4, Lcom/android/launcher3/common/model/PackageItemInfo;->iconBitmap:Landroid/graphics/Bitmap;

    .line 571
    iget-object v1, v0, Lcom/android/launcher3/common/model/IconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    invoke-static {v1}, Lcom/android/launcher3/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p4, Lcom/android/launcher3/common/model/PackageItemInfo;->title:Ljava/lang/CharSequence;

    .line 572
    iget-boolean v1, v0, Lcom/android/launcher3/common/model/IconCache$CacheEntry;->isLowResIcon:Z

    iput-boolean v1, p4, Lcom/android/launcher3/common/model/PackageItemInfo;->usingLowResIcon:Z

    .line 573
    iget-object v1, v0, Lcom/android/launcher3/common/model/IconCache$CacheEntry;->contentDescription:Ljava/lang/CharSequence;

    iput-object v1, p4, Lcom/android/launcher3/common/model/PackageItemInfo;->contentDescription:Ljava/lang/CharSequence;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 574
    monitor-exit p0

    return-void

    .line 569
    .end local v0    # "entry":Lcom/android/launcher3/common/model/IconCache$CacheEntry;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public isDefaultIcon(Landroid/graphics/Bitmap;Lcom/android/launcher3/common/compat/UserHandleCompat;)Z
    .locals 1
    .param p1, "icon"    # Landroid/graphics/Bitmap;
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;

    .prologue
    .line 584
    iget-object v0, p0, Lcom/android/launcher3/common/model/IconCache;->mDefaultIcons:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public preloadIcon(Landroid/content/ComponentName;Landroid/graphics/Bitmap;ILjava/lang/String;J)V
    .locals 7
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "icon"    # Landroid/graphics/Bitmap;
    .param p3, "dpi"    # I
    .param p4, "label"    # Ljava/lang/String;
    .param p5, "userSerial"    # J

    .prologue
    .line 780
    :try_start_0
    iget-object v3, p0, Lcom/android/launcher3/common/model/IconCache;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 781
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 796
    .end local v1    # "packageManager":Landroid/content/pm/PackageManager;
    :goto_0
    return-void

    .line 784
    :catch_0
    move-exception v3

    .line 788
    invoke-static {}, Lcom/android/launcher3/util/BitmapUtils;->getIconBitmapSize()I

    move-result v0

    .line 789
    .local v0, "iconSize":I
    const/4 v3, 0x1

    .line 790
    invoke-static {p2, v0, v0, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    const/4 v4, 0x0

    .line 789
    invoke-direct {p0, v3, p4, v4}, Lcom/android/launcher3/common/model/IconCache;->newContentValues(Landroid/graphics/Bitmap;Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v2

    .line 792
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "componentName"

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    const-string v3, "profileId"

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 794
    iget-object v3, p0, Lcom/android/launcher3/common/model/IconCache;->mIconDb:Lcom/android/launcher3/common/model/IconCache$IconDB;

    invoke-virtual {v3}, Lcom/android/launcher3/common/model/IconCache$IconDB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "icons"

    const/4 v5, 0x0

    const/4 v6, 0x5

    invoke-virtual {v3, v4, v5, v2, v6}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    goto :goto_0
.end method

.method public declared-synchronized remove(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)V
    .locals 2
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;

    .prologue
    .line 252
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/common/model/IconCache;->mCache:Ljava/util/HashMap;

    new-instance v1, Lcom/android/launcher3/util/ComponentKey;

    invoke-direct {v1, p1, p2}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 253
    monitor-exit p0

    return-void

    .line 252
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeIconsForPkg(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)V
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;

    .prologue
    .line 292
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/common/model/IconCache;->removeFromMemCacheLocked(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    .line 293
    iget-object v2, p0, Lcom/android/launcher3/common/model/IconCache;->mUserManager:Lcom/android/launcher3/common/compat/UserManagerCompat;

    invoke-virtual {v2, p2}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher3/common/compat/UserHandleCompat;)J

    move-result-wide v0

    .line 294
    .local v0, "userSerial":J
    iget-object v2, p0, Lcom/android/launcher3/common/model/IconCache;->mIconDb:Lcom/android/launcher3/common/model/IconCache$IconDB;

    invoke-virtual {v2}, Lcom/android/launcher3/common/model/IconCache$IconDB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "icons"

    const-string v4, "componentName LIKE ? AND profileId = ?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/%"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 296
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 294
    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 297
    monitor-exit p0

    return-void

    .line 292
    .end local v0    # "userSerial":J
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public updateDbIcons(Ljava/util/Set;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 301
    .local p1, "ignorePackagesForMainUser":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/launcher3/common/model/IconCache;->mWorkerHandler:Landroid/os/Handler;

    sget-object v3, Lcom/android/launcher3/common/model/IconCache;->ICON_UPDATE_TOKEN:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 303
    invoke-direct {p0}, Lcom/android/launcher3/common/model/IconCache;->updateSystemStateString()V

    .line 304
    iget-object v2, p0, Lcom/android/launcher3/common/model/IconCache;->mUserManager:Lcom/android/launcher3/common/compat/UserManagerCompat;

    invoke-virtual {v2}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getUserProfiles()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/compat/UserHandleCompat;

    .line 306
    .local v1, "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    iget-object v2, p0, Lcom/android/launcher3/common/model/IconCache;->mLauncherApps:Lcom/android/launcher3/common/compat/LauncherAppsCompat;

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v1}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object v0

    .line 308
    .local v0, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 309
    :cond_0
    const-string v2, "Launcher.IconCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "There is no getActivityList apps for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 315
    :cond_1
    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/launcher3/common/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v2, p1

    :goto_1
    invoke-direct {p0, v1, v0, v2}, Lcom/android/launcher3/common/model/IconCache;->updateDBIcons(Lcom/android/launcher3/common/compat/UserHandleCompat;Ljava/util/List;Ljava/util/Set;)V

    goto :goto_0

    .line 316
    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    goto :goto_1

    .line 318
    .end local v0    # "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;>;"
    .end local v1    # "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    :cond_3
    return-void
.end method

.method public updateIconInBackground(Lcom/android/launcher3/common/view/IconView;Lcom/android/launcher3/common/base/item/ItemInfo;)Lcom/android/launcher3/common/model/IconCache$IconLoadRequest;
    .locals 3
    .param p1, "caller"    # Lcom/android/launcher3/common/view/IconView;
    .param p2, "info"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 460
    new-instance v0, Lcom/android/launcher3/common/model/IconCache$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/launcher3/common/model/IconCache$1;-><init>(Lcom/android/launcher3/common/model/IconCache;Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/common/view/IconView;)V

    .line 478
    .local v0, "request":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/android/launcher3/common/model/IconCache;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 479
    new-instance v1, Lcom/android/launcher3/common/model/IconCache$IconLoadRequest;

    iget-object v2, p0, Lcom/android/launcher3/common/model/IconCache;->mWorkerHandler:Landroid/os/Handler;

    invoke-direct {v1, v0, v2}, Lcom/android/launcher3/common/model/IconCache$IconLoadRequest;-><init>(Ljava/lang/Runnable;Landroid/os/Handler;)V

    return-object v1
.end method

.method public declared-synchronized updateIconsForPkg(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;

    .prologue
    .line 275
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/common/model/IconCache;->removeIconsForPkg(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    :try_start_1
    iget-object v3, p0, Lcom/android/launcher3/common/model/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v6, 0x2000

    invoke-virtual {v3, p1, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 279
    .local v2, "info":Landroid/content/pm/PackageInfo;
    iget-object v3, p0, Lcom/android/launcher3/common/model/IconCache;->mUserManager:Lcom/android/launcher3/common/compat/UserManagerCompat;

    invoke-virtual {v3, p2}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher3/common/compat/UserHandleCompat;)J

    move-result-wide v4

    .line 280
    .local v4, "userSerial":J
    iget-object v3, p0, Lcom/android/launcher3/common/model/IconCache;->mLauncherApps:Lcom/android/launcher3/common/compat/LauncherAppsCompat;

    invoke-virtual {v3, p1, p2}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;

    .line 281
    .local v0, "app":Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    invoke-direct {p0, v0, v2, v4, v5}, Lcom/android/launcher3/common/model/IconCache;->addIconToDBAndMemCache(Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;Landroid/content/pm/PackageInfo;J)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 283
    .end local v0    # "app":Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    .end local v4    # "userSerial":J
    :catch_0
    move-exception v1

    .line 284
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_2
    const-string v3, "Launcher.IconCache"

    const-string v6, "Package not found"

    invoke-static {v3, v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 286
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    monitor-exit p0

    return-void

    .line 275
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized updateTitleAndIcon(Lcom/android/launcher3/common/base/item/IconInfo;)V
    .locals 8
    .param p1, "application"    # Lcom/android/launcher3/common/base/item/IconInfo;

    .prologue
    .line 504
    monitor-enter p0

    :try_start_0
    iget-object v1, p1, Lcom/android/launcher3/common/base/item/IconInfo;->componentName:Landroid/content/ComponentName;

    const/4 v2, 0x0

    iget-object v3, p1, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    const/4 v4, 0x0

    iget-boolean v5, p1, Lcom/android/launcher3/common/base/item/IconInfo;->usingLowResIcon:Z

    iget v6, p1, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/common/model/IconCache;->cacheLocked(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;Lcom/android/launcher3/common/compat/UserHandleCompat;ZZI)Lcom/android/launcher3/common/model/IconCache$CacheEntry;

    move-result-object v7

    .line 506
    .local v7, "entry":Lcom/android/launcher3/common/model/IconCache$CacheEntry;
    iget-object v0, v7, Lcom/android/launcher3/common/model/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, v7, Lcom/android/launcher3/common/model/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    iget-object v1, p1, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/common/model/IconCache;->isDefaultIcon(Landroid/graphics/Bitmap;Lcom/android/launcher3/common/compat/UserHandleCompat;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 507
    iget-object v0, v7, Lcom/android/launcher3/common/model/IconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    .line 508
    iget-object v0, v7, Lcom/android/launcher3/common/model/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    iput-object v0, p1, Lcom/android/launcher3/common/base/item/IconInfo;->mIcon:Landroid/graphics/Bitmap;

    .line 509
    iget-object v0, v7, Lcom/android/launcher3/common/model/IconCache$CacheEntry;->contentDescription:Ljava/lang/CharSequence;

    iput-object v0, p1, Lcom/android/launcher3/common/base/item/IconInfo;->contentDescription:Ljava/lang/CharSequence;

    .line 510
    iget-boolean v0, v7, Lcom/android/launcher3/common/model/IconCache$CacheEntry;->isLowResIcon:Z

    iput-boolean v0, p1, Lcom/android/launcher3/common/base/item/IconInfo;->usingLowResIcon:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 512
    :cond_0
    monitor-exit p0

    return-void

    .line 504
    .end local v7    # "entry":Lcom/android/launcher3/common/model/IconCache$CacheEntry;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
