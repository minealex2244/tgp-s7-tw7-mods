.class public Lcom/android/launcher3/folder/controller/FolderController;
.super Lcom/android/launcher3/common/stage/Stage;
.source "FolderController.java"

# interfaces
.implements Lcom/android/launcher3/common/multiselect/MultiSelectManager$MultiSelectListener;


# static fields
.field public static final KEY_FOLDER_ICON_APPSEARCHED:Ljava/lang/String; = "KEY_FOLDER_ICON_APPSEARCHED"

.field public static final KEY_FOLDER_ICON_VIEW:Ljava/lang/String; = "KEY_FOLDER_ICON_VIEW"

.field public static final STATE_DRAG:I = 0x2

.field public static final STATE_NONE:I = 0x0

.field public static final STATE_NORMAL:I = 0x1

.field public static final STATE_SELECT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "FolderController"


# instance fields
.field private mBackupBackgroundAlpha:F

.field private mBackupBlurAmount:F

.field private mBgDrakenAlpha:F

.field private mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

.field private mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

.field private mFolderBgView:Lcom/android/launcher3/folder/view/FolderBgView;

.field private mFolderCloseReason:I

.field private mHelpTextContainerHeight:I

.field private mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

.field private mSearchedAppInfo:Lcom/android/launcher3/common/base/item/IconInfo;

.field private mState:I

.field private mStateTransitionDuration:I

.field private mTargetFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

.field private mTargetFolderItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTransitionAnimation:Lcom/android/launcher3/folder/FolderTransitionAnimation;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/launcher3/common/stage/Stage;-><init>()V

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderItems:Ljava/util/ArrayList;

    .line 92
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mState:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/folder/controller/FolderController;)Lcom/android/launcher3/Launcher;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/folder/controller/FolderController;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher3/folder/controller/FolderController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/folder/controller/FolderController;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/launcher3/folder/controller/FolderController;->setupFolderBgLayout()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/launcher3/folder/controller/FolderController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/folder/controller/FolderController;

    .prologue
    .line 63
    iget v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mStateTransitionDuration:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/launcher3/folder/controller/FolderController;)Lcom/android/launcher3/folder/view/FolderBgView;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/folder/controller/FolderController;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mFolderBgView:Lcom/android/launcher3/folder/view/FolderBgView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/launcher3/folder/controller/FolderController;)Lcom/android/launcher3/Launcher;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/folder/controller/FolderController;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/launcher3/folder/controller/FolderController;)Lcom/android/launcher3/folder/view/FolderIconView;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/folder/controller/FolderController;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/launcher3/folder/controller/FolderController;Lcom/android/launcher3/folder/view/FolderView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/folder/controller/FolderController;
    .param p1, "x1"    # Lcom/android/launcher3/folder/view/FolderView;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/controller/FolderController;->onCloseComplete(Lcom/android/launcher3/folder/view/FolderView;)V

    return-void
.end method

.method private attachFolderToDragLayer(Lcom/android/launcher3/folder/view/FolderView;)V
    .locals 4
    .param p1, "folder"    # Lcom/android/launcher3/folder/view/FolderView;

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 629
    iget-object v1, p0, Lcom/android/launcher3/folder/controller/FolderController;->mFolderBgView:Lcom/android/launcher3/folder/view/FolderBgView;

    if-eqz v1, :cond_0

    .line 630
    iget-object v1, p0, Lcom/android/launcher3/folder/controller/FolderController;->mFolderBgView:Lcom/android/launcher3/folder/view/FolderBgView;

    invoke-virtual {v1, v2, v2, v2}, Lcom/android/launcher3/folder/view/FolderBgView;->showHelpForEdit(ZIZ)V

    .line 631
    new-instance v0, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;

    invoke-direct {v0, v3, v3}, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;-><init>(II)V

    .line 632
    .local v0, "lp":Lcom/android/launcher3/common/view/DragLayer$LayoutParams;
    iget-object v1, p0, Lcom/android/launcher3/folder/controller/FolderController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    iget-object v2, p0, Lcom/android/launcher3/folder/controller/FolderController;->mFolderBgView:Lcom/android/launcher3/folder/view/FolderBgView;

    invoke-virtual {v1, v2, v0}, Lcom/android/launcher3/common/view/DragLayer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 635
    .end local v0    # "lp":Lcom/android/launcher3/common/view/DragLayer$LayoutParams;
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/folder/controller/FolderController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/common/view/DragLayer;->addView(Landroid/view/View;)V

    .line 636
    iget-object v1, p0, Lcom/android/launcher3/folder/controller/FolderController;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/common/drag/DragManager;->addDropTarget(Lcom/android/launcher3/common/drag/DropTarget;)V

    .line 637
    return-void
.end method

.method private callRefreshLiveIcon()V
    .locals 6

    .prologue
    .line 539
    iget-object v2, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 540
    .local v1, "view":Landroid/view/View;
    instance-of v3, v1, Lcom/android/launcher3/common/view/IconView;

    if-nez v3, :cond_0

    .line 541
    const-string v3, "FolderController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "callRefreshLiveIcon: It is not IconView:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 544
    check-cast v0, Lcom/android/launcher3/common/view/IconView;

    .line 545
    .local v0, "iconView":Lcom/android/launcher3/common/view/IconView;
    invoke-virtual {v0}, Lcom/android/launcher3/common/view/IconView;->onLiveIconRefresh()V

    goto :goto_0

    .line 547
    .end local v0    # "iconView":Lcom/android/launcher3/common/view/IconView;
    .end local v1    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private closeFolder()V
    .locals 3

    .prologue
    .line 811
    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isFolderStage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 812
    invoke-virtual {p0}, Lcom/android/launcher3/folder/controller/FolderController;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/common/stage/StageManager;->finishStage(ILcom/android/launcher3/common/stage/StageEntry;)V

    .line 814
    :cond_0
    return-void
.end method

.method private detachFolderFromDragLayer(Lcom/android/launcher3/folder/view/FolderView;)V
    .locals 2
    .param p1, "folder"    # Lcom/android/launcher3/folder/view/FolderView;

    .prologue
    .line 640
    if-eqz p1, :cond_1

    .line 641
    invoke-virtual {p1}, Lcom/android/launcher3/folder/view/FolderView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/view/DragLayer;

    .line 642
    .local v0, "parent":Lcom/android/launcher3/common/view/DragLayer;
    if-eqz v0, :cond_0

    .line 643
    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/view/DragLayer;->removeView(Landroid/view/View;)V

    .line 645
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/folder/controller/FolderController;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    if-eqz v1, :cond_1

    .line 646
    iget-object v1, p0, Lcom/android/launcher3/folder/controller/FolderController;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/common/drag/DragManager;->removeDropTarget(Lcom/android/launcher3/common/drag/DropTarget;)V

    .line 650
    .end local v0    # "parent":Lcom/android/launcher3/common/view/DragLayer;
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/folder/controller/FolderController;->mFolderBgView:Lcom/android/launcher3/folder/view/FolderBgView;

    if-eqz v1, :cond_2

    .line 651
    iget-object v1, p0, Lcom/android/launcher3/folder/controller/FolderController;->mFolderBgView:Lcom/android/launcher3/folder/view/FolderBgView;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderBgView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/view/DragLayer;

    .line 652
    .restart local v0    # "parent":Lcom/android/launcher3/common/view/DragLayer;
    if-eqz v0, :cond_2

    .line 653
    iget-object v1, p0, Lcom/android/launcher3/folder/controller/FolderController;->mFolderBgView:Lcom/android/launcher3/folder/view/FolderBgView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/view/DragLayer;->removeView(Landroid/view/View;)V

    .line 656
    .end local v0    # "parent":Lcom/android/launcher3/common/view/DragLayer;
    :cond_2
    return-void
.end method

.method private getAdjustedInternalState(I)I
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 446
    if-nez p1, :cond_0

    iget p1, p0, Lcom/android/launcher3/folder/controller/FolderController;->mState:I

    .end local p1    # "value":I
    :cond_0
    return p1
.end method

.method private isValidFolder()Z
    .locals 3

    .prologue
    .line 525
    const/4 v0, 0x0

    .line 526
    .local v0, "isValid":Z
    iget-object v1, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v1, :cond_0

    .line 527
    iget-object v1, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderView()Lcom/android/launcher3/folder/view/FolderView;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 528
    const/4 v0, 0x1

    .line 535
    :cond_0
    :goto_0
    return v0

    .line 530
    :cond_1
    const-string v1, "FolderController"

    const-string v2, "OpenFolder is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private onCloseComplete(Lcom/android/launcher3/folder/view/FolderView;)V
    .locals 2
    .param p1, "closedFolder"    # Lcom/android/launcher3/folder/view/FolderView;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 577
    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/controller/FolderController;->enterNormalState(Z)V

    .line 578
    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/controller/FolderController;->updateCheckBox(Z)V

    .line 580
    if-eqz p1, :cond_0

    .line 581
    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/controller/FolderController;->detachFolderFromDragLayer(Lcom/android/launcher3/folder/view/FolderView;)V

    .line 582
    invoke-virtual {p1, v1}, Lcom/android/launcher3/folder/view/FolderView;->bindController(Lcom/android/launcher3/folder/controller/FolderController;)V

    .line 584
    :cond_0
    iput-object v1, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    .line 586
    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    if-eqz v0, :cond_1

    .line 589
    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/view/DragLayer;->sendAccessibilityEvent(I)V

    .line 591
    :cond_1
    return-void
.end method

.method private onCloseFolder(Lcom/android/launcher3/folder/view/FolderView;)V
    .locals 2
    .param p1, "folder"    # Lcom/android/launcher3/folder/view/FolderView;

    .prologue
    const/4 v1, 0x0

    .line 570
    invoke-direct {p0, v1}, Lcom/android/launcher3/folder/controller/FolderController;->setBackgroundDim(Z)V

    .line 572
    invoke-virtual {p1}, Lcom/android/launcher3/folder/view/FolderView;->getInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v0

    iput-boolean v1, v0, Lcom/android/launcher3/folder/FolderInfo;->opened:Z

    .line 573
    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderIconView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->canReorder:Z

    .line 574
    return-void
.end method

.method private onOpenFolder(Lcom/android/launcher3/folder/view/FolderView;)V
    .locals 3
    .param p1, "folder"    # Lcom/android/launcher3/folder/view/FolderView;

    .prologue
    const/4 v1, 0x1

    .line 550
    invoke-direct {p0, v1}, Lcom/android/launcher3/folder/controller/FolderController;->setBackgroundDim(Z)V

    .line 551
    invoke-direct {p0}, Lcom/android/launcher3/folder/controller/FolderController;->callRefreshLiveIcon()V

    .line 553
    invoke-virtual {p1}, Lcom/android/launcher3/folder/view/FolderView;->getInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v0

    iput-boolean v1, v0, Lcom/android/launcher3/folder/FolderInfo;->opened:Z

    .line 554
    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderIconView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->canReorder:Z

    .line 556
    invoke-virtual {p1}, Lcom/android/launcher3/folder/view/FolderView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 557
    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/controller/FolderController;->attachFolderToDragLayer(Lcom/android/launcher3/folder/view/FolderView;)V

    .line 565
    :goto_0
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lcom/android/launcher3/folder/view/FolderView;->sendAccessibilityEvent(I)V

    .line 566
    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/view/DragLayer;->sendAccessibilityEvent(I)V

    .line 567
    return-void

    .line 559
    :cond_0
    const-string v0, "FolderController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Opening folder ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") which already has a parent ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 560
    invoke-virtual {p1}, Lcom/android/launcher3/folder/view/FolderView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 559
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private refreshCountBadge(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 817
    iget-object v3, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v3, :cond_0

    .line 818
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-wide v0, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    .line 819
    .local v0, "container":J
    iget-object v3, p0, Lcom/android/launcher3/folder/controller/FolderController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v3, v0, v1}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->getCheckedItemCountInFolder(J)I

    move-result v2

    .line 820
    .local v2, "count":I
    iget-object v3, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v3, v2}, Lcom/android/launcher3/folder/view/FolderIconView;->refreshCountBadge(I)V

    .line 822
    .end local v0    # "container":J
    .end local v2    # "count":I
    :cond_0
    return-void
.end method

.method private setBackgroundDim(Z)V
    .locals 14
    .param p1, "isEntered"    # Z

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v7, 0x1

    .line 594
    const/4 v2, 0x0

    .line 595
    .local v2, "duration":I
    const/4 v5, 0x0

    .line 596
    .local v5, "startAlpha":F
    const/4 v3, 0x0

    .line 597
    .local v3, "finalAlpha":F
    const/4 v1, 0x0

    .line 598
    .local v1, "doDimAnimationToBG":Z
    iget-object v6, p0, Lcom/android/launcher3/folder/controller/FolderController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    invoke-virtual {v6}, Lcom/android/launcher3/common/view/DragLayer;->getBackgroundImageAlpha()F

    move-result v6

    cmpl-float v6, v6, v9

    if-lez v6, :cond_3

    move v4, v7

    .line 600
    .local v4, "isBackgroundImageUsing":Z
    :goto_0
    if-eqz p1, :cond_4

    .line 601
    invoke-static {}, Lcom/android/launcher3/util/BlurUtils;->getBlurAmount()F

    move-result v6

    iput v6, p0, Lcom/android/launcher3/folder/controller/FolderController;->mBackupBlurAmount:F

    .line 602
    iget v6, p0, Lcom/android/launcher3/folder/controller/FolderController;->mBackupBlurAmount:F

    cmpl-float v6, v6, v9

    if-nez v6, :cond_0

    .line 603
    iget-object v6, p0, Lcom/android/launcher3/folder/controller/FolderController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/android/launcher3/util/BlurUtils;->blurByWindowManager(ZLandroid/view/Window;)V

    .line 605
    :cond_0
    iget-object v6, p0, Lcom/android/launcher3/folder/controller/FolderController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    invoke-virtual {v6}, Lcom/android/launcher3/common/view/DragLayer;->getBackgroundAlpha()F

    move-result v6

    iput v6, p0, Lcom/android/launcher3/folder/controller/FolderController;->mBackupBackgroundAlpha:F

    .line 606
    if-nez v4, :cond_1

    .line 607
    iget v5, p0, Lcom/android/launcher3/folder/controller/FolderController;->mBackupBackgroundAlpha:F

    .line 608
    iget v3, p0, Lcom/android/launcher3/folder/controller/FolderController;->mBgDrakenAlpha:F

    .line 609
    iget-object v6, p0, Lcom/android/launcher3/folder/controller/FolderController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, 0x7f0b0029

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 610
    const/4 v1, 0x1

    .line 622
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 623
    iget-object v6, p0, Lcom/android/launcher3/folder/controller/FolderController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    const-string v9, "backgroundAlpha"

    const/4 v10, 0x2

    new-array v10, v10, [F

    aput v5, v10, v8

    aput v3, v10, v7

    invoke-static {v6, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 624
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    int-to-long v6, v2

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->start()V

    .line 626
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    :cond_2
    return-void

    .end local v4    # "isBackgroundImageUsing":Z
    :cond_3
    move v4, v8

    .line 598
    goto :goto_0

    .line 613
    .restart local v4    # "isBackgroundImageUsing":Z
    :cond_4
    iget v6, p0, Lcom/android/launcher3/folder/controller/FolderController;->mBackupBlurAmount:F

    cmpl-float v6, v6, v9

    if-lez v6, :cond_5

    move v6, v7

    :goto_2
    iget-object v9, p0, Lcom/android/launcher3/folder/controller/FolderController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v9}, Lcom/android/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v9

    iget v10, p0, Lcom/android/launcher3/folder/controller/FolderController;->mBackupBlurAmount:F

    const-wide/16 v12, -0x1

    invoke-static {v6, v9, v10, v12, v13}, Lcom/android/launcher3/util/BlurUtils;->blurByWindowManager(ZLandroid/view/Window;FJ)V

    .line 614
    if-nez v4, :cond_1

    .line 615
    iget-object v6, p0, Lcom/android/launcher3/folder/controller/FolderController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    invoke-virtual {v6}, Lcom/android/launcher3/common/view/DragLayer;->getBackgroundAlpha()F

    move-result v5

    .line 616
    iget v3, p0, Lcom/android/launcher3/folder/controller/FolderController;->mBackupBackgroundAlpha:F

    .line 617
    iget-object v6, p0, Lcom/android/launcher3/folder/controller/FolderController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, 0x7f0b002a

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 618
    const/4 v1, 0x1

    goto :goto_1

    :cond_5
    move v6, v8

    .line 613
    goto :goto_2
.end method

.method private setupFolderBgLayout()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 659
    const/4 v0, 0x0

    .line 660
    .local v0, "completed":Z
    iget v4, p0, Lcom/android/launcher3/folder/controller/FolderController;->mHelpTextContainerHeight:I

    if-lez v4, :cond_1

    .line 661
    const/4 v0, 0x1

    .line 673
    :cond_0
    :goto_0
    return v0

    .line 662
    :cond_1
    iget-object v4, p0, Lcom/android/launcher3/folder/controller/FolderController;->mFolderBgView:Lcom/android/launcher3/folder/view/FolderBgView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/launcher3/folder/controller/FolderController;->mFolderBgView:Lcom/android/launcher3/folder/view/FolderBgView;

    invoke-virtual {v4}, Lcom/android/launcher3/folder/view/FolderBgView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-direct {p0}, Lcom/android/launcher3/folder/controller/FolderController;->isValidFolder()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 663
    const/4 v4, 0x2

    new-array v2, v4, [I

    .line 664
    .local v2, "folderCoord":[I
    iget-object v4, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v4}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderView()Lcom/android/launcher3/folder/view/FolderView;

    move-result-object v1

    .line 665
    .local v1, "folder":Lcom/android/launcher3/folder/view/FolderView;
    iget-object v4, p0, Lcom/android/launcher3/folder/controller/FolderController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    invoke-virtual {v4, v1, v2}, Lcom/android/launcher3/common/view/DragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F

    .line 666
    aget v4, v2, v6

    if-lez v4, :cond_0

    .line 667
    iget-object v4, p0, Lcom/android/launcher3/folder/controller/FolderController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090031

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 668
    .local v3, "helpTextMarginFromFolderContent":I
    aget v4, v2, v6

    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderView;->getHeader()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    sub-int/2addr v4, v3

    iput v4, p0, Lcom/android/launcher3/folder/controller/FolderController;->mHelpTextContainerHeight:I

    .line 669
    iget-object v4, p0, Lcom/android/launcher3/folder/controller/FolderController;->mFolderBgView:Lcom/android/launcher3/folder/view/FolderBgView;

    iget v5, p0, Lcom/android/launcher3/folder/controller/FolderController;->mHelpTextContainerHeight:I

    const/16 v6, 0x50

    invoke-virtual {v4, v5, v6}, Lcom/android/launcher3/folder/view/FolderBgView;->setHelpTextContainerHeightAndGravity(II)V

    .line 670
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public closeFolderIfLackItem()V
    .locals 3

    .prologue
    .line 802
    iget-object v1, p0, Lcom/android/launcher3/folder/controller/FolderController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->isFolderStage()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/launcher3/folder/controller/FolderController;->isValidFolder()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 803
    iget-object v1, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderView()Lcom/android/launcher3/folder/view/FolderView;

    move-result-object v0

    .line 804
    .local v0, "openFolder":Lcom/android/launcher3/folder/view/FolderView;
    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderView;->getItemCount()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_0

    .line 805
    invoke-direct {p0}, Lcom/android/launcher3/folder/controller/FolderController;->closeFolder()V

    .line 808
    .end local v0    # "openFolder":Lcom/android/launcher3/folder/view/FolderView;
    :cond_0
    return-void
.end method

.method public enterDragState(Z)V
    .locals 3
    .param p1, "animated"    # Z

    .prologue
    const/4 v2, 0x2

    .line 713
    iget v1, p0, Lcom/android/launcher3/folder/controller/FolderController;->mState:I

    if-ne v1, v2, :cond_0

    .line 723
    :goto_0
    return-void

    .line 717
    :cond_0
    new-instance v0, Lcom/android/launcher3/common/stage/StageEntry;

    invoke-direct {v0}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    .line 718
    .local v0, "data":Lcom/android/launcher3/common/stage/StageEntry;
    iput-boolean p1, v0, Lcom/android/launcher3/common/stage/StageEntry;->enableAnimation:Z

    .line 719
    iget v1, p0, Lcom/android/launcher3/folder/controller/FolderController;->mState:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/stage/StageEntry;->setInternalStateFrom(I)V

    .line 720
    invoke-virtual {v0, v2}, Lcom/android/launcher3/common/stage/StageEntry;->setInternalStateTo(I)V

    .line 722
    invoke-virtual {p0}, Lcom/android/launcher3/folder/controller/FolderController;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/android/launcher3/common/stage/StageManager;->switchInternalState(Lcom/android/launcher3/common/stage/Stage;Lcom/android/launcher3/common/stage/StageEntry;)V

    goto :goto_0
.end method

.method public enterNormalState(Z)V
    .locals 1
    .param p1, "animated"    # Z

    .prologue
    .line 695
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/folder/controller/FolderController;->enterNormalState(ZLjava/lang/Runnable;)V

    .line 696
    return-void
.end method

.method public enterNormalState(ZLjava/lang/Runnable;)V
    .locals 3
    .param p1, "animated"    # Z
    .param p2, "onCompleteRunnable"    # Ljava/lang/Runnable;

    .prologue
    const/4 v2, 0x1

    .line 699
    iget v1, p0, Lcom/android/launcher3/folder/controller/FolderController;->mState:I

    if-ne v1, v2, :cond_0

    .line 710
    :goto_0
    return-void

    .line 703
    :cond_0
    new-instance v0, Lcom/android/launcher3/common/stage/StageEntry;

    invoke-direct {v0}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    .line 704
    .local v0, "data":Lcom/android/launcher3/common/stage/StageEntry;
    iput-boolean p1, v0, Lcom/android/launcher3/common/stage/StageEntry;->enableAnimation:Z

    .line 705
    iget v1, p0, Lcom/android/launcher3/folder/controller/FolderController;->mState:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/stage/StageEntry;->setInternalStateFrom(I)V

    .line 706
    invoke-virtual {v0, v2}, Lcom/android/launcher3/common/stage/StageEntry;->setInternalStateTo(I)V

    .line 707
    invoke-virtual {v0, p2}, Lcom/android/launcher3/common/stage/StageEntry;->addOnCompleteRunnableCallBack(Ljava/lang/Runnable;)V

    .line 709
    invoke-virtual {p0}, Lcom/android/launcher3/folder/controller/FolderController;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/android/launcher3/common/stage/StageManager;->switchInternalState(Lcom/android/launcher3/common/stage/Stage;Lcom/android/launcher3/common/stage/StageEntry;)V

    goto :goto_0
.end method

.method public enterSelectState(Z)V
    .locals 3
    .param p1, "animated"    # Z

    .prologue
    const/4 v2, 0x3

    .line 726
    iget v1, p0, Lcom/android/launcher3/folder/controller/FolderController;->mState:I

    if-ne v1, v2, :cond_0

    .line 736
    :goto_0
    return-void

    .line 730
    :cond_0
    new-instance v0, Lcom/android/launcher3/common/stage/StageEntry;

    invoke-direct {v0}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    .line 731
    .local v0, "data":Lcom/android/launcher3/common/stage/StageEntry;
    iput-boolean p1, v0, Lcom/android/launcher3/common/stage/StageEntry;->enableAnimation:Z

    .line 732
    iget v1, p0, Lcom/android/launcher3/folder/controller/FolderController;->mState:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/stage/StageEntry;->setInternalStateFrom(I)V

    .line 733
    invoke-virtual {v0, v2}, Lcom/android/launcher3/common/stage/StageEntry;->setInternalStateTo(I)V

    .line 735
    invoke-virtual {p0}, Lcom/android/launcher3/folder/controller/FolderController;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/android/launcher3/common/stage/StageManager;->switchInternalState(Lcom/android/launcher3/common/stage/Stage;Lcom/android/launcher3/common/stage/StageEntry;)V

    goto :goto_0
.end method

.method public finishOnTouchOutSide()Z
    .locals 3

    .prologue
    .line 678
    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v0}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->isMultiSelectMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 679
    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mLauncher:Lcom/android/launcher3/Launcher;

    const v1, 0x7f080051

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 682
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/folder/controller/FolderController;->isValidFolder()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 683
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mFolderCloseReason:I

    .line 686
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public getContainerView()Landroid/view/View;
    .locals 1

    .prologue
    .line 463
    invoke-direct {p0}, Lcom/android/launcher3/folder/controller/FolderController;->isValidFolder()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderView()Lcom/android/launcher3/folder/view/FolderView;

    move-result-object v0

    .line 466
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFolderBgView()Lcom/android/launcher3/folder/view/FolderBgView;
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mFolderBgView:Lcom/android/launcher3/folder/view/FolderBgView;

    return-object v0
.end method

.method getLauncher()Lcom/android/launcher3/Launcher;
    .locals 1

    .prologue
    .line 840
    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method public getSearchedAppInfo()Lcom/android/launcher3/common/base/item/IconInfo;
    .locals 1

    .prologue
    .line 825
    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mSearchedAppInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 517
    iget v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mState:I

    return v0
.end method

.method getTargetFolderIconView()Lcom/android/launcher3/folder/view/FolderIconView;
    .locals 1

    .prologue
    .line 844
    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    return-object v0
.end method

.method public initStageView()V
    .locals 2

    .prologue
    .line 107
    const-string v0, "FolderController"

    const-string v1, "initStageView()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    .line 110
    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragMgr()Lcom/android/launcher3/common/drag/DragManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    .line 112
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportMultiSelect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getMultiSelectManager()Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    .line 114
    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->addMultiSelectCallbacks(Lcom/android/launcher3/common/multiselect/MultiSelectManager$MultiSelectListener;)V

    .line 119
    :cond_0
    invoke-super {p0}, Lcom/android/launcher3/common/stage/Stage;->initStageView()V

    .line 120
    return-void
.end method

.method protected isRestorable()Z
    .locals 1

    .prologue
    .line 691
    const/4 v0, 0x0

    return v0
.end method

.method protected onBackPressed()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 497
    invoke-direct {p0}, Lcom/android/launcher3/folder/controller/FolderController;->isValidFolder()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 498
    iget-object v2, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderView()Lcom/android/launcher3/folder/view/FolderView;

    move-result-object v0

    .line 499
    .local v0, "openFolder":Lcom/android/launcher3/folder/view/FolderView;
    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderView;->isEditingName()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 500
    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderView;->dismissEditingName()V

    .line 513
    .end local v0    # "openFolder":Lcom/android/launcher3/folder/view/FolderView;
    :goto_0
    return v1

    .line 504
    .restart local v0    # "openFolder":Lcom/android/launcher3/folder/view/FolderView;
    :cond_0
    iget v2, p0, Lcom/android/launcher3/folder/controller/FolderController;->mState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 505
    invoke-virtual {p0, v1}, Lcom/android/launcher3/folder/controller/FolderController;->enterNormalState(Z)V

    goto :goto_0

    .line 509
    :cond_1
    iget v2, p0, Lcom/android/launcher3/folder/controller/FolderController;->mFolderCloseReason:I

    if-nez v2, :cond_2

    .line 510
    iput v1, p0, Lcom/android/launcher3/folder/controller/FolderController;->mFolderCloseReason:I

    .line 513
    .end local v0    # "openFolder":Lcom/android/launcher3/folder/view/FolderView;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onChangeColorForBg(Z)V
    .locals 1
    .param p1, "whiteBg"    # Z

    .prologue
    .line 362
    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderView()Lcom/android/launcher3/folder/view/FolderView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderView;->setFolderContentColor()V

    .line 365
    :cond_0
    return-void
.end method

.method public onChangeSelectMode(ZZ)V
    .locals 1
    .param p1, "enter"    # Z
    .param p2, "animated"    # Z

    .prologue
    .line 740
    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isFolderStage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 741
    if-eqz p1, :cond_1

    .line 742
    invoke-virtual {p0, p2}, Lcom/android/launcher3/folder/controller/FolderController;->enterSelectState(Z)V

    .line 743
    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/controller/FolderController;->updateCheckBox(Z)V

    .line 749
    :cond_0
    :goto_0
    return-void

    .line 745
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v0}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->clearCheckedApps()V

    .line 746
    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/controller/FolderController;->updateCheckBox(Z)V

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/view/View;Z)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "isChecked"    # Z

    .prologue
    .line 765
    if-eqz p2, :cond_1

    .line 766
    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    iget-object v1, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderView()Lcom/android/launcher3/folder/view/FolderView;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->addCheckedApp(Landroid/view/View;Lcom/android/launcher3/common/drag/DragSource;)V

    .line 771
    :goto_0
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFolderSelect()Z

    move-result v0

    if-nez v0, :cond_0

    .line 772
    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/controller/FolderController;->refreshCountBadge(Landroid/view/View;)V

    .line 774
    :cond_0
    return-void

    .line 768
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->removeCheckedApp(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onClickMultiSelectPanel(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    const/4 v1, 0x1

    .line 778
    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isFolderStage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 799
    :goto_0
    return-void

    .line 782
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 796
    :pswitch_0
    invoke-virtual {p0, v1}, Lcom/android/launcher3/folder/controller/FolderController;->enterNormalState(Z)V

    goto :goto_0

    .line 785
    :pswitch_1
    invoke-virtual {p0, v1}, Lcom/android/launcher3/folder/controller/FolderController;->enterNormalState(Z)V

    goto :goto_0

    .line 790
    :pswitch_2
    invoke-direct {p0}, Lcom/android/launcher3/folder/controller/FolderController;->closeFolder()V

    goto :goto_0

    .line 782
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChangedIfNeeded()V
    .locals 1

    .prologue
    .line 353
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mHelpTextContainerHeight:I

    .line 355
    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderView()Lcom/android/launcher3/folder/view/FolderView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderView;->onConfigurationChangedIfNeeded()V

    .line 358
    :cond_0
    return-void
.end method

.method public onDestroyActivity()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 481
    iput-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    .line 482
    iput-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    .line 484
    invoke-direct {p0}, Lcom/android/launcher3/folder/controller/FolderController;->isValidFolder()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 485
    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/launcher3/folder/FolderInfo;->opened:Z

    .line 488
    :cond_0
    invoke-static {}, Lcom/android/launcher3/folder/view/FolderIconView;->release()V

    .line 490
    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    if-eqz v0, :cond_1

    .line 491
    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->removeMultiSelectCallbacks(Lcom/android/launcher3/common/multiselect/MultiSelectManager$MultiSelectListener;)V

    .line 493
    :cond_1
    return-void
.end method

.method public onPauseActivity()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 471
    invoke-direct {p0}, Lcom/android/launcher3/folder/controller/FolderController;->isValidFolder()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 472
    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v0}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->isShowingHelpDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->hideHelpDialog(Z)V

    .line 475
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/launcher3/folder/controller/FolderController;->enterNormalState(Z)V

    .line 477
    :cond_1
    return-void
.end method

.method public onSetPageScrollListener(Lcom/android/launcher3/common/base/view/PagedView$PageScrollListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/launcher3/common/base/view/PagedView$PageScrollListener;

    .prologue
    .line 834
    invoke-direct {p0}, Lcom/android/launcher3/folder/controller/FolderController;->isValidFolder()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 835
    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderView()Lcom/android/launcher3/folder/view/FolderView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderView;->getContent()Lcom/android/launcher3/folder/view/FolderPagedView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/view/FolderPagedView;->setPageScrollListener(Lcom/android/launcher3/common/base/view/PagedView$PageScrollListener;)V

    .line 837
    :cond_0
    return-void
.end method

.method protected onStageEnter(Lcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/Animator;
    .locals 14
    .param p1, "data"    # Lcom/android/launcher3/common/stage/StageEntry;

    .prologue
    .line 125
    const-string v10, "FolderController"

    const-string v11, "onStageEnter()"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const/4 v3, 0x0

    .line 129
    .local v3, "enterAnim":Landroid/animation/Animator;
    if-eqz p1, :cond_6

    .line 130
    iget v7, p1, Lcom/android/launcher3/common/stage/StageEntry;->fromStage:I

    .line 131
    .local v7, "fromViewMode":I
    invoke-virtual {p1}, Lcom/android/launcher3/common/stage/StageEntry;->getLayerViews()Ljava/util/HashMap;

    move-result-object v8

    .line 132
    .local v8, "layerViews":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/View;Ljava/lang/Integer;>;"
    const-string v10, "KEY_FOLDER_ICON_VIEW"

    invoke-virtual {p1, v10}, Lcom/android/launcher3/common/stage/StageEntry;->getExtras(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/folder/view/FolderIconView;

    .line 133
    .local v5, "folderIconView":Lcom/android/launcher3/folder/view/FolderIconView;
    const-string v10, "KEY_FOLDER_ICON_APPSEARCHED"

    invoke-virtual {p1, v10}, Lcom/android/launcher3/common/stage/StageEntry;->getExtras(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher3/common/base/item/IconInfo;

    iput-object v10, p0, Lcom/android/launcher3/folder/controller/FolderController;->mSearchedAppInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    .line 134
    const-string v10, "KEY_SELECTED_ITEMS"

    invoke-virtual {p1, v10}, Lcom/android/launcher3/common/stage/StageEntry;->getExtras(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 136
    .local v0, "addToFolderItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    if-eqz v5, :cond_0

    .line 137
    iput-object v5, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    .line 140
    :cond_0
    const/4 v4, 0x0

    .line 141
    .local v4, "folder":Lcom/android/launcher3/folder/view/FolderView;
    iget-object v10, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v10, :cond_1

    .line 142
    iget-object v10, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v10}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderView()Lcom/android/launcher3/folder/view/FolderView;

    move-result-object v4

    .line 145
    :cond_1
    if-eqz v4, :cond_6

    .line 146
    invoke-virtual {v4, p0}, Lcom/android/launcher3/folder/view/FolderView;->bindController(Lcom/android/launcher3/folder/controller/FolderController;)V

    .line 148
    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v4, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    const/4 v10, 0x1

    if-eq v7, v10, :cond_2

    const/4 v10, 0x2

    if-ne v7, v10, :cond_b

    .line 150
    :cond_2
    invoke-virtual {p1}, Lcom/android/launcher3/common/stage/StageEntry;->getInternalStateTo()I

    move-result v10

    invoke-direct {p0, v10}, Lcom/android/launcher3/folder/controller/FolderController;->getAdjustedInternalState(I)I

    move-result v9

    .line 151
    .local v9, "toState":I
    const/4 v10, 0x2

    if-ne v9, v10, :cond_3

    .line 152
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/android/launcher3/folder/controller/FolderController;->enterDragState(Z)V

    .line 154
    :cond_3
    iput v9, p0, Lcom/android/launcher3/folder/controller/FolderController;->mState:I

    .line 155
    invoke-direct {p0, v4}, Lcom/android/launcher3/folder/controller/FolderController;->onOpenFolder(Lcom/android/launcher3/folder/view/FolderView;)V

    .line 157
    const/4 v10, 0x4

    invoke-virtual {v4, v10}, Lcom/android/launcher3/folder/view/FolderView;->setVisibility(I)V

    .line 158
    iget-object v10, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTransitionAnimation:Lcom/android/launcher3/folder/FolderTransitionAnimation;

    iget-object v11, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v10, v4, v11}, Lcom/android/launcher3/folder/FolderTransitionAnimation;->getEnterFromHomeOrAppsAnimation(Lcom/android/launcher3/folder/view/FolderView;Lcom/android/launcher3/folder/view/FolderIconView;)Landroid/animation/Animator;

    move-result-object v3

    .line 159
    invoke-virtual {v4, v3}, Lcom/android/launcher3/folder/view/FolderView;->onOpen(Landroid/animation/Animator;)V

    .line 194
    .end local v9    # "toState":I
    :cond_4
    :goto_0
    const/4 v10, 0x1

    if-ne v7, v10, :cond_10

    .line 195
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/launcher3/LauncherAppState;->getTopViewChangedMessageHandler()Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;

    move-result-object v10

    const/4 v11, 0x3

    .line 196
    invoke-virtual {v10, v11}, Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;->sendMessage(I)V

    .line 210
    :cond_5
    :goto_1
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_6

    .line 211
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFolderLock()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 212
    invoke-static {}, Lcom/android/launcher3/folder/folderlock/FolderLock;->getInstance()Lcom/android/launcher3/folder/folderlock/FolderLock;

    move-result-object v6

    .line 213
    .local v6, "folderLock":Lcom/android/launcher3/folder/folderlock/FolderLock;
    if-eqz v6, :cond_6

    invoke-virtual {v4}, Lcom/android/launcher3/folder/view/FolderView;->getInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/launcher3/folder/FolderInfo;->isLocked()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 214
    invoke-virtual {v4}, Lcom/android/launcher3/folder/view/FolderView;->getInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/android/launcher3/folder/folderlock/FolderLock;->lockFolderAfterAdd(Lcom/android/launcher3/folder/FolderInfo;)V

    .line 221
    .end local v0    # "addToFolderItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    .end local v4    # "folder":Lcom/android/launcher3/folder/view/FolderView;
    .end local v5    # "folderIconView":Lcom/android/launcher3/folder/view/FolderIconView;
    .end local v6    # "folderLock":Lcom/android/launcher3/folder/folderlock/FolderLock;
    .end local v7    # "fromViewMode":I
    .end local v8    # "layerViews":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/View;Ljava/lang/Integer;>;"
    :cond_6
    iget-object v10, p0, Lcom/android/launcher3/folder/controller/FolderController;->mFolderBgView:Lcom/android/launcher3/folder/view/FolderBgView;

    if-eqz v10, :cond_7

    .line 222
    iget v10, p0, Lcom/android/launcher3/folder/controller/FolderController;->mState:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_14

    .line 223
    invoke-direct {p0}, Lcom/android/launcher3/folder/controller/FolderController;->setupFolderBgLayout()Z

    move-result v1

    .line 224
    .local v1, "completed":Z
    if-eqz v1, :cond_13

    .line 225
    iget-object v10, p0, Lcom/android/launcher3/folder/controller/FolderController;->mFolderBgView:Lcom/android/launcher3/folder/view/FolderBgView;

    const/4 v11, 0x1

    iget v12, p0, Lcom/android/launcher3/folder/controller/FolderController;->mStateTransitionDuration:I

    const/4 v13, 0x1

    invoke-virtual {v10, v11, v12, v13}, Lcom/android/launcher3/folder/view/FolderBgView;->showHelpForEdit(ZIZ)V

    .line 242
    .end local v1    # "completed":Z
    :cond_7
    :goto_2
    iget-object v10, p0, Lcom/android/launcher3/folder/controller/FolderController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v10}, Lcom/android/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v11

    iget v10, p0, Lcom/android/launcher3/folder/controller/FolderController;->mState:I

    const/4 v12, 0x2

    if-eq v10, v12, :cond_8

    iget v10, p0, Lcom/android/launcher3/folder/controller/FolderController;->mState:I

    const/4 v12, 0x3

    if-eq v10, v12, :cond_8

    iget-object v10, p0, Lcom/android/launcher3/folder/controller/FolderController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    if-eqz v10, :cond_15

    iget-object v10, p0, Lcom/android/launcher3/folder/controller/FolderController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    .line 243
    invoke-virtual {v10}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->isMultiSelectMode()Z

    move-result v10

    if-eqz v10, :cond_15

    :cond_8
    const/4 v10, 0x1

    .line 242
    :goto_3
    invoke-static {v11, v10}, Lcom/android/launcher3/Utilities;->hideStatusBar(Landroid/view/Window;Z)V

    .line 244
    invoke-static {}, Lcom/android/launcher3/Utilities;->isMobileKeyboardMode()Z

    move-result v10

    if-nez v10, :cond_9

    .line 245
    iget-object v10, p0, Lcom/android/launcher3/folder/controller/FolderController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v10}, Lcom/android/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v11

    iget v10, p0, Lcom/android/launcher3/folder/controller/FolderController;->mState:I

    const/4 v12, 0x2

    if-ne v10, v12, :cond_16

    const/4 v10, 0x1

    :goto_4
    invoke-static {v11, v10}, Lcom/android/launcher3/Utilities;->hideNavigationBar(Landroid/view/Window;Z)V

    .line 248
    :cond_9
    sget-object v10, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    invoke-virtual {v10}, Lcom/android/launcher3/util/Talk;->isAccessibilityEnabled()Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-static {}, Lcom/android/launcher3/util/TestHelper;->isRoboUnitTest()Z

    move-result v10

    if-nez v10, :cond_a

    if-eqz v3, :cond_a

    .line 249
    new-instance v10, Lcom/android/launcher3/folder/controller/FolderController$3;

    invoke-direct {v10, p0}, Lcom/android/launcher3/folder/controller/FolderController$3;-><init>(Lcom/android/launcher3/folder/controller/FolderController;)V

    invoke-virtual {v3, v10}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 259
    :cond_a
    const/4 v10, 0x0

    iput v10, p0, Lcom/android/launcher3/folder/controller/FolderController;->mFolderCloseReason:I

    .line 261
    return-object v3

    .line 160
    .restart local v0    # "addToFolderItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    .restart local v4    # "folder":Lcom/android/launcher3/folder/view/FolderView;
    .restart local v5    # "folderIconView":Lcom/android/launcher3/folder/view/FolderIconView;
    .restart local v7    # "fromViewMode":I
    .restart local v8    # "layerViews":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/View;Ljava/lang/Integer;>;"
    :cond_b
    const/4 v10, 0x6

    if-ne v7, v10, :cond_e

    .line 161
    invoke-virtual {v4}, Lcom/android/launcher3/folder/view/FolderView;->getInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v10

    iget-boolean v10, v10, Lcom/android/launcher3/folder/FolderInfo;->opened:Z

    if-nez v10, :cond_c

    .line 162
    invoke-virtual {p1}, Lcom/android/launcher3/common/stage/StageEntry;->getInternalStateTo()I

    move-result v10

    invoke-direct {p0, v10}, Lcom/android/launcher3/folder/controller/FolderController;->getAdjustedInternalState(I)I

    move-result v10

    iput v10, p0, Lcom/android/launcher3/folder/controller/FolderController;->mState:I

    .line 163
    invoke-direct {p0, v4}, Lcom/android/launcher3/folder/controller/FolderController;->onOpenFolder(Lcom/android/launcher3/folder/view/FolderView;)V

    .line 164
    const/4 v10, 0x4

    invoke-virtual {v4, v10}, Lcom/android/launcher3/folder/view/FolderView;->setVisibility(I)V

    .line 165
    invoke-virtual {v4, v3}, Lcom/android/launcher3/folder/view/FolderView;->onOpen(Landroid/animation/Animator;)V

    .line 167
    :cond_c
    if-eqz v0, :cond_d

    .line 168
    iget-object v10, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v10, v0}, Lcom/android/launcher3/folder/view/FolderIconView;->addItems(Ljava/util/ArrayList;)V

    .line 170
    :cond_d
    iget-object v10, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTransitionAnimation:Lcom/android/launcher3/folder/FolderTransitionAnimation;

    invoke-virtual {v10, v4, v0}, Lcom/android/launcher3/folder/FolderTransitionAnimation;->getEnterFromFolderAddAppsAnimation(Lcom/android/launcher3/folder/view/FolderView;Ljava/util/ArrayList;)Landroid/animation/Animator;

    move-result-object v3

    goto/16 :goto_0

    .line 171
    :cond_e
    const/4 v10, 0x3

    if-ne v7, v10, :cond_4

    .line 172
    iget-object v10, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTransitionAnimation:Lcom/android/launcher3/folder/FolderTransitionAnimation;

    invoke-virtual {v10, v4}, Lcom/android/launcher3/folder/FolderTransitionAnimation;->getEnterFromWidgetAnimation(Lcom/android/launcher3/folder/view/FolderView;)Landroid/animation/Animator;

    move-result-object v3

    .line 173
    invoke-virtual {v4}, Lcom/android/launcher3/folder/view/FolderView;->getInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v10

    iget-wide v10, v10, Lcom/android/launcher3/folder/FolderInfo;->container:J

    const-wide/16 v12, -0x66

    cmp-long v10, v10, v12

    if-nez v10, :cond_4

    .line 174
    if-eqz v3, :cond_f

    .line 175
    new-instance v10, Lcom/android/launcher3/folder/controller/FolderController$1;

    invoke-direct {v10, p0}, Lcom/android/launcher3/folder/controller/FolderController$1;-><init>(Lcom/android/launcher3/folder/controller/FolderController;)V

    invoke-virtual {v3, v10}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto/16 :goto_0

    .line 188
    :cond_f
    iget-object v10, p0, Lcom/android/launcher3/folder/controller/FolderController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v10}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v2

    .line 189
    .local v2, "dragLayer":Lcom/android/launcher3/common/view/DragLayer;
    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {v2, v10}, Lcom/android/launcher3/common/view/DragLayer;->setBackgroundImageAlpha(F)V

    goto/16 :goto_0

    .line 197
    .end local v2    # "dragLayer":Lcom/android/launcher3/common/view/DragLayer;
    :cond_10
    const/4 v10, 0x2

    if-ne v7, v10, :cond_11

    .line 198
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/launcher3/LauncherAppState;->getTopViewChangedMessageHandler()Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;

    move-result-object v10

    const/4 v11, 0x4

    .line 199
    invoke-virtual {v10, v11}, Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;->sendMessage(I)V

    goto/16 :goto_1

    .line 200
    :cond_11
    const/4 v10, 0x6

    if-ne v7, v10, :cond_5

    .line 201
    iget-object v10, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v10}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v10

    iget-wide v10, v10, Lcom/android/launcher3/folder/FolderInfo;->container:J

    const-wide/16 v12, -0x64

    cmp-long v10, v10, v12

    if-nez v10, :cond_12

    .line 202
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/launcher3/LauncherAppState;->getTopViewChangedMessageHandler()Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;

    move-result-object v10

    const/4 v11, 0x3

    .line 203
    invoke-virtual {v10, v11}, Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;->sendMessage(I)V

    goto/16 :goto_1

    .line 204
    :cond_12
    iget-object v10, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v10}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v10

    iget-wide v10, v10, Lcom/android/launcher3/folder/FolderInfo;->container:J

    const-wide/16 v12, -0x66

    cmp-long v10, v10, v12

    if-nez v10, :cond_5

    .line 205
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/launcher3/LauncherAppState;->getTopViewChangedMessageHandler()Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;

    move-result-object v10

    const/4 v11, 0x4

    .line 206
    invoke-virtual {v10, v11}, Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;->sendMessage(I)V

    goto/16 :goto_1

    .line 227
    .end local v0    # "addToFolderItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    .end local v4    # "folder":Lcom/android/launcher3/folder/view/FolderView;
    .end local v5    # "folderIconView":Lcom/android/launcher3/folder/view/FolderIconView;
    .end local v7    # "fromViewMode":I
    .end local v8    # "layerViews":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/View;Ljava/lang/Integer;>;"
    .restart local v1    # "completed":Z
    :cond_13
    if-eqz v3, :cond_7

    .line 228
    new-instance v10, Lcom/android/launcher3/folder/controller/FolderController$2;

    invoke-direct {v10, p0}, Lcom/android/launcher3/folder/controller/FolderController$2;-><init>(Lcom/android/launcher3/folder/controller/FolderController;)V

    invoke-virtual {v3, v10}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto/16 :goto_2

    .line 238
    .end local v1    # "completed":Z
    :cond_14
    iget-object v10, p0, Lcom/android/launcher3/folder/controller/FolderController;->mFolderBgView:Lcom/android/launcher3/folder/view/FolderBgView;

    const/4 v11, 0x0

    iget v12, p0, Lcom/android/launcher3/folder/controller/FolderController;->mStateTransitionDuration:I

    const/4 v13, 0x1

    invoke-virtual {v10, v11, v12, v13}, Lcom/android/launcher3/folder/view/FolderBgView;->showHelpForEdit(ZIZ)V

    goto/16 :goto_2

    .line 243
    :cond_15
    const/4 v10, 0x0

    goto/16 :goto_3

    .line 245
    :cond_16
    const/4 v10, 0x0

    goto/16 :goto_4
.end method

.method protected onStageExit(Lcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/Animator;
    .locals 16
    .param p1, "data"    # Lcom/android/launcher3/common/stage/StageEntry;

    .prologue
    .line 266
    const-string v12, "FolderController"

    const-string v13, "onStageExit()"

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/folder/controller/FolderController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v12}, Lcom/android/launcher3/Utilities;->closeDialog(Landroid/app/Activity;)V

    .line 269
    const/4 v4, 0x0

    .line 270
    .local v4, "exitAnim":Landroid/animation/Animator;
    if-eqz p1, :cond_9

    .line 271
    move-object/from16 v0, p1

    iget v11, v0, Lcom/android/launcher3/common/stage/StageEntry;->toStage:I

    .line 272
    .local v11, "toViewMode":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/common/stage/StageEntry;->getLayerViews()Ljava/util/HashMap;

    move-result-object v7

    .line 273
    .local v7, "layerViews":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/View;Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    .line 274
    .local v5, "folder":Lcom/android/launcher3/folder/view/FolderView;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/folder/controller/FolderController;->mSearchedAppInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v12, :cond_0

    .line 275
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher3/folder/controller/FolderController;->mSearchedAppInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    .line 277
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v12, :cond_1

    .line 278
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v12}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderView()Lcom/android/launcher3/folder/view/FolderView;

    move-result-object v5

    .line 281
    :cond_1
    if-eqz v5, :cond_8

    .line 282
    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v7, v5, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v12}, Lcom/android/launcher3/folder/view/FolderIconView;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    if-eqz v12, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    .line 285
    invoke-virtual {v12}, Lcom/android/launcher3/folder/view/FolderIconView;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    invoke-interface {v12}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    if-eqz v12, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    .line 286
    invoke-virtual {v12}, Lcom/android/launcher3/folder/view/FolderIconView;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    invoke-interface {v12}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    invoke-interface {v12}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    if-nez v12, :cond_a

    :cond_2
    const/4 v6, 0x1

    .line 287
    .local v6, "folderIconViewRemoved":Z
    :goto_0
    if-nez v6, :cond_3

    .line 288
    const-string v12, "KEY_FOLDER_ICON_VIEW"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Lcom/android/launcher3/common/stage/StageEntry;->putExtras(Ljava/lang/String;Ljava/lang/Object;)V

    .line 291
    :cond_3
    const/4 v12, 0x1

    if-eq v11, v12, :cond_4

    const/4 v12, 0x2

    if-ne v11, v12, :cond_10

    .line 292
    :cond_4
    const/4 v12, 0x1

    if-ne v11, v12, :cond_5

    .line 293
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher3/folder/controller/FolderController;->mBackupBackgroundAlpha:F

    .line 294
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher3/folder/controller/FolderController;->mBackupBlurAmount:F

    .line 296
    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/launcher3/folder/controller/FolderController;->onCloseFolder(Lcom/android/launcher3/folder/view/FolderView;)V

    .line 298
    move-object/from16 v0, p1

    iget v12, v0, Lcom/android/launcher3/common/stage/StageEntry;->stageCountOnFinishAllStage:I

    const/4 v13, 0x2

    if-gt v12, v13, :cond_6

    move-object/from16 v0, p1

    iget-boolean v12, v0, Lcom/android/launcher3/common/stage/StageEntry;->broughtToHome:Z

    if-eqz v12, :cond_d

    .line 299
    :cond_6
    const-string v12, "KEY_SUPPRESS_CHANGE_STAGE_ONCE"

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Lcom/android/launcher3/common/stage/StageEntry;->getExtras(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-lez v12, :cond_b

    const/4 v10, 0x1

    .line 300
    .local v10, "suppressChangeStageOnce":Z
    :goto_1
    if-eqz v10, :cond_c

    const/4 v12, 0x4

    :goto_2
    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher3/folder/controller/FolderController;->mFolderCloseReason:I

    .line 301
    const/4 v12, 0x0

    invoke-virtual {v5, v12}, Lcom/android/launcher3/folder/view/FolderView;->onClose(Landroid/animation/Animator;)V

    .line 307
    .end local v10    # "suppressChangeStageOnce":Z
    :goto_3
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/launcher3/folder/controller/FolderController;->mFolderCloseReason:I

    if-nez v12, :cond_7

    .line 308
    const/4 v12, 0x4

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher3/folder/controller/FolderController;->mFolderCloseReason:I

    .line 310
    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/folder/controller/FolderController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v12}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 311
    .local v8, "res":Landroid/content/res/Resources;
    invoke-virtual {v5}, Lcom/android/launcher3/folder/view/FolderView;->getInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/launcher3/folder/FolderInfo;->isContainApps()Z

    move-result v12

    if-eqz v12, :cond_e

    const v12, 0x7f080179

    .line 312
    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 313
    .local v9, "screenID":Ljava/lang/String;
    :goto_4
    const v12, 0x7f080106

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 314
    .local v3, "eventID":Ljava/lang/String;
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher3/folder/controller/FolderController;->mFolderCloseReason:I

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v9, v3, v13}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    move-object v1, v5

    .line 317
    .local v1, "closedFolder":Lcom/android/launcher3/folder/view/FolderView;
    if-eqz v4, :cond_f

    .line 318
    new-instance v12, Lcom/android/launcher3/folder/controller/FolderController$4;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v1}, Lcom/android/launcher3/folder/controller/FolderController$4;-><init>(Lcom/android/launcher3/folder/controller/FolderController;Lcom/android/launcher3/folder/view/FolderView;)V

    invoke-virtual {v4, v12}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 343
    .end local v1    # "closedFolder":Lcom/android/launcher3/folder/view/FolderView;
    .end local v3    # "eventID":Ljava/lang/String;
    .end local v6    # "folderIconViewRemoved":Z
    .end local v8    # "res":Landroid/content/res/Resources;
    .end local v9    # "screenID":Ljava/lang/String;
    :cond_8
    :goto_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/folder/controller/FolderController;->mFolderBgView:Lcom/android/launcher3/folder/view/FolderBgView;

    if-eqz v12, :cond_9

    .line 344
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/folder/controller/FolderController;->mFolderBgView:Lcom/android/launcher3/folder/view/FolderBgView;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher3/folder/controller/FolderController;->mStateTransitionDuration:I

    const/4 v15, 0x1

    invoke-virtual {v12, v13, v14, v15}, Lcom/android/launcher3/folder/view/FolderBgView;->showHelpForEdit(ZIZ)V

    .line 348
    .end local v5    # "folder":Lcom/android/launcher3/folder/view/FolderView;
    .end local v7    # "layerViews":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/View;Ljava/lang/Integer;>;"
    .end local v11    # "toViewMode":I
    :cond_9
    return-object v4

    .line 286
    .restart local v5    # "folder":Lcom/android/launcher3/folder/view/FolderView;
    .restart local v7    # "layerViews":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/View;Ljava/lang/Integer;>;"
    .restart local v11    # "toViewMode":I
    :cond_a
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 299
    .restart local v6    # "folderIconViewRemoved":Z
    :cond_b
    const/4 v10, 0x0

    goto :goto_1

    .line 300
    .restart local v10    # "suppressChangeStageOnce":Z
    :cond_c
    const/4 v12, 0x3

    goto :goto_2

    .line 303
    .end local v10    # "suppressChangeStageOnce":Z
    :cond_d
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/folder/controller/FolderController;->mTransitionAnimation:Lcom/android/launcher3/folder/FolderTransitionAnimation;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v12, v5, v13}, Lcom/android/launcher3/folder/FolderTransitionAnimation;->getExitToHomeOrAppsAnimation(Lcom/android/launcher3/folder/view/FolderView;Lcom/android/launcher3/folder/view/FolderIconView;)Landroid/animation/Animator;

    move-result-object v4

    .line 304
    invoke-virtual {v5, v4}, Lcom/android/launcher3/folder/view/FolderView;->onClose(Landroid/animation/Animator;)V

    goto :goto_3

    .line 312
    .restart local v8    # "res":Landroid/content/res/Resources;
    :cond_e
    const v12, 0x7f080185

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_4

    .line 331
    .restart local v1    # "closedFolder":Lcom/android/launcher3/folder/view/FolderView;
    .restart local v3    # "eventID":Ljava/lang/String;
    .restart local v9    # "screenID":Ljava/lang/String;
    :cond_f
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/android/launcher3/folder/view/FolderIconView;->setVisibility(I)V

    .line 332
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/launcher3/folder/controller/FolderController;->onCloseComplete(Lcom/android/launcher3/folder/view/FolderView;)V

    goto :goto_5

    .line 334
    .end local v1    # "closedFolder":Lcom/android/launcher3/folder/view/FolderView;
    .end local v3    # "eventID":Ljava/lang/String;
    .end local v8    # "res":Landroid/content/res/Resources;
    .end local v9    # "screenID":Ljava/lang/String;
    :cond_10
    const/4 v12, 0x6

    if-ne v11, v12, :cond_11

    .line 335
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/folder/controller/FolderController;->mTransitionAnimation:Lcom/android/launcher3/folder/FolderTransitionAnimation;

    invoke-virtual {v12, v5}, Lcom/android/launcher3/folder/FolderTransitionAnimation;->getExitToFolderAddAppsAnimation(Lcom/android/launcher3/folder/view/FolderView;)Landroid/animation/Animator;

    move-result-object v4

    goto :goto_5

    .line 336
    :cond_11
    const/4 v12, 0x3

    if-ne v11, v12, :cond_8

    .line 337
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/folder/controller/FolderController;->mTransitionAnimation:Lcom/android/launcher3/folder/FolderTransitionAnimation;

    invoke-virtual {v12, v5}, Lcom/android/launcher3/folder/FolderTransitionAnimation;->getExitToWidgetAnimation(Lcom/android/launcher3/folder/view/FolderView;)Landroid/animation/Animator;

    move-result-object v4

    .line 338
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/folder/controller/FolderController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v12}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v2

    .line 339
    .local v2, "dragLayer":Lcom/android/launcher3/common/view/DragLayer;
    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Lcom/android/launcher3/common/view/DragLayer;->setBackgroundImageAlpha(F)V

    goto :goto_5
.end method

.method protected onStageMovingToInitial(Lcom/android/launcher3/common/stage/StageEntry;)V
    .locals 4
    .param p1, "data"    # Lcom/android/launcher3/common/stage/StageEntry;

    .prologue
    const/4 v3, 0x0

    .line 451
    invoke-direct {p0}, Lcom/android/launcher3/folder/controller/FolderController;->isValidFolder()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 452
    iget-object v1, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderView()Lcom/android/launcher3/folder/view/FolderView;

    move-result-object v0

    .line 453
    .local v0, "openFolder":Lcom/android/launcher3/folder/view/FolderView;
    invoke-direct {p0, v0}, Lcom/android/launcher3/folder/controller/FolderController;->onCloseFolder(Lcom/android/launcher3/folder/view/FolderView;)V

    .line 454
    invoke-direct {p0, v0}, Lcom/android/launcher3/folder/controller/FolderController;->detachFolderFromDragLayer(Lcom/android/launcher3/folder/view/FolderView;)V

    .line 455
    invoke-virtual {v0, v3}, Lcom/android/launcher3/folder/view/FolderView;->onClose(Landroid/animation/Animator;)V

    .line 456
    iget-object v1, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/launcher3/folder/view/FolderIconView;->setVisibility(I)V

    .line 457
    iput-object v3, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    .line 459
    .end local v0    # "openFolder":Lcom/android/launcher3/folder/view/FolderView;
    :cond_0
    return-void
.end method

.method public setSearchedAppInfo(Lcom/android/launcher3/common/base/item/IconInfo;)V
    .locals 0
    .param p1, "info"    # Lcom/android/launcher3/common/base/item/IconInfo;

    .prologue
    .line 829
    iput-object p1, p0, Lcom/android/launcher3/folder/controller/FolderController;->mSearchedAppInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    .line 830
    return-void
.end method

.method public setup()V
    .locals 3

    .prologue
    .line 96
    new-instance v0, Lcom/android/launcher3/folder/FolderTransitionAnimation;

    iget-object v1, p0, Lcom/android/launcher3/folder/controller/FolderController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v0, v1}, Lcom/android/launcher3/folder/FolderTransitionAnimation;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTransitionAnimation:Lcom/android/launcher3/folder/FolderTransitionAnimation;

    .line 97
    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mBgDrakenAlpha:F

    .line 98
    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0027

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mStateTransitionDuration:I

    .line 100
    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mLauncher:Lcom/android/launcher3/Launcher;

    const v1, 0x7f030021

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/folder/view/FolderBgView;

    iput-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mFolderBgView:Lcom/android/launcher3/folder/view/FolderBgView;

    .line 102
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/folder/controller/FolderProxyCallbacksImpl;

    invoke-direct {v1, p0}, Lcom/android/launcher3/folder/controller/FolderProxyCallbacksImpl;-><init>(Lcom/android/launcher3/folder/controller/FolderController;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/proxy/LauncherProxy;->setFolderProxyCallbacks(Lcom/android/launcher3/proxy/FolderProxyCallbacks;)V

    .line 103
    return-void
.end method

.method protected switchInternalState(Lcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/Animator;
    .locals 14
    .param p1, "data"    # Lcom/android/launcher3/common/stage/StageEntry;

    .prologue
    const/4 v13, 0x3

    const/4 v8, 0x0

    const/4 v12, 0x2

    const/4 v9, 0x1

    .line 369
    invoke-virtual {p1}, Lcom/android/launcher3/common/stage/StageEntry;->getInternalStateFrom()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/launcher3/folder/controller/FolderController;->getAdjustedInternalState(I)I

    move-result v3

    .line 370
    .local v3, "fromState":I
    invoke-virtual {p1}, Lcom/android/launcher3/common/stage/StageEntry;->getInternalStateTo()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/launcher3/folder/controller/FolderController;->getAdjustedInternalState(I)I

    move-result v6

    iput v6, p0, Lcom/android/launcher3/folder/controller/FolderController;->mState:I

    .line 371
    .local v6, "toState":I
    iget-boolean v0, p1, Lcom/android/launcher3/common/stage/StageEntry;->enableAnimation:Z

    .line 372
    .local v0, "animated":Z
    const/4 v5, 0x0

    .line 374
    .local v5, "stateChangeAnim":Landroid/animation/Animator;
    const/4 v2, 0x0

    .line 375
    .local v2, "folder":Lcom/android/launcher3/folder/view/FolderView;
    iget-object v7, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v7, :cond_1

    .line 376
    iget-object v7, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v7}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderView()Lcom/android/launcher3/folder/view/FolderView;

    move-result-object v2

    .line 378
    if-eq v6, v12, :cond_0

    if-ne v6, v13, :cond_7

    .line 379
    :cond_0
    invoke-virtual {v2, v9}, Lcom/android/launcher3/folder/view/FolderView;->hideAddButton(Z)V

    .line 380
    invoke-virtual {v2, v9}, Lcom/android/launcher3/folder/view/FolderView;->setCrosshairsVisibility(Z)V

    .line 381
    if-ne v6, v12, :cond_1

    .line 382
    invoke-virtual {v2}, Lcom/android/launcher3/folder/view/FolderView;->showHintPages()V

    .line 383
    invoke-virtual {v2, v9}, Lcom/android/launcher3/folder/view/FolderView;->setDragInProgress(Z)V

    .line 392
    :cond_1
    :goto_0
    if-eqz v3, :cond_2

    if-ne v3, v9, :cond_9

    .line 393
    :cond_2
    if-ne v6, v12, :cond_8

    .line 394
    iget-object v7, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTransitionAnimation:Lcom/android/launcher3/folder/FolderTransitionAnimation;

    invoke-virtual {v7, v0, v2, v9}, Lcom/android/launcher3/folder/FolderTransitionAnimation;->getDragAnimation(ZLcom/android/launcher3/folder/view/FolderView;Z)Landroid/animation/AnimatorSet;

    move-result-object v5

    .line 421
    :cond_3
    :goto_1
    iget-object v7, p0, Lcom/android/launcher3/folder/controller/FolderController;->mFolderBgView:Lcom/android/launcher3/folder/view/FolderBgView;

    if-eqz v7, :cond_4

    .line 422
    if-ne v6, v12, :cond_e

    .line 423
    invoke-direct {p0}, Lcom/android/launcher3/folder/controller/FolderController;->setupFolderBgLayout()Z

    move-result v1

    .line 424
    .local v1, "completed":Z
    if-eqz v1, :cond_4

    .line 425
    iget-object v7, p0, Lcom/android/launcher3/folder/controller/FolderController;->mFolderBgView:Lcom/android/launcher3/folder/view/FolderBgView;

    iget v10, p0, Lcom/android/launcher3/folder/controller/FolderController;->mStateTransitionDuration:I

    invoke-virtual {v7, v9, v10, v9}, Lcom/android/launcher3/folder/view/FolderBgView;->showHelpForEdit(ZIZ)V

    .line 434
    .end local v1    # "completed":Z
    :cond_4
    :goto_2
    iget-object v7, p0, Lcom/android/launcher3/folder/controller/FolderController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher3/Launcher;->isFolderStage()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 435
    iget-object v7, p0, Lcom/android/launcher3/folder/controller/FolderController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v10

    iget v7, p0, Lcom/android/launcher3/folder/controller/FolderController;->mState:I

    if-eq v7, v12, :cond_5

    iget v7, p0, Lcom/android/launcher3/folder/controller/FolderController;->mState:I

    if-eq v7, v13, :cond_5

    iget-object v7, p0, Lcom/android/launcher3/folder/controller/FolderController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    if-eqz v7, :cond_f

    iget-object v7, p0, Lcom/android/launcher3/folder/controller/FolderController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    .line 436
    invoke-virtual {v7}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->isMultiSelectMode()Z

    move-result v7

    if-eqz v7, :cond_f

    :cond_5
    move v7, v9

    .line 435
    :goto_3
    invoke-static {v10, v7}, Lcom/android/launcher3/Utilities;->hideStatusBar(Landroid/view/Window;Z)V

    .line 437
    invoke-static {}, Lcom/android/launcher3/Utilities;->isMobileKeyboardMode()Z

    move-result v7

    if-nez v7, :cond_6

    .line 438
    iget-object v7, p0, Lcom/android/launcher3/folder/controller/FolderController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v7

    iget v10, p0, Lcom/android/launcher3/folder/controller/FolderController;->mState:I

    if-ne v10, v12, :cond_10

    :goto_4
    invoke-static {v7, v9}, Lcom/android/launcher3/Utilities;->hideNavigationBar(Landroid/view/Window;Z)V

    .line 442
    :cond_6
    return-object v5

    .line 386
    :cond_7
    invoke-virtual {v2, v9}, Lcom/android/launcher3/folder/view/FolderView;->showAddButton(Z)V

    .line 387
    invoke-virtual {v2}, Lcom/android/launcher3/folder/view/FolderView;->hideHintPages()V

    .line 388
    invoke-virtual {v2, v8}, Lcom/android/launcher3/folder/view/FolderView;->setCrosshairsVisibility(Z)V

    goto :goto_0

    .line 395
    :cond_8
    if-ne v6, v13, :cond_3

    .line 396
    iget-object v7, p0, Lcom/android/launcher3/folder/controller/FolderController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/launcher3/folder/controller/FolderController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v7}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->isMultiSelectMode()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 397
    iget-object v7, p0, Lcom/android/launcher3/folder/controller/FolderController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v7}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->getMultiSelectPanel()Lcom/android/launcher3/common/multiselect/MultiSelectPanel;

    move-result-object v4

    .line 398
    .local v4, "panel":Landroid/view/View;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_3

    .line 399
    iget-object v7, p0, Lcom/android/launcher3/folder/controller/FolderController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v7, v9, v9}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->showMultiSelectPanel(ZZ)V

    goto :goto_1

    .line 403
    .end local v4    # "panel":Landroid/view/View;
    :cond_9
    if-ne v3, v12, :cond_a

    .line 404
    if-ne v6, v9, :cond_3

    .line 405
    iget-object v7, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTransitionAnimation:Lcom/android/launcher3/folder/FolderTransitionAnimation;

    invoke-virtual {v7, v0, v2, v8}, Lcom/android/launcher3/folder/FolderTransitionAnimation;->getDragAnimation(ZLcom/android/launcher3/folder/view/FolderView;Z)Landroid/animation/AnimatorSet;

    move-result-object v5

    goto/16 :goto_1

    .line 407
    :cond_a
    if-ne v3, v13, :cond_3

    .line 408
    if-ne v6, v9, :cond_d

    .line 409
    const/4 v5, 0x0

    .line 414
    :cond_b
    :goto_5
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFolderSelect()Z

    move-result v7

    if-nez v7, :cond_c

    iget-object v7, p0, Lcom/android/launcher3/folder/controller/FolderController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher3/Launcher;->isFolderStage()Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_c
    iget-object v7, p0, Lcom/android/launcher3/folder/controller/FolderController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/launcher3/folder/controller/FolderController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    .line 415
    invoke-virtual {v7}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->isMultiSelectMode()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 416
    iget-object v7, p0, Lcom/android/launcher3/folder/controller/FolderController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v7, v8, v9}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->showMultiSelectPanel(ZZ)V

    .line 417
    iget-object v7, p0, Lcom/android/launcher3/folder/controller/FolderController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v7, v8, v9}, Lcom/android/launcher3/Launcher;->onChangeSelectMode(ZZ)V

    goto/16 :goto_1

    .line 410
    :cond_d
    if-ne v6, v12, :cond_b

    .line 411
    iget-object v7, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTransitionAnimation:Lcom/android/launcher3/folder/FolderTransitionAnimation;

    invoke-virtual {v7, v0, v2, v9}, Lcom/android/launcher3/folder/FolderTransitionAnimation;->getDragAnimation(ZLcom/android/launcher3/folder/view/FolderView;Z)Landroid/animation/AnimatorSet;

    move-result-object v5

    goto :goto_5

    .line 430
    :cond_e
    iget-object v7, p0, Lcom/android/launcher3/folder/controller/FolderController;->mFolderBgView:Lcom/android/launcher3/folder/view/FolderBgView;

    iget v10, p0, Lcom/android/launcher3/folder/controller/FolderController;->mStateTransitionDuration:I

    iget-object v11, p0, Lcom/android/launcher3/folder/controller/FolderController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v11}, Lcom/android/launcher3/Launcher;->isFolderStage()Z

    move-result v11

    invoke-virtual {v7, v8, v10, v11}, Lcom/android/launcher3/folder/view/FolderBgView;->showHelpForEdit(ZIZ)V

    goto/16 :goto_2

    :cond_f
    move v7, v8

    .line 436
    goto/16 :goto_3

    :cond_10
    move v9, v8

    .line 438
    goto/16 :goto_4
.end method

.method public updateCheckBox(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    .line 752
    invoke-direct {p0}, Lcom/android/launcher3/folder/controller/FolderController;->isValidFolder()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 753
    iget-object v1, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderView()Lcom/android/launcher3/folder/view/FolderView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderView;->getContent()Lcom/android/launcher3/folder/view/FolderPagedView;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/launcher3/folder/view/FolderPagedView;->updateCheckBox(Z)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderItems:Ljava/util/ArrayList;

    .line 761
    :cond_0
    return-void

    .line 755
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 756
    .local v0, "view":Landroid/view/View;
    instance-of v2, v0, Lcom/android/launcher3/common/view/IconView;

    if-eqz v2, :cond_2

    .line 757
    check-cast v0, Lcom/android/launcher3/common/view/IconView;

    .end local v0    # "view":Landroid/view/View;
    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/view/IconView;->updateCheckBox(Z)V

    goto :goto_0
.end method
