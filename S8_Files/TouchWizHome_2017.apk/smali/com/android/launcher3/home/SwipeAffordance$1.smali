.class Lcom/android/launcher3/home/SwipeAffordance$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SwipeAffordance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/home/SwipeAffordance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/SwipeAffordance;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/SwipeAffordance;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/home/SwipeAffordance;

    .prologue
    .line 347
    iput-object p1, p0, Lcom/android/launcher3/home/SwipeAffordance$1;->this$0:Lcom/android/launcher3/home/SwipeAffordance;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 357
    iget-object v0, p0, Lcom/android/launcher3/home/SwipeAffordance$1;->this$0:Lcom/android/launcher3/home/SwipeAffordance;

    # getter for: Lcom/android/launcher3/home/SwipeAffordance;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/launcher3/home/SwipeAffordance;->access$000(Lcom/android/launcher3/home/SwipeAffordance;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 358
    iget-object v0, p0, Lcom/android/launcher3/home/SwipeAffordance$1;->this$0:Lcom/android/launcher3/home/SwipeAffordance;

    # getter for: Lcom/android/launcher3/home/SwipeAffordance;->mArrowView1:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/launcher3/home/SwipeAffordance;->access$100(Lcom/android/launcher3/home/SwipeAffordance;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 359
    iget-object v0, p0, Lcom/android/launcher3/home/SwipeAffordance$1;->this$0:Lcom/android/launcher3/home/SwipeAffordance;

    # getter for: Lcom/android/launcher3/home/SwipeAffordance;->mArrowView2:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/launcher3/home/SwipeAffordance;->access$200(Lcom/android/launcher3/home/SwipeAffordance;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 360
    iget-object v0, p0, Lcom/android/launcher3/home/SwipeAffordance$1;->this$0:Lcom/android/launcher3/home/SwipeAffordance;

    # setter for: Lcom/android/launcher3/home/SwipeAffordance;->mIsStartedAnim:Z
    invoke-static {v0, v1}, Lcom/android/launcher3/home/SwipeAffordance;->access$302(Lcom/android/launcher3/home/SwipeAffordance;Z)Z

    .line 361
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 350
    iget-object v0, p0, Lcom/android/launcher3/home/SwipeAffordance$1;->this$0:Lcom/android/launcher3/home/SwipeAffordance;

    # getter for: Lcom/android/launcher3/home/SwipeAffordance;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/launcher3/home/SwipeAffordance;->access$000(Lcom/android/launcher3/home/SwipeAffordance;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 351
    iget-object v0, p0, Lcom/android/launcher3/home/SwipeAffordance$1;->this$0:Lcom/android/launcher3/home/SwipeAffordance;

    # getter for: Lcom/android/launcher3/home/SwipeAffordance;->mArrowView1:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/launcher3/home/SwipeAffordance;->access$100(Lcom/android/launcher3/home/SwipeAffordance;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 352
    iget-object v0, p0, Lcom/android/launcher3/home/SwipeAffordance$1;->this$0:Lcom/android/launcher3/home/SwipeAffordance;

    # getter for: Lcom/android/launcher3/home/SwipeAffordance;->mArrowView2:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/launcher3/home/SwipeAffordance;->access$200(Lcom/android/launcher3/home/SwipeAffordance;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 353
    return-void
.end method
