.class Lcom/android/launcher3/folder/controller/FolderController$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FolderController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/folder/controller/FolderController;->onStageExit(Lcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/folder/controller/FolderController;

.field final synthetic val$closedFolder:Lcom/android/launcher3/folder/view/FolderView;


# direct methods
.method constructor <init>(Lcom/android/launcher3/folder/controller/FolderController;Lcom/android/launcher3/folder/view/FolderView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/folder/controller/FolderController;

    .prologue
    .line 318
    iput-object p1, p0, Lcom/android/launcher3/folder/controller/FolderController$4;->this$0:Lcom/android/launcher3/folder/controller/FolderController;

    iput-object p2, p0, Lcom/android/launcher3/folder/controller/FolderController$4;->val$closedFolder:Lcom/android/launcher3/folder/view/FolderView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 327
    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/controller/FolderController$4;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 328
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 321
    sget-object v0, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    const v1, 0x7f080029

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/Talk;->say(I)V

    .line 322
    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController$4;->this$0:Lcom/android/launcher3/folder/controller/FolderController;

    iget-object v1, p0, Lcom/android/launcher3/folder/controller/FolderController$4;->val$closedFolder:Lcom/android/launcher3/folder/view/FolderView;

    # invokes: Lcom/android/launcher3/folder/controller/FolderController;->onCloseComplete(Lcom/android/launcher3/folder/view/FolderView;)V
    invoke-static {v0, v1}, Lcom/android/launcher3/folder/controller/FolderController;->access$600(Lcom/android/launcher3/folder/controller/FolderController;Lcom/android/launcher3/folder/view/FolderView;)V

    .line 323
    return-void
.end method
