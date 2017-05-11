.class public Lcom/android/launcher3/proxy/LauncherProxy;
.super Ljava/lang/Object;
.source "LauncherProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;
    }
.end annotation


# static fields
.field public static final LAUNCHER_PROXY_NOT_READY:I = -0x1

.field public static final LAUNCHER_PROXY_NOT_SUPPORTED_STATE:I = -0x2

.field public static final LAUNCHER_PROXY_PARAMS_ERROR:I = -0x3

.field public static final LAUNCHER_PROXY_RESULT_OK:I = 0x0

.field public static final PAGE_MOVE_CURRENT:I = -0x3

.field public static final PAGE_MOVE_DEFAULT:I = -0x6

.field public static final PAGE_MOVE_EMPTY:I = 0x0

.field public static final PAGE_MOVE_FIRST:I = -0x4

.field public static final PAGE_MOVE_INVALID:I = -0x3e7

.field public static final PAGE_MOVE_LAST:I = -0x5

.field public static final PAGE_MOVE_NEXT:I = -0x2

.field public static final PAGE_MOVE_PREV:I = -0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAppsPickerProxyCallback:Lcom/android/launcher3/proxy/AppsPickerProxyCallbacks;

.field private mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

.field private mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

.field private mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

.field private mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

.field private mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

.field private mWidgetProxyCallbacks:Lcom/android/launcher3/proxy/WidgetProxyCallbacks;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lcom/android/launcher3/proxy/LauncherProxy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/proxy/LauncherProxy;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    return-void
.end method

.method private getAppsItemInfoByStateAppInfo(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/util/List;
    .locals 3
    .param p1, "appInfo"    # Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/16 v2, -0x66

    .line 128
    if-nez p1, :cond_1

    .line 139
    :cond_0
    :goto_0
    return-object v0

    .line 132
    :cond_1
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 134
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 133
    invoke-direct {p0, v0, v2}, Lcom/android/launcher3/proxy/LauncherProxy;->getItemsInfoByComponentName(Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 135
    :cond_2
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 136
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/android/launcher3/proxy/LauncherProxy;->getItemsInfoByTitle(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method private getItemsInfoByComponentName(Landroid/content/ComponentName;I)Ljava/util/List;
    .locals 12
    .param p1, "cn"    # Landroid/content/ComponentName;
    .param p2, "container"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1585
    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {p1, v7, v8}, Lcom/android/launcher3/common/model/DataLoader;->getItemInfoByComponentName(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 1586
    .local v0, "componentFilteredItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-static {v0}, Lcom/android/launcher3/proxy/ItemListHelper;->getUnhiddenItemList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    .line 1587
    .local v6, "unhiddenAndComponentFilteredItemList":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-static {v6, p2}, Lcom/android/launcher3/proxy/ItemListHelper;->getContainerIdMatchedItemList(Ljava/util/List;I)Ljava/util/List;

    move-result-object v5

    .line 1590
    .local v5, "resultFilteredList":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-static {v6}, Lcom/android/launcher3/proxy/ItemListHelper;->getFolderItemList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 1591
    .local v2, "folderItemList":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-static {}, Lcom/android/launcher3/proxy/ItemListHelper;->getAllItemMap()Ljava/util/Map;

    move-result-object v4

    .line 1592
    .local v4, "itemMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 1593
    .local v1, "folderItem":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-wide v8, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 1594
    .local v3, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    if-eqz v3, :cond_0

    iget-wide v8, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    int-to-long v10, p2

    cmp-long v8, v8, v10

    if-nez v8, :cond_0

    .line 1595
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1599
    .end local v1    # "folderItem":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v3    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_1
    return-object v5
.end method

.method private getItemsInfoByTitle(Ljava/lang/String;I)Ljava/util/List;
    .locals 16
    .param p1, "itemTitle"    # Ljava/lang/String;
    .param p2, "container"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1603
    invoke-static {}, Lcom/android/launcher3/common/model/DataLoader;->getItemList()Ljava/util/List;

    move-result-object v2

    .line 1604
    .local v2, "allItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-static {v2}, Lcom/android/launcher3/proxy/ItemListHelper;->getUnhiddenItemList(Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    .line 1605
    .local v9, "unhiddenItemList":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    move-object/from16 v0, p1

    invoke-static {v9, v0}, Lcom/android/launcher3/proxy/ItemListHelper;->getTitleMatchedItemList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 1606
    .local v8, "unhiddenAndTitleFilteredList":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    move/from16 v0, p2

    invoke-static {v8, v0}, Lcom/android/launcher3/proxy/ItemListHelper;->getContainerIdMatchedItemList(Ljava/util/List;I)Ljava/util/List;

    move-result-object v7

    .line 1609
    .local v7, "resultFilteredList":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-static {v8}, Lcom/android/launcher3/proxy/ItemListHelper;->getFolderItemList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 1610
    .local v4, "folderItemList":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-static {}, Lcom/android/launcher3/proxy/ItemListHelper;->getAllItemMap()Ljava/util/Map;

    move-result-object v6

    .line 1611
    .local v6, "itemMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 1612
    .local v3, "folderItem":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-wide v12, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v6, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 1613
    .local v5, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    if-eqz v5, :cond_0

    iget-wide v12, v5, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    move/from16 v0, p2

    int-to-long v14, v0

    cmp-long v11, v12, v14

    if-nez v11, :cond_0

    .line 1614
    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1618
    .end local v3    # "folderItem":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v5    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_1
    return-object v7
.end method

.method private hideOrUnHideApps(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;Z)I
    .locals 4
    .param p1, "appInfo"    # Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;
    .param p2, "isHide"    # Z

    .prologue
    const/4 v3, 0x6

    .line 678
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getItemInfo()Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v1

    if-nez v1, :cond_1

    .line 679
    :cond_0
    const/4 v1, -0x3

    .line 695
    :goto_0
    return v1

    .line 681
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    invoke-interface {v1}, Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;->getTopStageMode()I

    move-result v1

    if-ne v1, v3, :cond_2

    .line 682
    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    const/4 v2, 0x0

    invoke-interface {v1, v3, v2}, Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;->finishStage(ILcom/android/launcher3/common/stage/StageEntry;)V

    .line 686
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 687
    .local v0, "hideItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getItemInfo()Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 689
    if-eqz p2, :cond_3

    .line 690
    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    invoke-interface {v1, v0}, Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;->hideApps(Ljava/util/ArrayList;)V

    .line 695
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 692
    :cond_3
    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    invoke-interface {v1, v0}, Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;->unHideApps(Ljava/util/ArrayList;)V

    goto :goto_1
.end method


# virtual methods
.method public final addAppsFolderItem(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)I
    .locals 10
    .param p1, "appInfo"    # Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;

    .prologue
    const/4 v3, -0x3

    const/4 v6, 0x6

    .line 1425
    if-nez p1, :cond_1

    .line 1452
    :cond_0
    :goto_0
    return v3

    .line 1428
    :cond_1
    iget-object v4, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    invoke-interface {v4}, Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;->getTopStageMode()I

    move-result v4

    const/4 v5, 0x5

    if-eq v4, v5, :cond_2

    iget-object v4, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    .line 1429
    invoke-interface {v4}, Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;->getTopStageMode()I

    move-result v4

    if-ne v4, v6, :cond_3

    :cond_2
    iget-object v4, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    if-nez v4, :cond_4

    .line 1431
    :cond_3
    const/4 v3, -0x1

    goto :goto_0

    .line 1434
    :cond_4
    iget-object v4, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    invoke-interface {v4}, Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;->getTopStageMode()I

    move-result v4

    if-ne v4, v6, :cond_5

    .line 1435
    iget-object v4, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    const/4 v5, 0x0

    invoke-interface {v4, v6, v5}, Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;->finishStage(ILcom/android/launcher3/common/stage/StageEntry;)V

    .line 1438
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/launcher3/proxy/LauncherProxy;->getAppsItemInfoByStateAppInfo(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/util/List;

    move-result-object v2

    .line 1439
    .local v2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    const/4 v1, 0x0

    .line 1440
    .local v1, "itemAdded":Z
    if-eqz v2, :cond_7

    .line 1441
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 1443
    .local v0, "i":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-wide v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-gez v5, :cond_6

    .line 1444
    iget-object v5, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    invoke-interface {v5, v0}, Lcom/android/launcher3/proxy/FolderProxyCallbacks;->addFolderItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 1445
    const/4 v1, 0x1

    goto :goto_1

    .line 1449
    .end local v0    # "i":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_7
    if-eqz v1, :cond_0

    .line 1450
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public final addHomeFolderItem(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)I
    .locals 6
    .param p1, "appInfo"    # Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;

    .prologue
    const/4 v5, 0x6

    .line 1456
    if-nez p1, :cond_0

    .line 1457
    const/4 v3, -0x3

    .line 1478
    :goto_0
    return v3

    .line 1459
    :cond_0
    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    invoke-interface {v3}, Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;->getTopStageMode()I

    move-result v3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    .line 1460
    invoke-interface {v3}, Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;->getTopStageMode()I

    move-result v3

    if-ne v3, v5, :cond_2

    :cond_1
    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    if-nez v3, :cond_3

    .line 1462
    :cond_2
    const/4 v3, -0x1

    goto :goto_0

    .line 1465
    :cond_3
    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    invoke-interface {v3}, Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;->getTopStageMode()I

    move-result v3

    if-ne v3, v5, :cond_4

    .line 1466
    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    const/4 v4, 0x0

    invoke-interface {v3, v5, v4}, Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;->finishStage(ILcom/android/launcher3/common/stage/StageEntry;)V

    .line 1469
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/launcher3/proxy/LauncherProxy;->getAppsItemInfoByStateAppInfo(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/util/List;

    move-result-object v2

    .line 1470
    .local v2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    if-eqz v2, :cond_6

    .line 1471
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 1472
    .local v0, "i":Lcom/android/launcher3/common/base/item/ItemInfo;
    instance-of v4, v0, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v4, :cond_5

    .line 1473
    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    .end local v0    # "i":Lcom/android/launcher3/common/base/item/ItemInfo;
    invoke-virtual {v0}, Lcom/android/launcher3/common/base/item/IconInfo;->makeCloneInfo()Lcom/android/launcher3/common/base/item/IconInfo;

    move-result-object v1

    .line 1474
    .local v1, "item":Lcom/android/launcher3/common/base/item/IconInfo;
    iget-object v4, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    invoke-interface {v4, v1}, Lcom/android/launcher3/proxy/FolderProxyCallbacks;->addFolderItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto :goto_1

    .line 1478
    .end local v1    # "item":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_6
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public final addHomeItemToPage(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;III)I
    .locals 2
    .param p1, "appInfo"    # Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;
    .param p2, "pageNumber"    # I
    .param p3, "pageDirection"    # I
    .param p4, "detailDirection"    # I

    .prologue
    const/4 v0, -0x3

    .line 919
    if-nez p1, :cond_1

    .line 930
    :cond_0
    :goto_0
    return v0

    .line 922
    :cond_1
    if-lez p2, :cond_2

    .line 923
    invoke-virtual {p0, p2}, Lcom/android/launcher3/proxy/LauncherProxy;->isHomeValidPage(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 929
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/proxy/LauncherProxy;->createHomeAppShortcut(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;I)I

    .line 930
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final addNewHomePageInOverViewMode()I
    .locals 1

    .prologue
    .line 821
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->addNewHomePageInOverViewMode()V

    .line 822
    const/4 v0, 0x0

    return v0
.end method

.method public final addNewPageInHome()I
    .locals 1

    .prologue
    .line 816
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->addNewPage()V

    .line 817
    const/4 v0, 0x0

    return v0
.end method

.method public final addSearchResultItemToFolder()I
    .locals 1

    .prologue
    .line 783
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsPickerProxyCallback:Lcom/android/launcher3/proxy/AppsPickerProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/AppsPickerProxyCallbacks;->addResultApps()V

    .line 785
    const/4 v0, 0x0

    return v0
.end method

.method public final addToSecureFolder(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)I
    .locals 4
    .param p1, "appInfo"    # Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;

    .prologue
    const/4 v2, -0x1

    .line 1355
    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    if-nez v3, :cond_1

    .line 1366
    :cond_0
    :goto_0
    return v2

    .line 1358
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/launcher3/proxy/LauncherProxy;->getAppsItemInfoByStateAppInfo(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/util/List;

    move-result-object v1

    .line 1359
    .local v1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1362
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 1363
    .local v0, "i":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    invoke-interface {v3, v0}, Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;->addToSecureFolder(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto :goto_1

    .line 1365
    .end local v0    # "i":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_2
    iget-object v2, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    invoke-interface {v2}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->startSecureFolder()V

    .line 1366
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final addWidgetResultItemToHome()I
    .locals 2

    .prologue
    .line 934
    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mWidgetProxyCallbacks:Lcom/android/launcher3/proxy/WidgetProxyCallbacks;

    invoke-interface {v1}, Lcom/android/launcher3/proxy/WidgetProxyCallbacks;->getWidgetResultItem()Lcom/android/launcher3/common/base/item/PendingAddItemInfo;

    move-result-object v0

    .line 935
    .local v0, "widget":Lcom/android/launcher3/common/base/item/PendingAddItemInfo;
    if-nez v0, :cond_0

    .line 936
    const/4 v1, -0x3

    .line 944
    :goto_0
    return v1

    .line 939
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v1, v0}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->addHomeWidget(Lcom/android/launcher3/common/base/item/PendingAddItemInfo;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 940
    invoke-virtual {p0}, Lcom/android/launcher3/proxy/LauncherProxy;->goHome()I

    .line 941
    const/4 v1, 0x0

    goto :goto_0

    .line 944
    :cond_1
    const/4 v1, -0x2

    goto :goto_0
.end method

.method public final alignHomeIcon(IZ)I
    .locals 1
    .param p1, "page"    # I
    .param p2, "isTop"    # Z

    .prologue
    .line 831
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v0, p1, p2}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->alignHomeIcon(IZ)V

    .line 832
    const/4 v0, 0x0

    return v0
.end method

.method public final appsTidyUpPages()I
    .locals 1

    .prologue
    .line 1213
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    if-nez v0, :cond_0

    .line 1214
    const/4 v0, -0x1

    .line 1218
    :goto_0
    return v0

    .line 1217
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->tidyUpPages()V

    .line 1218
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final canAppAddToSecureFolder(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Z
    .locals 3
    .param p1, "appInfo"    # Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;

    .prologue
    const/4 v1, 0x0

    .line 1341
    iget-object v2, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    if-nez v2, :cond_1

    .line 1351
    :cond_0
    :goto_0
    return v1

    .line 1345
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/launcher3/proxy/LauncherProxy;->getAppsItemInfoByStateAppInfo(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/util/List;

    move-result-object v0

    .line 1347
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 1351
    iget-object v2, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-interface {v2, v1}, Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;->canAppAddToSecureFolder(Lcom/android/launcher3/common/base/item/ItemInfo;)Z

    move-result v1

    goto :goto_0
.end method

.method public final changeAppsFolderTitle(Ljava/lang/String;)I
    .locals 2
    .param p1, "newTitle"    # Ljava/lang/String;

    .prologue
    .line 722
    if-nez p1, :cond_0

    .line 723
    const/4 v0, -0x3

    .line 733
    :goto_0
    return v0

    .line 725
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    .line 726
    invoke-interface {v0}, Lcom/android/launcher3/proxy/FolderProxyCallbacks;->getOpenedFolder()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v0

    if-nez v0, :cond_2

    .line 727
    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    .line 730
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    .line 731
    invoke-interface {v1}, Lcom/android/launcher3/proxy/FolderProxyCallbacks;->getOpenedFolder()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v1

    .line 730
    invoke-interface {v0, v1, p1}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->changeFolderTitle(Lcom/android/launcher3/common/base/item/ItemInfo;Ljava/lang/String;)V

    .line 732
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    invoke-interface {v0, p1}, Lcom/android/launcher3/proxy/FolderProxyCallbacks;->changeTitle(Ljava/lang/String;)V

    .line 733
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final changeAppsScreengrid(Ljava/lang/String;)I
    .locals 1
    .param p1, "gridOption"    # Ljava/lang/String;

    .prologue
    .line 864
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    invoke-interface {v0, p1}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->changeScreengrid(Ljava/lang/String;)V

    .line 865
    const/4 v0, 0x0

    return v0
.end method

.method public final changeAppsViewTypeToAlphabetic()I
    .locals 2

    .prologue
    .line 1176
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    if-nez v0, :cond_0

    .line 1177
    const/4 v0, -0x1

    .line 1182
    :goto_0
    return v0

    .line 1180
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    sget-object v1, Lcom/android/launcher3/allapps/controller/AppsController$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    .line 1181
    invoke-interface {v0, v1}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->setViewType(Lcom/android/launcher3/allapps/controller/AppsController$ViewType;)V

    .line 1182
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final changeAppsViewTypeToCustom()I
    .locals 2

    .prologue
    .line 1186
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    if-nez v0, :cond_0

    .line 1187
    const/4 v0, -0x1

    .line 1191
    :goto_0
    return v0

    .line 1190
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    sget-object v1, Lcom/android/launcher3/allapps/controller/AppsController$ViewType;->CUSTOM_GRID:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    invoke-interface {v0, v1}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->setViewType(Lcom/android/launcher3/allapps/controller/AppsController$ViewType;)V

    .line 1191
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final changeHomeFolderTitle(Ljava/lang/String;)I
    .locals 2
    .param p1, "newTitle"    # Ljava/lang/String;

    .prologue
    .line 707
    if-nez p1, :cond_0

    .line 708
    const/4 v0, -0x3

    .line 718
    :goto_0
    return v0

    .line 710
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    .line 711
    invoke-interface {v0}, Lcom/android/launcher3/proxy/FolderProxyCallbacks;->getOpenedFolder()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v0

    if-nez v0, :cond_2

    .line 712
    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    .line 715
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    .line 716
    invoke-interface {v1}, Lcom/android/launcher3/proxy/FolderProxyCallbacks;->getOpenedFolder()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v1

    .line 715
    invoke-interface {v0, v1, p1}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->changeFolderTitle(Lcom/android/launcher3/common/base/item/ItemInfo;Ljava/lang/String;)V

    .line 717
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    invoke-interface {v0, p1}, Lcom/android/launcher3/proxy/FolderProxyCallbacks;->changeTitle(Ljava/lang/String;)V

    .line 718
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final changeHomePageOrder(II)I
    .locals 1
    .param p1, "fromPage"    # I
    .param p2, "toPage"    # I

    .prologue
    .line 811
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v0, p1, p2}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->changeHomePageOrder(II)V

    .line 812
    const/4 v0, 0x0

    return v0
.end method

.method public final changeHomeScreengrid(Ljava/lang/String;)I
    .locals 1
    .param p1, "gridOption"    # Ljava/lang/String;

    .prologue
    .line 859
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v0, p1}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->changeScreengrid(Ljava/lang/String;)V

    .line 860
    const/4 v0, 0x0

    return v0
.end method

.method public final changeHomeStyle(Z)I
    .locals 1
    .param p1, "homeOnlyMode"    # Z

    .prologue
    .line 1257
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    invoke-interface {v0, p1}, Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;->changeHomeStyle(Z)V

    .line 1258
    const/4 v0, 0x0

    return v0
.end method

.method public final checkAbleAlignIcon(IZ)Z
    .locals 1
    .param p1, "page"    # I
    .param p2, "isUpward"    # Z

    .prologue
    .line 1556
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v0, p1, p2}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->checkAbleAlignIcon(IZ)Z

    move-result v0

    return v0
.end method

.method public final checkMatchAppsGridOption(Ljava/lang/String;)Z
    .locals 1
    .param p1, "gridOption"    # Ljava/lang/String;

    .prologue
    .line 881
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    invoke-interface {v0, p1}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->checkMatchGridOption(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final checkMatchHomeGridOption(Ljava/lang/String;)Z
    .locals 1
    .param p1, "gridOption"    # Ljava/lang/String;

    .prologue
    .line 877
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v0, p1}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->checkMatchGridOption(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final checkNeedDisplayAutoalignDialog()Z
    .locals 1

    .prologue
    .line 1552
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->checkNeedDisplayAutoalignDialog()Z

    move-result v0

    return v0
.end method

.method public final checkValidAppsGridOption(Ljava/lang/String;)Z
    .locals 1
    .param p1, "gridOption"    # Ljava/lang/String;

    .prologue
    .line 873
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    invoke-interface {v0, p1}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->checkValidGridOption(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final checkValidHomeGridOption(Ljava/lang/String;)Z
    .locals 1
    .param p1, "gridOption"    # Ljava/lang/String;

    .prologue
    .line 869
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v0, p1}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->checkValidGridOption(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final clearBadge(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)I
    .locals 4
    .param p1, "appInfo"    # Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;

    .prologue
    const/4 v2, -0x1

    .line 1370
    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    if-nez v3, :cond_1

    .line 1380
    :cond_0
    :goto_0
    return v2

    .line 1373
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/launcher3/proxy/LauncherProxy;->getAppsItemInfoByStateAppInfo(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/util/List;

    move-result-object v1

    .line 1374
    .local v1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1377
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 1378
    .local v0, "i":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    invoke-interface {v3, v0}, Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;->clearBadge(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto :goto_1

    .line 1380
    .end local v0    # "i":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final clearFolderBadge(Lcom/android/launcher3/common/base/item/ItemInfo;)I
    .locals 4
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    const/4 v2, -0x1

    .line 1384
    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    if-nez v3, :cond_1

    .line 1397
    :cond_0
    :goto_0
    return v2

    .line 1387
    :cond_1
    instance-of v3, p1, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 1388
    check-cast v0, Lcom/android/launcher3/folder/FolderInfo;

    .line 1389
    .local v0, "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    iget-object v2, v0, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 1390
    .local v1, "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    iget v3, v1, Lcom/android/launcher3/common/base/item/IconInfo;->mBadgeCount:I

    if-eqz v3, :cond_2

    .line 1391
    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    invoke-interface {v3, v1}, Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;->clearBadge(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto :goto_1

    .line 1397
    .end local v1    # "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final closeFolder()I
    .locals 2

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;->getTopStageMode()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 243
    const/4 v0, -0x1

    .line 247
    :goto_0
    return v0

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;->closeFolder()V

    .line 247
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final contactUs()I
    .locals 1

    .prologue
    .line 222
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    .line 223
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 222
    invoke-static {v0}, Lcom/android/launcher3/Utilities;->startContactUsActivity(Landroid/content/Context;)V

    .line 224
    const/4 v0, 0x0

    return v0
.end method

.method public final createHomeAppShortcut(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;I)I
    .locals 5
    .param p1, "appInfo"    # Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;
    .param p2, "page"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 650
    if-nez p1, :cond_0

    .line 651
    const/4 v1, -0x3

    .line 662
    :goto_0
    return v1

    .line 653
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/launcher3/proxy/LauncherProxy;->getAppsItemInfoByStateAppInfo(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/util/List;

    move-result-object v0

    .line 654
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 655
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-object v1, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->setName(Ljava/lang/String;)V

    .line 656
    if-ltz p2, :cond_2

    .line 657
    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-virtual {v1}, Lcom/android/launcher3/common/base/item/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-interface {v3, v1, v4, p2}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->createShortcut(Landroid/content/ComponentName;Lcom/android/launcher3/common/base/item/ItemInfo;I)V

    :cond_1
    :goto_1
    move v1, v2

    .line 662
    goto :goto_0

    .line 659
    :cond_2
    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-virtual {v1}, Lcom/android/launcher3/common/base/item/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-interface {v3, v1, v4, v2}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->createShortcut(Landroid/content/ComponentName;Lcom/android/launcher3/common/base/item/ItemInfo;I)V

    goto :goto_1
.end method

.method public final createHomeFolderShortcut(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)I
    .locals 5
    .param p1, "appInfo"    # Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;

    .prologue
    const/4 v2, 0x0

    .line 666
    if-nez p1, :cond_1

    .line 667
    const/4 v2, -0x3

    .line 674
    :cond_0
    :goto_0
    return v2

    .line 669
    :cond_1
    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->getFolderItemViewByTitle(Ljava/lang/String;)Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v1

    .line 670
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 671
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 672
    .local v0, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    const/4 v4, 0x0

    invoke-interface {v3, v4, v0, v2}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->createShortcut(Landroid/content/ComponentName;Lcom/android/launcher3/common/base/item/ItemInfo;I)V

    goto :goto_0
.end method

.method public final enableAllAppsBadge(Z)I
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 1664
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    invoke-interface {v0, p1}, Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;->enableAllAppsBadge(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1665
    const/4 v0, -0x1

    .line 1667
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final enableAppsButton(Z)I
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 1262
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    if-nez v0, :cond_0

    .line 1263
    const/4 v0, -0x1

    .line 1275
    :goto_0
    return v0

    .line 1266
    :cond_0
    if-eqz p1, :cond_1

    .line 1267
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;->showAppsButton()V

    .line 1272
    :goto_1
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;->exitSettingsView()V

    .line 1273
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->exitSubState()V

    .line 1275
    const/4 v0, 0x0

    goto :goto_0

    .line 1269
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;->hideAppsButton()V

    goto :goto_1
.end method

.method public final enableSingleAppBadge(Ljava/lang/String;Z)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .prologue
    .line 1671
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    invoke-interface {v0, p1, p2}, Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;->enableSingleAppBadge(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1672
    const/4 v0, -0x1

    .line 1674
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final enterAppsFolderAddApps(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)I
    .locals 4
    .param p1, "appInfo"    # Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;

    .prologue
    const/4 v2, -0x3

    .line 754
    if-nez p1, :cond_1

    .line 767
    :cond_0
    :goto_0
    return v2

    .line 758
    :cond_1
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getName()Ljava/lang/String;

    move-result-object v1

    .line 759
    .local v1, "name":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    invoke-interface {v3, v1}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->getFolderItemViewByTitle(Ljava/lang/String;)Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v0

    .line 761
    .local v0, "iv":Lcom/android/launcher3/common/view/IconView;
    instance-of v3, v0, Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v3, :cond_0

    .line 762
    iget-object v2, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    check-cast v0, Lcom/android/launcher3/folder/view/FolderIconView;

    .end local v0    # "iv":Lcom/android/launcher3/common/view/IconView;
    invoke-interface {v2, v0}, Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;->enterFolderAddAppsView(Lcom/android/launcher3/folder/view/FolderIconView;)V

    .line 767
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final enterBadgeManagementView()I
    .locals 1

    .prologue
    .line 1659
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;->enterBadgeManagementView()V

    .line 1660
    const/4 v0, 0x0

    return v0
.end method

.method public final enterHideAppsView()I
    .locals 1

    .prologue
    .line 841
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;->enterHideAppsView()V

    .line 842
    const/4 v0, 0x0

    return v0
.end method

.method public final enterHomeEditView()I
    .locals 1

    .prologue
    .line 798
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->enterHomeEditView()V

    .line 799
    const/4 v0, 0x0

    return v0
.end method

.method public final enterHomeFolderAddApps(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)I
    .locals 4
    .param p1, "appInfo"    # Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;

    .prologue
    const/4 v2, -0x3

    .line 737
    if-nez p1, :cond_1

    .line 750
    :cond_0
    :goto_0
    return v2

    .line 741
    :cond_1
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getName()Ljava/lang/String;

    move-result-object v1

    .line 742
    .local v1, "name":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v3, v1}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->getFolderItemViewByTitle(Ljava/lang/String;)Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v0

    .line 744
    .local v0, "iv":Lcom/android/launcher3/common/view/IconView;
    instance-of v3, v0, Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v3, :cond_0

    .line 745
    iget-object v2, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    check-cast v0, Lcom/android/launcher3/folder/view/FolderIconView;

    .end local v0    # "iv":Lcom/android/launcher3/common/view/IconView;
    invoke-interface {v2, v0}, Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;->enterFolderAddAppsView(Lcom/android/launcher3/folder/view/FolderIconView;)V

    .line 750
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final enterHomeSettingAppsGridSettingView()I
    .locals 1

    .prologue
    .line 852
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;->exitSettingsView()V

    .line 853
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->showAppsGridSettingView()V

    .line 855
    const/4 v0, 0x0

    return v0
.end method

.method public final enterHomeSettingHomeGridSettingView()I
    .locals 1

    .prologue
    .line 846
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;->exitSettingsView()V

    .line 847
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->enterHomeSettingGridSettingView()V

    .line 848
    const/4 v0, 0x0

    return v0
.end method

.method public final enterHomeSettingModeChangeView()I
    .locals 1

    .prologue
    .line 1252
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;->enterHomeSettingChangeModeView()V

    .line 1253
    const/4 v0, 0x0

    return v0
.end method

.method public final enterHomeSettingView()I
    .locals 1

    .prologue
    .line 1247
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;->enterHomeSettingView()V

    .line 1248
    const/4 v0, 0x0

    return v0
.end method

.method public final enterWidgetListView()I
    .locals 1

    .prologue
    .line 836
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;->enterWidgetListView()V

    .line 837
    const/4 v0, 0x0

    return v0
.end method

.method public final enterWidgetResizeMode(Lcom/android/launcher3/common/base/item/ItemInfo;)I
    .locals 8
    .param p1, "itemInfo"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x2

    .line 628
    instance-of v6, p1, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    if-nez v6, :cond_1

    .line 629
    const/4 v4, -0x3

    .line 646
    :cond_0
    :goto_0
    return v4

    :cond_1
    move-object v2, p1

    .line 631
    check-cast v2, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    .line 632
    .local v2, "widget":Lcom/android/launcher3/home/LauncherAppWidgetInfo;
    iget-object v0, v2, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    .line 633
    .local v0, "cn":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    .line 637
    iget-object v6, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    .line 638
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->getWidgetItemsInfoByPackageName(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 639
    .local v3, "widgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 640
    .local v1, "w":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-object v6, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v6, v1}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->enterWidgetResizeMode(Lcom/android/launcher3/common/base/item/ItemInfo;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v4, v5

    .line 641
    goto :goto_0

    .end local v1    # "w":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_2
    move v4, v5

    .line 646
    goto :goto_0
.end method

.method public final enterWidgetSearchState()I
    .locals 2

    .prologue
    .line 893
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;->getTopStageMode()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 894
    const/4 v0, -0x2

    .line 897
    :goto_0
    return v0

    .line 896
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mWidgetProxyCallbacks:Lcom/android/launcher3/proxy/WidgetProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/WidgetProxyCallbacks;->enterSearchState()V

    .line 897
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final enterWidgetUninstallState()I
    .locals 2

    .prologue
    .line 901
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;->getTopStageMode()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 902
    const/4 v0, -0x2

    .line 905
    :goto_0
    return v0

    .line 904
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mWidgetProxyCallbacks:Lcom/android/launcher3/proxy/WidgetProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/WidgetProxyCallbacks;->enterUninstallState()V

    .line 905
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAppNamebyComponentName(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/lang/String;
    .locals 3
    .param p1, "appInfo"    # Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;

    .prologue
    .line 1639
    invoke-virtual {p0}, Lcom/android/launcher3/proxy/LauncherProxy;->isHomeOnlyMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1640
    invoke-virtual {p0, p1}, Lcom/android/launcher3/proxy/LauncherProxy;->getHomeItemInfoByStateAppInfo(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/util/List;

    move-result-object v1

    .line 1645
    .local v1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    :goto_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_1

    .line 1646
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 1647
    .local v0, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    if-eqz v0, :cond_1

    .line 1648
    instance-of v2, v0, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v2, :cond_1

    .line 1649
    iget-object v2, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1654
    .end local v0    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    :goto_1
    return-object v2

    .line 1642
    .end local v1    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/launcher3/proxy/LauncherProxy;->getAppsItemInfo(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/util/List;

    move-result-object v1

    .restart local v1    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    goto :goto_0

    .line 1654
    :cond_1
    const-string v2, ""

    goto :goto_1
.end method

.method public getAppsItemInfo(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/util/List;
    .locals 1
    .param p1, "appInfo"    # Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 949
    invoke-direct {p0, p1}, Lcom/android/launcher3/proxy/LauncherProxy;->getAppsItemInfoByStateAppInfo(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getAppsPageCount()I
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->getPageCount()I

    move-result v0

    return v0
.end method

.method public final getCurrentTopStage()I
    .locals 1

    .prologue
    .line 1544
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;->getTopStageMode()I

    move-result v0

    return v0
.end method

.method public getFolderItemInfoByStateAppInfo(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/util/ArrayList;
    .locals 10
    .param p1, "appInfo"    # Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 162
    iget-object v5, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    if-nez v5, :cond_1

    .line 163
    const/4 v4, 0x0

    .line 187
    :cond_0
    return-object v4

    .line 165
    :cond_1
    iget-object v5, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    invoke-interface {v5}, Lcom/android/launcher3/proxy/FolderProxyCallbacks;->getOpenedFolderIconView()Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v1

    .line 166
    .local v1, "folderIconView":Lcom/android/launcher3/folder/view/FolderIconView;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 168
    .local v4, "itemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    if-eqz v1, :cond_0

    .line 169
    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderView()Lcom/android/launcher3/folder/view/FolderView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/folder/view/FolderView;->getItemsInReadingOrder()Ljava/util/ArrayList;

    move-result-object v2

    .line 171
    .local v2, "folderItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 172
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 173
    .local v3, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 174
    iget-object v6, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v6, :cond_2

    iget-object v6, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    .line 175
    invoke-virtual {v6}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 176
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 178
    :cond_3
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 179
    iget-object v6, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    if-eqz v6, :cond_2

    iget-object v6, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    .line 180
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "\\s"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "\\s"

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_2

    .line 181
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getFolderItemViewByTitle(Ljava/lang/String;)Lcom/android/launcher3/folder/view/FolderIconView;
    .locals 1
    .param p1, "folderName"    # Ljava/lang/String;

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v0, p1}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->getFolderItemViewByTitle(Ljava/lang/String;)Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v0

    return-object v0
.end method

.method public final getHomeCurrentPage()I
    .locals 2

    .prologue
    .line 474
    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v1}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->getPagedView()Lcom/android/launcher3/common/base/view/PagedView;

    move-result-object v0

    .line 475
    .local v0, "pv":Lcom/android/launcher3/common/base/view/PagedView;
    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/PagedView;->getCurrentPage()I

    move-result v1

    return v1
.end method

.method public getHomeFolderItemCountByTitle(Ljava/lang/String;)I
    .locals 1
    .param p1, "folderName"    # Ljava/lang/String;

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v0, p1}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->getFolderItemCountByTitle(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getHomeItemInfoByStateAppInfo(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/util/List;
    .locals 3
    .param p1, "appInfo"    # Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/16 v2, -0x64

    .line 113
    if-nez p1, :cond_1

    .line 124
    :cond_0
    :goto_0
    return-object v0

    .line 117
    :cond_1
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 119
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 118
    invoke-direct {p0, v0, v2}, Lcom/android/launcher3/proxy/LauncherProxy;->getItemsInfoByComponentName(Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 120
    :cond_2
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 121
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/android/launcher3/proxy/LauncherProxy;->getItemsInfoByTitle(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public final getHomePageCount()I
    .locals 3

    .prologue
    .line 445
    iget-object v2, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v2}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->getPagedView()Lcom/android/launcher3/common/base/view/PagedView;

    move-result-object v1

    .line 446
    .local v1, "pv":Lcom/android/launcher3/common/base/view/PagedView;
    const/4 v0, 0x1

    .line 447
    .local v0, "pages":I
    if-eqz v1, :cond_0

    .line 448
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/PagedView;->getPageCount()I

    move-result v0

    .line 451
    :cond_0
    return v0
.end method

.method public final getHomePageCountInOverviewMode()I
    .locals 3

    .prologue
    .line 456
    iget-object v2, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v2}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->getPagedView()Lcom/android/launcher3/common/base/view/PagedView;

    move-result-object v1

    .line 457
    .local v1, "pv":Lcom/android/launcher3/common/base/view/PagedView;
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/PagedView;->getPageCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 458
    .local v0, "pageCount":I
    iget-object v2, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v2}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->neededToAdjustZeroPage()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 459
    add-int/lit8 v0, v0, -0x1

    .line 462
    :cond_0
    return v0
.end method

.method public final getHomePageNumberByScreenId(J)I
    .locals 1
    .param p1, "screenId"    # J

    .prologue
    .line 1726
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v0, p1, p2}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->getPageIndexForScreenId(J)I

    move-result v0

    return v0
.end method

.method public getHomeWidgetItemInfo(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/util/ArrayList;
    .locals 2
    .param p1, "appInfo"    # Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 423
    if-nez p1, :cond_1

    .line 434
    :cond_0
    :goto_0
    return-object v0

    .line 426
    :cond_1
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 427
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    .line 429
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    .line 428
    invoke-interface {v0, v1}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->getWidgetItemsInfoByComponentName(Landroid/content/ComponentName;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 430
    :cond_2
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 431
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    .line 432
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getName()Ljava/lang/String;

    move-result-object v1

    .line 431
    invoke-interface {v0, v1}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->getWidgetItemsInfoByTitle(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public final getItemInfoInHideApps(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Lcom/android/launcher3/common/base/item/ItemInfo;
    .locals 2
    .param p1, "appInfo"    # Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;

    .prologue
    const/4 v0, 0x0

    .line 1622
    if-nez p1, :cond_1

    .line 1632
    :cond_0
    :goto_0
    return-object v0

    .line 1626
    :cond_1
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1627
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsPickerProxyCallback:Lcom/android/launcher3/proxy/AppsPickerProxyCallbacks;

    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/launcher3/proxy/AppsPickerProxyCallbacks;->getItem(Landroid/content/ComponentName;)Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v0

    goto :goto_0

    .line 1628
    :cond_2
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1629
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsPickerProxyCallback:Lcom/android/launcher3/proxy/AppsPickerProxyCallbacks;

    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/launcher3/proxy/AppsPickerProxyCallbacks;->getItem(Ljava/lang/String;)Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public final getItemPageInApps(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)I
    .locals 4
    .param p1, "appInfo"    # Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;

    .prologue
    .line 1106
    const/4 v1, -0x1

    .line 1108
    .local v1, "result":I
    invoke-direct {p0, p1}, Lcom/android/launcher3/proxy/LauncherProxy;->getAppsItemInfoByStateAppInfo(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/util/List;

    move-result-object v0

    .line 1109
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 1110
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-wide v2, v2, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    long-to-int v1, v2

    .line 1113
    :cond_0
    return v1
.end method

.method public getItemViewByComponentName(Landroid/content/ComponentName;)Landroid/view/View;
    .locals 1
    .param p1, "cn"    # Landroid/content/ComponentName;

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v0, p1}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->getItemViewByComponentName(Landroid/content/ComponentName;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getItemViewByTitle(Ljava/lang/String;)Landroid/view/View;
    .locals 1
    .param p1, "itemName"    # Ljava/lang/String;

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v0, p1}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->getItemViewByTitle(Ljava/lang/String;)Lcom/android/launcher3/common/view/IconView;

    move-result-object v0

    return-object v0
.end method

.method public getOpenedAppsFolderPage()I
    .locals 4

    .prologue
    .line 153
    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    invoke-interface {v1}, Lcom/android/launcher3/proxy/FolderProxyCallbacks;->getOpenedFolder()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v0

    .line 155
    .local v0, "folder":Lcom/android/launcher3/folder/FolderInfo;
    if-eqz v0, :cond_0

    .line 156
    iget-wide v2, v0, Lcom/android/launcher3/folder/FolderInfo;->screenId:J

    long-to-int v1, v2

    .line 158
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getOpenedFolderPageCount()I
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/FolderProxyCallbacks;->getPagedView()Lcom/android/launcher3/common/base/view/PagedView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/FolderProxyCallbacks;->getPagedView()Lcom/android/launcher3/common/base/view/PagedView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/PagedView;->getPageCount()I

    move-result v0

    .line 286
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOpenedHomeFolderPage()I
    .locals 6

    .prologue
    .line 143
    iget-object v2, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    invoke-interface {v2}, Lcom/android/launcher3/proxy/FolderProxyCallbacks;->getOpenedFolderIconView()Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v0

    .line 145
    .local v0, "folderIconView":Lcom/android/launcher3/folder/view/FolderIconView;
    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderIconView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 147
    .local v1, "itemInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-object v2, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    iget-wide v4, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    invoke-interface {v2, v4, v5}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->getPageIndexForScreenId(J)I

    move-result v2

    .line 149
    .end local v1    # "itemInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final getPageNumberInOverview(I)I
    .locals 2
    .param p1, "pageNumber"    # I

    .prologue
    .line 357
    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v1}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->getPagedView()Lcom/android/launcher3/common/base/view/PagedView;

    move-result-object v0

    .line 359
    .local v0, "pv":Lcom/android/launcher3/common/base/view/PagedView;
    if-gez p1, :cond_0

    .line 360
    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/PagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {p0, v1, p1}, Lcom/android/launcher3/proxy/LauncherProxy;->getPageNumberInOverview(II)I

    move-result p1

    .line 363
    .end local p1    # "pageNumber":I
    :cond_0
    return p1
.end method

.method public getPageNumberInOverview(II)I
    .locals 6
    .param p1, "pageNumber"    # I
    .param p2, "pageDirection"    # I

    .prologue
    .line 368
    sget-object v3, Lcom/android/launcher3/proxy/LauncherProxy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPageNumberInOverview : pageNumber="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v3}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->neededToAdjustZeroPage()Z

    move-result v0

    .line 370
    .local v0, "hasZeropage":Z
    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v3}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->getPagedView()Lcom/android/launcher3/common/base/view/PagedView;

    move-result-object v2

    .line 371
    .local v2, "pv":Lcom/android/launcher3/common/base/view/PagedView;
    invoke-virtual {v2}, Lcom/android/launcher3/common/base/view/PagedView;->getCurrentPage()I

    move-result v1

    .line 373
    .local v1, "page":I
    packed-switch p2, :pswitch_data_0

    .line 399
    if-eqz v0, :cond_1

    move v1, p1

    .line 403
    :goto_0
    sget-object v3, Lcom/android/launcher3/proxy/LauncherProxy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPageNumberInOverview : result page="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    return v1

    .line 375
    :pswitch_0
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 376
    :goto_1
    goto :goto_0

    .line 375
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 379
    :pswitch_1
    invoke-virtual {v2}, Lcom/android/launcher3/common/base/view/PagedView;->getPageCount()I

    move-result v3

    add-int/lit8 v1, v3, -0x2

    .line 380
    goto :goto_0

    .line 383
    :pswitch_2
    add-int/lit8 v1, v1, -0x1

    .line 384
    goto :goto_0

    .line 387
    :pswitch_3
    add-int/lit8 v1, v1, 0x1

    .line 388
    goto :goto_0

    .line 391
    :pswitch_4
    invoke-virtual {v2}, Lcom/android/launcher3/common/base/view/PagedView;->getCurrentPage()I

    move-result v1

    .line 392
    goto :goto_0

    .line 395
    :pswitch_5
    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v3}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->getDefaultPage()I

    move-result v1

    .line 396
    goto :goto_0

    .line 399
    :cond_1
    add-int/lit8 v1, p1, -0x1

    goto :goto_0

    .line 373
    nop

    :pswitch_data_0
    .packed-switch -0x6
        :pswitch_5
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public getPageNumberToMove(Lcom/android/launcher3/proxy/BaseProxyCallbacks;I)I
    .locals 5
    .param p1, "cb"    # Lcom/android/launcher3/proxy/BaseProxyCallbacks;
    .param p2, "pageNumber"    # I

    .prologue
    .line 320
    sget-object v2, Lcom/android/launcher3/proxy/LauncherProxy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pageNumber="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    invoke-interface {p1}, Lcom/android/launcher3/proxy/BaseProxyCallbacks;->getPagedView()Lcom/android/launcher3/common/base/view/PagedView;

    move-result-object v1

    .line 323
    .local v1, "pv":Lcom/android/launcher3/common/base/view/PagedView;
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/PagedView;->getCurrentPage()I

    move-result v0

    .line 325
    .local v0, "page":I
    const/4 v2, -0x4

    if-ne v2, p2, :cond_2

    .line 326
    const/4 v0, 0x0

    .line 345
    :goto_0
    if-gez v0, :cond_0

    .line 346
    const/4 v0, 0x0

    .line 348
    :cond_0
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/PagedView;->getPageCount()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 349
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/PagedView;->getPageCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 352
    :cond_1
    sget-object v2, Lcom/android/launcher3/proxy/LauncherProxy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "result page="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    return v0

    .line 327
    :cond_2
    const/4 v2, -0x5

    if-ne v2, p2, :cond_3

    .line 328
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/PagedView;->getPageCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    .line 329
    :cond_3
    const/4 v2, -0x1

    if-ne v2, p2, :cond_4

    .line 330
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 331
    :cond_4
    const/4 v2, -0x2

    if-ne v2, p2, :cond_5

    .line 332
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 333
    :cond_5
    const/4 v2, -0x6

    if-ne v2, p2, :cond_7

    .line 334
    instance-of v2, p1, Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    if-eqz v2, :cond_6

    .line 335
    iget-object v2, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v2}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->getDefaultPage()I

    move-result v0

    goto :goto_0

    .line 337
    :cond_6
    const/4 v0, 0x0

    goto :goto_0

    .line 339
    :cond_7
    const/4 v2, -0x3

    if-ne v2, p2, :cond_8

    .line 340
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/PagedView;->getCurrentPage()I

    move-result v0

    goto :goto_0

    .line 342
    :cond_8
    add-int/lit8 v0, p2, -0x1

    goto :goto_0
.end method

.method public final getSearchResultListCount()I
    .locals 1

    .prologue
    .line 789
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsPickerProxyCallback:Lcom/android/launcher3/proxy/AppsPickerProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/AppsPickerProxyCallbacks;->getSearchResultListCount()I

    move-result v0

    return v0
.end method

.method public final getSearchResultSingleAppInfo()Lcom/android/launcher3/common/base/item/ItemInfo;
    .locals 1

    .prologue
    .line 793
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsPickerProxyCallback:Lcom/android/launcher3/proxy/AppsPickerProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/AppsPickerProxyCallbacks;->getSearchResultSingleAppInfo()Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v0

    return-object v0
.end method

.method public final getSecondTopStage()I
    .locals 1

    .prologue
    .line 1548
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;->getSecondTopStageMode()I

    move-result v0

    return v0
.end method

.method public getWidgetItemInfo(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/util/ArrayList;
    .locals 2
    .param p1, "appInfo"    # Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 408
    if-nez p1, :cond_1

    .line 419
    :cond_0
    :goto_0
    return-object v0

    .line 411
    :cond_1
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 413
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mWidgetProxyCallbacks:Lcom/android/launcher3/proxy/WidgetProxyCallbacks;

    .line 414
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    .line 413
    invoke-interface {v0, v1}, Lcom/android/launcher3/proxy/WidgetProxyCallbacks;->getWidgetItemsInfoByComponentName(Landroid/content/ComponentName;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 415
    :cond_2
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 416
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mWidgetProxyCallbacks:Lcom/android/launcher3/proxy/WidgetProxyCallbacks;

    .line 417
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getName()Ljava/lang/String;

    move-result-object v1

    .line 416
    invoke-interface {v0, v1}, Lcom/android/launcher3/proxy/WidgetProxyCallbacks;->getWidgetItemsInfoByTitle(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public getWidgetView(Landroid/content/ComponentName;)Landroid/view/View;
    .locals 1
    .param p1, "cn"    # Landroid/content/ComponentName;

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v0, p1}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->getWidgetView(Landroid/content/ComponentName;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final goHome()I
    .locals 1

    .prologue
    .line 1401
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    if-nez v0, :cond_0

    .line 1402
    const/4 v0, -0x1

    .line 1406
    :goto_0
    return v0

    .line 1404
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;->goHome()V

    .line 1405
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->exitSubState()V

    .line 1406
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasAppsEmptySpace(II)Z
    .locals 2
    .param p1, "pageNumber"    # I
    .param p2, "pageDirection"    # I

    .prologue
    .line 497
    move v0, p1

    .line 498
    .local v0, "p":I
    if-gtz v0, :cond_0

    .line 499
    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    invoke-virtual {p0, v1, p2}, Lcom/android/launcher3/proxy/LauncherProxy;->getPageNumberToMove(Lcom/android/launcher3/proxy/BaseProxyCallbacks;I)I

    move-result v0

    .line 501
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    invoke-interface {v1, v0}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->hasPageEmptySpace(I)Z

    move-result v1

    return v1
.end method

.method public final hasFolderInApps(Ljava/lang/String;)Z
    .locals 3
    .param p1, "folderName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 961
    if-nez p1, :cond_1

    .line 966
    :cond_0
    :goto_0
    return v1

    .line 964
    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    .line 965
    invoke-interface {v2, p1}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->getFolderItemViewByTitle(Ljava/lang/String;)Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v0

    .line 966
    .local v0, "iv":Lcom/android/launcher3/folder/view/FolderIconView;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public final hasFolderInHome(Ljava/lang/String;)Z
    .locals 3
    .param p1, "folderName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 524
    if-nez p1, :cond_1

    .line 529
    :cond_0
    :goto_0
    return v1

    .line 527
    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    .line 528
    invoke-interface {v2, p1}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->getFolderItemViewByTitle(Ljava/lang/String;)Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v0

    .line 529
    .local v0, "iv":Lcom/android/launcher3/folder/view/FolderIconView;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public final hasHomeEmptySpace(IIII)Z
    .locals 2
    .param p1, "pageNumber"    # I
    .param p2, "pageDirection"    # I
    .param p3, "spanX"    # I
    .param p4, "spanY"    # I

    .prologue
    .line 480
    move v0, p1

    .line 481
    .local v0, "p":I
    if-gtz v0, :cond_0

    .line 482
    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-virtual {p0, v1, p2}, Lcom/android/launcher3/proxy/LauncherProxy;->getPageNumberToMove(Lcom/android/launcher3/proxy/BaseProxyCallbacks;I)I

    move-result v0

    .line 484
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v1, v0, p3, p4}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->hasPageEmptySpace(III)Z

    move-result v1

    return v1
.end method

.method public final hasItemInApps(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Z
    .locals 3
    .param p1, "appInfo"    # Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;

    .prologue
    const/4 v1, 0x0

    .line 953
    if-nez p1, :cond_1

    .line 957
    :cond_0
    :goto_0
    return v1

    .line 956
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/launcher3/proxy/LauncherProxy;->getAppsItemInfoByStateAppInfo(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/util/List;

    move-result-object v0

    .line 957
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public final hasItemInFolder(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Z
    .locals 3
    .param p1, "appInfo"    # Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;

    .prologue
    const/4 v1, 0x0

    .line 533
    if-nez p1, :cond_1

    .line 537
    :cond_0
    :goto_0
    return v1

    .line 536
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/launcher3/proxy/LauncherProxy;->getFolderItemInfoByStateAppInfo(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/util/ArrayList;

    move-result-object v0

    .line 537
    .local v0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public final hasItemInHome(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Z
    .locals 3
    .param p1, "appInfo"    # Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;

    .prologue
    const/4 v1, 0x0

    .line 515
    if-nez p1, :cond_1

    .line 520
    :cond_0
    :goto_0
    return v1

    .line 519
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/launcher3/proxy/LauncherProxy;->getHomeItemInfoByStateAppInfo(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/util/List;

    move-result-object v0

    .line 520
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public final hasPageDeleteButton(I)Z
    .locals 1
    .param p1, "page"    # I

    .prologue
    .line 466
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v0, p1}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->hasPageDeleteButton(I)Z

    move-result v0

    return v0
.end method

.method public final hideApps(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)I
    .locals 1
    .param p1, "appInfo"    # Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;

    .prologue
    .line 699
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/proxy/LauncherProxy;->hideOrUnHideApps(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;Z)I

    move-result v0

    return v0
.end method

.method public final isAlreadySleepMode(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Z
    .locals 3
    .param p1, "appInfo"    # Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;

    .prologue
    const/4 v1, 0x0

    .line 1309
    iget-object v2, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    .line 1319
    :cond_0
    :goto_0
    return v1

    .line 1312
    :cond_1
    const/4 v0, 0x0

    .line 1313
    .local v0, "packageName":Ljava/lang/String;
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getItemInfo()Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1314
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getItemInfo()Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1316
    :cond_2
    if-eqz v0, :cond_0

    .line 1317
    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    invoke-interface {v1, v0}, Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;->isAlreadySleepMode(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public final isAppsValidPage(I)Z
    .locals 3
    .param p1, "pageNumber"    # I

    .prologue
    .line 970
    iget-object v2, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    invoke-interface {v2}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->getPagedView()Lcom/android/launcher3/common/base/view/PagedView;

    move-result-object v1

    .line 971
    .local v1, "pv":Lcom/android/launcher3/common/base/view/PagedView;
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/PagedView;->getPageCount()I

    move-result v0

    .line 973
    .local v0, "pageCount":I
    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final isAppsValidPage(II)Z
    .locals 2
    .param p1, "pageNumber"    # I
    .param p2, "pageDirection"    # I

    .prologue
    .line 977
    move v0, p1

    .line 978
    .local v0, "p":I
    if-gtz v0, :cond_0

    .line 979
    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    invoke-virtual {p0, v1, p2}, Lcom/android/launcher3/proxy/LauncherProxy;->getPageNumberToMove(Lcom/android/launcher3/proxy/BaseProxyCallbacks;I)I

    move-result v0

    .line 982
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/launcher3/proxy/LauncherProxy;->isAppsValidPage(I)Z

    move-result v1

    return v1
.end method

.method public final isAppsViewTypeAlphabetic()Z
    .locals 2

    .prologue
    .line 986
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    if-nez v0, :cond_0

    .line 987
    const/4 v0, 0x0

    .line 990
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->getViewType()Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/allapps/controller/AppsController$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/controller/AppsController$ViewType;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final isAvailableSleepMode(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Z
    .locals 3
    .param p1, "appInfo"    # Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;

    .prologue
    const/4 v1, 0x0

    .line 1295
    iget-object v2, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    .line 1305
    :cond_0
    :goto_0
    return v1

    .line 1298
    :cond_1
    const/4 v0, 0x0

    .line 1299
    .local v0, "packageName":Ljava/lang/String;
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getItemInfo()Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1300
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getItemInfo()Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1302
    :cond_2
    if-eqz v0, :cond_0

    .line 1303
    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    invoke-interface {v1, v0}, Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;->isAvailableSleepMode(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public final isDisableApp(Lcom/android/launcher3/common/base/item/ItemInfo;)Z
    .locals 3
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 1521
    const/4 v0, 0x1

    .line 1522
    .local v0, "result":Z
    iget-object v1, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    .line 1523
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1524
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    .line 1525
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1524
    invoke-static {v1, v2}, Lcom/android/launcher3/Utilities;->canDisable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1526
    const/4 v0, 0x0

    .line 1530
    :cond_0
    return v0
.end method

.method public final isEmptyPage(I)Z
    .locals 1
    .param p1, "page"    # I

    .prologue
    .line 470
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v0, p1}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->isEmptyPage(I)Z

    move-result v0

    return v0
.end method

.method public final isEnableAppsButton()Z
    .locals 1

    .prologue
    .line 1287
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    if-nez v0, :cond_0

    .line 1288
    const/4 v0, 0x0

    .line 1291
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;->isEnableAppsButton()Z

    move-result v0

    goto :goto_0
.end method

.method public final isFolderValidPage(I)Z
    .locals 4
    .param p1, "pageNumber"    # I

    .prologue
    const/4 v2, 0x0

    .line 505
    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    invoke-interface {v3}, Lcom/android/launcher3/proxy/FolderProxyCallbacks;->getPagedView()Lcom/android/launcher3/common/base/view/PagedView;

    move-result-object v1

    .line 506
    .local v1, "pv":Lcom/android/launcher3/common/base/view/PagedView;
    if-nez v1, :cond_1

    .line 511
    :cond_0
    :goto_0
    return v2

    .line 509
    :cond_1
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/PagedView;->getPageCount()I

    move-result v0

    .line 511
    .local v0, "pageCount":I
    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public final isHomeOnlyMode()Z
    .locals 1

    .prologue
    .line 1279
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    if-nez v0, :cond_0

    .line 1280
    const/4 v0, 0x0

    .line 1283
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;->isHomeOnlyMode()Z

    move-result v0

    goto :goto_0
.end method

.method public final isHomeValidPage(I)Z
    .locals 3
    .param p1, "pageNumber"    # I

    .prologue
    .line 438
    iget-object v2, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v2}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->getPagedView()Lcom/android/launcher3/common/base/view/PagedView;

    move-result-object v1

    .line 439
    .local v1, "pv":Lcom/android/launcher3/common/base/view/PagedView;
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/PagedView;->getPageCount()I

    move-result v0

    .line 441
    .local v0, "pageCount":I
    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final isHomeValidPageInOverview(IZ)Z
    .locals 6
    .param p1, "pageNumber"    # I
    .param p2, "exceptZeropage"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 489
    iget-object v5, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v5}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->getPagedView()Lcom/android/launcher3/common/base/view/PagedView;

    move-result-object v2

    .line 490
    .local v2, "pv":Lcom/android/launcher3/common/base/view/PagedView;
    invoke-virtual {v2}, Lcom/android/launcher3/common/base/view/PagedView;->getPageCount()I

    move-result v1

    .line 492
    .local v1, "pageCount":I
    iget-object v5, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v5}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->neededToAdjustZeroPage()Z

    move-result v5

    if-eqz v5, :cond_0

    if-eqz p2, :cond_0

    move v0, v3

    .line 493
    .local v0, "firstPage":I
    :goto_0
    if-lt p1, v0, :cond_1

    add-int/lit8 v5, v1, -0x1

    if-ge p1, v5, :cond_1

    :goto_1
    return v3

    .end local v0    # "firstPage":I
    :cond_0
    move v0, v4

    .line 492
    goto :goto_0

    .restart local v0    # "firstPage":I
    :cond_1
    move v3, v4

    .line 493
    goto :goto_1
.end method

.method public final isSecureFolderSetup()Z
    .locals 1

    .prologue
    .line 1337
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;->isSecureFolderSetup()Z

    move-result v0

    return v0
.end method

.method public final isUninstallApp(Lcom/android/launcher3/common/base/item/ItemInfo;)Z
    .locals 3
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 1508
    const/4 v0, 0x1

    .line 1509
    .local v0, "result":Z
    iget-object v1, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    .line 1510
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1511
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    .line 1512
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1511
    invoke-static {v1, v2}, Lcom/android/launcher3/Utilities;->canUninstall(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1513
    const/4 v0, 0x0

    .line 1517
    :cond_0
    return v0
.end method

.method public final lockFolder(Lcom/android/launcher3/common/base/item/ItemInfo;)I
    .locals 3
    .param p1, "folderInfo"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    const/4 v2, -0x1

    .line 1678
    instance-of v1, p1, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v1, :cond_1

    .line 1679
    invoke-static {}, Lcom/android/launcher3/folder/folderlock/FolderLock;->getInstance()Lcom/android/launcher3/folder/folderlock/FolderLock;

    move-result-object v0

    .local v0, "folderLock":Lcom/android/launcher3/folder/folderlock/FolderLock;
    move-object v1, p1

    .line 1680
    check-cast v1, Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/folderlock/FolderLock;->isLockedFolder(Lcom/android/launcher3/folder/FolderInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    .line 1687
    .end local v0    # "folderLock":Lcom/android/launcher3/folder/folderlock/FolderLock;
    :goto_0
    return v1

    .line 1683
    .restart local v0    # "folderLock":Lcom/android/launcher3/folder/folderlock/FolderLock;
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/folderlock/FolderLock;->setBackupInfo(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 1684
    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/folderlock/FolderLock;->startLockVerifyActivity(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 1685
    const/4 v1, 0x0

    goto :goto_0

    .end local v0    # "folderLock":Lcom/android/launcher3/folder/folderlock/FolderLock;
    :cond_1
    move v1, v2

    .line 1687
    goto :goto_0
.end method

.method public final lockSingleApp(Lcom/android/launcher3/common/base/item/ItemInfo;)I
    .locals 2
    .param p1, "itemInfo"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 1706
    invoke-static {}, Lcom/android/launcher3/folder/folderlock/FolderLock;->getInstance()Lcom/android/launcher3/folder/folderlock/FolderLock;

    move-result-object v0

    .line 1707
    .local v0, "folderLock":Lcom/android/launcher3/folder/folderlock/FolderLock;
    instance-of v1, p1, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/folderlock/FolderLock;->isLockedApp(Lcom/android/launcher3/common/base/item/IconInfo;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1708
    :cond_0
    const/4 v1, -0x1

    .line 1712
    :goto_0
    return v1

    .line 1710
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/folderlock/FolderLock;->setBackupInfo(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 1711
    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/folderlock/FolderLock;->startLockVerifyActivity(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 1712
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public mapDirectionToPage(IIZ)I
    .locals 4
    .param p1, "itemPage"    # I
    .param p2, "direction"    # I
    .param p3, "isHome"    # Z

    .prologue
    .line 290
    const/4 v2, -0x1

    .line 291
    .local v2, "toPage":I
    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    .line 292
    .local v0, "cb":Lcom/android/launcher3/proxy/BaseProxyCallbacks;
    :goto_0
    invoke-interface {v0}, Lcom/android/launcher3/proxy/BaseProxyCallbacks;->getPagedView()Lcom/android/launcher3/common/base/view/PagedView;

    move-result-object v1

    .line 293
    .local v1, "pv":Lcom/android/launcher3/common/base/view/PagedView;
    packed-switch p2, :pswitch_data_0

    .line 315
    :cond_0
    :goto_1
    return v2

    .line 291
    .end local v0    # "cb":Lcom/android/launcher3/proxy/BaseProxyCallbacks;
    .end local v1    # "pv":Lcom/android/launcher3/common/base/view/PagedView;
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    goto :goto_0

    .line 295
    .restart local v0    # "cb":Lcom/android/launcher3/proxy/BaseProxyCallbacks;
    .restart local v1    # "pv":Lcom/android/launcher3/common/base/view/PagedView;
    :pswitch_0
    const/4 v2, 0x0

    .line 296
    goto :goto_1

    .line 298
    :pswitch_1
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/PagedView;->getPageCount()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .line 299
    goto :goto_1

    .line 301
    :pswitch_2
    add-int/lit8 v2, p1, -0x1

    .line 302
    goto :goto_1

    .line 304
    :pswitch_3
    add-int/lit8 v2, p1, 0x1

    .line 305
    goto :goto_1

    .line 307
    :pswitch_4
    if-eqz p3, :cond_0

    .line 308
    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v3}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->getDefaultPage()I

    move-result v2

    goto :goto_1

    .line 312
    :pswitch_5
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/PagedView;->getCurrentPage()I

    move-result v2

    goto :goto_1

    .line 293
    nop

    :pswitch_data_0
    .packed-switch -0x6
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public final moveAppsFolderItemToPage(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;III)I
    .locals 4
    .param p1, "appInfo"    # Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;
    .param p2, "pageNumber"    # I
    .param p3, "pageDirection"    # I
    .param p4, "detailDirection"    # I

    .prologue
    const/4 v1, -0x3

    .line 1060
    if-nez p1, :cond_1

    .line 1080
    :cond_0
    :goto_0
    return v1

    .line 1064
    :cond_1
    if-gez p2, :cond_2

    .line 1065
    iget-object v2, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    invoke-virtual {p0, v2, p3}, Lcom/android/launcher3/proxy/LauncherProxy;->getPageNumberToMove(Lcom/android/launcher3/proxy/BaseProxyCallbacks;I)I

    move-result p2

    .line 1067
    :cond_2
    const/4 v0, 0x0

    .line 1068
    .local v0, "iv":Landroid/view/View;
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 1069
    iget-object v2, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    .line 1070
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->getItemViewByComponentName(Landroid/content/ComponentName;)Landroid/view/View;

    move-result-object v0

    .line 1075
    :cond_3
    :goto_1
    if-eqz v0, :cond_0

    .line 1079
    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    check-cast v0, Lcom/android/launcher3/common/view/IconView;

    .end local v0    # "iv":Landroid/view/View;
    invoke-interface {v1, v0, p2}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->moveItem(Lcom/android/launcher3/common/view/IconView;I)V

    .line 1080
    const/4 v1, 0x0

    goto :goto_0

    .line 1071
    .restart local v0    # "iv":Landroid/view/View;
    :cond_4
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1072
    iget-object v2, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->getFolderItemViewByTitle(Ljava/lang/String;)Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v0

    goto :goto_1
.end method

.method public final moveAppsFolderToFollowedEmptyPage(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;II)I
    .locals 5
    .param p1, "appInfo"    # Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;
    .param p2, "pageNumber"    # I
    .param p3, "pageDirection"    # I

    .prologue
    const/4 v2, -0x3

    .line 1084
    move v1, p2

    .line 1086
    .local v1, "targetPage":I
    if-nez p1, :cond_1

    .line 1102
    :cond_0
    :goto_0
    return v2

    .line 1090
    :cond_1
    if-gez p2, :cond_2

    .line 1091
    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    invoke-virtual {p0, v3, p3}, Lcom/android/launcher3/proxy/LauncherProxy;->getPageNumberToMove(Lcom/android/launcher3/proxy/BaseProxyCallbacks;I)I

    move-result v1

    .line 1094
    :cond_2
    const/4 v0, 0x0

    .line 1095
    .local v0, "iv":Landroid/view/View;
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1096
    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->getFolderItemViewByTitle(Ljava/lang/String;)Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v0

    .line 1098
    :cond_3
    if-eqz v0, :cond_0

    .line 1102
    iget-object v2, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    check-cast v0, Lcom/android/launcher3/common/view/IconView;

    .end local v0    # "iv":Landroid/view/View;
    invoke-interface {v2, v0, v1}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->moveItemToFollowedEmptyPage(Lcom/android/launcher3/common/view/IconView;I)I

    move-result v2

    goto :goto_0
.end method

.method public final moveAppsItemToFollowedEmptyPage(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;II)I
    .locals 6
    .param p1, "appInfo"    # Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;
    .param p2, "pageNumber"    # I
    .param p3, "pageDirection"    # I

    .prologue
    const/4 v3, -0x3

    .line 1030
    move v2, p2

    .line 1032
    .local v2, "targetPage":I
    if-nez p1, :cond_1

    .line 1055
    :cond_0
    :goto_0
    return v3

    .line 1036
    :cond_1
    if-gez p2, :cond_2

    .line 1037
    iget-object v4, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    invoke-virtual {p0, v4, p3}, Lcom/android/launcher3/proxy/LauncherProxy;->getPageNumberToMove(Lcom/android/launcher3/proxy/BaseProxyCallbacks;I)I

    move-result v2

    .line 1040
    :cond_2
    const/4 v1, 0x0

    .line 1041
    .local v1, "iv":Landroid/view/View;
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 1042
    iget-object v4, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    .line 1043
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->getItemViewByComponentName(Landroid/content/ComponentName;)Landroid/view/View;

    move-result-object v1

    .line 1047
    :cond_3
    :goto_1
    if-eqz v1, :cond_0

    .line 1050
    invoke-virtual {p0}, Lcom/android/launcher3/proxy/LauncherProxy;->getAppsPageCount()I

    move-result v3

    if-lt v2, v3, :cond_4

    .line 1051
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 1052
    .local v0, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-wide v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    long-to-int v3, v4

    add-int/lit8 v2, v3, 0x1

    .line 1055
    .end local v0    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_4
    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    check-cast v1, Lcom/android/launcher3/common/view/IconView;

    .end local v1    # "iv":Landroid/view/View;
    invoke-interface {v3, v1, v2}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->moveItemToFollowedEmptyPage(Lcom/android/launcher3/common/view/IconView;I)I

    move-result v3

    goto :goto_0

    .line 1044
    .restart local v1    # "iv":Landroid/view/View;
    :cond_5
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 1045
    iget-object v4, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->getItemViewByTitle(Ljava/lang/String;)Lcom/android/launcher3/common/view/IconView;

    move-result-object v1

    goto :goto_1
.end method

.method public final moveAppsItemToPage(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;III)I
    .locals 4
    .param p1, "appInfo"    # Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;
    .param p2, "pageNumber"    # I
    .param p3, "pageDirection"    # I
    .param p4, "detailDirection"    # I

    .prologue
    const/4 v1, -0x3

    .line 1006
    if-nez p1, :cond_1

    .line 1026
    :cond_0
    :goto_0
    return v1

    .line 1010
    :cond_1
    if-gez p2, :cond_2

    .line 1011
    iget-object v2, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    invoke-virtual {p0, v2, p3}, Lcom/android/launcher3/proxy/LauncherProxy;->getPageNumberToMove(Lcom/android/launcher3/proxy/BaseProxyCallbacks;I)I

    move-result p2

    .line 1013
    :cond_2
    const/4 v0, 0x0

    .line 1014
    .local v0, "iv":Landroid/view/View;
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 1015
    iget-object v2, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    .line 1016
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->getItemViewByComponentName(Landroid/content/ComponentName;)Landroid/view/View;

    move-result-object v0

    .line 1021
    :cond_3
    :goto_1
    if-eqz v0, :cond_0

    .line 1025
    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    check-cast v0, Lcom/android/launcher3/common/view/IconView;

    .end local v0    # "iv":Landroid/view/View;
    invoke-interface {v1, v0, p2}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->moveItem(Lcom/android/launcher3/common/view/IconView;I)V

    .line 1026
    const/4 v1, 0x0

    goto :goto_0

    .line 1017
    .restart local v0    # "iv":Landroid/view/View;
    :cond_4
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1018
    iget-object v2, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->getItemViewByTitle(Ljava/lang/String;)Lcom/android/launcher3/common/view/IconView;

    move-result-object v0

    goto :goto_1
.end method

.method public final moveAppsPage(II)I
    .locals 2
    .param p1, "pageNumber"    # I
    .param p2, "pageDirection"    # I

    .prologue
    .line 1195
    move v0, p1

    .line 1196
    .local v0, "p":I
    if-gtz v0, :cond_0

    .line 1197
    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    invoke-virtual {p0, v1, p2}, Lcom/android/launcher3/proxy/LauncherProxy;->getPageNumberToMove(Lcom/android/launcher3/proxy/BaseProxyCallbacks;I)I

    move-result v0

    .line 1200
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/proxy/LauncherProxy;->isAppsValidPage(II)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1201
    const/4 v1, -0x3

    .line 1204
    :goto_0
    return v1

    .line 1203
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    invoke-interface {v1, v0}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->movePage(I)V

    .line 1204
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final moveFolderPage(II)I
    .locals 3
    .param p1, "pageNumber"    # I
    .param p2, "pageDirection"    # I

    .prologue
    .line 262
    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    invoke-interface {v1}, Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;->getTopStageMode()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    if-nez v1, :cond_1

    .line 264
    :cond_0
    const/4 v1, -0x1

    .line 275
    :goto_0
    return v1

    .line 266
    :cond_1
    move v0, p1

    .line 267
    .local v0, "p":I
    if-gtz v0, :cond_2

    .line 268
    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    invoke-virtual {p0, v1, p2}, Lcom/android/launcher3/proxy/LauncherProxy;->getPageNumberToMove(Lcom/android/launcher3/proxy/BaseProxyCallbacks;I)I

    move-result v0

    .line 271
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/launcher3/proxy/LauncherProxy;->isFolderValidPage(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 272
    const/4 v1, -0x3

    goto :goto_0

    .line 274
    :cond_3
    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    invoke-interface {v1, v0}, Lcom/android/launcher3/proxy/FolderProxyCallbacks;->movePage(I)V

    .line 275
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final moveHomeItemToPage(Landroid/view/View;III)I
    .locals 1
    .param p1, "iv"    # Landroid/view/View;
    .param p2, "pageNumber"    # I
    .param p3, "pageDirection"    # I
    .param p4, "detailDirection"    # I

    .prologue
    .line 584
    if-gtz p2, :cond_0

    .line 585
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-virtual {p0, v0, p3}, Lcom/android/launcher3/proxy/LauncherProxy;->getPageNumberToMove(Lcom/android/launcher3/proxy/BaseProxyCallbacks;I)I

    move-result p2

    .line 588
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v0, p1, p2}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->moveItem(Landroid/view/View;I)I

    move-result v0

    return v0
.end method

.method public final moveHomePage(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)I
    .locals 4
    .param p1, "appInfo"    # Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;

    .prologue
    const/4 v2, 0x0

    .line 565
    invoke-virtual {p0, p1}, Lcom/android/launcher3/proxy/LauncherProxy;->getHomeItemInfoByStateAppInfo(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/util/List;

    move-result-object v0

    .line 566
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 567
    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-interface {v3, v1}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->movePageToItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    move v1, v2

    .line 570
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x2

    goto :goto_0
.end method

.method public final moveHomePageByWidgetItem(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)I
    .locals 4
    .param p1, "appInfo"    # Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;

    .prologue
    const/4 v2, 0x0

    .line 574
    invoke-virtual {p0, p1}, Lcom/android/launcher3/proxy/LauncherProxy;->getHomeWidgetItemInfo(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/util/ArrayList;

    move-result-object v0

    .line 575
    .local v0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 576
    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-interface {v3, v1}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->movePageToItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    move v1, v2

    .line 579
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x2

    goto :goto_0
.end method

.method public final moveItemInFolderToAppsPage(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;II)I
    .locals 4
    .param p1, "appInfo"    # Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;
    .param p2, "pageNumber"    # I
    .param p3, "targetPosition"    # I

    .prologue
    const/4 v1, -0x3

    .line 1117
    iget-object v2, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    if-nez v2, :cond_1

    .line 1118
    const/4 v1, -0x1

    .line 1142
    :cond_0
    :goto_0
    return v1

    .line 1120
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/proxy/LauncherProxy;->hasItemInFolder(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1123
    if-lez p2, :cond_2

    .line 1124
    invoke-virtual {p0, p2}, Lcom/android/launcher3/proxy/LauncherProxy;->isAppsValidPage(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1129
    :cond_2
    const/4 v0, 0x0

    .line 1130
    .local v0, "iv":Landroid/view/View;
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 1131
    iget-object v2, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    .line 1132
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/launcher3/proxy/FolderProxyCallbacks;->getItemViewByComponentName(Landroid/content/ComponentName;)Landroid/view/View;

    move-result-object v0

    .line 1137
    :cond_3
    :goto_1
    if-eqz v0, :cond_0

    .line 1141
    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    check-cast v0, Lcom/android/launcher3/common/view/IconView;

    .end local v0    # "iv":Landroid/view/View;
    invoke-interface {v1, v0, p2, p3}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->moveItemInFolder(Lcom/android/launcher3/common/view/IconView;II)V

    .line 1142
    const/4 v1, 0x0

    goto :goto_0

    .line 1133
    .restart local v0    # "iv":Landroid/view/View;
    :cond_4
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1134
    iget-object v2, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/launcher3/proxy/FolderProxyCallbacks;->getItemViewByTitle(Ljava/lang/String;)Lcom/android/launcher3/common/view/IconView;

    move-result-object v0

    goto :goto_1
.end method

.method public final moveToHomePage(I)I
    .locals 1
    .param p1, "pageNumber"    # I

    .prologue
    .line 560
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v0, p1}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->movePage(I)V

    .line 561
    const/4 v0, 0x0

    return v0
.end method

.method public final moveToHomePage(II)I
    .locals 2
    .param p1, "pageNumber"    # I
    .param p2, "pageDirection"    # I

    .prologue
    .line 541
    move v0, p1

    .line 542
    .local v0, "p":I
    if-gtz v0, :cond_0

    .line 543
    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-virtual {p0, v1, p2}, Lcom/android/launcher3/proxy/LauncherProxy;->getPageNumberToMove(Lcom/android/launcher3/proxy/BaseProxyCallbacks;I)I

    move-result v0

    .line 546
    :cond_0
    const/16 v1, -0x3e7

    if-ne p2, v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    .line 547
    invoke-interface {v1}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->neededToAdjustZeroPage()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 548
    add-int/lit8 v0, v0, 0x1

    .line 551
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/launcher3/proxy/LauncherProxy;->isHomeValidPage(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 552
    const/4 v1, -0x3

    .line 556
    :goto_0
    return v1

    .line 555
    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v1, v0}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->movePage(I)V

    .line 556
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onParamFillingReceived(Ljava/lang/String;Lcom/samsung/android/sdk/bixby/data/ParamFilling;)Z
    .locals 1
    .param p1, "topViewState"    # Ljava/lang/String;
    .param p2, "pf"    # Lcom/samsung/android/sdk/bixby/data/ParamFilling;

    .prologue
    .line 1567
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    if-eqz v0, :cond_0

    const-string v0, "AppsFolderView"

    .line 1568
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "HomeFolderView"

    .line 1569
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1570
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    invoke-interface {v0, p2}, Lcom/android/launcher3/proxy/FolderProxyCallbacks;->onParamFillingReceived(Lcom/samsung/android/sdk/bixby/data/ParamFilling;)Z

    .line 1581
    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 1571
    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsPickerProxyCallback:Lcom/android/launcher3/proxy/AppsPickerProxyCallbacks;

    if-eqz v0, :cond_4

    const-string v0, "AppsFolderAddIconSearchView"

    .line 1572
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    const-string v0, "HomeFolderAddIconSearchView"

    .line 1573
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "HomeSettingsHideAppsView"

    .line 1574
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1575
    :cond_5
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsPickerProxyCallback:Lcom/android/launcher3/proxy/AppsPickerProxyCallbacks;

    invoke-interface {v0, p2}, Lcom/android/launcher3/proxy/AppsPickerProxyCallbacks;->onParamFillingReceived(Lcom/samsung/android/sdk/bixby/data/ParamFilling;)Z

    goto :goto_0

    .line 1576
    :cond_6
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mWidgetProxyCallbacks:Lcom/android/launcher3/proxy/WidgetProxyCallbacks;

    if-eqz v0, :cond_2

    const-string v0, "HomePageWidgetSearchView"

    .line 1577
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1578
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mWidgetProxyCallbacks:Lcom/android/launcher3/proxy/WidgetProxyCallbacks;

    invoke-interface {v0, p2}, Lcom/android/launcher3/proxy/WidgetProxyCallbacks;->onParamFillingReceived(Lcom/samsung/android/sdk/bixby/data/ParamFilling;)Z

    goto :goto_0
.end method

.method public final openAppsFolder(Ljava/lang/String;)I
    .locals 2
    .param p1, "folderName"    # Ljava/lang/String;

    .prologue
    .line 994
    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    .line 995
    invoke-interface {v1, p1}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->getFolderItemViewByTitle(Ljava/lang/String;)Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v0

    .line 996
    .local v0, "iv":Lcom/android/launcher3/folder/view/FolderIconView;
    if-eqz p1, :cond_0

    if-nez v0, :cond_1

    .line 997
    :cond_0
    const/4 v1, -0x3

    .line 1001
    :goto_0
    return v1

    .line 1000
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    invoke-interface {v1, v0}, Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;->openFolder(Lcom/android/launcher3/folder/view/FolderIconView;)V

    .line 1001
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final openAppsTray()I
    .locals 1

    .prologue
    .line 1167
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    if-nez v0, :cond_0

    .line 1168
    const/4 v0, -0x1

    .line 1172
    :goto_0
    return v0

    .line 1171
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;->openAppsTray()V

    .line 1172
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final openFolderAddItemView()I
    .locals 3

    .prologue
    .line 1410
    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    invoke-interface {v1}, Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;->getTopStageMode()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    if-nez v1, :cond_1

    .line 1412
    :cond_0
    const/4 v1, -0x1

    .line 1421
    :goto_0
    return v1

    .line 1415
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    invoke-interface {v1}, Lcom/android/launcher3/proxy/FolderProxyCallbacks;->getOpenedFolderIconView()Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v0

    .line 1416
    .local v0, "iv":Lcom/android/launcher3/folder/view/FolderIconView;
    if-nez v0, :cond_2

    .line 1417
    const/4 v1, -0x2

    goto :goto_0

    .line 1420
    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    invoke-interface {v1, v0}, Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;->openFolderAddIconView(Lcom/android/launcher3/folder/view/FolderIconView;)V

    .line 1421
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final openFolderColorPanel()I
    .locals 2

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;->getTopStageMode()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    if-nez v0, :cond_1

    .line 253
    :cond_0
    const/4 v0, -0x1

    .line 257
    :goto_0
    return v0

    .line 256
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/FolderProxyCallbacks;->openBackgroundColorView()V

    .line 257
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final openHomeFolder(Ljava/lang/String;)I
    .locals 3
    .param p1, "folderName"    # Ljava/lang/String;

    .prologue
    const/4 v1, -0x3

    .line 228
    if-nez p1, :cond_1

    .line 238
    :cond_0
    :goto_0
    return v1

    .line 231
    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    .line 232
    invoke-interface {v2, p1}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->getFolderItemViewByTitle(Ljava/lang/String;)Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v0

    .line 233
    .local v0, "iv":Lcom/android/launcher3/folder/view/FolderIconView;
    if-eqz v0, :cond_0

    .line 237
    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    invoke-interface {v1, v0}, Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;->openFolder(Lcom/android/launcher3/folder/view/FolderIconView;)V

    .line 238
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final openThemeApp()I
    .locals 1

    .prologue
    .line 1504
    const/4 v0, 0x0

    return v0
.end method

.method public final putAppToSleep(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)I
    .locals 4
    .param p1, "appInfo"    # Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;

    .prologue
    const/4 v2, -0x1

    .line 1323
    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    if-nez v3, :cond_1

    .line 1333
    :cond_0
    :goto_0
    return v2

    .line 1326
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/launcher3/proxy/LauncherProxy;->getAppsItemInfoByStateAppInfo(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/util/List;

    move-result-object v1

    .line 1327
    .local v1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1330
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 1331
    .local v0, "i":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    invoke-interface {v3, v0}, Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;->putToSleepMode(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto :goto_1

    .line 1333
    .end local v0    # "i":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final putToSleepMode(Lcom/android/launcher3/common/base/item/ItemInfo;)I
    .locals 1
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 1539
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    invoke-interface {v0, p1}, Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;->uninstallOrDisableApp(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 1540
    const/4 v0, 0x0

    return v0
.end method

.method public final removeFolderItem(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)I
    .locals 5
    .param p1, "appInfo"    # Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x3

    .line 1482
    if-nez p1, :cond_1

    .line 1499
    :cond_0
    :goto_0
    return v1

    .line 1485
    :cond_1
    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    invoke-interface {v3}, Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;->getTopStageMode()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    if-nez v3, :cond_3

    .line 1487
    :cond_2
    const/4 v1, -0x1

    goto :goto_0

    .line 1489
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/launcher3/proxy/LauncherProxy;->hasItemInFolder(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1493
    invoke-virtual {p0, p1}, Lcom/android/launcher3/proxy/LauncherProxy;->getFolderItemInfoByStateAppInfo(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1494
    .local v0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1496
    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-interface {v3, v1}, Lcom/android/launcher3/proxy/FolderProxyCallbacks;->removeFolderItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    move v1, v2

    .line 1497
    goto :goto_0
.end method

.method public final removeHomeCurrentPage()I
    .locals 1

    .prologue
    .line 826
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->removeCurrentPage()V

    .line 827
    const/4 v0, 0x0

    return v0
.end method

.method public final removeHomeShortcut(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)I
    .locals 4
    .param p1, "appInfo"    # Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;

    .prologue
    .line 592
    if-nez p1, :cond_0

    .line 593
    const/4 v2, -0x3

    .line 604
    :goto_0
    return v2

    .line 596
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/launcher3/proxy/LauncherProxy;->getHomeItemInfoByStateAppInfo(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/util/List;

    move-result-object v1

    .line 597
    .local v1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    if-nez v1, :cond_1

    .line 598
    const/4 v2, -0x2

    goto :goto_0

    .line 600
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 601
    .local v0, "i":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v3, v0}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->removeShortcut(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto :goto_1

    .line 604
    .end local v0    # "i":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final removeHomeWidget(Lcom/android/launcher3/common/base/item/ItemInfo;)I
    .locals 6
    .param p1, "itemInfo"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 608
    instance-of v4, p1, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    if-nez v4, :cond_0

    .line 609
    const/4 v4, -0x3

    .line 624
    :goto_0
    return v4

    :cond_0
    move-object v2, p1

    .line 612
    check-cast v2, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    .line 613
    .local v2, "widget":Lcom/android/launcher3/home/LauncherAppWidgetInfo;
    iget-object v0, v2, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    .line 614
    .local v0, "cn":Landroid/content/ComponentName;
    if-nez v0, :cond_1

    .line 615
    const/4 v4, -0x2

    goto :goto_0

    .line 618
    :cond_1
    iget-object v4, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    .line 619
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->getWidgetItemsInfoByPackageName(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 620
    .local v3, "widgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 621
    .local v1, "w":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-object v5, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v5, v1}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->removeWidget(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto :goto_1

    .line 624
    .end local v1    # "w":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public final removeItemInAppsPage(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)I
    .locals 4
    .param p1, "appInfo"    # Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;

    .prologue
    const/4 v1, -0x3

    .line 1146
    const/4 v0, 0x0

    .line 1148
    .local v0, "iv":Landroid/view/View;
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1149
    iget-object v2, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->getItemViewByComponentName(Landroid/content/ComponentName;)Landroid/view/View;

    move-result-object v0

    .line 1154
    :cond_0
    :goto_0
    if-nez v0, :cond_3

    .line 1163
    :cond_1
    :goto_1
    return v1

    .line 1150
    :cond_2
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1151
    iget-object v2, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->getItemViewByTitle(Ljava/lang/String;)Lcom/android/launcher3/common/view/IconView;

    move-result-object v0

    goto :goto_0

    .line 1158
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-eqz v2, :cond_1

    .line 1159
    iget-object v2, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-interface {v2, v1}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->removeItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 1160
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public final searchWidgetList(Ljava/lang/String;)I
    .locals 3
    .param p1, "keyword"    # Ljava/lang/String;

    .prologue
    .line 885
    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    invoke-interface {v1}, Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;->getTopStageMode()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 886
    const/4 v0, -0x2

    .line 889
    :goto_0
    return v0

    .line 888
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mWidgetProxyCallbacks:Lcom/android/launcher3/proxy/WidgetProxyCallbacks;

    invoke-interface {v1, p1}, Lcom/android/launcher3/proxy/WidgetProxyCallbacks;->search(Ljava/lang/String;)I

    move-result v0

    .line 889
    .local v0, "result":I
    goto :goto_0
.end method

.method public final setAddAppsSearchText(Ljava/lang/String;)I
    .locals 1
    .param p1, "searchText"    # Ljava/lang/String;

    .prologue
    .line 771
    if-nez p1, :cond_0

    .line 772
    const/4 v0, -0x3

    .line 779
    :goto_0
    return v0

    .line 775
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsPickerProxyCallback:Lcom/android/launcher3/proxy/AppsPickerProxyCallbacks;

    invoke-interface {v0, p1}, Lcom/android/launcher3/proxy/AppsPickerProxyCallbacks;->setSearchText(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 776
    const/4 v0, 0x0

    goto :goto_0

    .line 779
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public setAppsPickerProxyCallbacks(Lcom/android/launcher3/proxy/AppsPickerProxyCallbacks;)V
    .locals 0
    .param p1, "appsPickerProxyCallback"    # Lcom/android/launcher3/proxy/AppsPickerProxyCallbacks;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsPickerProxyCallback:Lcom/android/launcher3/proxy/AppsPickerProxyCallbacks;

    .line 105
    return-void
.end method

.method public setAppsProxyCallbacks(Lcom/android/launcher3/proxy/AppsProxyCallbacks;)V
    .locals 0
    .param p1, "appsProxyCallback"    # Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    .line 93
    return-void
.end method

.method public setFolderProxyCallbacks(Lcom/android/launcher3/proxy/FolderProxyCallbacks;)V
    .locals 0
    .param p1, "folderProxyCallback"    # Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    .line 97
    return-void
.end method

.method public final setHomeCurrentAsMainPage()I
    .locals 3

    .prologue
    .line 803
    iget-object v2, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v2}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->getPagedView()Lcom/android/launcher3/common/base/view/PagedView;

    move-result-object v1

    .line 804
    .local v1, "pv":Lcom/android/launcher3/common/base/view/PagedView;
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/PagedView;->getCurrentPage()I

    move-result v0

    .line 805
    .local v0, "page":I
    iget-object v2, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v2, v0}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->setAsMainPage(I)V

    .line 807
    const/4 v2, 0x0

    return v2
.end method

.method public setHomeProxyCallbacks(Lcom/android/launcher3/proxy/HomeProxyCallbacks;)V
    .locals 0
    .param p1, "homeProxyCallback"    # Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    .line 89
    return-void
.end method

.method public setLauncherActivityProxyCallbacks(Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;)V
    .locals 0
    .param p1, "launcherActivityProxyCallback"    # Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    .line 85
    return-void
.end method

.method public setStageManagerProxyCallbacks(Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;)V
    .locals 0
    .param p1, "stageManagerProxyCallback"    # Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    .line 110
    return-void
.end method

.method public setWidgetProxyCallbacks(Lcom/android/launcher3/proxy/WidgetProxyCallbacks;)V
    .locals 0
    .param p1, "widgetProxyCallback"    # Lcom/android/launcher3/proxy/WidgetProxyCallbacks;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mWidgetProxyCallbacks:Lcom/android/launcher3/proxy/WidgetProxyCallbacks;

    .line 101
    return-void
.end method

.method public final showAppInfo(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)I
    .locals 2
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;

    .prologue
    .line 211
    if-nez p1, :cond_0

    .line 212
    const/4 v1, -0x3

    .line 218
    :goto_0
    return v1

    .line 215
    :cond_0
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/LauncherAppsCompat;

    move-result-object v0

    .line 216
    .local v0, "launcherApps":Lcom/android/launcher3/common/compat/LauncherAppsCompat;
    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->showAppDetailsForProfile(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    .line 218
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final showAppsFolderRemovePopUp(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)I
    .locals 5
    .param p1, "appInfo"    # Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;

    .prologue
    const/4 v2, -0x3

    const/16 v4, -0x66

    .line 1222
    const/4 v1, 0x0

    .line 1224
    .local v1, "infos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    if-nez p1, :cond_1

    .line 1242
    :cond_0
    :goto_0
    return v2

    .line 1226
    :cond_1
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 1227
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v4}, Lcom/android/launcher3/proxy/LauncherProxy;->getItemsInfoByTitle(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    .line 1232
    :cond_2
    :goto_1
    if-eqz v1, :cond_0

    .line 1233
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 1234
    .local v0, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    instance-of v3, v0, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v3, :cond_3

    .line 1235
    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    check-cast v0, Lcom/android/launcher3/folder/FolderInfo;

    .end local v0    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    invoke-interface {v3, v0}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->deleteFolder(Lcom/android/launcher3/folder/FolderInfo;)V

    goto :goto_2

    .line 1228
    :cond_4
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1229
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-direct {p0, v3, v4}, Lcom/android/launcher3/proxy/LauncherProxy;->getItemsInfoByComponentName(Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v1

    goto :goto_1

    .line 1242
    :cond_5
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final showAppsTidyUpPreview()I
    .locals 1

    .prologue
    .line 1208
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->showTidyUpPreview()V

    .line 1209
    const/4 v0, 0x0

    return v0
.end method

.method public final unHideApps(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)I
    .locals 1
    .param p1, "appInfo"    # Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;

    .prologue
    .line 703
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/proxy/LauncherProxy;->hideOrUnHideApps(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;Z)I

    move-result v0

    return v0
.end method

.method public final uninstallOrDisableApp(Lcom/android/launcher3/common/base/item/ItemInfo;)I
    .locals 1
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 1534
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    invoke-interface {v0, p1}, Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;->uninstallOrDisableApp(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 1535
    const/4 v0, 0x0

    return v0
.end method

.method public final uninstallWidget(Lcom/android/launcher3/common/base/item/ItemInfo;)I
    .locals 2
    .param p1, "info"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 909
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;->getTopStageMode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    instance-of v0, p1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    if-nez v0, :cond_1

    .line 911
    :cond_0
    const/4 v0, -0x2

    .line 914
    .end local p1    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :goto_0
    return v0

    .line 913
    .restart local p1    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mWidgetProxyCallbacks:Lcom/android/launcher3/proxy/WidgetProxyCallbacks;

    check-cast p1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    .end local p1    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    invoke-interface {v0, p1}, Lcom/android/launcher3/proxy/WidgetProxyCallbacks;->uninstallWidget(Lcom/android/launcher3/common/base/item/PendingAddItemInfo;)V

    .line 914
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final unlockFolder(Lcom/android/launcher3/common/base/item/ItemInfo;)I
    .locals 3
    .param p1, "folderInfo"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    const/4 v2, -0x1

    .line 1692
    instance-of v1, p1, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v1, :cond_1

    .line 1693
    invoke-static {}, Lcom/android/launcher3/folder/folderlock/FolderLock;->getInstance()Lcom/android/launcher3/folder/folderlock/FolderLock;

    move-result-object v0

    .local v0, "folderLock":Lcom/android/launcher3/folder/folderlock/FolderLock;
    move-object v1, p1

    .line 1694
    check-cast v1, Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/folderlock/FolderLock;->isLockedFolder(Lcom/android/launcher3/folder/FolderInfo;)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    .line 1701
    .end local v0    # "folderLock":Lcom/android/launcher3/folder/folderlock/FolderLock;
    :goto_0
    return v1

    .line 1697
    .restart local v0    # "folderLock":Lcom/android/launcher3/folder/folderlock/FolderLock;
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/folderlock/FolderLock;->setBackupInfo(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 1698
    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/folderlock/FolderLock;->startUnlockVerifyActivity(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 1699
    const/4 v1, 0x0

    goto :goto_0

    .end local v0    # "folderLock":Lcom/android/launcher3/folder/folderlock/FolderLock;
    :cond_1
    move v1, v2

    .line 1701
    goto :goto_0
.end method

.method public final unlockSingleApp(Lcom/android/launcher3/common/base/item/ItemInfo;)I
    .locals 2
    .param p1, "itemInfo"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 1716
    invoke-static {}, Lcom/android/launcher3/folder/folderlock/FolderLock;->getInstance()Lcom/android/launcher3/folder/folderlock/FolderLock;

    move-result-object v0

    .line 1717
    .local v0, "folderLock":Lcom/android/launcher3/folder/folderlock/FolderLock;
    instance-of v1, p1, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/folderlock/FolderLock;->isLockedApp(Lcom/android/launcher3/common/base/item/IconInfo;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1718
    :cond_0
    const/4 v1, -0x1

    .line 1722
    :goto_0
    return v1

    .line 1720
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/folderlock/FolderLock;->setBackupInfo(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 1721
    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/folderlock/FolderLock;->startUnlockVerifyActivity(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 1722
    const/4 v1, 0x0

    goto :goto_0
.end method
