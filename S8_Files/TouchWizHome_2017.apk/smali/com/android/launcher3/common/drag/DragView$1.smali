.class Lcom/android/launcher3/common/drag/DragView$1;
.super Ljava/lang/Object;
.source "DragView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/common/drag/DragView;-><init>(Lcom/android/launcher3/Launcher;Landroid/graphics/Bitmap;IIIIIIFFZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/common/drag/DragView;

.field final synthetic val$initialScale:F

.field final synthetic val$scaleFactor:F


# direct methods
.method constructor <init>(Lcom/android/launcher3/common/drag/DragView;FF)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/common/drag/DragView;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/launcher3/common/drag/DragView$1;->this$0:Lcom/android/launcher3/common/drag/DragView;

    iput p2, p0, Lcom/android/launcher3/common/drag/DragView$1;->val$initialScale:F

    iput p3, p0, Lcom/android/launcher3/common/drag/DragView$1;->val$scaleFactor:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 8
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    .line 115
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 116
    .local v2, "value":F
    iget-object v3, p0, Lcom/android/launcher3/common/drag/DragView$1;->this$0:Lcom/android/launcher3/common/drag/DragView;

    # getter for: Lcom/android/launcher3/common/drag/DragView;->mTargetOffsetX:I
    invoke-static {v3}, Lcom/android/launcher3/common/drag/DragView;->access$000(Lcom/android/launcher3/common/drag/DragView;)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v0, v3

    .line 117
    .local v0, "deltaX":I
    iget-object v3, p0, Lcom/android/launcher3/common/drag/DragView$1;->this$0:Lcom/android/launcher3/common/drag/DragView;

    # getter for: Lcom/android/launcher3/common/drag/DragView;->mTargetOffsetY:I
    invoke-static {v3}, Lcom/android/launcher3/common/drag/DragView;->access$100(Lcom/android/launcher3/common/drag/DragView;)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v1, v3

    .line 119
    .local v1, "deltaY":I
    iget-object v3, p0, Lcom/android/launcher3/common/drag/DragView$1;->this$0:Lcom/android/launcher3/common/drag/DragView;

    int-to-float v4, v0

    # setter for: Lcom/android/launcher3/common/drag/DragView;->mOffsetX:F
    invoke-static {v3, v4}, Lcom/android/launcher3/common/drag/DragView;->access$202(Lcom/android/launcher3/common/drag/DragView;F)F

    .line 120
    iget-object v3, p0, Lcom/android/launcher3/common/drag/DragView$1;->this$0:Lcom/android/launcher3/common/drag/DragView;

    int-to-float v4, v1

    # setter for: Lcom/android/launcher3/common/drag/DragView;->mOffsetY:F
    invoke-static {v3, v4}, Lcom/android/launcher3/common/drag/DragView;->access$302(Lcom/android/launcher3/common/drag/DragView;F)F

    .line 121
    iget-object v3, p0, Lcom/android/launcher3/common/drag/DragView$1;->this$0:Lcom/android/launcher3/common/drag/DragView;

    iget v4, p0, Lcom/android/launcher3/common/drag/DragView$1;->val$initialScale:F

    iget v5, p0, Lcom/android/launcher3/common/drag/DragView$1;->val$scaleFactor:F

    iget v6, p0, Lcom/android/launcher3/common/drag/DragView$1;->val$initialScale:F

    sub-float/2addr v5, v6

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/android/launcher3/common/drag/DragView;->setScaleX(F)V

    .line 122
    iget-object v3, p0, Lcom/android/launcher3/common/drag/DragView$1;->this$0:Lcom/android/launcher3/common/drag/DragView;

    iget v4, p0, Lcom/android/launcher3/common/drag/DragView$1;->val$initialScale:F

    iget v5, p0, Lcom/android/launcher3/common/drag/DragView$1;->val$scaleFactor:F

    iget v6, p0, Lcom/android/launcher3/common/drag/DragView$1;->val$initialScale:F

    sub-float/2addr v5, v6

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/android/launcher3/common/drag/DragView;->setScaleY(F)V

    .line 124
    # getter for: Lcom/android/launcher3/common/drag/DragView;->sDragAlpha:F
    invoke-static {}, Lcom/android/launcher3/common/drag/DragView;->access$400()F

    move-result v3

    cmpl-float v3, v3, v7

    if-eqz v3, :cond_0

    .line 125
    iget-object v3, p0, Lcom/android/launcher3/common/drag/DragView$1;->this$0:Lcom/android/launcher3/common/drag/DragView;

    # getter for: Lcom/android/launcher3/common/drag/DragView;->sDragAlpha:F
    invoke-static {}, Lcom/android/launcher3/common/drag/DragView;->access$400()F

    move-result v4

    mul-float/2addr v4, v2

    sub-float v5, v7, v2

    add-float/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/android/launcher3/common/drag/DragView;->setAlpha(F)V

    .line 128
    :cond_0
    iget-object v3, p0, Lcom/android/launcher3/common/drag/DragView$1;->this$0:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v3}, Lcom/android/launcher3/common/drag/DragView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_1

    .line 129
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 134
    :goto_0
    return-void

    .line 131
    :cond_1
    iget-object v3, p0, Lcom/android/launcher3/common/drag/DragView$1;->this$0:Lcom/android/launcher3/common/drag/DragView;

    iget-object v4, p0, Lcom/android/launcher3/common/drag/DragView$1;->this$0:Lcom/android/launcher3/common/drag/DragView;

    # getter for: Lcom/android/launcher3/common/drag/DragView;->mTouchX:I
    invoke-static {v4}, Lcom/android/launcher3/common/drag/DragView;->access$500(Lcom/android/launcher3/common/drag/DragView;)I

    move-result v4

    iget-object v5, p0, Lcom/android/launcher3/common/drag/DragView$1;->this$0:Lcom/android/launcher3/common/drag/DragView;

    # getter for: Lcom/android/launcher3/common/drag/DragView;->mRegistrationX:I
    invoke-static {v5}, Lcom/android/launcher3/common/drag/DragView;->access$600(Lcom/android/launcher3/common/drag/DragView;)I

    move-result v5

    sub-int/2addr v4, v5

    add-int/2addr v4, v0

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/android/launcher3/common/drag/DragView;->setTranslationX(F)V

    .line 132
    iget-object v3, p0, Lcom/android/launcher3/common/drag/DragView$1;->this$0:Lcom/android/launcher3/common/drag/DragView;

    iget-object v4, p0, Lcom/android/launcher3/common/drag/DragView$1;->this$0:Lcom/android/launcher3/common/drag/DragView;

    # getter for: Lcom/android/launcher3/common/drag/DragView;->mTouchY:I
    invoke-static {v4}, Lcom/android/launcher3/common/drag/DragView;->access$700(Lcom/android/launcher3/common/drag/DragView;)I

    move-result v4

    iget-object v5, p0, Lcom/android/launcher3/common/drag/DragView$1;->this$0:Lcom/android/launcher3/common/drag/DragView;

    # getter for: Lcom/android/launcher3/common/drag/DragView;->mRegistrationY:I
    invoke-static {v5}, Lcom/android/launcher3/common/drag/DragView;->access$800(Lcom/android/launcher3/common/drag/DragView;)I

    move-result v5

    sub-int/2addr v4, v5

    add-int/2addr v4, v1

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/android/launcher3/common/drag/DragView;->setTranslationY(F)V

    goto :goto_0
.end method
