.class Lcom/android/launcher3/home/SwipeAffordance$2;
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
    .line 364
    iput-object p1, p0, Lcom/android/launcher3/home/SwipeAffordance$2;->this$0:Lcom/android/launcher3/home/SwipeAffordance;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    .line 372
    iget-object v0, p0, Lcom/android/launcher3/home/SwipeAffordance$2;->this$0:Lcom/android/launcher3/home/SwipeAffordance;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/home/SwipeAffordance;->setLayerType(ILandroid/graphics/Paint;)V

    .line 373
    iget-object v0, p0, Lcom/android/launcher3/home/SwipeAffordance$2;->this$0:Lcom/android/launcher3/home/SwipeAffordance;

    # invokes: Lcom/android/launcher3/home/SwipeAffordance;->endAnimators()V
    invoke-static {v0}, Lcom/android/launcher3/home/SwipeAffordance;->access$400(Lcom/android/launcher3/home/SwipeAffordance;)V

    .line 374
    iget-object v0, p0, Lcom/android/launcher3/home/SwipeAffordance$2;->this$0:Lcom/android/launcher3/home/SwipeAffordance;

    # setter for: Lcom/android/launcher3/home/SwipeAffordance;->mIsStartedAnim:Z
    invoke-static {v0, v2}, Lcom/android/launcher3/home/SwipeAffordance;->access$302(Lcom/android/launcher3/home/SwipeAffordance;Z)Z

    .line 375
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 367
    iget-object v0, p0, Lcom/android/launcher3/home/SwipeAffordance$2;->this$0:Lcom/android/launcher3/home/SwipeAffordance;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/home/SwipeAffordance;->setLayerType(ILandroid/graphics/Paint;)V

    .line 368
    return-void
.end method
