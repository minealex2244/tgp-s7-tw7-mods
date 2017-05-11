.class Lcom/samsung/android/glview/GLSlider$2;
.super Ljava/lang/Object;
.source "GLSlider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/glview/GLSlider;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/glview/GLSlider;

.field final synthetic val$nearestId:I


# direct methods
.method constructor <init>(Lcom/samsung/android/glview/GLSlider;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/glview/GLSlider;

    .prologue
    .line 538
    iput-object p1, p0, Lcom/samsung/android/glview/GLSlider$2;->this$0:Lcom/samsung/android/glview/GLSlider;

    iput p2, p0, Lcom/samsung/android/glview/GLSlider$2;->val$nearestId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const v6, 0x3dcccccd    # 0.1f

    const/4 v5, 0x0

    .line 541
    iget-object v1, p0, Lcom/samsung/android/glview/GLSlider$2;->this$0:Lcom/samsung/android/glview/GLSlider;

    iget-object v1, v1, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->y:F

    iget-object v1, p0, Lcom/samsung/android/glview/GLSlider$2;->this$0:Lcom/samsung/android/glview/GLSlider;

    iget-object v1, v1, Lcom/samsung/android/glview/GLSlider;->mStepPosition:Ljava/util/List;

    iget-object v3, p0, Lcom/samsung/android/glview/GLSlider$2;->this$0:Lcom/samsung/android/glview/GLSlider;

    iget v4, p0, Lcom/samsung/android/glview/GLSlider$2;->val$nearestId:I

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLSlider;->translateStepByOrdering(I)I

    move-result v3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    cmpl-float v1, v2, v1

    if-ltz v1, :cond_0

    .line 542
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/glview/GLSlider$2;->this$0:Lcom/samsung/android/glview/GLSlider;

    iget-object v1, v1, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->y:F

    iget-object v1, p0, Lcom/samsung/android/glview/GLSlider$2;->this$0:Lcom/samsung/android/glview/GLSlider;

    iget-object v1, v1, Lcom/samsung/android/glview/GLSlider;->mStepPosition:Ljava/util/List;

    iget v3, p0, Lcom/samsung/android/glview/GLSlider$2;->val$nearestId:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    cmpl-float v1, v2, v1

    if-lez v1, :cond_1

    .line 543
    iget-object v1, p0, Lcom/samsung/android/glview/GLSlider$2;->this$0:Lcom/samsung/android/glview/GLSlider;

    iget-object v1, v1, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v6

    iput v2, v1, Landroid/graphics/PointF;->y:F

    .line 544
    iget-object v1, p0, Lcom/samsung/android/glview/GLSlider$2;->this$0:Lcom/samsung/android/glview/GLSlider;

    iget-object v1, v1, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    const v2, -0x42333333    # -0.1f

    invoke-virtual {v1, v5, v2}, Lcom/samsung/android/glview/GLButton;->translate(FF)V

    goto :goto_0

    .line 547
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/glview/GLSlider$2;->this$0:Lcom/samsung/android/glview/GLSlider;

    iget-object v1, v1, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->y:F

    iget-object v1, p0, Lcom/samsung/android/glview/GLSlider$2;->this$0:Lcom/samsung/android/glview/GLSlider;

    iget-object v1, v1, Lcom/samsung/android/glview/GLSlider;->mStepPosition:Ljava/util/List;

    iget v3, p0, Lcom/samsung/android/glview/GLSlider$2;->val$nearestId:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    cmpg-float v1, v2, v1

    if-gez v1, :cond_1

    .line 548
    iget-object v1, p0, Lcom/samsung/android/glview/GLSlider$2;->this$0:Lcom/samsung/android/glview/GLSlider;

    iget-object v1, v1, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->y:F

    add-float/2addr v2, v6

    iput v2, v1, Landroid/graphics/PointF;->y:F

    .line 549
    iget-object v1, p0, Lcom/samsung/android/glview/GLSlider$2;->this$0:Lcom/samsung/android/glview/GLSlider;

    iget-object v1, v1, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v5, v6}, Lcom/samsung/android/glview/GLButton;->translate(FF)V

    goto :goto_1

    .line 552
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/glview/GLSlider$2;->this$0:Lcom/samsung/android/glview/GLSlider;

    iget-object v1, v1, Lcom/samsung/android/glview/GLSlider;->mStepPosition:Ljava/util/List;

    iget-object v2, p0, Lcom/samsung/android/glview/GLSlider$2;->this$0:Lcom/samsung/android/glview/GLSlider;

    iget v2, v2, Lcom/samsung/android/glview/GLSlider;->mCurrentStep:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lcom/samsung/android/glview/GLSlider$2;->this$0:Lcom/samsung/android/glview/GLSlider;

    iget-object v2, v2, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLButton;->getTranslateY()F

    move-result v2

    sub-float v0, v1, v2

    .line 553
    .local v0, "y":F
    iget-object v1, p0, Lcom/samsung/android/glview/GLSlider$2;->this$0:Lcom/samsung/android/glview/GLSlider;

    iget-object v1, v1, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->y:F

    add-float/2addr v2, v0

    iput v2, v1, Landroid/graphics/PointF;->y:F

    .line 554
    iget-object v1, p0, Lcom/samsung/android/glview/GLSlider$2;->this$0:Lcom/samsung/android/glview/GLSlider;

    iget-object v1, v1, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v5, v0}, Lcom/samsung/android/glview/GLButton;->translate(FF)V

    .line 555
    cmpl-float v1, v0, v5

    if-nez v1, :cond_2

    .line 556
    iget-object v1, p0, Lcom/samsung/android/glview/GLSlider$2;->this$0:Lcom/samsung/android/glview/GLSlider;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLSlider;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    .line 558
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/glview/GLSlider$2;->this$0:Lcom/samsung/android/glview/GLSlider;

    iget-object v1, v1, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerPositionUpdatedListener:Lcom/samsung/android/glview/GLSlider$GaugeMarkerPositionUpdatedListener;

    if-eqz v1, :cond_3

    .line 559
    iget-object v1, p0, Lcom/samsung/android/glview/GLSlider$2;->this$0:Lcom/samsung/android/glview/GLSlider;

    iget-object v1, v1, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerPositionUpdatedListener:Lcom/samsung/android/glview/GLSlider$GaugeMarkerPositionUpdatedListener;

    invoke-interface {v1}, Lcom/samsung/android/glview/GLSlider$GaugeMarkerPositionUpdatedListener;->onGaugeMarkerPositionUpdated()V

    .line 561
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/glview/GLSlider$2;->this$0:Lcom/samsung/android/glview/GLSlider;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLSlider;->setGaugeBarSize()V

    .line 562
    return-void
.end method
