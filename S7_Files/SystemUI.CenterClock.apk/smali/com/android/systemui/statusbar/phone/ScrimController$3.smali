.class Lcom/android/systemui/statusbar/phone/ScrimController$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ScrimController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/ScrimController;->startScrimAnimation(Landroid/view/View;F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

.field final synthetic val$scrim:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/ScrimController;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/ScrimController;
    .param p2, "val$scrim"    # Landroid/view/View;

    .prologue
    .line 401
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController$3;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/ScrimController$3;->val$scrim:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    .line 404
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController$3;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->-get1(Lcom/android/systemui/statusbar/phone/ScrimController;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController$3;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->-get1(Lcom/android/systemui/statusbar/phone/ScrimController;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 406
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController$3;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/phone/ScrimController;->-set2(Lcom/android/systemui/statusbar/phone/ScrimController;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 408
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController$3;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->-get0(Lcom/android/systemui/statusbar/phone/ScrimController;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 409
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController$3;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/phone/ScrimController;->-set0(Lcom/android/systemui/statusbar/phone/ScrimController;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 410
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController$3;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->-set1(Lcom/android/systemui/statusbar/phone/ScrimController;Z)Z

    .line 412
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController$3;->val$scrim:Landroid/view/View;

    const v1, 0x7f130035

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 413
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController$3;->val$scrim:Landroid/view/View;

    const v1, 0x7f130036

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 403
    return-void
.end method
