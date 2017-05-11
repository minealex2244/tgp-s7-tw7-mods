.class Lcom/android/launcher3/common/model/FavoritesUpdater$6;
.super Ljava/lang/Object;
.source "FavoritesUpdater.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/common/model/FavoritesUpdater;->updateScreenOrder(Landroid/content/Context;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/common/model/FavoritesUpdater;

.field final synthetic val$cr:Landroid/content/ContentResolver;

.field final synthetic val$screensCopy:Ljava/util/ArrayList;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/launcher3/common/model/FavoritesUpdater;Landroid/net/Uri;Ljava/util/ArrayList;Landroid/content/ContentResolver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/common/model/FavoritesUpdater;

    .prologue
    .line 355
    iput-object p1, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$6;->this$0:Lcom/android/launcher3/common/model/FavoritesUpdater;

    iput-object p2, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$6;->val$uri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$6;->val$screensCopy:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$6;->val$cr:Landroid/content/ContentResolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 358
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 360
    .local v3, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    iget-object v8, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$6;->val$uri:Landroid/net/Uri;

    invoke-static {v8}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 361
    iget-object v8, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$6;->val$screensCopy:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 362
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 363
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 364
    .local v5, "v":Landroid/content/ContentValues;
    iget-object v8, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$6;->val$screensCopy:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 365
    .local v6, "screenId":J
    const-string v8, "_id"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 366
    const-string v8, "screenRank"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 367
    iget-object v8, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$6;->val$uri:Landroid/net/Uri;

    invoke-static {v8}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 362
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 371
    .end local v5    # "v":Landroid/content/ContentValues;
    .end local v6    # "screenId":J
    :cond_0
    :try_start_0
    iget-object v8, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$6;->val$cr:Landroid/content/ContentResolver;

    sget-object v9, Lcom/android/launcher3/LauncherProvider;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v8, v9, v3}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 376
    sget-object v9, Lcom/android/launcher3/common/model/DataLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v9

    .line 377
    :try_start_1
    iget-object v8, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$6;->this$0:Lcom/android/launcher3/common/model/FavoritesUpdater;

    # getter for: Lcom/android/launcher3/common/model/FavoritesUpdater;->mLoader:Lcom/android/launcher3/common/model/DataLoader;
    invoke-static {v8}, Lcom/android/launcher3/common/model/FavoritesUpdater;->access$100(Lcom/android/launcher3/common/model/FavoritesUpdater;)Lcom/android/launcher3/common/model/DataLoader;

    move-result-object v8

    iget-object v10, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$6;->val$screensCopy:Ljava/util/ArrayList;

    invoke-virtual {v8, v10}, Lcom/android/launcher3/common/model/DataLoader;->setOrderedScreen(Ljava/util/ArrayList;)V

    .line 378
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 379
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher3/util/logging/SALogging;->updatePageLogs()V

    .line 383
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getLauncherProviderID()Lcom/android/launcher3/LauncherProviderID;

    move-result-object v4

    .line 384
    .local v4, "providerID":Lcom/android/launcher3/LauncherProviderID;
    if-eqz v4, :cond_1

    .line 385
    invoke-virtual {v4}, Lcom/android/launcher3/LauncherProviderID;->updateScreenCount()V

    .line 387
    :cond_1
    return-void

    .line 372
    .end local v4    # "providerID":Lcom/android/launcher3/LauncherProviderID;
    :catch_0
    move-exception v1

    .line 373
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/RuntimeException;

    invoke-direct {v8, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .line 378
    .end local v1    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v8
.end method
