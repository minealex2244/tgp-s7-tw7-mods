.class Lcom/android/launcher3/LauncherProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "LauncherProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/LauncherProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatabaseHelper"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

.field private mIsDownGrade:Z

.field private mLauncherProviderID:Lcom/android/launcher3/LauncherProviderID;

.field private mListener:Lcom/android/launcher3/LauncherProviderChangeListener;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v4, -0x1

    .line 383
    const-string v1, "launcher.db"

    const/4 v2, 0x0

    const/16 v3, 0x1e

    invoke-direct {p0, p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 380
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mIsDownGrade:Z

    .line 384
    iput-object p1, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    .line 385
    invoke-static {p1}, Lcom/android/launcher3/common/model/DataProvider;->setContext(Landroid/content/Context;)V

    .line 386
    invoke-static {}, Lcom/android/launcher3/common/model/FavoritesProvider;->getInstance()Lcom/android/launcher3/common/model/FavoritesProvider;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    .line 387
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportSprintExtension()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 388
    invoke-static {}, Lcom/android/launcher3/LauncherProviderID;->getInstance()Lcom/android/launcher3/LauncherProviderID;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mLauncherProviderID:Lcom/android/launcher3/LauncherProviderID;

    .line 393
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 394
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v0}, Lcom/android/launcher3/common/model/DataProvider;->setDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 395
    iget-object v1, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mLauncherProviderID:Lcom/android/launcher3/LauncherProviderID;

    if-eqz v1, :cond_1

    .line 396
    iget-object v1, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mLauncherProviderID:Lcom/android/launcher3/LauncherProviderID;

    invoke-static {v0}, Lcom/android/launcher3/LauncherProviderID;->setDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 399
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    invoke-virtual {v1}, Lcom/android/launcher3/common/model/FavoritesProvider;->checkTable()Z

    move-result v1

    if-nez v1, :cond_2

    .line 400
    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->createEmptyDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 403
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "DB table checking error!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 406
    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    invoke-virtual {v1}, Lcom/android/launcher3/common/model/FavoritesProvider;->getMaxItemId()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-nez v1, :cond_3

    .line 407
    iget-object v1, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    iget-object v2, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    const-string v3, "favorites"

    invoke-virtual {v2, v3}, Lcom/android/launcher3/common/model/FavoritesProvider;->initializeMaxItemId(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/common/model/FavoritesProvider;->setMaxItemId(J)V

    .line 409
    :cond_3
    iget-object v1, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    invoke-virtual {v1}, Lcom/android/launcher3/common/model/FavoritesProvider;->getMaxScreenId()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-nez v1, :cond_4

    .line 410
    iget-object v1, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    iget-object v2, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    const-string v3, "workspaceScreens"

    invoke-virtual {v2, v3}, Lcom/android/launcher3/common/model/FavoritesProvider;->initializeMaxItemId(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/common/model/FavoritesProvider;->setMaxScreenId(J)V

    .line 413
    :cond_4
    iget-boolean v1, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mIsDownGrade:Z

    if-eqz v1, :cond_5

    .line 414
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "DB version DownGrade error!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 416
    :cond_5
    return-void
.end method

.method static synthetic access$002(Lcom/android/launcher3/LauncherProvider$DatabaseHelper;Lcom/android/launcher3/LauncherProviderChangeListener;)Lcom/android/launcher3/LauncherProviderChangeListener;
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/LauncherProvider$DatabaseHelper;
    .param p1, "x1"    # Lcom/android/launcher3/LauncherProviderChangeListener;

    .prologue
    .line 375
    iput-object p1, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mListener:Lcom/android/launcher3/LauncherProviderChangeListener;

    return-object p1
.end method

.method private resetSharedPref()V
    .locals 5

    .prologue
    .line 495
    iget-object v2, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 496
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 497
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 498
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 499
    return-void
.end method

.method private setFlagEmptyDbCreated()V
    .locals 5

    .prologue
    .line 449
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v1

    .line 450
    .local v1, "spKey":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 451
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "EMPTY_DATABASE_CREATED"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 452
    return-void
.end method


# virtual methods
.method createEmptyDB(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 487
    iget-object v0, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    invoke-virtual {v0}, Lcom/android/launcher3/common/model/FavoritesProvider;->deleteTable()V

    .line 488
    iget-object v0, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mLauncherProviderID:Lcom/android/launcher3/LauncherProviderID;

    if-eqz v0, :cond_0

    .line 489
    iget-object v0, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mLauncherProviderID:Lcom/android/launcher3/LauncherProviderID;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherProviderID;->deleteTable()V

    .line 491
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 492
    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 421
    invoke-static {p1}, Lcom/android/launcher3/common/model/DataProvider;->setDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 422
    iget-object v1, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mLauncherProviderID:Lcom/android/launcher3/LauncherProviderID;

    if-eqz v1, :cond_0

    .line 423
    iget-object v1, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mLauncherProviderID:Lcom/android/launcher3/LauncherProviderID;

    invoke-static {p1}, Lcom/android/launcher3/LauncherProviderID;->setDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 426
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    const-wide/16 v4, 0x1

    invoke-virtual {v1, v4, v5}, Lcom/android/launcher3/common/model/FavoritesProvider;->setMaxItemId(J)V

    .line 427
    iget-object v1, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5}, Lcom/android/launcher3/common/model/FavoritesProvider;->setMaxScreenId(J)V

    .line 429
    iget-object v1, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/UserManagerCompat;

    move-result-object v0

    .line 430
    .local v0, "userManager":Lcom/android/launcher3/common/compat/UserManagerCompat;
    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher3/common/compat/UserHandleCompat;)J

    move-result-wide v2

    .line 432
    .local v2, "userSerialNumber":J
    iget-object v1, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/common/model/FavoritesProvider;->createTable(J)V

    .line 433
    iget-object v1, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mLauncherProviderID:Lcom/android/launcher3/LauncherProviderID;

    if-eqz v1, :cond_1

    .line 434
    iget-object v1, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mLauncherProviderID:Lcom/android/launcher3/LauncherProviderID;

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherProviderID;->createPrefsTable()V

    .line 438
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    iget-object v4, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mListener:Lcom/android/launcher3/LauncherProviderChangeListener;

    invoke-virtual {v1, v4}, Lcom/android/launcher3/common/model/FavoritesProvider;->deleteWidgetHost(Lcom/android/launcher3/LauncherProviderChangeListener;)V

    .line 441
    iget-object v1, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    iget-object v4, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    const-string v5, "favorites"

    invoke-virtual {v4, v5}, Lcom/android/launcher3/common/model/FavoritesProvider;->initializeMaxItemId(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/android/launcher3/common/model/FavoritesProvider;->setMaxItemId(J)V

    .line 442
    invoke-direct {p0}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->setFlagEmptyDbCreated()V

    .line 445
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iget-object v4, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v1, v4}, Lcom/android/launcher3/home/ManagedProfileHeuristic;->processAllUsers(Ljava/util/List;Landroid/content/Context;)V

    .line 446
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 474
    const-string v0, "LauncherProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Database version downgrade from: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Wiping databse."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    invoke-direct {p0}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->resetSharedPref()V

    .line 478
    invoke-static {p1}, Lcom/android/launcher3/common/model/DataProvider;->setDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 479
    invoke-virtual {p0, p1}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->createEmptyDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 480
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mIsDownGrade:Z

    .line 481
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 458
    invoke-static {p1}, Lcom/android/launcher3/common/model/DataProvider;->setDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 460
    iget-object v4, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/UserManagerCompat;

    move-result-object v1

    .line 461
    .local v1, "userManager":Lcom/android/launcher3/common/compat/UserManagerCompat;
    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher3/common/compat/UserHandleCompat;)J

    move-result-wide v2

    .line 463
    .local v2, "userSerialNumber":J
    iget-object v4, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    invoke-virtual {v4, v2, v3, p2, p3}, Lcom/android/launcher3/common/model/FavoritesProvider;->migrateTable(JII)Z

    move-result v0

    .line 465
    .local v0, "homeResult":Z
    if-nez v0, :cond_0

    .line 466
    invoke-direct {p0}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->resetSharedPref()V

    .line 467
    invoke-virtual {p0, p1}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->createEmptyDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 469
    :cond_0
    return-void
.end method
