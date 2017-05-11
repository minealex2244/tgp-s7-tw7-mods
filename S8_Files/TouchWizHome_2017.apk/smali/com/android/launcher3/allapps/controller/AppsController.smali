.class public Lcom/android/launcher3/allapps/controller/AppsController;
.super Lcom/android/launcher3/common/stage/Stage;
.source "AppsController.java"

# interfaces
.implements Lcom/android/launcher3/common/base/controller/ControllerBase;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;
.implements Lcom/android/launcher3/LauncherModel$OnLauncherBindingItemsCompletedListener;
.implements Lcom/android/launcher3/LauncherModel$OnBadgeBindingCompletedLisnter;
.implements Lcom/android/launcher3/LauncherModel$OnRefreshLiveIconListener;
.implements Lcom/android/launcher3/common/multiselect/MultiSelectManager$MultiSelectListener;
.implements Lcom/android/launcher3/folder/folderlock/FolderLock$FolderLockActionCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/allapps/controller/AppsController$ViewType;
    }
.end annotation


# static fields
.field private static final APPS_ORGANIZE_APPS_ALERT:Ljava/lang/String; = "AppsController.OrganizeAppsAlert"

.field private static final APPS_VIEW_TYPE:Ljava/lang/String; = "AppsController.ViewType"

.field static final DEBUG_APPS_CONTROLLER:Z = true

.field public static final EXIT_DRAG_STATE_DELAY:I = 0x64

.field private static final FACTOR_INTERVAL:I = 0x2

.field private static final FACTOR_VALID_DECIMAL_PLACE:I = 0x2

.field public static final KEY_REPOSITION_BY:Ljava/lang/String; = "KEY_REPOSITION_BY"

.field public static final KEY_TARGET_GRID_SIZE:Ljava/lang/String; = "KEY_CHANGE_GRID_SIZE"

.field private static final MAP_NO_RECURSE:Z = false

.field private static final MAP_RECURSE:Z = true

.field public static final REPOSITION_GRIDBY:I = 0x1

.field public static final REPOSITION_NONE:I = -0x1

.field public static final REPOSITION_TIDEUP:I = 0x2

.field public static final REPOSITION_VIEWBY:I = 0x0

.field public static final STATE_DRAG:I = 0x1

.field public static final STATE_GRID:I = 0x5

.field public static final STATE_NORMAL:I = 0x0

.field public static final STATE_SEARCH:I = 0x3

.field public static final STATE_SELECT:I = 0x2

.field public static final STATE_TIDY:I = 0x4

.field private static final TAG:Ljava/lang/String; = "Launcher.AppsController"

.field private static sBounceAnimation:Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;


# instance fields
.field private mApplyTideUpPage:Z

.field private mAppsAlphaRatio:F

.field private mAppsAnimation:Lcom/android/launcher3/allapps/AppsTransitionAnimation;

.field private mAppsContainer:Lcom/android/launcher3/allapps/view/AppsContainer;

.field private mAppsFocusListener:Lcom/android/launcher3/allapps/controller/AppsFocusListener;

.field private mAppsPageIndicatorView:Landroid/view/View;

.field private mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

.field private mAppsScreenGridPanel:Lcom/android/launcher3/allapps/AppsScreenGridPanel;

.field private mAppsSearchBarView:Lcom/android/launcher3/allapps/view/AppsSearchBar;

.field private mAppsSearchView:Lcom/android/launcher3/allapps/view/AppsSearchContainerView;

.field private mAppsShrinkFactor:F

.field private mAppsSlipY:I

.field private mAppsViewBinder:Lcom/android/launcher3/allapps/controller/AppsViewBinder;

.field private mDownwardFadeOutEnd:I

.field private mDownwardFadeOutStart:I

.field private mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

.field private mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

.field private mExitDragStateHandler:Landroid/os/Handler;

.field private mFadeOutRange:F

.field private mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

.field private mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

.field private mFromSetting:Z

.field private mIsResumed:Z

.field private mLoggingRunnable:Ljava/lang/Runnable;

.field private mMoveToHomeApproachingEnd:I

.field private mMoveToHomeApproachingStart:I

.field private mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

.field private mPageIndicatorScaleRatio:F

.field private mPageIndicatorShrinkFactor:F

.field private mPageSnapMovingRatioOnApps:F

.field private mRemoveInProgress:Z

.field private mState:I

.field private mTidyUpContainer:Landroid/view/View;

.field private mTrayBorderLimit:I

.field private mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

.field private mUpwardFadeOutEnd:I

.field private mUpwardFadeOutStart:I

.field private mViewType:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 109
    invoke-direct {p0}, Lcom/android/launcher3/common/stage/Stage;-><init>()V

    .line 170
    iput v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mState:I

    .line 171
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mExitDragStateHandler:Landroid/os/Handler;

    .line 186
    iput-boolean v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mApplyTideUpPage:Z

    .line 190
    iput-boolean v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mFromSetting:Z

    .line 191
    iput-boolean v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mIsResumed:Z

    .line 192
    iput-boolean v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mRemoveInProgress:Z

    .line 194
    new-instance v0, Lcom/android/launcher3/allapps/controller/AppsController$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/allapps/controller/AppsController$1;-><init>(Lcom/android/launcher3/allapps/controller/AppsController;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLoggingRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/allapps/controller/AppsController;)Lcom/android/launcher3/allapps/view/AppsPagedView;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/controller/AppsController;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/launcher3/allapps/controller/AppsController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/allapps/controller/AppsController;
    .param p1, "x1"    # Z

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mApplyTideUpPage:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/launcher3/allapps/controller/AppsController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/allapps/controller/AppsController;
    .param p1, "x1"    # Z

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mRemoveInProgress:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/launcher3/allapps/controller/AppsController;)Lcom/android/launcher3/Launcher;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/controller/AppsController;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/launcher3/allapps/controller/AppsController;)Lcom/android/launcher3/common/stage/StageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/controller/AppsController;

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/launcher3/allapps/controller/AppsController;)Lcom/android/launcher3/Launcher;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/controller/AppsController;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/launcher3/allapps/controller/AppsController;)Lcom/android/launcher3/Launcher;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/controller/AppsController;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/launcher3/allapps/controller/AppsController;[I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/allapps/controller/AppsController;
    .param p1, "x1"    # [I

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/controller/AppsController;->repositionByGrid([I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/launcher3/allapps/controller/AppsController;)Lcom/android/launcher3/common/stage/StageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/controller/AppsController;

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v0

    return-object v0
.end method

.method private addItemToLastPosition(Lcom/android/launcher3/common/base/item/IconInfo;)V
    .locals 9
    .param p1, "iconInfo"    # Lcom/android/launcher3/common/base/item/IconInfo;

    .prologue
    .line 1509
    if-eqz p1, :cond_1

    .line 1510
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getPageCount()I

    move-result v0

    add-int/lit8 v6, v0, -0x1

    .line 1511
    .local v6, "lastPage":I
    invoke-direct {p0, v6}, Lcom/android/launcher3/allapps/controller/AppsController;->findFirstEmptyCell(I)I

    move-result v7

    .line 1512
    .local v7, "rank":I
    const/4 v0, -0x1

    if-ne v7, v0, :cond_0

    .line 1513
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->createAppsPage()Lcom/android/launcher3/allapps/view/AppsViewCellLayout;

    .line 1514
    const/4 v7, 0x0

    .line 1515
    add-int/lit8 v6, v6, 0x1

    .line 1517
    :cond_0
    const-wide/16 v2, -0x66

    iput-wide v2, p1, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    .line 1518
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v0, v6}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v1

    .line 1519
    .local v1, "page":Lcom/android/launcher3/common/base/view/CellLayout;
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsFocusListener:Lcom/android/launcher3/allapps/controller/AppsFocusListener;

    move-object v2, p1

    move-object v4, p0

    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/allapps/AppsUtils;->createAppIcon(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/android/launcher3/common/base/item/IconInfo;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;Lcom/android/launcher3/allapps/controller/AppsFocusListener;)Landroid/view/View;

    move-result-object v8

    .line 1520
    .local v8, "v":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->getDragController()Lcom/android/launcher3/allapps/controller/AppsDragController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->getReorderController()Lcom/android/launcher3/allapps/controller/AppsReorderController;

    move-result-object v0

    invoke-virtual {v0, v8, p1, v7, v6}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->addViewForRankScreen(Landroid/view/View;Lcom/android/launcher3/common/base/item/ItemInfo;II)V

    .line 1522
    .end local v1    # "page":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v6    # "lastPage":I
    .end local v7    # "rank":I
    .end local v8    # "v":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private applySetViewType()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 742
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getLauncherModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherModel;->getAppsLoader()Lcom/android/launcher3/allapps/model/AppsLoader;

    move-result-object v0

    .line 743
    .local v0, "appsLoader":Lcom/android/launcher3/allapps/model/AppsLoader;
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mViewType:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    sget-object v2, Lcom/android/launcher3/allapps/controller/AppsController$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    if-ne v1, v2, :cond_1

    .line 744
    sget-object v1, Lcom/android/launcher3/allapps/model/AppsLoader;->MENU_ALPHA_NORMALIZER:Lcom/android/launcher3/allapps/model/AppsLoader$Normalizer;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/model/AppsLoader;->setNormalizer(Lcom/android/launcher3/allapps/model/AppsLoader$Normalizer;)V

    .line 745
    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v1

    const-string v2, "AZBT"

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 750
    :goto_0
    invoke-virtual {v0}, Lcom/android/launcher3/allapps/model/AppsLoader;->getCurrentComparator()Lcom/android/launcher3/allapps/model/AppsLoader$Normalizer;

    move-result-object v1

    invoke-direct {p0, v1, v6}, Lcom/android/launcher3/allapps/controller/AppsController;->repositionByNormalizer(Lcom/android/launcher3/allapps/model/AppsLoader$Normalizer;I)V

    .line 751
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mViewType:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    sget-object v2, Lcom/android/launcher3/allapps/controller/AppsController$ViewType;->CUSTOM_GRID:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    if-ne v1, v2, :cond_0

    .line 752
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->updateDirtyItems()V

    .line 754
    :cond_0
    return-void

    .line 747
    :cond_1
    sget-object v1, Lcom/android/launcher3/allapps/model/AppsLoader;->MENU_CUSTOM_NORMALIZER:Lcom/android/launcher3/allapps/model/AppsLoader$Normalizer;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/model/AppsLoader;->setNormalizer(Lcom/android/launcher3/allapps/model/AppsLoader$Normalizer;)V

    .line 748
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/model/AppsLoader;->reloadPositionAllAppsItemsFromDB(Z)V

    goto :goto_0
.end method

.method private checkPossibleTideUpPages()Z
    .locals 3

    .prologue
    .line 1941
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getChildCount()I

    move-result v1

    .line 1942
    .local v1, "total_page":I
    const/4 v0, 0x0

    .line 1943
    .local v0, "i":I
    :goto_0
    add-int/lit8 v2, v1, -0x1

    if-ge v0, v2, :cond_0

    .line 1944
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2, v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->isFullyOccupied()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1948
    :cond_0
    add-int/lit8 v2, v1, -0x1

    if-lt v0, v2, :cond_2

    .line 1949
    const/4 v2, 0x0

    .line 1951
    :goto_1
    return v2

    .line 1943
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1951
    :cond_2
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private closeOrganizeAppsConfirmDialog()V
    .locals 3

    .prologue
    .line 2805
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 2806
    .local v1, "manager":Landroid/app/FragmentManager;
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 2808
    .local v0, "ft":Landroid/app/FragmentTransaction;
    invoke-static {v0, v1}, Lcom/android/launcher3/allapps/OrganizeAppsConfirmDialog;->dismiss(Landroid/app/FragmentTransaction;Landroid/app/FragmentManager;)V

    .line 2809
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 2810
    return-void
.end method

.method private closeViewTypeDialog()V
    .locals 3

    .prologue
    .line 771
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 772
    .local v1, "manager":Landroid/app/FragmentManager;
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 774
    .local v0, "ft":Landroid/app/FragmentTransaction;
    invoke-static {v0, v1}, Lcom/android/launcher3/allapps/AppsViewTypeDialog;->dismiss(Landroid/app/FragmentTransaction;Landroid/app/FragmentManager;)V

    .line 775
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 776
    return-void
.end method

.method private createFolder()V
    .locals 18

    .prologue
    .line 2064
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v14}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->getCheckedAppsViewList()Ljava/util/ArrayList;

    move-result-object v2

    .line 2065
    .local v2, "appsViewList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2066
    .local v5, "folderItemsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-lez v14, :cond_7

    .line 2067
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/launcher3/allapps/controller/AppsController;->getTargetView(Ljava/util/ArrayList;)Landroid/view/View;

    move-result-object v11

    .line 2068
    .local v11, "targetView":Landroid/view/View;
    if-nez v11, :cond_1

    .line 2121
    .end local v11    # "targetView":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 2071
    .restart local v11    # "targetView":Landroid/view/View;
    :cond_1
    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 2072
    .local v10, "targetItem":Lcom/android/launcher3/common/base/item/IconInfo;
    invoke-virtual {v11}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v14

    invoke-interface {v14}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    check-cast v9, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 2074
    .local v9, "targetCellLayout":Lcom/android/launcher3/common/base/view/CellLayout;
    if-eqz v10, :cond_8

    .line 2075
    const-string v14, "Launcher.AppsController"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Create folder with target item\'s position. target item is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v10, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2076
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v14}, Lcom/android/launcher3/Launcher;->isFolderStage()Z

    move-result v14

    if-eqz v14, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v14}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0b0026

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 2077
    .local v3, "delayToOpenFolder":I
    :goto_1
    iget-wide v14, v10, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    long-to-int v12, v14

    .line 2080
    .local v12, "toPage":I
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v11}, Lcom/android/launcher3/allapps/controller/AppsController;->removeCheckedAppView(Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v5

    .line 2082
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v14, v12}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v8

    .line 2083
    .local v8, "page":Lcom/android/launcher3/common/base/view/CellLayout;
    if-eqz v8, :cond_2

    .line 2084
    invoke-virtual {v8, v11}, Lcom/android/launcher3/common/base/view/CellLayout;->removeView(Landroid/view/View;)V

    .line 2088
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/allapps/controller/AppsController;->getDragController()Lcom/android/launcher3/allapps/controller/AppsDragController;

    move-result-object v14

    invoke-virtual {v14, v9, v10}, Lcom/android/launcher3/allapps/controller/AppsDragController;->addFolder(Lcom/android/launcher3/common/base/view/CellLayout;Lcom/android/launcher3/common/base/item/IconInfo;)Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v4

    .line 2090
    .local v4, "folder":Lcom/android/launcher3/folder/view/FolderIconView;
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-lez v14, :cond_3

    .line 2091
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/launcher3/allapps/controller/AppsController;->removeCheckedAppViewFromFolder(Ljava/util/ArrayList;)V

    .line 2094
    :cond_3
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2095
    .local v7, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/View;

    .line 2096
    .local v13, "view":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 2097
    .local v6, "item":Lcom/android/launcher3/common/base/item/IconInfo;
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2076
    .end local v3    # "delayToOpenFolder":I
    .end local v4    # "folder":Lcom/android/launcher3/folder/view/FolderIconView;
    .end local v6    # "item":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v7    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    .end local v8    # "page":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v12    # "toPage":I
    .end local v13    # "view":Landroid/view/View;
    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    .line 2099
    .restart local v3    # "delayToOpenFolder":I
    .restart local v4    # "folder":Lcom/android/launcher3/folder/view/FolderIconView;
    .restart local v7    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    .restart local v8    # "page":Lcom/android/launcher3/common/base/view/CellLayout;
    .restart local v12    # "toPage":I
    :cond_5
    invoke-virtual {v4, v7}, Lcom/android/launcher3/folder/view/FolderIconView;->addItems(Ljava/util/ArrayList;)V

    .line 2101
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v14}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getNextPage()I

    move-result v14

    if-eq v12, v14, :cond_6

    .line 2102
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v14, v12}, Lcom/android/launcher3/allapps/view/AppsPagedView;->snapToPage(I)V

    .line 2105
    :cond_6
    new-instance v14, Landroid/os/Handler;

    invoke-direct {v14}, Landroid/os/Handler;-><init>()V

    new-instance v15, Lcom/android/launcher3/allapps/controller/AppsController$18;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v4}, Lcom/android/launcher3/allapps/controller/AppsController$18;-><init>(Lcom/android/launcher3/allapps/controller/AppsController;Lcom/android/launcher3/folder/view/FolderIconView;)V

    int-to-long v0, v3

    move-wide/from16 v16, v0

    invoke-virtual/range {v14 .. v17}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2117
    .end local v3    # "delayToOpenFolder":I
    .end local v4    # "folder":Lcom/android/launcher3/folder/view/FolderIconView;
    .end local v7    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    .end local v8    # "page":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v9    # "targetCellLayout":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v10    # "targetItem":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v11    # "targetView":Landroid/view/View;
    .end local v12    # "toPage":I
    :cond_7
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/allapps/controller/AppsController;->removeEmptyPagesAndUpdateAllItemsInfo()Z

    .line 2118
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/allapps/controller/AppsController;->isAlphabeticalMode()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 2119
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/allapps/controller/AppsController;->setAlphabeticList()V

    goto/16 :goto_0

    .line 2114
    .restart local v9    # "targetCellLayout":Lcom/android/launcher3/common/base/view/CellLayout;
    .restart local v10    # "targetItem":Lcom/android/launcher3/common/base/item/IconInfo;
    .restart local v11    # "targetView":Landroid/view/View;
    :cond_8
    const-string v14, "Launcher.AppsController"

    const-string v15, "onClickCreateFolder : app info is null"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private findFirstEmptyCell(I)I
    .locals 12
    .param p1, "screenId"    # I

    .prologue
    .line 2172
    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v6}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getMaxItemsPerScreen()I

    move-result v0

    .line 2173
    .local v0, "count":I
    new-array v4, v0, [Z

    .line 2174
    .local v4, "ops":[Z
    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getLauncherModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/LauncherModel;->getAppsLoader()Lcom/android/launcher3/allapps/model/AppsLoader;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/allapps/model/AppsLoader;->getTopLevelItemsInApps()Ljava/util/ArrayList;

    move-result-object v3

    .line 2175
    .local v3, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 2176
    .local v2, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-wide v8, v2, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    int-to-long v10, p1

    cmp-long v7, v8, v10

    if-nez v7, :cond_0

    .line 2177
    iget v5, v2, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    .line 2178
    .local v5, "pos":I
    if-ltz v5, :cond_0

    if-ge v5, v0, :cond_0

    .line 2179
    const/4 v7, 0x1

    aput-boolean v7, v4, v5

    goto :goto_0

    .line 2184
    .end local v2    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v5    # "pos":I
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v6, v4

    if-ge v1, v6, :cond_3

    .line 2185
    aget-boolean v6, v4, v1

    if-nez v6, :cond_2

    .line 2190
    .end local v1    # "i":I
    :goto_2
    return v1

    .line 2184
    .restart local v1    # "i":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2190
    :cond_3
    const/4 v1, -0x1

    goto :goto_2
.end method

.method private getAllCellLayoutChildren()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/view/CellLayoutChildren;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1044
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1045
    .local v0, "childrenLayouts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/view/CellLayoutChildren;>;"
    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getChildCount()I

    move-result v2

    .line 1046
    .local v2, "screenCount":I
    const/4 v1, 0x0

    .local v1, "screen":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1047
    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v3, v1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v3}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1046
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1049
    :cond_0
    return-object v0
.end method

.method private getFirstMatch(Lcom/android/launcher3/common/base/item/ItemOperator;)Landroid/view/View;
    .locals 3
    .param p1, "operator"    # Lcom/android/launcher3/common/base/item/ItemOperator;

    .prologue
    const/4 v2, 0x0

    .line 1887
    const/4 v1, 0x1

    new-array v0, v1, [Landroid/view/View;

    .line 1888
    .local v0, "value":[Landroid/view/View;
    new-instance v1, Lcom/android/launcher3/allapps/controller/AppsController$16;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/launcher3/allapps/controller/AppsController$16;-><init>(Lcom/android/launcher3/allapps/controller/AppsController;Lcom/android/launcher3/common/base/item/ItemOperator;[Landroid/view/View;)V

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/allapps/controller/AppsController;->mapOverItems(ZLcom/android/launcher3/common/base/item/ItemOperator;)V

    .line 1898
    aget-object v1, v0, v2

    return-object v1
.end method

.method private getPageDescription()Ljava/lang/String;
    .locals 7

    .prologue
    .line 2629
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getChildCount()I

    move-result v1

    .line 2630
    .local v1, "lastPage":I
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCurrentPage()I

    move-result v2

    add-int/lit8 v0, v2, 0x1

    .line 2632
    .local v0, "currentPage":I
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08001f

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getTargetView(Ljava/util/ArrayList;)Landroid/view/View;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 2124
    .local p1, "appsViewList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v12, 0x0

    .line 2125
    .local v12, "targetView":Landroid/view/View;
    const/4 v11, 0x0

    .line 2126
    .local v11, "targetItem":Lcom/android/launcher3/common/base/item/ItemInfo;
    if-eqz p1, :cond_3

    .line 2127
    const/4 v8, 0x1

    .line 2128
    .local v8, "isItemInFolder":Z
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v7, v0, -0x1

    .local v7, "i":I
    :goto_0
    if-ltz v7, :cond_0

    .line 2129
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    .end local v12    # "targetView":Landroid/view/View;
    check-cast v12, Landroid/view/View;

    .line 2130
    .restart local v12    # "targetView":Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "targetItem":Lcom/android/launcher3/common/base/item/ItemInfo;
    check-cast v11, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 2132
    .restart local v11    # "targetItem":Lcom/android/launcher3/common/base/item/ItemInfo;
    invoke-virtual {p0, v11}, Lcom/android/launcher3/allapps/controller/AppsController;->isItemInFolder(Lcom/android/launcher3/common/base/item/ItemInfo;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 2133
    const/4 v8, 0x0

    .line 2138
    :cond_0
    if-eqz v8, :cond_3

    .line 2139
    const/4 v6, -0x1

    .line 2140
    .local v6, "empty":I
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getNextPage()I

    move-result v9

    .line 2141
    .local v9, "orderablePage":I
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getPageCount()I

    move-result v10

    .line 2142
    .local v10, "pageCount":I
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getNextPage()I

    move-result v7

    :goto_1
    if-ge v7, v10, :cond_1

    .line 2143
    invoke-direct {p0, v7}, Lcom/android/launcher3/allapps/controller/AppsController;->findFirstEmptyCell(I)I

    move-result v6

    .line 2144
    if-ltz v6, :cond_5

    .line 2145
    move v9, v7

    .line 2150
    :cond_1
    const/4 v0, -0x1

    if-ne v6, v0, :cond_2

    .line 2151
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->createAppsPage()Lcom/android/launcher3/allapps/view/AppsViewCellLayout;

    .line 2154
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v0, v9}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v1

    .line 2155
    .local v1, "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object v2, v11

    check-cast v2, Lcom/android/launcher3/common/base/item/IconInfo;

    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsFocusListener:Lcom/android/launcher3/allapps/controller/AppsFocusListener;

    move-object v4, p0

    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/allapps/AppsUtils;->createAppIcon(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/android/launcher3/common/base/item/IconInfo;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;Lcom/android/launcher3/allapps/controller/AppsFocusListener;)Landroid/view/View;

    move-result-object v12

    .line 2157
    if-eqz v12, :cond_3

    .line 2158
    invoke-virtual {v12}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "targetItem":Lcom/android/launcher3/common/base/item/ItemInfo;
    check-cast v11, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 2159
    .restart local v11    # "targetItem":Lcom/android/launcher3/common/base/item/ItemInfo;
    int-to-long v2, v9

    iput-wide v2, v11, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    .line 2160
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/CellLayout;->getPageChildCount()I

    move-result v0

    iput v0, v11, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    .line 2161
    const/4 v0, 0x0

    invoke-virtual {v11, v0}, Lcom/android/launcher3/common/base/item/ItemInfo;->setChecked(Z)V

    .line 2163
    invoke-virtual {p0, v12, v11}, Lcom/android/launcher3/allapps/controller/AppsController;->addItem(Landroid/view/View;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 2168
    .end local v1    # "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v6    # "empty":I
    .end local v7    # "i":I
    .end local v8    # "isItemInFolder":Z
    .end local v9    # "orderablePage":I
    .end local v10    # "pageCount":I
    :cond_3
    return-object v12

    .line 2128
    .restart local v7    # "i":I
    .restart local v8    # "isItemInFolder":Z
    :cond_4
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 2142
    .restart local v6    # "empty":I
    .restart local v9    # "orderablePage":I
    .restart local v10    # "pageCount":I
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_1
.end method

.method public static getViewTypeFromSharedPreference(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2650
    .line 2651
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 2650
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2652
    .local v0, "prefs":Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    .line 2653
    const-string v1, "AppsController.ViewType"

    sget-object v2, Lcom/android/launcher3/allapps/controller/AppsController$ViewType;->CUSTOM_GRID:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/controller/AppsController$ViewType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2655
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isDragLocked()Z
    .locals 1

    .prologue
    .line 2857
    iget-boolean v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mRemoveInProgress:Z

    return v0
.end method

.method private mapOverItems(ZLcom/android/launcher3/common/base/item/ItemOperator;)V
    .locals 12
    .param p1, "recurse"    # Z
    .param p2, "op"    # Lcom/android/launcher3/common/base/item/ItemOperator;

    .prologue
    .line 1053
    invoke-direct {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->getAllCellLayoutChildren()Ljava/util/ArrayList;

    move-result-object v2

    .line 1054
    .local v2, "containers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/view/CellLayoutChildren;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    .line 1056
    .local v1, "container":Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v7

    .line 1057
    .local v7, "itemCount":I
    const/4 v8, 0x0

    .local v8, "itemIdx":I
    :goto_0
    if-ge v8, v7, :cond_0

    .line 1058
    invoke-virtual {v1, v8}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1059
    .local v6, "item":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 1060
    .local v5, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    if-eqz p1, :cond_3

    instance-of v10, v5, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v10, :cond_3

    instance-of v10, v6, Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v10, :cond_3

    move-object v3, v6

    .line 1061
    check-cast v3, Lcom/android/launcher3/folder/view/FolderIconView;

    .line 1062
    .local v3, "folder":Lcom/android/launcher3/folder/view/FolderIconView;
    invoke-virtual {v3}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderView()Lcom/android/launcher3/folder/view/FolderView;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/launcher3/folder/view/FolderView;->getItemsInReadingOrder()Ljava/util/ArrayList;

    move-result-object v4

    .line 1064
    .local v4, "folderChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1065
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    check-cast v5, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 1066
    .restart local v5    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    invoke-interface {p2, v5, v0, v3}, Lcom/android/launcher3/common/base/item/ItemOperator;->evaluate(Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;Landroid/view/View;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 1077
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "container":Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    .end local v3    # "folder":Lcom/android/launcher3/folder/view/FolderIconView;
    .end local v4    # "folderChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v5    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v6    # "item":Landroid/view/View;
    .end local v7    # "itemCount":I
    .end local v8    # "itemIdx":I
    :cond_2
    return-void

    .line 1071
    .restart local v1    # "container":Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    .restart local v5    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    .restart local v6    # "item":Landroid/view/View;
    .restart local v7    # "itemCount":I
    .restart local v8    # "itemIdx":I
    :cond_3
    const/4 v10, 0x0

    invoke-interface {p2, v5, v6, v10}, Lcom/android/launcher3/common/base/item/ItemOperator;->evaluate(Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;Landroid/view/View;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 1057
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_0
.end method

.method private removeAppsItem(Lcom/android/launcher3/common/base/view/CellLayout;Landroid/view/View;)V
    .locals 2
    .param p1, "parentCell"    # Lcom/android/launcher3/common/base/view/CellLayout;
    .param p2, "v"    # Landroid/view/View;

    .prologue
    .line 1298
    if-eqz p1, :cond_1

    .line 1299
    invoke-virtual {p1, p2}, Lcom/android/launcher3/common/base/view/CellLayout;->removeView(Landroid/view/View;)V

    .line 1308
    :goto_0
    instance-of v0, p2, Lcom/android/launcher3/common/drag/DropTarget;

    if-eqz v0, :cond_0

    .line 1309
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    check-cast p2, Lcom/android/launcher3/common/drag/DropTarget;

    .end local p2    # "v":Landroid/view/View;
    invoke-virtual {v0, p2}, Lcom/android/launcher3/common/drag/DragManager;->removeDropTarget(Lcom/android/launcher3/common/drag/DropTarget;)V

    .line 1311
    :cond_0
    return-void

    .line 1305
    .restart local p2    # "v":Landroid/view/View;
    :cond_1
    const-string v0, "Launcher.AppsController"

    const-string v1, "mDragInfo.cell has null parent"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private removeCheckedAppView(Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;
    .locals 5
    .param p2, "targetView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2194
    .local p1, "appsViewList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2195
    .local v1, "folderItemsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2196
    .local v0, "checkedApp":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 2197
    .local v2, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    if-eqz v2, :cond_0

    .line 2201
    invoke-virtual {p0, v2}, Lcom/android/launcher3/allapps/controller/AppsController;->isItemInFolder(Lcom/android/launcher3/common/base/item/ItemInfo;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2202
    check-cast v2, Lcom/android/launcher3/common/base/item/IconInfo;

    .end local v2    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2205
    .end local v0    # "checkedApp":Landroid/view/View;
    :cond_1
    return-object v1
.end method

.method private removeCheckedAppViewFromFolder(Ljava/util/ArrayList;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2209
    .local p1, "appsViewList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 2210
    .local v6, "itemMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 2211
    .local v5, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-wide v12, v5, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 2212
    iget-wide v12, v5, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2214
    :cond_0
    iget-wide v12, v5, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    .line 2215
    .local v9, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    check-cast v5, Lcom/android/launcher3/common/base/item/IconInfo;

    .end local v5    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2218
    .end local v9    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    :cond_1
    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    .line 2219
    .local v8, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_2
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 2220
    .local v0, "containerId":J
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 2221
    .local v7, "itemsInContainer":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    const-wide/16 v12, 0x0

    cmp-long v10, v0, v12

    if-lez v10, :cond_2

    .line 2222
    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsIconByItemId(J)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/folder/view/FolderIconView;

    .line 2223
    .local v4, "iconView":Lcom/android/launcher3/folder/view/FolderIconView;
    if-eqz v4, :cond_3

    .line 2224
    invoke-virtual {v4}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v3

    .line 2225
    .local v3, "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    invoke-virtual {v3, v7}, Lcom/android/launcher3/folder/FolderInfo;->remove(Ljava/util/ArrayList;)V

    .line 2227
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->isAlphabeticalMode()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 2228
    invoke-virtual {v4}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderView()Lcom/android/launcher3/folder/view/FolderView;

    move-result-object v2

    .line 2229
    .local v2, "folder":Lcom/android/launcher3/folder/view/FolderView;
    invoke-virtual {v2}, Lcom/android/launcher3/folder/view/FolderView;->getItemCount()I

    move-result v10

    const/4 v12, 0x1

    if-gt v10, v12, :cond_2

    .line 2230
    invoke-virtual {v2}, Lcom/android/launcher3/folder/view/FolderView;->getItemCount()I

    move-result v10

    const/4 v12, 0x0

    invoke-virtual {p0, v3, v10, v4, v12}, Lcom/android/launcher3/allapps/controller/AppsController;->replaceFolderWithFinalItem(Lcom/android/launcher3/common/base/item/ItemInfo;ILandroid/view/View;Z)V

    goto :goto_1

    .line 2234
    .end local v2    # "folder":Lcom/android/launcher3/folder/view/FolderView;
    .end local v3    # "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    :cond_3
    const-string v10, "Launcher.AppsController"

    const-string v12, "folder iconview is null"

    invoke-static {v10, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2238
    .end local v0    # "containerId":J
    .end local v4    # "iconView":Lcom/android/launcher3/folder/view/FolderIconView;
    .end local v7    # "itemsInContainer":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    :cond_4
    return-void
.end method

.method private repositionByGrid([I)V
    .locals 8
    .param p1, "gridXY"    # [I

    .prologue
    const/4 v7, 0x1

    .line 2874
    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getLauncherModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherModel;->getAppsLoader()Lcom/android/launcher3/allapps/model/AppsLoader;

    move-result-object v0

    .line 2875
    .local v0, "appsLoader":Lcom/android/launcher3/allapps/model/AppsLoader;
    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v3

    .line 2876
    .local v3, "dp":Lcom/android/launcher3/common/deviceprofile/DeviceProfile;
    const/4 v4, 0x0

    aget v1, p1, v4

    .line 2877
    .local v1, "cellX":I
    aget v2, p1, v7

    .line 2878
    .local v2, "cellY":I
    invoke-virtual {v3, v1, v2}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->setAppsCurrentGrid(II)V

    .line 2879
    mul-int v4, v1, v2

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/launcher3/allapps/model/AppsLoader;->onChangeScreenGrid(III)V

    .line 2880
    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v4, v1, v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->onChangeScreenGrid(II)V

    .line 2882
    const-string v4, "Launcher.AppsController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "repositionByGrid for preview : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2883
    invoke-virtual {v0}, Lcom/android/launcher3/allapps/model/AppsLoader;->getCurrentComparator()Lcom/android/launcher3/allapps/model/AppsLoader$Normalizer;

    move-result-object v4

    invoke-direct {p0, v4, v7}, Lcom/android/launcher3/allapps/controller/AppsController;->repositionByNormalizer(Lcom/android/launcher3/allapps/model/AppsLoader$Normalizer;I)V

    .line 2884
    return-void
.end method

.method private repositionByNormalizer(Lcom/android/launcher3/allapps/model/AppsLoader$Normalizer;I)V
    .locals 25
    .param p2, "repositionBy"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/allapps/model/AppsLoader$Normalizer",
            "<",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 2721
    .local p1, "normalizer":Lcom/android/launcher3/allapps/model/AppsLoader$Normalizer;, "Lcom/android/launcher3/allapps/model/AppsLoader$Normalizer<Ljava/lang/Object;>;"
    const-string v4, "Launcher.AppsController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "repositionByNormalizer start : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2722
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 2723
    .local v16, "cur":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getLauncherModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherModel;->getAppsLoader()Lcom/android/launcher3/allapps/model/AppsLoader;

    move-result-object v12

    .line 2724
    .local v12, "appsLoader":Lcom/android/launcher3/allapps/model/AppsLoader;
    invoke-virtual {v12}, Lcom/android/launcher3/allapps/model/AppsLoader;->getTopLevelItemsInApps()Ljava/util/ArrayList;

    move-result-object v11

    .line 2726
    .local v11, "appItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 2727
    .local v18, "iconViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 2728
    .local v15, "folderViewMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getPageCount()I

    move-result v21

    .line 2729
    .local v21, "pageCount":I
    const/16 v22, 0x0

    .local v22, "pageIndex":I
    :goto_0
    move/from16 v0, v22

    move/from16 v1, v21

    if-ge v0, v1, :cond_4

    .line 2730
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v14

    .line 2731
    .local v14, "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    invoke-virtual {v14}, Lcom/android/launcher3/common/base/view/CellLayout;->getPageChildCount()I

    move-result v13

    .line 2732
    .local v13, "childCount":I
    const/16 v20, 0x0

    .local v20, "itemIndex":I
    :goto_1
    move/from16 v0, v20

    if-ge v0, v13, :cond_2

    .line 2733
    move/from16 v0, v20

    invoke-virtual {v14, v0}, Lcom/android/launcher3/common/base/view/CellLayout;->getChildOnPageAt(I)Landroid/view/View;

    move-result-object v23

    .line 2734
    .local v23, "view":Landroid/view/View;
    move-object/from16 v0, v23

    instance-of v4, v0, Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v4, :cond_1

    .line 2735
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/common/base/item/ItemInfo;

    move-object/from16 v0, v23

    invoke-virtual {v15, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2732
    :cond_0
    :goto_2
    add-int/lit8 v20, v20, 0x1

    goto :goto_1

    .line 2736
    :cond_1
    move-object/from16 v0, v23

    instance-of v4, v0, Lcom/android/launcher3/common/view/IconView;

    if-eqz v4, :cond_0

    .line 2737
    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2740
    .end local v23    # "view":Landroid/view/View;
    :cond_2
    invoke-virtual {v14}, Lcom/android/launcher3/common/base/view/CellLayout;->removeAllViews()V

    .line 2742
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getMaxItemsPerScreen()I

    move-result v4

    if-le v13, v4, :cond_3

    .line 2743
    const-string v4, "Launcher.AppsController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "over maxitem in screen : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2729
    :cond_3
    add-int/lit8 v22, v22, 0x1

    goto :goto_0

    .line 2746
    .end local v13    # "childCount":I
    .end local v14    # "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v20    # "itemIndex":I
    :cond_4
    const-string v4, "Launcher.AppsController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "reposition - makeViewList : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v8, v8, v16

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2747
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v15}, Ljava/util/HashMap;->size()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2746
    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2749
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getMaxItemsPerScreen()I

    move-result v4

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v4, v6}, Lcom/android/launcher3/allapps/model/AppsLoader$Normalizer;->normalize(Ljava/util/ArrayList;IZ)I

    .line 2750
    const-string v4, "Launcher.AppsController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "reposition - normalize: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v8, v8, v16

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2752
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :goto_3
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 2753
    .local v19, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-object/from16 v0, v19

    iget-wide v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    long-to-int v6, v6

    invoke-virtual {v4, v6}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v5

    .line 2754
    .local v5, "toLayout":Lcom/android/launcher3/common/base/view/CellLayout;
    if-nez v5, :cond_5

    .line 2755
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/view/AppsPagedView;->createAppsPage()Lcom/android/launcher3/allapps/view/AppsViewCellLayout;

    move-result-object v5

    .line 2758
    :cond_5
    const/16 v23, 0x0

    .line 2759
    .restart local v23    # "view":Landroid/view/View;
    move-object/from16 v0, v19

    instance-of v4, v0, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v4, :cond_8

    .line 2760
    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    .end local v23    # "view":Landroid/view/View;
    check-cast v23, Landroid/view/View;

    .line 2761
    .restart local v23    # "view":Landroid/view/View;
    if-nez p2, :cond_7

    move-object/from16 v4, v19

    .line 2762
    check-cast v4, Lcom/android/launcher3/folder/FolderInfo;

    sget-object v6, Lcom/android/launcher3/allapps/model/AppsLoader;->MENU_ALPHA_NORMALIZER:Lcom/android/launcher3/allapps/model/AppsLoader$Normalizer;

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4, v6, v7}, Lcom/android/launcher3/folder/FolderInfo;->setAlphabeticalOrder(ZLandroid/content/Context;)V

    .line 2776
    :cond_6
    :goto_4
    if-nez v23, :cond_a

    .line 2777
    move-object/from16 v0, v19

    iget v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    packed-switch v4, :pswitch_data_0

    .line 2789
    :pswitch_0
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown item type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v19

    iget v7, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2763
    :cond_7
    const/4 v4, 0x1

    move/from16 v0, p2

    if-ne v0, v4, :cond_6

    .line 2764
    if-eqz v23, :cond_6

    move-object/from16 v4, v23

    .line 2765
    check-cast v4, Lcom/android/launcher3/common/view/IconView;

    invoke-virtual {v4}, Lcom/android/launcher3/common/view/IconView;->applyStyle()V

    goto :goto_4

    .line 2769
    :cond_8
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_9

    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    move-object/from16 v23, v4

    .line 2770
    :goto_5
    if-eqz v23, :cond_6

    .line 2771
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v6, v23

    check-cast v6, Lcom/android/launcher3/common/view/IconView;

    move-object/from16 v7, v19

    check-cast v7, Lcom/android/launcher3/common/base/item/IconInfo;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v9, p0

    invoke-static/range {v4 .. v9}, Lcom/android/launcher3/allapps/AppsUtils;->createAppIcon(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/android/launcher3/common/view/IconView;Lcom/android/launcher3/common/base/item/IconInfo;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)Landroid/view/View;

    move-result-object v23

    goto :goto_4

    .line 2769
    :cond_9
    const/16 v23, 0x0

    goto :goto_5

    .line 2779
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v6, v19

    check-cast v6, Lcom/android/launcher3/common/base/item/IconInfo;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsFocusListener:Lcom/android/launcher3/allapps/controller/AppsFocusListener;

    move-object/from16 v8, p0

    invoke-static/range {v4 .. v9}, Lcom/android/launcher3/allapps/AppsUtils;->createAppIcon(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/android/launcher3/common/base/item/IconInfo;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;Lcom/android/launcher3/allapps/controller/AppsFocusListener;)Landroid/view/View;

    move-result-object v23

    .line 2792
    :cond_a
    :goto_6
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/allapps/controller/AppsController;->addItem(Landroid/view/View;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto/16 :goto_3

    .line 2784
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v6, v19

    check-cast v6, Lcom/android/launcher3/folder/FolderInfo;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v10, 0x2

    move-object/from16 v7, p0

    move-object/from16 v9, p0

    invoke-static/range {v4 .. v10}, Lcom/android/launcher3/folder/view/FolderIconView;->fromXml(Lcom/android/launcher3/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher3/folder/FolderInfo;Lcom/android/launcher3/common/base/controller/ControllerBase;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;I)Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v23

    .line 2786
    goto :goto_6

    .line 2794
    .end local v5    # "toLayout":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v19    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v23    # "view":Landroid/view/View;
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/view/AppsPagedView;->removeEmptyScreen()Z

    .line 2795
    invoke-virtual {v12}, Lcom/android/launcher3/allapps/model/AppsLoader;->dumpTopLevelItemsCount()V

    .line 2796
    const-string v4, "Launcher.AppsController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "repositionByNormalizer end "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v8, v8, v16

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2797
    return-void

    .line 2777
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private repositionByTypeUpPages()V
    .locals 3

    .prologue
    .line 1968
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getLauncherModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherModel;->getAppsLoader()Lcom/android/launcher3/allapps/model/AppsLoader;

    move-result-object v0

    .line 1969
    .local v0, "appsLoader":Lcom/android/launcher3/allapps/model/AppsLoader;
    sget-object v1, Lcom/android/launcher3/allapps/model/AppsLoader;->MENU_CUSTOM_TIDE_UP_NORMALIZER:Lcom/android/launcher3/allapps/model/AppsLoader$Normalizer;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/model/AppsLoader;->setNormalizer(Lcom/android/launcher3/allapps/model/AppsLoader$Normalizer;)V

    .line 1970
    sget-object v1, Lcom/android/launcher3/allapps/model/AppsLoader;->MENU_CUSTOM_TIDE_UP_NORMALIZER:Lcom/android/launcher3/allapps/model/AppsLoader$Normalizer;

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lcom/android/launcher3/allapps/controller/AppsController;->repositionByNormalizer(Lcom/android/launcher3/allapps/model/AppsLoader$Normalizer;I)V

    .line 1971
    return-void
.end method

.method private restartBounceAnimationForSearchedApp()V
    .locals 1

    .prologue
    .line 2604
    sget-object v0, Lcom/android/launcher3/allapps/controller/AppsController;->sBounceAnimation:Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;

    if-eqz v0, :cond_0

    .line 2605
    sget-object v0, Lcom/android/launcher3/allapps/controller/AppsController;->sBounceAnimation:Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;

    invoke-virtual {v0}, Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;->animate()V

    .line 2606
    :cond_0
    return-void
.end method

.method public static setViewTypeFromSharedPreference(Landroid/content/Context;Lcom/android/launcher3/allapps/controller/AppsController$ViewType;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "viewType"    # Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    .prologue
    .line 2659
    .line 2660
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 2659
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2661
    .local v1, "prefs":Landroid/content/SharedPreferences;
    if-eqz v1, :cond_0

    .line 2662
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2663
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "AppsController.ViewType"

    invoke-virtual {p1}, Lcom/android/launcher3/allapps/controller/AppsController$ViewType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2664
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2666
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method private startBounceAnimationForSearchedApp(Landroid/view/View;)V
    .locals 1
    .param p1, "bounceView"    # Landroid/view/View;

    .prologue
    .line 2595
    if-nez p1, :cond_1

    .line 2601
    :cond_0
    :goto_0
    return-void

    .line 2598
    :cond_1
    new-instance v0, Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;

    invoke-direct {v0, p1}, Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;-><init>(Landroid/view/View;)V

    sput-object v0, Lcom/android/launcher3/allapps/controller/AppsController;->sBounceAnimation:Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;

    .line 2599
    sget-object v0, Lcom/android/launcher3/allapps/controller/AppsController;->sBounceAnimation:Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;

    if-eqz v0, :cond_0

    .line 2600
    sget-object v0, Lcom/android/launcher3/allapps/controller/AppsController;->sBounceAnimation:Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;

    invoke-virtual {v0}, Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;->animate()V

    goto :goto_0
.end method

.method private startSettingActivity(Z)V
    .locals 4
    .param p1, "cancel"    # Z

    .prologue
    .line 2822
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mFromSetting:Z

    .line 2823
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->startHomeSettingActivity()V

    .line 2824
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/launcher3/allapps/controller/AppsController$23;

    invoke-direct {v1, p0}, Lcom/android/launcher3/allapps/controller/AppsController$23;-><init>(Lcom/android/launcher3/allapps/controller/AppsController;)V

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2835
    return-void
.end method

.method private updateAppsViewByTrayPosition(FZ)V
    .locals 18
    .param p1, "offsetY"    # F
    .param p2, "disallowVisible"    # Z

    .prologue
    .line 1703
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsContainer:Lcom/android/launcher3/allapps/view/AppsContainer;

    const/4 v13, 0x0

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v12, v0, v13, v1}, Lcom/android/launcher3/allapps/view/AppsContainer;->setDrawBoundaryY(FZZ)V

    .line 1706
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsContainer:Lcom/android/launcher3/allapps/view/AppsContainer;

    invoke-virtual {v12}, Lcom/android/launcher3/allapps/view/AppsContainer;->getHeight()I

    move-result v12

    int-to-float v12, v12

    add-float v5, p1, v12

    .line 1709
    .local v5, "borderY":F
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    if-eqz v12, :cond_a

    .line 1710
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mDownwardFadeOutEnd:I

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mUpwardFadeOutEnd:I

    if-nez v12, :cond_1

    .line 1711
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    invoke-virtual {v12}, Lcom/android/launcher3/common/tray/TrayManager;->getTrayMovingRange()I

    move-result v12

    int-to-float v12, v12

    const v13, 0x3f666666    # 0.9f

    mul-float/2addr v12, v13

    float-to-int v7, v12

    .line 1712
    .local v7, "fadeOutEnd":I
    neg-int v12, v7

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mDownwardFadeOutEnd:I

    .line 1713
    move-object/from16 v0, p0

    iput v7, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mUpwardFadeOutEnd:I

    .line 1714
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mUpwardFadeOutEnd:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mUpwardFadeOutStart:I

    sub-int/2addr v12, v13

    int-to-float v12, v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mFadeOutRange:F

    .line 1718
    .end local v7    # "fadeOutEnd":I
    :cond_1
    const/4 v12, 0x0

    cmpl-float v12, p1, v12

    if-lez v12, :cond_7

    .line 1719
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    invoke-virtual {v12}, Lcom/android/launcher3/common/tray/TrayManager;->getTrayMovingRange()I

    move-result v12

    int-to-float v12, v12

    sub-float v11, p1, v12

    .line 1720
    .local v11, "toTranslationY":F
    move v10, v11

    .line 1721
    .local v10, "searchViewTranslationY":F
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mDownwardFadeOutStart:I

    int-to-float v12, v12

    cmpl-float v12, v11, v12

    if-ltz v12, :cond_5

    .line 1722
    const/high16 v6, 0x3f800000    # 1.0f

    .line 1739
    .local v6, "factor":F
    :goto_0
    const/4 v12, 0x2

    const/4 v13, 0x2

    invoke-static {v6, v12, v13}, Lcom/android/launcher3/Utilities;->simplifyDecimalFraction(FII)F

    .line 1741
    const/4 v12, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    const/high16 v14, 0x3f800000    # 1.0f

    sub-float/2addr v14, v6

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsAlphaRatio:F

    mul-float/2addr v14, v15

    sub-float/2addr v13, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 1742
    .local v2, "alpha":F
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsContainer:Lcom/android/launcher3/allapps/view/AppsContainer;

    invoke-virtual {v12, v2}, Lcom/android/launcher3/allapps/view/AppsContainer;->setAlpha(F)V

    .line 1744
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsShrinkFactor:F

    const/high16 v13, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsShrinkFactor:F

    sub-float/2addr v13, v14

    mul-float/2addr v13, v6

    add-float v9, v12, v13

    .line 1745
    .local v9, "scale":F
    move v4, v6

    .line 1746
    .local v4, "bgAlpha":F
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsContainer:Lcom/android/launcher3/allapps/view/AppsContainer;

    invoke-virtual {v12, v9}, Lcom/android/launcher3/allapps/view/AppsContainer;->setScaleX(F)V

    .line 1747
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsContainer:Lcom/android/launcher3/allapps/view/AppsContainer;

    invoke-virtual {v12, v9}, Lcom/android/launcher3/allapps/view/AppsContainer;->setScaleY(F)V

    .line 1748
    if-nez p2, :cond_2

    .line 1749
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    invoke-virtual {v12, v4}, Lcom/android/launcher3/common/view/DragLayer;->setBackgroundImageAlpha(F)V

    .line 1751
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPageIndicatorView:Landroid/view/View;

    if-eqz v12, :cond_3

    .line 1752
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mPageIndicatorShrinkFactor:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mPageIndicatorShrinkFactor:F

    const/4 v14, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    sub-float v16, v16, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mPageIndicatorScaleRatio:F

    move/from16 v17, v0

    mul-float v16, v16, v17

    sub-float v15, v15, v16

    .line 1753
    invoke-static {v14, v15}, Ljava/lang/Math;->max(FF)F

    move-result v14

    mul-float/2addr v13, v14

    add-float v8, v12, v13

    .line 1754
    .local v8, "indicatorScale":F
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPageIndicatorView:Landroid/view/View;

    invoke-virtual {v12, v8}, Landroid/view/View;->setScaleX(F)V

    .line 1755
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPageIndicatorView:Landroid/view/View;

    invoke-virtual {v12, v8}, Landroid/view/View;->setScaleY(F)V

    .line 1769
    .end local v2    # "alpha":F
    .end local v4    # "bgAlpha":F
    .end local v6    # "factor":F
    .end local v8    # "indicatorScale":F
    .end local v9    # "scale":F
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsContainer:Lcom/android/launcher3/allapps/view/AppsContainer;

    invoke-virtual {v12, v11}, Lcom/android/launcher3/allapps/view/AppsContainer;->setTranslationY(F)V

    .line 1783
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsSearchBarView:Lcom/android/launcher3/allapps/view/AppsSearchBar;

    if-eqz v12, :cond_4

    .line 1784
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsSearchBarView:Lcom/android/launcher3/allapps/view/AppsSearchBar;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->changeColorAndBackground(Z)V

    .line 1786
    :cond_4
    return-void

    .line 1723
    :cond_5
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mDownwardFadeOutEnd:I

    int-to-float v12, v12

    cmpl-float v12, v11, v12

    if-ltz v12, :cond_6

    .line 1724
    const/high16 v12, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mDownwardFadeOutEnd:I

    int-to-float v13, v13

    sub-float v13, v11, v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mFadeOutRange:F

    div-float/2addr v13, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .restart local v6    # "factor":F
    goto/16 :goto_0

    .line 1726
    .end local v6    # "factor":F
    :cond_6
    const/4 v6, 0x0

    .restart local v6    # "factor":F
    goto/16 :goto_0

    .line 1729
    .end local v6    # "factor":F
    .end local v10    # "searchViewTranslationY":F
    .end local v11    # "toTranslationY":F
    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    invoke-virtual {v12}, Lcom/android/launcher3/common/tray/TrayManager;->getTrayMovingRange()I

    move-result v12

    int-to-float v12, v12

    add-float v11, p1, v12

    .line 1730
    .restart local v11    # "toTranslationY":F
    move v10, v11

    .line 1731
    .restart local v10    # "searchViewTranslationY":F
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mUpwardFadeOutStart:I

    int-to-float v12, v12

    cmpg-float v12, v11, v12

    if-gtz v12, :cond_8

    .line 1732
    const/high16 v6, 0x3f800000    # 1.0f

    .restart local v6    # "factor":F
    goto/16 :goto_0

    .line 1733
    .end local v6    # "factor":F
    :cond_8
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mUpwardFadeOutEnd:I

    int-to-float v12, v12

    cmpg-float v12, v11, v12

    if-gtz v12, :cond_9

    .line 1734
    const/high16 v12, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mUpwardFadeOutEnd:I

    int-to-float v13, v13

    sub-float/2addr v13, v11

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mFadeOutRange:F

    div-float/2addr v13, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .restart local v6    # "factor":F
    goto/16 :goto_0

    .line 1736
    .end local v6    # "factor":F
    :cond_9
    const/4 v6, 0x0

    .restart local v6    # "factor":F
    goto/16 :goto_0

    .line 1763
    .end local v6    # "factor":F
    .end local v10    # "searchViewTranslationY":F
    .end local v11    # "toTranslationY":F
    :cond_a
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mMoveToHomeApproachingStart:I

    .line 1764
    .local v3, "appsSlipStart":I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsSlipY:I

    int-to-float v12, v12

    int-to-float v13, v3

    sub-float v13, v5, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsContainer:Lcom/android/launcher3/allapps/view/AppsContainer;

    invoke-virtual {v14}, Lcom/android/launcher3/allapps/view/AppsContainer;->getHeight()I

    move-result v14

    sub-int/2addr v14, v3

    int-to-float v14, v14

    div-float/2addr v13, v14

    const/4 v14, 0x0

    invoke-static {v13, v14}, Ljava/lang/Math;->max(FF)F

    move-result v13

    mul-float v11, v12, v13

    .line 1765
    .restart local v11    # "toTranslationY":F
    move v10, v11

    .restart local v10    # "searchViewTranslationY":F
    goto/16 :goto_1
.end method


# virtual methods
.method public addFolder(Lcom/android/launcher3/common/base/view/CellLayout;JIII)Lcom/android/launcher3/folder/view/FolderIconView;
    .locals 16
    .param p1, "layout"    # Lcom/android/launcher3/common/base/view/CellLayout;
    .param p2, "screenId"    # J
    .param p4, "cellX"    # I
    .param p5, "cellY"    # I
    .param p6, "rank"    # I

    .prologue
    .line 1845
    new-instance v3, Lcom/android/launcher3/folder/FolderInfo;

    invoke-direct {v3}, Lcom/android/launcher3/folder/FolderInfo;-><init>()V

    .line 1846
    .local v3, "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    const v6, 0x7f080164

    invoke-virtual {v2, v6}, Lcom/android/launcher3/Launcher;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v3, Lcom/android/launcher3/folder/FolderInfo;->title:Ljava/lang/CharSequence;

    .line 1849
    const-wide/16 v4, -0x66

    .line 1850
    .local v4, "container":J
    move/from16 v0, p6

    iput v0, v3, Lcom/android/launcher3/folder/FolderInfo;->rank:I

    .line 1853
    :try_start_0
    invoke-static {}, Lcom/android/launcher3/common/model/FavoritesProvider;->getInstance()Lcom/android/launcher3/common/model/FavoritesProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/common/model/FavoritesProvider;->generateNewItemId()J

    move-result-wide v6

    iput-wide v6, v3, Lcom/android/launcher3/folder/FolderInfo;->id:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1859
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/allapps/controller/AppsController;->isAlphabeticalMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1860
    const-wide/16 v6, -0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v9}, Lcom/android/launcher3/allapps/controller/AppsController;->addItemToDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJII)J

    .line 1861
    const/4 v2, 0x1

    iput-boolean v2, v3, Lcom/android/launcher3/folder/FolderInfo;->mDirty:Z

    .line 1862
    iput-wide v4, v3, Lcom/android/launcher3/folder/FolderInfo;->container:J

    .line 1863
    move-wide/from16 v0, p2

    iput-wide v0, v3, Lcom/android/launcher3/folder/FolderInfo;->screenId:J

    .line 1864
    move/from16 v0, p4

    iput v0, v3, Lcom/android/launcher3/folder/FolderInfo;->cellX:I

    .line 1865
    move/from16 v0, p5

    iput v0, v3, Lcom/android/launcher3/folder/FolderInfo;->cellY:I

    .line 1871
    :goto_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v12, 0x2

    move-object/from16 v7, p1

    move-object v8, v3

    move-object/from16 v9, p0

    move-object/from16 v11, p0

    invoke-static/range {v6 .. v12}, Lcom/android/launcher3/folder/view/FolderIconView;->fromXml(Lcom/android/launcher3/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher3/folder/FolderInfo;Lcom/android/launcher3/common/base/controller/ControllerBase;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;I)Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v14

    .line 1873
    .local v14, "newFolder":Lcom/android/launcher3/folder/view/FolderIconView;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v3}, Lcom/android/launcher3/allapps/controller/AppsController;->addItem(Landroid/view/View;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 1876
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v2

    invoke-virtual {v2, v14}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->measureChild(Landroid/view/View;)V

    .line 1878
    return-object v14

    .line 1854
    .end local v14    # "newFolder":Lcom/android/launcher3/folder/view/FolderIconView;
    :catch_0
    move-exception v13

    .line 1855
    .local v13, "e":Ljava/lang/Exception;
    const-string v2, "Launcher.AppsController"

    const-string v6, "generate new item id for created folder is failed."

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1856
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .end local v13    # "e":Ljava/lang/Exception;
    :cond_0
    move-object/from16 v2, p0

    move-wide/from16 v6, p2

    move/from16 v8, p4

    move/from16 v9, p5

    .line 1867
    invoke-virtual/range {v2 .. v9}, Lcom/android/launcher3/allapps/controller/AppsController;->addItemToDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJII)J

    goto :goto_1
.end method

.method public addFolderChildItemToDb(Lcom/android/launcher3/common/base/item/ItemInfo;J)J
    .locals 2
    .param p1, "info"    # Lcom/android/launcher3/common/base/item/ItemInfo;
    .param p2, "container"    # J

    .prologue
    .line 1882
    iput-wide p2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    .line 1883
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/model/FavoritesUpdater;->addItem(Lcom/android/launcher3/common/base/item/ItemInfo;)J

    move-result-wide v0

    return-wide v0
.end method

.method public addItem(Landroid/view/View;Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    const/4 v5, 0x1

    .line 1222
    const-string v0, "Launcher.AppsController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " addItem = title : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , rank : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , screen : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p2, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1225
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getMaxItemsPerScreen()I

    move-result v9

    .line 1226
    .local v9, "maxItems":I
    iget v0, p2, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    rem-int v11, v0, v9

    .line 1227
    .local v11, "pagePos":I
    iget v0, p2, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    div-int v10, v0, v9

    .line 1229
    .local v10, "pageNo":I
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountX()I

    move-result v0

    rem-int v0, v11, v0

    iput v0, p2, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    .line 1230
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountX()I

    move-result v0

    div-int v0, v11, v0

    iput v0, p2, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    .line 1232
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .line 1234
    .local v7, "genericLp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v7, :cond_0

    instance-of v0, v7, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    if-nez v0, :cond_2

    .line 1235
    :cond_0
    new-instance v4, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    iget v0, p2, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    iget v1, p2, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    invoke-direct {v4, v0, v1, v5, v5}, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;-><init>(IIII)V

    .line 1242
    .local v4, "lp":Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;
    :goto_0
    instance-of v0, p1, Lcom/android/launcher3/folder/view/FolderIconView;

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/android/launcher3/common/view/IconView;

    if-eqz v0, :cond_1

    .line 1243
    iget v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    move-object v0, p1

    .line 1244
    check-cast v0, Lcom/android/launcher3/common/view/IconView;

    invoke-virtual {v0, v5}, Lcom/android/launcher3/common/view/IconView;->updateCheckBox(Z)V

    .line 1248
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getChildCount()I

    move-result v8

    .local v8, "i":I
    :goto_1
    iget-wide v0, p2, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    long-to-int v0, v0

    if-gt v8, v0, :cond_3

    .line 1249
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->createAppsPage()Lcom/android/launcher3/allapps/view/AppsViewCellLayout;

    .line 1248
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .end local v4    # "lp":Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;
    .end local v8    # "i":I
    :cond_2
    move-object v4, v7

    .line 1237
    check-cast v4, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    .line 1238
    .restart local v4    # "lp":Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;
    iget v0, p2, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    iput v0, v4, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellX:I

    .line 1239
    iget v0, p2, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    iput v0, v4, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellY:I

    goto :goto_0

    .line 1253
    .restart local v8    # "i":I
    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    iget-wide v2, p2, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v0

    const/4 v2, -0x1

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, p2}, Lcom/android/launcher3/Launcher;->getViewIdForItem(Lcom/android/launcher3/common/base/item/ItemInfo;)I

    move-result v3

    const/4 v5, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/common/base/view/CellLayout;->addViewToCellLayout(Landroid/view/View;IILcom/android/launcher3/common/base/view/CellLayout$LayoutParams;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1258
    :goto_2
    return-void

    .line 1254
    :catch_0
    move-exception v6

    .line 1255
    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "Launcher.AppsController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in Adding item : mAppsPagedView = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", item.screenId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p2, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public addItemToDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJII)J
    .locals 2
    .param p1, "info"    # Lcom/android/launcher3/common/base/item/ItemInfo;
    .param p2, "container"    # J
    .param p4, "screenId"    # J
    .param p6, "cellX"    # I
    .param p7, "cellY"    # I

    .prologue
    .line 1368
    iput-wide p2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    .line 1369
    iput-wide p4, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    .line 1370
    iput p6, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    .line 1371
    iput p7, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    .line 1372
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/model/FavoritesUpdater;->addItem(Lcom/android/launcher3/common/base/item/ItemInfo;)J

    move-result-wide v0

    return-wide v0
.end method

.method public addItemToDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJI)V
    .locals 2
    .param p1, "info"    # Lcom/android/launcher3/common/base/item/ItemInfo;
    .param p2, "container"    # J
    .param p4, "screenId"    # J
    .param p6, "rank"    # I

    .prologue
    .line 1377
    iput-wide p2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    .line 1378
    iput p6, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    .line 1379
    iput-wide p4, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    .line 1381
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/model/FavoritesUpdater;->addItem(Lcom/android/launcher3/common/base/item/ItemInfo;)J

    .line 1382
    return-void
.end method

.method public addOrMoveItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJIII)V
    .locals 10
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;
    .param p2, "container"    # J
    .param p4, "screenId"    # J
    .param p6, "cellX"    # I
    .param p7, "cellY"    # I
    .param p8, "rank"    # I

    .prologue
    .line 1442
    iget-wide v6, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v8, -0x1

    cmp-long v5, v6, v8

    if-eqz v5, :cond_0

    iget-wide v6, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    const-wide/16 v8, -0x1

    cmp-long v5, v6, v8

    if-nez v5, :cond_3

    .line 1444
    :cond_0
    invoke-virtual/range {p0 .. p7}, Lcom/android/launcher3/allapps/controller/AppsController;->addItemToDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJII)J

    move-result-wide v2

    .line 1446
    .local v2, "folderId":J
    instance-of v5, p1, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v5, :cond_2

    move-object v1, p1

    .line 1447
    check-cast v1, Lcom/android/launcher3/folder/FolderInfo;

    .line 1448
    .local v1, "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1449
    .local v0, "appList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    iget-object v5, v1, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 1450
    .local v4, "info":Lcom/android/launcher3/common/base/item/IconInfo;
    invoke-virtual {p0, v4, v2, v3}, Lcom/android/launcher3/allapps/controller/AppsController;->addFolderChildItemToDb(Lcom/android/launcher3/common/base/item/ItemInfo;J)J

    .line 1451
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1453
    .end local v4    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_1
    iget-object v5, v1, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 1454
    iget-object v5, v1, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1455
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1461
    .end local v0    # "appList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    .end local v1    # "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    .end local v2    # "folderId":J
    :cond_2
    :goto_1
    return-void

    .line 1459
    :cond_3
    invoke-virtual/range {p0 .. p8}, Lcom/android/launcher3/allapps/controller/AppsController;->modifyItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJIII)V

    goto :goto_1
.end method

.method public addOrMoveItems(Ljava/util/ArrayList;JJ)V
    .locals 24
    .param p2, "container"    # J
    .param p4, "screenId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;JJ)V"
        }
    .end annotation

    .prologue
    .line 2433
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    const-string v19, "Launcher.AppsController"

    const-string v20, "addOrMoveItems"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2434
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 2435
    .local v15, "removeItemsFromApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_0
    :goto_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_1

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 2436
    .local v10, "item":Lcom/android/launcher3/common/base/item/IconInfo;
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/launcher3/allapps/controller/AppsController;->isItemInFolder(Lcom/android/launcher3/common/base/item/ItemInfo;)Z

    move-result v20

    if-nez v20, :cond_0

    .line 2437
    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2440
    .end local v10    # "item":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/allapps/controller/AppsController;->getDragController()Lcom/android/launcher3/allapps/controller/AppsDragController;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher3/allapps/controller/AppsDragController;->getReorderController()Lcom/android/launcher3/allapps/controller/AppsReorderController;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->removeEmptyCellsAndViews(Ljava/util/ArrayList;)V

    .line 2442
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 2443
    .local v11, "itemMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_3

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 2444
    .local v10, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-wide v0, v10, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_2

    .line 2445
    iget-wide v0, v10, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2447
    :cond_2
    iget-wide v0, v10, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/ArrayList;

    .line 2448
    .local v14, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    check-cast v10, Lcom/android/launcher3/common/base/item/IconInfo;

    .end local v10    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2451
    .end local v14    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    :cond_3
    invoke-virtual {v11}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v13

    .line 2452
    .local v13, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 2453
    .local v17, "updateItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2454
    .local v6, "contentValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_4
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_7

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Long;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 2455
    .local v4, "containerId":J
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    .line 2456
    .local v12, "itemsInContainer":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    cmp-long v19, v4, p2

    if-eqz v19, :cond_5

    const-wide/16 v22, 0x0

    cmp-long v19, v4, v22

    if-lez v19, :cond_5

    .line 2457
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsIconByItemId(J)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/launcher3/folder/view/FolderIconView;

    .line 2458
    .local v9, "iconView":Lcom/android/launcher3/folder/view/FolderIconView;
    if-eqz v9, :cond_6

    .line 2460
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/allapps/controller/AppsController;->getState()I

    move-result v19

    const/16 v21, 0x1

    move/from16 v0, v19

    move/from16 v1, v21

    if-eq v0, v1, :cond_5

    .line 2461
    invoke-virtual {v9}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v8

    .line 2462
    .local v8, "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    invoke-virtual {v8, v12}, Lcom/android/launcher3/folder/FolderInfo;->remove(Ljava/util/ArrayList;)V

    .line 2464
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/allapps/controller/AppsController;->isAlphabeticalMode()Z

    move-result v19

    if-eqz v19, :cond_5

    .line 2465
    invoke-virtual {v9}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderView()Lcom/android/launcher3/folder/view/FolderView;

    move-result-object v7

    .line 2466
    .local v7, "folder":Lcom/android/launcher3/folder/view/FolderView;
    invoke-virtual {v7}, Lcom/android/launcher3/folder/view/FolderView;->getItemCount()I

    move-result v19

    const/16 v21, 0x1

    move/from16 v0, v19

    move/from16 v1, v21

    if-gt v0, v1, :cond_5

    .line 2467
    invoke-virtual {v7}, Lcom/android/launcher3/folder/view/FolderView;->getItemCount()I

    move-result v19

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v21

    invoke-virtual {v0, v8, v1, v9, v2}, Lcom/android/launcher3/allapps/controller/AppsController;->replaceFolderWithFinalItem(Lcom/android/launcher3/common/base/item/ItemInfo;ILandroid/view/View;Z)V

    .line 2476
    .end local v7    # "folder":Lcom/android/launcher3/folder/view/FolderView;
    .end local v8    # "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    .end local v9    # "iconView":Lcom/android/launcher3/folder/view/FolderIconView;
    :cond_5
    :goto_2
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_3
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_4

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 2477
    .local v10, "item":Lcom/android/launcher3/common/base/item/IconInfo;
    move-wide/from16 v0, p2

    iput-wide v0, v10, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    .line 2478
    move-wide/from16 v0, p4

    iput-wide v0, v10, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    .line 2479
    const/16 v21, 0x1

    move/from16 v0, v21

    iput-boolean v0, v10, Lcom/android/launcher3/common/base/item/IconInfo;->mDirty:Z

    .line 2481
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    .line 2482
    .local v18, "values":Landroid/content/ContentValues;
    const-string v21, "container"

    iget-wide v0, v10, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2483
    const-string v21, "rank"

    iget v0, v10, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2484
    const-string v21, "cellX"

    iget v0, v10, Lcom/android/launcher3/common/base/item/IconInfo;->cellX:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2485
    const-string v21, "cellY"

    iget v0, v10, Lcom/android/launcher3/common/base/item/IconInfo;->cellY:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2486
    const-string v21, "screen"

    iget-wide v0, v10, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2487
    const-string v21, "hidden"

    iget v0, v10, Lcom/android/launcher3/common/base/item/IconInfo;->hidden:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2488
    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2489
    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 2472
    .end local v10    # "item":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v18    # "values":Landroid/content/ContentValues;
    .restart local v9    # "iconView":Lcom/android/launcher3/folder/view/FolderIconView;
    :cond_6
    const-string v19, "Launcher.AppsController"

    const-string v21, "folder iconview is null"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2492
    .end local v4    # "containerId":J
    .end local v9    # "iconView":Lcom/android/launcher3/folder/view/FolderIconView;
    .end local v12    # "itemsInContainer":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v6, v2}, Lcom/android/launcher3/common/model/FavoritesUpdater;->updateItemsInDatabaseHelper(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 2494
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/allapps/controller/AppsController;->getViewType()Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    move-result-object v19

    sget-object v20, Lcom/android/launcher3/allapps/controller/AppsController$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_9

    .line 2495
    new-instance v16, Lcom/android/launcher3/allapps/controller/AppsController$20;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/launcher3/allapps/controller/AppsController$20;-><init>(Lcom/android/launcher3/allapps/controller/AppsController;)V

    .line 2501
    .local v16, "runnable":Ljava/lang/Runnable;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/allapps/controller/AppsController;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    if-ne v0, v1, :cond_8

    .line 2502
    new-instance v19, Landroid/os/Handler;

    invoke-direct/range {v19 .. v19}, Landroid/os/Handler;-><init>()V

    const-wide/16 v20, 0x12c

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2519
    .end local v16    # "runnable":Ljava/lang/Runnable;
    :goto_4
    return-void

    .line 2504
    .restart local v16    # "runnable":Ljava/lang/Runnable;
    :cond_8
    invoke-interface/range {v16 .. v16}, Ljava/lang/Runnable;->run()V

    goto :goto_4

    .line 2507
    .end local v16    # "runnable":Ljava/lang/Runnable;
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/allapps/controller/AppsController;->getState()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_a

    .line 2509
    new-instance v19, Landroid/os/Handler;

    invoke-direct/range {v19 .. v19}, Landroid/os/Handler;-><init>()V

    new-instance v20, Lcom/android/launcher3/allapps/controller/AppsController$21;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/launcher3/allapps/controller/AppsController$21;-><init>(Lcom/android/launcher3/allapps/controller/AppsController;)V

    const-wide/16 v22, 0x14

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2517
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/allapps/controller/AppsController;->updateDirtyItems()V

    goto :goto_4
.end method

.method public applyOrCancelTideUpPages()V
    .locals 6

    .prologue
    const v4, 0x7f080180

    const/4 v5, 0x0

    .line 1974
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getLauncherModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherModel;->getAppsLoader()Lcom/android/launcher3/allapps/model/AppsLoader;

    move-result-object v0

    .line 1975
    .local v0, "appsLoader":Lcom/android/launcher3/allapps/model/AppsLoader;
    sget-object v2, Lcom/android/launcher3/allapps/model/AppsLoader;->MENU_CUSTOM_NORMALIZER:Lcom/android/launcher3/allapps/model/AppsLoader$Normalizer;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/allapps/model/AppsLoader;->setNormalizer(Lcom/android/launcher3/allapps/model/AppsLoader$Normalizer;)V

    .line 1976
    iget-boolean v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mApplyTideUpPage:Z

    if-nez v2, :cond_0

    .line 1977
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2, v5}, Lcom/android/launcher3/allapps/view/AppsPagedView;->setCurrentPage(I)V

    .line 1978
    invoke-virtual {v0, v5}, Lcom/android/launcher3/allapps/model/AppsLoader;->reloadPositionAllAppsItemsFromDB(Z)V

    .line 1979
    sget-object v2, Lcom/android/launcher3/allapps/model/AppsLoader;->MENU_CUSTOM_NORMALIZER:Lcom/android/launcher3/allapps/model/AppsLoader$Normalizer;

    const/4 v3, 0x2

    invoke-direct {p0, v2, v3}, Lcom/android/launcher3/allapps/controller/AppsController;->repositionByNormalizer(Lcom/android/launcher3/allapps/model/AppsLoader$Normalizer;I)V

    .line 1980
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1981
    .local v1, "res":Landroid/content/res/Resources;
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v2

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0800e6

    .line 1982
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1981
    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1988
    :goto_0
    invoke-virtual {v0}, Lcom/android/launcher3/allapps/model/AppsLoader;->runDBUpdateOnWorkerThread()V

    .line 1989
    iput-boolean v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mApplyTideUpPage:Z

    .line 1990
    return-void

    .line 1984
    .end local v1    # "res":Landroid/content/res/Resources;
    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1985
    .restart local v1    # "res":Landroid/content/res/Resources;
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v2

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0800e5

    .line 1986
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1985
    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public applyScreenGrid()V
    .locals 6

    .prologue
    .line 2887
    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p0, v4}, Lcom/android/launcher3/common/stage/StageManager;->moveToOverHome(Lcom/android/launcher3/common/stage/Stage;Lcom/android/launcher3/common/stage/StageEntry;)V

    .line 2888
    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v2

    .line 2889
    .local v2, "dp":Lcom/android/launcher3/common/deviceprofile/DeviceProfile;
    iget-object v3, v2, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v3}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountX()I

    move-result v0

    .line 2890
    .local v0, "cellX":I
    iget-object v3, v2, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v3}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountY()I

    move-result v1

    .line 2891
    .local v1, "cellY":I
    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v3, v0, v1}, Lcom/android/launcher3/util/ScreenGridUtilities;->storeAppsGridLayoutPreference(Landroid/content/Context;II)V

    .line 2892
    const-string v3, "Launcher.AppsController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "applyGrid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2893
    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mViewType:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    sget-object v4, Lcom/android/launcher3/allapps/controller/AppsController$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    if-eq v3, v4, :cond_0

    .line 2894
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->updateDirtyItems()V

    .line 2896
    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lcom/android/launcher3/allapps/controller/AppsController;->changeState(IZ)Z

    .line 2897
    return-void
.end method

.method public approachBorderOnDrag(F)V
    .locals 1
    .param p1, "touchY"    # F

    .prologue
    .line 1805
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isAppsStage()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    invoke-virtual {v0}, Lcom/android/launcher3/common/drag/DragManager;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 1806
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isRunningAnimation()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1807
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    invoke-virtual {v0, p0, p1}, Lcom/android/launcher3/common/tray/TrayManager;->approachBorderOnDrag(Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;F)V

    .line 1809
    :cond_0
    return-void
.end method

.method public canMoveTray()Z
    .locals 1

    .prologue
    .line 1699
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isAppsStage()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mState:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public cancelChangeScreenGrid()V
    .locals 2

    .prologue
    .line 757
    const-string v0, "Launcher.AppsController"

    const-string v1, "cancelChangeScreenGrid for preview"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/controller/AppsController;->startSettingActivity(Z)V

    .line 759
    return-void
.end method

.method public changeScreenGrid(ZII)Z
    .locals 5
    .param p1, "animated"    # Z
    .param p2, "gridX"    # I
    .param p3, "gridY"    # I

    .prologue
    const/4 v4, 0x1

    .line 2861
    new-instance v0, Lcom/android/launcher3/common/stage/StageEntry;

    invoke-direct {v0}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    .line 2862
    .local v0, "data":Lcom/android/launcher3/common/stage/StageEntry;
    const-string v1, "KEY_REPOSITION_BY"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/common/stage/StageEntry;->putExtras(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2863
    const-string v1, "KEY_CHANGE_GRID_SIZE"

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput p2, v2, v3

    aput p3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/common/stage/StageEntry;->putExtras(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2866
    iput-boolean p1, v0, Lcom/android/launcher3/common/stage/StageEntry;->enableAnimation:Z

    .line 2867
    iget v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mState:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/stage/StageEntry;->setInternalStateFrom(I)V

    .line 2868
    iget v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mState:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/stage/StageEntry;->setInternalStateTo(I)V

    .line 2869
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/android/launcher3/common/stage/StageManager;->switchInternalState(Lcom/android/launcher3/common/stage/Stage;Lcom/android/launcher3/common/stage/StageEntry;)V

    .line 2870
    return v4
.end method

.method changeState(IZ)Z
    .locals 1
    .param p1, "toState"    # I
    .param p2, "animated"    # Z

    .prologue
    .line 865
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher3/allapps/controller/AppsController;->changeState(IZZ)Z

    move-result v0

    return v0
.end method

.method changeState(IZZ)Z
    .locals 4
    .param p1, "toState"    # I
    .param p2, "animated"    # Z
    .param p3, "forced"    # Z

    .prologue
    .line 874
    if-nez p3, :cond_0

    iget v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mState:I

    if-ne v1, p1, :cond_0

    .line 875
    const/4 v1, 0x0

    .line 887
    :goto_0
    return v1

    .line 879
    :cond_0
    const-string v1, "Launcher.AppsController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", animated : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    new-instance v0, Lcom/android/launcher3/common/stage/StageEntry;

    invoke-direct {v0}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    .line 883
    .local v0, "data":Lcom/android/launcher3/common/stage/StageEntry;
    iput-boolean p2, v0, Lcom/android/launcher3/common/stage/StageEntry;->enableAnimation:Z

    .line 884
    iget v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mState:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/stage/StageEntry;->setInternalStateFrom(I)V

    .line 885
    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/stage/StageEntry;->setInternalStateTo(I)V

    .line 886
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/android/launcher3/common/stage/StageManager;->switchInternalState(Lcom/android/launcher3/common/stage/Stage;Lcom/android/launcher3/common/stage/StageEntry;)V

    .line 887
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public chooseViewType()V
    .locals 3

    .prologue
    .line 762
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mViewType:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/allapps/controller/AppsController$4;

    invoke-direct {v2, p0}, Lcom/android/launcher3/allapps/controller/AppsController$4;-><init>(Lcom/android/launcher3/allapps/controller/AppsController;)V

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/allapps/AppsViewTypeDialog;->createAndShow(Lcom/android/launcher3/allapps/controller/AppsController$ViewType;Landroid/app/FragmentManager;Lcom/android/launcher3/allapps/AppsViewTypeDialog$OnViewTypeChagnedListener;)V

    .line 768
    return-void
.end method

.method public deleteFolder(Lcom/android/launcher3/folder/FolderInfo;)V
    .locals 13
    .param p1, "folderInfo"    # Lcom/android/launcher3/folder/FolderInfo;

    .prologue
    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    const/4 v12, 0x1

    .line 1470
    iget-object v7, p1, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    .line 1471
    .local v7, "contents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    invoke-virtual {p0, p1, v6}, Lcom/android/launcher3/allapps/controller/AppsController;->removeAppsItem(Lcom/android/launcher3/common/base/item/ItemInfo;Z)V

    .line 1472
    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/controller/AppsController;->deleteItemFromDb(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 1473
    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v1

    const-string v2, "DTAF"

    const/4 v3, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 1475
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->isAlphabeticalMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1476
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v10, v1, :cond_0

    .line 1477
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/IconInfo;

    const-wide/16 v2, -0x66

    iput-wide v2, v1, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    .line 1478
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/IconInfo;

    iput-wide v4, v1, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    .line 1479
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/IconInfo;

    const/4 v2, -0x1

    iput v2, v1, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    .line 1480
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/IconInfo;

    iput-boolean v12, v1, Lcom/android/launcher3/common/base/item/IconInfo;->mDirty:Z

    .line 1476
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1482
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getLauncherModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherModel;->getAppsLoader()Lcom/android/launcher3/allapps/model/AppsLoader;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCurrentPage()I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 1483
    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getLauncherModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherModel;->getLoaderTask()Lcom/android/launcher3/LauncherModel$LoaderTask;

    move-result-object v3

    .line 1482
    invoke-virtual {v1, v2, v12, v12, v3}, Lcom/android/launcher3/allapps/model/AppsLoader;->startAppsLoaderTask(IZZLcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V

    .line 1506
    :goto_1
    return-void

    .line 1485
    .end local v10    # "i":I
    :cond_1
    new-instance v9, Lcom/android/launcher3/allapps/controller/DragAppIcon;

    invoke-direct {v9}, Lcom/android/launcher3/allapps/controller/DragAppIcon;-><init>()V

    .line 1486
    .local v9, "dragAppIcon":Lcom/android/launcher3/allapps/controller/DragAppIcon;
    iget-wide v2, p1, Lcom/android/launcher3/folder/FolderInfo;->screenId:J

    iput-wide v2, v9, Lcom/android/launcher3/allapps/controller/DragAppIcon;->screenId:J

    .line 1487
    iget v1, p1, Lcom/android/launcher3/folder/FolderInfo;->rank:I

    iput v1, v9, Lcom/android/launcher3/allapps/controller/DragAppIcon;->rank:I

    .line 1488
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->getDragController()Lcom/android/launcher3/allapps/controller/AppsDragController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/controller/AppsDragController;->getReorderController()Lcom/android/launcher3/allapps/controller/AppsReorderController;

    move-result-object v0

    .line 1489
    .local v0, "appsReorderController":Lcom/android/launcher3/allapps/controller/AppsReorderController;
    invoke-virtual {v0, v9}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->removeEmptyCell(Lcom/android/launcher3/allapps/controller/DragAppIcon;)V

    .line 1491
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_2
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v10, v1, :cond_2

    .line 1492
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-direct {p0, v1}, Lcom/android/launcher3/allapps/controller/AppsController;->addItemToLastPosition(Lcom/android/launcher3/common/base/item/IconInfo;)V

    .line 1491
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 1494
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->removeEmptyPagesAndUpdateAllItemsInfo()Z

    move-result v8

    .line 1495
    .local v8, "dirtyItemUpdated":Z
    if-nez v8, :cond_3

    .line 1496
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->updateDirtyItems()V

    .line 1498
    :cond_3
    new-instance v11, Landroid/os/Handler;

    invoke-direct {v11}, Landroid/os/Handler;-><init>()V

    .line 1499
    .local v11, "mHandler":Landroid/os/Handler;
    new-instance v1, Lcom/android/launcher3/allapps/controller/AppsController$12;

    invoke-direct {v1, p0}, Lcom/android/launcher3/allapps/controller/AppsController$12;-><init>(Lcom/android/launcher3/allapps/controller/AppsController;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v11, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method

.method public deleteItemFromDb(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 1
    .param p1, "info"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 1386
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/model/FavoritesUpdater;->deleteItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 1387
    return-void
.end method

.method public determineStageChange(IFFFI)Z
    .locals 8
    .param p1, "velocity"    # I
    .param p2, "offset"    # F
    .param p3, "firstDownY"    # F
    .param p4, "lastDownY"    # F
    .param p5, "minSnapVelocity"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 1660
    const/4 v2, 0x0

    .line 1661
    .local v2, "toBeChanged":Z
    cmpl-float v5, p2, v6

    if-lez v5, :cond_1

    move v1, v3

    .line 1663
    .local v1, "swipeUp":Z
    :goto_0
    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->isAppsStage()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1665
    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    if-eqz v5, :cond_2

    .line 1666
    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    invoke-virtual {v5}, Lcom/android/launcher3/common/tray/TrayManager;->getTrayMovingRange()I

    move-result v0

    .line 1671
    .local v0, "range":I
    :goto_1
    cmpl-float v5, p2, v6

    if-nez v5, :cond_3

    .line 1672
    const/4 v2, 0x1

    .line 1681
    :goto_2
    if-eqz v2, :cond_0

    .line 1682
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v4

    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 1683
    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f08017f

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 1684
    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0800ea

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v1, :cond_b

    const-string v3, "3"

    .line 1682
    :goto_3
    invoke-virtual {v4, v5, v6, v3}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1688
    .end local v0    # "range":I
    :cond_0
    return v2

    .end local v1    # "swipeUp":Z
    :cond_1
    move v1, v4

    .line 1661
    goto :goto_0

    .line 1668
    .restart local v1    # "swipeUp":Z
    :cond_2
    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v5}, Lcom/android/launcher3/Utilities;->getFullScreenHeight(Landroid/app/Activity;)I

    move-result v0

    .restart local v0    # "range":I
    goto :goto_1

    .line 1673
    :cond_3
    cmpl-float v5, p2, v6

    if-lez v5, :cond_7

    .line 1674
    cmpl-float v5, p3, p4

    if-lez v5, :cond_4

    if-gez p1, :cond_4

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v5, p5, :cond_5

    .line 1675
    :cond_4
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v5, p5, :cond_6

    int-to-float v5, v0

    iget v6, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mPageSnapMovingRatioOnApps:F

    mul-float/2addr v5, v6

    cmpg-float v5, p2, v5

    if-gtz v5, :cond_6

    :cond_5
    move v2, v3

    :goto_4
    goto :goto_2

    :cond_6
    move v2, v4

    goto :goto_4

    .line 1677
    :cond_7
    cmpg-float v5, p3, p4

    if-gez v5, :cond_8

    if-lez p1, :cond_8

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v5, p5, :cond_9

    .line 1678
    :cond_8
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v5, p5, :cond_a

    neg-float v5, p2

    int-to-float v6, v0

    iget v7, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mPageSnapMovingRatioOnApps:F

    mul-float/2addr v6, v7

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_a

    :cond_9
    move v2, v3

    :goto_5
    goto :goto_2

    :cond_a
    move v2, v4

    goto :goto_5

    .line 1684
    :cond_b
    const-string v3, "4"

    goto :goto_3
.end method

.method public disableAppsItemByPackageName(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;I)V
    .locals 9
    .param p1, "disabledPackages"    # Ljava/lang/String;
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .param p3, "reason"    # I

    .prologue
    .line 1263
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1264
    .local v5, "folderIconsToRefresh":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/folder/view/FolderIconView;>;"
    const/4 v8, 0x1

    new-instance v0, Lcom/android/launcher3/allapps/controller/AppsController$11;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/allapps/controller/AppsController$11;-><init>(Lcom/android/launcher3/allapps/controller/AppsController;Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;ILjava/util/ArrayList;)V

    invoke-direct {p0, v8, v0}, Lcom/android/launcher3/allapps/controller/AppsController;->mapOverItems(ZLcom/android/launcher3/common/base/item/ItemOperator;)V

    .line 1288
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_1

    .line 1289
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/folder/view/FolderIconView;

    .line 1290
    .local v6, "folderIconView":Lcom/android/launcher3/folder/view/FolderIconView;
    if-eqz v6, :cond_0

    .line 1291
    invoke-virtual {v6}, Lcom/android/launcher3/folder/view/FolderIconView;->refreshFolderIcon()V

    .line 1288
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1294
    .end local v6    # "folderIconView":Lcom/android/launcher3/folder/view/FolderIconView;
    :cond_1
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 2416
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 2417
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 2428
    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher3/common/stage/Stage;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :cond_1
    :goto_0
    return v0

    .line 2419
    :pswitch_0
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsSearchBarView:Lcom/android/launcher3/allapps/view/AppsSearchBar;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsSearchBarView:Lcom/android/launcher3/allapps/view/AppsSearchBar;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 2420
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportQuickOption()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDragMgr()Lcom/android/launcher3/common/drag/DragManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/common/drag/DragManager;->isQuickOptionShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2421
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    const-string v2, "3"

    invoke-virtual {v1, v2}, Lcom/android/launcher3/common/drag/DragManager;->removeQuickOptionView(Ljava/lang/String;)V

    .line 2423
    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsSearchBarView:Lcom/android/launcher3/allapps/view/AppsSearchBar;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->showPopupMenu()V

    goto :goto_0

    .line 2417
    :pswitch_data_0
    .packed-switch 0x52
        :pswitch_0
    .end packed-switch
.end method

.method public exitDragStateDelayed()V
    .locals 1

    .prologue
    .line 850
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/controller/AppsController;->exitDragStateDelayed(I)V

    .line 851
    return-void
.end method

.method public exitDragStateDelayed(I)V
    .locals 4
    .param p1, "delay"    # I

    .prologue
    .line 854
    iget v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 855
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mExitDragStateHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/launcher3/allapps/controller/AppsController$5;

    invoke-direct {v1, p0}, Lcom/android/launcher3/allapps/controller/AppsController$5;-><init>(Lcom/android/launcher3/allapps/controller/AppsController;)V

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 862
    :cond_0
    return-void
.end method

.method public findSearchedApp(Ljava/lang/String;Landroid/content/ComponentName;)V
    .locals 16
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "cmp"    # Landroid/content/ComponentName;

    .prologue
    .line 2548
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v11}, Lcom/android/launcher3/Launcher;->getLauncherModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/launcher3/LauncherModel;->getAppsLoader()Lcom/android/launcher3/allapps/model/AppsLoader;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/launcher3/allapps/model/AppsLoader;->getTopLevelItemsInApps()Ljava/util/ArrayList;

    move-result-object v7

    .line 2550
    .local v7, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 2551
    .local v6, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    iget-wide v14, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    long-to-int v13, v14

    invoke-virtual {v12, v13}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v9

    .line 2552
    .local v9, "parentCell":Lcom/android/launcher3/common/base/view/CellLayout;
    if-eqz v9, :cond_0

    .line 2553
    iget v12, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    if-nez v12, :cond_2

    .line 2554
    iget-object v12, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 2555
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    iget-wide v12, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    long-to-int v12, v12

    invoke-virtual {v11, v12}, Lcom/android/launcher3/allapps/view/AppsPagedView;->snapToPage(I)V

    .line 2556
    iget v11, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v12}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountX()I

    move-result v12

    rem-int/2addr v11, v12

    iget v12, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v13}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountX()I

    move-result v13

    div-int/2addr v12, v13

    invoke-virtual {v9, v11, v12}, Lcom/android/launcher3/common/base/view/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v10

    .line 2557
    .local v10, "view":Landroid/view/View;
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/launcher3/allapps/controller/AppsController;->startBounceAnimationForSearchedApp(Landroid/view/View;)V

    .line 2585
    .end local v6    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v9    # "parentCell":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v10    # "view":Landroid/view/View;
    :cond_1
    :goto_0
    return-void

    .line 2560
    .restart local v6    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    .restart local v9    # "parentCell":Lcom/android/launcher3/common/base/view/CellLayout;
    :cond_2
    iget v12, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_0

    move-object v4, v6

    .line 2561
    check-cast v4, Lcom/android/launcher3/folder/FolderInfo;

    .line 2562
    .local v4, "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    iget-object v12, v4, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 2563
    .local v5, "info":Lcom/android/launcher3/common/base/item/IconInfo;
    iget-object v13, v5, Lcom/android/launcher3/common/base/item/IconInfo;->componentName:Landroid/content/ComponentName;

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 2564
    iget v11, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v12}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountX()I

    move-result v12

    rem-int/2addr v11, v12

    iget v12, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v13}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountX()I

    move-result v13

    div-int/2addr v12, v13

    invoke-virtual {v9, v11, v12}, Lcom/android/launcher3/common/base/view/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v10

    .restart local v10    # "view":Landroid/view/View;
    move-object v3, v10

    .line 2565
    check-cast v3, Lcom/android/launcher3/folder/view/FolderIconView;

    .line 2566
    .local v3, "folderIconView":Lcom/android/launcher3/folder/view/FolderIconView;
    new-instance v2, Lcom/android/launcher3/common/stage/StageEntry;

    invoke-direct {v2}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    .line 2567
    .local v2, "data":Lcom/android/launcher3/common/stage/StageEntry;
    const-string v11, "KEY_FOLDER_ICON_VIEW"

    invoke-virtual {v2, v11, v3}, Lcom/android/launcher3/common/stage/StageEntry;->putExtras(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2568
    const-string v11, "KEY_FOLDER_ICON_APPSEARCHED"

    invoke-virtual {v2, v11, v5}, Lcom/android/launcher3/common/stage/StageEntry;->putExtras(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2569
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    iget-wide v12, v4, Lcom/android/launcher3/folder/FolderInfo;->screenId:J

    long-to-int v12, v12

    invoke-virtual {v11, v12}, Lcom/android/launcher3/allapps/view/AppsPagedView;->snapToPage(I)V

    .line 2570
    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    .line 2571
    .local v8, "mHandler":Landroid/os/Handler;
    new-instance v11, Lcom/android/launcher3/allapps/controller/AppsController$22;

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v2}, Lcom/android/launcher3/allapps/controller/AppsController$22;-><init>(Lcom/android/launcher3/allapps/controller/AppsController;Lcom/android/launcher3/common/stage/StageEntry;)V

    const-wide/16 v12, 0x3e8

    invoke-virtual {v8, v11, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public getApproachingEndPoint()I
    .locals 1

    .prologue
    .line 1637
    iget v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mMoveToHomeApproachingEnd:I

    return v0
.end method

.method public getApproachingStartPoint()I
    .locals 1

    .prologue
    .line 1632
    iget v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mMoveToHomeApproachingStart:I

    return v0
.end method

.method getAppsFocusListener()Lcom/android/launcher3/allapps/controller/AppsFocusListener;
    .locals 1

    .prologue
    .line 2528
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsFocusListener:Lcom/android/launcher3/allapps/controller/AppsFocusListener;

    return-object v0
.end method

.method public getAppsIconByItemId(J)Landroid/view/View;
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 1902
    new-instance v0, Lcom/android/launcher3/allapps/controller/AppsController$17;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/launcher3/allapps/controller/AppsController$17;-><init>(Lcom/android/launcher3/allapps/controller/AppsController;J)V

    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/controller/AppsController;->getFirstMatch(Lcom/android/launcher3/common/base/item/ItemOperator;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getAppsPageIndicatorView()Landroid/view/View;
    .locals 1

    .prologue
    .line 550
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPageIndicatorView:Landroid/view/View;

    return-object v0
.end method

.method public getAppsPagedView()Lcom/android/launcher3/allapps/view/AppsPagedView;
    .locals 1

    .prologue
    .line 546
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    return-object v0
.end method

.method public getAppsScreenGridPanel()Lcom/android/launcher3/allapps/AppsScreenGridPanel;
    .locals 1

    .prologue
    .line 574
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsScreenGridPanel:Lcom/android/launcher3/allapps/AppsScreenGridPanel;

    return-object v0
.end method

.method public getAppsSearchBarView()Lcom/android/launcher3/allapps/view/AppsSearchBar;
    .locals 1

    .prologue
    .line 566
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsSearchBarView:Lcom/android/launcher3/allapps/view/AppsSearchBar;

    return-object v0
.end method

.method public getAppsSearchView()Lcom/android/launcher3/allapps/view/AppsSearchContainerView;
    .locals 1

    .prologue
    .line 562
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsSearchView:Lcom/android/launcher3/allapps/view/AppsSearchContainerView;

    return-object v0
.end method

.method public getContainerView()Landroid/view/View;
    .locals 1

    .prologue
    .line 554
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsContainer:Lcom/android/launcher3/allapps/view/AppsContainer;

    return-object v0
.end method

.method public getDragController()Lcom/android/launcher3/allapps/controller/AppsDragController;
    .locals 1

    .prologue
    .line 542
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getDragController()Lcom/android/launcher3/allapps/controller/AppsDragController;

    move-result-object v0

    return-object v0
.end method

.method public getDropTarget()Lcom/android/launcher3/common/drag/DropTarget;
    .locals 1

    .prologue
    .line 1642
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getDragController()Lcom/android/launcher3/allapps/controller/AppsDragController;

    move-result-object v0

    return-object v0
.end method

.method public getFolderIconView(Lcom/android/launcher3/folder/FolderInfo;)Landroid/view/View;
    .locals 2
    .param p1, "folder"    # Lcom/android/launcher3/folder/FolderInfo;

    .prologue
    .line 2408
    invoke-virtual {p1}, Lcom/android/launcher3/folder/FolderInfo;->isContainApps()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2409
    iget-wide v0, p1, Lcom/android/launcher3/folder/FolderInfo;->id:J

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsIconByItemId(J)Landroid/view/View;

    move-result-object v0

    .line 2411
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getLauncher()Lcom/android/launcher3/Launcher;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method public getLocationInfoFromDB(Lcom/android/launcher3/common/base/item/ItemInfo;)Lcom/android/launcher3/common/base/item/ItemInfo;
    .locals 3
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 2293
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getLauncherModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherModel;->getAppsLoader()Lcom/android/launcher3/allapps/model/AppsLoader;

    move-result-object v0

    .line 2294
    .local v0, "appsLoader":Lcom/android/launcher3/allapps/model/AppsLoader;
    const/4 v1, 0x0

    .line 2295
    .local v1, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    instance-of v2, p1, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v2, :cond_0

    .line 2296
    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/model/AppsLoader;->reloadPositionFromDB(Lcom/android/launcher3/common/base/item/ItemInfo;)Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v1

    .line 2298
    :cond_0
    return-object v1
.end method

.method public getOrganizeAppsAlertEnable()Z
    .locals 3

    .prologue
    .line 2675
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "AppsController.OrganizeAppsAlert"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getPageIndexForDragView(Lcom/android/launcher3/common/base/item/ItemInfo;)I
    .locals 1
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 2523
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getDragController()Lcom/android/launcher3/allapps/controller/AppsDragController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/controller/AppsDragController;->getPageIndexForDragView(Lcom/android/launcher3/common/base/item/ItemInfo;)I

    move-result v0

    .line 2524
    :goto_0
    return v0

    .line 2523
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    .line 2524
    invoke-virtual {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getNextPage()I

    move-result v0

    goto :goto_0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 558
    iget v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mState:I

    return v0
.end method

.method public getTidyUpContainerView()Landroid/view/View;
    .locals 1

    .prologue
    .line 570
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mTidyUpContainer:Landroid/view/View;

    return-object v0
.end method

.method public getTrayLevel()Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;
    .locals 1

    .prologue
    .line 1622
    sget-object v0, Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;->Underground:Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;

    return-object v0
.end method

.method public getTrayScale()F
    .locals 1

    .prologue
    .line 1627
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsContainer:Lcom/android/launcher3/allapps/view/AppsContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/view/AppsContainer;->getScaleY()F

    move-result v0

    return v0
.end method

.method public getViewBinder()Lcom/android/launcher3/allapps/controller/AppsViewBinder;
    .locals 1

    .prologue
    .line 578
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsViewBinder:Lcom/android/launcher3/allapps/controller/AppsViewBinder;

    return-object v0
.end method

.method public getViewType()Lcom/android/launcher3/allapps/controller/AppsController$ViewType;
    .locals 1

    .prologue
    .line 779
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mViewType:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    return-object v0
.end method

.method public initBounceAnimation()V
    .locals 1

    .prologue
    .line 2588
    sget-object v0, Lcom/android/launcher3/allapps/controller/AppsController;->sBounceAnimation:Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;

    if-eqz v0, :cond_0

    .line 2589
    sget-object v0, Lcom/android/launcher3/allapps/controller/AppsController;->sBounceAnimation:Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;

    invoke-virtual {v0}, Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;->stop()V

    .line 2590
    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher3/allapps/controller/AppsController;->sBounceAnimation:Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;

    .line 2592
    :cond_0
    return-void
.end method

.method public initStageView()V
    .locals 15

    .prologue
    .line 240
    iget-object v11, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v11}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v11

    iput-object v11, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    .line 243
    iget-object v11, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    const v12, 0x7f0f0096

    invoke-virtual {v11, v12}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/android/launcher3/allapps/view/AppsContainer;

    iput-object v11, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsContainer:Lcom/android/launcher3/allapps/view/AppsContainer;

    .line 244
    iget-object v11, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsContainer:Lcom/android/launcher3/allapps/view/AppsContainer;

    invoke-virtual {v11, p0}, Lcom/android/launcher3/allapps/view/AppsContainer;->bindController(Lcom/android/launcher3/common/base/controller/ControllerBase;)V

    .line 245
    iget-object v11, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsContainer:Lcom/android/launcher3/allapps/view/AppsContainer;

    iget-object v12, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    invoke-virtual {v11, v12}, Lcom/android/launcher3/allapps/view/AppsContainer;->setTrayManager(Lcom/android/launcher3/common/tray/TrayManager;)V

    .line 246
    iget-object v11, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsContainer:Lcom/android/launcher3/allapps/view/AppsContainer;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Lcom/android/launcher3/allapps/view/AppsContainer;->setVisibility(I)V

    .line 247
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportNavigationBar()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 248
    iget-object v11, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsContainer:Lcom/android/launcher3/allapps/view/AppsContainer;

    invoke-virtual {v11}, Lcom/android/launcher3/allapps/view/AppsContainer;->getPaddingTop()I

    move-result v10

    .line 249
    .local v10, "topPadding":I
    iget-object v11, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v11}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v2

    .line 250
    .local v2, "dp":Lcom/android/launcher3/common/deviceprofile/DeviceProfile;
    invoke-virtual {v2}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->isVerticalBarLayout()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 251
    iget-object v11, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsContainer:Lcom/android/launcher3/allapps/view/AppsContainer;

    const/4 v12, 0x0

    iget v13, v2, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->navigationBarHeight:I

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v10, v13, v14}, Lcom/android/launcher3/allapps/view/AppsContainer;->setPadding(IIII)V

    .line 258
    .end local v2    # "dp":Lcom/android/launcher3/common/deviceprofile/DeviceProfile;
    .end local v10    # "topPadding":I
    :cond_0
    :goto_0
    iget-object v11, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/launcher3/common/view/DragLayer;->setBackgroundImageAlpha(F)V

    .line 259
    iget-object v11, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    const v12, 0x7f020005

    invoke-virtual {v11, v12}, Lcom/android/launcher3/common/view/DragLayer;->setBackgroundImage(I)V

    .line 265
    iget-object v11, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    const v12, 0x7f0f000e

    invoke-virtual {v11, v12}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/android/launcher3/allapps/view/AppsPagedView;

    iput-object v11, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    .line 268
    iget-object v11, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v11, p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->bindController(Lcom/android/launcher3/common/base/controller/ControllerBase;)V

    .line 269
    iget-object v11, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v11, p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 270
    iget-object v11, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v11}, Lcom/android/launcher3/allapps/view/AppsPagedView;->updateBackgroundAndPaddings()V

    .line 271
    iget-object v11, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    iget-object v12, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    iget-object v13, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    invoke-virtual {v11, v12, v13}, Lcom/android/launcher3/allapps/view/AppsPagedView;->setup(Lcom/android/launcher3/common/drag/DragManager;Lcom/android/launcher3/common/view/DragLayer;)V

    .line 273
    iget-object v11, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v11}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 274
    .local v8, "res":Landroid/content/res/Resources;
    const v11, 0x7f090141

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iput v11, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsSlipY:I

    .line 275
    const v11, 0x7f090142

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iput v11, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mTrayBorderLimit:I

    .line 276
    const v11, 0x7f09009d

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iput v11, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mMoveToHomeApproachingStart:I

    .line 277
    const v11, 0x7f09009b

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iput v11, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mMoveToHomeApproachingEnd:I

    .line 279
    const/high16 v11, 0x3f800000    # 1.0f

    const v12, 0x7f0e0009

    const/4 v13, 0x1

    const/4 v14, 0x1

    invoke-virtual {v8, v12, v13, v14}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v12

    sub-float/2addr v11, v12

    iput v11, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mPageSnapMovingRatioOnApps:F

    .line 280
    const v11, 0x7f0e0003

    const/4 v12, 0x1

    const/4 v13, 0x1

    invoke-virtual {v8, v11, v12, v13}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v11

    iput v11, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsShrinkFactor:F

    .line 281
    const/high16 v11, 0x7f0e0000

    const/4 v12, 0x1

    const/4 v13, 0x1

    invoke-virtual {v8, v11, v12, v13}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v11

    iput v11, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsAlphaRatio:F

    .line 282
    const v11, 0x7f0e0002

    const/4 v12, 0x1

    const/4 v13, 0x1

    invoke-virtual {v8, v11, v12, v13}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v11

    iput v11, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mPageIndicatorShrinkFactor:F

    .line 283
    const v11, 0x7f0e0001

    const/4 v12, 0x1

    const/4 v13, 0x1

    invoke-virtual {v8, v11, v12, v13}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v11

    iput v11, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mPageIndicatorScaleRatio:F

    .line 286
    const v11, 0x7f090148

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iput v11, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mUpwardFadeOutStart:I

    .line 287
    const/4 v11, 0x0

    iput v11, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mUpwardFadeOutEnd:I

    .line 288
    iget v11, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mUpwardFadeOutStart:I

    neg-int v11, v11

    iput v11, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mDownwardFadeOutStart:I

    .line 289
    const/4 v11, 0x0

    iput v11, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mDownwardFadeOutEnd:I

    .line 296
    iget v11, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mUpwardFadeOutEnd:I

    iget v12, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mUpwardFadeOutStart:I

    sub-int/2addr v11, v12

    int-to-float v11, v11

    iput v11, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mFadeOutRange:F

    .line 298
    iget-object v11, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsViewBinder:Lcom/android/launcher3/allapps/controller/AppsViewBinder;

    iget-object v12, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    iget-object v13, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v11, v12, v13}, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->setup(Lcom/android/launcher3/common/drag/DragManager;Lcom/android/launcher3/allapps/view/AppsPagedView;)V

    .line 299
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportAppsSearch()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 300
    iget-object v11, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsSearchView:Lcom/android/launcher3/allapps/view/AppsSearchContainerView;

    if-nez v11, :cond_1

    .line 301
    iget-object v11, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    const v12, 0x7f0f0011

    invoke-virtual {v11, v12}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;

    iput-object v11, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsSearchView:Lcom/android/launcher3/allapps/view/AppsSearchContainerView;

    .line 312
    :cond_1
    :goto_1
    iget-object v11, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    const v12, 0x7f0f000f

    invoke-virtual {v11, v12}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v11

    iput-object v11, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPageIndicatorView:Landroid/view/View;

    .line 313
    iget-object v11, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPageIndicatorView:Landroid/view/View;

    if-eqz v11, :cond_3

    .line 316
    iget-object v11, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPageIndicatorView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 317
    .local v7, "oldLp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v11, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsContainer:Lcom/android/launcher3/allapps/view/AppsContainer;

    iget-object v12, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPageIndicatorView:Landroid/view/View;

    invoke-virtual {v11, v12}, Lcom/android/launcher3/allapps/view/AppsContainer;->removeView(Landroid/view/View;)V

    .line 319
    iget-object v11, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    invoke-virtual {v11}, Lcom/android/launcher3/common/view/DragLayer;->getChildCount()I

    move-result v5

    .line 320
    .local v5, "indexToAddView":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    iget-object v11, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    invoke-virtual {v11}, Lcom/android/launcher3/common/view/DragLayer;->getChildCount()I

    move-result v11

    if-ge v4, v11, :cond_2

    .line 321
    iget-object v11, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsContainer:Lcom/android/launcher3/allapps/view/AppsContainer;

    iget-object v12, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    invoke-virtual {v12, v4}, Lcom/android/launcher3/common/view/DragLayer;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 322
    add-int/lit8 v5, v4, 0x1

    .line 327
    :cond_2
    new-instance v6, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;

    invoke-direct {v6, v7}, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 328
    .local v6, "newLp":Lcom/android/launcher3/common/view/DragLayer$LayoutParams;
    const/16 v11, 0x51

    iput v11, v6, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->gravity:I

    .line 329
    iget-object v11, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    iget-object v12, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPageIndicatorView:Landroid/view/View;

    invoke-virtual {v11, v12, v5, v6}, Lcom/android/launcher3/common/view/DragLayer;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 331
    iget-object v11, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v11}, Lcom/android/launcher3/Launcher;->isAppsStage()Z

    move-result v11

    if-nez v11, :cond_3

    .line 332
    iget-object v11, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPageIndicatorView:Landroid/view/View;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/View;->setAlpha(F)V

    .line 336
    .end local v4    # "i":I
    .end local v5    # "indexToAddView":I
    .end local v6    # "newLp":Lcom/android/launcher3/common/view/DragLayer$LayoutParams;
    .end local v7    # "oldLp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_3
    new-instance v11, Lcom/android/launcher3/allapps/AppsTransitionAnimation;

    iget-object v12, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v11, v12, p0}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/allapps/controller/AppsController;)V

    iput-object v11, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsAnimation:Lcom/android/launcher3/allapps/AppsTransitionAnimation;

    .line 337
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportAppsSearch()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 338
    iget-object v11, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsSearchView:Lcom/android/launcher3/allapps/view/AppsSearchContainerView;

    iget-object v12, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsSearchView:Lcom/android/launcher3/allapps/view/AppsSearchContainerView;

    invoke-virtual {v12, p0}, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->newDefaultAppSearchController(Lcom/android/launcher3/allapps/controller/AppsController;)Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->setSearchBarController(Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController;)V

    .line 341
    :cond_4
    iget-object v11, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v11}, Lcom/android/launcher3/allapps/controller/AppsController;->getViewTypeFromSharedPreference(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/launcher3/allapps/controller/AppsController$ViewType;->valueOf(Ljava/lang/String;)Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    move-result-object v11

    iput-object v11, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mViewType:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    .line 343
    iget-object v11, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v11}, Lcom/android/launcher3/Launcher;->getLauncherModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/launcher3/LauncherModel;->getAppsLoader()Lcom/android/launcher3/allapps/model/AppsLoader;

    move-result-object v0

    .line 344
    .local v0, "appsLoader":Lcom/android/launcher3/allapps/model/AppsLoader;
    iget-object v11, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mViewType:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    sget-object v12, Lcom/android/launcher3/allapps/controller/AppsController$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    if-ne v11, v12, :cond_a

    .line 345
    sget-object v11, Lcom/android/launcher3/allapps/model/AppsLoader;->MENU_ALPHA_NORMALIZER:Lcom/android/launcher3/allapps/model/AppsLoader$Normalizer;

    invoke-virtual {v0, v11}, Lcom/android/launcher3/allapps/model/AppsLoader;->setNormalizer(Lcom/android/launcher3/allapps/model/AppsLoader$Normalizer;)V

    .line 350
    :goto_3
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportMultiSelect()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 351
    iget-object v11, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v11}, Lcom/android/launcher3/Launcher;->getMultiSelectManager()Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    move-result-object v11

    iput-object v11, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    .line 352
    iget-object v11, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    if-eqz v11, :cond_5

    .line 353
    iget-object v11, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v11, p0}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->addMultiSelectCallbacks(Lcom/android/launcher3/common/multiselect/MultiSelectManager$MultiSelectListener;)V

    .line 357
    :cond_5
    iget-object v11, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    const v12, 0x7f0f0012

    invoke-virtual {v11, v12}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v11

    iput-object v11, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mTidyUpContainer:Landroid/view/View;

    .line 358
    iget-object v11, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    const v12, 0x7f0f0014

    invoke-virtual {v11, v12}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 359
    .local v3, "editButton":Landroid/view/View;
    new-instance v11, Lcom/android/launcher3/allapps/controller/AppsController$2;

    invoke-direct {v11, p0}, Lcom/android/launcher3/allapps/controller/AppsController$2;-><init>(Lcom/android/launcher3/allapps/controller/AppsController;)V

    invoke-virtual {v3, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 366
    iget-object v11, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    const v12, 0x7f0f0013

    invoke-virtual {v11, v12}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 367
    .local v1, "cancelButton":Landroid/view/View;
    new-instance v11, Lcom/android/launcher3/allapps/controller/AppsController$3;

    invoke-direct {v11, p0}, Lcom/android/launcher3/allapps/controller/AppsController$3;-><init>(Lcom/android/launcher3/allapps/controller/AppsController;)V

    invoke-virtual {v1, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 373
    iget-object v11, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v11}, Lcom/android/launcher3/Utilities;->isEnableBtnBg(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 374
    const v11, 0x7f0200d0

    invoke-virtual {v3, v11}, Landroid/view/View;->setBackgroundResource(I)V

    .line 375
    const v11, 0x7f0200d0

    invoke-virtual {v1, v11}, Landroid/view/View;->setBackgroundResource(I)V

    .line 379
    :cond_6
    iget-object v11, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    const v12, 0x7f0f0018

    invoke-virtual {v11, v12}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/android/launcher3/allapps/AppsScreenGridPanel;

    iput-object v11, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsScreenGridPanel:Lcom/android/launcher3/allapps/AppsScreenGridPanel;

    .line 380
    iget-object v11, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsScreenGridPanel:Lcom/android/launcher3/allapps/AppsScreenGridPanel;

    invoke-virtual {v11, p0}, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->bindController(Lcom/android/launcher3/common/base/controller/ControllerBase;)V

    .line 381
    iget-object v11, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsScreenGridPanel:Lcom/android/launcher3/allapps/AppsScreenGridPanel;

    invoke-virtual {v11}, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->initScreenGridTopContainer()V

    .line 383
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->searchSettingCheck()V

    .line 385
    invoke-super {p0}, Lcom/android/launcher3/common/stage/Stage;->initStageView()V

    .line 386
    return-void

    .line 253
    .end local v0    # "appsLoader":Lcom/android/launcher3/allapps/model/AppsLoader;
    .end local v1    # "cancelButton":Landroid/view/View;
    .end local v3    # "editButton":Landroid/view/View;
    .end local v8    # "res":Landroid/content/res/Resources;
    .restart local v2    # "dp":Lcom/android/launcher3/common/deviceprofile/DeviceProfile;
    .restart local v10    # "topPadding":I
    :cond_7
    iget-object v11, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsContainer:Lcom/android/launcher3/allapps/view/AppsContainer;

    const/4 v12, 0x0

    const/4 v13, 0x0

    iget v14, v2, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->navigationBarHeight:I

    invoke-virtual {v11, v12, v10, v13, v14}, Lcom/android/launcher3/allapps/view/AppsContainer;->setPadding(IIII)V

    goto/16 :goto_0

    .line 304
    .end local v2    # "dp":Lcom/android/launcher3/common/deviceprofile/DeviceProfile;
    .end local v10    # "topPadding":I
    .restart local v8    # "res":Landroid/content/res/Resources;
    :cond_8
    iget-object v11, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsSearchBarView:Lcom/android/launcher3/allapps/view/AppsSearchBar;

    if-nez v11, :cond_1

    .line 305
    const/4 v9, 0x0

    .line 306
    .local v9, "titleBar":Landroid/view/View;
    iget-object v11, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsContainer:Lcom/android/launcher3/allapps/view/AppsContainer;

    const v12, 0x7f0f0010

    invoke-virtual {v11, v12}, Lcom/android/launcher3/allapps/view/AppsContainer;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 307
    check-cast v9, Lcom/android/launcher3/allapps/view/AppsSearchBar;

    .end local v9    # "titleBar":Landroid/view/View;
    iput-object v9, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsSearchBarView:Lcom/android/launcher3/allapps/view/AppsSearchBar;

    .line 308
    iget-object v11, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsSearchBarView:Lcom/android/launcher3/allapps/view/AppsSearchBar;

    invoke-virtual {v11, p0}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->setAppsController(Lcom/android/launcher3/allapps/controller/AppsController;)V

    goto/16 :goto_1

    .line 320
    .restart local v4    # "i":I
    .restart local v5    # "indexToAddView":I
    .restart local v7    # "oldLp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    .line 347
    .end local v4    # "i":I
    .end local v5    # "indexToAddView":I
    .end local v7    # "oldLp":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v0    # "appsLoader":Lcom/android/launcher3/allapps/model/AppsLoader;
    :cond_a
    sget-object v11, Lcom/android/launcher3/allapps/model/AppsLoader;->MENU_CUSTOM_NORMALIZER:Lcom/android/launcher3/allapps/model/AppsLoader$Normalizer;

    invoke-virtual {v0, v11}, Lcom/android/launcher3/allapps/model/AppsLoader;->setNormalizer(Lcom/android/launcher3/allapps/model/AppsLoader$Normalizer;)V

    goto/16 :goto_3
.end method

.method public isAlphabeticalMode()Z
    .locals 3

    .prologue
    .line 2284
    const/4 v0, 0x0

    .line 2285
    .local v0, "check":Z
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->getViewType()Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/allapps/controller/AppsController$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    if-ne v1, v2, :cond_0

    .line 2286
    const/4 v0, 0x1

    .line 2288
    :cond_0
    return v0
.end method

.method public isAppInstalled(Ljava/lang/String;)Z
    .locals 4
    .param p1, "strAppPackage"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 2536
    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 2539
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2544
    :goto_0
    return v2

    .line 2540
    :catch_0
    move-exception v0

    .line 2541
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isChangeGridState()Z
    .locals 2

    .prologue
    .line 1837
    iget v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isItemInFolder(Lcom/android/launcher3/common/base/item/ItemInfo;)Z
    .locals 4
    .param p1, "info"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 1353
    iget-wide v0, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v2, -0x66

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 1354
    const/4 v0, 0x1

    .line 1356
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSelectState()Z
    .locals 1

    .prologue
    .line 1832
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v0}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->isMultiSelectMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSwitchingState()Z
    .locals 1

    .prologue
    .line 2532
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/stage/StageManager;->isRunningAnimation()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->isRunningStateChangeAnimation()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTidyState()Z
    .locals 2

    .prologue
    .line 1841
    iget v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public modifyItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJIII)V
    .locals 10
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;
    .param p2, "container"    # J
    .param p4, "screenId"    # J
    .param p6, "cellX"    # I
    .param p7, "cellY"    # I
    .param p8, "rank"    # I

    .prologue
    .line 1415
    iget v9, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->hidden:I

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Lcom/android/launcher3/allapps/controller/AppsController;->modifyItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJIIII)V

    .line 1416
    return-void
.end method

.method public modifyItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJIIII)V
    .locals 4
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;
    .param p2, "container"    # J
    .param p4, "screenId"    # J
    .param p6, "cellX"    # I
    .param p7, "cellY"    # I
    .param p8, "rank"    # I
    .param p9, "hidden"    # I

    .prologue
    .line 1420
    iput-wide p2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    .line 1421
    iput p8, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    .line 1422
    iput p6, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    .line 1423
    iput p7, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    .line 1424
    iput-wide p4, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    .line 1425
    iput p9, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->hidden:I

    .line 1426
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->mDirty:Z

    .line 1428
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1430
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "container"

    iget-wide v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1431
    const-string v1, "rank"

    iget v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1432
    const-string v1, "cellX"

    iget v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1433
    const-string v1, "cellY"

    iget v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1434
    const-string v1, "screen"

    iget-wide v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1435
    const-string v1, "hidden"

    iget v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->hidden:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1437
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    invoke-virtual {v1, v0, p1}, Lcom/android/launcher3/common/model/FavoritesUpdater;->updateItem(Landroid/content/ContentValues;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 1438
    return-void
.end method

.method public modifyItemsInDb(Ljava/util/ArrayList;JI)V
    .locals 8
    .param p2, "container"    # J
    .param p4, "screen"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;JI)V"
        }
    .end annotation

    .prologue
    .line 1393
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1394
    .local v0, "contentValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1396
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1397
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 1398
    .local v3, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    iput-wide p2, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    .line 1399
    int-to-long v6, p4

    iput-wide v6, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    .line 1401
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1402
    .local v4, "values":Landroid/content/ContentValues;
    const-string v5, "container"

    iget-wide v6, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1403
    const-string v5, "cellX"

    iget v6, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1404
    const-string v5, "cellY"

    iget v6, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1405
    const-string v5, "rank"

    iget v6, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1406
    const-string v5, "screen"

    iget-wide v6, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1408
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1396
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1410
    .end local v3    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v4    # "values":Landroid/content/ContentValues;
    :cond_0
    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5, v6, v0, p1}, Lcom/android/launcher3/common/model/FavoritesUpdater;->updateItemsInDatabaseHelper(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1411
    return-void
.end method

.method public moveItemFromFolder(Lcom/android/launcher3/common/base/item/IconInfo;)V
    .locals 8
    .param p1, "iconInfo"    # Lcom/android/launcher3/common/base/item/IconInfo;

    .prologue
    const/4 v6, 0x1

    .line 1526
    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getLauncherModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherModel;->getAppsLoader()Lcom/android/launcher3/allapps/model/AppsLoader;

    move-result-object v0

    .line 1527
    .local v0, "appsLoader":Lcom/android/launcher3/allapps/model/AppsLoader;
    iget-wide v4, p1, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    invoke-virtual {v0, v4, v5}, Lcom/android/launcher3/allapps/model/AppsLoader;->getItemById(J)Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/folder/FolderInfo;

    .line 1528
    .local v2, "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    invoke-virtual {v2, p1}, Lcom/android/launcher3/folder/FolderInfo;->remove(Lcom/android/launcher3/common/base/item/IconInfo;)V

    .line 1530
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->isAlphabeticalMode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1531
    const-wide/16 v4, -0x66

    iput-wide v4, p1, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    .line 1532
    const/4 v3, -0x1

    iput v3, p1, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    int-to-long v4, v3

    iput-wide v4, p1, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    .line 1533
    iput-boolean v6, p1, Lcom/android/launcher3/common/base/item/IconInfo;->mDirty:Z

    .line 1534
    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getLauncherModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherModel;->getAppsLoader()Lcom/android/launcher3/allapps/model/AppsLoader;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCurrentPage()I

    move-result v4

    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 1535
    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getLauncherModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/LauncherModel;->getLoaderTask()Lcom/android/launcher3/LauncherModel$LoaderTask;

    move-result-object v5

    .line 1534
    invoke-virtual {v3, v4, v6, v6, v5}, Lcom/android/launcher3/allapps/model/AppsLoader;->startAppsLoaderTask(IZZLcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V

    .line 1544
    :cond_0
    :goto_0
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lcom/android/launcher3/allapps/controller/AppsController$13;

    invoke-direct {v4, p0, p1}, Lcom/android/launcher3/allapps/controller/AppsController$13;-><init>(Lcom/android/launcher3/allapps/controller/AppsController;Lcom/android/launcher3/common/base/item/IconInfo;)V

    const-wide/16 v6, 0x1f4

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1551
    return-void

    .line 1537
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/controller/AppsController;->addItemToLastPosition(Lcom/android/launcher3/common/base/item/IconInfo;)V

    .line 1538
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->removeEmptyPagesAndUpdateAllItemsInfo()Z

    move-result v1

    .line 1539
    .local v1, "dirtyItemUpdated":Z
    if-nez v1, :cond_0

    .line 1540
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->updateDirtyItems()V

    goto :goto_0
.end method

.method public moveOutItemsFromLockedFolder(Lcom/android/launcher3/folder/FolderInfo;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 18
    .param p1, "folder"    # Lcom/android/launcher3/folder/FolderInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/folder/FolderInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2360
    .local p2, "homeNeedUpdateInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    .local p3, "appsNeedUpdateInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/folder/FolderInfo;->isContainApps()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2404
    :cond_0
    return-void

    .line 2363
    :cond_1
    const/4 v10, 0x0

    .local v10, "index":I
    :goto_0
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v10, v2, :cond_0

    .line 2364
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 2365
    .local v4, "info":Lcom/android/launcher3/common/base/item/IconInfo;
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/android/launcher3/folder/FolderInfo;->remove(Lcom/android/launcher3/common/base/item/IconInfo;)V

    .line 2366
    iget-wide v6, v4, Lcom/android/launcher3/common/base/item/IconInfo;->id:J

    const-wide/16 v16, -0x1

    cmp-long v2, v6, v16

    if-nez v2, :cond_2

    .line 2367
    invoke-static {}, Lcom/android/launcher3/common/model/FavoritesProvider;->getInstance()Lcom/android/launcher3/common/model/FavoritesProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/common/model/FavoritesProvider;->generateNewItemId()J

    move-result-wide v6

    iput-wide v6, v4, Lcom/android/launcher3/common/base/item/IconInfo;->id:J

    .line 2369
    :cond_2
    const-wide/16 v6, -0x66

    iput-wide v6, v4, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    .line 2370
    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/android/launcher3/folder/FolderInfo;->screenId:J

    .line 2371
    .local v14, "screenId":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsPagedView()Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getChildCount()I

    move-result v12

    .line 2372
    .local v12, "screenCount":I
    long-to-int v8, v14

    .line 2373
    .local v8, "folderScreen":I
    const/4 v9, 0x0

    .line 2374
    .local v9, "found":Z
    :goto_1
    if-ge v8, v12, :cond_3

    .line 2375
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2, v8}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getItemCountPageAt(I)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v5}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountX()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v6}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountY()I

    move-result v6

    mul-int/2addr v5, v6

    if-ge v2, v5, :cond_4

    .line 2376
    const/4 v9, 0x1

    .line 2382
    :cond_3
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v5, 0x1

    if-ge v2, v5, :cond_5

    .line 2383
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/launcher3/folder/FolderInfo;->cellX:I

    iput v2, v4, Lcom/android/launcher3/common/base/item/IconInfo;->cellX:I

    .line 2384
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/launcher3/folder/FolderInfo;->cellY:I

    iput v2, v4, Lcom/android/launcher3/common/base/item/IconInfo;->cellY:I

    .line 2385
    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/android/launcher3/folder/FolderInfo;->screenId:J

    iput-wide v6, v4, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    .line 2386
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/launcher3/folder/FolderInfo;->rank:I

    iput v2, v4, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    .line 2387
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher3/allapps/controller/AppsController;->removeAppsItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 2398
    :goto_2
    iget-wide v6, v4, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    long-to-int v11, v6

    .line 2399
    .local v11, "page":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2, v11}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 2400
    .local v3, "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsFocusListener:Lcom/android/launcher3/allapps/controller/AppsFocusListener;

    move-object/from16 v6, p0

    invoke-static/range {v2 .. v7}, Lcom/android/launcher3/allapps/AppsUtils;->createAppIcon(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/android/launcher3/common/base/item/IconInfo;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;Lcom/android/launcher3/allapps/controller/AppsFocusListener;)Landroid/view/View;

    move-result-object v13

    .line 2401
    .local v13, "v":Landroid/view/View;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v4}, Lcom/android/launcher3/allapps/controller/AppsController;->addItem(Landroid/view/View;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 2402
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/launcher3/allapps/controller/AppsController;->updateItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 2363
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 2379
    .end local v3    # "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v11    # "page":I
    .end local v13    # "v":Landroid/view/View;
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 2389
    :cond_5
    if-eqz v9, :cond_6

    .line 2390
    int-to-long v6, v8

    iput-wide v6, v4, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    .line 2391
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2, v8}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getItemCountPageAt(I)I

    move-result v2

    iput v2, v4, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    goto :goto_2

    .line 2393
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->createAppsPage()Lcom/android/launcher3/allapps/view/AppsViewCellLayout;

    .line 2394
    int-to-long v6, v12

    iput-wide v6, v4, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    .line 2395
    const/4 v2, 0x0

    iput v2, v4, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    goto :goto_2
.end method

.method public needDefferToBind()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 2845
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->isAppsStage()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mState:I

    if-eq v1, v0, :cond_1

    .line 2846
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->getDragController()Lcom/android/launcher3/allapps/controller/AppsDragController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/allapps/controller/AppsDragController;->needDefferToBind(Lcom/android/launcher3/common/drag/DragManager;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyCapture(Z)V
    .locals 0
    .param p1, "immediate"    # Z

    .prologue
    .line 2322
    return-void
.end method

.method public notifyControllerItemsChanged()V
    .locals 1

    .prologue
    .line 2303
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->isAlphabeticalMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2304
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->setAlphabeticList()V

    .line 2308
    :goto_0
    return-void

    .line 2306
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->rearrangePagesItems()V

    goto :goto_0
.end method

.method public onBackPressed()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 892
    iget-boolean v3, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mFromSetting:Z

    if-eqz v3, :cond_0

    .line 893
    invoke-direct {p0, v1}, Lcom/android/launcher3/allapps/controller/AppsController;->startSettingActivity(Z)V

    .line 911
    :goto_0
    return v1

    .line 897
    :cond_0
    iget v3, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mState:I

    if-eqz v3, :cond_3

    .line 898
    iget v3, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mState:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 899
    invoke-virtual {p0, v2, v2}, Lcom/android/launcher3/allapps/controller/AppsController;->changeState(IZ)Z

    goto :goto_0

    .line 900
    :cond_1
    iget v3, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mState:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_2

    .line 901
    invoke-direct {p0, v1}, Lcom/android/launcher3/allapps/controller/AppsController;->startSettingActivity(Z)V

    goto :goto_0

    .line 904
    :cond_2
    invoke-virtual {p0, v2, v1}, Lcom/android/launcher3/allapps/controller/AppsController;->changeState(IZ)Z

    goto :goto_0

    .line 908
    :cond_3
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 909
    .local v0, "res":Landroid/content/res/Resources;
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v1

    const v3, 0x7f08017f

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0800ea

    .line 910
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    .line 909
    invoke-virtual {v1, v3, v4, v5}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 911
    goto :goto_0
.end method

.method public onBadgeBindingCompleted(Ljava/util/ArrayList;)V
    .locals 1
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
    .line 1935
    .local p1, "badgeItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1936
    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/controller/AppsController;->updateBadgeItems(Ljava/util/ArrayList;)V

    .line 1938
    :cond_0
    return-void
.end method

.method public onChangeSelectMode(ZZ)V
    .locals 1
    .param p1, "enter"    # Z
    .param p2, "animated"    # Z

    .prologue
    .line 2025
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isAppsStage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2026
    if-eqz p1, :cond_1

    .line 2027
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p2}, Lcom/android/launcher3/allapps/controller/AppsController;->changeState(IZ)Z

    .line 2032
    :cond_0
    :goto_0
    return-void

    .line 2029
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v0}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->clearCheckedApps()V

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/view/View;Z)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "isChecked"    # Z

    .prologue
    .line 2035
    if-eqz p2, :cond_0

    .line 2036
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getDragController()Lcom/android/launcher3/allapps/controller/AppsDragController;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->addCheckedApp(Landroid/view/View;Lcom/android/launcher3/common/drag/DragSource;)V

    .line 2040
    :goto_0
    return-void

    .line 2038
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->removeCheckedApp(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)Z
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 785
    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->isRunningAnimation()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 837
    .end local p1    # "v":Landroid/view/View;
    :cond_0
    :goto_0
    return v2

    .line 788
    .restart local p1    # "v":Landroid/view/View;
    :cond_1
    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    invoke-virtual {v4}, Lcom/android/launcher3/common/tray/TrayManager;->isMoving()Z

    move-result v4

    if-nez v4, :cond_0

    .line 791
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->isTidyState()Z

    move-result v4

    if-nez v4, :cond_0

    .line 794
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->initBounceAnimation()V

    .line 796
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 797
    .local v1, "tag":Ljava/lang/Object;
    instance-of v4, v1, Lcom/android/launcher3/common/base/item/IconInfo;

    if-nez v4, :cond_3

    instance-of v4, v1, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v4, :cond_0

    .line 798
    :cond_3
    iget v4, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mState:I

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 800
    :pswitch_0
    instance-of v2, p1, Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v2, :cond_5

    .line 801
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2, p1}, Lcom/android/launcher3/Launcher;->onClickFolderIcon(Landroid/view/View;)V

    :cond_4
    :goto_1
    move v2, v3

    .line 809
    goto :goto_0

    .line 803
    :cond_5
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2, p1}, Lcom/android/launcher3/Launcher;->startAppShortcutOrInfoActivity(Landroid/view/View;)V

    .line 804
    instance-of v2, v1, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v2, :cond_4

    move-object v0, v1

    .line 805
    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 806
    .local v0, "item":Lcom/android/launcher3/common/base/item/IconInfo;
    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/controller/AppsController;->sendGSIMLog(Lcom/android/launcher3/common/base/item/IconInfo;)V

    goto :goto_1

    .end local v0    # "item":Lcom/android/launcher3/common/base/item/IconInfo;
    :pswitch_1
    move v2, v3

    .line 811
    goto :goto_0

    :pswitch_2
    move-object v0, v1

    .line 813
    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 814
    .restart local v0    # "item":Lcom/android/launcher3/common/base/item/IconInfo;
    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4, p1}, Lcom/android/launcher3/Launcher;->startAppShortcutOrInfoActivity(Landroid/view/View;)V

    .line 815
    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsSearchView:Lcom/android/launcher3/allapps/view/AppsSearchContainerView;

    if-eqz v4, :cond_6

    .line 816
    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsSearchView:Lcom/android/launcher3/allapps/view/AppsSearchContainerView;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->setRecentAppMap()V

    .line 817
    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsSearchView:Lcom/android/launcher3/allapps/view/AppsSearchContainerView;

    invoke-virtual {v4, v0}, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->updateAndSaveRecentApps(Lcom/android/launcher3/common/base/item/IconInfo;)V

    .line 819
    :cond_6
    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/controller/AppsController;->sendGSIMLog(Lcom/android/launcher3/common/base/item/IconInfo;)V

    .line 820
    invoke-virtual {p0, v2, v2}, Lcom/android/launcher3/allapps/controller/AppsController;->changeState(IZ)Z

    move v2, v3

    .line 821
    goto :goto_0

    .line 823
    .end local v0    # "item":Lcom/android/launcher3/common/base/item/IconInfo;
    :pswitch_3
    instance-of v2, p1, Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v2, :cond_8

    .line 824
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFolderSelect()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 825
    check-cast p1, Lcom/android/launcher3/folder/view/FolderIconView;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1}, Lcom/android/launcher3/folder/view/FolderIconView;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CheckBox;->toggle()V

    :goto_2
    move v2, v3

    .line 834
    goto :goto_0

    .line 827
    .restart local p1    # "v":Landroid/view/View;
    :cond_7
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2, p1}, Lcom/android/launcher3/Launcher;->onClickFolderIcon(Landroid/view/View;)V

    goto :goto_2

    .line 830
    :cond_8
    check-cast p1, Lcom/android/launcher3/common/view/IconView;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1}, Lcom/android/launcher3/common/view/IconView;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CheckBox;->toggle()V

    .line 831
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v2

    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080182

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    const-string v6, "0"

    invoke-virtual {v2, v4, v5, v6}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 798
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public onClickMultiSelectPanel(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    const/4 v2, 0x1

    .line 2044
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isAppsStage()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isFolderStage()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 2045
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getSecondTopStageMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 2061
    :cond_0
    :goto_0
    return-void

    .line 2049
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 2060
    :goto_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v2, v2}, Lcom/android/launcher3/allapps/controller/AppsController;->changeState(IZZ)Z

    goto :goto_0

    .line 2051
    :pswitch_0
    invoke-direct {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->createFolder()V

    goto :goto_1

    .line 2049
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChangedIfNeeded()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 2610
    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v0

    .line 2611
    .local v0, "dp":Lcom/android/launcher3/common/deviceprofile/DeviceProfile;
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportNavigationBar()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2612
    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsContainer:Lcom/android/launcher3/allapps/view/AppsContainer;

    invoke-virtual {v5}, Lcom/android/launcher3/allapps/view/AppsContainer;->getPaddingTop()I

    move-result v3

    .line 2613
    .local v3, "topPadding":I
    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->isVerticalBarLayout()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2614
    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsContainer:Lcom/android/launcher3/allapps/view/AppsContainer;

    iget v6, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->navigationBarHeight:I

    invoke-virtual {v5, v7, v3, v6, v7}, Lcom/android/launcher3/allapps/view/AppsContainer;->setPadding(IIII)V

    .line 2619
    .end local v3    # "topPadding":I
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 2620
    .local v2, "res":Landroid/content/res/Resources;
    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsSearchBarView:Lcom/android/launcher3/allapps/view/AppsSearchBar;

    invoke-virtual {v5}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 2621
    .local v1, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const v5, 0x7f090081

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 2622
    .local v4, "top_margin":I
    invoke-virtual {v1, v7, v4, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 2624
    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsScreenGridPanel:Lcom/android/launcher3/allapps/AppsScreenGridPanel;

    invoke-virtual {v5}, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->onConfigurationChangedIfNeeded()V

    .line 2625
    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v5}, Lcom/android/launcher3/allapps/view/AppsPagedView;->updateLayoutByConfigurationChanged()V

    .line 2626
    return-void

    .line 2616
    .end local v1    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v2    # "res":Landroid/content/res/Resources;
    .end local v4    # "top_margin":I
    .restart local v3    # "topPadding":I
    :cond_1
    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsContainer:Lcom/android/launcher3/allapps/view/AppsContainer;

    iget v6, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->navigationBarHeight:I

    invoke-virtual {v5, v7, v3, v7, v6}, Lcom/android/launcher3/allapps/view/AppsContainer;->setPadding(IIII)V

    goto :goto_0
.end method

.method public onDestroyActivity()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 518
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    if-eqz v1, :cond_0

    .line 519
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/common/tray/TrayManager;->removeTrayEventCallbacks(Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;)V

    .line 521
    :cond_0
    iput-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsViewBinder:Lcom/android/launcher3/allapps/controller/AppsViewBinder;

    .line 522
    iput-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsContainer:Lcom/android/launcher3/allapps/view/AppsContainer;

    .line 524
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    if-eqz v1, :cond_1

    .line 525
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->removeMultiSelectCallbacks(Lcom/android/launcher3/common/multiselect/MultiSelectManager$MultiSelectListener;)V

    .line 528
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    if-eqz v1, :cond_2

    .line 529
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/folder/folderlock/FolderLock;->removeFolderLockActionCallback(Lcom/android/launcher3/folder/folderlock/FolderLock$FolderLockActionCallback;)V

    .line 532
    :cond_2
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    .line 534
    .local v0, "launcherAppState":Lcom/android/launcher3/LauncherAppState;
    if-eqz v0, :cond_3

    .line 535
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/launcher3/LauncherModel;->unregisterOnLauncherBindingItemsCompletedListener(Lcom/android/launcher3/LauncherModel$OnLauncherBindingItemsCompletedListener;)V

    .line 536
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/launcher3/LauncherModel;->unregisterOnBadgeBindingCompletedLisnter(Lcom/android/launcher3/LauncherModel$OnBadgeBindingCompletedLisnter;)V

    .line 537
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/launcher3/LauncherModel;->unregisterOnLiveIconUpdateLisnter(Lcom/android/launcher3/LauncherModel$OnRefreshLiveIconListener;)V

    .line 539
    :cond_3
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 916
    if-eqz p2, :cond_0

    .line 917
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->requestFocus()Z

    .line 919
    :cond_0
    return-void
.end method

.method public onLauncherBindingItemsCompleted()V
    .locals 5

    .prologue
    .line 1914
    const-string v3, "Launcher.AppsController"

    const-string v4, "onLauncherBindingItemsCompleted"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1917
    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getLauncherModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherModel;->getHomeLoader()Lcom/android/launcher3/home/HomeLoader;

    move-result-object v0

    .line 1918
    .local v0, "homeLoader":Lcom/android/launcher3/home/HomeLoader;
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/common/model/IconCache;

    move-result-object v1

    .line 1919
    .local v1, "iconCache":Lcom/android/launcher3/common/model/IconCache;
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 1920
    .local v2, "packagesToIgnore":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 1921
    invoke-virtual {v0, v2}, Lcom/android/launcher3/home/HomeLoader;->getIgnorePackage(Ljava/util/HashSet;)V

    .line 1922
    if-eqz v1, :cond_0

    .line 1923
    const-string v3, "Launcher.AppsController"

    const-string v4, "onLauncherBindingItemsCompleted IconCache updateDbIcons"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1924
    invoke-virtual {v1, v2}, Lcom/android/launcher3/common/model/IconCache;->updateDbIcons(Ljava/util/Set;)V

    .line 1929
    :cond_0
    invoke-static {}, Lcom/android/launcher3/gamehome/GameHomeManager;->getInstance()Lcom/android/launcher3/gamehome/GameHomeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/gamehome/GameHomeManager;->updateGameAppsVisibility()V

    .line 1930
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLoggingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1931
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 390
    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsViewBinder:Lcom/android/launcher3/allapps/controller/AppsViewBinder;

    invoke-virtual {v5}, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->isAppsLoading()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 430
    :cond_0
    :goto_0
    return v3

    .line 393
    :cond_1
    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->isAppsStage()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 396
    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->isRunningAnimation()Z

    move-result v5

    if-nez v5, :cond_0

    .line 399
    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    invoke-virtual {v5}, Lcom/android/launcher3/common/drag/DragManager;->isDragging()Z

    move-result v5

    if-nez v5, :cond_0

    .line 402
    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    invoke-virtual {v5}, Lcom/android/launcher3/common/tray/TrayManager;->isMoving()Z

    move-result v5

    if-nez v5, :cond_0

    .line 405
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->isTidyState()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-direct {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->isDragLocked()Z

    move-result v5

    if-nez v5, :cond_0

    .line 409
    const/4 v2, 0x0

    .line 410
    .local v2, "longClickCellInfo":Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;
    const/4 v1, 0x0

    .line 411
    .local v1, "itemUnderLongClick":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-eqz v5, :cond_3

    .line 412
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 413
    .local v0, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    new-instance v2, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    .end local v2    # "longClickCellInfo":Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;
    invoke-direct {v2, p1, v0}, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;-><init>(Landroid/view/View;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 414
    .restart local v2    # "longClickCellInfo":Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;
    iget-object v1, v2, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 417
    .end local v0    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_3
    if-eqz v1, :cond_4

    .line 418
    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    invoke-virtual {v5}, Lcom/android/launcher3/common/drag/DragManager;->isDragging()Z

    move-result v5

    if-nez v5, :cond_5

    iget v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mState:I

    if-nez v5, :cond_5

    .line 420
    invoke-virtual {p0, v2, v4}, Lcom/android/launcher3/allapps/controller/AppsController;->startDrag(Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;Z)V

    :cond_4
    :goto_1
    move v3, v4

    .line 430
    goto :goto_0

    .line 421
    :cond_5
    iget v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mState:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_4

    .line 422
    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v5, v1}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->canLongClick(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 423
    invoke-virtual {p0, v2, v3}, Lcom/android/launcher3/allapps/controller/AppsController;->startDrag(Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;Z)V

    goto :goto_1
.end method

.method public onOptionSelectedSearchRecommend()V
    .locals 6

    .prologue
    .line 1812
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/android/launcher3/AppSearchSettingActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1813
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 1814
    .local v1, "mHandler":Landroid/os/Handler;
    new-instance v2, Lcom/android/launcher3/allapps/controller/AppsController$15;

    invoke-direct {v2, p0}, Lcom/android/launcher3/allapps/controller/AppsController$15;-><init>(Lcom/android/launcher3/allapps/controller/AppsController;)V

    const-wide/16 v4, 0x2bc

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1824
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1825
    return-void
.end method

.method public onPauseActivity()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 491
    iput-boolean v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mIsResumed:Z

    .line 492
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->isSelectState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 493
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v0}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->isShowingHelpDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 494
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->hideHelpDialog(Z)V

    .line 496
    :cond_0
    invoke-virtual {p0, v1, v1}, Lcom/android/launcher3/allapps/controller/AppsController;->changeState(IZ)Z

    .line 498
    :cond_1
    return-void
.end method

.method public onReceiveTrayEvent(Lcom/android/launcher3/common/tray/TrayManager$TrayEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/android/launcher3/common/tray/TrayManager$TrayEvent;

    .prologue
    .line 1647
    iget v1, p1, Lcom/android/launcher3/common/tray/TrayManager$TrayEvent;->mEventType:I

    packed-switch v1, :pswitch_data_0

    .line 1655
    :goto_0
    return-void

    .line 1649
    :pswitch_0
    iget v0, p1, Lcom/android/launcher3/common/tray/TrayManager$TrayEvent;->mValue:F

    .line 1650
    .local v0, "offsetY":F
    iget-boolean v1, p1, Lcom/android/launcher3/common/tray/TrayManager$TrayEvent;->mDisallowVisible:Z

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/allapps/controller/AppsController;->updateAppsViewByTrayPosition(FZ)V

    goto :goto_0

    .line 1647
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onRefreshLiveIcon()V
    .locals 2

    .prologue
    .line 2016
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHomeModeChange()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2017
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 2018
    .local v0, "isHomeOnly":Z
    :goto_0
    if-nez v0, :cond_0

    .line 2019
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->updateLiveIcon()V

    .line 2021
    :cond_0
    return-void

    .line 2017
    .end local v0    # "isHomeOnly":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResumeActivity()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 452
    iput-boolean v9, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mIsResumed:Z

    .line 455
    iget-object v7, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v7}, Lcom/android/launcher3/allapps/view/AppsPagedView;->postBindPages()V

    .line 457
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportTransitionEffects()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 458
    iget-object v7, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher3/Launcher;->getPageTransitionManager()Lcom/android/launcher3/pagetransition/PageTransitionManager;

    move-result-object v7

    iget-object v8, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v7, v8}, Lcom/android/launcher3/pagetransition/PageTransitionManager;->setup(Lcom/android/launcher3/common/base/view/PagedView;)V

    .line 461
    :cond_0
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportAppsSearch()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 462
    iget-object v7, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v7}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 463
    .local v6, "pref":Landroid/content/SharedPreferences;
    const-string v7, "search_recommend"

    invoke-interface {v6, v7, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 464
    .local v1, "checked":Z
    invoke-static {v1}, Lcom/android/launcher3/LauncherFeature;->setSupportGalaxyAppsSearch(Z)V

    .line 470
    .end local v1    # "checked":Z
    .end local v6    # "pref":Landroid/content/SharedPreferences;
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->initBounceAnimation()V

    .line 471
    iget-object v7, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher3/Launcher;->getSearchedApp()Ljava/lang/String;

    move-result-object v0

    .line 473
    .local v0, "appinfo":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 474
    const/4 v5, 0x0

    .line 475
    .local v5, "pkg":Ljava/lang/String;
    const/4 v2, 0x0

    .line 476
    .local v2, "cmp":Ljava/lang/String;
    const-string v7, "/"

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 477
    const-string v7, "/"

    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 478
    .local v4, "index":I
    const/4 v7, 0x0

    invoke-virtual {v0, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 479
    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 481
    .end local v4    # "index":I
    :cond_1
    invoke-virtual {p0, v5}, Lcom/android/launcher3/allapps/controller/AppsController;->isAppInstalled(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 482
    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, v5, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    .local v3, "componentName":Landroid/content/ComponentName;
    invoke-virtual {p0, v5, v3}, Lcom/android/launcher3/allapps/controller/AppsController;->findSearchedApp(Ljava/lang/String;Landroid/content/ComponentName;)V

    .line 484
    iget-object v7, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/launcher3/Launcher;->setSearchedApp(Ljava/lang/String;)V

    .line 487
    .end local v2    # "cmp":Ljava/lang/String;
    .end local v3    # "componentName":Landroid/content/ComponentName;
    .end local v5    # "pkg":Ljava/lang/String;
    :cond_2
    return-void

    .line 466
    .end local v0    # "appinfo":Ljava/lang/String;
    :cond_3
    iget-object v7, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsSearchBarView:Lcom/android/launcher3/allapps/view/AppsSearchBar;

    invoke-virtual {v7}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->getSearchView()Landroid/widget/SearchView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/SearchView;->clearFocus()V

    .line 467
    iget-object v7, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsSearchBarView:Lcom/android/launcher3/allapps/view/AppsSearchBar;

    invoke-virtual {v7}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->resetSearchBarText()V

    goto :goto_0
.end method

.method public onSetPageScrollListener(Lcom/android/launcher3/common/base/view/PagedView$PageScrollListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/launcher3/common/base/view/PagedView$PageScrollListener;

    .prologue
    .line 2801
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->setPageScrollListener(Lcom/android/launcher3/common/base/view/PagedView$PageScrollListener;)V

    .line 2802
    return-void
.end method

.method protected onStageEnter(Lcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/Animator;
    .locals 14
    .param p1, "data"    # Lcom/android/launcher3/common/stage/StageEntry;

    .prologue
    const/4 v13, 0x6

    const/4 v12, 0x5

    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 599
    iget-object v8, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    iget-object v11, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v11}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getDragController()Lcom/android/launcher3/allapps/controller/AppsDragController;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/android/launcher3/common/drag/DragManager;->setDragScroller(Lcom/android/launcher3/common/drag/DragScroller;)V

    .line 600
    iget-object v8, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    iget-object v11, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v11}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getDragController()Lcom/android/launcher3/allapps/controller/AppsDragController;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/android/launcher3/common/drag/DragManager;->addDropTarget(Lcom/android/launcher3/common/drag/DropTarget;)V

    .line 601
    iget-object v8, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    iget-object v11, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v8, v11}, Lcom/android/launcher3/common/drag/DragManager;->setMoveTarget(Landroid/view/View;)V

    .line 603
    const/4 v2, 0x0

    .line 604
    .local v2, "enterAnim":Landroid/animation/Animator;
    if-eqz p1, :cond_2

    .line 605
    iget v3, p1, Lcom/android/launcher3/common/stage/StageEntry;->fromStage:I

    .line 606
    .local v3, "fromViewMode":I
    invoke-virtual {p1}, Lcom/android/launcher3/common/stage/StageEntry;->getLayerViews()Ljava/util/HashMap;

    move-result-object v6

    .line 607
    .local v6, "layerViews":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/View;Ljava/lang/Integer;>;"
    iget-boolean v1, p1, Lcom/android/launcher3/common/stage/StageEntry;->enableAnimation:Z

    .line 608
    .local v1, "animated":Z
    const-string v8, "KEY_SUPPRESS_CHANGE_STAGE_ONCE"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {p1, v8, v11}, Lcom/android/launcher3/common/stage/StageEntry;->getExtras(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-lez v8, :cond_4

    move v7, v10

    .line 609
    .local v7, "suppressChangeStageOnce":Z
    :goto_0
    if-eqz v7, :cond_0

    iget-object v8, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    if-eqz v8, :cond_0

    .line 610
    iget-object v8, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    invoke-virtual {v8}, Lcom/android/launcher3/common/tray/TrayManager;->setSuppressChangeStageOnce()V

    .line 613
    :cond_0
    invoke-virtual {p1}, Lcom/android/launcher3/common/stage/StageEntry;->getInternalStateTo()I

    move-result v8

    if-ne v8, v12, :cond_5

    .line 614
    iget-object v8, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsAnimation:Lcom/android/launcher3/allapps/AppsTransitionAnimation;

    invoke-virtual {v8, v1, v6}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->getEnterFromSettingAnim(ZLjava/util/HashMap;)Landroid/animation/Animator;

    move-result-object v2

    .line 615
    invoke-virtual {p0, v12, v1}, Lcom/android/launcher3/allapps/controller/AppsController;->changeState(IZ)Z

    .line 648
    :cond_1
    :goto_1
    iget-object v8, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLoggingRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v8}, Lcom/android/launcher3/common/stage/StageEntry;->addOnCompleteRunnableCallBack(Ljava/lang/Runnable;)V

    .line 651
    .end local v1    # "animated":Z
    .end local v3    # "fromViewMode":I
    .end local v6    # "layerViews":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/View;Ljava/lang/Integer;>;"
    .end local v7    # "suppressChangeStageOnce":Z
    :cond_2
    iget-object v8, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v8}, Lcom/android/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v11

    iget v8, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mState:I

    if-eq v8, v10, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->isSelectState()Z

    move-result v8

    if-eqz v8, :cond_d

    :cond_3
    move v8, v10

    :goto_2
    invoke-static {v11, v8}, Lcom/android/launcher3/Utilities;->hideStatusBar(Landroid/view/Window;Z)V

    .line 653
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher3/LauncherAppState;->getTopViewChangedMessageHandler()Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;

    move-result-object v8

    const/4 v9, 0x2

    .line 654
    invoke-virtual {v8, v9}, Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;->sendMessage(I)V

    .line 656
    return-object v2

    .restart local v1    # "animated":Z
    .restart local v3    # "fromViewMode":I
    .restart local v6    # "layerViews":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/View;Ljava/lang/Integer;>;"
    :cond_4
    move v7, v9

    .line 608
    goto :goto_0

    .line 616
    .restart local v7    # "suppressChangeStageOnce":Z
    :cond_5
    if-ne v3, v10, :cond_9

    .line 617
    invoke-virtual {p1}, Lcom/android/launcher3/common/stage/StageEntry;->getInternalStateTo()I

    move-result v8

    if-ne v8, v10, :cond_7

    .line 618
    invoke-virtual {p0, v10, v1}, Lcom/android/launcher3/allapps/controller/AppsController;->changeState(IZ)Z

    .line 630
    :cond_6
    :goto_3
    iget-object v8, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v8, v10}, Lcom/android/launcher3/allapps/view/AppsPagedView;->updateAccessibilityFlags(Z)V

    goto :goto_1

    .line 620
    :cond_7
    iget-object v8, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsAnimation:Lcom/android/launcher3/allapps/AppsTransitionAnimation;

    invoke-virtual {v8, v1, v6}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->getEnterFromHomeAnimation(ZLjava/util/HashMap;)Landroid/animation/Animator;

    move-result-object v2

    .line 621
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportAppsSearch()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 622
    iget-object v8, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsSearchView:Lcom/android/launcher3/allapps/view/AppsSearchContainerView;

    invoke-virtual {v8}, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->getSearchBarContainerView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 626
    :goto_4
    invoke-virtual {p1}, Lcom/android/launcher3/common/stage/StageEntry;->getInternalStateTo()I

    move-result v8

    if-nez v8, :cond_6

    .line 627
    sget-object v8, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v12}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f080014

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-direct {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->getPageDescription()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/android/launcher3/util/Talk;->say(Ljava/lang/String;)V

    goto :goto_3

    .line 624
    :cond_8
    iget-object v8, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsSearchBarView:Lcom/android/launcher3/allapps/view/AppsSearchBar;

    invoke-virtual {v8}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->getSearchBarContainerView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 631
    :cond_9
    if-eq v3, v12, :cond_a

    if-ne v3, v13, :cond_c

    .line 632
    :cond_a
    if-ne v3, v13, :cond_b

    .line 633
    const-string v8, "KEY_ITEMS_TO_HIDE"

    .line 634
    invoke-virtual {p1, v8}, Lcom/android/launcher3/common/stage/StageEntry;->getExtras(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 635
    .local v4, "itemsToHide":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    const-string v8, "KEY_ITEMS_TO_SHOW"

    .line 636
    invoke-virtual {p1, v8}, Lcom/android/launcher3/common/stage/StageEntry;->getExtras(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 637
    .local v5, "itemsToShow":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    if-eqz v4, :cond_b

    if-eqz v5, :cond_b

    .line 638
    iget-object v8, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v8, v4, v5}, Lcom/android/launcher3/Launcher;->updateItemInfo(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 642
    .end local v4    # "itemsToHide":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .end local v5    # "itemsToShow":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    :cond_b
    const-string v8, "KEY_FOLDER_ICON_VIEW"

    invoke-virtual {p1, v8}, Lcom/android/launcher3/common/stage/StageEntry;->getExtras(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 643
    .local v0, "anchorView":Landroid/view/View;
    iget-object v8, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsAnimation:Lcom/android/launcher3/allapps/AppsTransitionAnimation;

    invoke-virtual {v8, v1, p1, v6, v0}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->getEnterFromFolderAnimation(ZLcom/android/launcher3/common/stage/StageEntry;Ljava/util/HashMap;Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v2

    .line 644
    invoke-virtual {p1}, Lcom/android/launcher3/common/stage/StageEntry;->getInternalStateTo()I

    move-result v8

    invoke-virtual {p0, v8, v1}, Lcom/android/launcher3/allapps/controller/AppsController;->changeState(IZ)Z

    goto/16 :goto_1

    .line 645
    .end local v0    # "anchorView":Landroid/view/View;
    :cond_c
    const/4 v8, 0x3

    if-ne v3, v8, :cond_1

    .line 646
    iget-object v8, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsAnimation:Lcom/android/launcher3/allapps/AppsTransitionAnimation;

    invoke-virtual {v8, v1, v6}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->getEnterFromSettingAnim(ZLjava/util/HashMap;)Landroid/animation/Animator;

    move-result-object v2

    goto/16 :goto_1

    .end local v1    # "animated":Z
    .end local v3    # "fromViewMode":I
    .end local v6    # "layerViews":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/View;Ljava/lang/Integer;>;"
    .end local v7    # "suppressChangeStageOnce":Z
    :cond_d
    move v8, v9

    .line 651
    goto/16 :goto_2
.end method

.method protected onStageExit(Lcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/Animator;
    .locals 8
    .param p1, "data"    # Lcom/android/launcher3/common/stage/StageEntry;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 661
    const/4 v2, 0x0

    .line 662
    .local v2, "exitAnim":Landroid/animation/Animator;
    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v5}, Lcom/android/launcher3/Utilities;->closeDialog(Landroid/app/Activity;)V

    .line 663
    invoke-direct {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->closeViewTypeDialog()V

    .line 664
    invoke-direct {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->closeOrganizeAppsConfirmDialog()V

    .line 665
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportAppsSearch()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 666
    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsSearchView:Lcom/android/launcher3/allapps/view/AppsSearchContainerView;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsSearchView:Lcom/android/launcher3/allapps/view/AppsSearchContainerView;

    invoke-virtual {v5}, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->getSearchBarController()Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController;

    move-result-object v5

    instance-of v5, v5, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;

    if-eqz v5, :cond_0

    .line 667
    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsSearchView:Lcom/android/launcher3/allapps/view/AppsSearchContainerView;

    invoke-virtual {v5}, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->getSearchBarController()Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;

    invoke-virtual {v5}, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->hidePopupMenu()V

    .line 675
    :cond_0
    :goto_0
    if-eqz p1, :cond_3

    .line 676
    iget v4, p1, Lcom/android/launcher3/common/stage/StageEntry;->toStage:I

    .line 677
    .local v4, "toViewMode":I
    invoke-virtual {p1}, Lcom/android/launcher3/common/stage/StageEntry;->getLayerViews()Ljava/util/HashMap;

    move-result-object v3

    .line 678
    .local v3, "layerViews":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/View;Ljava/lang/Integer;>;"
    iget-boolean v1, p1, Lcom/android/launcher3/common/stage/StageEntry;->enableAnimation:Z

    .line 679
    .local v1, "animated":Z
    if-ne v4, v6, :cond_5

    .line 680
    invoke-virtual {p0, v7, v6}, Lcom/android/launcher3/allapps/controller/AppsController;->changeState(IZ)Z

    .line 681
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportAppsSearch()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 682
    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsSearchView:Lcom/android/launcher3/allapps/view/AppsSearchContainerView;

    invoke-virtual {v5}, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->getContentView()Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 684
    :cond_1
    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsAnimation:Lcom/android/launcher3/allapps/AppsTransitionAnimation;

    invoke-virtual {v5, v1, v3}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->getExitToHomeAnimation(ZLjava/util/HashMap;)Landroid/animation/Animator;

    move-result-object v2

    .line 685
    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v5, v7}, Lcom/android/launcher3/allapps/view/AppsPagedView;->updateAccessibilityFlags(Z)V

    .line 686
    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getDragMgr()Lcom/android/launcher3/common/drag/DragManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v6}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getDragController()Lcom/android/launcher3/allapps/controller/AppsDragController;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/launcher3/common/drag/DragManager;->removeDropTarget(Lcom/android/launcher3/common/drag/DropTarget;)V

    .line 693
    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLoggingRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v5}, Lcom/android/launcher3/common/stage/StageEntry;->addOnCompleteRunnableCallBack(Ljava/lang/Runnable;)V

    .line 695
    .end local v1    # "animated":Z
    .end local v3    # "layerViews":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/View;Ljava/lang/Integer;>;"
    .end local v4    # "toViewMode":I
    :cond_3
    return-object v2

    .line 670
    :cond_4
    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsSearchBarView:Lcom/android/launcher3/allapps/view/AppsSearchBar;

    if-eqz v5, :cond_0

    .line 671
    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsSearchBarView:Lcom/android/launcher3/allapps/view/AppsSearchBar;

    invoke-virtual {v5}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->hidePopupMenu()V

    goto :goto_0

    .line 687
    .restart local v1    # "animated":Z
    .restart local v3    # "layerViews":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/View;Ljava/lang/Integer;>;"
    .restart local v4    # "toViewMode":I
    :cond_5
    const/4 v5, 0x5

    if-eq v4, v5, :cond_6

    const/4 v5, 0x6

    if-ne v4, v5, :cond_7

    .line 688
    :cond_6
    const-string v5, "KEY_FOLDER_ICON_VIEW"

    invoke-virtual {p1, v5}, Lcom/android/launcher3/common/stage/StageEntry;->getExtras(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 689
    .local v0, "anchorView":Landroid/view/View;
    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsAnimation:Lcom/android/launcher3/allapps/AppsTransitionAnimation;

    invoke-virtual {v5, v1, v3, v0}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->getExitToFolderAnimation(ZLjava/util/HashMap;Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v2

    .line 690
    goto :goto_1

    .end local v0    # "anchorView":Landroid/view/View;
    :cond_7
    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    .line 691
    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsAnimation:Lcom/android/launcher3/allapps/AppsTransitionAnimation;

    invoke-virtual {v5, v7, v3}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->getExitToWidgetAnim(ZLjava/util/HashMap;)Landroid/animation/Animator;

    move-result-object v2

    goto :goto_1
.end method

.method protected onStageMovingToInitial(Lcom/android/launcher3/common/stage/StageEntry;)V
    .locals 3
    .param p1, "data"    # Lcom/android/launcher3/common/stage/StageEntry;

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 700
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsContainer:Lcom/android/launcher3/allapps/view/AppsContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/view/AppsContainer;->getAlpha()F

    move-result v0

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_0

    .line 701
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsContainer:Lcom/android/launcher3/allapps/view/AppsContainer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/view/AppsContainer;->setVisibility(I)V

    .line 702
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsContainer:Lcom/android/launcher3/allapps/view/AppsContainer;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/allapps/view/AppsContainer;->setAlpha(F)V

    .line 703
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getDragController()Lcom/android/launcher3/allapps/controller/AppsDragController;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/drag/DragManager;->removeDropTarget(Lcom/android/launcher3/common/drag/DropTarget;)V

    .line 705
    :cond_0
    return-void
.end method

.method public onSwipeBlockListener(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 2851
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-static {v0, p1, p2}, Lcom/android/launcher3/util/event/ScrollDetector;->setBlockArea(Lcom/android/launcher3/common/base/view/PagedView;FF)Z

    .line 2852
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-static {v0}, Lcom/android/launcher3/util/event/ScrollDetector;->setScrollableView(Lcom/android/launcher3/common/base/view/PagedView;)Z

    .line 2853
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/util/event/ScrollDetector;->setTalkBackEnabled(Landroid/content/Context;)Z

    .line 2854
    return-void
.end method

.method public onUpdateAlphabetList(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 6
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 2268
    instance-of v2, p1, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 2269
    check-cast v0, Lcom/android/launcher3/folder/FolderInfo;

    .line 2270
    .local v0, "folderItem":Lcom/android/launcher3/folder/FolderInfo;
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->getViewType()Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/allapps/controller/AppsController$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    if-ne v2, v3, :cond_0

    .line 2271
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->setAlphabeticList()V

    .line 2272
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 2273
    .local v1, "mHandler":Landroid/os/Handler;
    new-instance v2, Lcom/android/launcher3/allapps/controller/AppsController$19;

    invoke-direct {v2, p0, v0}, Lcom/android/launcher3/allapps/controller/AppsController$19;-><init>(Lcom/android/launcher3/allapps/controller/AppsController;Lcom/android/launcher3/folder/FolderInfo;)V

    const-wide/16 v4, 0x32

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2281
    .end local v0    # "folderItem":Lcom/android/launcher3/folder/FolderInfo;
    .end local v1    # "mHandler":Landroid/os/Handler;
    :cond_0
    return-void
.end method

.method public prepareTidedUpPages()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1956
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->getOrganizeAppsAlertEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1957
    new-instance v0, Lcom/android/launcher3/allapps/OrganizeAppsConfirmDialog;

    invoke-direct {v0}, Lcom/android/launcher3/allapps/OrganizeAppsConfirmDialog;-><init>()V

    .line 1958
    .local v0, "dialog":Lcom/android/launcher3/allapps/OrganizeAppsConfirmDialog;
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/android/launcher3/allapps/OrganizeAppsConfirmDialog;->show(Landroid/app/FragmentManager;Lcom/android/launcher3/allapps/controller/AppsController;)V

    .line 1965
    .end local v0    # "dialog":Lcom/android/launcher3/allapps/OrganizeAppsConfirmDialog;
    :goto_0
    return-void

    .line 1959
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->checkPossibleTideUpPages()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1960
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v1, v3}, Lcom/android/launcher3/allapps/view/AppsPagedView;->setCurrentPage(I)V

    .line 1961
    const/4 v1, 0x4

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/launcher3/allapps/controller/AppsController;->changeState(IZ)Z

    goto :goto_0

    .line 1963
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    const v2, 0x7f080067

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public prepareViewsForReposition()Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2695
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2696
    .local v7, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iget-object v8, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v8}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getPageCount()I

    move-result v4

    .line 2697
    .local v4, "pageCount":I
    const/4 v5, 0x0

    .local v5, "pageIndex":I
    :goto_0
    if-ge v5, v4, :cond_2

    .line 2698
    iget-object v8, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v8, v5}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v0

    .line 2699
    .local v0, "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->getPageChildCount()I

    move-result v1

    .line 2700
    .local v1, "itemCount":I
    const/4 v2, 0x0

    .local v2, "itemIndex":I
    :goto_1
    if-ge v2, v1, :cond_1

    .line 2701
    invoke-virtual {v0, v2}, Lcom/android/launcher3/common/base/view/CellLayout;->getChildOnPageAt(I)Landroid/view/View;

    move-result-object v6

    .line 2702
    .local v6, "view":Landroid/view/View;
    instance-of v8, v6, Lcom/android/launcher3/common/view/IconView;

    if-eqz v8, :cond_0

    .line 2703
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2700
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2697
    .end local v6    # "view":Landroid/view/View;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2709
    .end local v0    # "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v1    # "itemCount":I
    .end local v2    # "itemIndex":I
    :cond_2
    iget v8, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mState:I

    const/4 v9, 0x4

    if-ne v8, v9, :cond_3

    .line 2710
    sget-object v3, Lcom/android/launcher3/allapps/model/AppsLoader;->MENU_CUSTOM_TIDE_UP_NORMALIZER:Lcom/android/launcher3/allapps/model/AppsLoader$Normalizer;

    .line 2715
    .local v3, "normalizer":Lcom/android/launcher3/allapps/model/AppsLoader$Normalizer;, "Lcom/android/launcher3/allapps/model/AppsLoader$Normalizer<Ljava/lang/Object;>;"
    :goto_2
    iget-object v8, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v8}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getMaxItemsPerScreen()I

    move-result v8

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    .line 2716
    invoke-virtual {v10}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCurrentPage()I

    move-result v10

    .line 2715
    invoke-virtual {v3, v7, v8, v9, v10}, Lcom/android/launcher3/allapps/model/AppsLoader$Normalizer;->getViewsForScreenWithPreNormalize(Ljava/util/ArrayList;IZI)Ljava/util/ArrayList;

    .line 2717
    return-object v7

    .line 2712
    .end local v3    # "normalizer":Lcom/android/launcher3/allapps/model/AppsLoader$Normalizer;, "Lcom/android/launcher3/allapps/model/AppsLoader$Normalizer<Ljava/lang/Object;>;"
    :cond_3
    iget-object v8, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mViewType:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    sget-object v9, Lcom/android/launcher3/allapps/controller/AppsController$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    if-ne v8, v9, :cond_4

    sget-object v3, Lcom/android/launcher3/allapps/model/AppsLoader;->MENU_ALPHA_NORMALIZER:Lcom/android/launcher3/allapps/model/AppsLoader$Normalizer;

    .restart local v3    # "normalizer":Lcom/android/launcher3/allapps/model/AppsLoader$Normalizer;, "Lcom/android/launcher3/allapps/model/AppsLoader$Normalizer<Ljava/lang/Object;>;"
    :goto_3
    goto :goto_2

    .end local v3    # "normalizer":Lcom/android/launcher3/allapps/model/AppsLoader$Normalizer;, "Lcom/android/launcher3/allapps/model/AppsLoader$Normalizer<Ljava/lang/Object;>;"
    :cond_4
    sget-object v3, Lcom/android/launcher3/allapps/model/AppsLoader;->MENU_CUSTOM_NORMALIZER:Lcom/android/launcher3/allapps/model/AppsLoader$Normalizer;

    goto :goto_3
.end method

.method public rearrangePagesItems()V
    .locals 2

    .prologue
    .line 2311
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCurrentPage()I

    move-result v0

    .line 2312
    .local v0, "startPage":I
    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/controller/AppsController;->rearrangePagesItems(I)V

    .line 2313
    return-void
.end method

.method public rearrangePagesItems(I)V
    .locals 4
    .param p1, "startPage"    # I

    .prologue
    .line 2316
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getLauncherModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->getAppsLoader()Lcom/android/launcher3/allapps/model/AppsLoader;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 2317
    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getLauncherModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherModel;->getLoaderTask()Lcom/android/launcher3/LauncherModel$LoaderTask;

    move-result-object v3

    .line 2316
    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/android/launcher3/allapps/model/AppsLoader;->startAppsLoaderTask(IZZLcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V

    .line 2318
    return-void
.end method

.method public recoverCancelItemForFolderLock(Lcom/android/launcher3/common/base/item/IconInfo;JJIII)Z
    .locals 20
    .param p1, "info"    # Lcom/android/launcher3/common/base/item/IconInfo;
    .param p2, "container"    # J
    .param p4, "screenId"    # J
    .param p6, "cellX"    # I
    .param p7, "cellY"    # I
    .param p8, "rank"    # I

    .prologue
    .line 2326
    move-wide/from16 v0, p4

    long-to-int v15, v0

    .line 2327
    .local v15, "page":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v4, v15}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 2328
    .local v5, "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    const-wide/16 v12, -0x66

    cmp-long v4, v10, v12

    if-eqz v4, :cond_2

    .line 2330
    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsIconByItemId(J)Landroid/view/View;

    move-result-object v16

    .line 2331
    .local v16, "folderIconView":Landroid/view/View;
    if-eqz v16, :cond_1

    .line 2332
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v18

    .line 2333
    .local v18, "folderObject":Ljava/lang/Object;
    move-object/from16 v0, v18

    instance-of v4, v0, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v4, :cond_0

    move-object/from16 v17, v18

    .line 2334
    check-cast v17, Lcom/android/launcher3/folder/FolderInfo;

    .line 2335
    .local v17, "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/FolderInfo;->add(Lcom/android/launcher3/common/base/item/IconInfo;)V

    .line 2355
    .end local v16    # "folderIconView":Landroid/view/View;
    .end local v17    # "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    .end local v18    # "folderObject":Ljava/lang/Object;
    :cond_0
    :goto_0
    const/4 v4, 0x1

    return v4

    .line 2338
    .restart local v16    # "folderIconView":Landroid/view/View;
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsFocusListener:Lcom/android/launcher3/allapps/controller/AppsFocusListener;

    move-object/from16 v6, p1

    move-object/from16 v8, p0

    invoke-static/range {v4 .. v9}, Lcom/android/launcher3/allapps/AppsUtils;->createAppIcon(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/android/launcher3/common/base/item/IconInfo;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;Lcom/android/launcher3/allapps/controller/AppsFocusListener;)Landroid/view/View;

    move-result-object v7

    .line 2340
    .local v7, "v":Landroid/view/View;
    const/4 v4, 0x2

    new-array v6, v4, [I

    .line 2341
    .local v6, "cellXY":[I
    const/4 v4, 0x0

    aput p6, v6, v4

    .line 2342
    const/4 v4, 0x1

    aput p7, v6, v4

    .line 2343
    new-instance v8, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    invoke-direct {v8}, Lcom/android/launcher3/common/drag/DropTarget$DragObject;-><init>()V

    .line 2344
    .local v8, "dragObject":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    move-object/from16 v0, p1

    iput-object v0, v8, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    .line 2345
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/allapps/controller/AppsController;->getDragController()Lcom/android/launcher3/allapps/controller/AppsDragController;

    move-result-object v4

    move/from16 v0, p8

    invoke-virtual {v5, v0}, Lcom/android/launcher3/common/base/view/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher3/allapps/controller/AppsDragController;->createUserFolderIfNecessary(Lcom/android/launcher3/common/base/view/CellLayout;[ILandroid/view/View;Lcom/android/launcher3/common/drag/DropTarget$DragObject;Landroid/view/View;)Z

    goto :goto_0

    .line 2348
    .end local v6    # "cellXY":[I
    .end local v7    # "v":Landroid/view/View;
    .end local v8    # "dragObject":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .end local v16    # "folderIconView":Landroid/view/View;
    :cond_2
    move/from16 v0, p8

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    .line 2349
    move-wide/from16 v0, p4

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    .line 2350
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsFocusListener:Lcom/android/launcher3/allapps/controller/AppsFocusListener;

    move-object v10, v5

    move-object/from16 v11, p1

    move-object/from16 v13, p0

    invoke-static/range {v9 .. v14}, Lcom/android/launcher3/allapps/AppsUtils;->createAppIcon(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/android/launcher3/common/base/item/IconInfo;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;Lcom/android/launcher3/allapps/controller/AppsFocusListener;)Landroid/view/View;

    move-result-object v7

    .line 2351
    .restart local v7    # "v":Landroid/view/View;
    const/4 v4, 0x1

    move-object/from16 v0, p1

    iput-boolean v4, v0, Lcom/android/launcher3/common/base/item/IconInfo;->mDirty:Z

    .line 2352
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v7, v1}, Lcom/android/launcher3/allapps/controller/AppsController;->addItem(Landroid/view/View;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 2353
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/allapps/controller/AppsController;->getDragController()Lcom/android/launcher3/allapps/controller/AppsDragController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/controller/AppsDragController;->getReorderController()Lcom/android/launcher3/allapps/controller/AppsReorderController;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v4, v15}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getItemCountPageAt(I)I

    move-result v4

    add-int/lit8 v12, v4, -0x1

    move-object/from16 v0, p1

    iget v13, v0, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    const/4 v14, -0x1

    invoke-virtual/range {v9 .. v15}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->realTimeReorder(IFIIII)V

    goto :goto_0
.end method

.method public removeApps(Ljava/util/ArrayList;)V
    .locals 22
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
    .line 1150
    .local p1, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    const-string v20, "Launcher.AppsController"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "removApps : "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    if-eqz p1, :cond_2

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    :goto_0
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher3/allapps/controller/AppsController;->mRemoveInProgress:Z

    .line 1152
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 1153
    .local v9, "folderItemMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;>;"
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 1155
    .local v16, "removeItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_0
    :goto_1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_4

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 1156
    .local v11, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/launcher3/allapps/controller/AppsController;->isItemInFolder(Lcom/android/launcher3/common/base/item/ItemInfo;)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 1157
    iget-wide v0, v11, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_1

    .line 1158
    iget-wide v0, v11, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1160
    :cond_1
    iget-wide v0, v11, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    .line 1161
    .local v12, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    check-cast v11, Lcom/android/launcher3/common/base/item/IconInfo;

    .end local v11    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1150
    .end local v9    # "folderItemMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;>;"
    .end local v12    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    .end local v16    # "removeItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    :cond_2
    const/16 v19, 0x0

    goto :goto_0

    .line 1163
    .restart local v9    # "folderItemMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;>;"
    .restart local v11    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    .restart local v16    # "removeItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    :cond_3
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1164
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/allapps/controller/AppsController;->isSelectState()Z

    move-result v20

    if-eqz v20, :cond_0

    .line 1165
    iget-wide v0, v11, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsIconByItemId(J)Landroid/view/View;

    move-result-object v18

    .line 1166
    .local v18, "v":Landroid/view/View;
    if-eqz v18, :cond_0

    .line 1167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->removeCheckedApp(Landroid/view/View;)V

    goto :goto_1

    .line 1173
    .end local v11    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v18    # "v":Landroid/view/View;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher3/Launcher;->isAppsStage()Z

    move-result v19

    if-eqz v19, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mIsResumed:Z

    move/from16 v19, v0

    if-eqz v19, :cond_6

    const/4 v4, 0x1

    .line 1174
    .local v4, "animate":Z
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/allapps/controller/AppsController;->getDragController()Lcom/android/launcher3/allapps/controller/AppsDragController;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher3/allapps/controller/AppsDragController;->getReorderController()Lcom/android/launcher3/allapps/controller/AppsReorderController;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v4}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->removeEmptyCellsAndViews(Ljava/util/ArrayList;Z)V

    .line 1176
    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v14

    .line 1177
    .local v14, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_5
    :goto_3
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_7

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Long;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 1178
    .local v6, "containerId":J
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    .line 1179
    .local v13, "itemsInContainer":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsIconByItemId(J)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/android/launcher3/folder/view/FolderIconView;

    .line 1180
    .local v10, "iconView":Lcom/android/launcher3/folder/view/FolderIconView;
    if-eqz v10, :cond_5

    .line 1181
    invoke-virtual {v10}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v8

    .line 1182
    .local v8, "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    invoke-virtual {v8, v13}, Lcom/android/launcher3/folder/FolderInfo;->remove(Ljava/util/ArrayList;)V

    .line 1183
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/allapps/controller/AppsController;->isAlphabeticalMode()Z

    move-result v19

    if-eqz v19, :cond_5

    .line 1184
    invoke-virtual {v10}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderView()Lcom/android/launcher3/folder/view/FolderView;

    move-result-object v5

    .line 1185
    .local v5, "folder":Lcom/android/launcher3/folder/view/FolderView;
    invoke-virtual {v5}, Lcom/android/launcher3/folder/view/FolderView;->getItemCount()I

    move-result v19

    const/16 v21, 0x1

    move/from16 v0, v19

    move/from16 v1, v21

    if-gt v0, v1, :cond_5

    .line 1186
    invoke-virtual {v5}, Lcom/android/launcher3/folder/view/FolderView;->getItemCount()I

    move-result v19

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v21

    invoke-virtual {v0, v8, v1, v10, v2}, Lcom/android/launcher3/allapps/controller/AppsController;->replaceFolderWithFinalItem(Lcom/android/launcher3/common/base/item/ItemInfo;ILandroid/view/View;Z)V

    goto :goto_3

    .line 1173
    .end local v4    # "animate":Z
    .end local v5    # "folder":Lcom/android/launcher3/folder/view/FolderView;
    .end local v6    # "containerId":J
    .end local v8    # "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    .end local v10    # "iconView":Lcom/android/launcher3/folder/view/FolderIconView;
    .end local v13    # "itemsInContainer":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    .end local v14    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    :cond_6
    const/4 v4, 0x0

    goto :goto_2

    .line 1191
    .restart local v4    # "animate":Z
    .restart local v14    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/allapps/controller/AppsController;->getViewType()Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    move-result-object v19

    sget-object v20, Lcom/android/launcher3/allapps/controller/AppsController$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_8

    .line 1192
    new-instance v15, Landroid/os/Handler;

    invoke-direct {v15}, Landroid/os/Handler;-><init>()V

    .line 1193
    .local v15, "mHandler":Landroid/os/Handler;
    new-instance v19, Lcom/android/launcher3/allapps/controller/AppsController$9;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/launcher3/allapps/controller/AppsController$9;-><init>(Lcom/android/launcher3/allapps/controller/AppsController;)V

    const-wide/16 v20, 0xc8

    move-object/from16 v0, v19

    move-wide/from16 v1, v20

    invoke-virtual {v15, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1218
    .end local v15    # "mHandler":Landroid/os/Handler;
    :goto_4
    return-void

    .line 1201
    :cond_8
    new-instance v17, Lcom/android/launcher3/allapps/controller/AppsController$10;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/launcher3/allapps/controller/AppsController$10;-><init>(Lcom/android/launcher3/allapps/controller/AppsController;)V

    .line 1211
    .local v17, "runnable":Ljava/lang/Runnable;
    if-eqz v4, :cond_9

    .line 1212
    new-instance v19, Landroid/os/Handler;

    invoke-direct/range {v19 .. v19}, Landroid/os/Handler;-><init>()V

    const-wide/16 v20, 0x1f4

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4

    .line 1215
    :cond_9
    invoke-interface/range {v17 .. v17}, Ljava/lang/Runnable;->run()V

    goto :goto_4
.end method

.method public removeAppsItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 1
    .param p1, "info"    # Lcom/android/launcher3/common/base/item/ItemInfo;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1315
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/allapps/controller/AppsController;->removeAppsItem(Lcom/android/launcher3/common/base/item/ItemInfo;Z)V

    .line 1316
    return-void
.end method

.method public removeAppsItem(Lcom/android/launcher3/common/base/item/ItemInfo;Z)V
    .locals 11
    .param p1, "info"    # Lcom/android/launcher3/common/base/item/ItemInfo;
    .param p2, "removeEmptyCellAndPage"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 1320
    const-string v5, "Launcher.AppsController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "removeAppsItem : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1321
    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/controller/AppsController;->isItemInFolder(Lcom/android/launcher3/common/base/item/ItemInfo;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-wide v6, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-virtual {p0, v6, v7}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsIconByItemId(J)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-wide v6, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    .line 1322
    invoke-virtual {p0, v6, v7}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsIconByItemId(J)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v5, :cond_1

    .line 1323
    iget-wide v6, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-virtual {p0, v6, v7}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsIconByItemId(J)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/folder/FolderInfo;

    .local v2, "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    move-object v5, p1

    .line 1324
    check-cast v5, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v2, v5}, Lcom/android/launcher3/folder/FolderInfo;->remove(Lcom/android/launcher3/common/base/item/IconInfo;)V

    .line 1325
    const-string v5, "Launcher.AppsController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "remove : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/launcher3/common/base/item/ItemInfo;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1350
    .end local v2    # "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    :cond_0
    :goto_0
    return-void

    .line 1327
    :cond_1
    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    iget-wide v6, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    long-to-int v6, v6

    invoke-virtual {v5, v6}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v4

    .line 1328
    .local v4, "parentCell":Lcom/android/launcher3/common/base/view/CellLayout;
    if-eqz v4, :cond_0

    .line 1329
    iget v5, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v6}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountX()I

    move-result v6

    rem-int/2addr v5, v6

    iget v6, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    iget-object v7, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    .line 1330
    invoke-virtual {v7}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountX()I

    move-result v7

    div-int/2addr v6, v7

    .line 1329
    invoke-virtual {v4, v5, v6}, Lcom/android/launcher3/common/base/view/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v3

    .line 1331
    .local v3, "icon":Landroid/view/View;
    invoke-direct {p0, v4, v3}, Lcom/android/launcher3/allapps/controller/AppsController;->removeAppsItem(Lcom/android/launcher3/common/base/view/CellLayout;Landroid/view/View;)V

    .line 1334
    if-eqz p2, :cond_0

    .line 1335
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->getViewType()Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    move-result-object v5

    sget-object v6, Lcom/android/launcher3/allapps/controller/AppsController$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    if-eq v5, v6, :cond_0

    .line 1336
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->getDragController()Lcom/android/launcher3/allapps/controller/AppsDragController;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->getDragController()Lcom/android/launcher3/allapps/controller/AppsDragController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/allapps/controller/AppsDragController;->getReorderController()Lcom/android/launcher3/allapps/controller/AppsReorderController;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 1337
    const-string v5, "Launcher.AppsController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "remove empty cell because existed view was removed. dirty screen : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    long-to-int v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1338
    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v5}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getMaxItemsPerScreen()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .line 1339
    .local v1, "endPos":I
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->getDragController()Lcom/android/launcher3/allapps/controller/AppsDragController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/allapps/controller/AppsDragController;->getReorderController()Lcom/android/launcher3/allapps/controller/AppsReorderController;

    move-result-object v5

    iget-wide v6, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    long-to-int v6, v6

    invoke-virtual {v5, v10, v1, v6, v10}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->removeEmptyCellAtPage(IIIZ)V

    .line 1342
    .end local v1    # "endPos":I
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->removeEmptyPagesAndUpdateAllItemsInfo()Z

    move-result v0

    .line 1343
    .local v0, "dirtyItemUpdated":Z
    if-nez v0, :cond_0

    .line 1344
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->updateDirtyItems()V

    goto :goto_0
.end method

.method public removeEmptyPagesAndUpdateAllItemsInfo()Z
    .locals 3

    .prologue
    .line 2636
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->removeEmptyScreen()Z

    move-result v1

    .line 2637
    .local v1, "pageRemoved":Z
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->removeExtraEmptyScreen()V

    .line 2639
    const/4 v0, 0x0

    .line 2640
    .local v0, "dirtyItemUpdated":Z
    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->isAlphabeticalMode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2641
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getLauncherModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherModel;->getAppsLoader()Lcom/android/launcher3/allapps/model/AppsLoader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/model/AppsLoader;->runCurrentComparatorNormalizerNormalize()V

    .line 2643
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->updateDirtyItems()V

    .line 2644
    const/4 v0, 0x1

    .line 2646
    :cond_0
    return v0
.end method

.method public removeUnusedItemViews(II)V
    .locals 8
    .param p1, "page"    # I
    .param p2, "itemNum"    # I

    .prologue
    .line 2241
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsPagedView()Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v2

    .line 2242
    .local v2, "cellLayout":Lcom/android/launcher3/common/base/view/CellLayout;
    if-eqz v2, :cond_1

    .line 2243
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsPagedView()Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountX()I

    move-result v0

    .line 2244
    .local v0, "cellCountX":I
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsPagedView()Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountY()I

    move-result v1

    .line 2245
    .local v1, "cellCountY":I
    mul-int v4, v0, v1

    .line 2246
    .local v4, "totalNum":I
    move v3, p2

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_1

    .line 2247
    rem-int v6, v3, v0

    div-int v7, v3, v0

    invoke-virtual {v2, v6, v7}, Lcom/android/launcher3/common/base/view/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v5

    .line 2248
    .local v5, "view":Landroid/view/View;
    if-eqz v5, :cond_0

    .line 2249
    invoke-virtual {v2, v5}, Lcom/android/launcher3/common/base/view/CellLayout;->removeView(Landroid/view/View;)V

    .line 2246
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2253
    .end local v0    # "cellCountX":I
    .end local v1    # "cellCountY":I
    .end local v3    # "i":I
    .end local v4    # "totalNum":I
    .end local v5    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public replaceFolderWithFinalItem(Lcom/android/launcher3/common/base/item/ItemInfo;ILandroid/view/View;)V
    .locals 1
    .param p1, "info"    # Lcom/android/launcher3/common/base/item/ItemInfo;
    .param p2, "itemCount"    # I
    .param p3, "folderIcon"    # Landroid/view/View;

    .prologue
    .line 1465
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/launcher3/allapps/controller/AppsController;->replaceFolderWithFinalItem(Lcom/android/launcher3/common/base/item/ItemInfo;ILandroid/view/View;Z)V

    .line 1466
    return-void
.end method

.method public replaceFolderWithFinalItem(Lcom/android/launcher3/common/base/item/ItemInfo;ILandroid/view/View;Z)V
    .locals 18
    .param p1, "info"    # Lcom/android/launcher3/common/base/item/ItemInfo;
    .param p2, "itemCount"    # I
    .param p3, "folderIcon"    # Landroid/view/View;
    .param p4, "refresh"    # Z

    .prologue
    .line 1554
    move-object/from16 v0, p1

    instance-of v2, v0, Lcom/android/launcher3/folder/FolderInfo;

    if-nez v2, :cond_1

    .line 1617
    .end local p3    # "folderIcon":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .restart local p3    # "folderIcon":Landroid/view/View;
    :cond_1
    move-object/from16 v16, p1

    .line 1558
    check-cast v16, Lcom/android/launcher3/folder/FolderInfo;

    .line 1559
    .local v16, "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-object/from16 v0, v16

    iget-wide v6, v0, Lcom/android/launcher3/folder/FolderInfo;->screenId:J

    long-to-int v5, v6

    invoke-virtual {v2, v5}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v3

    .line 1561
    .local v3, "cellLayout":Lcom/android/launcher3/common/base/view/CellLayout;
    const/4 v15, 0x0

    .line 1562
    .local v15, "child":Landroid/view/View;
    const/4 v4, 0x0

    .line 1564
    .local v4, "finalItem":Lcom/android/launcher3/common/base/item/IconInfo;
    const/4 v2, 0x1

    move/from16 v0, p2

    if-gt v0, v2, :cond_3

    .line 1566
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/controller/AppsController;->deleteItemFromDb(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 1567
    if-eqz v3, :cond_2

    .line 1569
    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Lcom/android/launcher3/common/base/view/CellLayout;->removeView(Landroid/view/View;)V

    .line 1571
    :cond_2
    move-object/from16 v0, p3

    instance-of v2, v0, Lcom/android/launcher3/common/drag/DropTarget;

    if-eqz v2, :cond_3

    .line 1572
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    check-cast p3, Lcom/android/launcher3/common/drag/DropTarget;

    .end local p3    # "folderIcon":Landroid/view/View;
    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/android/launcher3/common/drag/DragManager;->removeDropTarget(Lcom/android/launcher3/common/drag/DropTarget;)V

    .line 1577
    :cond_3
    const/4 v2, 0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_4

    if-eqz v16, :cond_4

    .line 1578
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "finalItem":Lcom/android/launcher3/common/base/item/IconInfo;
    check-cast v4, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 1579
    .restart local v4    # "finalItem":Lcom/android/launcher3/common/base/item/IconInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsFocusListener:Lcom/android/launcher3/allapps/controller/AppsFocusListener;

    move-object/from16 v6, p0

    invoke-static/range {v2 .. v7}, Lcom/android/launcher3/allapps/AppsUtils;->createAppIcon(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/android/launcher3/common/base/item/IconInfo;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;Lcom/android/launcher3/allapps/controller/AppsFocusListener;)Landroid/view/View;

    move-result-object v15

    .line 1580
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/allapps/controller/AppsController;->isAlphabeticalMode()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1581
    move-object/from16 v0, v16

    iget-wide v8, v0, Lcom/android/launcher3/folder/FolderInfo;->container:J

    const-wide/16 v10, -0x1

    const/4 v12, -0x1

    const/4 v13, -0x1

    const/4 v14, -0x1

    move-object/from16 v6, p0

    move-object v7, v4

    invoke-virtual/range {v6 .. v14}, Lcom/android/launcher3/allapps/controller/AppsController;->addOrMoveItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJIII)V

    .line 1582
    move-object/from16 v0, v16

    iget-wide v6, v0, Lcom/android/launcher3/folder/FolderInfo;->screenId:J

    iput-wide v6, v4, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    .line 1583
    move-object/from16 v0, v16

    iget v2, v0, Lcom/android/launcher3/folder/FolderInfo;->cellX:I

    iput v2, v4, Lcom/android/launcher3/common/base/item/IconInfo;->cellX:I

    .line 1584
    move-object/from16 v0, v16

    iget v2, v0, Lcom/android/launcher3/folder/FolderInfo;->cellY:I

    iput v2, v4, Lcom/android/launcher3/common/base/item/IconInfo;->cellY:I

    .line 1585
    move-object/from16 v0, v16

    iget v2, v0, Lcom/android/launcher3/folder/FolderInfo;->rank:I

    iput v2, v4, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    .line 1592
    :cond_4
    :goto_1
    if-nez p2, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/allapps/controller/AppsController;->isAlphabeticalMode()Z

    move-result v2

    if-nez v2, :cond_5

    .line 1593
    move-object/from16 v0, v16

    iget v8, v0, Lcom/android/launcher3/folder/FolderInfo;->rank:I

    .line 1594
    .local v8, "startPos":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-object/from16 v0, v16

    iget-wide v6, v0, Lcom/android/launcher3/folder/FolderInfo;->screenId:J

    long-to-int v5, v6

    invoke-virtual {v2, v5}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getItemCountPageAt(I)I

    move-result v9

    .line 1595
    .local v9, "endPos":I
    const/4 v10, 0x1

    .line 1596
    .local v10, "direction":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getDragController()Lcom/android/launcher3/allapps/controller/AppsDragController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/controller/AppsDragController;->getReorderController()Lcom/android/launcher3/allapps/controller/AppsReorderController;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    long-to-int v11, v12

    invoke-virtual/range {v5 .. v11}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->realTimeReorder(IFIIII)V

    .line 1599
    .end local v8    # "startPos":I
    .end local v9    # "endPos":I
    .end local v10    # "direction":I
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/allapps/controller/AppsController;->isAlphabeticalMode()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1600
    if-eqz p4, :cond_0

    .line 1601
    new-instance v17, Landroid/os/Handler;

    invoke-direct/range {v17 .. v17}, Landroid/os/Handler;-><init>()V

    .line 1602
    .local v17, "mHandler":Landroid/os/Handler;
    new-instance v2, Lcom/android/launcher3/allapps/controller/AppsController$14;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/launcher3/allapps/controller/AppsController$14;-><init>(Lcom/android/launcher3/allapps/controller/AppsController;)V

    const-wide/16 v6, 0xc8

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 1587
    .end local v17    # "mHandler":Landroid/os/Handler;
    :cond_6
    move-object/from16 v0, v16

    iget-wide v8, v0, Lcom/android/launcher3/folder/FolderInfo;->container:J

    move-object/from16 v0, v16

    iget-wide v10, v0, Lcom/android/launcher3/folder/FolderInfo;->screenId:J

    move-object/from16 v0, v16

    iget v12, v0, Lcom/android/launcher3/folder/FolderInfo;->cellX:I

    move-object/from16 v0, v16

    iget v13, v0, Lcom/android/launcher3/folder/FolderInfo;->cellY:I

    move-object/from16 v0, v16

    iget v14, v0, Lcom/android/launcher3/folder/FolderInfo;->rank:I

    move-object/from16 v6, p0

    move-object v7, v4

    invoke-virtual/range {v6 .. v14}, Lcom/android/launcher3/allapps/controller/AppsController;->addOrMoveItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJIII)V

    goto :goto_1

    .line 1612
    :cond_7
    if-eqz v15, :cond_8

    if-eqz v4, :cond_8

    .line 1613
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v4}, Lcom/android/launcher3/allapps/controller/AppsController;->addItem(Landroid/view/View;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 1615
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/allapps/controller/AppsController;->updateDirtyItems()V

    goto/16 :goto_0
.end method

.method public repositionBy(Lcom/android/launcher3/common/stage/StageEntry;)V
    .locals 5
    .param p1, "entry"    # Lcom/android/launcher3/common/stage/StageEntry;

    .prologue
    const/4 v4, 0x0

    .line 2679
    iget v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mState:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 2680
    invoke-direct {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->repositionByTypeUpPages()V

    .line 2692
    :cond_0
    :goto_0
    return-void

    .line 2681
    :cond_1
    iget v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mState:I

    if-nez v2, :cond_3

    .line 2682
    const-string v2, "KEY_REPOSITION_BY"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/android/launcher3/common/stage/StageEntry;->getExtras(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2683
    .local v1, "repostionBy":I
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 2684
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->applyOrCancelTideUpPages()V

    goto :goto_0

    .line 2685
    :cond_2
    if-nez v1, :cond_0

    .line 2686
    invoke-direct {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->applySetViewType()V

    goto :goto_0

    .line 2688
    .end local v1    # "repostionBy":I
    :cond_3
    iget v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mState:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    .line 2689
    const-string v2, "KEY_CHANGE_GRID_SIZE"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/android/launcher3/common/stage/StageEntry;->getExtras(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    move-object v0, v2

    check-cast v0, [I

    .line 2690
    .local v0, "gridXY":[I
    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/controller/AppsController;->repositionByGrid([I)V

    goto :goto_0
.end method

.method public searchSettingCheck()V
    .locals 4

    .prologue
    .line 2256
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2257
    .local v1, "pref":Landroid/content/SharedPreferences;
    const-string v2, "search_recommend"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 2259
    .local v0, "checked":Z
    invoke-static {v0}, Lcom/android/launcher3/LauncherFeature;->setSupportGalaxyAppsSearch(Z)V

    .line 2260
    return-void
.end method

.method public sendGSIMLog(Lcom/android/launcher3/common/base/item/IconInfo;)V
    .locals 7
    .param p1, "info"    # Lcom/android/launcher3/common/base/item/IconInfo;

    .prologue
    .line 841
    if-eqz p1, :cond_0

    .line 842
    invoke-virtual {p1}, Lcom/android/launcher3/common/base/item/IconInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 843
    .local v0, "cn":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    .line 844
    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v1

    const-string v2, "APIS"

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 847
    .end local v0    # "cn":Landroid/content/ComponentName;
    :cond_0
    return-void
.end method

.method public setAlphabeticList()V
    .locals 0

    .prologue
    .line 2263
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->rearrangePagesItems()V

    .line 2264
    return-void
.end method

.method setApplyTidyUpPage(Z)V
    .locals 0
    .param p1, "apply"    # Z

    .prologue
    .line 208
    iput-boolean p1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mApplyTideUpPage:Z

    .line 209
    return-void
.end method

.method public setApps(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1789
    .local p1, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsSearchView:Lcom/android/launcher3/allapps/view/AppsSearchContainerView;

    if-eqz v0, :cond_0

    .line 1790
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsSearchView:Lcom/android/launcher3/allapps/view/AppsSearchContainerView;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->setApps(Ljava/util/List;)V

    .line 1792
    :cond_0
    return-void
.end method

.method public setDataWithOutStageChange(Lcom/android/launcher3/common/stage/StageEntry;)V
    .locals 2
    .param p1, "data"    # Lcom/android/launcher3/common/stage/StageEntry;

    .prologue
    .line 2839
    if-eqz p1, :cond_0

    .line 2840
    invoke-virtual {p1}, Lcom/android/launcher3/common/stage/StageEntry;->getInternalStateTo()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/allapps/controller/AppsController;->changeState(IZ)Z

    .line 2842
    :cond_0
    return-void
.end method

.method public setOrganizeAppsAlertEnable(Z)V
    .locals 2
    .param p1, "set"    # Z

    .prologue
    .line 2669
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2670
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "AppsController.OrganizeAppsAlert"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2671
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2672
    return-void
.end method

.method public setPagedViewVisibility(Z)Z
    .locals 3
    .param p1, "show"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v0, 0x0

    .line 582
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPageIndicatorView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 583
    if-eqz p1, :cond_1

    .line 584
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->setVisibility(I)V

    .line 585
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPageIndicatorView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 590
    :goto_0
    const/4 v0, 0x1

    .line 592
    :cond_0
    return v0

    .line 587
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->setVisibility(I)V

    .line 588
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPageIndicatorView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setViewType(Lcom/android/launcher3/allapps/controller/AppsController$ViewType;)V
    .locals 10
    .param p1, "viewType"    # Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    .prologue
    const v7, 0x7f080182

    const v6, 0x7f0800f1

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 708
    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mViewType:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    if-ne v3, p1, :cond_0

    .line 739
    :goto_0
    return-void

    .line 711
    :cond_0
    const-string v3, "Launcher.AppsController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setViewType. old: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mViewType:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", new: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    iput-object p1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mViewType:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    .line 715
    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v3, v8}, Lcom/android/launcher3/allapps/view/AppsPagedView;->setCurrentPage(I)V

    .line 716
    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCurrentPage()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v3

    if-nez v3, :cond_1

    .line 717
    const-string v3, "Launcher.AppsController"

    const-string v4, "There are no items that should be moved to position by normalizer"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 720
    :cond_1
    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 721
    .local v2, "res":Landroid/content/res/Resources;
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v3

    const v4, 0x7f08019c

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mViewType:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    .line 722
    invoke-virtual {v5}, Lcom/android/launcher3/allapps/controller/AppsController$ViewType;->name()Ljava/lang/String;

    move-result-object v5

    .line 721
    invoke-virtual {v3, v4, v5}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mViewType:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    sget-object v4, Lcom/android/launcher3/allapps/controller/AppsController$ViewType;->CUSTOM_GRID:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    invoke-virtual {v3, v4}, Lcom/android/launcher3/allapps/controller/AppsController$ViewType;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-nez v3, :cond_3

    .line 724
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v3

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 725
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, 0x1

    .line 724
    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    .line 732
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 734
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 735
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "AppsController.ViewType"

    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mViewType:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/controller/AppsController$ViewType;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 736
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 738
    invoke-virtual {p0, v8, v9, v9}, Lcom/android/launcher3/allapps/controller/AppsController;->changeState(IZZ)Z

    goto/16 :goto_0

    .line 726
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    :cond_3
    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mViewType:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    sget-object v4, Lcom/android/launcher3/allapps/controller/AppsController$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    invoke-virtual {v3, v4}, Lcom/android/launcher3/allapps/controller/AppsController$ViewType;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-nez v3, :cond_2

    .line 727
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v3

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 728
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, 0x2

    .line 727
    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_1
.end method

.method public setup()V
    .locals 5

    .prologue
    .line 213
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getLauncherModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v1

    .line 214
    .local v1, "model":Lcom/android/launcher3/LauncherModel;
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    .line 215
    .local v0, "app":Lcom/android/launcher3/LauncherAppState;
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDragMgr()Lcom/android/launcher3/common/drag/DragManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    .line 216
    invoke-virtual {v1}, Lcom/android/launcher3/LauncherModel;->getAppsLoader()Lcom/android/launcher3/allapps/model/AppsLoader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/model/AppsLoader;->getUpdater()Lcom/android/launcher3/common/model/DataUpdater;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/model/FavoritesUpdater;

    iput-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    .line 218
    new-instance v2, Lcom/android/launcher3/allapps/controller/AppsViewBinder;

    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/common/model/IconCache;

    move-result-object v4

    invoke-direct {v2, v3, p0, v1, v4}, Lcom/android/launcher3/allapps/controller/AppsViewBinder;-><init>(Landroid/content/Context;Lcom/android/launcher3/allapps/controller/AppsController;Lcom/android/launcher3/LauncherModel;Lcom/android/launcher3/common/model/IconCache;)V

    iput-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsViewBinder:Lcom/android/launcher3/allapps/controller/AppsViewBinder;

    .line 220
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getTrayManager()Lcom/android/launcher3/common/tray/TrayManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    .line 221
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    if-eqz v2, :cond_0

    .line 222
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    invoke-virtual {v2, p0}, Lcom/android/launcher3/common/tray/TrayManager;->addTrayEventCallbacks(Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;)V

    .line 225
    :cond_0
    new-instance v2, Lcom/android/launcher3/allapps/controller/AppsFocusListener;

    invoke-direct {v2}, Lcom/android/launcher3/allapps/controller/AppsFocusListener;-><init>()V

    iput-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsFocusListener:Lcom/android/launcher3/allapps/controller/AppsFocusListener;

    .line 227
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFolderLock()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 228
    invoke-static {}, Lcom/android/launcher3/folder/folderlock/FolderLock;->getInstance()Lcom/android/launcher3/folder/folderlock/FolderLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    .line 229
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    invoke-virtual {v2, p0}, Lcom/android/launcher3/folder/folderlock/FolderLock;->addFolderLockActionCallback(Lcom/android/launcher3/folder/folderlock/FolderLock$FolderLockActionCallback;)V

    .line 232
    :cond_1
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/launcher3/LauncherModel;->registerOnLauncherBindingItemsCompletedListener(Lcom/android/launcher3/LauncherModel$OnLauncherBindingItemsCompletedListener;)V

    .line 233
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/launcher3/LauncherModel;->registerOnBadgeBindingCompletedLisnter(Lcom/android/launcher3/LauncherModel$OnBadgeBindingCompletedLisnter;)V

    .line 234
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/launcher3/LauncherModel;->registerOnLiveIconUpdateListener(Lcom/android/launcher3/LauncherModel$OnRefreshLiveIconListener;)V

    .line 235
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v2

    new-instance v3, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;

    invoke-direct {v3, p0}, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;-><init>(Lcom/android/launcher3/allapps/controller/AppsController;)V

    invoke-virtual {v2, v3}, Lcom/android/launcher3/proxy/LauncherProxy;->setAppsProxyCallbacks(Lcom/android/launcher3/proxy/AppsProxyCallbacks;)V

    .line 236
    return-void
.end method

.method public showMoveToHomePanel(Z)V
    .locals 2
    .param p1, "showPanel"    # Z

    .prologue
    .line 1795
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    if-eqz v0, :cond_0

    .line 1796
    if-eqz p1, :cond_1

    .line 1797
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsContainer:Lcom/android/launcher3/allapps/view/AppsContainer;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/view/AppsContainer;->getHeight()I

    move-result v1

    invoke-virtual {v0, p0, v1}, Lcom/android/launcher3/common/tray/TrayManager;->pullTrayForDrag(Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;I)V

    .line 1802
    :cond_0
    :goto_0
    return-void

    .line 1799
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsContainer:Lcom/android/launcher3/allapps/view/AppsContainer;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/view/AppsContainer;->getHeight()I

    move-result v1

    invoke-virtual {v0, p0, v1}, Lcom/android/launcher3/common/tray/TrayManager;->releaseTrayForDrag(Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;I)V

    goto :goto_0
.end method

.method public startContactUs()V
    .locals 1

    .prologue
    .line 1993
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->startContactUsActivity(Landroid/content/Context;)V

    .line 1994
    return-void
.end method

.method public startDrag(Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;Z)V
    .locals 4
    .param p1, "cellInfo"    # Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;
    .param p2, "allowQuickOption"    # Z

    .prologue
    const/4 v2, 0x1

    .line 434
    iget-object v0, p1, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 437
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isInTouchMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 448
    :goto_0
    return-void

    .line 441
    :cond_0
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 443
    invoke-virtual {p0, v2, v2}, Lcom/android/launcher3/allapps/controller/AppsController;->changeState(IZ)Z

    .line 445
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getDragController()Lcom/android/launcher3/allapps/controller/AppsDragController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/launcher3/allapps/controller/AppsDragController;->startDrag(Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;)V

    .line 447
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getDragController()Lcom/android/launcher3/allapps/controller/AppsDragController;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, p2, v3}, Lcom/android/launcher3/Launcher;->beginDragShared(Landroid/view/View;Lcom/android/launcher3/common/drag/DragSource;ZZ)V

    goto :goto_0
.end method

.method public startGalaxyEssentials()V
    .locals 4

    .prologue
    .line 2002
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2003
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2004
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2005
    const-string v2, "com.sec.android.app.samsungapps"

    const-string v3, "com.sec.android.app.samsungapps.interim.essentials.InterimEssentialsActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2008
    :try_start_0
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/Launcher;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2012
    :goto_0
    return-void

    .line 2009
    :catch_0
    move-exception v0

    .line 2010
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "Launcher.AppsController"

    const-string v3, "Unable to start GalaxyEssentials"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startHomeSetting()V
    .locals 2

    .prologue
    .line 1997
    const-string v0, "Launcher.AppsController"

    const-string v1, "onClickHomeSettings"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1998
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->startHomeSettingActivity()V

    .line 1999
    return-void
.end method

.method public startTrayMove()V
    .locals 1

    .prologue
    .line 1693
    sget-object v0, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    invoke-virtual {v0}, Lcom/android/launcher3/util/Talk;->isAccessibilityEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1694
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsContainer:Lcom/android/launcher3/allapps/view/AppsContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/view/AppsContainer;->semClearAccessibilityFocus()V

    .line 1696
    :cond_0
    return-void
.end method

.method public switchInternalState(Lcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/Animator;
    .locals 11
    .param p1, "data"    # Lcom/android/launcher3/common/stage/StageEntry;

    .prologue
    const/16 v10, 0x8

    const/4 v8, 0x5

    const/4 v9, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 923
    invoke-virtual {p1}, Lcom/android/launcher3/common/stage/StageEntry;->getInternalStateFrom()I

    move-result v1

    .line 924
    .local v1, "fromState":I
    invoke-virtual {p1}, Lcom/android/launcher3/common/stage/StageEntry;->getInternalStateTo()I

    move-result v4

    iput v4, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mState:I

    .line 925
    .local v4, "toState":I
    invoke-virtual {p1}, Lcom/android/launcher3/common/stage/StageEntry;->getLayerViews()Ljava/util/HashMap;

    move-result-object v2

    .line 926
    .local v2, "layerViews":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/View;Ljava/lang/Integer;>;"
    iget-boolean v0, p1, Lcom/android/launcher3/common/stage/StageEntry;->enableAnimation:Z

    .line 927
    .local v0, "animated":Z
    const/4 v3, 0x0

    .line 928
    .local v3, "stateChangeAnim":Landroid/animation/Animator;
    if-nez v1, :cond_c

    .line 929
    if-ne v4, v6, :cond_5

    .line 930
    invoke-virtual {p0, v6}, Lcom/android/launcher3/allapps/controller/AppsController;->showMoveToHomePanel(Z)V

    .line 931
    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v5}, Lcom/android/launcher3/allapps/view/AppsPagedView;->addExtraEmptyScreenOnDrag()V

    .line 932
    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsAnimation:Lcom/android/launcher3/allapps/AppsTransitionAnimation;

    invoke-virtual {v5, v0, v2, v6, v7}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->getDragAnimation(ZLjava/util/HashMap;ZZ)Landroid/animation/AnimatorSet;

    move-result-object v3

    .line 933
    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v5, v7}, Lcom/android/launcher3/allapps/view/AppsPagedView;->setCrosshairsVisibilityChilds(I)V

    .line 1032
    :cond_0
    :goto_0
    if-nez v4, :cond_1

    .line 1033
    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLoggingRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v5}, Lcom/android/launcher3/common/stage/StageEntry;->addOnCompleteRunnableCallBack(Ljava/lang/Runnable;)V

    .line 1035
    :cond_1
    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v5, v6}, Lcom/android/launcher3/allapps/view/AppsPagedView;->updateAccessibilityFlags(Z)V

    .line 1036
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v5

    if-ne v5, p0, :cond_4

    .line 1037
    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v5

    iget v8, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mState:I

    if-eq v8, v6, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->isSelectState()Z

    move-result v8

    if-eqz v8, :cond_3

    :cond_2
    move v7, v6

    :cond_3
    invoke-static {v5, v7}, Lcom/android/launcher3/Utilities;->hideStatusBar(Landroid/view/Window;Z)V

    .line 1040
    :cond_4
    return-object v3

    .line 934
    :cond_5
    const/4 v5, 0x3

    if-ne v4, v5, :cond_7

    .line 935
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportAppsSearch()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 936
    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsSearchView:Lcom/android/launcher3/allapps/view/AppsSearchContainerView;

    if-eqz v5, :cond_6

    .line 937
    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsSearchView:Lcom/android/launcher3/allapps/view/AppsSearchContainerView;

    invoke-virtual {v5}, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->bringToFront()V

    .line 938
    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsSearchView:Lcom/android/launcher3/allapps/view/AppsSearchContainerView;

    invoke-virtual {v5}, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->getContentView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 939
    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsSearchView:Lcom/android/launcher3/allapps/view/AppsSearchContainerView;

    invoke-virtual {v5}, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->getRecentAppListSize()I

    move-result v5

    if-eqz v5, :cond_6

    .line 940
    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsSearchView:Lcom/android/launcher3/allapps/view/AppsSearchContainerView;

    invoke-virtual {v5, v6}, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->showHistoryTitle(Z)V

    .line 943
    :cond_6
    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsAnimation:Lcom/android/launcher3/allapps/AppsTransitionAnimation;

    invoke-virtual {v5, v0, v2, v6}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->getSearchAnimation(ZLjava/util/HashMap;Z)Landroid/animation/AnimatorSet;

    move-result-object v3

    goto :goto_0

    .line 945
    :cond_7
    if-ne v4, v9, :cond_8

    .line 946
    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mExitDragStateHandler:Landroid/os/Handler;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 947
    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v5, v6}, Lcom/android/launcher3/allapps/view/AppsPagedView;->updateCheckBox(Z)V

    .line 948
    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsAnimation:Lcom/android/launcher3/allapps/AppsTransitionAnimation;

    invoke-virtual {v5, v0, v2, v6}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->getSelectAnimation(ZLjava/util/HashMap;Z)Landroid/animation/AnimatorSet;

    move-result-object v3

    .line 949
    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v5, v7}, Lcom/android/launcher3/allapps/view/AppsPagedView;->setCrosshairsVisibilityChilds(I)V

    goto :goto_0

    .line 950
    :cond_8
    const/4 v5, 0x4

    if-ne v4, v5, :cond_9

    .line 951
    const-string v5, "KEY_REPOSITION_BY"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p1, v5, v8}, Lcom/android/launcher3/common/stage/StageEntry;->putExtras(Ljava/lang/String;Ljava/lang/Object;)V

    .line 952
    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsAnimation:Lcom/android/launcher3/allapps/AppsTransitionAnimation;

    invoke-virtual {v5, v0, v2, v6, p1}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->getTidyUpAnimation(ZLjava/util/HashMap;ZLcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/AnimatorSet;

    move-result-object v3

    .line 954
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/LauncherAppState;->getTopViewChangedMessageHandler()Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;

    move-result-object v5

    const/16 v8, 0xa

    .line 955
    invoke-virtual {v5, v8}, Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;->sendMessage(I)V

    goto/16 :goto_0

    .line 956
    :cond_9
    if-nez v4, :cond_a

    .line 957
    const-string v5, "KEY_REPOSITION_BY"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p1, v5, v8}, Lcom/android/launcher3/common/stage/StageEntry;->putExtras(Ljava/lang/String;Ljava/lang/Object;)V

    .line 958
    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsAnimation:Lcom/android/launcher3/allapps/AppsTransitionAnimation;

    invoke-virtual {v5, v0, v2, p1}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->getChangeViewTypeAnimation(ZLjava/util/HashMap;Lcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/AnimatorSet;

    move-result-object v3

    goto/16 :goto_0

    .line 959
    :cond_a
    if-ne v4, v8, :cond_0

    .line 960
    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsScreenGridPanel:Lcom/android/launcher3/allapps/AppsScreenGridPanel;

    if-eqz v5, :cond_b

    .line 961
    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsScreenGridPanel:Lcom/android/launcher3/allapps/AppsScreenGridPanel;

    invoke-virtual {v5}, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->updateButtonStatus()V

    .line 963
    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsScreenGridPanel:Lcom/android/launcher3/allapps/AppsScreenGridPanel;

    invoke-virtual {v5}, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->getScreenGridTopConatiner()Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_b

    .line 964
    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsScreenGridPanel:Lcom/android/launcher3/allapps/AppsScreenGridPanel;

    invoke-virtual {v5}, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->getScreenGridTopConatiner()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 967
    :cond_b
    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsAnimation:Lcom/android/launcher3/allapps/AppsTransitionAnimation;

    invoke-virtual {v5, v0, v2, p1, v6}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->getScreenGridEnterExitAnimation(ZLjava/util/HashMap;Lcom/android/launcher3/common/stage/StageEntry;Z)Landroid/animation/AnimatorSet;

    move-result-object v3

    goto/16 :goto_0

    .line 970
    :cond_c
    if-ne v1, v6, :cond_10

    .line 971
    if-nez v4, :cond_f

    .line 972
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->isSelectState()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 973
    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5, v7, v0}, Lcom/android/launcher3/Launcher;->onChangeSelectMode(ZZ)V

    .line 974
    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v5, v7}, Lcom/android/launcher3/allapps/view/AppsPagedView;->updateCheckBox(Z)V

    .line 976
    :cond_d
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->getDragController()Lcom/android/launcher3/allapps/controller/AppsDragController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/allapps/controller/AppsDragController;->getReorderController()Lcom/android/launcher3/allapps/controller/AppsReorderController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->getExistOverLastItemMoved()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 977
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->getDragController()Lcom/android/launcher3/allapps/controller/AppsDragController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/allapps/controller/AppsDragController;->getReorderController()Lcom/android/launcher3/allapps/controller/AppsReorderController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->undoOverLastItems()V

    .line 979
    :cond_e
    invoke-virtual {p0, v7}, Lcom/android/launcher3/allapps/controller/AppsController;->showMoveToHomePanel(Z)V

    .line 980
    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsAnimation:Lcom/android/launcher3/allapps/AppsTransitionAnimation;

    invoke-virtual {v5, v0, v2, v7, v7}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->getDragAnimation(ZLjava/util/HashMap;ZZ)Landroid/animation/AnimatorSet;

    move-result-object v3

    .line 981
    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v5, v10}, Lcom/android/launcher3/allapps/view/AppsPagedView;->setCrosshairsVisibilityChilds(I)V

    goto/16 :goto_0

    .line 982
    :cond_f
    if-ne v4, v9, :cond_0

    .line 983
    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mExitDragStateHandler:Landroid/os/Handler;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 984
    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v5, v6}, Lcom/android/launcher3/allapps/view/AppsPagedView;->updateCheckBox(Z)V

    .line 985
    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsAnimation:Lcom/android/launcher3/allapps/AppsTransitionAnimation;

    invoke-virtual {v5, v0, v2, v6}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->getSelectAnimation(ZLjava/util/HashMap;Z)Landroid/animation/AnimatorSet;

    move-result-object v3

    .line 986
    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v5, v7}, Lcom/android/launcher3/allapps/view/AppsPagedView;->setCrosshairsVisibilityChilds(I)V

    goto/16 :goto_0

    .line 988
    :cond_10
    const/4 v5, 0x3

    if-ne v1, v5, :cond_13

    .line 989
    if-nez v4, :cond_0

    .line 990
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportAppsSearch()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 991
    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsSearchView:Lcom/android/launcher3/allapps/view/AppsSearchContainerView;

    if-eqz v5, :cond_12

    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsSearchView:Lcom/android/launcher3/allapps/view/AppsSearchContainerView;

    invoke-virtual {v5}, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->getSearchBarController()Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController;

    move-result-object v5

    if-eqz v5, :cond_12

    .line 992
    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsSearchView:Lcom/android/launcher3/allapps/view/AppsSearchContainerView;

    invoke-virtual {v5}, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->getSearchBarController()Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController;->getSearchBarEditView()Landroid/widget/SearchView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_11

    .line 993
    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsSearchView:Lcom/android/launcher3/allapps/view/AppsSearchContainerView;

    invoke-virtual {v5}, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->getSearchBarController()Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController;->getSearchBarEditView()Landroid/widget/SearchView;

    move-result-object v5

    const-string v8, ""

    invoke-virtual {v5, v8, v6}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 995
    :cond_11
    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsSearchView:Lcom/android/launcher3/allapps/view/AppsSearchContainerView;

    invoke-virtual {v5}, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->getSearchBarController()Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController;->getSearchBarEditView()Landroid/widget/SearchView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/SearchView;->clearFocus()V

    .line 996
    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsSearchView:Lcom/android/launcher3/allapps/view/AppsSearchContainerView;

    invoke-virtual {v5, v7}, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->showHistoryTitle(Z)V

    .line 997
    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsSearchView:Lcom/android/launcher3/allapps/view/AppsSearchContainerView;

    invoke-virtual {v5}, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->getContentView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    .line 999
    :cond_12
    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsAnimation:Lcom/android/launcher3/allapps/AppsTransitionAnimation;

    invoke-virtual {v5, v0, v2, v7}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->getSearchAnimation(ZLjava/util/HashMap;Z)Landroid/animation/AnimatorSet;

    move-result-object v3

    goto/16 :goto_0

    .line 1002
    :cond_13
    if-ne v1, v9, :cond_15

    .line 1003
    if-nez v4, :cond_14

    .line 1004
    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsAnimation:Lcom/android/launcher3/allapps/AppsTransitionAnimation;

    invoke-virtual {v5, v0, v2, v7}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->getSelectAnimation(ZLjava/util/HashMap;Z)Landroid/animation/AnimatorSet;

    move-result-object v3

    .line 1005
    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v5, v10}, Lcom/android/launcher3/allapps/view/AppsPagedView;->setCrosshairsVisibilityChilds(I)V

    .line 1006
    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5, v7, v0}, Lcom/android/launcher3/Launcher;->onChangeSelectMode(ZZ)V

    .line 1007
    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v5, v7}, Lcom/android/launcher3/allapps/view/AppsPagedView;->updateCheckBox(Z)V

    goto/16 :goto_0

    .line 1008
    :cond_14
    if-ne v4, v6, :cond_0

    .line 1009
    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v5, v7}, Lcom/android/launcher3/allapps/view/AppsPagedView;->updateCheckBox(Z)V

    .line 1010
    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v5}, Lcom/android/launcher3/allapps/view/AppsPagedView;->addExtraEmptyScreenOnDrag()V

    .line 1011
    invoke-virtual {p0, v6}, Lcom/android/launcher3/allapps/controller/AppsController;->showMoveToHomePanel(Z)V

    .line 1012
    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsAnimation:Lcom/android/launcher3/allapps/AppsTransitionAnimation;

    invoke-virtual {v5, v0, v2, v6, v6}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->getDragAnimation(ZLjava/util/HashMap;ZZ)Landroid/animation/AnimatorSet;

    move-result-object v3

    goto/16 :goto_0

    .line 1014
    :cond_15
    const/4 v5, 0x4

    if-ne v1, v5, :cond_17

    .line 1015
    if-nez v4, :cond_0

    .line 1016
    const-string v5, "KEY_REPOSITION_BY"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p1, v5, v8}, Lcom/android/launcher3/common/stage/StageEntry;->putExtras(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1017
    iget-object v8, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsAnimation:Lcom/android/launcher3/allapps/AppsTransitionAnimation;

    iget-boolean v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mApplyTideUpPage:Z

    if-nez v5, :cond_16

    move v5, v6

    :goto_1
    invoke-virtual {v8, v5, v2, v7, p1}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->getTidyUpAnimation(ZLjava/util/HashMap;ZLcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/AnimatorSet;

    move-result-object v3

    .line 1019
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/LauncherAppState;->getTopViewChangedMessageHandler()Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;

    move-result-object v5

    .line 1020
    invoke-virtual {v5, v9}, Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;->sendMessage(I)V

    goto/16 :goto_0

    :cond_16
    move v5, v7

    .line 1017
    goto :goto_1

    .line 1022
    :cond_17
    if-ne v1, v8, :cond_0

    .line 1023
    if-nez v4, :cond_18

    .line 1024
    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsAnimation:Lcom/android/launcher3/allapps/AppsTransitionAnimation;

    invoke-virtual {v5, v0, v2, p1, v7}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->getScreenGridEnterExitAnimation(ZLjava/util/HashMap;Lcom/android/launcher3/common/stage/StageEntry;Z)Landroid/animation/AnimatorSet;

    move-result-object v3

    goto/16 :goto_0

    .line 1026
    :cond_18
    if-ne v4, v8, :cond_0

    .line 1027
    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsAnimation:Lcom/android/launcher3/allapps/AppsTransitionAnimation;

    invoke-virtual {v5, v0, v2, p1}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->getChangeGridAnimation(ZLjava/util/HashMap;Lcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/AnimatorSet;

    move-result-object v3

    goto/16 :goto_0
.end method

.method public updateApps(Ljava/util/ArrayList;)V
    .locals 6
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
    .line 1116
    .local p1, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1117
    .local v3, "updates":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1119
    .local v1, "folderIconsToRefresh":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/folder/view/FolderIconView;>;"
    const/4 v4, 0x1

    new-instance v5, Lcom/android/launcher3/allapps/controller/AppsController$8;

    invoke-direct {v5, p0, v3, v1}, Lcom/android/launcher3/allapps/controller/AppsController$8;-><init>(Lcom/android/launcher3/allapps/controller/AppsController;Ljava/util/HashSet;Ljava/util/ArrayList;)V

    invoke-direct {p0, v4, v5}, Lcom/android/launcher3/allapps/controller/AppsController;->mapOverItems(ZLcom/android/launcher3/common/base/item/ItemOperator;)V

    .line 1141
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 1142
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/folder/view/FolderIconView;

    .line 1143
    .local v0, "folderIconView":Lcom/android/launcher3/folder/view/FolderIconView;
    if-eqz v0, :cond_0

    .line 1144
    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderIconView;->refreshFolderIcon()V

    .line 1141
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1147
    .end local v0    # "folderIconView":Lcom/android/launcher3/folder/view/FolderIconView;
    :cond_1
    return-void
.end method

.method public updateBadgeItems(Ljava/util/ArrayList;)V
    .locals 3
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
    .line 1080
    .local p1, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1081
    .local v0, "updates":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    const/4 v1, 0x1

    new-instance v2, Lcom/android/launcher3/allapps/controller/AppsController$6;

    invoke-direct {v2, p0, v0}, Lcom/android/launcher3/allapps/controller/AppsController$6;-><init>(Lcom/android/launcher3/allapps/controller/AppsController;Ljava/util/HashSet;)V

    invoke-direct {p0, v1, v2}, Lcom/android/launcher3/allapps/controller/AppsController;->mapOverItems(ZLcom/android/launcher3/common/base/item/ItemOperator;)V

    .line 1100
    return-void
.end method

.method public updateCountBadge(Landroid/view/View;Z)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "animate"    # Z

    .prologue
    .line 2813
    instance-of v1, p1, Lcom/android/launcher3/common/view/IconView;

    if-eqz v1, :cond_0

    move-object v1, p1

    .line 2814
    check-cast v1, Lcom/android/launcher3/common/view/IconView;

    invoke-virtual {v1}, Lcom/android/launcher3/common/view/IconView;->getCountBadgeView()Landroid/widget/TextView;

    move-result-object v0

    .line 2815
    .local v0, "countBadge":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 2816
    check-cast p1, Lcom/android/launcher3/common/view/IconView;

    .end local p1    # "view":Landroid/view/View;
    const/4 v1, 0x0

    invoke-virtual {p1, v1, p2}, Lcom/android/launcher3/common/view/IconView;->updateCountBadge(ZZ)V

    .line 2819
    .end local v0    # "countBadge":Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method public updateDirtyItems()V
    .locals 1

    .prologue
    .line 1828
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getLauncherModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->getAppsLoader()Lcom/android/launcher3/allapps/model/AppsLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/model/AppsLoader;->updateDirtyItems()V

    .line 1829
    return-void
.end method

.method public updateGridInfo()V
    .locals 3

    .prologue
    .line 2900
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsScreenGridPanel:Lcom/android/launcher3/allapps/AppsScreenGridPanel;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsScreenGridPanel:Lcom/android/launcher3/allapps/AppsScreenGridPanel;

    .line 2902
    .local v0, "gridPanel":Lcom/android/launcher3/allapps/AppsScreenGridPanel;
    :goto_0
    if-eqz v0, :cond_0

    .line 2903
    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->updateGridBtnLayout()V

    .line 2905
    :cond_0
    return-void

    .line 2900
    .end local v0    # "gridPanel":Lcom/android/launcher3/allapps/AppsScreenGridPanel;
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    const v2, 0x7f0f0018

    .line 2901
    invoke-virtual {v1, v2}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/allapps/AppsScreenGridPanel;

    move-object v0, v1

    goto :goto_0
.end method

.method public updateItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 2
    .param p1, "info"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 1361
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1362
    .local v0, "values":Landroid/content/ContentValues;
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1, v1, v0}, Lcom/android/launcher3/common/base/item/ItemInfo;->onAddToDatabase(Landroid/content/Context;Landroid/content/ContentValues;)V

    .line 1363
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    invoke-virtual {v1, v0, p1}, Lcom/android/launcher3/common/model/FavoritesUpdater;->updateItem(Landroid/content/ContentValues;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 1364
    return-void
.end method

.method public updateRestoreItems(Ljava/util/HashSet;)V
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
    .line 1103
    .local p1, "updates":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    const/4 v0, 0x1

    new-instance v1, Lcom/android/launcher3/allapps/controller/AppsController$7;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/allapps/controller/AppsController$7;-><init>(Lcom/android/launcher3/allapps/controller/AppsController;Ljava/util/HashSet;)V

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/allapps/controller/AppsController;->mapOverItems(ZLcom/android/launcher3/common/base/item/ItemOperator;)V

    .line 1113
    return-void
.end method
