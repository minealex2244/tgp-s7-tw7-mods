.class Lcom/android/launcher3/home/ZeroPageController$3;
.super Ljava/lang/Object;
.source "ZeroPageController.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/ZeroPageController;->animatePage(IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/ZeroPageController;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/ZeroPageController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/home/ZeroPageController;

    .prologue
    .line 837
    iput-object p1, p0, Lcom/android/launcher3/home/ZeroPageController$3;->this$0:Lcom/android/launcher3/home/ZeroPageController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 9
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    const/4 v2, 0x0

    .line 839
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 840
    .local v8, "value":Ljava/lang/Integer;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 841
    .local v6, "currentTime":J
    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController$3;->this$0:Lcom/android/launcher3/home/ZeroPageController;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v3, p0, Lcom/android/launcher3/home/ZeroPageController$3;->this$0:Lcom/android/launcher3/home/ZeroPageController;

    # getter for: Lcom/android/launcher3/home/ZeroPageController;->mMovingState:I
    invoke-static {v3}, Lcom/android/launcher3/home/ZeroPageController;->access$900(Lcom/android/launcher3/home/ZeroPageController;)I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    iget-object v4, p0, Lcom/android/launcher3/home/ZeroPageController$3;->this$0:Lcom/android/launcher3/home/ZeroPageController;

    # getter for: Lcom/android/launcher3/home/ZeroPageController;->mInterval:J
    invoke-static {v4}, Lcom/android/launcher3/home/ZeroPageController;->access$1200(Lcom/android/launcher3/home/ZeroPageController;)J

    move-result-wide v4

    sub-long v4, v6, v4

    # invokes: Lcom/android/launcher3/home/ZeroPageController;->setOffsetMsg(IIZJ)V
    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/home/ZeroPageController;->access$1300(Lcom/android/launcher3/home/ZeroPageController;IIZJ)V

    .line 842
    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController$3;->this$0:Lcom/android/launcher3/home/ZeroPageController;

    # setter for: Lcom/android/launcher3/home/ZeroPageController;->mInterval:J
    invoke-static {v0, v6, v7}, Lcom/android/launcher3/home/ZeroPageController;->access$1202(Lcom/android/launcher3/home/ZeroPageController;J)J

    .line 843
    return-void

    :cond_0
    move v3, v2

    .line 841
    goto :goto_0
.end method
