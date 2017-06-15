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
.field public static final INVALID_VALUE:I = -0x3e7

.field public static final LAUNCHER_PROXY_NOT_READY:I = -0x1

.field public static final LAUNCHER_PROXY_NOT_SUPPORTED_STATE:I = -0x2

.field public static final LAUNCHER_PROXY_PARAMS_ERROR:I = -0x3

.field public static final LAUNCHER_PROXY_RESULT_OK:I = 0x0

.field public static final PAGE_MOVE_CURRENT:I = -0x3

.field public static final PAGE_MOVE_DEFAULT:I = -0x6

.field public static final PAGE_MOVE_EMPTY:I = 0x0

.field public static final PAGE_MOVE_FIRST:I = -0x4

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
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
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

    .line 130
    if-nez p1, :cond_1

    .line 141
    :cond_0
    :goto_0
    return-object v0

    .line 134
    :cond_1
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 136
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 135
    invoke-direct {p0, v0, v2}, Lcom/android/launcher3/proxy/LauncherProxy;->getItemsInfoByComponentName(Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 137
    :cond_2
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 138
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
    .line 1587
    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {p1, v7, v8}, Lcom/android/launcher3/common/model/DataLoader;->getItemInfoByComponentName(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 1588
    .local v0, "componentFilteredItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-static {v0}, Lcom/android/launcher3/proxy/ItemListHelper;->getUnhiddenItemList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    .line 1589
    .local v6, "unhiddenAndComponentFilteredItemList":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-static {v6, p2}, Lcom/android/launcher3/proxy/ItemListHelper;->getContainerIdMatchedItemList(Ljava/util/List;I)Ljava/util/List;

    move-result-object v5

    .line 1592
    .local v5, "resultFilteredList":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-static {v6}, Lcom/android/launcher3/proxy/ItemListHelper;->getFolderItemList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 1593
    .local v2, "folderItemList":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-static {}, Lcom/android/launcher3/proxy/ItemListHelper;->getAllItemMap()Ljava/util/Map;

    move-result-object v4

    .line 1594
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

    .line 1595
    .local v1, "folderItem":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-wide v8, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 1596
    .local v3, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    if-eqz v3, :cond_0

    iget-wide v8, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    int-to-long v10, p2

    cmp-long v8, v8, v10

    if-nez v8, :cond_0

    .line 1597
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1601
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
    .line 1605
    invoke-static {}, Lcom/android/launcher3/common/model/DataLoader;->getItemList()Ljava/util/List;

    move-result-object v2

    .line 1606
    .local v2, "allItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-static {v2}, Lcom/android/launcher3/proxy/ItemListHelper;->getUnhiddenItemList(Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    .line 1607
    .local v9, "unhiddenItemList":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    move-object/from16 v0, p1

    invoke-static {v9, v0}, Lcom/android/launcher3/proxy/ItemListHelper;->getTitleMatchedItemList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 1608
    .local v8, "unhiddenAndTitleFilteredList":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    move/from16 v0, p2

    invoke-static {v8, v0}, Lcom/android/launcher3/proxy/ItemListHelper;->getContainerIdMatchedItemList(Ljava/util/List;I)Ljava/util/List;

    move-result-object v7

    .line 1611
    .local v7, "resultFilteredList":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-static {v8}, Lcom/android/launcher3/proxy/ItemListHelper;->getFolderItemList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 1612
    .local v4, "folderItemList":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-static {}, Lcom/android/launcher3/proxy/ItemListHelper;->getAllItemMap()Ljava/util/Map;

    move-result-object v6

    .line 1613
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

    .line 1614
    .local v3, "folderItem":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-wide v12, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v6, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 1615
    .local v5, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    if-eqz v5, :cond_0

    iget-wide v12, v5, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    move/from16 v0, p2

    int-to-long v14, v0

    cmp-long v11, v12, v14

    if-nez v11, :cond_0

    .line 1616
    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1620
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

    .line 680
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getItemInfo()Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v1

    if-nez v1, :cond_1

    .line 681
    :cond_0
    const/4 v1, -0x3

    .line 697
    :goto_0
    return v1

    .line 683
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    invoke-interface {v1}, Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;->getTopStageMode()I

    move-result v1

    if-ne v1, v3, :cond_2

    .line 684
    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    const/4 v2, 0x0

    invoke-interface {v1, v3, v2}, Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;->finishStage(ILcom/android/launcher3/common/stage/StageEntry;)V

    .line 688
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 689
    .local v0, "hideItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getItemInfo()Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 691
    if-eqz p2, :cond_3

    .line 692
    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    invoke-interface {v1, v0}, Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;->hideApps(Ljava/util/ArrayList;)V

    .line 697
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 694
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

    .line 1427
    if-nez p1, :cond_1

    .line 1454
    :cond_0
    :goto_0
    return v3

    .line 1430
    :cond_1
    iget-object v4, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    invoke-interface {v4}, Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;->getTopStageMode()I

    move-result v4

    const/4 v5, 0x5

    if-eq v4, v5, :cond_2

    iget-object v4, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    .line 1431
    invoke-interface {v4}, Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;->getTopStageMode()I

    move-result v4

    if-ne v4, v6, :cond_3

    :cond_2
    iget-object v4, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    if-nez v4, :cond_4

    .line 1433
    :cond_3
    const/4 v3, -0x1

    goto :goto_0

    .line 1436
    :cond_4
    iget-object v4, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    invoke-interface {v4}, Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;->getTopStageMode()I

    move-result v4

    if-ne v4, v6, :cond_5

    .line 1437
    iget-object v4, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    const/4 v5, 0x0

    invoke-interface {v4, v6, v5}, Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;->finishStage(ILcom/android/launcher3/common/stage/StageEntry;)V

    .line 1440
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/launcher3/proxy/LauncherProxy;->getAppsItemInfoByStateAppInfo(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/util/List;

    move-result-object v2

    .line 1441
    .local v2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    const/4 v1, 0x0

    .line 1442
    .local v1, "itemAdded":Z
    if-eqz v2, :cond_7

    .line 1443
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

    .line 1445
    .local v0, "i":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-wide v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-gez v5, :cond_6

    .line 1446
    iget-object v5, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    invoke-interface {v5, v0}, Lcom/android/launcher3/proxy/FolderProxyCallbacks;->addFolderItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 1447
    const/4 v1, 0x1

    goto :goto_1

    .line 1451
    .end local v0    # "i":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_7
    if-eqz v1, :cond_0

    .line 1452
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public final addHomeFolderItem(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)I
    .locals 6
    .param p1, "appInfo"    # Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;

    .prologue
    const/4 v5, 0x6

    .line 1458
    if-nez p1, :cond_0

    .line 1459
    const/4 v3, -0x3

    .line 1480
    :goto_0
    return v3

    .line 1461
    :cond_0
    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    invoke-interface {v3}, Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;->getTopStageMode()I

    move-result v3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    .line 1462
    invoke-interface {v3}, Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;->getTopStageMode()I

    move-result v3

    if-ne v3, v5, :cond_2

    :cond_1
    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    if-nez v3, :cond_3

    .line 1464
    :cond_2
    const/4 v3, -0x1

    goto :goto_0

    .line 1467
    :cond_3
    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    invoke-interface {v3}, Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;->getTopStageMode()I

    move-result v3

    if-ne v3, v5, :cond_4

    .line 1468
    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    const/4 v4, 0x0

    invoke-interface {v3, v5, v4}, Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;->finishStage(ILcom/android/launcher3/common/stage/StageEntry;)V

    .line 1471
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/launcher3/proxy/LauncherProxy;->getAppsItemInfoByStateAppInfo(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/util/List;

    move-result-object v2

    .line 1472
    .local v2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    if-eqz v2, :cond_6

    .line 1473
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

    .line 1474
    .local v0, "i":Lcom/android/launcher3/common/base/item/ItemInfo;
    instance-of v4, v0, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v4, :cond_5

    .line 1475
    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    .end local v0    # "i":Lcom/android/launcher3/common/base/item/ItemInfo;
    invoke-virtual {v0}, Lcom/android/launcher3/common/base/item/IconInfo;->makeCloneInfo()Lcom/android/launcher3/common/base/item/IconInfo;

    move-result-object v1

    .line 1476
    .local v1, "item":Lcom/android/launcher3/common/base/item/IconInfo;
    iget-object v4, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    invoke-interface {v4, v1}, Lcom/android/launcher3/proxy/FolderProxyCallbacks;->addFolderItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto :goto_1

    .line 1480
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

    .line 921
    if-nez p1, :cond_1

    .line 932
    :cond_0
    :goto_0
    return v0

    .line 924
    :cond_1
    if-lez p2, :cond_2

    .line 925
    invoke-virtual {p0, p2}, Lcom/android/launcher3/proxy/LauncherProxy;->isHomeValidPage(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 931
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/proxy/LauncherProxy;->createHomeAppShortcut(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;I)I

    .line 932
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final addNewHomePageInOverViewMode()I
    .locals 1

    .prologue
    .line 823
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->addNewHomePageInOverViewMode()V

    .line 824
    const/4 v0, 0x0

    return v0
.end method

.method public final addNewPageInHome()I
    .locals 1

    .prologue
    .line 818
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->addNewPage()V

    .line 819
    const/4 v0, 0x0

    return v0
.end method

.method public final addSearchResultItemToFolder()I
    .locals 1

    .prologue
    .line 785
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsPickerProxyCallback:Lcom/android/launcher3/proxy/AppsPickerProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/AppsPickerProxyCallbacks;->addResultApps()V

    .line 787
    const/4 v0, 0x0

    return v0
.end method

.method public final addToSecureFolder(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)I
    .locals 4
    .param p1, "appInfo"    # Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;

    .prologue
    const/4 v2, -0x1

    .line 1357
    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    if-nez v3, :cond_1

    .line 1368
    :cond_0
    :goto_0
    return v2

    .line 1360
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/launcher3/proxy/LauncherProxy;->getAppsItemInfoByStateAppInfo(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/util/List;

    move-result-object v1

    .line 1361
    .local v1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1364
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 1365
    .local v0, "i":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    invoke-interface {v3, v0}, Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;->addToSecureFolder(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto :goto_1

    .line 1367
    .end local v0    # "i":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_2
    iget-object v2, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    invoke-interface {v2}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->startSecureFolder()V

    .line 1368
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final addWidgetResultItemToHome()I
    .locals 2

    .prologue
    .line 936
    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mWidgetProxyCallbacks:Lcom/android/launcher3/proxy/WidgetProxyCallbacks;

    invoke-interface {v1}, Lcom/android/launcher3/proxy/WidgetProxyCallbacks;->getWidgetResultItem()Lcom/android/launcher3/common/base/item/PendingAddItemInfo;

    move-result-object v0

    .line 937
    .local v0, "widget":Lcom/android/launcher3/common/base/item/PendingAddItemInfo;
    if-nez v0, :cond_0

    .line 938
    const/4 v1, -0x3

    .line 946
    :goto_0
    return v1

    .line 941
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v1, v0}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->addHomeWidget(Lcom/android/launcher3/common/base/item/PendingAddItemInfo;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 942
    invoke-virtual {p0}, Lcom/android/launcher3/proxy/LauncherProxy;->goHome()I

    .line 943
    const/4 v1, 0x0

    goto :goto_0

    .line 946
    :cond_1
    const/4 v1, -0x2

    goto :goto_0
.end method

.method public final alignHomeIcon(IZ)I
    .locals 1
    .param p1, "page"    # I
    .param p2, "isTop"    # Z

    .prologue
    .line 833
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v0, p1, p2}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->alignHomeIcon(IZ)V

    .line 834
    const/4 v0, 0x0

    return v0
.end method

.method public final appsTidyUpPages()I
    .locals 1

    .prologue
    .line 1215
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    if-nez v0, :cond_0

    .line 1216
    const/4 v0, -0x1

    .line 1220
    :goto_0
    return v0

    .line 1219
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->tidyUpPages()V

    .line 1220
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final canAppAddToSecureFolder(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Z
    .locals 3
    .param p1, "appInfo"    # Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;

    .prologue
    const/4 v1, 0x0

    .line 1343
    iget-object v2, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    if-nez v2, :cond_1

    .line 1353
    :cond_0
    :goto_0
    return v1

    .line 1347
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/launcher3/proxy/LauncherProxy;->getAppsItemInfoByStateAppInfo(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/util/List;

    move-result-object v0

    .line 1349
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 1353
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
    .line 724
    if-nez p1, :cond_0

    .line 725
    const/4 v0, -0x3

    .line 735
    :goto_0
    return v0

    .line 727
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    .line 728
    invoke-interface {v0}, Lcom/android/launcher3/proxy/FolderProxyCallbacks;->getOpenedFolder()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v0

    if-nez v0, :cond_2

    .line 729
    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    .line 732
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    .line 733
    invoke-interface {v1}, Lcom/android/launcher3/proxy/FolderProxyCallbacks;->getOpenedFolder()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v1

    .line 732
    invoke-interface {v0, v1, p1}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->changeFolderTitle(Lcom/android/launcher3/common/base/item/ItemInfo;Ljava/lang/String;)V

    .line 734
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    invoke-interface {v0, p1}, Lcom/android/launcher3/proxy/FolderProxyCallbacks;->changeTitle(Ljava/lang/String;)V

    .line 735
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final changeAppsScreengrid(Ljava/lang/String;)I
    .locals 1
    .param p1, "gridOption"    # Ljava/lang/String;

    .prologue
    .line 866
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    invoke-interface {v0, p1}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->changeScreengrid(Ljava/lang/String;)V

    .line 867
    const/4 v0, 0x0

    return v0
.end method

.method public final changeAppsViewTypeToAlphabetic()I
    .locals 2

    .prologue
    .line 1178
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    if-nez v0, :cond_0

    .line 1179
    const/4 v0, -0x1

    .line 1184
    :goto_0
    return v0

    .line 1182
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    sget-object v1, Lcom/android/launcher3/allapps/controller/AppsController$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    .line 1183
    invoke-interface {v0, v1}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->setViewType(Lcom/android/launcher3/allapps/controller/AppsController$ViewType;)V

    .line 1184
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final changeAppsViewTypeToCustom()I
    .locals 2

    .prologue
    .line 1188
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    if-nez v0, :cond_0

    .line 1189
    const/4 v0, -0x1

    .line 1193
    :goto_0
    return v0

    .line 1192
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    sget-object v1, Lcom/android/launcher3/allapps/controller/AppsController$ViewType;->CUSTOM_GRID:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    invoke-interface {v0, v1}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->setViewType(Lcom/android/launcher3/allapps/controller/AppsController$ViewType;)V

    .line 1193
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final changeHomeFolderTitle(Ljava/lang/String;)I
    .locals 2
    .param p1, "newTitle"    # Ljava/lang/String;

    .prologue
    .line 709
    if-nez p1, :cond_0

    .line 710
    const/4 v0, -0x3

    .line 720
    :goto_0
    return v0

    .line 712
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    .line 713
    invoke-interface {v0}, Lcom/android/launcher3/proxy/FolderProxyCallbacks;->getOpenedFolder()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v0

    if-nez v0, :cond_2

    .line 714
    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    .line 717
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    .line 718
    invoke-interface {v1}, Lcom/android/launcher3/proxy/FolderProxyCallbacks;->getOpenedFolder()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v1

    .line 717
    invoke-interface {v0, v1, p1}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->changeFolderTitle(Lcom/android/launcher3/common/base/item/ItemInfo;Ljava/lang/String;)V

    .line 719
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    invoke-interface {v0, p1}, Lcom/android/launcher3/proxy/FolderProxyCallbacks;->changeTitle(Ljava/lang/String;)V

    .line 720
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final changeHomePageOrder(II)I
    .locals 1
    .param p1, "fromPage"    # I
    .param p2, "toPage"    # I

    .prologue
    .line 813
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v0, p1, p2}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->changeHomePageOrder(II)V

    .line 814
    const/4 v0, 0x0

    return v0
.end method

.method public final changeHomeScreengrid(Ljava/lang/String;)I
    .locals 1
    .param p1, "gridOption"    # Ljava/lang/String;

    .prologue
    .line 861
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v0, p1}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->changeScreengrid(Ljava/lang/String;)V

    .line 862
    const/4 v0, 0x0

    return v0
.end method

.method public final changeHomeStyle(Z)I
    .locals 1
    .param p1, "homeOnlyMode"    # Z

    .prologue
    .line 1259
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    invoke-interface {v0, p1}, Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;->changeHomeStyle(Z)V

    .line 1260
    const/4 v0, 0x0

    return v0
.end method

.method public final checkAbleAlignIcon(IZ)Z
    .locals 1
    .param p1, "page"    # I
    .param p2, "isUpward"    # Z

    .prologue
    .line 1558
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v0, p1, p2}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->checkAbleAlignIcon(IZ)Z

    move-result v0

    return v0
.end method

.method public final checkMatchAppsGridOption(Ljava/lang/String;)Z
    .locals 1
    .param p1, "gridOption"    # Ljava/lang/String;

    .prologue
    .line 883
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    invoke-interface {v0, p1}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->checkMatchGridOption(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final checkMatchHomeGridOption(Ljava/lang/String;)Z
    .locals 1
    .param p1, "gridOption"    # Ljava/lang/String;

    .prologue
    .line 879
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v0, p1}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->checkMatchGridOption(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final checkNeedDisplayAutoalignDialog()Z
    .locals 1

    .prologue
    .line 1554
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->checkNeedDisplayAutoalignDialog()Z

    move-result v0

    return v0
.end method

.method public final checkValidAppsGridOption(Ljava/lang/String;)Z
    .locals 1
    .param p1, "gridOption"    # Ljava/lang/String;

    .prologue
    .line 875
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    invoke-interface {v0, p1}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->checkValidGridOption(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final checkValidHomeGridOption(Ljava/lang/String;)Z
    .locals 1
    .param p1, "gridOption"    # Ljava/lang/String;

    .prologue
    .line 871
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

    .line 1372
    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    if-nez v3, :cond_1

    .line 1382
    :cond_0
    :goto_0
    return v2

    .line 1375
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/launcher3/proxy/LauncherProxy;->getAppsItemInfoByStateAppInfo(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/util/List;

    move-result-object v1

    .line 1376
    .local v1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1379
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 1380
    .local v0, "i":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    invoke-interface {v3, v0}, Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;->clearBadge(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto :goto_1

    .line 1382
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

    .line 1386
    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    if-nez v3, :cond_1

    .line 1399
    :cond_0
    :goto_0
    return v2

    .line 1389
    :cond_1
    instance-of v3, p1, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 1390
    check-cast v0, Lcom/android/launcher3/folder/FolderInfo;

    .line 1391
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

    .line 1392
    .local v1, "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    iget v3, v1, Lcom/android/launcher3/common/base/item/IconInfo;->mBadgeCount:I

    if-eqz v3, :cond_2

    .line 1393
    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    invoke-interface {v3, v1}, Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;->clearBadge(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto :goto_1

    .line 1399
    .end local v1    # "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final closeFolder()I
    .locals 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;->getTopStageMode()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 245
    const/4 v0, -0x1

    .line 249
    :goto_0
    return v0

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;->closeFolder()V

    .line 249
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final contactUs()I
    .locals 1

    .prologue
    .line 224
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    .line 225
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 224
    invoke-static {v0}, Lcom/android/launcher3/Utilities;->startContactUsActivity(Landroid/content/Context;)V

    .line 226
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

    .line 652
    if-nez p1, :cond_0

    .line 653
    const/4 v1, -0x3

    .line 664
    :goto_0
    return v1

    .line 655
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/launcher3/proxy/LauncherProxy;->getAppsItemInfoByStateAppInfo(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/util/List;

    move-result-object v0

    .line 656
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 657
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-object v1, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->setName(Ljava/lang/String;)V

    .line 658
    if-ltz p2, :cond_2

    .line 659
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

    .line 664
    goto :goto_0

    .line 661
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

    .line 668
    if-nez p1, :cond_1

    .line 669
    const/4 v2, -0x3

    .line 676
    :cond_0
    :goto_0
    return v2

    .line 671
    :cond_1
    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->getFolderItemViewByTitle(Ljava/lang/String;)Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v1

    .line 672
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 673
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 674
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
    .line 1667
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    invoke-interface {v0, p1}, Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;->enableAllAppsBadge(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1668
    const/4 v0, -0x1

    .line 1670
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
    .line 1264
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    if-nez v0, :cond_0

    .line 1265
    const/4 v0, -0x1

    .line 1277
    :goto_0
    return v0

    .line 1268
    :cond_0
    if-eqz p1, :cond_1

    .line 1269
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;->showAppsButton()V

    .line 1274
    :goto_1
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;->exitSettingsView()V

    .line 1275
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->exitSubState()V

    .line 1277
    const/4 v0, 0x0

    goto :goto_0

    .line 1271
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
    .line 1674
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    invoke-interface {v0, p1, p2}, Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;->enableSingleAppBadge(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1675
    const/4 v0, -0x1

    .line 1677
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

    .line 756
    if-nez p1, :cond_1

    .line 769
    :cond_0
    :goto_0
    return v2

    .line 760
    :cond_1
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getName()Ljava/lang/String;

    move-result-object v1

    .line 761
    .local v1, "name":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    invoke-interface {v3, v1}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->getFolderItemViewByTitle(Ljava/lang/String;)Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v0

    .line 763
    .local v0, "iv":Lcom/android/launcher3/common/view/IconView;
    instance-of v3, v0, Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v3, :cond_0

    .line 764
    iget-object v2, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    check-cast v0, Lcom/android/launcher3/folder/view/FolderIconView;

    .end local v0    # "iv":Lcom/android/launcher3/common/view/IconView;
    invoke-interface {v2, v0}, Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;->enterFolderAddAppsView(Lcom/android/launcher3/folder/view/FolderIconView;)V

    .line 769
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final enterBadgeManagementView()I
    .locals 1

    .prologue
    .line 1662
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;->enterBadgeManagementView()V

    .line 1663
    const/4 v0, 0x0

    return v0
.end method

.method public final enterHideAppsView()I
    .locals 1

    .prologue
    .line 843
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;->enterHideAppsView()V

    .line 844
    const/4 v0, 0x0

    return v0
.end method

.method public final enterHomeEditView()I
    .locals 1

    .prologue
    .line 800
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->enterHomeEditView()V

    .line 801
    const/4 v0, 0x0

    return v0
.end method

.method public final enterHomeFolderAddApps(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)I
    .locals 4
    .param p1, "appInfo"    # Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;

    .prologue
    const/4 v2, -0x3

    .line 739
    if-nez p1, :cond_1

    .line 752
    :cond_0
    :goto_0
    return v2

    .line 743
    :cond_1
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getName()Ljava/lang/String;

    move-result-object v1

    .line 744
    .local v1, "name":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v3, v1}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->getFolderItemViewByTitle(Ljava/lang/String;)Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v0

    .line 746
    .local v0, "iv":Lcom/android/launcher3/common/view/IconView;
    instance-of v3, v0, Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v3, :cond_0

    .line 747
    iget-object v2, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    check-cast v0, Lcom/android/launcher3/folder/view/FolderIconView;

    .end local v0    # "iv":Lcom/android/launcher3/common/view/IconView;
    invoke-interface {v2, v0}, Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;->enterFolderAddAppsView(Lcom/android/launcher3/folder/view/FolderIconView;)V

    .line 752
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final enterHomeSettingAppsGridSettingView()I
    .locals 1

    .prologue
    .line 854
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;->exitSettingsView()V

    .line 855
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->showAppsGridSettingView()V

    .line 857
    const/4 v0, 0x0

    return v0
.end method

.method public final enterHomeSettingHomeGridSettingView()I
    .locals 1

    .prologue
    .line 848
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;->exitSettingsView()V

    .line 849
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->enterHomeSettingGridSettingView()V

    .line 850
    const/4 v0, 0x0

    return v0
.end method

.method public final enterHomeSettingModeChangeView()I
    .locals 1

    .prologue
    .line 1254
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;->enterHomeSettingChangeModeView()V

    .line 1255
    const/4 v0, 0x0

    return v0
.end method

.method public final enterHomeSettingView()I
    .locals 1

    .prologue
    .line 1249
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;->enterHomeSettingView()V

    .line 1250
    const/4 v0, 0x0

    return v0
.end method

.method public final enterWidgetListView()I
    .locals 1

    .prologue
    .line 838
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;->enterWidgetListView()V

    .line 839
    const/4 v0, 0x0

    return v0
.end method

.method public final enterWidgetResizeMode(Lcom/android/launcher3/common/base/item/ItemInfo;)I
    .locals 8
    .param p1, "itemInfo"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x2

    .line 630
    instance-of v6, p1, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    if-nez v6, :cond_1

    .line 631
    const/4 v4, -0x3

    .line 648
    :cond_0
    :goto_0
    return v4

    :cond_1
    move-object v2, p1

    .line 633
    check-cast v2, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    .line 634
    .local v2, "widget":Lcom/android/launcher3/home/LauncherAppWidgetInfo;
    iget-object v0, v2, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    .line 635
    .local v0, "cn":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    .line 639
    iget-object v6, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    .line 640
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->getWidgetItemsInfoByPackageName(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 641
    .local v3, "widgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 642
    .local v1, "w":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-object v6, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v6, v1}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->enterWidgetResizeMode(Lcom/android/launcher3/common/base/item/ItemInfo;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v4, v5

    .line 643
    goto :goto_0

    .end local v1    # "w":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_2
    move v4, v5

    .line 648
    goto :goto_0
.end method

.method public final enterWidgetSearchState()I
    .locals 2

    .prologue
    .line 895
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;->getTopStageMode()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 896
    const/4 v0, -0x2

    .line 899
    :goto_0
    return v0

    .line 898
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mWidgetProxyCallbacks:Lcom/android/launcher3/proxy/WidgetProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/WidgetProxyCallbacks;->enterSearchState()V

    .line 899
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final enterWidgetUninstallState()I
    .locals 2

    .prologue
    .line 903
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;->getTopStageMode()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 904
    const/4 v0, -0x2

    .line 907
    :goto_0
    return v0

    .line 906
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mWidgetProxyCallbacks:Lcom/android/launcher3/proxy/WidgetProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/WidgetProxyCallbacks;->enterUninstallState()V

    .line 907
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAppNamebyComponentName(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/lang/String;
    .locals 3
    .param p1, "appInfo"    # Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;

    .prologue
    .line 1642
    invoke-virtual {p0}, Lcom/android/launcher3/proxy/LauncherProxy;->isHomeOnlyMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1643
    invoke-virtual {p0, p1}, Lcom/android/launcher3/proxy/LauncherProxy;->getHomeItemInfoByStateAppInfo(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/util/List;

    move-result-object v1

    .line 1648
    .local v1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    :goto_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_1

    .line 1649
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 1650
    .local v0, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    if-eqz v0, :cond_1

    .line 1651
    instance-of v2, v0, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v2, :cond_1

    .line 1652
    iget-object v2, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1657
    .end local v0    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    :goto_1
    return-object v2

    .line 1645
    .end local v1    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/launcher3/proxy/LauncherProxy;->getAppsItemInfo(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/util/List;

    move-result-object v1

    .restart local v1    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    goto :goto_0

    .line 1657
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
    .line 951
    invoke-direct {p0, p1}, Lcom/android/launcher3/proxy/LauncherProxy;->getAppsItemInfoByStateAppInfo(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getAppsPageCount()I
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->getPageCount()I

    move-result v0

    return v0
.end method

.method public final getCurrentTopStage()I
    .locals 1

    .prologue
    .line 1546
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
    .line 164
    iget-object v5, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    if-nez v5, :cond_1

    .line 165
    const/4 v4, 0x0

    .line 189
    :cond_0
    return-object v4

    .line 167
    :cond_1
    iget-object v5, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    invoke-interface {v5}, Lcom/android/launcher3/proxy/FolderProxyCallbacks;->getOpenedFolderIconView()Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v1

    .line 168
    .local v1, "folderIconView":Lcom/android/launcher3/folder/view/FolderIconView;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 170
    .local v4, "itemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    if-eqz v1, :cond_0

    .line 171
    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderView()Lcom/android/launcher3/folder/view/FolderView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/folder/view/FolderView;->getItemsInReadingOrder()Ljava/util/ArrayList;

    move-result-object v2

    .line 173
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

    .line 174
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 175
    .local v3, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 176
    iget-object v6, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v6, :cond_2

    iget-object v6, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    .line 177
    invoke-virtual {v6}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 178
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 180
    :cond_3
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 181
    iget-object v6, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    if-eqz v6, :cond_2

    iget-object v6, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    .line 182
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

    .line 183
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getFolderItemViewByTitle(Ljava/lang/String;)Lcom/android/launcher3/folder/view/FolderIconView;
    .locals 1
    .param p1, "folderName"    # Ljava/lang/String;

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v0, p1}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->getFolderItemViewByTitle(Ljava/lang/String;)Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v0

    return-object v0
.end method

.method public final getHomeCurrentPage()I
    .locals 2

    .prologue
    .line 476
    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v1}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->getPagedView()Lcom/android/launcher3/common/base/view/PagedView;

    move-result-object v0

    .line 477
    .local v0, "pv":Lcom/android/launcher3/common/base/view/PagedView;
    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/PagedView;->getCurrentPage()I

    move-result v1

    return v1
.end method

.method public getHomeFolderItemCountByTitle(Ljava/lang/String;)I
    .locals 1
    .param p1, "folderName"    # Ljava/lang/String;

    .prologue
    .line 209
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

    .line 115
    if-nez p1, :cond_1

    .line 126
    :cond_0
    :goto_0
    return-object v0

    .line 119
    :cond_1
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 121
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 120
    invoke-direct {p0, v0, v2}, Lcom/android/launcher3/proxy/LauncherProxy;->getItemsInfoByComponentName(Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 122
    :cond_2
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 123
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/android/launcher3/proxy/LauncherProxy;->getItemsInfoByTitle(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public final getHomePageCount()I
    .locals 3

    .prologue
    .line 447
    iget-object v2, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v2}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->getPagedView()Lcom/android/launcher3/common/base/view/PagedView;

    move-result-object v1

    .line 448
    .local v1, "pv":Lcom/android/launcher3/common/base/view/PagedView;
    const/4 v0, 0x1

    .line 449
    .local v0, "pages":I
    if-eqz v1, :cond_0

    .line 450
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/PagedView;->getPageCount()I

    move-result v0

    .line 453
    :cond_0
    return v0
.end method

.method public final getHomePageCountInOverviewMode()I
    .locals 3

    .prologue
    .line 458
    iget-object v2, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v2}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->getPagedView()Lcom/android/launcher3/common/base/view/PagedView;

    move-result-object v1

    .line 459
    .local v1, "pv":Lcom/android/launcher3/common/base/view/PagedView;
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/PagedView;->getPageCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 460
    .local v0, "pageCount":I
    iget-object v2, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v2}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->neededToAdjustZeroPage()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 461
    add-int/lit8 v0, v0, -0x1

    .line 464
    :cond_0
    return v0
.end method

.method public final getHomePageNumberByScreenId(J)I
    .locals 1
    .param p1, "screenId"    # J

    .prologue
    .line 1729
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

    .line 425
    if-nez p1, :cond_1

    .line 436
    :cond_0
    :goto_0
    return-object v0

    .line 428
    :cond_1
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 429
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    .line 431
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    .line 430
    invoke-interface {v0, v1}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->getWidgetItemsInfoByComponentName(Landroid/content/ComponentName;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 432
    :cond_2
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 433
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    .line 434
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getName()Ljava/lang/String;

    move-result-object v1

    .line 433
    invoke-interface {v0, v1}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->getWidgetItemsInfoByTitle(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public final getItemInfoInHideApps(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Lcom/android/launcher3/common/base/item/ItemInfo;
    .locals 3
    .param p1, "appInfo"    # Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;

    .prologue
    const/4 v0, 0x0

    .line 1624
    if-nez p1, :cond_1

    .line 1635
    :cond_0
    :goto_0
    return-object v0

    .line 1628
    :cond_1
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getOrdinalNumber()I

    move-result v1

    const/16 v2, -0x3e7

    if-eq v1, v2, :cond_2

    .line 1629
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsPickerProxyCallback:Lcom/android/launcher3/proxy/AppsPickerProxyCallbacks;

    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getOrdinalNumber()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/launcher3/proxy/AppsPickerProxyCallbacks;->getItem(I)Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v0

    goto :goto_0

    .line 1630
    :cond_2
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1631
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsPickerProxyCallback:Lcom/android/launcher3/proxy/AppsPickerProxyCallbacks;

    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/launcher3/proxy/AppsPickerProxyCallbacks;->getItem(Landroid/content/ComponentName;)Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v0

    goto :goto_0

    .line 1632
    :cond_3
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1633
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
    .line 1108
    const/4 v1, -0x1

    .line 1110
    .local v1, "result":I
    invoke-direct {p0, p1}, Lcom/android/launcher3/proxy/LauncherProxy;->getAppsItemInfoByStateAppInfo(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/util/List;

    move-result-object v0

    .line 1111
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 1112
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-wide v2, v2, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    long-to-int v1, v2

    .line 1115
    :cond_0
    return v1
.end method

.method public getItemViewByComponentName(Landroid/content/ComponentName;)Landroid/view/View;
    .locals 1
    .param p1, "cn"    # Landroid/content/ComponentName;

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v0, p1}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->getItemViewByComponentName(Landroid/content/ComponentName;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getItemViewByTitle(Ljava/lang/String;)Landroid/view/View;
    .locals 1
    .param p1, "itemName"    # Ljava/lang/String;

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v0, p1}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->getItemViewByTitle(Ljava/lang/String;)Lcom/android/launcher3/common/view/IconView;

    move-result-object v0

    return-object v0
.end method

.method public getOpenedAppsFolderPage()I
    .locals 4

    .prologue
    .line 155
    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    invoke-interface {v1}, Lcom/android/launcher3/proxy/FolderProxyCallbacks;->getOpenedFolder()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v0

    .line 157
    .local v0, "folder":Lcom/android/launcher3/folder/FolderInfo;
    if-eqz v0, :cond_0

    .line 158
    iget-wide v2, v0, Lcom/android/launcher3/folder/FolderInfo;->screenId:J

    long-to-int v1, v2

    .line 160
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getOpenedFolderPageCount()I
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/FolderProxyCallbacks;->getPagedView()Lcom/android/launcher3/common/base/view/PagedView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/FolderProxyCallbacks;->getPagedView()Lcom/android/launcher3/common/base/view/PagedView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/PagedView;->getPageCount()I

    move-result v0

    .line 288
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOpenedHomeFolderPage()I
    .locals 6

    .prologue
    .line 145
    iget-object v2, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    invoke-interface {v2}, Lcom/android/launcher3/proxy/FolderProxyCallbacks;->getOpenedFolderIconView()Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v0

    .line 147
    .local v0, "folderIconView":Lcom/android/launcher3/folder/view/FolderIconView;
    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderIconView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 149
    .local v1, "itemInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-object v2, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    iget-wide v4, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    invoke-interface {v2, v4, v5}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->getPageIndexForScreenId(J)I

    move-result v2

    .line 151
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
    .line 359
    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v1}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->getPagedView()Lcom/android/launcher3/common/base/view/PagedView;

    move-result-object v0

    .line 361
    .local v0, "pv":Lcom/android/launcher3/common/base/view/PagedView;
    if-gez p1, :cond_0

    .line 362
    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/PagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {p0, v1, p1}, Lcom/android/launcher3/proxy/LauncherProxy;->getPageNumberInOverview(II)I

    move-result p1

    .line 365
    .end local p1    # "pageNumber":I
    :cond_0
    return p1
.end method

.method public getPageNumberInOverview(II)I
    .locals 6
    .param p1, "pageNumber"    # I
    .param p2, "pageDirection"    # I

    .prologue
    .line 370
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

    .line 371
    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v3}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->neededToAdjustZeroPage()Z

    move-result v0

    .line 372
    .local v0, "hasZeropage":Z
    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v3}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->getPagedView()Lcom/android/launcher3/common/base/view/PagedView;

    move-result-object v2

    .line 373
    .local v2, "pv":Lcom/android/launcher3/common/base/view/PagedView;
    invoke-virtual {v2}, Lcom/android/launcher3/common/base/view/PagedView;->getCurrentPage()I

    move-result v1

    .line 375
    .local v1, "page":I
    packed-switch p2, :pswitch_data_0

    .line 401
    if-eqz v0, :cond_1

    move v1, p1

    .line 405
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

    .line 406
    return v1

    .line 377
    :pswitch_0
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 378
    :goto_1
    goto :goto_0

    .line 377
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 381
    :pswitch_1
    invoke-virtual {v2}, Lcom/android/launcher3/common/base/view/PagedView;->getPageCount()I

    move-result v3

    add-int/lit8 v1, v3, -0x2

    .line 382
    goto :goto_0

    .line 385
    :pswitch_2
    add-int/lit8 v1, v1, -0x1

    .line 386
    goto :goto_0

    .line 389
    :pswitch_3
    add-int/lit8 v1, v1, 0x1

    .line 390
    goto :goto_0

    .line 393
    :pswitch_4
    invoke-virtual {v2}, Lcom/android/launcher3/common/base/view/PagedView;->getCurrentPage()I

    move-result v1

    .line 394
    goto :goto_0

    .line 397
    :pswitch_5
    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v3}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->getDefaultPage()I

    move-result v1

    .line 398
    goto :goto_0

    .line 401
    :cond_1
    add-int/lit8 v1, p1, -0x1

    goto :goto_0

    .line 375
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
    .line 322
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

    .line 324
    invoke-interface {p1}, Lcom/android/launcher3/proxy/BaseProxyCallbacks;->getPagedView()Lcom/android/launcher3/common/base/view/PagedView;

    move-result-object v1

    .line 325
    .local v1, "pv":Lcom/android/launcher3/common/base/view/PagedView;
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/PagedView;->getCurrentPage()I

    move-result v0

    .line 327
    .local v0, "page":I
    const/4 v2, -0x4

    if-ne v2, p2, :cond_2

    .line 328
    const/4 v0, 0x0

    .line 347
    :goto_0
    if-gez v0, :cond_0

    .line 348
    const/4 v0, 0x0

    .line 350
    :cond_0
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/PagedView;->getPageCount()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 351
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/PagedView;->getPageCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 354
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

    .line 355
    return v0

    .line 329
    :cond_2
    const/4 v2, -0x5

    if-ne v2, p2, :cond_3

    .line 330
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/PagedView;->getPageCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    .line 331
    :cond_3
    const/4 v2, -0x1

    if-ne v2, p2, :cond_4

    .line 332
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 333
    :cond_4
    const/4 v2, -0x2

    if-ne v2, p2, :cond_5

    .line 334
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 335
    :cond_5
    const/4 v2, -0x6

    if-ne v2, p2, :cond_7

    .line 336
    instance-of v2, p1, Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    if-eqz v2, :cond_6

    .line 337
    iget-object v2, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v2}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->getDefaultPage()I

    move-result v0

    goto :goto_0

    .line 339
    :cond_6
    const/4 v0, 0x0

    goto :goto_0

    .line 341
    :cond_7
    const/4 v2, -0x3

    if-ne v2, p2, :cond_8

    .line 342
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/PagedView;->getCurrentPage()I

    move-result v0

    goto :goto_0

    .line 344
    :cond_8
    add-int/lit8 v0, p2, -0x1

    goto :goto_0
.end method

.method public final getSearchResultListCount()I
    .locals 1

    .prologue
    .line 791
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsPickerProxyCallback:Lcom/android/launcher3/proxy/AppsPickerProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/AppsPickerProxyCallbacks;->getSearchResultListCount()I

    move-result v0

    return v0
.end method

.method public final getSearchResultSingleAppInfo()Lcom/android/launcher3/common/base/item/ItemInfo;
    .locals 1

    .prologue
    .line 795
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsPickerProxyCallback:Lcom/android/launcher3/proxy/AppsPickerProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/AppsPickerProxyCallbacks;->getSearchResultSingleAppInfo()Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v0

    return-object v0
.end method

.method public final getSecondTopStage()I
    .locals 1

    .prologue
    .line 1550
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

    .line 410
    if-nez p1, :cond_1

    .line 421
    :cond_0
    :goto_0
    return-object v0

    .line 413
    :cond_1
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 415
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mWidgetProxyCallbacks:Lcom/android/launcher3/proxy/WidgetProxyCallbacks;

    .line 416
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    .line 415
    invoke-interface {v0, v1}, Lcom/android/launcher3/proxy/WidgetProxyCallbacks;->getWidgetItemsInfoByComponentName(Landroid/content/ComponentName;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 417
    :cond_2
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 418
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mWidgetProxyCallbacks:Lcom/android/launcher3/proxy/WidgetProxyCallbacks;

    .line 419
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getName()Ljava/lang/String;

    move-result-object v1

    .line 418
    invoke-interface {v0, v1}, Lcom/android/launcher3/proxy/WidgetProxyCallbacks;->getWidgetItemsInfoByTitle(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public getWidgetView(Landroid/content/ComponentName;)Landroid/view/View;
    .locals 1
    .param p1, "cn"    # Landroid/content/ComponentName;

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v0, p1}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->getWidgetView(Landroid/content/ComponentName;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final goHome()I
    .locals 1

    .prologue
    .line 1403
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    if-nez v0, :cond_0

    .line 1404
    const/4 v0, -0x1

    .line 1408
    :goto_0
    return v0

    .line 1406
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;->goHome()V

    .line 1407
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->exitSubState()V

    .line 1408
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasAppsEmptySpace(II)Z
    .locals 2
    .param p1, "pageNumber"    # I
    .param p2, "pageDirection"    # I

    .prologue
    .line 499
    move v0, p1

    .line 500
    .local v0, "p":I
    if-gtz v0, :cond_0

    .line 501
    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    invoke-virtual {p0, v1, p2}, Lcom/android/launcher3/proxy/LauncherProxy;->getPageNumberToMove(Lcom/android/launcher3/proxy/BaseProxyCallbacks;I)I

    move-result v0

    .line 503
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

    .line 963
    if-nez p1, :cond_1

    .line 968
    :cond_0
    :goto_0
    return v1

    .line 966
    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    .line 967
    invoke-interface {v2, p1}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->getFolderItemViewByTitle(Ljava/lang/String;)Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v0

    .line 968
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

    .line 526
    if-nez p1, :cond_1

    .line 531
    :cond_0
    :goto_0
    return v1

    .line 529
    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    .line 530
    invoke-interface {v2, p1}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->getFolderItemViewByTitle(Ljava/lang/String;)Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v0

    .line 531
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
    .line 482
    move v0, p1

    .line 483
    .local v0, "p":I
    if-gtz v0, :cond_0

    .line 484
    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-virtual {p0, v1, p2}, Lcom/android/launcher3/proxy/LauncherProxy;->getPageNumberToMove(Lcom/android/launcher3/proxy/BaseProxyCallbacks;I)I

    move-result v0

    .line 486
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

    .line 955
    if-nez p1, :cond_1

    .line 959
    :cond_0
    :goto_0
    return v1

    .line 958
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/launcher3/proxy/LauncherProxy;->getAppsItemInfoByStateAppInfo(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/util/List;

    move-result-object v0

    .line 959
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

    .line 535
    if-nez p1, :cond_1

    .line 539
    :cond_0
    :goto_0
    return v1

    .line 538
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/launcher3/proxy/LauncherProxy;->getFolderItemInfoByStateAppInfo(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/util/ArrayList;

    move-result-object v0

    .line 539
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

    .line 517
    if-nez p1, :cond_1

    .line 522
    :cond_0
    :goto_0
    return v1

    .line 521
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/launcher3/proxy/LauncherProxy;->getHomeItemInfoByStateAppInfo(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/util/List;

    move-result-object v0

    .line 522
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
    .line 468
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v0, p1}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->hasPageDeleteButton(I)Z

    move-result v0

    return v0
.end method

.method public final hideApps(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)I
    .locals 1
    .param p1, "appInfo"    # Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;

    .prologue
    .line 701
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

    .line 1311
    iget-object v2, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    .line 1321
    :cond_0
    :goto_0
    return v1

    .line 1314
    :cond_1
    const/4 v0, 0x0

    .line 1315
    .local v0, "packageName":Ljava/lang/String;
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getItemInfo()Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1316
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getItemInfo()Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1318
    :cond_2
    if-eqz v0, :cond_0

    .line 1319
    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    invoke-interface {v1, v0}, Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;->isAlreadySleepMode(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public final isAppsValidPage(I)Z
    .locals 3
    .param p1, "pageNumber"    # I

    .prologue
    .line 972
    iget-object v2, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    invoke-interface {v2}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->getPagedView()Lcom/android/launcher3/common/base/view/PagedView;

    move-result-object v1

    .line 973
    .local v1, "pv":Lcom/android/launcher3/common/base/view/PagedView;
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/PagedView;->getPageCount()I

    move-result v0

    .line 975
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
    .line 979
    move v0, p1

    .line 980
    .local v0, "p":I
    if-gtz v0, :cond_0

    .line 981
    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    invoke-virtual {p0, v1, p2}, Lcom/android/launcher3/proxy/LauncherProxy;->getPageNumberToMove(Lcom/android/launcher3/proxy/BaseProxyCallbacks;I)I

    move-result v0

    .line 984
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/launcher3/proxy/LauncherProxy;->isAppsValidPage(I)Z

    move-result v1

    return v1
.end method

.method public final isAppsViewTypeAlphabetic()Z
    .locals 2

    .prologue
    .line 988
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    if-nez v0, :cond_0

    .line 989
    const/4 v0, 0x0

    .line 992
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

    .line 1297
    iget-object v2, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    .line 1307
    :cond_0
    :goto_0
    return v1

    .line 1300
    :cond_1
    const/4 v0, 0x0

    .line 1301
    .local v0, "packageName":Ljava/lang/String;
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getItemInfo()Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1302
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getItemInfo()Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1304
    :cond_2
    if-eqz v0, :cond_0

    .line 1305
    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    invoke-interface {v1, v0}, Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;->isAvailableSleepMode(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public final isDisableApp(Lcom/android/launcher3/common/base/item/ItemInfo;)Z
    .locals 3
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 1523
    const/4 v0, 0x1

    .line 1524
    .local v0, "result":Z
    iget-object v1, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    .line 1525
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1526
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    .line 1527
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1526
    invoke-static {v1, v2}, Lcom/android/launcher3/Utilities;->canDisable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1528
    const/4 v0, 0x0

    .line 1532
    :cond_0
    return v0
.end method

.method public final isEmptyPage(I)Z
    .locals 1
    .param p1, "page"    # I

    .prologue
    .line 472
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v0, p1}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->isEmptyPage(I)Z

    move-result v0

    return v0
.end method

.method public final isEnableAppsButton()Z
    .locals 1

    .prologue
    .line 1289
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    if-nez v0, :cond_0

    .line 1290
    const/4 v0, 0x0

    .line 1293
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

    .line 507
    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    invoke-interface {v3}, Lcom/android/launcher3/proxy/FolderProxyCallbacks;->getPagedView()Lcom/android/launcher3/common/base/view/PagedView;

    move-result-object v1

    .line 508
    .local v1, "pv":Lcom/android/launcher3/common/base/view/PagedView;
    if-nez v1, :cond_1

    .line 513
    :cond_0
    :goto_0
    return v2

    .line 511
    :cond_1
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/PagedView;->getPageCount()I

    move-result v0

    .line 513
    .local v0, "pageCount":I
    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public final isHomeOnlyMode()Z
    .locals 1

    .prologue
    .line 1281
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    if-nez v0, :cond_0

    .line 1282
    const/4 v0, 0x0

    .line 1285
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
    .line 440
    iget-object v2, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v2}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->getPagedView()Lcom/android/launcher3/common/base/view/PagedView;

    move-result-object v1

    .line 441
    .local v1, "pv":Lcom/android/launcher3/common/base/view/PagedView;
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/PagedView;->getPageCount()I

    move-result v0

    .line 443
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

    .line 491
    iget-object v5, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v5}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->getPagedView()Lcom/android/launcher3/common/base/view/PagedView;

    move-result-object v2

    .line 492
    .local v2, "pv":Lcom/android/launcher3/common/base/view/PagedView;
    invoke-virtual {v2}, Lcom/android/launcher3/common/base/view/PagedView;->getPageCount()I

    move-result v1

    .line 494
    .local v1, "pageCount":I
    iget-object v5, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v5}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->neededToAdjustZeroPage()Z

    move-result v5

    if-eqz v5, :cond_0

    if-eqz p2, :cond_0

    move v0, v3

    .line 495
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

    .line 494
    goto :goto_0

    .restart local v0    # "firstPage":I
    :cond_1
    move v3, v4

    .line 495
    goto :goto_1
.end method

.method public final isSecureFolderSetup()Z
    .locals 1

    .prologue
    .line 1339
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;->isSecureFolderSetup()Z

    move-result v0

    return v0
.end method

.method public final isUninstallApp(Lcom/android/launcher3/common/base/item/ItemInfo;)Z
    .locals 3
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 1510
    const/4 v0, 0x1

    .line 1511
    .local v0, "result":Z
    iget-object v1, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    .line 1512
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1513
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    .line 1514
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1513
    invoke-static {v1, v2}, Lcom/android/launcher3/Utilities;->canUninstall(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1515
    const/4 v0, 0x0

    .line 1519
    :cond_0
    return v0
.end method

.method public final lockFolder(Lcom/android/launcher3/common/base/item/ItemInfo;)I
    .locals 3
    .param p1, "folderInfo"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    const/4 v2, -0x1

    .line 1681
    instance-of v1, p1, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v1, :cond_1

    .line 1682
    invoke-static {}, Lcom/android/launcher3/folder/folderlock/FolderLock;->getInstance()Lcom/android/launcher3/folder/folderlock/FolderLock;

    move-result-object v0

    .local v0, "folderLock":Lcom/android/launcher3/folder/folderlock/FolderLock;
    move-object v1, p1

    .line 1683
    check-cast v1, Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/folderlock/FolderLock;->isLockedFolder(Lcom/android/launcher3/folder/FolderInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    .line 1690
    .end local v0    # "folderLock":Lcom/android/launcher3/folder/folderlock/FolderLock;
    :goto_0
    return v1

    .line 1686
    .restart local v0    # "folderLock":Lcom/android/launcher3/folder/folderlock/FolderLock;
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/folderlock/FolderLock;->setBackupInfo(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 1687
    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/folderlock/FolderLock;->startLockVerifyActivity(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 1688
    const/4 v1, 0x0

    goto :goto_0

    .end local v0    # "folderLock":Lcom/android/launcher3/folder/folderlock/FolderLock;
    :cond_1
    move v1, v2

    .line 1690
    goto :goto_0
.end method

.method public final lockSingleApp(Lcom/android/launcher3/common/base/item/ItemInfo;)I
    .locals 2
    .param p1, "itemInfo"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 1709
    invoke-static {}, Lcom/android/launcher3/folder/folderlock/FolderLock;->getInstance()Lcom/android/launcher3/folder/folderlock/FolderLock;

    move-result-object v0

    .line 1710
    .local v0, "folderLock":Lcom/android/launcher3/folder/folderlock/FolderLock;
    instance-of v1, p1, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/folderlock/FolderLock;->isLockedApp(Lcom/android/launcher3/common/base/item/IconInfo;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1711
    :cond_0
    const/4 v1, -0x1

    .line 1715
    :goto_0
    return v1

    .line 1713
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/folderlock/FolderLock;->setBackupInfo(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 1714
    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/folderlock/FolderLock;->startLockVerifyActivity(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 1715
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public mapDirectionToPage(IIZ)I
    .locals 4
    .param p1, "itemPage"    # I
    .param p2, "direction"    # I
    .param p3, "isHome"    # Z

    .prologue
    .line 292
    const/4 v2, -0x1

    .line 293
    .local v2, "toPage":I
    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    .line 294
    .local v0, "cb":Lcom/android/launcher3/proxy/BaseProxyCallbacks;
    :goto_0
    invoke-interface {v0}, Lcom/android/launcher3/proxy/BaseProxyCallbacks;->getPagedView()Lcom/android/launcher3/common/base/view/PagedView;

    move-result-object v1

    .line 295
    .local v1, "pv":Lcom/android/launcher3/common/base/view/PagedView;
    packed-switch p2, :pswitch_data_0

    .line 317
    :cond_0
    :goto_1
    return v2

    .line 293
    .end local v0    # "cb":Lcom/android/launcher3/proxy/BaseProxyCallbacks;
    .end local v1    # "pv":Lcom/android/launcher3/common/base/view/PagedView;
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    goto :goto_0

    .line 297
    .restart local v0    # "cb":Lcom/android/launcher3/proxy/BaseProxyCallbacks;
    .restart local v1    # "pv":Lcom/android/launcher3/common/base/view/PagedView;
    :pswitch_0
    const/4 v2, 0x0

    .line 298
    goto :goto_1

    .line 300
    :pswitch_1
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/PagedView;->getPageCount()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .line 301
    goto :goto_1

    .line 303
    :pswitch_2
    add-int/lit8 v2, p1, -0x1

    .line 304
    goto :goto_1

    .line 306
    :pswitch_3
    add-int/lit8 v2, p1, 0x1

    .line 307
    goto :goto_1

    .line 309
    :pswitch_4
    if-eqz p3, :cond_0

    .line 310
    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v3}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->getDefaultPage()I

    move-result v2

    goto :goto_1

    .line 314
    :pswitch_5
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/PagedView;->getCurrentPage()I

    move-result v2

    goto :goto_1

    .line 295
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

    .line 1062
    if-nez p1, :cond_1

    .line 1082
    :cond_0
    :goto_0
    return v1

    .line 1066
    :cond_1
    if-gez p2, :cond_2

    .line 1067
    iget-object v2, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    invoke-virtual {p0, v2, p3}, Lcom/android/launcher3/proxy/LauncherProxy;->getPageNumberToMove(Lcom/android/launcher3/proxy/BaseProxyCallbacks;I)I

    move-result p2

    .line 1069
    :cond_2
    const/4 v0, 0x0

    .line 1070
    .local v0, "iv":Landroid/view/View;
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 1071
    iget-object v2, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    .line 1072
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->getItemViewByComponentName(Landroid/content/ComponentName;)Landroid/view/View;

    move-result-object v0

    .line 1077
    :cond_3
    :goto_1
    if-eqz v0, :cond_0

    .line 1081
    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    check-cast v0, Lcom/android/launcher3/common/view/IconView;

    .end local v0    # "iv":Landroid/view/View;
    invoke-interface {v1, v0, p2}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->moveItem(Lcom/android/launcher3/common/view/IconView;I)V

    .line 1082
    const/4 v1, 0x0

    goto :goto_0

    .line 1073
    .restart local v0    # "iv":Landroid/view/View;
    :cond_4
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1074
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

    .line 1086
    move v1, p2

    .line 1088
    .local v1, "targetPage":I
    if-nez p1, :cond_1

    .line 1104
    :cond_0
    :goto_0
    return v2

    .line 1092
    :cond_1
    if-gez p2, :cond_2

    .line 1093
    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    invoke-virtual {p0, v3, p3}, Lcom/android/launcher3/proxy/LauncherProxy;->getPageNumberToMove(Lcom/android/launcher3/proxy/BaseProxyCallbacks;I)I

    move-result v1

    .line 1096
    :cond_2
    const/4 v0, 0x0

    .line 1097
    .local v0, "iv":Landroid/view/View;
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1098
    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->getFolderItemViewByTitle(Ljava/lang/String;)Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v0

    .line 1100
    :cond_3
    if-eqz v0, :cond_0

    .line 1104
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

    .line 1032
    move v2, p2

    .line 1034
    .local v2, "targetPage":I
    if-nez p1, :cond_1

    .line 1057
    :cond_0
    :goto_0
    return v3

    .line 1038
    :cond_1
    if-gez p2, :cond_2

    .line 1039
    iget-object v4, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    invoke-virtual {p0, v4, p3}, Lcom/android/launcher3/proxy/LauncherProxy;->getPageNumberToMove(Lcom/android/launcher3/proxy/BaseProxyCallbacks;I)I

    move-result v2

    .line 1042
    :cond_2
    const/4 v1, 0x0

    .line 1043
    .local v1, "iv":Landroid/view/View;
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 1044
    iget-object v4, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    .line 1045
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->getItemViewByComponentName(Landroid/content/ComponentName;)Landroid/view/View;

    move-result-object v1

    .line 1049
    :cond_3
    :goto_1
    if-eqz v1, :cond_0

    .line 1052
    invoke-virtual {p0}, Lcom/android/launcher3/proxy/LauncherProxy;->getAppsPageCount()I

    move-result v3

    if-lt v2, v3, :cond_4

    .line 1053
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 1054
    .local v0, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-wide v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    long-to-int v3, v4

    add-int/lit8 v2, v3, 0x1

    .line 1057
    .end local v0    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_4
    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    check-cast v1, Lcom/android/launcher3/common/view/IconView;

    .end local v1    # "iv":Landroid/view/View;
    invoke-interface {v3, v1, v2}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->moveItemToFollowedEmptyPage(Lcom/android/launcher3/common/view/IconView;I)I

    move-result v3

    goto :goto_0

    .line 1046
    .restart local v1    # "iv":Landroid/view/View;
    :cond_5
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 1047
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

    .line 1008
    if-nez p1, :cond_1

    .line 1028
    :cond_0
    :goto_0
    return v1

    .line 1012
    :cond_1
    if-gez p2, :cond_2

    .line 1013
    iget-object v2, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    invoke-virtual {p0, v2, p3}, Lcom/android/launcher3/proxy/LauncherProxy;->getPageNumberToMove(Lcom/android/launcher3/proxy/BaseProxyCallbacks;I)I

    move-result p2

    .line 1015
    :cond_2
    const/4 v0, 0x0

    .line 1016
    .local v0, "iv":Landroid/view/View;
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 1017
    iget-object v2, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    .line 1018
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->getItemViewByComponentName(Landroid/content/ComponentName;)Landroid/view/View;

    move-result-object v0

    .line 1023
    :cond_3
    :goto_1
    if-eqz v0, :cond_0

    .line 1027
    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    check-cast v0, Lcom/android/launcher3/common/view/IconView;

    .end local v0    # "iv":Landroid/view/View;
    invoke-interface {v1, v0, p2}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->moveItem(Lcom/android/launcher3/common/view/IconView;I)V

    .line 1028
    const/4 v1, 0x0

    goto :goto_0

    .line 1019
    .restart local v0    # "iv":Landroid/view/View;
    :cond_4
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1020
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
    .line 1197
    move v0, p1

    .line 1198
    .local v0, "p":I
    if-gtz v0, :cond_0

    .line 1199
    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    invoke-virtual {p0, v1, p2}, Lcom/android/launcher3/proxy/LauncherProxy;->getPageNumberToMove(Lcom/android/launcher3/proxy/BaseProxyCallbacks;I)I

    move-result v0

    .line 1202
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/proxy/LauncherProxy;->isAppsValidPage(II)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1203
    const/4 v1, -0x3

    .line 1206
    :goto_0
    return v1

    .line 1205
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    invoke-interface {v1, v0}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->movePage(I)V

    .line 1206
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final moveFolderPage(II)I
    .locals 3
    .param p1, "pageNumber"    # I
    .param p2, "pageDirection"    # I

    .prologue
    .line 264
    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    invoke-interface {v1}, Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;->getTopStageMode()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    if-nez v1, :cond_1

    .line 266
    :cond_0
    const/4 v1, -0x1

    .line 277
    :goto_0
    return v1

    .line 268
    :cond_1
    move v0, p1

    .line 269
    .local v0, "p":I
    if-gtz v0, :cond_2

    .line 270
    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    invoke-virtual {p0, v1, p2}, Lcom/android/launcher3/proxy/LauncherProxy;->getPageNumberToMove(Lcom/android/launcher3/proxy/BaseProxyCallbacks;I)I

    move-result v0

    .line 273
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/launcher3/proxy/LauncherProxy;->isFolderValidPage(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 274
    const/4 v1, -0x3

    goto :goto_0

    .line 276
    :cond_3
    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    invoke-interface {v1, v0}, Lcom/android/launcher3/proxy/FolderProxyCallbacks;->movePage(I)V

    .line 277
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
    .line 586
    if-gtz p2, :cond_0

    .line 587
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-virtual {p0, v0, p3}, Lcom/android/launcher3/proxy/LauncherProxy;->getPageNumberToMove(Lcom/android/launcher3/proxy/BaseProxyCallbacks;I)I

    move-result p2

    .line 590
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

    .line 567
    invoke-virtual {p0, p1}, Lcom/android/launcher3/proxy/LauncherProxy;->getHomeItemInfoByStateAppInfo(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/util/List;

    move-result-object v0

    .line 568
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 569
    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-interface {v3, v1}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->movePageToItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    move v1, v2

    .line 572
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

    .line 576
    invoke-virtual {p0, p1}, Lcom/android/launcher3/proxy/LauncherProxy;->getHomeWidgetItemInfo(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/util/ArrayList;

    move-result-object v0

    .line 577
    .local v0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 578
    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-interface {v3, v1}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->movePageToItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    move v1, v2

    .line 581
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

    .line 1119
    iget-object v2, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    if-nez v2, :cond_1

    .line 1120
    const/4 v1, -0x1

    .line 1144
    :cond_0
    :goto_0
    return v1

    .line 1122
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/proxy/LauncherProxy;->hasItemInFolder(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1125
    if-lez p2, :cond_2

    .line 1126
    invoke-virtual {p0, p2}, Lcom/android/launcher3/proxy/LauncherProxy;->isAppsValidPage(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1131
    :cond_2
    const/4 v0, 0x0

    .line 1132
    .local v0, "iv":Landroid/view/View;
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 1133
    iget-object v2, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    .line 1134
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/launcher3/proxy/FolderProxyCallbacks;->getItemViewByComponentName(Landroid/content/ComponentName;)Landroid/view/View;

    move-result-object v0

    .line 1139
    :cond_3
    :goto_1
    if-eqz v0, :cond_0

    .line 1143
    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    check-cast v0, Lcom/android/launcher3/common/view/IconView;

    .end local v0    # "iv":Landroid/view/View;
    invoke-interface {v1, v0, p2, p3}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->moveItemInFolder(Lcom/android/launcher3/common/view/IconView;II)V

    .line 1144
    const/4 v1, 0x0

    goto :goto_0

    .line 1135
    .restart local v0    # "iv":Landroid/view/View;
    :cond_4
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1136
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
    .line 562
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v0, p1}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->movePage(I)V

    .line 563
    const/4 v0, 0x0

    return v0
.end method

.method public final moveToHomePage(II)I
    .locals 2
    .param p1, "pageNumber"    # I
    .param p2, "pageDirection"    # I

    .prologue
    .line 543
    move v0, p1

    .line 544
    .local v0, "p":I
    if-gtz v0, :cond_0

    .line 545
    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-virtual {p0, v1, p2}, Lcom/android/launcher3/proxy/LauncherProxy;->getPageNumberToMove(Lcom/android/launcher3/proxy/BaseProxyCallbacks;I)I

    move-result v0

    .line 548
    :cond_0
    const/16 v1, -0x3e7

    if-ne p2, v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    .line 549
    invoke-interface {v1}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->neededToAdjustZeroPage()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 550
    add-int/lit8 v0, v0, 0x1

    .line 553
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/launcher3/proxy/LauncherProxy;->isHomeValidPage(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 554
    const/4 v1, -0x3

    .line 558
    :goto_0
    return v1

    .line 557
    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v1, v0}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->movePage(I)V

    .line 558
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onParamFillingReceived(Ljava/lang/String;Lcom/samsung/android/sdk/bixby/data/ParamFilling;)Z
    .locals 1
    .param p1, "topViewState"    # Ljava/lang/String;
    .param p2, "pf"    # Lcom/samsung/android/sdk/bixby/data/ParamFilling;

    .prologue
    .line 1569
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    if-eqz v0, :cond_0

    const-string v0, "AppsFolderView"

    .line 1570
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "HomeFolderView"

    .line 1571
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1572
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    invoke-interface {v0, p2}, Lcom/android/launcher3/proxy/FolderProxyCallbacks;->onParamFillingReceived(Lcom/samsung/android/sdk/bixby/data/ParamFilling;)Z

    .line 1583
    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 1573
    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsPickerProxyCallback:Lcom/android/launcher3/proxy/AppsPickerProxyCallbacks;

    if-eqz v0, :cond_4

    const-string v0, "AppsFolderAddIconSearchView"

    .line 1574
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    const-string v0, "HomeFolderAddIconSearchView"

    .line 1575
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "HomeSettingsHideAppsView"

    .line 1576
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1577
    :cond_5
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsPickerProxyCallback:Lcom/android/launcher3/proxy/AppsPickerProxyCallbacks;

    invoke-interface {v0, p2}, Lcom/android/launcher3/proxy/AppsPickerProxyCallbacks;->onParamFillingReceived(Lcom/samsung/android/sdk/bixby/data/ParamFilling;)Z

    goto :goto_0

    .line 1578
    :cond_6
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mWidgetProxyCallbacks:Lcom/android/launcher3/proxy/WidgetProxyCallbacks;

    if-eqz v0, :cond_2

    const-string v0, "HomePageWidgetSearchView"

    .line 1579
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1580
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mWidgetProxyCallbacks:Lcom/android/launcher3/proxy/WidgetProxyCallbacks;

    invoke-interface {v0, p2}, Lcom/android/launcher3/proxy/WidgetProxyCallbacks;->onParamFillingReceived(Lcom/samsung/android/sdk/bixby/data/ParamFilling;)Z

    goto :goto_0
.end method

.method public final openAppsFolder(Ljava/lang/String;)I
    .locals 2
    .param p1, "folderName"    # Ljava/lang/String;

    .prologue
    .line 996
    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    .line 997
    invoke-interface {v1, p1}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->getFolderItemViewByTitle(Ljava/lang/String;)Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v0

    .line 998
    .local v0, "iv":Lcom/android/launcher3/folder/view/FolderIconView;
    if-eqz p1, :cond_0

    if-nez v0, :cond_1

    .line 999
    :cond_0
    const/4 v1, -0x3

    .line 1003
    :goto_0
    return v1

    .line 1002
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    invoke-interface {v1, v0}, Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;->openFolder(Lcom/android/launcher3/folder/view/FolderIconView;)V

    .line 1003
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final openAppsTray()I
    .locals 1

    .prologue
    .line 1169
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    if-nez v0, :cond_0

    .line 1170
    const/4 v0, -0x1

    .line 1174
    :goto_0
    return v0

    .line 1173
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;->openAppsTray()V

    .line 1174
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final openFolderAddItemView()I
    .locals 3

    .prologue
    .line 1412
    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    invoke-interface {v1}, Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;->getTopStageMode()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    if-nez v1, :cond_1

    .line 1414
    :cond_0
    const/4 v1, -0x1

    .line 1423
    :goto_0
    return v1

    .line 1417
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    invoke-interface {v1}, Lcom/android/launcher3/proxy/FolderProxyCallbacks;->getOpenedFolderIconView()Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v0

    .line 1418
    .local v0, "iv":Lcom/android/launcher3/folder/view/FolderIconView;
    if-nez v0, :cond_2

    .line 1419
    const/4 v1, -0x2

    goto :goto_0

    .line 1422
    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    invoke-interface {v1, v0}, Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;->openFolderAddIconView(Lcom/android/launcher3/folder/view/FolderIconView;)V

    .line 1423
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final openFolderColorPanel()I
    .locals 2

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;->getTopStageMode()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    if-nez v0, :cond_1

    .line 255
    :cond_0
    const/4 v0, -0x1

    .line 259
    :goto_0
    return v0

    .line 258
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/FolderProxyCallbacks;->openBackgroundColorView()V

    .line 259
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final openHomeFolder(Ljava/lang/String;)I
    .locals 3
    .param p1, "folderName"    # Ljava/lang/String;

    .prologue
    const/4 v1, -0x3

    .line 230
    if-nez p1, :cond_1

    .line 240
    :cond_0
    :goto_0
    return v1

    .line 233
    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    .line 234
    invoke-interface {v2, p1}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->getFolderItemViewByTitle(Ljava/lang/String;)Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v0

    .line 235
    .local v0, "iv":Lcom/android/launcher3/folder/view/FolderIconView;
    if-eqz v0, :cond_0

    .line 239
    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    invoke-interface {v1, v0}, Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;->openFolder(Lcom/android/launcher3/folder/view/FolderIconView;)V

    .line 240
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final openThemeApp()I
    .locals 1

    .prologue
    .line 1506
    const/4 v0, 0x0

    return v0
.end method

.method public final putAppToSleep(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)I
    .locals 4
    .param p1, "appInfo"    # Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;

    .prologue
    const/4 v2, -0x1

    .line 1325
    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    if-nez v3, :cond_1

    .line 1335
    :cond_0
    :goto_0
    return v2

    .line 1328
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/launcher3/proxy/LauncherProxy;->getAppsItemInfoByStateAppInfo(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/util/List;

    move-result-object v1

    .line 1329
    .local v1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1332
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 1333
    .local v0, "i":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    invoke-interface {v3, v0}, Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;->putToSleepMode(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto :goto_1

    .line 1335
    .end local v0    # "i":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final putToSleepMode(Lcom/android/launcher3/common/base/item/ItemInfo;)I
    .locals 1
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 1541
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    invoke-interface {v0, p1}, Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;->uninstallOrDisableApp(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 1542
    const/4 v0, 0x0

    return v0
.end method

.method public final removeFolderItem(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)I
    .locals 5
    .param p1, "appInfo"    # Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x3

    .line 1484
    if-nez p1, :cond_1

    .line 1501
    :cond_0
    :goto_0
    return v1

    .line 1487
    :cond_1
    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    invoke-interface {v3}, Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;->getTopStageMode()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    if-nez v3, :cond_3

    .line 1489
    :cond_2
    const/4 v1, -0x1

    goto :goto_0

    .line 1491
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/launcher3/proxy/LauncherProxy;->hasItemInFolder(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1495
    invoke-virtual {p0, p1}, Lcom/android/launcher3/proxy/LauncherProxy;->getFolderItemInfoByStateAppInfo(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1496
    .local v0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1498
    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-interface {v3, v1}, Lcom/android/launcher3/proxy/FolderProxyCallbacks;->removeFolderItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    move v1, v2

    .line 1499
    goto :goto_0
.end method

.method public final removeHomeCurrentPage()I
    .locals 1

    .prologue
    .line 828
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->removeCurrentPage()V

    .line 829
    const/4 v0, 0x0

    return v0
.end method

.method public final removeHomeShortcut(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)I
    .locals 4
    .param p1, "appInfo"    # Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;

    .prologue
    .line 594
    if-nez p1, :cond_0

    .line 595
    const/4 v2, -0x3

    .line 606
    :goto_0
    return v2

    .line 598
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/launcher3/proxy/LauncherProxy;->getHomeItemInfoByStateAppInfo(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/util/List;

    move-result-object v1

    .line 599
    .local v1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    if-nez v1, :cond_1

    .line 600
    const/4 v2, -0x2

    goto :goto_0

    .line 602
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

    .line 603
    .local v0, "i":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v3, v0}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->removeShortcut(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto :goto_1

    .line 606
    .end local v0    # "i":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final removeHomeWidget(Lcom/android/launcher3/common/base/item/ItemInfo;)I
    .locals 6
    .param p1, "itemInfo"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 610
    instance-of v4, p1, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    if-nez v4, :cond_0

    .line 611
    const/4 v4, -0x3

    .line 626
    :goto_0
    return v4

    :cond_0
    move-object v2, p1

    .line 614
    check-cast v2, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    .line 615
    .local v2, "widget":Lcom/android/launcher3/home/LauncherAppWidgetInfo;
    iget-object v0, v2, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    .line 616
    .local v0, "cn":Landroid/content/ComponentName;
    if-nez v0, :cond_1

    .line 617
    const/4 v4, -0x2

    goto :goto_0

    .line 620
    :cond_1
    iget-object v4, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    .line 621
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->getWidgetItemsInfoByPackageName(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 622
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

    .line 623
    .local v1, "w":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-object v5, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v5, v1}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->removeWidget(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto :goto_1

    .line 626
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

    .line 1148
    const/4 v0, 0x0

    .line 1150
    .local v0, "iv":Landroid/view/View;
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1151
    iget-object v2, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->getItemViewByComponentName(Landroid/content/ComponentName;)Landroid/view/View;

    move-result-object v0

    .line 1156
    :cond_0
    :goto_0
    if-nez v0, :cond_3

    .line 1165
    :cond_1
    :goto_1
    return v1

    .line 1152
    :cond_2
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1153
    iget-object v2, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->getItemViewByTitle(Ljava/lang/String;)Lcom/android/launcher3/common/view/IconView;

    move-result-object v0

    goto :goto_0

    .line 1160
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-eqz v2, :cond_1

    .line 1161
    iget-object v2, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-interface {v2, v1}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->removeItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 1162
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public final searchWidgetList(Ljava/lang/String;)I
    .locals 3
    .param p1, "keyword"    # Ljava/lang/String;

    .prologue
    .line 887
    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    invoke-interface {v1}, Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;->getTopStageMode()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 888
    const/4 v0, -0x2

    .line 891
    :goto_0
    return v0

    .line 890
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mWidgetProxyCallbacks:Lcom/android/launcher3/proxy/WidgetProxyCallbacks;

    invoke-interface {v1, p1}, Lcom/android/launcher3/proxy/WidgetProxyCallbacks;->search(Ljava/lang/String;)I

    move-result v0

    .line 891
    .local v0, "result":I
    goto :goto_0
.end method

.method public final setAddAppsSearchText(Ljava/lang/String;)I
    .locals 1
    .param p1, "searchText"    # Ljava/lang/String;

    .prologue
    .line 773
    if-nez p1, :cond_0

    .line 774
    const/4 v0, -0x3

    .line 781
    :goto_0
    return v0

    .line 777
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsPickerProxyCallback:Lcom/android/launcher3/proxy/AppsPickerProxyCallbacks;

    invoke-interface {v0, p1}, Lcom/android/launcher3/proxy/AppsPickerProxyCallbacks;->setSearchText(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 778
    const/4 v0, 0x0

    goto :goto_0

    .line 781
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public setAppsPickerProxyCallbacks(Lcom/android/launcher3/proxy/AppsPickerProxyCallbacks;)V
    .locals 0
    .param p1, "appsPickerProxyCallback"    # Lcom/android/launcher3/proxy/AppsPickerProxyCallbacks;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsPickerProxyCallback:Lcom/android/launcher3/proxy/AppsPickerProxyCallbacks;

    .line 107
    return-void
.end method

.method public setAppsProxyCallbacks(Lcom/android/launcher3/proxy/AppsProxyCallbacks;)V
    .locals 0
    .param p1, "appsProxyCallback"    # Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    .line 95
    return-void
.end method

.method public setFolderProxyCallbacks(Lcom/android/launcher3/proxy/FolderProxyCallbacks;)V
    .locals 0
    .param p1, "folderProxyCallback"    # Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    .line 99
    return-void
.end method

.method public final setHomeCurrentAsMainPage()I
    .locals 3

    .prologue
    .line 805
    iget-object v2, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v2}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->getPagedView()Lcom/android/launcher3/common/base/view/PagedView;

    move-result-object v1

    .line 806
    .local v1, "pv":Lcom/android/launcher3/common/base/view/PagedView;
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/PagedView;->getCurrentPage()I

    move-result v0

    .line 807
    .local v0, "page":I
    iget-object v2, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v2, v0}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->setAsMainPage(I)V

    .line 809
    const/4 v2, 0x0

    return v2
.end method

.method public setHomeProxyCallbacks(Lcom/android/launcher3/proxy/HomeProxyCallbacks;)V
    .locals 0
    .param p1, "homeProxyCallback"    # Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    .line 91
    return-void
.end method

.method public setLauncherActivityProxyCallbacks(Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;)V
    .locals 0
    .param p1, "launcherActivityProxyCallback"    # Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    .line 87
    return-void
.end method

.method public setStageManagerProxyCallbacks(Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;)V
    .locals 0
    .param p1, "stageManagerProxyCallback"    # Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    .line 112
    return-void
.end method

.method public setWidgetProxyCallbacks(Lcom/android/launcher3/proxy/WidgetProxyCallbacks;)V
    .locals 0
    .param p1, "widgetProxyCallback"    # Lcom/android/launcher3/proxy/WidgetProxyCallbacks;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mWidgetProxyCallbacks:Lcom/android/launcher3/proxy/WidgetProxyCallbacks;

    .line 103
    return-void
.end method

.method public final showAppInfo(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)I
    .locals 2
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;

    .prologue
    .line 213
    if-nez p1, :cond_0

    .line 214
    const/4 v1, -0x3

    .line 220
    :goto_0
    return v1

    .line 217
    :cond_0
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/LauncherAppsCompat;

    move-result-object v0

    .line 218
    .local v0, "launcherApps":Lcom/android/launcher3/common/compat/LauncherAppsCompat;
    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->showAppDetailsForProfile(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    .line 220
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final showAppsFolderRemovePopUp(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)I
    .locals 5
    .param p1, "appInfo"    # Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;

    .prologue
    const/4 v2, -0x3

    const/16 v4, -0x66

    .line 1224
    const/4 v1, 0x0

    .line 1226
    .local v1, "infos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    if-nez p1, :cond_1

    .line 1244
    :cond_0
    :goto_0
    return v2

    .line 1228
    :cond_1
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 1229
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v4}, Lcom/android/launcher3/proxy/LauncherProxy;->getItemsInfoByTitle(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    .line 1234
    :cond_2
    :goto_1
    if-eqz v1, :cond_0

    .line 1235
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

    .line 1236
    .local v0, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    instance-of v3, v0, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v3, :cond_3

    .line 1237
    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    check-cast v0, Lcom/android/launcher3/folder/FolderInfo;

    .end local v0    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    invoke-interface {v3, v0}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->deleteFolder(Lcom/android/launcher3/folder/FolderInfo;)V

    goto :goto_2

    .line 1230
    :cond_4
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1231
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-direct {p0, v3, v4}, Lcom/android/launcher3/proxy/LauncherProxy;->getItemsInfoByComponentName(Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v1

    goto :goto_1

    .line 1244
    :cond_5
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final showAppsTidyUpPreview()I
    .locals 1

    .prologue
    .line 1210
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->showTidyUpPreview()V

    .line 1211
    const/4 v0, 0x0

    return v0
.end method

.method public final unHideApps(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)I
    .locals 1
    .param p1, "appInfo"    # Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;

    .prologue
    .line 705
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/proxy/LauncherProxy;->hideOrUnHideApps(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;Z)I

    move-result v0

    return v0
.end method

.method public final uninstallOrDisableApp(Lcom/android/launcher3/common/base/item/ItemInfo;)I
    .locals 1
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 1536
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    invoke-interface {v0, p1}, Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;->uninstallOrDisableApp(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 1537
    const/4 v0, 0x0

    return v0
.end method

.method public final uninstallWidget(Lcom/android/launcher3/common/base/item/ItemInfo;)I
    .locals 2
    .param p1, "info"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 911
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;->getTopStageMode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    instance-of v0, p1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    if-nez v0, :cond_1

    .line 913
    :cond_0
    const/4 v0, -0x2

    .line 916
    .end local p1    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :goto_0
    return v0

    .line 915
    .restart local p1    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mWidgetProxyCallbacks:Lcom/android/launcher3/proxy/WidgetProxyCallbacks;

    check-cast p1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    .end local p1    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    invoke-interface {v0, p1}, Lcom/android/launcher3/proxy/WidgetProxyCallbacks;->uninstallWidget(Lcom/android/launcher3/common/base/item/PendingAddItemInfo;)V

    .line 916
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final unlockFolder(Lcom/android/launcher3/common/base/item/ItemInfo;)I
    .locals 3
    .param p1, "folderInfo"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    const/4 v2, -0x1

    .line 1695
    instance-of v1, p1, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v1, :cond_1

    .line 1696
    invoke-static {}, Lcom/android/launcher3/folder/folderlock/FolderLock;->getInstance()Lcom/android/launcher3/folder/folderlock/FolderLock;

    move-result-object v0

    .local v0, "folderLock":Lcom/android/launcher3/folder/folderlock/FolderLock;
    move-object v1, p1

    .line 1697
    check-cast v1, Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/folderlock/FolderLock;->isLockedFolder(Lcom/android/launcher3/folder/FolderInfo;)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    .line 1704
    .end local v0    # "folderLock":Lcom/android/launcher3/folder/folderlock/FolderLock;
    :goto_0
    return v1

    .line 1700
    .restart local v0    # "folderLock":Lcom/android/launcher3/folder/folderlock/FolderLock;
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/folderlock/FolderLock;->setBackupInfo(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 1701
    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/folderlock/FolderLock;->startUnlockVerifyActivity(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 1702
    const/4 v1, 0x0

    goto :goto_0

    .end local v0    # "folderLock":Lcom/android/launcher3/folder/folderlock/FolderLock;
    :cond_1
    move v1, v2

    .line 1704
    goto :goto_0
.end method

.method public final unlockSingleApp(Lcom/android/launcher3/common/base/item/ItemInfo;)I
    .locals 2
    .param p1, "itemInfo"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 1719
    invoke-static {}, Lcom/android/launcher3/folder/folderlock/FolderLock;->getInstance()Lcom/android/launcher3/folder/folderlock/FolderLock;

    move-result-object v0

    .line 1720
    .local v0, "folderLock":Lcom/android/launcher3/folder/folderlock/FolderLock;
    instance-of v1, p1, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/folderlock/FolderLock;->isLockedApp(Lcom/android/launcher3/common/base/item/IconInfo;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1721
    :cond_0
    const/4 v1, -0x1

    .line 1725
    :goto_0
    return v1

    .line 1723
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/folderlock/FolderLock;->setBackupInfo(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 1724
    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/folderlock/FolderLock;->startUnlockVerifyActivity(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 1725
    const/4 v1, 0x0

    goto :goto_0
.end method
