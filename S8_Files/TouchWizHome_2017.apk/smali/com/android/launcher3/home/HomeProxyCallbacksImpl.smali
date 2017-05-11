.class Lcom/android/launcher3/home/HomeProxyCallbacksImpl;
.super Ljava/lang/Object;
.source "HomeProxyCallbacksImpl.java"

# interfaces
.implements Lcom/android/launcher3/proxy/HomeProxyCallbacks;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mHomeController:Lcom/android/launcher3/home/HomeController;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/HomeController;)V
    .locals 1
    .param p1, "homeController"    # Lcom/android/launcher3/home/HomeController;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-class v0, Lcom/android/launcher3/home/HomeProxyCallbacksImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/home/HomeProxyCallbacksImpl;->TAG:Ljava/lang/String;

    .line 38
    iput-object p1, p0, Lcom/android/launcher3/home/HomeProxyCallbacksImpl;->mHomeController:Lcom/android/launcher3/home/HomeController;

    .line 39
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/home/HomeProxyCallbacksImpl;)Lcom/android/launcher3/home/HomeController;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeProxyCallbacksImpl;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/launcher3/home/HomeProxyCallbacksImpl;->mHomeController:Lcom/android/launcher3/home/HomeController;

    return-object v0
.end method

.method private checkEmptySpace(III[I)J
    .locals 14
    .param p1, "startPage"    # I
    .param p2, "spanX"    # I
    .param p3, "spanY"    # I
    .param p4, "resultPosition"    # [I

    .prologue
    .line 87
    const/4 v2, 0x2

    new-array v1, v2, [I

    .line 88
    .local v1, "emptyCell":[I
    iget-object v2, p0, Lcom/android/launcher3/home/HomeProxyCallbacksImpl;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeController;->getHomeLoader()Lcom/android/launcher3/home/HomeLoader;

    move-result-object v2

    .line 89
    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeLoader;->getItemPositionHelper()Lcom/android/launcher3/home/HomeItemPositionHelper;

    move-result-object v0

    .line 91
    .local v0, "positionHelper":Lcom/android/launcher3/home/HomeItemPositionHelper;
    const/4 v6, 0x0

    .line 92
    .local v6, "find":Z
    move v9, p1

    .line 93
    .local v9, "toPage":I
    const-wide/16 v10, -0x1

    .line 95
    .local v10, "screenId":J
    iget-object v2, p0, Lcom/android/launcher3/home/HomeProxyCallbacksImpl;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeController;->getHomeLoader()Lcom/android/launcher3/home/HomeLoader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeLoader;->getWorkspaceScreenCount()I

    move-result v2

    add-int/lit8 v8, v2, -0x1

    .line 96
    .local v8, "lastPageIdx":I
    if-ltz p1, :cond_0

    if-gt p1, v8, :cond_0

    .line 97
    iget-object v2, p0, Lcom/android/launcher3/home/HomeProxyCallbacksImpl;->mHomeController:Lcom/android/launcher3/home/HomeController;

    .line 98
    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeController;->getHomeLoader()Lcom/android/launcher3/home/HomeLoader;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/launcher3/home/HomeLoader;->getWorkspaceScreenId(I)J

    move-result-wide v2

    move/from16 v4, p2

    move/from16 v5, p3

    .line 97
    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/home/HomeItemPositionHelper;->findEmptyCell([IJII)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 99
    const/4 v6, 0x1

    .line 100
    iget-object v2, p0, Lcom/android/launcher3/home/HomeProxyCallbacksImpl;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeController;->getHomeLoader()Lcom/android/launcher3/home/HomeLoader;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/android/launcher3/home/HomeLoader;->getWorkspaceScreenId(I)J

    move-result-wide v10

    .line 104
    :cond_0
    if-nez v6, :cond_2

    .line 105
    move v7, p1

    .local v7, "i":I
    :goto_0
    if-gt v7, v8, :cond_1

    .line 106
    iget-object v2, p0, Lcom/android/launcher3/home/HomeProxyCallbacksImpl;->mHomeController:Lcom/android/launcher3/home/HomeController;

    .line 107
    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeController;->getHomeLoader()Lcom/android/launcher3/home/HomeLoader;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/android/launcher3/home/HomeLoader;->getWorkspaceScreenId(I)J

    move-result-wide v2

    move/from16 v4, p2

    move/from16 v5, p3

    .line 106
    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/home/HomeItemPositionHelper;->findEmptyCell([IJII)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 109
    move v9, v7

    .line 110
    const/4 v6, 0x1

    .line 111
    iget-object v2, p0, Lcom/android/launcher3/home/HomeProxyCallbacksImpl;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeController;->getHomeLoader()Lcom/android/launcher3/home/HomeLoader;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/android/launcher3/home/HomeLoader;->getWorkspaceScreenId(I)J

    move-result-wide v10

    .line 115
    :cond_1
    if-nez v6, :cond_2

    .line 116
    iget-object v2, p0, Lcom/android/launcher3/home/HomeProxyCallbacksImpl;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeController;->isOverviewState()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 117
    iget-object v2, p0, Lcom/android/launcher3/home/HomeProxyCallbacksImpl;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeController;->getWorkspace()Lcom/android/launcher3/home/Workspace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/home/Workspace;->addNewWorkspaceScreen()J

    move-result-wide v10

    .line 124
    :goto_1
    add-int/lit8 v9, v8, 0x1

    .line 129
    .end local v7    # "i":I
    :cond_2
    const/4 v2, 0x0

    aput v9, p4, v2

    .line 130
    const/4 v2, 0x1

    const/4 v3, 0x0

    aget v3, v1, v3

    aput v3, p4, v2

    .line 131
    const/4 v2, 0x2

    const/4 v3, 0x1

    aget v3, v1, v3

    aput v3, p4, v2

    .line 133
    return-wide v10

    .line 105
    .restart local v7    # "i":I
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 119
    :cond_4
    iget-object v2, p0, Lcom/android/launcher3/home/HomeProxyCallbacksImpl;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeController;->getHomeLoader()Lcom/android/launcher3/home/HomeLoader;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/home/HomeProxyCallbacksImpl;->mHomeController:Lcom/android/launcher3/home/HomeController;

    .line 120
    invoke-virtual {v3}, Lcom/android/launcher3/home/HomeController;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object v3

    add-int/lit8 v4, v8, 0x1

    const-wide/16 v12, -0x1

    .line 119
    invoke-virtual {v2, v3, v4, v12, v13}, Lcom/android/launcher3/home/HomeLoader;->insertWorkspaceScreen(Landroid/content/Context;IJ)J

    move-result-wide v10

    goto :goto_1
.end method

.method private findWidgetItemInList(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 5
    .param p2, "itemTitle"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 411
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .local p3, "resuleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 412
    .local v0, "i":Lcom/android/launcher3/common/base/item/ItemInfo;
    instance-of v4, v0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    if-eqz v4, :cond_0

    move-object v1, v0

    .line 413
    check-cast v1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    .line 415
    .local v1, "pWidget":Lcom/android/launcher3/widget/PendingAddWidgetInfo;
    const/4 v2, 0x0

    .line 417
    .local v2, "widgetName":Ljava/lang/String;
    iget-object v4, v1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->mLabel:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 418
    iget-object v4, v1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->mLabel:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 422
    :cond_1
    :goto_1
    if-eqz v2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 423
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 419
    :cond_2
    invoke-virtual {v1}, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->getApplicationLabel()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 420
    invoke-virtual {v1}, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->getApplicationLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 427
    .end local v0    # "i":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v1    # "pWidget":Lcom/android/launcher3/widget/PendingAddWidgetInfo;
    .end local v2    # "widgetName":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private removeScreen()V
    .locals 4

    .prologue
    .line 285
    iget-object v0, p0, Lcom/android/launcher3/home/HomeProxyCallbacksImpl;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->isOverviewState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/android/launcher3/home/HomeProxyCallbacksImpl;->TAG:Ljava/lang/String;

    const-string v1, "removeScreen - not isOverviewState"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :goto_0
    return-void

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/home/HomeProxyCallbacksImpl;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->getWorkspace()Lcom/android/launcher3/home/Workspace;

    move-result-object v0

    const-wide/16 v2, -0x191

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/home/Workspace;->getPageIndexForScreenId(J)I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/home/HomeProxyCallbacksImpl;->mHomeController:Lcom/android/launcher3/home/HomeController;

    .line 290
    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->getWorkspace()Lcom/android/launcher3/home/Workspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 291
    iget-object v0, p0, Lcom/android/launcher3/home/HomeProxyCallbacksImpl;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->getWorkspace()Lcom/android/launcher3/home/Workspace;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/home/HomeProxyCallbacksImpl;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->getWorkspace()Lcom/android/launcher3/home/Workspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/Workspace;->setCurrentPage(I)V

    .line 293
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/home/HomeProxyCallbacksImpl;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->getWorkspace()Lcom/android/launcher3/home/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->touchPageDeleteButton()V

    goto :goto_0
.end method


# virtual methods
.method public addHomeWidget(Lcom/android/launcher3/common/base/item/PendingAddItemInfo;)Z
    .locals 14
    .param p1, "widget"    # Lcom/android/launcher3/common/base/item/PendingAddItemInfo;

    .prologue
    const/4 v2, 0x2

    const/4 v12, 0x1

    const/4 v13, 0x0

    .line 538
    if-eqz p1, :cond_1

    .line 540
    const/4 v0, 0x3

    new-array v10, v0, [I

    .line 541
    .local v10, "resultPosition":[I
    iget-object v0, p0, Lcom/android/launcher3/home/HomeProxyCallbacksImpl;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->getWorkspace()Lcom/android/launcher3/home/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v11

    .line 542
    .local v11, "startIdx":I
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeProxyCallbacksImpl;->neededToAdjustZeroPage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 543
    add-int/lit8 v11, v11, -0x1

    .line 546
    :cond_0
    iget v0, p1, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->spanX:I

    iget v1, p1, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->spanY:I

    invoke-direct {p0, v11, v0, v1, v10}, Lcom/android/launcher3/home/HomeProxyCallbacksImpl;->checkEmptySpace(III[I)J

    move-result-wide v4

    .line 549
    .local v4, "screenId":J
    new-array v6, v2, [I

    .line 550
    .local v6, "mTargetCell":[I
    aget v0, v10, v12

    aput v0, v6, v13

    .line 551
    aget v0, v10, v2

    aput v0, v6, v12

    .line 553
    iget-object v0, p0, Lcom/android/launcher3/home/HomeProxyCallbacksImpl;->mHomeController:Lcom/android/launcher3/home/HomeController;

    const-wide/16 v2, -0x64

    iget v7, p1, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->spanX:I

    iget v8, p1, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->spanY:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v8}, Lcom/android/launcher3/home/HomeController;->addPendingItem(Lcom/android/launcher3/common/base/item/PendingAddItemInfo;JJ[III)V

    .line 556
    aget v9, v10, v13

    .line 557
    .local v9, "moveTo":I
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/launcher3/home/HomeProxyCallbacksImpl$2;

    invoke-direct {v1, p0, v9}, Lcom/android/launcher3/home/HomeProxyCallbacksImpl$2;-><init>(Lcom/android/launcher3/home/HomeProxyCallbacksImpl;I)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move v0, v12

    .line 569
    .end local v4    # "screenId":J
    .end local v6    # "mTargetCell":[I
    .end local v9    # "moveTo":I
    .end local v10    # "resultPosition":[I
    .end local v11    # "startIdx":I
    :goto_0
    return v0

    :cond_1
    move v0, v13

    goto :goto_0
.end method

.method public addNewHomePageInOverViewMode()V
    .locals 3

    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/launcher3/home/HomeProxyCallbacksImpl;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->getWorkspace()Lcom/android/launcher3/home/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->addNewWorkspaceScreen()J

    .line 273
    iget-object v0, p0, Lcom/android/launcher3/home/HomeProxyCallbacksImpl;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->getWorkspace()Lcom/android/launcher3/home/Workspace;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/home/HomeProxyCallbacksImpl;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->getWorkspace()Lcom/android/launcher3/home/Workspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/home/Workspace;->moveToScreen(IZ)V

    .line 274
    return-void
.end method

.method public addNewPage()V
    .locals 6

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/launcher3/home/HomeProxyCallbacksImpl;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->getHomeLoader()Lcom/android/launcher3/home/HomeLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/home/HomeProxyCallbacksImpl;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/home/HomeProxyCallbacksImpl;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeController;->getWorkspace()Lcom/android/launcher3/home/Workspace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/home/Workspace;->getPageCount()I

    move-result v2

    const-wide/16 v4, -0x1

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/android/launcher3/home/HomeLoader;->insertWorkspaceScreen(Landroid/content/Context;IJ)J

    .line 268
    return-void
.end method

.method public alignHomeIcon(IZ)V
    .locals 1
    .param p1, "page"    # I
    .param p2, "isTop"    # Z

    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/launcher3/home/HomeProxyCallbacksImpl;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->getWorkspace()Lcom/android/launcher3/home/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->isPageMoving()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/android/launcher3/home/HomeProxyCallbacksImpl;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->getWorkspace()Lcom/android/launcher3/home/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->pageEndMoving()V

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/home/HomeProxyCallbacksImpl;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->getWorkspace()Lcom/android/launcher3/home/Workspace;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/home/Workspace;->setCurrentPage(I)V

    .line 302
    iget-object v0, p0, Lcom/android/launcher3/home/HomeProxyCallbacksImpl;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->getWorkspace()Lcom/android/launcher3/home/Workspace;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/launcher3/home/Workspace;->autoAlignItems(Z)V

    .line 303
    return-void
.end method

.method public changeFolderTitle(Lcom/android/launcher3/common/base/item/ItemInfo;Ljava/lang/String;)V
    .locals 2
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;
    .param p2, "newTitle"    # Ljava/lang/String;

    .prologue
    .line 242
    iget-object v1, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/home/HomeProxyCallbacksImpl;->getItemViewByTitle(Ljava/lang/String;)Lcom/android/launcher3/common/view/IconView;

    move-result-object v0

    .line 243
    .local v0, "iv":Lcom/android/launcher3/common/view/IconView;
    if-nez v0, :cond_0

    .line 251
    :goto_0
    return-void

    .line 247
    :cond_0
    iput-object p2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    .line 248
    iget-object v1, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/view/IconView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    iget-object v1, p0, Lcom/android/launcher3/home/HomeProxyCallbacksImpl;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/home/HomeController;->updateItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto :goto_0
.end method

.method public changeHomePageOrder(II)V
    .locals 4
    .param p1, "fromPage"    # I
    .param p2, "toPage"    # I

    .prologue
    .line 438
    iget-object v1, p0, Lcom/android/launcher3/home/HomeProxyCallbacksImpl;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->getWorkspace()Lcom/android/launcher3/home/Workspace;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/home/HomeProxyCallbacksImpl;->mHomeController:Lcom/android/launcher3/home/HomeController;

    .line 439
    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeController;->getWorkspace()Lcom/android/launcher3/home/Workspace;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/home/HomeProxyCallbacksImpl;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v3}, Lcom/android/launcher3/home/HomeController;->getWorkspace()Lcom/android/launcher3/home/Workspace;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/home/Workspace;->getDefaultPage()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/home/Workspace;->getScreenIdForPageIndex(I)J

    move-result-wide v2

    .line 438
    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/home/Workspace;->updateDefaultHomeScreenId(J)V

    .line 441
    iget-object v1, p0, Lcom/android/launcher3/home/HomeProxyCallbacksImpl;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->getWorkspace()Lcom/android/launcher3/home/Workspace;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/launcher3/home/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 442
    .local v0, "v":Landroid/view/View;
    iget-object v1, p0, Lcom/android/launcher3/home/HomeProxyCallbacksImpl;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->getWorkspace()Lcom/android/launcher3/home/Workspace;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/launcher3/home/Workspace;->removeView(Landroid/view/View;)V

    .line 443
    iget-object v1, p0, Lcom/android/launcher3/home/HomeProxyCallbacksImpl;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->getWorkspace()Lcom/android/launcher3/home/Workspace;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/android/launcher3/home/Workspace;->addView(Landroid/view/View;I)V

    .line 445
    iget-object v1, p0, Lcom/android/launcher3/home/HomeProxyCallbacksImpl;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->getWorkspace()Lcom/android/launcher3/home/Workspace;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/launcher3/home/Workspace;->setCurrentPage(I)V

    .line 447
    iget-object v1, p0, Lcom/android/launcher3/home/HomeProxyCallbacksImpl;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->getWorkspace()Lcom/android/launcher3/home/Workspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->getDefaultPage()I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 448
    iget-object v1, p0, Lcom/android/launcher3/home/HomeProxyCallbacksImpl;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->getWorkspace()Lcom/android/launcher3/home/Workspace;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/home/HomeProxyCallbacksImpl;->mHomeController:Lcom/android/launcher3/home/HomeController;

    .line 449
    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeController;->getWorkspace()Lcom/android/launcher3/home/Workspace;

    move-result-object v2

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    .end local v0    # "v":Landroid/view/View;
    invoke-virtual {v2, v0}, Lcom/android/launcher3/home/Workspace;->getIdForScreen(Lcom/android/launcher3/common/base/view/CellLayout;)J

    move-result-wide v2

    .line 448
    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/home/Workspace;->updateDefaultHomeScreenId(J)V

    .line 451
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/home/HomeProxyCallbacksImpl;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->getWorkspace()Lcom/android/launcher3/home/Workspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->onEndReordering()V

    .line 452
    return-void
.end method

.method public changeScreengrid(Ljava/lang/String;)V
    .locals 3
    .param p1, "gridOption"    # Ljava/lang/String;

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/launcher3/home/HomeProxyCallbacksImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeScreengrid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iget-object v0, p0, Lcom/android/launcher3/home/HomeProxyCallbacksImpl;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->getScreenGridPanel()Lcom/android/launcher3/home/ScreenGridPanel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/home/ScreenGridPanel;->setScreenGridProxy(Ljava/lang/String;)V

    .line 320
    return-void
.end method

.method public checkAbleAlignIcon(IZ)Z
    .locals 2
    .param p1, "page"    # I
    .param p2, "isUpward"    # Z

    .prologue
    .line 488
    iget-object v0, p0, Lcom/android/launcher3/home/HomeProxyCallbacksImpl;->mHomeController:Lcom/android/launcher3/home/HomeController;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1, p1}, Lcom/android/launcher3/home/HomeController;->autoAlignItems(ZZI)Z

    move-result v0

    return v0
.end method

.method public checkMatchGridOption(Ljava/lang/String;)Z
    .locals 1
    .param p1, "gridOption"    # Ljava/lang/String;

    .prologue
    .line 329
    iget-object v0, p0, Lcom/android/launcher3/home/HomeProxyCallbacksImpl;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->getScreenGridPanel()Lcom/android/launcher3/home/ScreenGridPanel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/home/ScreenGridPanel;->checkMatchGridOption(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public checkNeedDisplayAutoalignDialog()Z
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lcom/android/launcher3/home/HomeProxyCallbacksImpl;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->getWorkspace()Lcom/android/launcher3/home/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->checkNeedDisplayAutoalignDialog()Z

    move-result v0

    return v0
.end method

.method public checkValidGridOption(Ljava/lang/String;)Z
    .locals 1
    .param p1, "gridOption"    # Ljava/lang/String;

    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/launcher3/home/HomeProxyCallbacksImpl;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->getScreenGridPanel()Lcom/android/launcher3/home/ScreenGridPanel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/home/ScreenGridPanel;->checkValidGridOption(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public createShortcut(Landroid/content/ComponentName;Lcom/android/launcher3/common/base/item/ItemInfo;I)V
    .locals 12
    .param p1, "cn"    # Landroid/content/ComponentName;
    .param p2, "itemInfo"    # Lcom/android/launcher3/common/base/item/ItemInfo;
    .param p3, "page"    # I

    .prologue
    const/4 v10, 0x0

    const/4 v4, 0x1

    .line 197
    const/4 v8, 0x0

    .line 198
    .local v8, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    if-eqz p1, :cond_4

    .line 200
    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v2

    .line 199
    invoke-static {p1, v2, v4}, Lcom/android/launcher3/common/model/DataLoader;->getItemInfoByComponentName(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;Z)Ljava/util/ArrayList;

    move-result-object v9

    .line 201
    .local v9, "itemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 238
    .end local v9    # "itemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    :cond_0
    :goto_0
    return-void

    .line 204
    .restart local v9    # "itemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    :cond_1
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    check-cast v8, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 209
    .end local v9    # "itemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .restart local v8    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_2
    :goto_1
    if-eqz v8, :cond_0

    .line 214
    const/4 v2, 0x2

    new-array v1, v2, [I

    .line 215
    .local v1, "emptyCell":[I
    iget-object v2, p0, Lcom/android/launcher3/home/HomeProxyCallbacksImpl;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeController;->getHomeLoader()Lcom/android/launcher3/home/HomeLoader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeLoader;->getItemPositionHelper()Lcom/android/launcher3/home/HomeItemPositionHelper;

    move-result-object v0

    .line 216
    .local v0, "positionHelper":Lcom/android/launcher3/home/HomeItemPositionHelper;
    move v7, p3

    .local v7, "i":I
    :goto_2
    iget-object v2, p0, Lcom/android/launcher3/home/HomeProxyCallbacksImpl;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeController;->getWorkspace()Lcom/android/launcher3/home/Workspace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/home/Workspace;->getPageCount()I

    move-result v2

    if-ge v7, v2, :cond_3

    .line 217
    iget-object v2, p0, Lcom/android/launcher3/home/HomeProxyCallbacksImpl;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeController;->getHomeLoader()Lcom/android/launcher3/home/HomeLoader;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/android/launcher3/home/HomeLoader;->getWorkspaceScreenId(I)J

    move-result-wide v2

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/home/HomeItemPositionHelper;->findEmptyCell([IJII)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 218
    const/4 v6, 0x0

    .line 219
    .local v6, "hItem":Lcom/android/launcher3/common/base/item/ItemInfo;
    instance-of v2, v8, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v2, :cond_5

    move-object v2, v8

    .line 220
    check-cast v2, Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/FolderInfo;->makeCloneInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v6

    .line 221
    invoke-static {}, Lcom/android/launcher3/common/model/FavoritesProvider;->getInstance()Lcom/android/launcher3/common/model/FavoritesProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/common/model/FavoritesProvider;->generateNewItemId()J

    move-result-wide v2

    iput-wide v2, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    .line 226
    :goto_3
    iget-object v2, p0, Lcom/android/launcher3/home/HomeProxyCallbacksImpl;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeController;->getHomeLoader()Lcom/android/launcher3/home/HomeLoader;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/android/launcher3/home/HomeLoader;->getWorkspaceScreenId(I)J

    move-result-wide v2

    iput-wide v2, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    .line 227
    aget v2, v1, v10

    iput v2, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    .line 228
    aget v2, v1, v4

    iput v2, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    .line 229
    iput v4, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    iput v4, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    .line 231
    iget-object v2, p0, Lcom/android/launcher3/home/HomeProxyCallbacksImpl;->mHomeController:Lcom/android/launcher3/home/HomeController;

    iget-wide v10, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    invoke-virtual {v2, v6, v1, v10, v11}, Lcom/android/launcher3/home/HomeController;->addItemOnHome(Lcom/android/launcher3/common/base/item/ItemInfo;[IJ)V

    .line 235
    .end local v6    # "hItem":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_3
    iget-object v2, p0, Lcom/android/launcher3/home/HomeProxyCallbacksImpl;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeController;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/home/HomeProxyCallbacksImpl;->mHomeController:Lcom/android/launcher3/home/HomeController;

    if-eq v2, v3, :cond_0

    .line 236
    iget-object v2, p0, Lcom/android/launcher3/home/HomeProxyCallbacksImpl;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeController;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v4, v3}, Lcom/android/launcher3/common/stage/StageManager;->startStage(ILcom/android/launcher3/common/stage/StageEntry;)V

    goto/16 :goto_0

    .line 205
    .end local v0    # "positionHelper":Lcom/android/launcher3/home/HomeItemPositionHelper;
    .end local v1    # "emptyCell":[I
    .end local v7    # "i":I
    :cond_4
    if-eqz p2, :cond_2

    .line 206
    move-object v8, p2

    goto/16 :goto_1

    .restart local v0    # "positionHelper":Lcom/android/launcher3/home/HomeItemPositionHelper;
    .restart local v1    # "emptyCell":[I
    .restart local v6    # "hItem":Lcom/android/launcher3/common/base/item/ItemInfo;
    .restart local v7    # "i":I
    :cond_5
    move-object v2, v8

    .line 223
    check-cast v2, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/common/base/item/IconInfo;->makeCloneInfo()Lcom/android/launcher3/common/base/item/IconInfo;

    move-result-object v6

    goto :goto_3

    .line 216
    .end local v6    # "hItem":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2
.end method

.method public enterHomeEditView()V
    .locals 2

    .prologue
    .line 307
    iget-object v0, p0, Lcom/android/launcher3/home/HomeProxyCallbacksImpl;->mHomeController:Lcom/android/launcher3/home/HomeController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/HomeController;->enterOverviewState(Z)V

    .line 308
    return-void
.end method

.method public enterHomeSettingGridSettingView()V
    .locals 2

    .prologue
    .line 312
    iget-object v0, p0, Lcom/android/launcher3/home/HomeProxyCallbacksImpl;->mHomeController:Lcom/android/launcher3/home/HomeController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/HomeController;->enterScreenGridState(Z)V

    .line 313
    iget-object v0, p0, Lcom/android/launcher3/home/HomeProxyCallbacksImpl;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->backupOriginalData()V

    .line 314
    return-void
.end method

.method public enterWidgetResizeMode(Lcom/android/launcher3/common/base/item/ItemInfo;)Z
    .locals 10
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 464
    instance-of v5, p1, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    if-nez v5, :cond_1

    .line 478
    :cond_0
    :goto_0
    return v3

    :cond_1
    move-object v2, p1

    .line 468
    check-cast v2, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    .line 469
    .local v2, "widget":Lcom/android/launcher3/home/LauncherAppWidgetInfo;
    iget-object v1, v2, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 470
    .local v1, "hostView":Landroid/appwidget/AppWidgetHostView;
    iget-object v5, p0, Lcom/android/launcher3/home/HomeProxyCallbacksImpl;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v5}, Lcom/android/launcher3/home/HomeController;->getWorkspace()Lcom/android/launcher3/home/Workspace;

    move-result-object v5

    iget-wide v6, v2, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->screenId:J

    invoke-virtual {v5, v6, v7}, Lcom/android/launcher3/home/Workspace;->getScreenWithId(J)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v0

    .line 472
    .local v0, "cellLayout":Lcom/android/launcher3/common/base/view/CellLayout;
    iget-object v5, p0, Lcom/android/launcher3/home/HomeProxyCallbacksImpl;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v5}, Lcom/android/launcher3/home/HomeController;->getWorkspace()Lcom/android/launcher3/home/Workspace;

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher3/home/HomeProxyCallbacksImpl;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v6}, Lcom/android/launcher3/home/HomeController;->getWorkspace()Lcom/android/launcher3/home/Workspace;

    move-result-object v6

    iget-wide v8, v2, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->screenId:J

    invoke-virtual {v6, v8, v9}, Lcom/android/launcher3/home/Workspace;->getPageIndexForScreenId(J)I

    move-result v6

    invoke-virtual {v5, v6, v4}, Lcom/android/launcher3/home/Workspace;->moveToScreen(IZ)V

    .line 474
    iget-object v5, p0, Lcom/android/launcher3/home/HomeProxyCallbacksImpl;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v5, v1, v0, v3}, Lcom/android/launcher3/home/HomeController;->canEnterResizeMode(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/common/base/view/CellLayout;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 475
    iget-object v3, p0, Lcom/android/launcher3/home/HomeProxyCallbacksImpl;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v3, v1, v0}, Lcom/android/launcher3/home/HomeController;->enterResizeStateDelay(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/common/base/view/CellLayout;)V

    move v3, v4

    .line 476
    goto :goto_0
.end method

.method public exitSubState()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 348
    iget-object v2, p0, Lcom/android/launcher3/home/HomeProxyCallbacksImpl;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeController;->getWorkspace()Lcom/android/launcher3/home/Workspace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/home/Workspace;->getChildCount()I

    move-result v1

    .line 349
    .local v1, "screenCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 350
    iget-object v2, p0, Lcom/android/launcher3/home/HomeProxyCallbacksImpl;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeController;->getWorkspace()Lcom/android/launcher3/home/Workspace;

    move-result-object v2

    invoke-virtual {v2, v3, v3, v3, v0}, Lcom/android/launcher3/home/Workspace;->setVisibilityOnCustomLayout(ZZZI)V

    .line 349
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 352
    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/home/HomeProxyCallbacksImpl;->mHomeController:Lcom/android/launcher3/home/HomeController;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/launcher3/home/HomeController;->enterNormalState(Z)V

    .line 353
    return-void
.end method

.method public getDefaultPage()I
    .locals 1

    .prologue
    .line 522
    iget-object v0, p0, Lcom/android/launcher3/home/HomeProxyCallbacksImpl;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->getWorkspace()Lcom/android/launcher3/home/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->getDefaultPage()I

    move-result v0

    return v0
.end method

.method public getFolderItemCountByTitle(Ljava/lang/String;)I
    .locals 1
    .param p1, "itemTitle"    # Ljava/lang/String;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/launcher3/home/HomeProxyCallbacksImpl;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/home/HomeController;->getFolderItemCount(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getFolderItemViewByTitle(Ljava/lang/String;)Lcom/android/launcher3/folder/view/FolderIconView;
    .locals 4
    .param p1, "itemTitle"    # Ljava/lang/String;

    .prologue
    .line 43
    iget-object v2, p0, Lcom/android/launcher3/home/HomeProxyCallbacksImpl;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeController;->getWorkspace()Lcom/android/launcher3/home/Workspace;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/launcher3/home/Workspace;->findIconViews(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 45
    .local v0, "iconViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/view/IconView;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/view/IconView;

    .line 46
    .local v1, "v":Lcom/android/launcher3/common/view/IconView;
    instance-of v3, v1, Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v3, :cond_0

    .line 47
    check-cast v1, Lcom/android/launcher3/folder/view/FolderIconView;

    .line 50
    .end local v1    # "v":Lcom/android/launcher3/common/view/IconView;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getItemViewByComponentName(Landroid/content/ComponentName;)Landroid/view/View;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/HomeProxyCallbacksImpl;->getItemViewByComponentName(Landroid/content/ComponentName;)Lcom/android/launcher3/common/view/IconView;

    move-result-object v0

    return-object v0
.end method

.method public getItemViewByComponentName(Landroid/content/ComponentName;)Lcom/android/launcher3/common/view/IconView;
    .locals 1
    .param p1, "cn"    # Landroid/content/ComponentName;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/launcher3/home/HomeProxyCallbacksImpl;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->getWorkspace()Lcom/android/launcher3/home/Workspace;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/home/Workspace;->findIconView(Landroid/content/ComponentName;)Lcom/android/launcher3/common/view/IconView;

    move-result-object v0

    return-object v0
.end method

.method public getItemViewByTitle(Ljava/lang/String;)Lcom/android/launcher3/common/view/IconView;
    .locals 4
    .param p1, "itemTitle"    # Ljava/lang/String;

    .prologue
    .line 65
    iget-object v2, p0, Lcom/android/launcher3/home/HomeProxyCallbacksImpl;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeController;->getWorkspace()Lcom/android/launcher3/home/Workspace;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/launcher3/home/Workspace;->findIconViews(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 67
    .local v0, "iconViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/view/IconView;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/view/IconView;

    .line 68
    .local v1, "v":Lcom/android/launcher3/common/view/IconView;
    instance-of v3, v1, Lcom/android/launcher3/folder/view/FolderIconView;

    if-nez v3, :cond_0

    .line 73
    .end local v1    # "v":Lcom/android/launcher3/common/view/IconView;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPageIndexForScreenId(J)I
    .locals 1
    .param p1, "screenId"    # J

    .prologue
    .line 533
    iget-object v0, p0, Lcom/android/launcher3/home/HomeProxyCallbacksImpl;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->getWorkspace()Lcom/android/launcher3/home/Workspace;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/home/Workspace;->getPageIndexForScreenId(J)I

    move-result v0

    return v0
.end method

.method public getPagedView()Lcom/android/launcher3/common/base/view/PagedView;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/launcher3/home/HomeProxyCallbacksImpl;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->getWorkspace()Lcom/android/launcher3/home/Workspace;

    move-result-object v0

    return-object v0
.end method

.method public getWidgetItemsInfoByComponentName(Landroid/content/ComponentName;)Ljava/util/ArrayList;
    .locals 8
    .param p1, "cn"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 384
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 386
    .local v2, "itemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {p1, v3, v4}, Lcom/android/launcher3/common/model/DataLoader;->getItemInfoByComponentName(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 387
    .local v0, "cnItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 388
    .local v1, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-wide v4, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v6, -0x64

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    iget v4, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    .line 390
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 393
    .end local v1    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_1
    return-object v2
.end method

.method public getWidgetItemsInfoByPackageName(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 398
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 400
    .local v2, "itemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/android/launcher3/common/model/DataLoader;->getItemsByPackageName(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Ljava/util/ArrayList;

    move-result-object v0

    .line 401
    .local v0, "cnItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 402
    .local v1, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-wide v4, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v6, -0x64

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    iget v4, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    .line 404
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 407
    .end local v1    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_1
    return-object v2
.end method

.method public getWidgetItemsInfoByTitle(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 10
    .param p1, "itemTitle"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 358
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 359
    .local v0, "findItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 361
    .local v3, "returnItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    iget-object v6, p0, Lcom/android/launcher3/home/HomeProxyCallbacksImpl;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v6}, Lcom/android/launcher3/home/HomeController;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getLauncherModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/LauncherModel;->getWidgetsLoader()Lcom/android/launcher3/widget/model/WidgetLoader;

    move-result-object v5

    .line 362
    .local v5, "widgetLoader":Lcom/android/launcher3/widget/model/WidgetLoader;
    invoke-virtual {v5}, Lcom/android/launcher3/widget/model/WidgetLoader;->getWidgetItems()Ljava/util/List;

    move-result-object v4

    .line 364
    .local v4, "wItems":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    if-eqz v4, :cond_1

    .line 365
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 366
    .local v2, "l":Ljava/lang/Object;
    instance-of v7, v2, Ljava/util/ArrayList;

    if-eqz v7, :cond_0

    .line 367
    check-cast v2, Ljava/util/ArrayList;

    .end local v2    # "l":Ljava/lang/Object;
    invoke-direct {p0, v2, p1, v0}, Lcom/android/launcher3/home/HomeProxyCallbacksImpl;->findWidgetItemInList(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 372
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 373
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 374
    .local v1, "i":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-object v7, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    .line 375
    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v8

    const/4 v9, 0x0

    .line 374
    invoke-static {v7, v8, v9}, Lcom/android/launcher3/common/model/DataLoader;->getItemInfoByComponentName(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;Z)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 379
    .end local v1    # "i":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_2
    return-object v3
.end method

.method public getWidgetView(Landroid/content/ComponentName;)Landroid/view/View;
    .locals 1
    .param p1, "cn"    # Landroid/content/ComponentName;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/launcher3/home/HomeProxyCallbacksImpl;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->getWorkspace()Lcom/android/launcher3/home/Workspace;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/home/Workspace;->findWidgetView(Landroid/content/ComponentName;)Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    move-result-object v0

    return-object v0
.end method

.method public hasPageDeleteButton(I)Z
    .locals 2
    .param p1, "page"    # I

    .prologue
    .line 511
    iget-object v1, p0, Lcom/android/launcher3/home/HomeProxyCallbacksImpl;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->getWorkspace()Lcom/android/launcher3/home/Workspace;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/launcher3/home/Workspace;->getPageDeleteBtn(I)Landroid/view/View;

    move-result-object v0

    .line 512
    .local v0, "deleteButton":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasPageEmptySpace(III)Z
    .locals 6
    .param p1, "page"    # I
    .param p2, "spanX"    # I
    .param p3, "spanY"    # I

    .prologue
    const/4 v2, 0x0

    .line 493
    if-ltz p1, :cond_0

    iget-object v3, p0, Lcom/android/launcher3/home/HomeProxyCallbacksImpl;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v3}, Lcom/android/launcher3/home/HomeController;->getWorkspace()Lcom/android/launcher3/home/Workspace;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/home/Workspace;->getPageCount()I

    move-result v3

    if-lt p1, v3, :cond_1

    .line 501
    :cond_0
    :goto_0
    return v2

    .line 497
    :cond_1
    iget-object v3, p0, Lcom/android/launcher3/home/HomeProxyCallbacksImpl;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v3}, Lcom/android/launcher3/home/HomeController;->getHomeLoader()Lcom/android/launcher3/home/HomeLoader;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/home/HomeLoader;->getItemPositionHelper()Lcom/android/launcher3/home/HomeItemPositionHelper;

    move-result-object v0

    .line 498
    .local v0, "positionHelper":Lcom/android/launcher3/home/HomeItemPositionHelper;
    const/4 v3, 0x2

    new-array v1, v3, [I

    .line 499
    .local v1, "emptyCell":[I
    const/4 v3, 0x1

    aput v2, v1, v3

    aput v2, v1, v2

    .line 501
    iget-object v2, p0, Lcom/android/launcher3/home/HomeProxyCallbacksImpl;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeController;->getHomeLoader()Lcom/android/launcher3/home/HomeLoader;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/launcher3/home/HomeLoader;->getWorkspaceScreenId(I)J

    move-result-wide v2

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/home/HomeItemPositionHelper;->findEmptyCell([IJII)Z

    move-result v2

    goto :goto_0
.end method

.method public isEmptyPage(I)Z
    .locals 1
    .param p1, "page"    # I

    .prologue
    .line 517
    iget-object v0, p0, Lcom/android/launcher3/home/HomeProxyCallbacksImpl;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->getWorkspace()Lcom/android/launcher3/home/Workspace;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/home/Workspace;->isEmptyPage(I)Z

    move-result v0

    return v0
.end method

.method public moveItem(Landroid/view/View;I)I
    .locals 16
    .param p1, "iv"    # Landroid/view/View;
    .param p2, "page"    # I

    .prologue
    .line 138
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeProxyCallbacksImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "moveItem : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const/4 v13, 0x0

    .line 141
    .local v13, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    const/4 v10, 0x1

    .local v10, "spanX":I
    const/4 v11, 0x1

    .line 142
    .local v11, "spanY":I
    move-object/from16 v0, p1

    instance-of v2, v0, Lcom/android/launcher3/common/view/IconView;

    if-eqz v2, :cond_1

    .line 143
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v13

    .end local v13    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    check-cast v13, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 150
    .restart local v13    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_0
    :goto_0
    if-eqz v13, :cond_2

    if-eqz p1, :cond_2

    .line 151
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeProxyCallbacksImpl;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeController;->getWorkspace()Lcom/android/launcher3/home/Workspace;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/HomeProxyCallbacksImpl;->mHomeController:Lcom/android/launcher3/home/HomeController;

    .line 152
    invoke-virtual {v3}, Lcom/android/launcher3/home/HomeController;->getWorkspace()Lcom/android/launcher3/home/Workspace;

    move-result-object v3

    iget-wide v4, v13, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher3/home/Workspace;->getPageIndexForScreenId(J)I

    move-result v3

    .line 151
    invoke-virtual {v2, v3}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 153
    .local v12, "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Lcom/android/launcher3/common/base/view/CellLayout;->removeView(Landroid/view/View;)V

    .line 156
    const/4 v2, 0x3

    new-array v15, v2, [I

    .line 157
    .local v15, "resultPosition":[I
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1, v10, v11, v15}, Lcom/android/launcher3/home/HomeProxyCallbacksImpl;->checkEmptySpace(III[I)J

    move-result-wide v6

    .line 159
    .local v6, "screenId":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeProxyCallbacksImpl;->mHomeController:Lcom/android/launcher3/home/HomeController;

    const-wide/16 v4, -0x64

    const/4 v3, 0x1

    aget v8, v15, v3

    const/4 v3, 0x2

    aget v9, v15, v3

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v11}, Lcom/android/launcher3/home/HomeController;->addInScreen(Landroid/view/View;JJIIII)V

    .line 162
    iput-wide v6, v13, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    .line 163
    const/4 v2, 0x1

    aget v2, v15, v2

    iput v2, v13, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    .line 164
    const/4 v2, 0x2

    aget v2, v15, v2

    iput v2, v13, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    .line 165
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeProxyCallbacksImpl;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v2, v13}, Lcom/android/launcher3/home/HomeController;->updateItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 167
    const/4 v2, 0x0

    aget v14, v15, v2

    .line 168
    .local v14, "moveTo":I
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/android/launcher3/home/HomeProxyCallbacksImpl$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v14}, Lcom/android/launcher3/home/HomeProxyCallbacksImpl$1;-><init>(Lcom/android/launcher3/home/HomeProxyCallbacksImpl;I)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 177
    const/4 v2, 0x0

    aget v2, v15, v2

    .line 179
    .end local v6    # "screenId":J
    .end local v12    # "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v14    # "moveTo":I
    .end local v15    # "resultPosition":[I
    :goto_1
    return v2

    .line 144
    :cond_1
    move-object/from16 v0, p1

    instance-of v2, v0, Landroid/appwidget/AppWidgetHostView;

    if-eqz v2, :cond_0

    .line 145
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v13

    .end local v13    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    check-cast v13, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 146
    .restart local v13    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget v10, v13, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    .line 147
    iget v11, v13, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    goto :goto_0

    .line 179
    :cond_2
    const/4 v2, -0x1

    goto :goto_1
.end method

.method public movePage(I)V
    .locals 3
    .param p1, "pageNum"    # I

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/launcher3/home/HomeProxyCallbacksImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "movePage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v0, p0, Lcom/android/launcher3/home/HomeProxyCallbacksImpl;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->getWorkspace()Lcom/android/launcher3/home/Workspace;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/home/Workspace;->checkVisibilityOfCustomLayout(I)V

    .line 186
    iget-object v0, p0, Lcom/android/launcher3/home/HomeProxyCallbacksImpl;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->getWorkspace()Lcom/android/launcher3/home/Workspace;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/home/Workspace;->moveToScreen(IZ)V

    .line 187
    return-void
.end method

.method public movePageToItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 4
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 456
    iget-object v1, p0, Lcom/android/launcher3/home/HomeProxyCallbacksImpl;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->getHomeLoader()Lcom/android/launcher3/home/HomeLoader;

    move-result-object v1

    iget-wide v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    long-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/home/HomeLoader;->getWorkspaceScreenId(I)J

    move-result-wide v2

    long-to-int v0, v2

    .line 457
    .local v0, "pageNum":I
    if-ltz v0, :cond_0

    .line 458
    iget-object v1, p0, Lcom/android/launcher3/home/HomeProxyCallbacksImpl;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->getWorkspace()Lcom/android/launcher3/home/Workspace;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/android/launcher3/home/Workspace;->moveToScreen(IZ)V

    .line 460
    :cond_0
    return-void
.end method

.method public neededToAdjustZeroPage()Z
    .locals 1

    .prologue
    .line 506
    iget-object v0, p0, Lcom/android/launcher3/home/HomeProxyCallbacksImpl;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->isOverviewState()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/launcher3/home/ZeroPageController;->isEnableZeroPage()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onParamFillingReceived(Lcom/samsung/android/sdk/bixby/data/ParamFilling;)Z
    .locals 1
    .param p1, "pf"    # Lcom/samsung/android/sdk/bixby/data/ParamFilling;

    .prologue
    .line 528
    const/4 v0, 0x0

    return v0
.end method

.method public removeCurrentPage()V
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/launcher3/home/HomeProxyCallbacksImpl;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->getWorkspace()Lcom/android/launcher3/home/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->isPageMoving()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/android/launcher3/home/HomeProxyCallbacksImpl;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->getWorkspace()Lcom/android/launcher3/home/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->pageEndMoving()V

    .line 281
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeProxyCallbacksImpl;->removeScreen()V

    .line 282
    return-void
.end method

.method public removeShortcut(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 4
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/launcher3/home/HomeProxyCallbacksImpl;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->getWorkspace()Lcom/android/launcher3/home/Workspace;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/home/HomeProxyCallbacksImpl;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->getWorkspace()Lcom/android/launcher3/home/Workspace;

    move-result-object v1

    iget-wide v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/home/Workspace;->getPageIndexForScreenId(J)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/home/Workspace;->moveToScreen(IZ)V

    .line 192
    iget-object v0, p0, Lcom/android/launcher3/home/HomeProxyCallbacksImpl;->mHomeController:Lcom/android/launcher3/home/HomeController;

    iget-object v1, p0, Lcom/android/launcher3/home/HomeProxyCallbacksImpl;->mHomeController:Lcom/android/launcher3/home/HomeController;

    iget-wide v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/home/HomeController;->getHomescreenIconByItemId(J)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/home/HomeController;->removeHomeOrFolderItem(Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;)Z

    .line 193
    return-void
.end method

.method public removeWidget(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 4
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 431
    iget-object v1, p0, Lcom/android/launcher3/home/HomeProxyCallbacksImpl;->mHomeController:Lcom/android/launcher3/home/HomeController;

    iget-wide v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/home/HomeController;->getHomescreenIconByItemId(J)Landroid/view/View;

    move-result-object v0

    .line 432
    .local v0, "view":Landroid/view/View;
    iget-object v1, p0, Lcom/android/launcher3/home/HomeProxyCallbacksImpl;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1, p1, v0}, Lcom/android/launcher3/home/HomeController;->removeHomeOrFolderItem(Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;)Z

    .line 433
    return-void
.end method

.method public selectItem(Lcom/android/launcher3/common/view/IconView;)V
    .locals 2
    .param p1, "iv"    # Lcom/android/launcher3/common/view/IconView;

    .prologue
    .line 334
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportMultiSelect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/android/launcher3/home/HomeProxyCallbacksImpl;->mHomeController:Lcom/android/launcher3/home/HomeController;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/home/HomeController;->onCheckedChanged(Landroid/view/View;Z)V

    .line 337
    :cond_0
    return-void
.end method

.method public setAsMainPage(I)V
    .locals 3
    .param p1, "pageNumber"    # I

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/launcher3/home/HomeProxyCallbacksImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAsMainPage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/home/HomeProxyCallbacksImpl;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeController;->getWorkspace()Lcom/android/launcher3/home/Workspace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/home/HomeProxyCallbacksImpl;->mHomeController:Lcom/android/launcher3/home/HomeController;

    .line 256
    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeController;->getWorkspace()Lcom/android/launcher3/home/Workspace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/home/Workspace;->getPageCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 255
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    const/4 v0, 0x1

    if-ge p1, v0, :cond_1

    .line 263
    :cond_0
    :goto_0
    return-void

    .line 259
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/home/HomeProxyCallbacksImpl;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->getWorkspace()Lcom/android/launcher3/home/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->getPageCount()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 262
    iget-object v0, p0, Lcom/android/launcher3/home/HomeProxyCallbacksImpl;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->getWorkspace()Lcom/android/launcher3/home/Workspace;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/home/HomeProxyCallbacksImpl;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->getWorkspace()Lcom/android/launcher3/home/Workspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->getDefaultPage()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher3/home/Workspace;->updateDefaultHome(II)V

    goto :goto_0
.end method

.method public unSelectItem(Lcom/android/launcher3/common/view/IconView;)V
    .locals 2
    .param p1, "iv"    # Lcom/android/launcher3/common/view/IconView;

    .prologue
    .line 341
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportMultiSelect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/android/launcher3/home/HomeProxyCallbacksImpl;->mHomeController:Lcom/android/launcher3/home/HomeController;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/home/HomeController;->onCheckedChanged(Landroid/view/View;Z)V

    .line 344
    :cond_0
    return-void
.end method
