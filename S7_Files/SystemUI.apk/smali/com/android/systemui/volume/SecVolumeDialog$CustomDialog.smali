.class final Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;
.super Landroid/app/Dialog;
.source "SecVolumeDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/SecVolumeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CustomDialog"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/SecVolumeDialog;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/SecVolumeDialog;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/volume/SecVolumeDialog;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 2717
    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    .line 2718
    invoke-direct {p0, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 2717
    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 2753
    const/4 v0, 0x1

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 2723
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-virtual {v0}, Lcom/android/systemui/volume/SecVolumeDialog;->rescheduleTimeoutH()V

    .line 2724
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onStop()V
    .locals 4

    .prologue
    .line 2729
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 2730
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog;->-get26(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/VolumeDialogMotion;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/volume/VolumeDialogMotion;->isAnimating()Z

    move-result v0

    .line 2731
    .local v0, "animating":Z
    sget-boolean v1, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v1, :cond_0

    .line 2732
    invoke-static {}, Lcom/android/systemui/volume/SecVolumeDialog;->-get0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onStop animating="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2733
    :cond_0
    if-eqz v0, :cond_1

    .line 2734
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/systemui/volume/SecVolumeDialog;->-set17(Lcom/android/systemui/volume/SecVolumeDialog;Z)Z

    .line 2735
    return-void

    .line 2737
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog;->-get19(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/SecVolumeDialog$H;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/systemui/volume/SecVolumeDialog$H;->sendEmptyMessage(I)Z

    .line 2728
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 2742
    invoke-virtual {p0}, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialog;->-get30(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/SafetyWarningDialog;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2743
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 2744
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-virtual {v0, v2}, Lcom/android/systemui/volume/SecVolumeDialog;->dismissH(I)V

    .line 2745
    return v2

    .line 2748
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
