.class Lcom/android/launcher3/home/HomeLoader$17;
.super Ljava/lang/Object;
.source "HomeLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/HomeLoader;->addAndBindAddedWorkspaceItems(Landroid/content/Context;Ljava/util/ArrayList;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/HomeLoader;

.field final synthetic val$callbacks:Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$lastPosition:Z

.field final synthetic val$workspaceApps:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/HomeLoader;Ljava/util/ArrayList;ZLandroid/content/Context;Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/home/HomeLoader;

    .prologue
    .line 1985
    iput-object p1, p0, Lcom/android/launcher3/home/HomeLoader$17;->this$0:Lcom/android/launcher3/home/HomeLoader;

    iput-object p2, p0, Lcom/android/launcher3/home/HomeLoader$17;->val$workspaceApps:Ljava/util/ArrayList;

    iput-boolean p3, p0, Lcom/android/launcher3/home/HomeLoader$17;->val$lastPosition:Z

    iput-object p4, p0, Lcom/android/launcher3/home/HomeLoader$17;->val$context:Landroid/content/Context;

    iput-object p5, p0, Lcom/android/launcher3/home/HomeLoader$17;->val$callbacks:Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 22

    .prologue
    .line 1987
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1988
    .local v8, "addedItemsFinal":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1993
    .local v4, "addedWorkspaceScreensFinal":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    # getter for: Lcom/android/launcher3/home/HomeLoader;->sFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;
    invoke-static {}, Lcom/android/launcher3/home/HomeLoader;->access$7800()Lcom/android/launcher3/common/model/FavoritesProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/common/model/FavoritesProvider;->loadScreensFromDb()Ljava/util/ArrayList;

    move-result-object v3

    .line 1994
    .local v3, "workspaceScreens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    # getter for: Lcom/android/launcher3/home/HomeLoader;->sBgLock:Ljava/lang/Object;
    invoke-static {}, Lcom/android/launcher3/home/HomeLoader;->access$7900()Ljava/lang/Object;

    move-result-object v16

    monitor-enter v16

    .line 1995
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeLoader$17;->val$workspaceApps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 1996
    .local v11, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    instance-of v2, v11, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v2, :cond_0

    .line 1998
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeLoader$17;->this$0:Lcom/android/launcher3/home/HomeLoader;

    invoke-virtual {v11}, Lcom/android/launcher3/common/base/item/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v5

    iget-object v6, v11, Lcom/android/launcher3/common/base/item/ItemInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    # invokes: Lcom/android/launcher3/home/HomeLoader;->shortcutExists(Landroid/content/Intent;Lcom/android/launcher3/common/compat/UserHandleCompat;)Z
    invoke-static {v2, v5, v6}, Lcom/android/launcher3/home/HomeLoader;->access$8000(Lcom/android/launcher3/home/HomeLoader;Landroid/content/Intent;Lcom/android/launcher3/common/compat/UserHandleCompat;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1999
    const-string v2, "HomeLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "shortcut exist in workspace : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v11, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2047
    .end local v11    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    :catchall_0
    move-exception v2

    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 2005
    .restart local v11    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_0
    :try_start_1
    instance-of v2, v11, Lcom/android/launcher3/common/base/item/IconInfo;

    if-nez v2, :cond_1

    instance-of v2, v11, Lcom/android/launcher3/folder/FolderInfo;

    if-nez v2, :cond_1

    instance-of v2, v11, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    if-eqz v2, :cond_7

    .line 2007
    :cond_1
    move-object v12, v11

    .line 2012
    .local v12, "itemInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    const-wide/16 v18, -0x1

    iget-wide v0, v12, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    move-wide/from16 v20, v0

    cmp-long v2, v18, v20

    if-nez v2, :cond_2

    .line 2013
    const-wide/16 v18, -0x64

    move-wide/from16 v0, v18

    iput-wide v0, v12, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    .line 2016
    :cond_2
    const-wide/16 v18, -0x1

    iget-wide v0, v12, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    move-wide/from16 v20, v0

    cmp-long v2, v18, v20

    if-eqz v2, :cond_3

    const/4 v2, -0x1

    iget v5, v12, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    if-eq v2, v5, :cond_3

    const/4 v2, -0x1

    iget v5, v12, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    if-ne v2, v5, :cond_5

    .line 2019
    :cond_3
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportChinaDA()Z

    move-result v2

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher3/home/HomeLoader$17;->val$lastPosition:Z

    if-eqz v2, :cond_8

    :cond_4
    const/4 v7, 0x1

    .line 2020
    .local v7, "setLastPosition":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeLoader$17;->this$0:Lcom/android/launcher3/home/HomeLoader;

    iget v5, v11, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    iget v6, v11, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    # invokes: Lcom/android/launcher3/home/HomeLoader;->findSpaceForItem(Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)Landroid/util/Pair;
    invoke-static/range {v2 .. v7}, Lcom/android/launcher3/home/HomeLoader;->access$6800(Lcom/android/launcher3/home/HomeLoader;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)Landroid/util/Pair;

    move-result-object v10

    .line 2022
    .local v10, "coords":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;[I>;"
    iget-object v2, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 2023
    .local v14, "screenId":J
    iget-object v9, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, [I

    .line 2025
    .local v9, "coordinates":[I
    iput-wide v14, v12, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    .line 2026
    const/4 v2, 0x0

    aget v2, v9, v2

    iput v2, v12, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    .line 2027
    const/4 v2, 0x1

    aget v2, v9, v2

    iput v2, v12, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    .line 2030
    .end local v7    # "setLastPosition":Z
    .end local v9    # "coordinates":[I
    .end local v10    # "coords":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;[I>;"
    .end local v14    # "screenId":J
    :cond_5
    iget-wide v0, v12, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    move-wide/from16 v18, v0

    const-wide/16 v20, -0x1

    cmp-long v2, v18, v20

    if-eqz v2, :cond_6

    # getter for: Lcom/android/launcher3/home/HomeLoader;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;
    invoke-static {}, Lcom/android/launcher3/home/HomeLoader;->access$8100()Lcom/android/launcher3/util/LongArrayMap;

    move-result-object v2

    iget-wide v0, v12, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v2, v0, v1}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_9

    .line 2032
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeLoader$17;->this$0:Lcom/android/launcher3/home/HomeLoader;

    # getter for: Lcom/android/launcher3/home/HomeLoader;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;
    invoke-static {v2}, Lcom/android/launcher3/home/HomeLoader;->access$8200(Lcom/android/launcher3/home/HomeLoader;)Lcom/android/launcher3/common/model/FavoritesUpdater;

    move-result-object v2

    invoke-virtual {v2, v12}, Lcom/android/launcher3/common/model/FavoritesUpdater;->addItem(Lcom/android/launcher3/common/base/item/ItemInfo;)J

    .line 2042
    :goto_2
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2043
    const-string v2, "HomeLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addAndBindAddedWorkspaceItems item : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v12, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " screenId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v0, v12, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " cellX : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v12, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " cellY : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v12, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2009
    .end local v12    # "itemInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_7
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected info type : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v11, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2019
    .restart local v12    # "itemInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_8
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 2035
    :cond_9
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 2036
    .local v13, "values":Landroid/content/ContentValues;
    const-string v2, "screen"

    iget-wide v0, v12, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v13, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2037
    const-string v2, "cellX"

    iget v5, v12, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v13, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2038
    const-string v2, "cellY"

    iget v5, v12, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v13, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2039
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeLoader$17;->this$0:Lcom/android/launcher3/home/HomeLoader;

    # getter for: Lcom/android/launcher3/home/HomeLoader;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;
    invoke-static {v2}, Lcom/android/launcher3/home/HomeLoader;->access$8300(Lcom/android/launcher3/home/HomeLoader;)Lcom/android/launcher3/common/model/FavoritesUpdater;

    move-result-object v2

    invoke-virtual {v2, v13, v12}, Lcom/android/launcher3/common/model/FavoritesUpdater;->updateItem(Landroid/content/ContentValues;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto/16 :goto_2

    .line 2047
    .end local v11    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v12    # "itemInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v13    # "values":Landroid/content/ContentValues;
    :cond_a
    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2050
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeLoader$17;->this$0:Lcom/android/launcher3/home/HomeLoader;

    # getter for: Lcom/android/launcher3/home/HomeLoader;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;
    invoke-static {v2}, Lcom/android/launcher3/home/HomeLoader;->access$8400(Lcom/android/launcher3/home/HomeLoader;)Lcom/android/launcher3/common/model/FavoritesUpdater;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/HomeLoader$17;->val$context:Landroid/content/Context;

    invoke-virtual {v2, v5, v3}, Lcom/android/launcher3/common/model/FavoritesUpdater;->updateScreenOrder(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 2052
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_b

    .line 2053
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeLoader$17;->this$0:Lcom/android/launcher3/home/HomeLoader;

    new-instance v5, Lcom/android/launcher3/home/HomeLoader$17$1;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v4}, Lcom/android/launcher3/home/HomeLoader$17$1;-><init>(Lcom/android/launcher3/home/HomeLoader$17;Ljava/util/ArrayList;)V

    # invokes: Lcom/android/launcher3/home/HomeLoader;->runOnMainThread(Ljava/lang/Runnable;)V
    invoke-static {v2, v5}, Lcom/android/launcher3/home/HomeLoader;->access$8500(Lcom/android/launcher3/home/HomeLoader;Ljava/lang/Runnable;)V

    .line 2063
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeLoader$17;->this$0:Lcom/android/launcher3/home/HomeLoader;

    invoke-virtual {v2, v8}, Lcom/android/launcher3/home/HomeLoader;->bindItems(Ljava/util/ArrayList;)V

    .line 2065
    return-void
.end method
