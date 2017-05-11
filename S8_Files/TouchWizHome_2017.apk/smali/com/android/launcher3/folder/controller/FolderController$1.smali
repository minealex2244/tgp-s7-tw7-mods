.class Lcom/android/launcher3/folder/controller/FolderController$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FolderController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/folder/controller/FolderController;->onStageEnter(Lcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/folder/controller/FolderController;


# direct methods
.method constructor <init>(Lcom/android/launcher3/folder/controller/FolderController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/folder/controller/FolderController;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/android/launcher3/folder/controller/FolderController$1;->this$0:Lcom/android/launcher3/folder/controller/FolderController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/controller/FolderController$1;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 179
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 183
    iget-object v1, p0, Lcom/android/launcher3/folder/controller/FolderController$1;->this$0:Lcom/android/launcher3/folder/controller/FolderController;

    # getter for: Lcom/android/launcher3/folder/controller/FolderController;->mLauncher:Lcom/android/launcher3/Launcher;
    invoke-static {v1}, Lcom/android/launcher3/folder/controller/FolderController;->access$000(Lcom/android/launcher3/folder/controller/FolderController;)Lcom/android/launcher3/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v0

    .line 184
    .local v0, "dragLayer":Lcom/android/launcher3/common/view/DragLayer;
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/view/DragLayer;->setBackgroundImageAlpha(F)V

    .line 185
    return-void
.end method
