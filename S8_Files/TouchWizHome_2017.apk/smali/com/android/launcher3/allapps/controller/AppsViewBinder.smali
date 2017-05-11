.class public Lcom/android/launcher3/allapps/controller/AppsViewBinder;
.super Ljava/lang/Object;
.source "AppsViewBinder.java"

# interfaces
.implements Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;


# static fields
.field private static final TAG:Ljava/lang/String; = "AppsViewBinder"


# instance fields
.field private mAppsBindLoading:Z

.field private mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

.field private mAppsLoader:Lcom/android/launcher3/allapps/model/AppsLoader;

.field private mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

.field private mBindOnAlpahbeticList:Ljava/lang/Runnable;

.field private mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

.field private mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

.field private mIconCache:Lcom/android/launcher3/common/model/IconCache;

.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private mModel:Lcom/android/launcher3/LauncherModel;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/launcher3/allapps/controller/AppsController;Lcom/android/launcher3/LauncherModel;Lcom/android/launcher3/common/model/IconCache;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appsController"    # Lcom/android/launcher3/allapps/controller/AppsController;
    .param p3, "model"    # Lcom/android/launcher3/LauncherModel;
    .param p4, "cache"    # Lcom/android/launcher3/common/model/IconCache;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mAppsBindLoading:Z

    .line 63
    new-instance v0, Lcom/android/launcher3/allapps/controller/AppsViewBinder$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/allapps/controller/AppsViewBinder$1;-><init>(Lcom/android/launcher3/allapps/controller/AppsViewBinder;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mBindOnAlpahbeticList:Ljava/lang/Runnable;

    .line 73
    check-cast p1, Lcom/android/launcher3/Launcher;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 74
    iput-object p4, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mIconCache:Lcom/android/launcher3/common/model/IconCache;

    .line 75
    iput-object p3, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mModel:Lcom/android/launcher3/LauncherModel;

    .line 76
    invoke-virtual {p3}, Lcom/android/launcher3/LauncherModel;->getAppsLoader()Lcom/android/launcher3/allapps/model/AppsLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mAppsLoader:Lcom/android/launcher3/allapps/model/AppsLoader;

    .line 77
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mAppsLoader:Lcom/android/launcher3/allapps/model/AppsLoader;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/allapps/model/AppsLoader;->registerCallbacks(Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;)V

    .line 78
    iput-object p2, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    .line 79
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFolderLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    invoke-static {}, Lcom/android/launcher3/folder/folderlock/FolderLock;->getInstance()Lcom/android/launcher3/folder/folderlock/FolderLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    .line 82
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/allapps/controller/AppsViewBinder;)Lcom/android/launcher3/allapps/controller/AppsController;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/controller/AppsViewBinder;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher3/allapps/controller/AppsViewBinder;Lcom/android/launcher3/folder/FolderInfo;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/allapps/controller/AppsViewBinder;
    .param p1, "x1"    # Lcom/android/launcher3/folder/FolderInfo;
    .param p2, "x2"    # Ljava/util/ArrayList;

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->bindItemsToFolder(Lcom/android/launcher3/folder/FolderInfo;Ljava/util/ArrayList;)V

    return-void
.end method

.method private bindAddScreens(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 195
    .local p1, "orderedScreenIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 196
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 197
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->createAppsPage()Lcom/android/launcher3/allapps/view/AppsViewCellLayout;

    .line 196
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 199
    :cond_0
    return-void
.end method

.method private bindItemsToFolder(Lcom/android/launcher3/folder/FolderInfo;Ljava/util/ArrayList;)V
    .locals 4
    .param p1, "folderInfo"    # Lcom/android/launcher3/folder/FolderInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/folder/FolderInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 292
    .local p2, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    const-string v1, "AppsViewBinder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " bindItemsInFolder ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    new-instance v0, Lcom/android/launcher3/allapps/controller/AppsViewBinder$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/launcher3/allapps/controller/AppsViewBinder$6;-><init>(Lcom/android/launcher3/allapps/controller/AppsViewBinder;Lcom/android/launcher3/folder/FolderInfo;Ljava/util/ArrayList;)V

    .line 301
    .local v0, "r":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mAppsLoader:Lcom/android/launcher3/allapps/model/AppsLoader;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/model/AppsLoader;->getLoaderStop()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/Launcher;->waitUntilResume(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 305
    :cond_0
    :goto_0
    return-void

    .line 304
    :cond_1
    invoke-virtual {p1, p2}, Lcom/android/launcher3/folder/FolderInfo;->add(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method private bindScreens(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 191
    .local p1, "orderedScreenIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->bindAddScreens(Ljava/util/ArrayList;)V

    .line 192
    return-void
.end method


# virtual methods
.method public bindAppsAdded(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 235
    .local p1, "newScreens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .local p2, "addAnimated":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    const-string v1, "AppsViewBinder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " bindAppsAdded : addNotAnimated="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    new-instance v0, Lcom/android/launcher3/allapps/controller/AppsViewBinder$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/launcher3/allapps/controller/AppsViewBinder$4;-><init>(Lcom/android/launcher3/allapps/controller/AppsViewBinder;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 241
    .local v0, "r":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/Launcher;->waitUntilResume(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 245
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/controller/AppsController;->getViewType()Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/allapps/controller/AppsController$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    if-ne v1, v2, :cond_2

    .line 246
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/controller/AppsController;->setAlphabeticList()V

    goto :goto_0

    .line 249
    :cond_2
    if-eqz p1, :cond_3

    .line 250
    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->bindScreens(Ljava/util/ArrayList;)V

    .line 253
    :cond_3
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 254
    const/4 v1, 0x0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p0, p2, v1, v2}, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->bindItems(Ljava/util/ArrayList;II)V

    goto :goto_0
.end method

.method public bindAppsAddedWithNormalize(Ljava/util/ArrayList;ZLjava/util/ArrayList;)V
    .locals 5
    .param p2, "setHidden"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;Z",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "newScreens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .local p3, "addAnimated":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    const/4 v4, 0x0

    .line 204
    new-instance v0, Lcom/android/launcher3/allapps/controller/AppsViewBinder$3;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/launcher3/allapps/controller/AppsViewBinder$3;-><init>(Lcom/android/launcher3/allapps/controller/AppsViewBinder;Ljava/util/ArrayList;ZLjava/util/ArrayList;)V

    .line 209
    .local v0, "r":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/Launcher;->waitUntilResume(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 231
    :cond_0
    :goto_0
    return-void

    .line 213
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mAppsLoader:Lcom/android/launcher3/allapps/model/AppsLoader;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/model/AppsLoader;->getCurrentComparator()Lcom/android/launcher3/allapps/model/AppsLoader$Normalizer;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/allapps/model/AppsLoader;->MENU_ALPHA_NORMALIZER:Lcom/android/launcher3/allapps/model/AppsLoader$Normalizer;

    if-eq v1, v2, :cond_2

    .line 214
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mAppsLoader:Lcom/android/launcher3/allapps/model/AppsLoader;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/model/AppsLoader;->getCurrentComparator()Lcom/android/launcher3/allapps/model/AppsLoader$Normalizer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mAppsLoader:Lcom/android/launcher3/allapps/model/AppsLoader;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/model/AppsLoader;->getTopLevelItemsInApps()Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mAppsLoader:Lcom/android/launcher3/allapps/model/AppsLoader;

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/model/AppsLoader;->getMaxItemsPerPage()I

    move-result v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/launcher3/allapps/model/AppsLoader$Normalizer;->normalize(Ljava/util/ArrayList;IZ)I

    .line 217
    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/controller/AppsController;->getViewType()Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/allapps/controller/AppsController$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    if-ne v1, v2, :cond_3

    .line 218
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/controller/AppsController;->setAlphabeticList()V

    goto :goto_0

    .line 220
    :cond_3
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mAppsLoader:Lcom/android/launcher3/allapps/model/AppsLoader;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/model/AppsLoader;->updateDirtyItems()V

    .line 222
    if-eqz p1, :cond_4

    .line 223
    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->bindScreens(Ljava/util/ArrayList;)V

    .line 226
    :cond_4
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 227
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p0, p3, v4, v1}, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->bindItems(Ljava/util/ArrayList;II)V

    goto :goto_0
.end method

.method public bindAppsAddedWithPostPosition([Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 7
    .param p1, "packages"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "newScreens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .local p3, "addAnimated":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    const/4 v3, 0x0

    .line 310
    const-string v4, "AppsViewBinder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " bindAppsAddedWithPostPosition : addNotAnimated="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    new-instance v2, Lcom/android/launcher3/allapps/controller/AppsViewBinder$7;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/android/launcher3/allapps/controller/AppsViewBinder$7;-><init>(Lcom/android/launcher3/allapps/controller/AppsViewBinder;[Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 317
    .local v2, "r":Ljava/lang/Runnable;
    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/controller/AppsController;->getViewType()Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    move-result-object v4

    sget-object v5, Lcom/android/launcher3/allapps/controller/AppsController$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    if-ne v4, v5, :cond_1

    .line 318
    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mBindOnAlpahbeticList:Ljava/lang/Runnable;

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/android/launcher3/Launcher;->waitUntilResume(Ljava/lang/Runnable;Z)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 346
    :cond_0
    return-void

    .line 322
    :cond_1
    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4, v2}, Lcom/android/launcher3/Launcher;->waitUntilResume(Ljava/lang/Runnable;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 327
    :cond_2
    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/controller/AppsController;->getViewType()Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    move-result-object v4

    sget-object v5, Lcom/android/launcher3/allapps/controller/AppsController$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    if-ne v4, v5, :cond_4

    .line 328
    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/controller/AppsController;->setAlphabeticList()V

    .line 340
    :cond_3
    :goto_0
    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v4}, Lcom/android/launcher3/common/customer/PostPositionController;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/customer/PostPositionController;

    move-result-object v1

    .line 341
    .local v1, "pp":Lcom/android/launcher3/common/customer/PostPositionController;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/launcher3/common/customer/PostPositionController;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 342
    array-length v4, p1

    :goto_1
    if-ge v3, v4, :cond_0

    aget-object v0, p1, v3

    .line 343
    .local v0, "pkg":Ljava/lang/String;
    invoke-virtual {v1, v0}, Lcom/android/launcher3/common/customer/PostPositionController;->addItem(Ljava/lang/String;)V

    .line 342
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 331
    .end local v0    # "pkg":Ljava/lang/String;
    .end local v1    # "pp":Lcom/android/launcher3/common/customer/PostPositionController;
    :cond_4
    if-eqz p2, :cond_5

    .line 332
    invoke-direct {p0, p2}, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->bindScreens(Ljava/util/ArrayList;)V

    .line 335
    :cond_5
    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 336
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {p0, p3, v3, v4}, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->bindItems(Ljava/util/ArrayList;II)V

    goto :goto_0
.end method

.method public bindAppsChanged(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/launcher3/common/compat/UserHandleCompat;)V
    .locals 6
    .param p3, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;",
            "Lcom/android/launcher3/common/compat/UserHandleCompat;",
            ")V"
        }
    .end annotation

    .prologue
    .line 364
    .local p1, "updated":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .local p2, "removed":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v1, Lcom/android/launcher3/allapps/controller/AppsViewBinder$9;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/launcher3/allapps/controller/AppsViewBinder$9;-><init>(Lcom/android/launcher3/allapps/controller/AppsViewBinder;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    .line 369
    .local v1, "r":Ljava/lang/Runnable;
    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3, v1}, Lcom/android/launcher3/Launcher;->waitUntilResume(Ljava/lang/Runnable;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 387
    :cond_0
    :goto_0
    return-void

    .line 373
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 374
    const-string v3, "AppsViewBinder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bindAppsChanged:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v3, p1}, Lcom/android/launcher3/allapps/controller/AppsController;->updateApps(Ljava/util/ArrayList;)V

    .line 378
    :cond_2
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 379
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 380
    .local v2, "removedComponents":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 381
    .local v0, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-object v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 383
    .end local v0    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_3
    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v3, p2}, Lcom/android/launcher3/allapps/controller/AppsController;->removeApps(Ljava/util/ArrayList;)V

    .line 385
    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v4, v2}, Lcom/android/launcher3/common/drag/DragManager;->onAppsRemoved(Ljava/util/ArrayList;Ljava/util/HashSet;)V

    goto :goto_0
.end method

.method public bindAppsInFolderRemoved(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/folder/FolderInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 392
    .local p1, "folderInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/folder/FolderInfo;>;"
    .local p2, "removed":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v5, Lcom/android/launcher3/allapps/controller/AppsViewBinder$10;

    invoke-direct {v5, p0, p1, p2}, Lcom/android/launcher3/allapps/controller/AppsViewBinder$10;-><init>(Lcom/android/launcher3/allapps/controller/AppsViewBinder;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 397
    .local v5, "r":Ljava/lang/Runnable;
    iget-object v7, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v7, v5}, Lcom/android/launcher3/Launcher;->waitUntilResume(Ljava/lang/Runnable;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 431
    :cond_0
    :goto_0
    return-void

    .line 400
    :cond_1
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 401
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 402
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 403
    .local v6, "removedComponents":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 404
    .local v4, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-object v8, v4, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v6, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 406
    .end local v4    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_2
    invoke-static {p1, p2}, Lcom/android/launcher3/Utilities;->removeAppsInFolder(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 408
    iget-object v7, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v7}, Lcom/android/launcher3/allapps/controller/AppsController;->getViewType()Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    move-result-object v7

    sget-object v8, Lcom/android/launcher3/allapps/controller/AppsController$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    if-ne v7, v8, :cond_5

    .line 409
    const/4 v3, 0x0

    .line 410
    .local v3, "folderRemoved":Z
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/folder/FolderInfo;

    .line 411
    .local v1, "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    invoke-virtual {v1}, Lcom/android/launcher3/folder/FolderInfo;->getItemCount()I

    move-result v2

    .line 412
    .local v2, "folderItemCount":I
    iget-object v8, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    iget-wide v10, v1, Lcom/android/launcher3/folder/FolderInfo;->id:J

    invoke-virtual {v8, v10, v11}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsIconByItemId(J)Landroid/view/View;

    move-result-object v0

    .line 413
    .local v0, "folderIconView":Landroid/view/View;
    const/4 v8, 0x1

    if-gt v2, v8, :cond_4

    if-eqz v0, :cond_4

    .line 414
    iget-object v8, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    const/4 v9, 0x0

    invoke-virtual {v8, v1, v2, v0, v9}, Lcom/android/launcher3/allapps/controller/AppsController;->replaceFolderWithFinalItem(Lcom/android/launcher3/common/base/item/ItemInfo;ILandroid/view/View;Z)V

    .line 415
    const/4 v3, 0x1

    .line 417
    :cond_4
    if-eqz v3, :cond_3

    .line 418
    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    new-instance v9, Lcom/android/launcher3/allapps/controller/AppsViewBinder$11;

    invoke-direct {v9, p0}, Lcom/android/launcher3/allapps/controller/AppsViewBinder$11;-><init>(Lcom/android/launcher3/allapps/controller/AppsViewBinder;)V

    const-wide/16 v10, 0xc8

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 429
    .end local v0    # "folderIconView":Landroid/view/View;
    .end local v1    # "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    .end local v2    # "folderItemCount":I
    .end local v3    # "folderRemoved":Z
    :cond_5
    iget-object v7, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v7, v8, v6}, Lcom/android/launcher3/common/drag/DragManager;->onAppsRemoved(Ljava/util/ArrayList;Ljava/util/HashSet;)V

    goto :goto_0
.end method

.method public bindComponentsRemoved(Ljava/util/ArrayList;Lcom/android/launcher3/common/compat/UserHandleCompat;)V
    .locals 5
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;",
            "Lcom/android/launcher3/common/compat/UserHandleCompat;",
            ")V"
        }
    .end annotation

    .prologue
    .line 436
    .local p1, "removedApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v1, Lcom/android/launcher3/allapps/controller/AppsViewBinder$12;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/launcher3/allapps/controller/AppsViewBinder$12;-><init>(Lcom/android/launcher3/allapps/controller/AppsViewBinder;Ljava/util/ArrayList;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    .line 441
    .local v1, "r":Ljava/lang/Runnable;
    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3, v1}, Lcom/android/launcher3/Launcher;->waitUntilResume(Ljava/lang/Runnable;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 455
    :goto_0
    return-void

    .line 445
    :cond_0
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 446
    .local v2, "removedComponents":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 447
    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v3, p1}, Lcom/android/launcher3/allapps/controller/AppsController;->removeApps(Ljava/util/ArrayList;)V

    .line 448
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 449
    .local v0, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-object v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 454
    .end local v0    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_1
    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Lcom/android/launcher3/common/drag/DragManager;->onAppsRemoved(Ljava/util/ArrayList;Ljava/util/HashSet;)V

    goto :goto_0
.end method

.method public bindFolderWithItems(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "newScreens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .local p2, "folderInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .local p3, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    const/4 v4, 0x0

    .line 262
    const-string v1, "AppsViewBinder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " bindFolderWithItems : addNotAnimated="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    new-instance v0, Lcom/android/launcher3/allapps/controller/AppsViewBinder$5;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/launcher3/allapps/controller/AppsViewBinder$5;-><init>(Lcom/android/launcher3/allapps/controller/AppsViewBinder;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 268
    .local v0, "r":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/Launcher;->waitUntilResume(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 288
    :cond_0
    :goto_0
    return-void

    .line 272
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/controller/AppsController;->getViewType()Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/allapps/controller/AppsController$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    if-ne v1, v2, :cond_3

    .line 273
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 274
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mAppsLoader:Lcom/android/launcher3/allapps/model/AppsLoader;

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v2, v1, p3}, Lcom/android/launcher3/allapps/model/AppsLoader;->addToFolderItem(Lcom/android/launcher3/folder/FolderInfo;Ljava/util/ArrayList;)V

    .line 276
    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/controller/AppsController;->setAlphabeticList()V

    goto :goto_0

    .line 279
    :cond_3
    if-eqz p1, :cond_4

    .line 280
    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->bindScreens(Ljava/util/ArrayList;)V

    .line 283
    :cond_4
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 284
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p0, p2, v4, v1}, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->bindItems(Ljava/util/ArrayList;II)V

    .line 285
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/folder/FolderInfo;

    invoke-direct {p0, v1, p3}, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->bindItemsToFolder(Lcom/android/launcher3/folder/FolderInfo;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public bindItems(Ljava/util/ArrayList;II)V
    .locals 25
    .param p2, "start"    # I
    .param p3, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 105
    .local p1, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-virtual/range {p1 .. p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 106
    .local v8, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    const-string v6, "AppsViewBinder"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " bindItems ="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, v8, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " , rank : "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, v8, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " , screen : "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v10, v8, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " , isFolder : "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    instance-of v9, v8, Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    new-instance v22, Lcom/android/launcher3/allapps/controller/AppsViewBinder$2;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/launcher3/allapps/controller/AppsViewBinder$2;-><init>(Lcom/android/launcher3/allapps/controller/AppsViewBinder;Ljava/util/ArrayList;II)V

    .line 115
    .local v22, "r":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Lcom/android/launcher3/Launcher;->waitUntilResume(Ljava/lang/Runnable;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 188
    .end local v8    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :goto_0
    return-void

    .line 119
    .restart local v8    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_0
    move/from16 v20, p2

    .end local v8    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    .local v20, "i":I
    :goto_1
    move/from16 v0, v20

    move/from16 v1, p3

    if-ge v0, v1, :cond_1

    .line 120
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mAppsLoader:Lcom/android/launcher3/allapps/model/AppsLoader;

    invoke-virtual {v6}, Lcom/android/launcher3/allapps/model/AppsLoader;->getLoaderStop()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 187
    :cond_1
    const-string v6, "AppsViewBinder"

    const-string v7, "bindItems end"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 124
    :cond_2
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 125
    .local v21, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-object/from16 v0, v21

    iget-wide v10, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    long-to-int v7, v10

    invoke-virtual {v6, v7}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v16

    .line 127
    .local v16, "cellLayout":Lcom/android/launcher3/common/base/view/CellLayout;
    const/16 v24, 0x0

    .line 128
    .local v24, "view":Landroid/view/View;
    const/16 v23, 0x0

    .line 129
    .local v23, "updateApp":Lcom/android/launcher3/common/base/item/ItemInfo;
    if-eqz v16, :cond_3

    .line 130
    move-object/from16 v0, v21

    iget v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v7}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountX()I

    move-result v7

    rem-int v17, v6, v7

    .line 131
    .local v17, "cellX":I
    move-object/from16 v0, v21

    iget v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v7}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountX()I

    move-result v7

    div-int v18, v6, v7

    .line 132
    .local v18, "cellY":I
    invoke-virtual/range {v16 .. v18}, Lcom/android/launcher3/common/base/view/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v24

    .line 134
    move-object/from16 v0, v24

    instance-of v6, v0, Lcom/android/launcher3/folder/view/FolderIconView;

    if-nez v6, :cond_3

    move-object/from16 v0, v24

    instance-of v6, v0, Lcom/android/launcher3/common/view/IconView;

    if-eqz v6, :cond_3

    move-object/from16 v6, v24

    check-cast v6, Lcom/android/launcher3/common/view/IconView;

    .line 135
    invoke-virtual {v6}, Lcom/android/launcher3/common/view/IconView;->isMarkToRemove()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 136
    const/16 v24, 0x0

    .line 140
    .end local v17    # "cellX":I
    .end local v18    # "cellY":I
    :cond_3
    move-object/from16 v0, v21

    iget v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    packed-switch v6, :pswitch_data_0

    .line 177
    :pswitch_0
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid Item Type : "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v21

    iget v9, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    :pswitch_1
    move-object/from16 v8, v21

    .line 142
    check-cast v8, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 144
    .local v8, "info":Lcom/android/launcher3/common/base/item/IconInfo;
    move-object/from16 v0, v24

    instance-of v6, v0, Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v6, :cond_5

    .line 145
    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/base/view/CellLayout;->removeView(Landroid/view/View;)V

    .line 146
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    iget-wide v10, v8, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    long-to-int v9, v10

    .line 147
    invoke-virtual {v7, v9}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    .line 148
    invoke-virtual {v11}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsFocusListener()Lcom/android/launcher3/allapps/controller/AppsFocusListener;

    move-result-object v11

    .line 146
    invoke-static/range {v6 .. v11}, Lcom/android/launcher3/allapps/AppsUtils;->createAppIcon(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/android/launcher3/common/base/item/IconInfo;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;Lcom/android/launcher3/allapps/controller/AppsFocusListener;)Landroid/view/View;

    move-result-object v24

    .line 179
    .end local v8    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    :goto_2
    move-object/from16 v0, v21

    iget v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->hidden:I

    if-nez v6, :cond_4

    .line 180
    if-nez v23, :cond_9

    .line 181
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Lcom/android/launcher3/allapps/controller/AppsController;->addItem(Landroid/view/View;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 119
    .end local v21    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v24    # "view":Landroid/view/View;
    :cond_4
    :goto_3
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_1

    .line 151
    .restart local v8    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    .restart local v21    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    .restart local v24    # "view":Landroid/view/View;
    :cond_5
    if-eqz v24, :cond_6

    .line 152
    move-object/from16 v23, v21

    goto :goto_2

    .line 154
    :cond_6
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    iget-wide v10, v8, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    long-to-int v9, v10

    .line 155
    invoke-virtual {v7, v9}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    .line 156
    invoke-virtual {v11}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsFocusListener()Lcom/android/launcher3/allapps/controller/AppsFocusListener;

    move-result-object v11

    .line 154
    invoke-static/range {v6 .. v11}, Lcom/android/launcher3/allapps/AppsUtils;->createAppIcon(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/android/launcher3/common/base/item/IconInfo;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;Lcom/android/launcher3/allapps/controller/AppsFocusListener;)Landroid/view/View;

    move-result-object v24

    .line 159
    goto :goto_2

    .line 161
    .end local v8    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    :pswitch_2
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFolderLock()Z

    move-result v6

    if-eqz v6, :cond_7

    move-object/from16 v19, v21

    .line 162
    check-cast v19, Lcom/android/launcher3/folder/FolderInfo;

    .line 163
    .local v19, "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    if-eqz v6, :cond_7

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Lcom/android/launcher3/folder/folderlock/FolderLock;->isLockedFolder(Lcom/android/launcher3/folder/FolderInfo;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 164
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Lcom/android/launcher3/folder/folderlock/FolderLock;->markAsLockedFolderWhenBind(Lcom/android/launcher3/folder/FolderInfo;)V

    .line 167
    .end local v19    # "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    :cond_7
    if-eqz v24, :cond_8

    .line 168
    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/base/view/CellLayout;->removeView(Landroid/view/View;)V

    .line 170
    :cond_8
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    .line 171
    invoke-virtual {v7}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCurrentPage()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    move-object/from16 v11, v21

    check-cast v11, Lcom/android/launcher3/folder/FolderInfo;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    const/4 v15, 0x2

    .line 170
    invoke-static/range {v9 .. v15}, Lcom/android/launcher3/folder/view/FolderIconView;->fromXml(Lcom/android/launcher3/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher3/folder/FolderInfo;Lcom/android/launcher3/common/base/controller/ControllerBase;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;I)Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v24

    .line 173
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v6}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsFocusListener()Lcom/android/launcher3/allapps/controller/AppsFocusListener;

    move-result-object v6

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 174
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v6}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsFocusListener()Lcom/android/launcher3/allapps/controller/AppsFocusListener;

    move-result-object v6

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    goto/16 :goto_2

    .line 183
    :cond_9
    check-cast v24, Lcom/android/launcher3/common/view/IconView;

    .end local v24    # "view":Landroid/view/View;
    check-cast v21, Lcom/android/launcher3/common/base/item/IconInfo;

    .end local v21    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/view/IconView;->applyFromApplicationInfo(Lcom/android/launcher3/common/base/item/IconInfo;)V

    goto/16 :goto_3

    .line 140
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public bindItemsInFolder(Ljava/util/ArrayList;)V
    .locals 8
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
    .line 530
    .local p1, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    const-string v3, "AppsViewBinder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " bindItemsInFolder ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    new-instance v2, Lcom/android/launcher3/allapps/controller/AppsViewBinder$16;

    invoke-direct {v2, p0, p1}, Lcom/android/launcher3/allapps/controller/AppsViewBinder$16;-><init>(Lcom/android/launcher3/allapps/controller/AppsViewBinder;Ljava/util/ArrayList;)V

    .line 539
    .local v2, "r":Ljava/lang/Runnable;
    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mAppsLoader:Lcom/android/launcher3/allapps/model/AppsLoader;

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/model/AppsLoader;->getLoaderStop()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3, v2}, Lcom/android/launcher3/Launcher;->waitUntilResume(Ljava/lang/Runnable;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 548
    :cond_0
    return-void

    .line 542
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 543
    .local v1, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mAppsLoader:Lcom/android/launcher3/allapps/model/AppsLoader;

    iget-wide v6, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/launcher3/allapps/model/AppsLoader;->findFolderById(Ljava/lang/Long;)Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v0

    .line 544
    .local v0, "folder":Lcom/android/launcher3/folder/FolderInfo;
    if-eqz v0, :cond_2

    .line 545
    check-cast v1, Lcom/android/launcher3/common/base/item/IconInfo;

    .end local v1    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/FolderInfo;->add(Lcom/android/launcher3/common/base/item/IconInfo;)V

    goto :goto_0
.end method

.method public bindItemsRemoved(Ljava/util/ArrayList;)V
    .locals 4
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
    .line 470
    .local p1, "removed":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v1, Lcom/android/launcher3/allapps/controller/AppsViewBinder$14;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/allapps/controller/AppsViewBinder$14;-><init>(Lcom/android/launcher3/allapps/controller/AppsViewBinder;Ljava/util/ArrayList;)V

    .line 475
    .local v1, "r":Ljava/lang/Runnable;
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/Launcher;->waitUntilResume(Ljava/lang/Runnable;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 488
    :cond_0
    :goto_0
    return-void

    .line 479
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 480
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 481
    .local v0, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v3, v0}, Lcom/android/launcher3/allapps/controller/AppsController;->removeAppsItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto :goto_1

    .line 485
    .end local v0    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_2
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/controller/AppsController;->getViewType()Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/allapps/controller/AppsController$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    if-ne v2, v3, :cond_0

    .line 486
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/controller/AppsController;->setAlphabeticList()V

    goto :goto_0
.end method

.method public bindRestoreItemsChange(Ljava/util/HashSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 350
    .local p1, "updates":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v0, Lcom/android/launcher3/allapps/controller/AppsViewBinder$8;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/allapps/controller/AppsViewBinder$8;-><init>(Lcom/android/launcher3/allapps/controller/AppsViewBinder;Ljava/util/HashSet;)V

    .line 355
    .local v0, "r":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/Launcher;->waitUntilResume(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 359
    :goto_0
    return-void

    .line 358
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/allapps/controller/AppsController;->updateRestoreItems(Ljava/util/HashSet;)V

    goto :goto_0
.end method

.method public finishBindingItems(I)V
    .locals 4
    .param p1, "totalPage"    # I

    .prologue
    .line 502
    const-string v1, "AppsViewBinder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finishBindingItems : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    new-instance v0, Lcom/android/launcher3/allapps/controller/AppsViewBinder$15;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/allapps/controller/AppsViewBinder$15;-><init>(Lcom/android/launcher3/allapps/controller/AppsViewBinder;I)V

    .line 508
    .local v0, "r":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/Launcher;->waitUntilResume(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 525
    :goto_0
    return-void

    .line 513
    :cond_0
    const-string v1, "AppsViewBinder"

    const-string v2, "finishBindingItems end"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsPagedView()Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->removeScreenToRightSideEndPage(I)V

    .line 517
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->setAppsBindLoading(Z)V

    .line 518
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherModel;->onLauncherBindingItemsCompleted()V

    .line 520
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v1}, Lcom/android/launcher3/common/customer/PostPositionController;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/customer/PostPositionController;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 521
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v1}, Lcom/android/launcher3/common/customer/PostPositionController;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/customer/PostPositionController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/common/customer/PostPositionController;->addAllItems()V

    .line 524
    :cond_1
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/logging/SALogging;->setDefaultValueForAppStatusLog(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public isAppsLoading()Z
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mAppsBindLoading:Z

    return v0
.end method

.method public needDefferToBind()Z
    .locals 1

    .prologue
    .line 552
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AppsController;->needDefferToBind()Z

    move-result v0

    return v0
.end method

.method public removeAllBindItems()V
    .locals 1

    .prologue
    .line 492
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsPagedView()Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->removeAllPages()V

    .line 493
    return-void
.end method

.method public removeUnusedItems(II)V
    .locals 1
    .param p1, "page"    # I
    .param p2, "itemNum"    # I

    .prologue
    .line 497
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/allapps/controller/AppsController;->removeUnusedItemViews(II)V

    .line 498
    return-void
.end method

.method public setAppsBindLoading(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mAppsBindLoading:Z

    .line 100
    return-void
.end method

.method public setup(Lcom/android/launcher3/common/drag/DragManager;Lcom/android/launcher3/allapps/view/AppsPagedView;)V
    .locals 0
    .param p1, "dragMgr"    # Lcom/android/launcher3/common/drag/DragManager;
    .param p2, "appsPagedView"    # Lcom/android/launcher3/allapps/view/AppsPagedView;

    .prologue
    .line 85
    iput-object p2, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    .line 86
    iput-object p1, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    .line 87
    return-void
.end method

.method public startBinding()V
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->setAppsBindLoading(Z)V

    .line 92
    return-void
.end method

.method public updateGridInfo()V
    .locals 1

    .prologue
    .line 557
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AppsController;->updateGridInfo()V

    .line 558
    return-void
.end method

.method public updateUnavailableComponent(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;I)V
    .locals 2
    .param p1, "disabledPackages"    # Ljava/lang/String;
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .param p3, "reason"    # I

    .prologue
    .line 460
    new-instance v0, Lcom/android/launcher3/allapps/controller/AppsViewBinder$13;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/launcher3/allapps/controller/AppsViewBinder$13;-><init>(Lcom/android/launcher3/allapps/controller/AppsViewBinder;Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;I)V

    .line 465
    .local v0, "r":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/launcher3/allapps/controller/AppsController;->disableAppsItemByPackageName(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;I)V

    .line 466
    return-void
.end method
