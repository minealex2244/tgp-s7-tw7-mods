.class Lcom/android/launcher3/home/HomeLoader$15;
.super Ljava/lang/Object;
.source "HomeLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/HomeLoader;->addAndBindAppsButton(Landroid/content/Context;Lcom/android/launcher3/common/base/item/IconInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/HomeLoader;

.field final synthetic val$appsButton:Lcom/android/launcher3/common/base/item/IconInfo;

.field final synthetic val$callbacks:Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/HomeLoader;Landroid/content/Context;Lcom/android/launcher3/common/base/item/IconInfo;Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/home/HomeLoader;

    .prologue
    .line 1892
    iput-object p1, p0, Lcom/android/launcher3/home/HomeLoader$15;->this$0:Lcom/android/launcher3/home/HomeLoader;

    iput-object p2, p0, Lcom/android/launcher3/home/HomeLoader$15;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/launcher3/home/HomeLoader$15;->val$appsButton:Lcom/android/launcher3/common/base/item/IconInfo;

    iput-object p4, p0, Lcom/android/launcher3/home/HomeLoader$15;->val$callbacks:Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    .prologue
    .line 1895
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1896
    .local v8, "addedItemsFinal":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    const/4 v14, 0x0

    .line 1897
    .local v14, "replaceItem":Lcom/android/launcher3/common/base/item/ItemInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeLoader$15;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0b003f

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v12

    .line 1898
    .local v12, "maxCount":I
    # getter for: Lcom/android/launcher3/home/HomeLoader;->sBgLock:Ljava/lang/Object;
    invoke-static {}, Lcom/android/launcher3/home/HomeLoader;->access$6500()Ljava/lang/Object;

    move-result-object v15

    monitor-enter v15

    .line 1899
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeLoader$15;->val$appsButton:Lcom/android/launcher3/common/base/item/IconInfo;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/HomeLoader$15;->this$0:Lcom/android/launcher3/home/HomeLoader;

    # getter for: Lcom/android/launcher3/home/HomeLoader;->mBgHotseatItems:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/launcher3/home/HomeLoader;->access$6300(Lcom/android/launcher3/home/HomeLoader;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    int-to-long v6, v5

    iput-wide v6, v2, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    .line 1900
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeLoader$15;->this$0:Lcom/android/launcher3/home/HomeLoader;

    # getter for: Lcom/android/launcher3/home/HomeLoader;->mBgHotseatItems:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/launcher3/home/HomeLoader;->access$6300(Lcom/android/launcher3/home/HomeLoader;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v12, :cond_2

    .line 1901
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeLoader$15;->val$appsButton:Lcom/android/launcher3/common/base/item/IconInfo;

    iget-wide v6, v2, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    const-wide/16 v18, 0x1

    sub-long v6, v6, v18

    iput-wide v6, v2, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    .line 1903
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeLoader$15;->this$0:Lcom/android/launcher3/home/HomeLoader;

    # getter for: Lcom/android/launcher3/home/HomeLoader;->mBgHotseatItems:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/launcher3/home/HomeLoader;->access$6300(Lcom/android/launcher3/home/HomeLoader;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 1904
    .local v11, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-wide v6, v11, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/HomeLoader$15;->val$appsButton:Lcom/android/launcher3/common/base/item/IconInfo;

    iget-wide v0, v5, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    move-wide/from16 v18, v0

    cmp-long v5, v6, v18

    if-nez v5, :cond_0

    .line 1905
    move-object v14, v11

    .line 1906
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeLoader$15;->this$0:Lcom/android/launcher3/home/HomeLoader;

    # getter for: Lcom/android/launcher3/home/HomeLoader;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;
    invoke-static {v2}, Lcom/android/launcher3/home/HomeLoader;->access$6600(Lcom/android/launcher3/home/HomeLoader;)Lcom/android/launcher3/common/model/FavoritesUpdater;

    move-result-object v2

    invoke-virtual {v2, v11}, Lcom/android/launcher3/common/model/FavoritesUpdater;->deleteItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 1910
    .end local v11    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_1
    if-eqz v14, :cond_2

    .line 1911
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1912
    .local v4, "addedWorkspaceScreensFinal":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    # getter for: Lcom/android/launcher3/home/HomeLoader;->sFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;
    invoke-static {}, Lcom/android/launcher3/home/HomeLoader;->access$6700()Lcom/android/launcher3/common/model/FavoritesProvider;

    move-result-object v2

    .line 1913
    invoke-virtual {v2}, Lcom/android/launcher3/common/model/FavoritesProvider;->loadScreensFromDb()Ljava/util/ArrayList;

    move-result-object v3

    .line 1915
    .local v3, "workspaceScreens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeLoader$15;->this$0:Lcom/android/launcher3/home/HomeLoader;

    iget v5, v14, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    iget v6, v14, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    const/4 v7, 0x0

    # invokes: Lcom/android/launcher3/home/HomeLoader;->findSpaceForItem(Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)Landroid/util/Pair;
    invoke-static/range {v2 .. v7}, Lcom/android/launcher3/home/HomeLoader;->access$6800(Lcom/android/launcher3/home/HomeLoader;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)Landroid/util/Pair;

    move-result-object v10

    .line 1918
    .local v10, "coords":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;[I>;"
    iget-object v2, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 1919
    .local v16, "screenId":J
    iget-object v9, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, [I

    .line 1920
    .local v9, "coordinates":[I
    const-wide/16 v6, -0x64

    iput-wide v6, v14, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    .line 1921
    move-wide/from16 v0, v16

    iput-wide v0, v14, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    .line 1922
    const/4 v2, 0x0

    aget v2, v9, v2

    iput v2, v14, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    .line 1923
    const/4 v2, 0x1

    aget v2, v9, v2

    iput v2, v14, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    .line 1924
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeLoader$15;->this$0:Lcom/android/launcher3/home/HomeLoader;

    # getter for: Lcom/android/launcher3/home/HomeLoader;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;
    invoke-static {v2}, Lcom/android/launcher3/home/HomeLoader;->access$6900(Lcom/android/launcher3/home/HomeLoader;)Lcom/android/launcher3/common/model/FavoritesUpdater;

    move-result-object v2

    invoke-virtual {v2, v14}, Lcom/android/launcher3/common/model/FavoritesUpdater;->addItem(Lcom/android/launcher3/common/base/item/ItemInfo;)J

    .line 1926
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeLoader$15;->this$0:Lcom/android/launcher3/home/HomeLoader;

    # getter for: Lcom/android/launcher3/home/HomeLoader;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;
    invoke-static {v2}, Lcom/android/launcher3/home/HomeLoader;->access$7000(Lcom/android/launcher3/home/HomeLoader;)Lcom/android/launcher3/common/model/FavoritesUpdater;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/HomeLoader$15;->val$context:Landroid/content/Context;

    invoke-virtual {v2, v5, v3}, Lcom/android/launcher3/common/model/FavoritesUpdater;->updateScreenOrder(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 1927
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1928
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeLoader$15;->this$0:Lcom/android/launcher3/home/HomeLoader;

    new-instance v5, Lcom/android/launcher3/home/HomeLoader$15$1;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v4}, Lcom/android/launcher3/home/HomeLoader$15$1;-><init>(Lcom/android/launcher3/home/HomeLoader$15;Ljava/util/ArrayList;)V

    # invokes: Lcom/android/launcher3/home/HomeLoader;->runOnMainThread(Ljava/lang/Runnable;)V
    invoke-static {v2, v5}, Lcom/android/launcher3/home/HomeLoader;->access$7100(Lcom/android/launcher3/home/HomeLoader;Ljava/lang/Runnable;)V

    .line 1939
    .end local v3    # "workspaceScreens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v4    # "addedWorkspaceScreensFinal":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v9    # "coordinates":[I
    .end local v10    # "coords":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;[I>;"
    .end local v16    # "screenId":J
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeLoader$15;->val$appsButton:Lcom/android/launcher3/common/base/item/IconInfo;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/HomeLoader$15;->this$0:Lcom/android/launcher3/home/HomeLoader;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/HomeLoader$15;->val$appsButton:Lcom/android/launcher3/common/base/item/IconInfo;

    iget-wide v6, v6, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    long-to-int v6, v6

    # invokes: Lcom/android/launcher3/home/HomeLoader;->getCellXFromHotseatOrder(I)I
    invoke-static {v5, v6}, Lcom/android/launcher3/home/HomeLoader;->access$7200(Lcom/android/launcher3/home/HomeLoader;I)I

    move-result v5

    iput v5, v2, Lcom/android/launcher3/common/base/item/IconInfo;->cellX:I

    .line 1940
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeLoader$15;->val$appsButton:Lcom/android/launcher3/common/base/item/IconInfo;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/HomeLoader$15;->this$0:Lcom/android/launcher3/home/HomeLoader;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/HomeLoader$15;->val$appsButton:Lcom/android/launcher3/common/base/item/IconInfo;

    iget-wide v6, v6, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    long-to-int v6, v6

    # invokes: Lcom/android/launcher3/home/HomeLoader;->getCellYFromHotseatOrder(I)I
    invoke-static {v5, v6}, Lcom/android/launcher3/home/HomeLoader;->access$7300(Lcom/android/launcher3/home/HomeLoader;I)I

    move-result v5

    iput v5, v2, Lcom/android/launcher3/common/base/item/IconInfo;->cellY:I

    .line 1941
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeLoader$15;->this$0:Lcom/android/launcher3/home/HomeLoader;

    # getter for: Lcom/android/launcher3/home/HomeLoader;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;
    invoke-static {v2}, Lcom/android/launcher3/home/HomeLoader;->access$7400(Lcom/android/launcher3/home/HomeLoader;)Lcom/android/launcher3/common/model/FavoritesUpdater;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/HomeLoader$15;->val$appsButton:Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v2, v5}, Lcom/android/launcher3/common/model/FavoritesUpdater;->addItem(Lcom/android/launcher3/common/base/item/ItemInfo;)J

    .line 1942
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeLoader$15;->this$0:Lcom/android/launcher3/home/HomeLoader;

    # getter for: Lcom/android/launcher3/home/HomeLoader;->mBgHotseatItems:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/launcher3/home/HomeLoader;->access$6300(Lcom/android/launcher3/home/HomeLoader;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1943
    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1944
    move-object v13, v14

    .line 1945
    .local v13, "moveShortcut":Lcom/android/launcher3/common/base/item/ItemInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeLoader$15;->this$0:Lcom/android/launcher3/home/HomeLoader;

    new-instance v5, Lcom/android/launcher3/home/HomeLoader$15$2;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v13, v8}, Lcom/android/launcher3/home/HomeLoader$15$2;-><init>(Lcom/android/launcher3/home/HomeLoader$15;Lcom/android/launcher3/common/base/item/ItemInfo;Ljava/util/ArrayList;)V

    # invokes: Lcom/android/launcher3/home/HomeLoader;->runOnMainThread(Ljava/lang/Runnable;)V
    invoke-static {v2, v5}, Lcom/android/launcher3/home/HomeLoader;->access$7500(Lcom/android/launcher3/home/HomeLoader;Ljava/lang/Runnable;)V

    .line 1956
    return-void

    .line 1943
    .end local v13    # "moveShortcut":Lcom/android/launcher3/common/base/item/ItemInfo;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
