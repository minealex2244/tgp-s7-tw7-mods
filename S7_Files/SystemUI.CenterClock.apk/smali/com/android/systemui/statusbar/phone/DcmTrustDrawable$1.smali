.class Lcom/android/systemui/statusbar/phone/DcmTrustDrawable$1;
.super Ljava/lang/Object;
.source "DcmTrustDrawable.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;

    .prologue
    .line 263
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable$1;->this$0:Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 266
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable$1;->this$0:Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->-set0(Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;I)I

    .line 267
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable$1;->this$0:Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->invalidateSelf()V

    .line 265
    return-void
.end method
