.class Lcom/android/launcher3/appspicker/controller/AppsPickerController$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AppsPickerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/appspicker/controller/AppsPickerController;->onStageExit(Lcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/appspicker/controller/AppsPickerController;

.field final synthetic val$data:Lcom/android/launcher3/common/stage/StageEntry;


# direct methods
.method constructor <init>(Lcom/android/launcher3/appspicker/controller/AppsPickerController;Lcom/android/launcher3/common/stage/StageEntry;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/appspicker/controller/AppsPickerController;

    .prologue
    .line 306
    iput-object p1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController$4;->this$0:Lcom/android/launcher3/appspicker/controller/AppsPickerController;

    iput-object p2, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController$4;->val$data:Lcom/android/launcher3/common/stage/StageEntry;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 322
    invoke-virtual {p0, p1}, Lcom/android/launcher3/appspicker/controller/AppsPickerController$4;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 323
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController$4;->this$0:Lcom/android/launcher3/appspicker/controller/AppsPickerController;

    # getter for: Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mContainerView:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;
    invoke-static {v0}, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->access$000(Lcom/android/launcher3/appspicker/controller/AppsPickerController;)Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController$4;->this$0:Lcom/android/launcher3/appspicker/controller/AppsPickerController;

    # getter for: Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mContainerView:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;
    invoke-static {v0}, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->access$000(Lcom/android/launcher3/appspicker/controller/AppsPickerController;)Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->setVisibility(I)V

    .line 311
    iget-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController$4;->this$0:Lcom/android/launcher3/appspicker/controller/AppsPickerController;

    # getter for: Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mContainerView:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;
    invoke-static {v0}, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->access$000(Lcom/android/launcher3/appspicker/controller/AppsPickerController;)Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->reset()V

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController$4;->this$0:Lcom/android/launcher3/appspicker/controller/AppsPickerController;

    # getter for: Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mAppsToHideForAllApps:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->access$300(Lcom/android/launcher3/appspicker/controller/AppsPickerController;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 314
    iget-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController$4;->this$0:Lcom/android/launcher3/appspicker/controller/AppsPickerController;

    # getter for: Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mAppsToHideForAllApps:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->access$300(Lcom/android/launcher3/appspicker/controller/AppsPickerController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 316
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController$4;->this$0:Lcom/android/launcher3/appspicker/controller/AppsPickerController;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController$4;->val$data:Lcom/android/launcher3/common/stage/StageEntry;

    # invokes: Lcom/android/launcher3/appspicker/controller/AppsPickerController;->setBackgroundAndStatusbar(ZLcom/android/launcher3/common/stage/StageEntry;)V
    invoke-static {v0, v1, v2}, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->access$400(Lcom/android/launcher3/appspicker/controller/AppsPickerController;ZLcom/android/launcher3/common/stage/StageEntry;)V

    .line 317
    iget-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController$4;->this$0:Lcom/android/launcher3/appspicker/controller/AppsPickerController;

    # invokes: Lcom/android/launcher3/appspicker/controller/AppsPickerController;->detachViewFromDragLayer()V
    invoke-static {v0}, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->access$500(Lcom/android/launcher3/appspicker/controller/AppsPickerController;)V

    .line 318
    return-void
.end method
