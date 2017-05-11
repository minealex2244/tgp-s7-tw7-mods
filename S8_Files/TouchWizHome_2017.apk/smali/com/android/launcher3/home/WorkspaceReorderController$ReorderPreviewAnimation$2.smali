.class Lcom/android/launcher3/home/WorkspaceReorderController$ReorderPreviewAnimation$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "WorkspaceReorderController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/WorkspaceReorderController$ReorderPreviewAnimation;->animate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher3/home/WorkspaceReorderController$ReorderPreviewAnimation;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/WorkspaceReorderController$ReorderPreviewAnimation;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/launcher3/home/WorkspaceReorderController$ReorderPreviewAnimation;

    .prologue
    .line 976
    iput-object p1, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ReorderPreviewAnimation$2;->this$1:Lcom/android/launcher3/home/WorkspaceReorderController$ReorderPreviewAnimation;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v1, 0x0

    .line 979
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ReorderPreviewAnimation$2;->this$1:Lcom/android/launcher3/home/WorkspaceReorderController$ReorderPreviewAnimation;

    iput v1, v0, Lcom/android/launcher3/home/WorkspaceReorderController$ReorderPreviewAnimation;->initDeltaX:F

    .line 980
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ReorderPreviewAnimation$2;->this$1:Lcom/android/launcher3/home/WorkspaceReorderController$ReorderPreviewAnimation;

    iput v1, v0, Lcom/android/launcher3/home/WorkspaceReorderController$ReorderPreviewAnimation;->initDeltaY:F

    .line 981
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ReorderPreviewAnimation$2;->this$1:Lcom/android/launcher3/home/WorkspaceReorderController$ReorderPreviewAnimation;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher3/home/WorkspaceReorderController$ReorderPreviewAnimation;->repeating:Z

    .line 982
    return-void
.end method
