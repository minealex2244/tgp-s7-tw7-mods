.class Lcom/android/systemui/qs/QSContainer$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "QSContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/QSContainer;->animateHeaderSlidingOut()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSContainer;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSContainer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/QSContainer;

    .prologue
    .line 396
    iput-object p1, p0, Lcom/android/systemui/qs/QSContainer$3;->this$0:Lcom/android/systemui/qs/QSContainer;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 399
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer$3;->this$0:Lcom/android/systemui/qs/QSContainer;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSContainer;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 400
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer$3;->this$0:Lcom/android/systemui/qs/QSContainer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/qs/QSContainer;->-set0(Lcom/android/systemui/qs/QSContainer;Z)Z

    .line 401
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer$3;->this$0:Lcom/android/systemui/qs/QSContainer;

    invoke-static {v0}, Lcom/android/systemui/qs/QSContainer;->-wrap0(Lcom/android/systemui/qs/QSContainer;)V

    .line 398
    return-void
.end method
