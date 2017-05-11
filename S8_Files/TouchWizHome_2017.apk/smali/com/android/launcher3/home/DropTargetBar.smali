.class public Lcom/android/launcher3/home/DropTargetBar;
.super Landroid/widget/FrameLayout;
.source "DropTargetBar.java"


# instance fields
.field private mCancelDropTarget:Lcom/android/launcher3/home/CancelDropTarget;

.field private mDragManager:Lcom/android/launcher3/common/drag/DragManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/home/DropTargetBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    return-void
.end method


# virtual methods
.method changeColorForBg(Z)V
    .locals 1
    .param p1, "whiteBg"    # Z

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/launcher3/home/DropTargetBar;->mCancelDropTarget:Lcom/android/launcher3/home/CancelDropTarget;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/home/CancelDropTarget;->changeColorForBg(Z)V

    .line 69
    return-void
.end method

.method onConfigurationChangedIfNeeded()V
    .locals 4

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/android/launcher3/home/DropTargetBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090020

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 73
    .local v1, "newHeight":I
    invoke-virtual {p0}, Lcom/android/launcher3/home/DropTargetBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 74
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 75
    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/DropTargetBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    iget-object v2, p0, Lcom/android/launcher3/home/DropTargetBar;->mCancelDropTarget:Lcom/android/launcher3/home/CancelDropTarget;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/home/CancelDropTarget;->updateCircleSize(I)V

    .line 78
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 47
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 49
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/DropTargetBar;->setVisibility(I)V

    .line 50
    const v0, 0x7f0f004f

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/DropTargetBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/home/CancelDropTarget;

    iput-object v0, p0, Lcom/android/launcher3/home/DropTargetBar;->mCancelDropTarget:Lcom/android/launcher3/home/CancelDropTarget;

    .line 51
    return-void
.end method

.method setDropTargetBarVisible(Z)V
    .locals 2
    .param p1, "isVisible"    # Z

    .prologue
    .line 54
    if-eqz p1, :cond_0

    .line 55
    iget-object v0, p0, Lcom/android/launcher3/home/DropTargetBar;->mDragManager:Lcom/android/launcher3/common/drag/DragManager;

    iget-object v1, p0, Lcom/android/launcher3/home/DropTargetBar;->mCancelDropTarget:Lcom/android/launcher3/home/CancelDropTarget;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/drag/DragManager;->addDropTarget(Lcom/android/launcher3/common/drag/DropTarget;)V

    .line 59
    :goto_0
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/DropTargetBar;->setVisibility(I)V

    .line 60
    iget-object v0, p0, Lcom/android/launcher3/home/DropTargetBar;->mCancelDropTarget:Lcom/android/launcher3/home/CancelDropTarget;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/home/CancelDropTarget;->setEnable(Z)V

    .line 61
    return-void

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/home/DropTargetBar;->mDragManager:Lcom/android/launcher3/common/drag/DragManager;

    iget-object v1, p0, Lcom/android/launcher3/home/DropTargetBar;->mCancelDropTarget:Lcom/android/launcher3/home/CancelDropTarget;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/drag/DragManager;->removeDropTarget(Lcom/android/launcher3/common/drag/DropTarget;)V

    goto :goto_0

    .line 59
    :cond_1
    const/16 v0, 0x8

    goto :goto_1
.end method

.method setup(Lcom/android/launcher3/common/drag/DragManager;)V
    .locals 2
    .param p1, "dragMgr"    # Lcom/android/launcher3/common/drag/DragManager;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/launcher3/home/DropTargetBar;->mDragManager:Lcom/android/launcher3/common/drag/DragManager;

    .line 42
    iget-object v0, p0, Lcom/android/launcher3/home/DropTargetBar;->mDragManager:Lcom/android/launcher3/common/drag/DragManager;

    iget-object v1, p0, Lcom/android/launcher3/home/DropTargetBar;->mCancelDropTarget:Lcom/android/launcher3/home/CancelDropTarget;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/drag/DragManager;->addDragListener(Lcom/android/launcher3/common/drag/DragManager$DragListener;)V

    .line 43
    return-void
.end method

.method showCancelDropTarget()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/launcher3/home/DropTargetBar;->mCancelDropTarget:Lcom/android/launcher3/home/CancelDropTarget;

    invoke-virtual {v0}, Lcom/android/launcher3/home/CancelDropTarget;->animateCancelDropTarget()V

    .line 65
    return-void
.end method
