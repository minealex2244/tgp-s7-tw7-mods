.class Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;
.super Ljava/lang/Object;
.source "AppsProxyCallbacksImpl.java"

# interfaces
.implements Lcom/android/launcher3/proxy/AppsProxyCallbacks;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/android/launcher3/allapps/controller/AppsController;)V
    .locals 0
    .param p1, "appsController"    # Lcom/android/launcher3/allapps/controller/AppsController;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    .line 33
    return-void
.end method


# virtual methods
.method public changeFolderTitle(Lcom/android/launcher3/common/base/item/ItemInfo;Ljava/lang/String;)V
    .locals 2
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;
    .param p2, "newTitle"    # Ljava/lang/String;

    .prologue
    .line 309
    iget-object v1, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->getItemViewByTitle(Ljava/lang/String;)Lcom/android/launcher3/common/view/IconView;

    move-result-object v0

    .line 310
    .local v0, "iv":Lcom/android/launcher3/common/view/IconView;
    if-nez v0, :cond_0

    .line 318
    :goto_0
    return-void

    .line 314
    :cond_0
    iput-object p2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    .line 315
    iget-object v1, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/view/IconView;->setText(Ljava/lang/CharSequence;)V

    .line 317
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/allapps/controller/AppsController;->updateItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto :goto_0
.end method

.method public changeScreengrid(Ljava/lang/String;)V
    .locals 6
    .param p1, "gridOption"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 327
    new-array v1, v3, [I

    .line 329
    .local v1, "xy":[I
    if-eqz p1, :cond_0

    .line 330
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 331
    const-string v2, "x"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 333
    .local v0, "splitStr":[Ljava/lang/String;
    array-length v2, v0

    if-ne v2, v3, :cond_0

    .line 334
    aget-object v2, v0, v5

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v1, v5

    .line 335
    aget-object v2, v0, v4

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v1, v4

    .line 337
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    aget v3, v1, v5

    aget v4, v1, v4

    invoke-virtual {v2, v5, v3, v4}, Lcom/android/launcher3/allapps/controller/AppsController;->changeScreenGrid(ZII)Z

    .line 341
    .end local v0    # "splitStr":[Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public checkMatchGridOption(Ljava/lang/String;)Z
    .locals 5
    .param p1, "gridOption"    # Ljava/lang/String;

    .prologue
    .line 364
    const/4 v3, 0x2

    new-array v2, v3, [I

    .line 366
    .local v2, "xy":[I
    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/controller/AppsController;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/android/launcher3/util/ScreenGridUtilities;->loadCurrentAppsGridSize(Landroid/content/Context;[I)V

    .line 367
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    aget v4, v2, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    aget v4, v2, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 369
    .local v0, "currentGrid":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 370
    const/4 v1, 0x1

    .line 375
    .local v1, "result":Z
    :goto_0
    return v1

    .line 372
    .end local v1    # "result":Z
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "result":Z
    goto :goto_0
.end method

.method public checkValidGridOption(Ljava/lang/String;)Z
    .locals 6
    .param p1, "gridOption"    # Ljava/lang/String;

    .prologue
    .line 345
    const/4 v1, 0x0

    .line 347
    .local v1, "result":Z
    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/controller/AppsController;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0004

    .line 348
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 350
    .local v0, "mScreenGridButtonMap":[Ljava/lang/String;
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 351
    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v2, v0, v3

    .line 352
    .local v2, "supportGrid":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    .line 353
    const/4 v1, 0x1

    .line 351
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 358
    .end local v2    # "supportGrid":Ljava/lang/String;
    :cond_1
    return v1
.end method

.method public deleteFolder(Lcom/android/launcher3/folder/FolderInfo;)V
    .locals 3
    .param p1, "folderInfo"    # Lcom/android/launcher3/folder/FolderInfo;

    .prologue
    .line 291
    new-instance v0, Lcom/android/launcher3/common/dialog/FolderDeleteDialog;

    invoke-direct {v0}, Lcom/android/launcher3/common/dialog/FolderDeleteDialog;-><init>()V

    .line 292
    .local v0, "dialog":Lcom/android/launcher3/common/dialog/FolderDeleteDialog;
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/controller/AppsController;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/launcher3/common/dialog/FolderDeleteDialog;->show(Landroid/app/FragmentManager;Lcom/android/launcher3/common/stage/Stage;Lcom/android/launcher3/folder/FolderInfo;)V

    .line 293
    return-void
.end method

.method public getFolderItemViewByTitle(Ljava/lang/String;)Lcom/android/launcher3/folder/view/FolderIconView;
    .locals 4
    .param p1, "itemTitle"    # Ljava/lang/String;

    .prologue
    .line 47
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsPagedView()Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->findIconViews(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 49
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

    .line 50
    .local v1, "v":Lcom/android/launcher3/common/view/IconView;
    instance-of v3, v1, Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v3, :cond_0

    .line 51
    check-cast v1, Lcom/android/launcher3/folder/view/FolderIconView;

    .line 55
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
    .line 25
    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->getItemViewByComponentName(Landroid/content/ComponentName;)Lcom/android/launcher3/common/view/IconView;

    move-result-object v0

    return-object v0
.end method

.method public getItemViewByComponentName(Landroid/content/ComponentName;)Lcom/android/launcher3/common/view/IconView;
    .locals 1
    .param p1, "cn"    # Landroid/content/ComponentName;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsPagedView()Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->findIconView(Landroid/content/ComponentName;)Lcom/android/launcher3/common/view/IconView;

    move-result-object v0

    return-object v0
.end method

.method public getItemViewByTitle(Ljava/lang/String;)Lcom/android/launcher3/common/view/IconView;
    .locals 4
    .param p1, "itemTitle"    # Ljava/lang/String;

    .prologue
    .line 65
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsPagedView()Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->findIconViews(Ljava/lang/String;)Ljava/util/ArrayList;

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

    .line 72
    .end local v1    # "v":Lcom/android/launcher3/common/view/IconView;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPageCount()I
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsPagedView()Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getPageCount()I

    move-result v0

    return v0
.end method

.method public getPagedView()Lcom/android/launcher3/common/base/view/PagedView;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsPagedView()Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v0

    return-object v0
.end method

.method public getViewType()Lcom/android/launcher3/allapps/controller/AppsController$ViewType;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AppsController;->getViewType()Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    move-result-object v0

    return-object v0
.end method

.method public hasPageEmptySpace(I)Z
    .locals 4
    .param p1, "page"    # I

    .prologue
    const/4 v1, 0x0

    .line 256
    if-ltz p1, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsPagedView()Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getPageCount()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    if-le p1, v2, :cond_2

    .line 257
    :cond_0
    sget-object v2, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->TAG:Ljava/lang/String;

    const-string v3, "move to the invalid page"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :cond_1
    :goto_0
    return v1

    .line 260
    :cond_2
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsPagedView()Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getItemCountPageAt(I)I

    move-result v0

    .line 261
    .local v0, "pageItemCount":I
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsPagedView()Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getMaxItemsPerScreen()I

    move-result v2

    if-eq v0, v2, :cond_1

    .line 264
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public moveItem(Lcom/android/launcher3/common/view/IconView;I)V
    .locals 21
    .param p1, "iconView"    # Lcom/android/launcher3/common/view/IconView;
    .param p2, "page"    # I

    .prologue
    .line 111
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsPagedView()Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getPageCount()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    move/from16 v0, p2

    if-gt v0, v3, :cond_0

    if-gez p2, :cond_1

    .line 112
    :cond_0
    sget-object v3, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->TAG:Ljava/lang/String;

    const-string v4, "move to the invalid page"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :goto_0
    return-void

    .line 116
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/common/view/IconView;->getTag()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 117
    .local v11, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsPagedView()Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v3

    iget-wide v12, v11, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    long-to-int v4, v12

    invoke-virtual {v3, v4}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 118
    .local v9, "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Lcom/android/launcher3/common/base/view/CellLayout;->removeView(Landroid/view/View;)V

    .line 121
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsPagedView()Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getItemCountPageAt(I)I

    move-result v3

    add-int/lit8 v19, v3, -0x1

    .line 122
    .local v19, "lastRank":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/controller/AppsController;->getDragController()Lcom/android/launcher3/allapps/controller/AppsDragController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/controller/AppsDragController;->getReorderController()Lcom/android/launcher3/allapps/controller/AppsReorderController;

    move-result-object v2

    .line 123
    .local v2, "reorderController":Lcom/android/launcher3/allapps/controller/AppsReorderController;
    iget v5, v11, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    .line 124
    .local v5, "startPos":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsPagedView()Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v3

    iget-wide v12, v11, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    long-to-int v4, v12

    invoke-virtual {v3, v4}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getItemCountPageAt(I)I

    move-result v6

    .line 125
    .local v6, "endPos":I
    const/4 v7, 0x1

    .line 127
    .local v7, "direction":I
    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-wide v12, v11, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    long-to-int v8, v12

    invoke-virtual/range {v2 .. v8}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->realTimeReorder(IFIIII)V

    .line 130
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsPagedView()Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getMaxItemsPerScreen()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move/from16 v0, v19

    if-ne v0, v3, :cond_6

    .line 132
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsPagedView()Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getPageCount()I

    move-result v3

    move/from16 v0, p2

    if-ne v0, v3, :cond_3

    .line 134
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsPagedView()Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/view/AppsPagedView;->createAppsPage()Lcom/android/launcher3/allapps/view/AppsViewCellLayout;

    .line 153
    :cond_2
    const/4 v3, 0x0

    iput v3, v11, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    .line 154
    add-int/lit8 v3, p2, 0x1

    int-to-long v12, v3

    iput-wide v12, v11, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    .line 160
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/controller/AppsController;->removeEmptyPagesAndUpdateAllItemsInfo()Z

    .line 161
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v11}, Lcom/android/launcher3/allapps/controller/AppsController;->addItem(Landroid/view/View;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 162
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    const-wide/16 v12, -0x66

    iget-wide v14, v11, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    iget v3, v11, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    .line 163
    invoke-virtual {v4}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsPagedView()Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountX()I

    move-result v4

    rem-int v16, v3, v4

    iget v3, v11, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    .line 164
    invoke-virtual {v4}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsPagedView()Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountX()I

    move-result v4

    div-int v17, v3, v4

    iget v0, v11, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    move/from16 v18, v0

    .line 162
    invoke-virtual/range {v10 .. v18}, Lcom/android/launcher3/allapps/controller/AppsController;->addOrMoveItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJIII)V

    .line 165
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/controller/AppsController;->updateDirtyItems()V

    .line 166
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsPagedView()Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->snapToPageImmediately(I)V

    goto/16 :goto_0

    .line 136
    :cond_3
    add-int/lit8 v3, p2, 0x1

    invoke-virtual {v2, v3}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->getNumScreenNeededChange(I)I

    move-result v20

    .line 137
    .local v20, "pageNum":I
    move/from16 v8, v20

    .local v8, "i":I
    :goto_2
    add-int/lit8 v3, p2, 0x1

    if-lt v8, v3, :cond_2

    .line 138
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsPagedView()Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getItemCountPageAt(I)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsPagedView()Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getMaxItemsPerScreen()I

    move-result v4

    if-lt v3, v4, :cond_4

    .line 139
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v8}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->overLastItemNextScreen(IFI)V

    .line 142
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsPagedView()Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getItemCountPageAt(I)I

    move-result v5

    .line 143
    const/4 v6, 0x0

    .line 144
    const/4 v7, 0x1

    .line 145
    if-le v5, v6, :cond_5

    .line 147
    const/4 v7, -0x1

    .line 150
    :cond_5
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->realTimeReorder(IFIIII)V

    .line 137
    add-int/lit8 v8, v8, -0x1

    goto :goto_2

    .line 157
    .end local v8    # "i":I
    .end local v20    # "pageNum":I
    :cond_6
    add-int/lit8 v3, v19, 0x1

    iput v3, v11, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    .line 158
    move/from16 v0, p2

    int-to-long v12, v0

    iput-wide v12, v11, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    goto/16 :goto_1
.end method

.method public moveItemInFolder(Lcom/android/launcher3/common/view/IconView;II)V
    .locals 18
    .param p1, "iconView"    # Lcom/android/launcher3/common/view/IconView;
    .param p2, "pageNumber"    # I
    .param p3, "targetPosition"    # I

    .prologue
    .line 192
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsPagedView()Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getPageCount()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    move/from16 v0, p2

    if-le v0, v2, :cond_0

    .line 193
    sget-object v2, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->TAG:Ljava/lang/String;

    const-string v4, "move to the invalid page"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :goto_0
    return-void

    .line 197
    :cond_0
    move/from16 v16, p2

    .line 198
    .local v16, "screenId":I
    if-gez p2, :cond_1

    .line 200
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsPagedView()Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getPageCount()I

    move-result v2

    add-int/lit8 v16, v2, -0x1

    .line 203
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/common/view/IconView;->getTag()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 204
    .local v12, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/controller/AppsController;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getOpenFolderView()Lcom/android/launcher3/folder/view/FolderView;

    move-result-object v11

    .line 206
    .local v11, "folder":Lcom/android/launcher3/folder/view/FolderView;
    if-eqz v11, :cond_3

    .line 207
    invoke-virtual {v11}, Lcom/android/launcher3/folder/view/FolderView;->getInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v2

    iget-wide v4, v2, Lcom/android/launcher3/folder/FolderInfo;->screenId:J

    long-to-int v0, v4

    move/from16 v16, v0

    .line 210
    instance-of v2, v12, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v2, :cond_2

    .line 211
    invoke-virtual {v11}, Lcom/android/launcher3/folder/view/FolderView;->getInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v4

    move-object v2, v12

    check-cast v2, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v4, v2}, Lcom/android/launcher3/folder/FolderInfo;->remove(Lcom/android/launcher3/common/base/item/IconInfo;)V

    .line 213
    :cond_2
    invoke-virtual {v11}, Lcom/android/launcher3/folder/view/FolderView;->getBaseController()Lcom/android/launcher3/common/base/controller/ControllerBase;

    move-result-object v2

    invoke-interface {v2, v12}, Lcom/android/launcher3/common/base/controller/ControllerBase;->deleteItemFromDb(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 216
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsPagedView()Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getItemCountPageAt(I)I

    move-result v13

    .line 217
    .local v13, "lastRank":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/controller/AppsController;->getDragController()Lcom/android/launcher3/allapps/controller/AppsDragController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/controller/AppsDragController;->getReorderController()Lcom/android/launcher3/allapps/controller/AppsReorderController;

    move-result-object v15

    .line 219
    .local v15, "reorderController":Lcom/android/launcher3/allapps/controller/AppsReorderController;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsPagedView()Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getMaxItemsPerScreen()I

    move-result v2

    if-ne v13, v2, :cond_4

    .line 220
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsPagedView()Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getPageCount()I

    move-result v2

    move/from16 v0, v16

    if-ne v0, v2, :cond_5

    .line 222
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsPagedView()Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->createAppsPage()Lcom/android/launcher3/allapps/view/AppsViewCellLayout;

    .line 223
    const/4 v13, 0x0

    .line 224
    add-int/lit8 v16, v16, 0x1

    .line 238
    :cond_4
    :goto_1
    iput v13, v12, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    .line 239
    move/from16 v0, v16

    int-to-long v4, v0

    iput-wide v4, v12, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    .line 240
    const-wide/16 v4, -0x66

    iput-wide v4, v12, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    .line 243
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsPagedView()Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v2

    iget-wide v4, v12, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    long-to-int v4, v4

    invoke-virtual {v2, v4}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v3

    .line 244
    .local v3, "cellLayout":Lcom/android/launcher3/common/base/view/CellLayout;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/controller/AppsController;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object v2

    move-object v4, v12

    check-cast v4, Lcom/android/launcher3/common/base/item/IconInfo;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    .line 245
    invoke-virtual {v5}, Lcom/android/launcher3/allapps/controller/AppsController;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v7}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsFocusListener()Lcom/android/launcher3/allapps/controller/AppsFocusListener;

    move-result-object v7

    .line 244
    invoke-static/range {v2 .. v7}, Lcom/android/launcher3/allapps/AppsUtils;->createAppIcon(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/android/launcher3/common/base/item/IconInfo;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;Lcom/android/launcher3/allapps/controller/AppsFocusListener;)Landroid/view/View;

    move-result-object v17

    .line 247
    .local v17, "view":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0, v12}, Lcom/android/launcher3/allapps/controller/AppsController;->addItem(Landroid/view/View;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 248
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    iget-wide v6, v12, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    iget-wide v8, v12, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    iget v10, v12, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    move-object v5, v12

    invoke-virtual/range {v4 .. v10}, Lcom/android/launcher3/allapps/controller/AppsController;->addItemToDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJI)V

    .line 250
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/controller/AppsController;->updateDirtyItems()V

    .line 251
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsPagedView()Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->snapToPage(I)V

    goto/16 :goto_0

    .line 227
    .end local v3    # "cellLayout":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v17    # "view":Landroid/view/View;
    :cond_5
    invoke-virtual/range {v15 .. v16}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->getNumScreenNeededChange(I)I

    move-result v14

    .line 228
    .local v14, "pageNum":I
    if-nez v14, :cond_6

    .line 229
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsPagedView()Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->createAppsPage()Lcom/android/launcher3/allapps/view/AppsViewCellLayout;

    .line 230
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsPagedView()Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getPageCount()I

    move-result v2

    add-int/lit8 v16, v2, -0x1

    .line 231
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 233
    :cond_6
    move/from16 v16, v14

    .line 234
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsPagedView()Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v2

    invoke-virtual {v2, v14}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getItemCountPageAt(I)I

    move-result v13

    goto/16 :goto_1
.end method

.method public moveItemToFollowedEmptyPage(Lcom/android/launcher3/common/view/IconView;I)I
    .locals 3
    .param p1, "iconView"    # Lcom/android/launcher3/common/view/IconView;
    .param p2, "page"    # I

    .prologue
    .line 171
    const/4 v0, -0x1

    .line 173
    .local v0, "emptyPageFound":I
    move v1, p2

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->getPageCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 174
    invoke-virtual {p0, v1}, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->hasPageEmptySpace(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 175
    move v0, v1

    .line 180
    :cond_0
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 181
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsPagedView()Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->createAppsPage()Lcom/android/launcher3/allapps/view/AppsViewCellLayout;

    .line 182
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->getPageCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 185
    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->moveItem(Lcom/android/launcher3/common/view/IconView;I)V

    .line 187
    return v0

    .line 173
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public movePage(I)V
    .locals 1
    .param p1, "pageNum"    # I

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsPagedView()Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->snapToPage(I)V

    .line 78
    return-void
.end method

.method public movePageToItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 0
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 275
    return-void
.end method

.method public onParamFillingReceived(Lcom/samsung/android/sdk/bixby/data/ParamFilling;)Z
    .locals 1
    .param p1, "pf"    # Lcom/samsung/android/sdk/bixby/data/ParamFilling;

    .prologue
    .line 381
    const/4 v0, 0x0

    return v0
.end method

.method public removeItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 2
    .param p1, "removeItem"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 284
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 285
    .local v0, "removeItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/allapps/controller/AppsController;->removeApps(Ljava/util/ArrayList;)V

    .line 287
    return-void
.end method

.method public searchApp(Ljava/lang/String;)V
    .locals 4
    .param p1, "appName"    # Ljava/lang/String;

    .prologue
    .line 103
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsSearchView()Lcom/android/launcher3/allapps/view/AppsSearchContainerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->getSearchBarController()Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;

    .line 104
    .local v0, "searchController":Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/allapps/controller/AppsController;->changeState(IZ)Z

    .line 105
    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->setSearchText(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->onQueryTextChange(Ljava/lang/String;)Z

    .line 107
    return-void
.end method

.method public selectItem(Lcom/android/launcher3/common/view/IconView;)V
    .locals 2
    .param p1, "iv"    # Lcom/android/launcher3/common/view/IconView;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/allapps/controller/AppsController;->onCheckedChanged(Landroid/view/View;Z)V

    .line 94
    return-void
.end method

.method public setViewType(Lcom/android/launcher3/allapps/controller/AppsController$ViewType;)V
    .locals 1
    .param p1, "viewType"    # Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/controller/AppsController;->setViewType(Lcom/android/launcher3/allapps/controller/AppsController$ViewType;)V

    .line 38
    return-void
.end method

.method public showAppsGridSettingView()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 322
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AppsController;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/controller/AppsController;->getMode()I

    move-result v1

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/launcher3/Launcher;->showAppsOrWidgets(IZZ)Z

    .line 323
    return-void
.end method

.method public showTidyUpPreview()V
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AppsController;->prepareTidedUpPages()V

    .line 280
    return-void
.end method

.method public startSecureFolder()V
    .locals 5

    .prologue
    .line 297
    const-string v2, "com.samsung.knox.securefolder"

    .line 298
    .local v2, "packageName":Ljava/lang/String;
    const-string v0, "com.samsung.knox.securefolder.switcher.SecureFolderShortcutActivity"

    .line 300
    .local v0, "className":Ljava/lang/String;
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    .local v1, "cn":Landroid/content/ComponentName;
    invoke-virtual {p0, v1}, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->getItemViewByComponentName(Landroid/content/ComponentName;)Lcom/android/launcher3/common/view/IconView;

    move-result-object v3

    .line 302
    .local v3, "v":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 303
    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/controller/AppsController;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/launcher3/Launcher;->startAppShortcutOrInfoActivity(Landroid/view/View;)V

    .line 305
    :cond_0
    return-void
.end method

.method public tidyUpPages()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 87
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/allapps/controller/AppsController;->setApplyTidyUpPage(Z)V

    .line 88
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/allapps/controller/AppsController;->changeState(IZ)Z

    .line 89
    return-void
.end method

.method public unSelectItem(Lcom/android/launcher3/common/view/IconView;)V
    .locals 2
    .param p1, "iv"    # Lcom/android/launcher3/common/view/IconView;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/allapps/controller/AppsController;->onCheckedChanged(Landroid/view/View;Z)V

    .line 99
    return-void
.end method
