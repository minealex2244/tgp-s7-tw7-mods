.class Lcom/android/launcher3/common/model/FavoritesUpdater$5;
.super Ljava/lang/Object;
.source "FavoritesUpdater.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/common/model/FavoritesUpdater;->deleteItemsFromDatabase(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/common/model/FavoritesUpdater;

.field final synthetic val$items:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/launcher3/common/model/FavoritesUpdater;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/common/model/FavoritesUpdater;

    .prologue
    .line 306
    iput-object p1, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$5;->this$0:Lcom/android/launcher3/common/model/FavoritesUpdater;

    iput-object p2, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$5;->val$items:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 308
    const/4 v0, 0x0

    .line 309
    .local v0, "folderCountChanged":Z
    iget-object v3, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$5;->val$items:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 310
    .local v1, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    sget-object v4, Lcom/android/launcher3/common/model/DataUpdater;->sContentResolver:Landroid/content/ContentResolver;

    iget-wide v6, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    invoke-static {v6, v7}, Lcom/android/launcher3/common/model/LauncherSettings$Favorites;->getContentUri(J)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5, v10, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 312
    sget-object v4, Lcom/android/launcher3/common/model/DataLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v4

    .line 313
    :try_start_0
    instance-of v5, v1, Lcom/android/launcher3/common/base/item/IconInfo;

    if-nez v5, :cond_0

    instance-of v5, v1, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    if-eqz v5, :cond_3

    .line 314
    :cond_0
    iget-wide v6, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v8, -0x64

    cmp-long v5, v6, v8

    if-eqz v5, :cond_1

    iget-wide v6, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v8, -0x65

    cmp-long v5, v6, v8

    if-eqz v5, :cond_1

    iget-wide v6, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v8, -0x66

    cmp-long v5, v6, v8

    if-nez v5, :cond_2

    .line 317
    :cond_1
    iget-object v5, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$5;->this$0:Lcom/android/launcher3/common/model/FavoritesUpdater;

    # getter for: Lcom/android/launcher3/common/model/FavoritesUpdater;->mLoader:Lcom/android/launcher3/common/model/DataLoader;
    invoke-static {v5}, Lcom/android/launcher3/common/model/FavoritesUpdater;->access$100(Lcom/android/launcher3/common/model/FavoritesUpdater;)Lcom/android/launcher3/common/model/DataLoader;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/android/launcher3/common/model/DataLoader;->removePagesItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 327
    :cond_2
    :goto_1
    sget-object v5, Lcom/android/launcher3/common/model/DataLoader;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    iget-wide v6, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    invoke-virtual {v5, v6, v7}, Lcom/android/launcher3/util/LongArrayMap;->remove(J)V

    .line 328
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 318
    :cond_3
    :try_start_1
    instance-of v5, v1, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v5, :cond_2

    .line 319
    sget-object v5, Lcom/android/launcher3/common/model/DataLoader;->sBgFolders:Lcom/android/launcher3/util/LongArrayMap;

    iget-wide v6, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    invoke-virtual {v5, v6, v7}, Lcom/android/launcher3/util/LongArrayMap;->remove(J)V

    .line 320
    iget-object v5, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$5;->this$0:Lcom/android/launcher3/common/model/FavoritesUpdater;

    # getter for: Lcom/android/launcher3/common/model/FavoritesUpdater;->mLoader:Lcom/android/launcher3/common/model/DataLoader;
    invoke-static {v5}, Lcom/android/launcher3/common/model/FavoritesUpdater;->access$100(Lcom/android/launcher3/common/model/FavoritesUpdater;)Lcom/android/launcher3/common/model/DataLoader;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/android/launcher3/common/model/DataLoader;->removePagesItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 321
    sget-object v5, Lcom/android/launcher3/common/model/DataUpdater;->sContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/launcher3/common/customer/PostPositionController;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/customer/PostPositionController;

    move-result-object v2

    .line 322
    .local v2, "pp":Lcom/android/launcher3/common/customer/PostPositionController;
    iget-wide v6, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    invoke-virtual {v2, v6, v7}, Lcom/android/launcher3/common/customer/PostPositionController;->deleteFolder(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 323
    const/4 v0, 0x1

    goto :goto_1

    .line 330
    .end local v1    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v2    # "pp":Lcom/android/launcher3/common/customer/PostPositionController;
    :cond_4
    if-eqz v0, :cond_5

    .line 331
    iget-object v3, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$5;->this$0:Lcom/android/launcher3/common/model/FavoritesUpdater;

    # invokes: Lcom/android/launcher3/common/model/FavoritesUpdater;->logFolderCount(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    invoke-static {v3, v10}, Lcom/android/launcher3/common/model/FavoritesUpdater;->access$200(Lcom/android/launcher3/common/model/FavoritesUpdater;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 333
    :cond_5
    return-void
.end method
