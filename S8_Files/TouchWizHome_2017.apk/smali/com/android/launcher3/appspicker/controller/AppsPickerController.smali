.class public Lcom/android/launcher3/appspicker/controller/AppsPickerController;
.super Lcom/android/launcher3/common/stage/Stage;
.source "AppsPickerController.java"

# interfaces
.implements Lcom/android/launcher3/LauncherModel$OnAllAppItemListLoadCompletedListener;


# static fields
.field public static final KEY_ITEMS_TO_HIDE:Ljava/lang/String; = "KEY_ITEMS_TO_HIDE"

.field public static final KEY_ITEMS_TO_SHOW:Ljava/lang/String; = "KEY_ITEMS_TO_SHOW"

.field public static final KEY_PICKER_MODE:Ljava/lang/String; = "KEY_PICKER_MODE"

.field public static final KEY_SELECTED_ITEMS:Ljava/lang/String; = "KEY_SELECTED_ITEMS"

.field public static final MODE_FOLDER_ADD_APPS:I = 0x0

.field public static final MODE_HIDE_APPS:I = 0x1

.field public static final REQUEST_CODE_VOICE_RECOGNITION:I = 0x259

.field private static final TAG:Ljava/lang/String; = "AppsPickerController"


# instance fields
.field private mAllApps:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

.field private mAppsToHideForAllApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mBackupBackgroundAlpha:F

.field private mBackupBlurAmount:F

.field private mBgDrakenAlpha:F

.field private mContainerView:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

.field private mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

.field private mFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

.field private mFromStageMode:I

.field private mNeedRefresh:Z

.field private mPickerMode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/launcher3/common/stage/Stage;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/appspicker/controller/AppsPickerController;)Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/appspicker/controller/AppsPickerController;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mContainerView:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher3/appspicker/controller/AppsPickerController;)Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/appspicker/controller/AppsPickerController;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mAllApps:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher3/appspicker/controller/AppsPickerController;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/appspicker/controller/AppsPickerController;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->addResultApps(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/launcher3/appspicker/controller/AppsPickerController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/appspicker/controller/AppsPickerController;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mAppsToHideForAllApps:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/launcher3/appspicker/controller/AppsPickerController;ZLcom/android/launcher3/common/stage/StageEntry;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/appspicker/controller/AppsPickerController;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Lcom/android/launcher3/common/stage/StageEntry;

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->setBackgroundAndStatusbar(ZLcom/android/launcher3/common/stage/StageEntry;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/launcher3/appspicker/controller/AppsPickerController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/appspicker/controller/AppsPickerController;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->detachViewFromDragLayer()V

    return-void
.end method

.method private addResultApps(Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "appList":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    const/4 v12, 0x5

    const/4 v6, 0x0

    .line 594
    move-object v0, p1

    .line 595
    .local v0, "addItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 596
    .local v7, "cloneItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    new-instance v8, Lcom/android/launcher3/common/stage/StageEntry;

    invoke-direct {v8}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    .line 597
    .local v8, "data":Lcom/android/launcher3/common/stage/StageEntry;
    iget-object v1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v1

    iget-wide v2, v1, Lcom/android/launcher3/folder/FolderInfo;->container:J

    const-wide/16 v4, -0x66

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 598
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 599
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v10, v1, :cond_0

    .line 600
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v1}, Lcom/android/launcher3/common/base/item/IconInfo;->makeCloneInfo()Lcom/android/launcher3/common/base/item/IconInfo;

    move-result-object v11

    .line 601
    .local v11, "info":Lcom/android/launcher3/common/base/item/IconInfo;
    invoke-static {}, Lcom/android/launcher3/common/model/FavoritesProvider;->getInstance()Lcom/android/launcher3/common/model/FavoritesProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/common/model/FavoritesProvider;->generateNewItemId()J

    move-result-wide v2

    iput-wide v2, v11, Lcom/android/launcher3/common/base/item/IconInfo;->id:J

    .line 602
    iget-object v1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v1

    iget-wide v2, v1, Lcom/android/launcher3/folder/FolderInfo;->id:J

    iput-wide v2, v11, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    .line 603
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 599
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 606
    .end local v11    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_0
    const-string v1, "KEY_SELECTED_ITEMS"

    invoke-virtual {v8, v1, v7}, Lcom/android/launcher3/common/stage/StageEntry;->putExtras(Ljava/lang/String;Ljava/lang/Object;)V

    .line 610
    .end local v10    # "i":I
    :goto_1
    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v1

    const-string v2, "FAMA"

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, -0x1

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 612
    iget v1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mFromStageMode:I

    if-ne v1, v12, :cond_2

    const/4 v9, 0x1

    .line 613
    .local v9, "finishStage":Z
    :goto_2
    if-eqz v9, :cond_3

    .line 614
    iget-object v1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v1

    invoke-virtual {v1, p0, v8}, Lcom/android/launcher3/common/stage/StageManager;->finishStage(Lcom/android/launcher3/common/stage/Stage;Lcom/android/launcher3/common/stage/StageEntry;)V

    .line 619
    :goto_3
    return-void

    .line 608
    .end local v9    # "finishStage":Z
    :cond_1
    const-string v1, "KEY_SELECTED_ITEMS"

    invoke-virtual {v8, v1, p1}, Lcom/android/launcher3/common/stage/StageEntry;->putExtras(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    move v9, v6

    .line 612
    goto :goto_2

    .line 616
    .restart local v9    # "finishStage":Z
    :cond_3
    const-string v1, "KEY_FOLDER_ICON_VIEW"

    iget-object v2, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v8, v1, v2}, Lcom/android/launcher3/common/stage/StageEntry;->putExtras(Ljava/lang/String;Ljava/lang/Object;)V

    .line 617
    iget-object v1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v1

    invoke-virtual {v1, v12, v8}, Lcom/android/launcher3/common/stage/StageManager;->switchStage(ILcom/android/launcher3/common/stage/StageEntry;)V

    goto :goto_3
.end method

.method private attachViewToDragLayer()V
    .locals 2

    .prologue
    .line 467
    iget-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mContainerView:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 468
    iget-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    iget-object v1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mContainerView:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/view/DragLayer;->addView(Landroid/view/View;)V

    .line 470
    :cond_0
    return-void
.end method

.method private detachViewFromDragLayer()V
    .locals 2

    .prologue
    .line 473
    iget-object v1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mContainerView:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    if-nez v1, :cond_1

    .line 480
    :cond_0
    :goto_0
    return-void

    .line 476
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mContainerView:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    invoke-virtual {v1}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/view/DragLayer;

    .line 477
    .local v0, "parent":Lcom/android/launcher3/common/view/DragLayer;
    if-eqz v0, :cond_0

    .line 478
    iget-object v1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mContainerView:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/view/DragLayer;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private isTop()Z
    .locals 2

    .prologue
    .line 508
    iget-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getTopStageMode()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyAppsListChanged()V
    .locals 1

    .prologue
    .line 512
    invoke-direct {p0}, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->isTop()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 513
    iget-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mContainerView:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    if-eqz v0, :cond_0

    .line 514
    iget-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mContainerView:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->notifyAppsListChanged()V

    .line 515
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mNeedRefresh:Z

    .line 518
    :cond_0
    return-void
.end method

.method private setBackgroundAndStatusbar(ZLcom/android/launcher3/common/stage/StageEntry;)V
    .locals 12
    .param p1, "isEntered"    # Z
    .param p2, "data"    # Lcom/android/launcher3/common/stage/StageEntry;

    .prologue
    .line 425
    const/4 v2, 0x0

    .line 426
    .local v2, "duration":I
    const/4 v5, 0x0

    .line 427
    .local v5, "startAlpha":F
    const/4 v3, 0x0

    .line 428
    .local v3, "finalAlpha":F
    const/4 v1, 0x0

    .line 429
    .local v1, "doDimAnimationToBG":Z
    iget-object v7, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    invoke-virtual {v7}, Lcom/android/launcher3/common/view/DragLayer;->getBackgroundImageAlpha()F

    move-result v7

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-lez v7, :cond_3

    const/4 v4, 0x1

    .line 431
    .local v4, "isBackgroundImageUsing":Z
    :goto_0
    if-eqz p1, :cond_4

    .line 432
    iget-object v7, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/android/launcher3/Utilities;->hideStatusBar(Landroid/view/Window;Z)V

    .line 433
    invoke-static {}, Lcom/android/launcher3/util/BlurUtils;->getBlurAmount()F

    move-result v7

    iput v7, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mBackupBlurAmount:F

    .line 434
    iget v7, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mBackupBlurAmount:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-nez v7, :cond_0

    .line 435
    const/4 v7, 0x1

    iget-object v8, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v8}, Lcom/android/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/launcher3/util/BlurUtils;->blurByWindowManager(ZLandroid/view/Window;)V

    .line 437
    :cond_0
    iget-object v7, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    invoke-virtual {v7}, Lcom/android/launcher3/common/view/DragLayer;->getBackgroundAlpha()F

    move-result v7

    iput v7, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mBackupBackgroundAlpha:F

    .line 438
    if-nez v4, :cond_1

    .line 439
    iget v5, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mBackupBackgroundAlpha:F

    .line 440
    iget v3, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mBgDrakenAlpha:F

    .line 441
    iget-object v7, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b001f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 442
    const/4 v1, 0x1

    .line 460
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 461
    iget-object v7, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    const-string v8, "backgroundAlpha"

    const/4 v9, 0x2

    new-array v9, v9, [F

    const/4 v10, 0x0

    aput v5, v9, v10

    const/4 v10, 0x1

    aput v3, v9, v10

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 462
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    int-to-long v8, v2

    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v7}, Landroid/animation/ObjectAnimator;->start()V

    .line 464
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    :cond_2
    return-void

    .line 429
    .end local v4    # "isBackgroundImageUsing":Z
    :cond_3
    const/4 v4, 0x0

    goto :goto_0

    .line 445
    .restart local v4    # "isBackgroundImageUsing":Z
    :cond_4
    iget v7, p2, Lcom/android/launcher3/common/stage/StageEntry;->toStage:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_5

    const/4 v6, 0x1

    .line 446
    .local v6, "toHomeView":Z
    :goto_2
    if-eqz v6, :cond_7

    .line 447
    iget-object v7, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/android/launcher3/Utilities;->hideStatusBar(Landroid/view/Window;Z)V

    .line 448
    iget v7, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mBackupBlurAmount:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-lez v7, :cond_6

    const/4 v7, 0x1

    :goto_3
    iget-object v8, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v8}, Lcom/android/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v8

    iget v9, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mBackupBlurAmount:F

    const-wide/16 v10, -0x1

    invoke-static {v7, v8, v9, v10, v11}, Lcom/android/launcher3/util/BlurUtils;->blurByWindowManager(ZLandroid/view/Window;FJ)V

    .line 449
    if-nez v4, :cond_1

    .line 450
    iget-object v7, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    invoke-virtual {v7}, Lcom/android/launcher3/common/view/DragLayer;->getBackgroundAlpha()F

    move-result v5

    .line 451
    iget v3, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mBackupBackgroundAlpha:F

    .line 452
    iget-object v7, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b0022

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 453
    const/4 v1, 0x1

    goto :goto_1

    .line 445
    .end local v6    # "toHomeView":Z
    :cond_5
    const/4 v6, 0x0

    goto :goto_2

    .line 448
    .restart local v6    # "toHomeView":Z
    :cond_6
    const/4 v7, 0x0

    goto :goto_3

    .line 456
    :cond_7
    iget-object v7, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/android/launcher3/Utilities;->hideStatusBar(Landroid/view/Window;Z)V

    goto :goto_1
.end method

.method private setHiddenApps(Ljava/util/ArrayList;)V
    .locals 9
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
    .line 521
    .local p1, "appsToHide":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    iget-object v5, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mAppsToHideForAllApps:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 523
    if-eqz p1, :cond_8

    .line 524
    iget-object v5, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mAllApps:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    invoke-virtual {v5}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getApps()Ljava/util/List;

    move-result-object v1

    .line 525
    .local v1, "allAppsList":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 526
    .local v4, "itemInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    invoke-virtual {v4}, Lcom/android/launcher3/common/base/item/IconInfo;->isHiddenByUser()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 527
    new-instance v2, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-direct {v2}, Lcom/android/launcher3/common/base/item/IconInfo;-><init>()V

    .line 528
    .local v2, "appInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    invoke-virtual {v4}, Lcom/android/launcher3/common/base/item/IconInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v6

    iput-object v6, v2, Lcom/android/launcher3/common/base/item/IconInfo;->componentName:Landroid/content/ComponentName;

    .line 529
    iget-object v6, v4, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    iput-object v6, v2, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    .line 530
    iget-object v6, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mAppsToHideForAllApps:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 534
    .end local v2    # "appInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v4    # "itemInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 535
    .restart local v4    # "itemInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    iget v6, v4, Lcom/android/launcher3/common/base/item/IconInfo;->itemType:I

    if-nez v6, :cond_2

    .line 536
    const/4 v3, 0x0

    .line 537
    .local v3, "isExist":Z
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_5

    .line 538
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 539
    .local v0, "allAppsInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    invoke-virtual {v4}, Lcom/android/launcher3/common/base/item/IconInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/item/IconInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 540
    const/4 v3, 0x1

    .line 548
    .end local v0    # "allAppsInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_4
    :goto_2
    if-eqz v3, :cond_2

    .line 549
    const/4 v2, 0x0

    .line 550
    .restart local v2    # "appInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    iget v6, v4, Lcom/android/launcher3/common/base/item/IconInfo;->hidden:I

    if-nez v6, :cond_6

    instance-of v6, v4, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v6, :cond_6

    .line 551
    new-instance v2, Lcom/android/launcher3/common/base/item/IconInfo;

    .end local v2    # "appInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    invoke-direct {v2}, Lcom/android/launcher3/common/base/item/IconInfo;-><init>()V

    .line 552
    .restart local v2    # "appInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    invoke-virtual {v4}, Lcom/android/launcher3/common/base/item/IconInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v6

    iput-object v6, v2, Lcom/android/launcher3/common/base/item/IconInfo;->componentName:Landroid/content/ComponentName;

    .line 553
    iget-object v6, v4, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    iput-object v6, v2, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    .line 558
    :goto_3
    if-eqz v2, :cond_2

    .line 559
    iget-object v6, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mAppsToHideForAllApps:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 545
    .end local v2    # "appInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_5
    const/4 v3, 0x1

    goto :goto_2

    .line 555
    .restart local v2    # "appInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_6
    const-string v6, "AppsPickerController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setHiddenApps : already hidden status or invalid info "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 564
    .end local v2    # "appInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v3    # "isExist":Z
    .end local v4    # "itemInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_7
    const-string v5, "AppsPickerController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setHiddenApps : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mAppsToHideForAllApps:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " items will be filtered"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    .end local v1    # "allAppsList":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    :cond_8
    iget-object v5, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mAllApps:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    iget-object v6, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mAppsToHideForAllApps:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->setHiddenApps(Ljava/util/List;)V

    .line 567
    return-void
.end method


# virtual methods
.method public addApps(Ljava/util/ArrayList;)V
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
    .line 483
    .local p1, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    iget-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mAllApps:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->addApps(Ljava/util/List;)V

    .line 484
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mNeedRefresh:Z

    .line 485
    invoke-direct {p0}, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->notifyAppsListChanged()V

    .line 486
    return-void
.end method

.method public getContainerView()Landroid/view/View;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mContainerView:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    return-object v0
.end method

.method public getPickerMode()I
    .locals 1

    .prologue
    .line 421
    iget v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mPickerMode:I

    return v0
.end method

.method public initStageView()V
    .locals 3

    .prologue
    .line 175
    const-string v0, "AppsPickerController"

    const-string v1, "initStageView()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    .line 179
    iget-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mContainerView:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    if-nez v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    iput-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mContainerView:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mContainerView:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    iget-object v1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mAllApps:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    invoke-virtual {v0, p0, v1}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->bindController(Lcom/android/launcher3/appspicker/controller/AppsPickerController;Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;)V

    .line 183
    iget-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mContainerView:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    iget-object v1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mContainerView:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    invoke-virtual {v1}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->newAllAppsSearchBarController()Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->setSearchBarController(Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController;)V

    .line 184
    iget-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mContainerView:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/appspicker/controller/AppsPickerController$2;

    invoke-direct {v1, p0}, Lcom/android/launcher3/appspicker/controller/AppsPickerController$2;-><init>(Lcom/android/launcher3/appspicker/controller/AppsPickerController;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 203
    invoke-super {p0}, Lcom/android/launcher3/common/stage/Stage;->initStageView()V

    .line 204
    return-void
.end method

.method protected isRestorable()Z
    .locals 1

    .prologue
    .line 400
    const/4 v0, 0x0

    return v0
.end method

.method public isWhiteBg()Z
    .locals 2

    .prologue
    .line 622
    invoke-static {}, Lcom/android/launcher3/util/WhiteBgManager;->isWhiteBg()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    invoke-virtual {v0}, Lcom/android/launcher3/common/view/DragLayer;->getBackgroundImageAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 572
    const/4 v1, 0x0

    .line 573
    .local v1, "query":Ljava/lang/String;
    const/16 v2, 0x259

    if-ne p1, v2, :cond_0

    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 574
    const-string v2, "android.speech.extra.RESULTS"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 576
    .local v0, "matches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 577
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "query":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 580
    .end local v0    # "matches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v1    # "query":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mContainerView:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->onVoiceSearch(Ljava/lang/String;)V

    .line 581
    return-void
.end method

.method public onAllAppItemListLoadCompleted(Ljava/util/ArrayList;)V
    .locals 0
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
    .line 590
    .local p1, "appItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    invoke-virtual {p0, p1}, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->setApps(Ljava/util/ArrayList;)V

    .line 591
    return-void
.end method

.method protected onBackPressed()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x5

    const/4 v1, 0x1

    .line 405
    iget v2, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mFromStageMode:I

    if-eq v2, v4, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v2, :cond_0

    .line 406
    new-instance v0, Lcom/android/launcher3/common/stage/StageEntry;

    invoke-direct {v0}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    .line 407
    .local v0, "data":Lcom/android/launcher3/common/stage/StageEntry;
    const-string v2, "KEY_FOLDER_ICON_VIEW"

    iget-object v3, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/common/stage/StageEntry;->putExtras(Ljava/lang/String;Ljava/lang/Object;)V

    .line 408
    const-string v2, "KEY_SELECTED_ITEMS"

    invoke-virtual {v0, v2, v5}, Lcom/android/launcher3/common/stage/StageEntry;->putExtras(Ljava/lang/String;Ljava/lang/Object;)V

    .line 409
    iget-object v2, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v2

    invoke-virtual {v2, v4, v0}, Lcom/android/launcher3/common/stage/StageManager;->switchStage(ILcom/android/launcher3/common/stage/StageEntry;)V

    .line 417
    .end local v0    # "data":Lcom/android/launcher3/common/stage/StageEntry;
    :goto_0
    return v1

    .line 412
    :cond_0
    iget v2, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mPickerMode:I

    if-ne v2, v1, :cond_1

    .line 413
    iget-object v2, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->startHomeSettingActivity()V

    .line 414
    iget-object v2, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v2

    const/4 v3, 0x6

    invoke-virtual {v2, v3, v5}, Lcom/android/launcher3/common/stage/StageManager;->finishStage(ILcom/android/launcher3/common/stage/StageEntry;)V

    goto :goto_0

    .line 417
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onChangeColorForBg(Z)V
    .locals 1
    .param p1, "whiteBg"    # Z

    .prologue
    .line 351
    iget-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mContainerView:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mContainerView:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->changeColorAndBackground()V

    .line 354
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)Z
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v7, 0x7f080101

    const/4 v4, 0x1

    .line 358
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    const v6, 0x7f0f0024

    if-ne v5, v6, :cond_4

    .line 359
    const-string v5, "AppsPickerController"

    const-string v6, "onClick : add_button"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iget v5, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mPickerMode:I

    if-ne v5, v4, :cond_2

    .line 362
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 363
    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f08017d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 364
    invoke-virtual {v7}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080119

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 362
    invoke-virtual {v5, v6, v7}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 366
    .local v1, "itemsToHide":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 367
    .local v2, "itemsToShow":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    iget-object v5, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mContainerView:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    invoke-virtual {v5, v1, v2}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->getItemsForHideApps(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 369
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eq v5, v6, :cond_0

    .line 370
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mContainerView:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    invoke-virtual {v6}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->getSelectedItems()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/launcher3/util/logging/SALogging;->insertHideAppsLog(Ljava/util/ArrayList;)V

    .line 373
    :cond_0
    new-instance v0, Lcom/android/launcher3/common/stage/StageEntry;

    invoke-direct {v0}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    .line 374
    .local v0, "data":Lcom/android/launcher3/common/stage/StageEntry;
    const-string v5, "KEY_ITEMS_TO_HIDE"

    invoke-virtual {v0, v5, v1}, Lcom/android/launcher3/common/stage/StageEntry;->putExtras(Ljava/lang/String;Ljava/lang/Object;)V

    .line 375
    const-string v5, "KEY_ITEMS_TO_SHOW"

    invoke-virtual {v0, v5, v2}, Lcom/android/launcher3/common/stage/StageEntry;->putExtras(Ljava/lang/String;Ljava/lang/Object;)V

    .line 376
    iget-object v5, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v5

    const/4 v6, 0x6

    invoke-virtual {v5, v6, v0}, Lcom/android/launcher3/common/stage/StageManager;->finishStage(ILcom/android/launcher3/common/stage/StageEntry;)V

    .line 378
    iget-object v5, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->startHomeSettingActivity()V

    .line 395
    .end local v0    # "data":Lcom/android/launcher3/common/stage/StageEntry;
    .end local v1    # "itemsToHide":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .end local v2    # "itemsToShow":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    :cond_1
    :goto_0
    return v4

    .line 381
    :cond_2
    iget-object v5, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mContainerView:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    invoke-virtual {v5}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->getSelectedItems()Ljava/util/ArrayList;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->addResultApps(Ljava/util/List;)V

    .line 382
    iget-object v5, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 383
    .local v3, "res":Landroid/content/res/Resources;
    iget-object v5, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getSecondTopStageMode()I

    move-result v5

    if-ne v5, v4, :cond_3

    .line 384
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v5

    const v6, 0x7f080184

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 385
    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mContainerView:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    .line 386
    invoke-virtual {v8}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->getSelectedItems()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    int-to-long v8, v8

    .line 384
    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    .line 387
    :cond_3
    iget-object v5, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getSecondTopStageMode()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    .line 388
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v5

    const v6, 0x7f080178

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 389
    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mContainerView:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    .line 390
    invoke-virtual {v8}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->getSelectedItems()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    int-to-long v8, v8

    .line 388
    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    .line 395
    .end local v3    # "res":Landroid/content/res/Resources;
    :cond_4
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public onDestroyActivity()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 341
    iput-object v1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    .line 342
    iget-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mContainerView:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mContainerView:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->reset()V

    .line 345
    :cond_0
    iput-object v1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mContainerView:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    .line 346
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->unregisterOnAllAppItemListLoadCompletedListener()V

    .line 347
    return-void
.end method

.method protected onStageEnter(Lcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/Animator;
    .locals 14
    .param p1, "data"    # Lcom/android/launcher3/common/stage/StageEntry;

    .prologue
    const-wide/16 v4, -0x1

    const/4 v3, 0x0

    const/4 v9, 0x1

    const/4 v6, 0x0

    .line 208
    const-string v1, "AppsPickerController"

    const-string v2, "onStageEnter()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget v1, p1, Lcom/android/launcher3/common/stage/StageEntry;->fromStage:I

    iput v1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mFromStageMode:I

    .line 211
    const-string v1, "KEY_PICKER_MODE"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/android/launcher3/common/stage/StageEntry;->getExtras(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mPickerMode:I

    .line 212
    const-string v1, "KEY_FOLDER_ICON_VIEW"

    invoke-virtual {p1, v1}, Lcom/android/launcher3/common/stage/StageEntry;->getExtras(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/folder/view/FolderIconView;

    iput-object v1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    .line 213
    iget-object v1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 214
    iget-object v1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->setHiddenApps(Ljava/util/ArrayList;)V

    .line 219
    :goto_0
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherModel;->loadAllAppItemList()V

    .line 221
    invoke-direct {p0, v9, p1}, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->setBackgroundAndStatusbar(ZLcom/android/launcher3/common/stage/StageEntry;)V

    .line 223
    iget-boolean v1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mNeedRefresh:Z

    if-eqz v1, :cond_0

    .line 224
    invoke-direct {p0}, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->notifyAppsListChanged()V

    .line 227
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mContainerView:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    iget v2, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mPickerMode:I

    invoke-virtual {v1, v2}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->setPickerMode(I)V

    .line 228
    iget-object v1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mContainerView:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    invoke-virtual {v1}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->bindAdapter()V

    .line 229
    iget-object v1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mContainerView:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->setVisibility(I)V

    .line 231
    invoke-direct {p0}, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->attachViewToDragLayer()V

    .line 233
    const/4 v7, 0x0

    .line 234
    .local v7, "enterAnimator":Landroid/animation/Animator;
    iget-boolean v0, p1, Lcom/android/launcher3/common/stage/StageEntry;->enableAnimation:Z

    .line 235
    .local v0, "animated":Z
    if-eqz v0, :cond_4

    .line 236
    iget-object v1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mLauncher:Lcom/android/launcher3/Launcher;

    const v2, 0x7f050004

    invoke-static {v1, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v7

    .line 237
    iget-object v1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mContainerView:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    invoke-virtual {v7, v1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 238
    const/16 v1, 0x1e

    invoke-static {v1}, Lcom/android/launcher3/util/ViInterpolator;->getInterploator(I)Landroid/view/animation/PathInterpolator;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 239
    new-instance v1, Lcom/android/launcher3/appspicker/controller/AppsPickerController$3;

    invoke-direct {v1, p0}, Lcom/android/launcher3/appspicker/controller/AppsPickerController$3;-><init>(Lcom/android/launcher3/appspicker/controller/AppsPickerController;)V

    invoke-virtual {v7, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 257
    :goto_1
    const/4 v8, 0x0

    .line 259
    .local v8, "isParentHome":Z
    iget-object v1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v1, :cond_1

    .line 260
    iget-object v1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v1

    iget-wide v10, v1, Lcom/android/launcher3/folder/FolderInfo;->container:J

    const-wide/16 v12, -0x64

    cmp-long v1, v10, v12

    if-nez v1, :cond_1

    .line 261
    const/4 v8, 0x1

    .line 264
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mContainerView:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    invoke-virtual {v1, v8}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->setParentMode(Z)V

    .line 265
    iget-object v1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mContainerView:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    invoke-virtual {v1, v9}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->setAppsPickerViewTop(Z)V

    .line 267
    iget v1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mPickerMode:I

    if-ne v1, v9, :cond_5

    .line 268
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getTopViewChangedMessageHandler()Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;

    move-result-object v1

    const/16 v2, 0x8

    .line 269
    invoke-virtual {v1, v2}, Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;->sendMessage(I)V

    .line 287
    :cond_2
    :goto_2
    return-object v7

    .line 216
    .end local v0    # "animated":Z
    .end local v7    # "enterAnimator":Landroid/animation/Animator;
    .end local v8    # "isParentHome":Z
    :cond_3
    invoke-direct {p0, v3}, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->setHiddenApps(Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 253
    .restart local v0    # "animated":Z
    .restart local v7    # "enterAnimator":Landroid/animation/Animator;
    :cond_4
    iget-object v1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mContainerView:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    invoke-virtual {v1, v6}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->setVisibility(I)V

    .line 254
    iget-object v1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mContainerView:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->setAlpha(F)V

    goto :goto_1

    .line 270
    .restart local v8    # "isParentHome":Z
    :cond_5
    iget v1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mPickerMode:I

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v1, :cond_2

    .line 271
    iget-object v1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v1

    iget-wide v10, v1, Lcom/android/launcher3/folder/FolderInfo;->container:J

    const-wide/16 v12, -0x66

    cmp-long v1, v10, v12

    if-eqz v1, :cond_6

    .line 273
    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v1

    const-string v2, "FAAH"

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 278
    :goto_3
    if-eqz v8, :cond_7

    .line 279
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getTopViewChangedMessageHandler()Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;

    move-result-object v1

    const/16 v2, 0xd

    .line 280
    invoke-virtual {v1, v2}, Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;->sendMessage(I)V

    goto :goto_2

    .line 276
    :cond_6
    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v1

    const-string v2, "FAAA"

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    goto :goto_3

    .line 282
    :cond_7
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getTopViewChangedMessageHandler()Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;

    move-result-object v1

    const/16 v2, 0xe

    .line 283
    invoke-virtual {v1, v2}, Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;->sendMessage(I)V

    goto :goto_2
.end method

.method protected onStageExit(Lcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/Animator;
    .locals 5
    .param p1, "data"    # Lcom/android/launcher3/common/stage/StageEntry;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 292
    const-string v3, "AppsPickerController"

    const-string v4, "onStageExit()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    const/4 v0, 0x0

    .line 295
    .local v0, "exitAnimator":Landroid/animation/Animator;
    iget v3, p1, Lcom/android/launcher3/common/stage/StageEntry;->fromStage:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_2

    iget v3, p1, Lcom/android/launcher3/common/stage/StageEntry;->toStage:I

    if-ne v3, v1, :cond_2

    .line 296
    .local v1, "pressedHomeKey":Z
    :goto_0
    iget v3, p1, Lcom/android/launcher3/common/stage/StageEntry;->stageCountOnFinishAllStage:I

    const/4 v4, 0x2

    if-gt v3, v4, :cond_0

    iget-boolean v3, p1, Lcom/android/launcher3/common/stage/StageEntry;->broughtToHome:Z

    if-nez v3, :cond_0

    if-eqz v1, :cond_3

    .line 297
    :cond_0
    iget-object v3, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mContainerView:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->setVisibility(I)V

    .line 298
    iget-object v3, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mContainerView:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    invoke-virtual {v3}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->reset()V

    .line 299
    iget-object v3, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mAppsToHideForAllApps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 300
    invoke-direct {p0, v2, p1}, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->setBackgroundAndStatusbar(ZLcom/android/launcher3/common/stage/StageEntry;)V

    .line 301
    invoke-direct {p0}, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->detachViewFromDragLayer()V

    .line 326
    :goto_1
    iget-object v3, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mContainerView:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    if-eqz v3, :cond_1

    .line 327
    iget-object v3, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mContainerView:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    invoke-virtual {v3, v2}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->setAppsPickerViewTop(Z)V

    .line 329
    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    .line 331
    return-object v0

    .end local v1    # "pressedHomeKey":Z
    :cond_2
    move v1, v2

    .line 295
    goto :goto_0

    .line 303
    .restart local v1    # "pressedHomeKey":Z
    :cond_3
    iget-object v3, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mLauncher:Lcom/android/launcher3/Launcher;

    const v4, 0x7f05000a

    invoke-static {v3, v4}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    .line 304
    iget-object v3, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mContainerView:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    invoke-virtual {v0, v3}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 305
    const/16 v3, 0x1e

    invoke-static {v3}, Lcom/android/launcher3/util/ViInterpolator;->getInterploator(I)Landroid/view/animation/PathInterpolator;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 306
    new-instance v3, Lcom/android/launcher3/appspicker/controller/AppsPickerController$4;

    invoke-direct {v3, p0, p1}, Lcom/android/launcher3/appspicker/controller/AppsPickerController$4;-><init>(Lcom/android/launcher3/appspicker/controller/AppsPickerController;Lcom/android/launcher3/common/stage/StageEntry;)V

    invoke-virtual {v0, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_1
.end method

.method public removeApps(Ljava/util/ArrayList;)V
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
    .line 502
    .local p1, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    iget-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mAllApps:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->removeApps(Ljava/util/List;)V

    .line 503
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mNeedRefresh:Z

    .line 504
    invoke-direct {p0}, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->notifyAppsListChanged()V

    .line 505
    return-void
.end method

.method public setApps(Ljava/util/ArrayList;)V
    .locals 2
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
    .line 489
    .local p1, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    iget-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mAllApps:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->setApps(Ljava/util/List;)V

    .line 490
    iget-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mAllApps:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    iget-object v1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mAppsToHideForAllApps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->setHiddenApps(Ljava/util/List;)V

    .line 491
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mNeedRefresh:Z

    .line 492
    invoke-direct {p0}, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->notifyAppsListChanged()V

    .line 493
    return-void
.end method

.method public setup()V
    .locals 2

    .prologue
    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mAppsToHideForAllApps:Ljava/util/ArrayList;

    .line 90
    new-instance v0, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    iget-object v1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v0, v1}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mAllApps:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    .line 91
    iget-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mBgDrakenAlpha:F

    .line 93
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/LauncherModel;->registerOnAllAppItemListLoadCompletedListener(Lcom/android/launcher3/LauncherModel$OnAllAppItemListLoadCompletedListener;)V

    .line 94
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/appspicker/controller/AppsPickerController$1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/appspicker/controller/AppsPickerController$1;-><init>(Lcom/android/launcher3/appspicker/controller/AppsPickerController;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/proxy/LauncherProxy;->setAppsPickerProxyCallbacks(Lcom/android/launcher3/proxy/AppsPickerProxyCallbacks;)V

    .line 171
    return-void
.end method

.method public supportStatusBar()Z
    .locals 1

    .prologue
    .line 585
    const/4 v0, 0x0

    return v0
.end method

.method public updateApps(Ljava/util/ArrayList;)V
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
    .line 496
    .local p1, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    iget-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mAllApps:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->updateApps(Ljava/util/List;)V

    .line 497
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mNeedRefresh:Z

    .line 498
    invoke-direct {p0}, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->notifyAppsListChanged()V

    .line 499
    return-void
.end method
