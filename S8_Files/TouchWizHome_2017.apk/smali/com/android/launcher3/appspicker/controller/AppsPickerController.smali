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

    .line 584
    move-object v0, p1

    .line 585
    .local v0, "addItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 586
    .local v7, "cloneItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    new-instance v8, Lcom/android/launcher3/common/stage/StageEntry;

    invoke-direct {v8}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    .line 587
    .local v8, "data":Lcom/android/launcher3/common/stage/StageEntry;
    iget-object v1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v1

    iget-wide v2, v1, Lcom/android/launcher3/folder/FolderInfo;->container:J

    const-wide/16 v4, -0x66

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 588
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 589
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v10, v1, :cond_0

    .line 590
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v1}, Lcom/android/launcher3/common/base/item/IconInfo;->makeCloneInfo()Lcom/android/launcher3/common/base/item/IconInfo;

    move-result-object v11

    .line 591
    .local v11, "info":Lcom/android/launcher3/common/base/item/IconInfo;
    invoke-static {}, Lcom/android/launcher3/common/model/FavoritesProvider;->getInstance()Lcom/android/launcher3/common/model/FavoritesProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/common/model/FavoritesProvider;->generateNewItemId()J

    move-result-wide v2

    iput-wide v2, v11, Lcom/android/launcher3/common/base/item/IconInfo;->id:J

    .line 592
    iget-object v1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v1

    iget-wide v2, v1, Lcom/android/launcher3/folder/FolderInfo;->id:J

    iput-wide v2, v11, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    .line 593
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 589
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 596
    .end local v11    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_0
    const-string v1, "KEY_SELECTED_ITEMS"

    invoke-virtual {v8, v1, v7}, Lcom/android/launcher3/common/stage/StageEntry;->putExtras(Ljava/lang/String;Ljava/lang/Object;)V

    .line 600
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

    .line 602
    iget v1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mFromStageMode:I

    if-ne v1, v12, :cond_2

    const/4 v9, 0x1

    .line 603
    .local v9, "finishStage":Z
    :goto_2
    if-eqz v9, :cond_3

    .line 604
    iget-object v1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v1

    invoke-virtual {v1, p0, v8}, Lcom/android/launcher3/common/stage/StageManager;->finishStage(Lcom/android/launcher3/common/stage/Stage;Lcom/android/launcher3/common/stage/StageEntry;)V

    .line 609
    :goto_3
    return-void

    .line 598
    .end local v9    # "finishStage":Z
    :cond_1
    const-string v1, "KEY_SELECTED_ITEMS"

    invoke-virtual {v8, v1, p1}, Lcom/android/launcher3/common/stage/StageEntry;->putExtras(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    move v9, v6

    .line 602
    goto :goto_2

    .line 606
    .restart local v9    # "finishStage":Z
    :cond_3
    const-string v1, "KEY_FOLDER_ICON_VIEW"

    iget-object v2, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v8, v1, v2}, Lcom/android/launcher3/common/stage/StageEntry;->putExtras(Ljava/lang/String;Ljava/lang/Object;)V

    .line 607
    iget-object v1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v1

    invoke-virtual {v1, v12, v8}, Lcom/android/launcher3/common/stage/StageManager;->switchStage(ILcom/android/launcher3/common/stage/StageEntry;)V

    goto :goto_3
.end method

.method private attachViewToDragLayer()V
    .locals 2

    .prologue
    .line 457
    iget-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mContainerView:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 458
    iget-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    iget-object v1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mContainerView:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/view/DragLayer;->addView(Landroid/view/View;)V

    .line 460
    :cond_0
    return-void
.end method

.method private detachViewFromDragLayer()V
    .locals 2

    .prologue
    .line 463
    iget-object v1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mContainerView:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    if-nez v1, :cond_1

    .line 470
    :cond_0
    :goto_0
    return-void

    .line 466
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mContainerView:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    invoke-virtual {v1}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/view/DragLayer;

    .line 467
    .local v0, "parent":Lcom/android/launcher3/common/view/DragLayer;
    if-eqz v0, :cond_0

    .line 468
    iget-object v1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mContainerView:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/view/DragLayer;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private isTop()Z
    .locals 2

    .prologue
    .line 498
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
    .line 502
    invoke-direct {p0}, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->isTop()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 503
    iget-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mContainerView:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    if-eqz v0, :cond_0

    .line 504
    iget-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mContainerView:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->notifyAppsListChanged()V

    .line 505
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mNeedRefresh:Z

    .line 508
    :cond_0
    return-void
.end method

.method private setBackgroundAndStatusbar(ZLcom/android/launcher3/common/stage/StageEntry;)V
    .locals 12
    .param p1, "isEntered"    # Z
    .param p2, "data"    # Lcom/android/launcher3/common/stage/StageEntry;

    .prologue
    .line 415
    const/4 v2, 0x0

    .line 416
    .local v2, "duration":I
    const/4 v5, 0x0

    .line 417
    .local v5, "startAlpha":F
    const/4 v3, 0x0

    .line 418
    .local v3, "finalAlpha":F
    const/4 v1, 0x0

    .line 419
    .local v1, "doDimAnimationToBG":Z
    iget-object v7, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    invoke-virtual {v7}, Lcom/android/launcher3/common/view/DragLayer;->getBackgroundImageAlpha()F

    move-result v7

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-lez v7, :cond_3

    const/4 v4, 0x1

    .line 421
    .local v4, "isBackgroundImageUsing":Z
    :goto_0
    if-eqz p1, :cond_4

    .line 422
    iget-object v7, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/android/launcher3/Utilities;->hideStatusBar(Landroid/view/Window;Z)V

    .line 423
    invoke-static {}, Lcom/android/launcher3/util/BlurUtils;->getBlurAmount()F

    move-result v7

    iput v7, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mBackupBlurAmount:F

    .line 424
    iget v7, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mBackupBlurAmount:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-nez v7, :cond_0

    .line 425
    const/4 v7, 0x1

    iget-object v8, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v8}, Lcom/android/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/launcher3/util/BlurUtils;->blurByWindowManager(ZLandroid/view/Window;)V

    .line 427
    :cond_0
    iget-object v7, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    invoke-virtual {v7}, Lcom/android/launcher3/common/view/DragLayer;->getBackgroundAlpha()F

    move-result v7

    iput v7, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mBackupBackgroundAlpha:F

    .line 428
    if-nez v4, :cond_1

    .line 429
    iget v5, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mBackupBackgroundAlpha:F

    .line 430
    iget v3, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mBgDrakenAlpha:F

    .line 431
    iget-object v7, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b001f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 432
    const/4 v1, 0x1

    .line 450
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 451
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

    .line 452
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    int-to-long v8, v2

    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v7}, Landroid/animation/ObjectAnimator;->start()V

    .line 454
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    :cond_2
    return-void

    .line 419
    .end local v4    # "isBackgroundImageUsing":Z
    :cond_3
    const/4 v4, 0x0

    goto :goto_0

    .line 435
    .restart local v4    # "isBackgroundImageUsing":Z
    :cond_4
    iget v7, p2, Lcom/android/launcher3/common/stage/StageEntry;->toStage:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_5

    const/4 v6, 0x1

    .line 436
    .local v6, "toHomeView":Z
    :goto_2
    if-eqz v6, :cond_7

    .line 437
    iget-object v7, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/android/launcher3/Utilities;->hideStatusBar(Landroid/view/Window;Z)V

    .line 438
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

    .line 439
    if-nez v4, :cond_1

    .line 440
    iget-object v7, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    invoke-virtual {v7}, Lcom/android/launcher3/common/view/DragLayer;->getBackgroundAlpha()F

    move-result v5

    .line 441
    iget v3, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mBackupBackgroundAlpha:F

    .line 442
    iget-object v7, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b0022

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 443
    const/4 v1, 0x1

    goto :goto_1

    .line 435
    .end local v6    # "toHomeView":Z
    :cond_5
    const/4 v6, 0x0

    goto :goto_2

    .line 438
    .restart local v6    # "toHomeView":Z
    :cond_6
    const/4 v7, 0x0

    goto :goto_3

    .line 446
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
    .line 511
    .local p1, "appsToHide":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    iget-object v5, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mAppsToHideForAllApps:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 513
    if-eqz p1, :cond_8

    .line 514
    iget-object v5, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mAllApps:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    invoke-virtual {v5}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getApps()Ljava/util/List;

    move-result-object v1

    .line 515
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

    .line 516
    .local v4, "itemInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    invoke-virtual {v4}, Lcom/android/launcher3/common/base/item/IconInfo;->isHiddenByUser()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 517
    new-instance v2, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-direct {v2}, Lcom/android/launcher3/common/base/item/IconInfo;-><init>()V

    .line 518
    .local v2, "appInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    invoke-virtual {v4}, Lcom/android/launcher3/common/base/item/IconInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v6

    iput-object v6, v2, Lcom/android/launcher3/common/base/item/IconInfo;->componentName:Landroid/content/ComponentName;

    .line 519
    iget-object v6, v4, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    iput-object v6, v2, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    .line 520
    iget-object v6, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mAppsToHideForAllApps:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 524
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

    .line 525
    .restart local v4    # "itemInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    iget v6, v4, Lcom/android/launcher3/common/base/item/IconInfo;->itemType:I

    if-nez v6, :cond_2

    .line 526
    const/4 v3, 0x0

    .line 527
    .local v3, "isExist":Z
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_5

    .line 528
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 529
    .local v0, "allAppsInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    invoke-virtual {v4}, Lcom/android/launcher3/common/base/item/IconInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/item/IconInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 530
    const/4 v3, 0x1

    .line 538
    .end local v0    # "allAppsInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_4
    :goto_2
    if-eqz v3, :cond_2

    .line 539
    const/4 v2, 0x0

    .line 540
    .restart local v2    # "appInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    iget v6, v4, Lcom/android/launcher3/common/base/item/IconInfo;->hidden:I

    if-nez v6, :cond_6

    instance-of v6, v4, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v6, :cond_6

    .line 541
    new-instance v2, Lcom/android/launcher3/common/base/item/IconInfo;

    .end local v2    # "appInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    invoke-direct {v2}, Lcom/android/launcher3/common/base/item/IconInfo;-><init>()V

    .line 542
    .restart local v2    # "appInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    invoke-virtual {v4}, Lcom/android/launcher3/common/base/item/IconInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v6

    iput-object v6, v2, Lcom/android/launcher3/common/base/item/IconInfo;->componentName:Landroid/content/ComponentName;

    .line 543
    iget-object v6, v4, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    iput-object v6, v2, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    .line 548
    :goto_3
    if-eqz v2, :cond_2

    .line 549
    iget-object v6, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mAppsToHideForAllApps:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 535
    .end local v2    # "appInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_5
    const/4 v3, 0x1

    goto :goto_2

    .line 545
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

    .line 554
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

    .line 556
    .end local v1    # "allAppsList":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    :cond_8
    iget-object v5, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mAllApps:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    iget-object v6, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mAppsToHideForAllApps:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->setHiddenApps(Ljava/util/List;)V

    .line 557
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
    .line 473
    .local p1, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    iget-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mAllApps:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->addApps(Ljava/util/List;)V

    .line 474
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mNeedRefresh:Z

    .line 475
    invoke-direct {p0}, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->notifyAppsListChanged()V

    .line 476
    return-void
.end method

.method public getContainerView()Landroid/view/View;
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mContainerView:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    return-object v0
.end method

.method public getPickerMode()I
    .locals 1

    .prologue
    .line 411
    iget v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mPickerMode:I

    return v0
.end method

.method public initStageView()V
    .locals 3

    .prologue
    .line 166
    const-string v0, "AppsPickerController"

    const-string v1, "initStageView()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    .line 170
    iget-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mContainerView:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    if-nez v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    iput-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mContainerView:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mContainerView:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    iget-object v1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mAllApps:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    invoke-virtual {v0, p0, v1}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->bindController(Lcom/android/launcher3/appspicker/controller/AppsPickerController;Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;)V

    .line 174
    iget-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mContainerView:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    iget-object v1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mContainerView:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    invoke-virtual {v1}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->newAllAppsSearchBarController()Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->setSearchBarController(Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController;)V

    .line 175
    iget-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mContainerView:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/appspicker/controller/AppsPickerController$2;

    invoke-direct {v1, p0}, Lcom/android/launcher3/appspicker/controller/AppsPickerController$2;-><init>(Lcom/android/launcher3/appspicker/controller/AppsPickerController;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 194
    invoke-super {p0}, Lcom/android/launcher3/common/stage/Stage;->initStageView()V

    .line 195
    return-void
.end method

.method protected isRestorable()Z
    .locals 1

    .prologue
    .line 390
    const/4 v0, 0x0

    return v0
.end method

.method public isWhiteBg()Z
    .locals 2

    .prologue
    .line 612
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
    .line 562
    const/4 v1, 0x0

    .line 563
    .local v1, "query":Ljava/lang/String;
    const/16 v2, 0x259

    if-ne p1, v2, :cond_0

    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 564
    const-string v2, "android.speech.extra.RESULTS"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 566
    .local v0, "matches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 567
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "query":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 570
    .end local v0    # "matches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v1    # "query":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mContainerView:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->onVoiceSearch(Ljava/lang/String;)V

    .line 571
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
    .line 580
    .local p1, "appItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    invoke-virtual {p0, p1}, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->setApps(Ljava/util/ArrayList;)V

    .line 581
    return-void
.end method

.method protected onBackPressed()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x5

    const/4 v1, 0x1

    .line 395
    iget v2, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mFromStageMode:I

    if-eq v2, v4, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v2, :cond_0

    .line 396
    new-instance v0, Lcom/android/launcher3/common/stage/StageEntry;

    invoke-direct {v0}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    .line 397
    .local v0, "data":Lcom/android/launcher3/common/stage/StageEntry;
    const-string v2, "KEY_FOLDER_ICON_VIEW"

    iget-object v3, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/common/stage/StageEntry;->putExtras(Ljava/lang/String;Ljava/lang/Object;)V

    .line 398
    const-string v2, "KEY_SELECTED_ITEMS"

    invoke-virtual {v0, v2, v5}, Lcom/android/launcher3/common/stage/StageEntry;->putExtras(Ljava/lang/String;Ljava/lang/Object;)V

    .line 399
    iget-object v2, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v2

    invoke-virtual {v2, v4, v0}, Lcom/android/launcher3/common/stage/StageManager;->switchStage(ILcom/android/launcher3/common/stage/StageEntry;)V

    .line 407
    .end local v0    # "data":Lcom/android/launcher3/common/stage/StageEntry;
    :goto_0
    return v1

    .line 402
    :cond_0
    iget v2, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mPickerMode:I

    if-ne v2, v1, :cond_1

    .line 403
    iget-object v2, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->startHomeSettingActivity()V

    .line 404
    iget-object v2, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v2

    const/4 v3, 0x6

    invoke-virtual {v2, v3, v5}, Lcom/android/launcher3/common/stage/StageManager;->finishStage(ILcom/android/launcher3/common/stage/StageEntry;)V

    goto :goto_0

    .line 407
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onChangeColorForBg(Z)V
    .locals 1
    .param p1, "whiteBg"    # Z

    .prologue
    .line 341
    iget-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mContainerView:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mContainerView:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->changeColorAndBackground()V

    .line 344
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)Z
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v7, 0x7f080101

    const/4 v4, 0x1

    .line 348
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    const v6, 0x7f0f0024

    if-ne v5, v6, :cond_4

    .line 349
    const-string v5, "AppsPickerController"

    const-string v6, "onClick : add_button"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    iget v5, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mPickerMode:I

    if-ne v5, v4, :cond_2

    .line 352
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 353
    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f08017d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 354
    invoke-virtual {v7}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080119

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 352
    invoke-virtual {v5, v6, v7}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 356
    .local v1, "itemsToHide":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 357
    .local v2, "itemsToShow":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    iget-object v5, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mContainerView:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    invoke-virtual {v5, v1, v2}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->getItemsForHideApps(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 359
    new-instance v0, Lcom/android/launcher3/common/stage/StageEntry;

    invoke-direct {v0}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    .line 360
    .local v0, "data":Lcom/android/launcher3/common/stage/StageEntry;
    const-string v5, "KEY_ITEMS_TO_HIDE"

    invoke-virtual {v0, v5, v1}, Lcom/android/launcher3/common/stage/StageEntry;->putExtras(Ljava/lang/String;Ljava/lang/Object;)V

    .line 361
    const-string v5, "KEY_ITEMS_TO_SHOW"

    invoke-virtual {v0, v5, v2}, Lcom/android/launcher3/common/stage/StageEntry;->putExtras(Ljava/lang/String;Ljava/lang/Object;)V

    .line 362
    iget-object v5, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v5

    const/4 v6, 0x6

    invoke-virtual {v5, v6, v0}, Lcom/android/launcher3/common/stage/StageManager;->finishStage(ILcom/android/launcher3/common/stage/StageEntry;)V

    .line 364
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eq v5, v6, :cond_0

    .line 365
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mContainerView:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    invoke-virtual {v6}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->getSelectedItems()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/launcher3/util/logging/SALogging;->insertHideAppsLog(Ljava/util/ArrayList;)V

    .line 368
    :cond_0
    iget-object v5, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->startHomeSettingActivity()V

    .line 385
    .end local v0    # "data":Lcom/android/launcher3/common/stage/StageEntry;
    .end local v1    # "itemsToHide":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .end local v2    # "itemsToShow":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    :cond_1
    :goto_0
    return v4

    .line 371
    :cond_2
    iget-object v5, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mContainerView:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    invoke-virtual {v5}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->getSelectedItems()Ljava/util/ArrayList;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->addResultApps(Ljava/util/List;)V

    .line 372
    iget-object v5, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 373
    .local v3, "res":Landroid/content/res/Resources;
    iget-object v5, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getSecondTopStageMode()I

    move-result v5

    if-ne v5, v4, :cond_3

    .line 374
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v5

    const v6, 0x7f080184

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 375
    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mContainerView:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    .line 376
    invoke-virtual {v8}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->getSelectedItems()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    int-to-long v8, v8

    .line 374
    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    .line 377
    :cond_3
    iget-object v5, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getSecondTopStageMode()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    .line 378
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v5

    const v6, 0x7f080178

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 379
    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mContainerView:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    .line 380
    invoke-virtual {v8}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->getSelectedItems()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    int-to-long v8, v8

    .line 378
    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    .line 385
    .end local v3    # "res":Landroid/content/res/Resources;
    :cond_4
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public onDestroyActivity()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 331
    iput-object v1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    .line 332
    iget-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mContainerView:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mContainerView:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->reset()V

    .line 335
    :cond_0
    iput-object v1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mContainerView:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    .line 336
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->unregisterOnAllAppItemListLoadCompletedListener()V

    .line 337
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

    .line 199
    const-string v1, "AppsPickerController"

    const-string v2, "onStageEnter()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget v1, p1, Lcom/android/launcher3/common/stage/StageEntry;->fromStage:I

    iput v1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mFromStageMode:I

    .line 202
    const-string v1, "KEY_PICKER_MODE"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/android/launcher3/common/stage/StageEntry;->getExtras(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mPickerMode:I

    .line 203
    const-string v1, "KEY_FOLDER_ICON_VIEW"

    invoke-virtual {p1, v1}, Lcom/android/launcher3/common/stage/StageEntry;->getExtras(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/folder/view/FolderIconView;

    iput-object v1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    .line 204
    iget-object v1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 205
    iget-object v1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->setHiddenApps(Ljava/util/ArrayList;)V

    .line 210
    :goto_0
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherModel;->loadAllAppItemList()V

    .line 212
    invoke-direct {p0, v9, p1}, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->setBackgroundAndStatusbar(ZLcom/android/launcher3/common/stage/StageEntry;)V

    .line 214
    iget-boolean v1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mNeedRefresh:Z

    if-eqz v1, :cond_0

    .line 215
    invoke-direct {p0}, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->notifyAppsListChanged()V

    .line 218
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mContainerView:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    iget v2, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mPickerMode:I

    invoke-virtual {v1, v2}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->setPickerMode(I)V

    .line 219
    iget-object v1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mContainerView:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    invoke-virtual {v1}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->bindAdapter()V

    .line 220
    iget-object v1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mContainerView:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->setVisibility(I)V

    .line 222
    invoke-direct {p0}, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->attachViewToDragLayer()V

    .line 224
    const/4 v7, 0x0

    .line 225
    .local v7, "enterAnimator":Landroid/animation/Animator;
    iget-boolean v0, p1, Lcom/android/launcher3/common/stage/StageEntry;->enableAnimation:Z

    .line 226
    .local v0, "animated":Z
    if-eqz v0, :cond_4

    .line 227
    iget-object v1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mLauncher:Lcom/android/launcher3/Launcher;

    const v2, 0x7f050004

    invoke-static {v1, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v7

    .line 228
    iget-object v1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mContainerView:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    invoke-virtual {v7, v1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 229
    const/16 v1, 0x1e

    invoke-static {v1}, Lcom/android/launcher3/util/ViInterpolator;->getInterploator(I)Landroid/view/animation/PathInterpolator;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 230
    new-instance v1, Lcom/android/launcher3/appspicker/controller/AppsPickerController$3;

    invoke-direct {v1, p0}, Lcom/android/launcher3/appspicker/controller/AppsPickerController$3;-><init>(Lcom/android/launcher3/appspicker/controller/AppsPickerController;)V

    invoke-virtual {v7, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 248
    :goto_1
    const/4 v8, 0x0

    .line 250
    .local v8, "isParentHome":Z
    iget-object v1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v1, :cond_1

    .line 251
    iget-object v1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v1

    iget-wide v10, v1, Lcom/android/launcher3/folder/FolderInfo;->container:J

    const-wide/16 v12, -0x64

    cmp-long v1, v10, v12

    if-nez v1, :cond_1

    .line 252
    const/4 v8, 0x1

    .line 255
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mContainerView:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    invoke-virtual {v1, v8}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->setParentMode(Z)V

    .line 256
    iget-object v1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mContainerView:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    invoke-virtual {v1, v9}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->setAppsPickerViewTop(Z)V

    .line 258
    iget v1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mPickerMode:I

    if-ne v1, v9, :cond_5

    .line 259
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getTopViewChangedMessageHandler()Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;

    move-result-object v1

    const/16 v2, 0x8

    .line 260
    invoke-virtual {v1, v2}, Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;->sendMessage(I)V

    .line 278
    :cond_2
    :goto_2
    return-object v7

    .line 207
    .end local v0    # "animated":Z
    .end local v7    # "enterAnimator":Landroid/animation/Animator;
    .end local v8    # "isParentHome":Z
    :cond_3
    invoke-direct {p0, v3}, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->setHiddenApps(Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 244
    .restart local v0    # "animated":Z
    .restart local v7    # "enterAnimator":Landroid/animation/Animator;
    :cond_4
    iget-object v1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mContainerView:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    invoke-virtual {v1, v6}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->setVisibility(I)V

    .line 245
    iget-object v1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mContainerView:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->setAlpha(F)V

    goto :goto_1

    .line 261
    .restart local v8    # "isParentHome":Z
    :cond_5
    iget v1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mPickerMode:I

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v1, :cond_2

    .line 262
    iget-object v1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v1

    iget-wide v10, v1, Lcom/android/launcher3/folder/FolderInfo;->container:J

    const-wide/16 v12, -0x66

    cmp-long v1, v10, v12

    if-eqz v1, :cond_6

    .line 264
    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v1

    const-string v2, "FAAH"

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 269
    :goto_3
    if-eqz v8, :cond_7

    .line 270
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getTopViewChangedMessageHandler()Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;

    move-result-object v1

    const/16 v2, 0xd

    .line 271
    invoke-virtual {v1, v2}, Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;->sendMessage(I)V

    goto :goto_2

    .line 267
    :cond_6
    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v1

    const-string v2, "FAAA"

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    goto :goto_3

    .line 273
    :cond_7
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getTopViewChangedMessageHandler()Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;

    move-result-object v1

    const/16 v2, 0xe

    .line 274
    invoke-virtual {v1, v2}, Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;->sendMessage(I)V

    goto :goto_2
.end method

.method protected onStageExit(Lcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/Animator;
    .locals 4
    .param p1, "data"    # Lcom/android/launcher3/common/stage/StageEntry;

    .prologue
    const/4 v3, 0x0

    .line 283
    const-string v1, "AppsPickerController"

    const-string v2, "onStageExit()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    const/4 v0, 0x0

    .line 286
    .local v0, "exitAnimator":Landroid/animation/Animator;
    iget v1, p1, Lcom/android/launcher3/common/stage/StageEntry;->stageCountOnFinishAllStage:I

    const/4 v2, 0x2

    if-gt v1, v2, :cond_0

    iget-boolean v1, p1, Lcom/android/launcher3/common/stage/StageEntry;->broughtToHome:Z

    if-eqz v1, :cond_2

    .line 287
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mContainerView:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->setVisibility(I)V

    .line 288
    iget-object v1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mContainerView:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    invoke-virtual {v1}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->reset()V

    .line 289
    iget-object v1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mAppsToHideForAllApps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 290
    invoke-direct {p0, v3, p1}, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->setBackgroundAndStatusbar(ZLcom/android/launcher3/common/stage/StageEntry;)V

    .line 291
    invoke-direct {p0}, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->detachViewFromDragLayer()V

    .line 316
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mContainerView:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    if-eqz v1, :cond_1

    .line 317
    iget-object v1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mContainerView:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    invoke-virtual {v1, v3}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->setAppsPickerViewTop(Z)V

    .line 319
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    .line 321
    return-object v0

    .line 293
    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mLauncher:Lcom/android/launcher3/Launcher;

    const v2, 0x7f05000a

    invoke-static {v1, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    .line 294
    iget-object v1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mContainerView:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 295
    const/16 v1, 0x1e

    invoke-static {v1}, Lcom/android/launcher3/util/ViInterpolator;->getInterploator(I)Landroid/view/animation/PathInterpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 296
    new-instance v1, Lcom/android/launcher3/appspicker/controller/AppsPickerController$4;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/appspicker/controller/AppsPickerController$4;-><init>(Lcom/android/launcher3/appspicker/controller/AppsPickerController;Lcom/android/launcher3/common/stage/StageEntry;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0
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
    .line 492
    .local p1, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    iget-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mAllApps:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->removeApps(Ljava/util/List;)V

    .line 493
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mNeedRefresh:Z

    .line 494
    invoke-direct {p0}, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->notifyAppsListChanged()V

    .line 495
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
    .line 479
    .local p1, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    iget-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mAllApps:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->setApps(Ljava/util/List;)V

    .line 480
    iget-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mAllApps:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    iget-object v1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mAppsToHideForAllApps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->setHiddenApps(Ljava/util/List;)V

    .line 481
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mNeedRefresh:Z

    .line 482
    invoke-direct {p0}, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->notifyAppsListChanged()V

    .line 483
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

    .line 162
    return-void
.end method

.method public supportStatusBar()Z
    .locals 1

    .prologue
    .line 575
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
    .line 486
    .local p1, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    iget-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mAllApps:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->updateApps(Ljava/util/List;)V

    .line 487
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mNeedRefresh:Z

    .line 488
    invoke-direct {p0}, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->notifyAppsListChanged()V

    .line 489
    return-void
.end method
