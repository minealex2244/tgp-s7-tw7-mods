.class Lcom/android/keyguard/KeyguardDirectionLockView$11;
.super Ljava/lang/Object;
.source "KeyguardDirectionLockView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardDirectionLockView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardDirectionLockView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardDirectionLockView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/KeyguardDirectionLockView;

    .prologue
    .line 749
    iput-object p1, p0, Lcom/android/keyguard/KeyguardDirectionLockView$11;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 753
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 754
    .local v0, "value":F
    iget-object v1, p0, Lcom/android/keyguard/KeyguardDirectionLockView$11;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardDirectionLockView;->-get7(Lcom/android/keyguard/KeyguardDirectionLockView;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 755
    iget-object v1, p0, Lcom/android/keyguard/KeyguardDirectionLockView$11;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardDirectionLockView;->-get7(Lcom/android/keyguard/KeyguardDirectionLockView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 756
    iget-object v1, p0, Lcom/android/keyguard/KeyguardDirectionLockView$11;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardDirectionLockView;->-get7(Lcom/android/keyguard/KeyguardDirectionLockView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 751
    :cond_0
    return-void
.end method
