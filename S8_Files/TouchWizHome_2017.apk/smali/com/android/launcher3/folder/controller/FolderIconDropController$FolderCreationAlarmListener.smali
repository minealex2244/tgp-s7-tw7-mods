.class Lcom/android/launcher3/folder/controller/FolderIconDropController$FolderCreationAlarmListener;
.super Ljava/lang/Object;
.source "FolderIconDropController.java"

# interfaces
.implements Lcom/android/launcher3/util/alarm/OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/folder/controller/FolderIconDropController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FolderCreationAlarmListener"
.end annotation


# instance fields
.field cellX:I

.field cellY:I

.field layout:Lcom/android/launcher3/common/base/view/CellLayout;

.field final synthetic this$0:Lcom/android/launcher3/folder/controller/FolderIconDropController;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/folder/controller/FolderIconDropController;Lcom/android/launcher3/common/base/view/CellLayout;II)V
    .locals 0
    .param p2, "layout"    # Lcom/android/launcher3/common/base/view/CellLayout;
    .param p3, "cellX"    # I
    .param p4, "cellY"    # I

    .prologue
    .line 611
    iput-object p1, p0, Lcom/android/launcher3/folder/controller/FolderIconDropController$FolderCreationAlarmListener;->this$0:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 612
    iput-object p2, p0, Lcom/android/launcher3/folder/controller/FolderIconDropController$FolderCreationAlarmListener;->layout:Lcom/android/launcher3/common/base/view/CellLayout;

    .line 613
    iput p3, p0, Lcom/android/launcher3/folder/controller/FolderIconDropController$FolderCreationAlarmListener;->cellX:I

    .line 614
    iput p4, p0, Lcom/android/launcher3/folder/controller/FolderIconDropController$FolderCreationAlarmListener;->cellY:I

    .line 615
    return-void
.end method


# virtual methods
.method public onAlarm(Lcom/android/launcher3/util/alarm/Alarm;)V
    .locals 5
    .param p1, "alarm"    # Lcom/android/launcher3/util/alarm/Alarm;

    .prologue
    .line 618
    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderIconDropController$FolderCreationAlarmListener;->this$0:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    # getter for: Lcom/android/launcher3/folder/controller/FolderIconDropController;->mFolderRingAnimator:Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;
    invoke-static {v0}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->access$200(Lcom/android/launcher3/folder/controller/FolderIconDropController;)Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 620
    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderIconDropController$FolderCreationAlarmListener;->this$0:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    # getter for: Lcom/android/launcher3/folder/controller/FolderIconDropController;->mFolderRingAnimator:Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;
    invoke-static {v0}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->access$200(Lcom/android/launcher3/folder/controller/FolderIconDropController;)Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;->animateToNaturalState()V

    .line 622
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderIconDropController$FolderCreationAlarmListener;->this$0:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    new-instance v1, Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;

    iget-object v2, p0, Lcom/android/launcher3/folder/controller/FolderIconDropController$FolderCreationAlarmListener;->this$0:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    # getter for: Lcom/android/launcher3/folder/controller/FolderIconDropController;->mLauncher:Lcom/android/launcher3/Launcher;
    invoke-static {v2}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->access$300(Lcom/android/launcher3/folder/controller/FolderIconDropController;)Lcom/android/launcher3/Launcher;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/launcher3/folder/controller/FolderIconDropController$FolderCreationAlarmListener;->this$0:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    # getter for: Lcom/android/launcher3/folder/controller/FolderIconDropController;->mLayout:Lcom/android/launcher3/common/base/view/CellLayout;
    invoke-static {v4}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->access$400(Lcom/android/launcher3/folder/controller/FolderIconDropController;)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/common/base/view/CellLayout;->getContentIconSize()I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/folder/view/FolderIconView;I)V

    # setter for: Lcom/android/launcher3/folder/controller/FolderIconDropController;->mFolderRingAnimator:Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;
    invoke-static {v0, v1}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->access$202(Lcom/android/launcher3/folder/controller/FolderIconDropController;Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;)Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;

    .line 623
    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderIconDropController$FolderCreationAlarmListener;->this$0:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    # getter for: Lcom/android/launcher3/folder/controller/FolderIconDropController;->mFolderRingAnimator:Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;
    invoke-static {v0}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->access$200(Lcom/android/launcher3/folder/controller/FolderIconDropController;)Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/folder/controller/FolderIconDropController$FolderCreationAlarmListener;->cellX:I

    iget v2, p0, Lcom/android/launcher3/folder/controller/FolderIconDropController$FolderCreationAlarmListener;->cellY:I

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;->setCell(II)V

    .line 624
    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderIconDropController$FolderCreationAlarmListener;->this$0:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    # getter for: Lcom/android/launcher3/folder/controller/FolderIconDropController;->mFolderRingAnimator:Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;
    invoke-static {v0}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->access$200(Lcom/android/launcher3/folder/controller/FolderIconDropController;)Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/folder/controller/FolderIconDropController$FolderCreationAlarmListener;->layout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;->setCellLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V

    .line 625
    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderIconDropController$FolderCreationAlarmListener;->this$0:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    # getter for: Lcom/android/launcher3/folder/controller/FolderIconDropController;->mFolderRingAnimator:Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;
    invoke-static {v0}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->access$200(Lcom/android/launcher3/folder/controller/FolderIconDropController;)Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;->animateToAcceptState()V

    .line 626
    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderIconDropController$FolderCreationAlarmListener;->layout:Lcom/android/launcher3/common/base/view/CellLayout;

    iget-object v1, p0, Lcom/android/launcher3/folder/controller/FolderIconDropController$FolderCreationAlarmListener;->this$0:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    # getter for: Lcom/android/launcher3/folder/controller/FolderIconDropController;->mFolderRingAnimator:Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;
    invoke-static {v1}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->access$200(Lcom/android/launcher3/folder/controller/FolderIconDropController;)Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/base/view/CellLayout;->showFolderAccept(Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;)V

    .line 627
    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderIconDropController$FolderCreationAlarmListener;->layout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->clearDragOutlines()V

    .line 628
    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderIconDropController$FolderCreationAlarmListener;->this$0:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    # invokes: Lcom/android/launcher3/folder/controller/FolderIconDropController;->cleanupAddToFolder()V
    invoke-static {v0}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->access$500(Lcom/android/launcher3/folder/controller/FolderIconDropController;)V

    .line 629
    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderIconDropController$FolderCreationAlarmListener;->this$0:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    # getter for: Lcom/android/launcher3/folder/controller/FolderIconDropController;->mTargetState:Lcom/android/launcher3/common/drag/DragState;
    invoke-static {v0}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->access$600(Lcom/android/launcher3/folder/controller/FolderIconDropController;)Lcom/android/launcher3/common/drag/DragState;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/launcher3/common/drag/DragState;->setDragMode(I)V

    .line 630
    return-void
.end method
