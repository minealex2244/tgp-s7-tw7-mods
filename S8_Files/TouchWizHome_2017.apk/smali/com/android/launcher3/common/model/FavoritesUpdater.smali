.class public Lcom/android/launcher3/common/model/FavoritesUpdater;
.super Lcom/android/launcher3/common/model/DataUpdater;
.source "FavoritesUpdater.java"

# interfaces
.implements Lcom/android/launcher3/common/model/DataUpdater$UpdaterInterface;


# static fields
.field private static final TAG:Ljava/lang/String; = "FavoritesUpdater"


# instance fields
.field private mFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

.field private mLoader:Lcom/android/launcher3/common/model/DataLoader;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/LauncherModel;Lcom/android/launcher3/common/model/IconCache;Lcom/android/launcher3/common/model/DataLoader;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "model"    # Lcom/android/launcher3/LauncherModel;
    .param p3, "cache"    # Lcom/android/launcher3/common/model/IconCache;
    .param p4, "loaderInterface"    # Lcom/android/launcher3/common/model/DataLoader;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/launcher3/common/model/DataUpdater;-><init>()V

    .line 49
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/common/model/FavoritesUpdater;->init(Landroid/content/Context;Lcom/android/launcher3/LauncherModel;Lcom/android/launcher3/common/model/IconCache;)V

    .line 50
    invoke-static {}, Lcom/android/launcher3/common/model/FavoritesProvider;->getInstance()Lcom/android/launcher3/common/model/FavoritesProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/common/model/FavoritesUpdater;->mFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    .line 51
    iput-object p4, p0, Lcom/android/launcher3/common/model/FavoritesUpdater;->mLoader:Lcom/android/launcher3/common/model/DataLoader;

    .line 52
    return-void
.end method

.method static synthetic access$000(JLcom/android/launcher3/common/base/item/ItemInfo;[Ljava/lang/StackTraceElement;)V
    .locals 0
    .param p0, "x0"    # J
    .param p2, "x1"    # Lcom/android/launcher3/common/base/item/ItemInfo;
    .param p3, "x2"    # [Ljava/lang/StackTraceElement;

    .prologue
    .line 43
    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher3/common/model/FavoritesUpdater;->checkItemInfoLocked(JLcom/android/launcher3/common/base/item/ItemInfo;[Ljava/lang/StackTraceElement;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/launcher3/common/model/FavoritesUpdater;)Lcom/android/launcher3/common/model/DataLoader;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/model/FavoritesUpdater;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/launcher3/common/model/FavoritesUpdater;->mLoader:Lcom/android/launcher3/common/model/DataLoader;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher3/common/model/FavoritesUpdater;Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/common/model/FavoritesUpdater;
    .param p1, "x1"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/launcher3/common/model/FavoritesUpdater;->logFolderCount(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/launcher3/common/model/FavoritesUpdater;Lcom/android/launcher3/common/base/item/ItemInfo;J[Ljava/lang/StackTraceElement;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/common/model/FavoritesUpdater;
    .param p1, "x1"    # Lcom/android/launcher3/common/base/item/ItemInfo;
    .param p2, "x2"    # J
    .param p4, "x3"    # [Ljava/lang/StackTraceElement;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher3/common/model/FavoritesUpdater;->updateItemArrays(Lcom/android/launcher3/common/base/item/ItemInfo;J[Ljava/lang/StackTraceElement;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/launcher3/common/model/FavoritesUpdater;)Lcom/android/launcher3/common/model/FavoritesProvider;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/model/FavoritesUpdater;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/launcher3/common/model/FavoritesUpdater;->mFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    return-object v0
.end method

.method public static checkItemInfo(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 5
    .param p0, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 422
    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    .line 423
    .local v3, "stackTrace":[Ljava/lang/StackTraceElement;
    iget-wide v0, p0, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    .line 424
    .local v0, "itemId":J
    new-instance v2, Lcom/android/launcher3/common/model/FavoritesUpdater$8;

    invoke-direct {v2, v0, v1, p0, v3}, Lcom/android/launcher3/common/model/FavoritesUpdater$8;-><init>(JLcom/android/launcher3/common/base/item/ItemInfo;[Ljava/lang/StackTraceElement;)V

    .line 431
    .local v2, "r":Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/launcher3/common/model/FavoritesUpdater;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 432
    return-void
.end method

.method private static checkItemInfoLocked(JLcom/android/launcher3/common/base/item/ItemInfo;[Ljava/lang/StackTraceElement;)V
    .locals 12
    .param p0, "itemId"    # J
    .param p2, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;
    .param p3, "stackTrace"    # [Ljava/lang/StackTraceElement;

    .prologue
    .line 214
    sget-object v7, Lcom/android/launcher3/common/model/DataLoader;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v7, p0, p1}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 215
    .local v5, "modelItem":Lcom/android/launcher3/common/base/item/ItemInfo;
    if-eqz v5, :cond_1

    if-eq p2, v5, :cond_1

    .line 217
    instance-of v7, v5, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v7, :cond_2

    instance-of v7, p2, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v7, :cond_2

    move-object v4, v5

    .line 218
    check-cast v4, Lcom/android/launcher3/common/base/item/IconInfo;

    .local v4, "modelInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    move-object v3, p2

    .line 219
    check-cast v3, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 220
    .local v3, "info":Lcom/android/launcher3/common/base/item/IconInfo;
    iget-object v7, v4, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    iget-object v8, v3, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v7, v8}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-wide v8, v4, Lcom/android/launcher3/common/base/item/IconInfo;->id:J

    iget-wide v10, v3, Lcom/android/launcher3/common/base/item/IconInfo;->id:J

    cmp-long v7, v8, v10

    if-nez v7, :cond_4

    iget v7, v4, Lcom/android/launcher3/common/base/item/IconInfo;->itemType:I

    iget v8, v3, Lcom/android/launcher3/common/base/item/IconInfo;->itemType:I

    if-ne v7, v8, :cond_4

    iget-wide v8, v4, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    iget-wide v10, v3, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    cmp-long v7, v8, v10

    if-nez v7, :cond_4

    iget-wide v8, v4, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    iget-wide v10, v3, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    cmp-long v7, v8, v10

    if-nez v7, :cond_4

    iget v7, v4, Lcom/android/launcher3/common/base/item/IconInfo;->cellX:I

    iget v8, v3, Lcom/android/launcher3/common/base/item/IconInfo;->cellX:I

    if-ne v7, v8, :cond_4

    iget v7, v4, Lcom/android/launcher3/common/base/item/IconInfo;->cellY:I

    iget v8, v3, Lcom/android/launcher3/common/base/item/IconInfo;->cellY:I

    if-ne v7, v8, :cond_4

    iget v7, v4, Lcom/android/launcher3/common/base/item/IconInfo;->spanX:I

    iget v8, v3, Lcom/android/launcher3/common/base/item/IconInfo;->spanX:I

    if-ne v7, v8, :cond_4

    iget v7, v4, Lcom/android/launcher3/common/base/item/IconInfo;->spanY:I

    iget v8, v3, Lcom/android/launcher3/common/base/item/IconInfo;->spanY:I

    if-ne v7, v8, :cond_4

    iget-object v7, v4, Lcom/android/launcher3/common/base/item/IconInfo;->dropPos:[I

    if-nez v7, :cond_0

    iget-object v7, v3, Lcom/android/launcher3/common/base/item/IconInfo;->dropPos:[I

    if-eqz v7, :cond_1

    :cond_0
    iget-object v7, v4, Lcom/android/launcher3/common/base/item/IconInfo;->dropPos:[I

    if-eqz v7, :cond_4

    iget-object v7, v3, Lcom/android/launcher3/common/base/item/IconInfo;->dropPos:[I

    if-eqz v7, :cond_4

    iget-object v7, v4, Lcom/android/launcher3/common/base/item/IconInfo;->dropPos:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    iget-object v8, v3, Lcom/android/launcher3/common/base/item/IconInfo;->dropPos:[I

    const/4 v9, 0x0

    aget v8, v8, v9

    if-ne v7, v8, :cond_4

    iget-object v7, v4, Lcom/android/launcher3/common/base/item/IconInfo;->dropPos:[I

    const/4 v8, 0x1

    aget v7, v7, v8

    iget-object v8, v3, Lcom/android/launcher3/common/base/item/IconInfo;->dropPos:[I

    const/4 v9, 0x1

    aget v8, v8, v9

    if-ne v7, v8, :cond_4

    .line 290
    .end local v3    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v4    # "modelInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_1
    :goto_0
    return-void

    .line 237
    :cond_2
    instance-of v7, v5, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v7, :cond_4

    instance-of v7, p2, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v7, :cond_4

    move-object v4, v5

    .line 238
    check-cast v4, Lcom/android/launcher3/folder/FolderInfo;

    .local v4, "modelInfo":Lcom/android/launcher3/folder/FolderInfo;
    move-object v3, p2

    .line 239
    check-cast v3, Lcom/android/launcher3/folder/FolderInfo;

    .line 240
    .local v3, "info":Lcom/android/launcher3/folder/FolderInfo;
    iget-wide v8, v4, Lcom/android/launcher3/folder/FolderInfo;->id:J

    iget-wide v10, v3, Lcom/android/launcher3/folder/FolderInfo;->id:J

    cmp-long v7, v8, v10

    if-nez v7, :cond_4

    iget v7, v4, Lcom/android/launcher3/folder/FolderInfo;->itemType:I

    iget v8, v3, Lcom/android/launcher3/folder/FolderInfo;->itemType:I

    if-ne v7, v8, :cond_4

    iget-wide v8, v4, Lcom/android/launcher3/folder/FolderInfo;->container:J

    iget-wide v10, v3, Lcom/android/launcher3/folder/FolderInfo;->container:J

    cmp-long v7, v8, v10

    if-nez v7, :cond_4

    iget-wide v8, v4, Lcom/android/launcher3/folder/FolderInfo;->screenId:J

    iget-wide v10, v3, Lcom/android/launcher3/folder/FolderInfo;->screenId:J

    cmp-long v7, v8, v10

    if-nez v7, :cond_4

    iget v7, v4, Lcom/android/launcher3/folder/FolderInfo;->cellX:I

    iget v8, v3, Lcom/android/launcher3/folder/FolderInfo;->cellX:I

    if-ne v7, v8, :cond_4

    iget v7, v4, Lcom/android/launcher3/folder/FolderInfo;->cellY:I

    iget v8, v3, Lcom/android/launcher3/folder/FolderInfo;->cellY:I

    if-ne v7, v8, :cond_4

    iget v7, v4, Lcom/android/launcher3/folder/FolderInfo;->spanX:I

    iget v8, v3, Lcom/android/launcher3/folder/FolderInfo;->spanX:I

    if-ne v7, v8, :cond_4

    iget v7, v4, Lcom/android/launcher3/folder/FolderInfo;->spanY:I

    iget v8, v3, Lcom/android/launcher3/folder/FolderInfo;->spanY:I

    if-ne v7, v8, :cond_4

    iget-object v7, v4, Lcom/android/launcher3/folder/FolderInfo;->dropPos:[I

    if-nez v7, :cond_3

    iget-object v7, v3, Lcom/android/launcher3/folder/FolderInfo;->dropPos:[I

    if-eqz v7, :cond_1

    :cond_3
    iget-object v7, v4, Lcom/android/launcher3/folder/FolderInfo;->dropPos:[I

    if-eqz v7, :cond_4

    iget-object v7, v3, Lcom/android/launcher3/folder/FolderInfo;->dropPos:[I

    if-eqz v7, :cond_4

    iget-object v7, v4, Lcom/android/launcher3/folder/FolderInfo;->dropPos:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    iget-object v8, v3, Lcom/android/launcher3/folder/FolderInfo;->dropPos:[I

    const/4 v9, 0x0

    aget v8, v8, v9

    if-ne v7, v8, :cond_4

    iget-object v7, v4, Lcom/android/launcher3/folder/FolderInfo;->dropPos:[I

    const/4 v8, 0x1

    aget v7, v7, v8

    iget-object v8, v3, Lcom/android/launcher3/folder/FolderInfo;->dropPos:[I

    const/4 v9, 0x1

    aget v8, v8, v9

    if-eq v7, v8, :cond_1

    .line 258
    .end local v3    # "info":Lcom/android/launcher3/folder/FolderInfo;
    .end local v4    # "modelInfo":Lcom/android/launcher3/folder/FolderInfo;
    :cond_4
    if-eqz v5, :cond_7

    if-eq p2, v5, :cond_7

    .line 260
    instance-of v7, v5, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v7, :cond_7

    instance-of v7, p2, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v7, :cond_7

    move-object v4, v5

    .line 261
    check-cast v4, Lcom/android/launcher3/common/base/item/IconInfo;

    .local v4, "modelInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    move-object v3, p2

    .line 262
    check-cast v3, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 263
    .local v3, "info":Lcom/android/launcher3/common/base/item/IconInfo;
    iget-wide v0, v4, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    .line 264
    .local v0, "container":J
    const-wide/16 v8, -0x66

    cmp-long v7, v0, v8

    if-eqz v7, :cond_5

    const-wide/16 v8, 0x0

    cmp-long v7, v0, v8

    if-lez v7, :cond_7

    sget-object v7, Lcom/android/launcher3/common/model/DataLoader;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    .line 266
    invoke-virtual {v7, v0, v1}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v7, :cond_7

    sget-object v7, Lcom/android/launcher3/common/model/DataLoader;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    .line 267
    invoke-virtual {v7, v0, v1}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/folder/FolderInfo;

    iget-wide v8, v7, Lcom/android/launcher3/folder/FolderInfo;->container:J

    const-wide/16 v10, -0x66

    cmp-long v7, v8, v10

    if-nez v7, :cond_7

    .line 269
    :cond_5
    iget v7, v4, Lcom/android/launcher3/common/base/item/IconInfo;->cellX:I

    iget v8, v3, Lcom/android/launcher3/common/base/item/IconInfo;->cellX:I

    if-ne v7, v8, :cond_6

    iget v7, v4, Lcom/android/launcher3/common/base/item/IconInfo;->cellY:I

    iget v8, v3, Lcom/android/launcher3/common/base/item/IconInfo;->cellY:I

    if-eq v7, v8, :cond_7

    .line 272
    :cond_6
    const-string v7, "FavoritesUpdater"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Position changed apps item, but not problem : item="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " modelItem="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 282
    .end local v0    # "container":J
    .end local v3    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v4    # "modelInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "item: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "modelItem: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "Error: ItemInfo passed to checkItemInfo doesn\'t match original"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 284
    .local v6, "msg":Ljava/lang/String;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 285
    .local v2, "e":Ljava/lang/RuntimeException;
    if-eqz p3, :cond_8

    .line 286
    invoke-virtual {v2, p3}, Ljava/lang/RuntimeException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 288
    :cond_8
    throw v2
.end method

.method private logFolderCount(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 12
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    const-wide/16 v10, -0x66

    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 472
    const/4 v8, 0x0

    .line 473
    .local v8, "homeFolderCount":I
    const/4 v0, 0x0

    .line 474
    .local v0, "appsFolderCount":I
    sget-object v2, Lcom/android/launcher3/common/model/DataLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v2

    .line 475
    :try_start_0
    sget-object v1, Lcom/android/launcher3/common/model/DataLoader;->sBgFolders:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v1}, Lcom/android/launcher3/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/folder/FolderInfo;

    .line 476
    .local v7, "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    iget-wide v4, v7, Lcom/android/launcher3/folder/FolderInfo;->container:J

    cmp-long v4, v4, v10

    if-nez v4, :cond_0

    .line 477
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 479
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 482
    .end local v7    # "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 483
    if-eqz p1, :cond_3

    .line 484
    iget-wide v4, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    cmp-long v1, v4, v10

    if-nez v1, :cond_2

    .line 485
    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v1

    const-string v2, "APFO"

    int-to-long v4, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 493
    :goto_1
    return-void

    .line 482
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 487
    :cond_2
    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v1

    const-string v2, "HSFO"

    int-to-long v4, v8

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    goto :goto_1

    .line 490
    :cond_3
    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v1

    const-string v2, "APFO"

    int-to-long v4, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 491
    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v1

    const-string v2, "HSFO"

    int-to-long v4, v8

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    goto :goto_1
.end method

.method private updateItemArrays(Lcom/android/launcher3/common/base/item/ItemInfo;J[Ljava/lang/StackTraceElement;)V
    .locals 8
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;
    .param p2, "itemId"    # J
    .param p4, "stackTrace"    # [Ljava/lang/StackTraceElement;

    .prologue
    .line 170
    sget-object v3, Lcom/android/launcher3/common/model/DataLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v3

    .line 171
    :try_start_0
    invoke-static {p2, p3, p1, p4}, Lcom/android/launcher3/common/model/FavoritesUpdater;->checkItemInfoLocked(JLcom/android/launcher3/common/base/item/ItemInfo;[Ljava/lang/StackTraceElement;)V

    .line 173
    iget-wide v4, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v6, -0x64

    cmp-long v2, v4, v6

    if-eqz v2, :cond_0

    iget-wide v4, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v6, -0x65

    cmp-long v2, v4, v6

    if-eqz v2, :cond_0

    iget-wide v4, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v6, -0x66

    cmp-long v2, v4, v6

    if-eqz v2, :cond_0

    .line 177
    sget-object v2, Lcom/android/launcher3/common/model/DataLoader;->sBgFolders:Lcom/android/launcher3/util/LongArrayMap;

    iget-wide v4, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-virtual {v2, v4, v5}, Lcom/android/launcher3/util/LongArrayMap;->containsKey(J)Z

    move-result v2

    if-nez v2, :cond_0

    .line 180
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "item: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " container being set to: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", not in the list of folders"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 182
    .local v1, "msg":Ljava/lang/String;
    const-string v2, "FavoritesUpdater"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    .end local v1    # "msg":Ljava/lang/String;
    :cond_0
    sget-object v2, Lcom/android/launcher3/common/model/DataLoader;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v2, p2, p3}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 190
    .local v0, "modelItem":Lcom/android/launcher3/common/base/item/ItemInfo;
    if-eqz v0, :cond_3

    iget-wide v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v6, -0x64

    cmp-long v2, v4, v6

    if-eqz v2, :cond_1

    iget-wide v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v6, -0x65

    cmp-long v2, v4, v6

    if-eqz v2, :cond_1

    iget-wide v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v6, -0x66

    cmp-long v2, v4, v6

    if-nez v2, :cond_3

    .line 194
    :cond_1
    iget v2, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    packed-switch v2, :pswitch_data_0

    .line 210
    :goto_0
    monitor-exit v3

    .line 211
    return-void

    .line 198
    :pswitch_0
    iget-object v2, p0, Lcom/android/launcher3/common/model/FavoritesUpdater;->mLoader:Lcom/android/launcher3/common/model/DataLoader;

    invoke-virtual {v2, v0}, Lcom/android/launcher3/common/model/DataLoader;->containPagesItem(Lcom/android/launcher3/common/base/item/ItemInfo;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 199
    iget-object v2, p0, Lcom/android/launcher3/common/model/FavoritesUpdater;->mLoader:Lcom/android/launcher3/common/model/DataLoader;

    invoke-virtual {v2, v0}, Lcom/android/launcher3/common/model/DataLoader;->updatePagesItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto :goto_0

    .line 210
    .end local v0    # "modelItem":Lcom/android/launcher3/common/base/item/ItemInfo;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 201
    .restart local v0    # "modelItem":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/android/launcher3/common/model/FavoritesUpdater;->mLoader:Lcom/android/launcher3/common/model/DataLoader;

    invoke-virtual {v2, v0}, Lcom/android/launcher3/common/model/DataLoader;->addPagesItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto :goto_0

    .line 208
    :cond_3
    iget-object v2, p0, Lcom/android/launcher3/common/model/FavoritesUpdater;->mLoader:Lcom/android/launcher3/common/model/DataLoader;

    invoke-virtual {v2, v0}, Lcom/android/launcher3/common/model/DataLoader;->removePagesItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 194
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public addItem(Lcom/android/launcher3/common/base/item/ItemInfo;)J
    .locals 6
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 56
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 57
    .local v1, "values":Landroid/content/ContentValues;
    sget-object v2, Lcom/android/launcher3/common/model/FavoritesUpdater;->sContext:Landroid/content/Context;

    invoke-virtual {p1, v2, v1}, Lcom/android/launcher3/common/base/item/ItemInfo;->onAddToDatabase(Landroid/content/Context;Landroid/content/ContentValues;)V

    .line 58
    iget-wide v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 59
    iget-object v2, p0, Lcom/android/launcher3/common/model/FavoritesUpdater;->mFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    invoke-virtual {v2}, Lcom/android/launcher3/common/model/FavoritesProvider;->generateNewItemId()J

    move-result-wide v2

    iput-wide v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    .line 60
    const-string v2, "_id"

    iget-wide v4, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 62
    :cond_0
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 63
    .local v0, "stackTrace":[Ljava/lang/StackTraceElement;
    new-instance v2, Lcom/android/launcher3/common/model/FavoritesUpdater$1;

    invoke-direct {v2, p0, v1, p1, v0}, Lcom/android/launcher3/common/model/FavoritesUpdater$1;-><init>(Lcom/android/launcher3/common/model/FavoritesUpdater;Landroid/content/ContentValues;Lcom/android/launcher3/common/base/item/ItemInfo;[Ljava/lang/StackTraceElement;)V

    invoke-static {v2}, Lcom/android/launcher3/common/model/FavoritesUpdater;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 83
    iget-wide v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    return-wide v2
.end method

.method public addItems(Ljava/util/ArrayList;)V
    .locals 10
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
    .line 435
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 436
    .local v4, "updates":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    .local v0, "appItem":Lcom/android/launcher3/common/base/item/ItemInfo;
    move-object v1, v0

    .line 437
    check-cast v1, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 438
    .local v1, "item":Lcom/android/launcher3/common/base/item/IconInfo;
    iget-wide v6, v1, Lcom/android/launcher3/common/base/item/IconInfo;->id:J

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    .line 439
    iget-object v6, p0, Lcom/android/launcher3/common/model/FavoritesUpdater;->mFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    invoke-virtual {v6}, Lcom/android/launcher3/common/model/FavoritesProvider;->generateNewItemId()J

    move-result-wide v6

    iput-wide v6, v1, Lcom/android/launcher3/common/base/item/IconInfo;->id:J

    .line 441
    :cond_0
    new-instance v3, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;

    invoke-direct {v3}, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;-><init>()V

    .line 442
    .local v3, "update":Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;
    const/4 v6, 0x3

    iput v6, v3, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->action:I

    .line 443
    iget-object v6, v1, Lcom/android/launcher3/common/base/item/IconInfo;->componentName:Landroid/content/ComponentName;

    iput-object v6, v3, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->component:Landroid/content/ComponentName;

    .line 444
    iget-wide v6, v1, Lcom/android/launcher3/common/base/item/IconInfo;->id:J

    iput-wide v6, v3, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->id:J

    .line 445
    iget-wide v6, v1, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    iput-wide v6, v3, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->container:J

    .line 446
    iget-wide v6, v1, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    iput-wide v6, v3, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->screen:J

    .line 447
    iget v6, v1, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    iput v6, v3, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->rank:I

    .line 448
    iget-object v6, v1, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    iput-object v6, v3, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->title:Ljava/lang/CharSequence;

    .line 449
    iget-object v6, v1, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    iput-object v6, v3, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    .line 450
    const/4 v6, 0x0

    iput v6, v3, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->itemtype:I

    .line 451
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v3, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->modified:J

    .line 452
    iget v6, v1, Lcom/android/launcher3/common/base/item/IconInfo;->status:I

    iput v6, v3, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->status:I

    .line 453
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 455
    .end local v0    # "appItem":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v1    # "item":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v3    # "update":Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;
    :cond_1
    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v5}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 456
    .local v2, "stackTrace":[Ljava/lang/StackTraceElement;
    new-instance v5, Lcom/android/launcher3/common/model/FavoritesUpdater$9;

    invoke-direct {v5, p0, v4, p1, v2}, Lcom/android/launcher3/common/model/FavoritesUpdater$9;-><init>(Lcom/android/launcher3/common/model/FavoritesUpdater;Ljava/util/List;Ljava/util/ArrayList;[Ljava/lang/StackTraceElement;)V

    invoke-static {v5}, Lcom/android/launcher3/common/model/FavoritesUpdater;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 469
    return-void
.end method

.method public deleteFolderContentsFromDatabase(Lcom/android/launcher3/folder/FolderInfo;)V
    .locals 1
    .param p1, "info"    # Lcom/android/launcher3/folder/FolderInfo;

    .prologue
    .line 396
    new-instance v0, Lcom/android/launcher3/common/model/FavoritesUpdater$7;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/common/model/FavoritesUpdater$7;-><init>(Lcom/android/launcher3/common/model/FavoritesUpdater;Lcom/android/launcher3/folder/FolderInfo;)V

    .line 418
    .local v0, "r":Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/android/launcher3/common/model/FavoritesUpdater;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 419
    return-void
.end method

.method public deleteItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 1
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 113
    new-instance v0, Lcom/android/launcher3/common/model/FavoritesUpdater$3;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/common/model/FavoritesUpdater$3;-><init>(Lcom/android/launcher3/common/model/FavoritesUpdater;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    invoke-static {v0}, Lcom/android/launcher3/common/model/FavoritesUpdater;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 139
    return-void
.end method

.method public deleteItemsFromDatabase(Ljava/util/ArrayList;)V
    .locals 1
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
    .line 306
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<+Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v0, Lcom/android/launcher3/common/model/FavoritesUpdater$5;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/common/model/FavoritesUpdater$5;-><init>(Lcom/android/launcher3/common/model/FavoritesUpdater;Ljava/util/ArrayList;)V

    invoke-static {v0}, Lcom/android/launcher3/common/model/FavoritesUpdater;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 335
    return-void
.end method

.method public deletePackageFromDatabase(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)V
    .locals 1
    .param p1, "pn"    # Ljava/lang/String;
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;

    .prologue
    .line 296
    invoke-static {p1, p2}, Lcom/android/launcher3/common/model/DataLoader;->getItemsByPackageName(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/model/FavoritesUpdater;->deleteItemsFromDatabase(Ljava/util/ArrayList;)V

    .line 297
    return-void
.end method

.method public updateItem(Landroid/content/ContentValues;Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 1
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 88
    new-instance v0, Lcom/android/launcher3/common/model/FavoritesUpdater$2;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/launcher3/common/model/FavoritesUpdater$2;-><init>(Lcom/android/launcher3/common/model/FavoritesUpdater;Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/content/ContentValues;)V

    invoke-static {v0}, Lcom/android/launcher3/common/model/FavoritesUpdater;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 109
    return-void
.end method

.method public updateItemsInDatabaseHelper(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 142
    .local p2, "valuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .local p3, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 144
    .local v5, "cr":Landroid/content/ContentResolver;
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    .line 145
    .local v4, "stackTrace":[Ljava/lang/StackTraceElement;
    new-instance v0, Lcom/android/launcher3/common/model/FavoritesUpdater$4;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/common/model/FavoritesUpdater$4;-><init>(Lcom/android/launcher3/common/model/FavoritesUpdater;Ljava/util/ArrayList;Ljava/util/ArrayList;[Ljava/lang/StackTraceElement;Landroid/content/ContentResolver;)V

    .line 165
    .local v0, "r":Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/android/launcher3/common/model/FavoritesUpdater;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 166
    return-void
.end method

.method public updateScreenOrder(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 342
    .local p2, "screens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 343
    .local v5, "screensCopy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 344
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v6, Lcom/android/launcher3/common/model/LauncherSettings$WorkspaceScreens;->CONTENT_URI:Landroid/net/Uri;

    .line 347
    .local v6, "uri":Landroid/net/Uri;
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 348
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 349
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 350
    .local v2, "id":J
    const-wide/16 v8, 0x0

    cmp-long v7, v2, v8

    if-gez v7, :cond_0

    .line 351
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 355
    .end local v2    # "id":J
    :cond_1
    new-instance v4, Lcom/android/launcher3/common/model/FavoritesUpdater$6;

    invoke-direct {v4, p0, v6, v5, v0}, Lcom/android/launcher3/common/model/FavoritesUpdater$6;-><init>(Lcom/android/launcher3/common/model/FavoritesUpdater;Landroid/net/Uri;Ljava/util/ArrayList;Landroid/content/ContentResolver;)V

    .line 389
    .local v4, "r":Ljava/lang/Runnable;
    invoke-static {v4}, Lcom/android/launcher3/common/model/FavoritesUpdater;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 390
    return-void
.end method
