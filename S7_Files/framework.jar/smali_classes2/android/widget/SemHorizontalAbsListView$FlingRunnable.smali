.class Landroid/widget/SemHorizontalAbsListView$FlingRunnable;
.super Ljava/lang/Object;
.source "SemHorizontalAbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SemHorizontalAbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlingRunnable"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/SemHorizontalAbsListView$FlingRunnable$1;
    }
.end annotation


# static fields
.field private static final FLYWHEEL_TIMEOUT:I = 0x28


# instance fields
.field private final mCheckFlywheel:Ljava/lang/Runnable;

.field private mLastFlingX:I

.field private final mScroller:Landroid/widget/OverScroller;

.field final synthetic this$0:Landroid/widget/SemHorizontalAbsListView;


# direct methods
.method static synthetic -get0(Landroid/widget/SemHorizontalAbsListView$FlingRunnable;)Landroid/widget/OverScroller;
    .locals 1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    return-object v0
.end method

.method constructor <init>(Landroid/widget/SemHorizontalAbsListView;)V
    .locals 2
    .param p1, "this$0"    # Landroid/widget/SemHorizontalAbsListView;

    .prologue
    .line 7048
    iput-object p1, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7022
    new-instance v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable$1;

    invoke-direct {v0, p0}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable$1;-><init>(Landroid/widget/SemHorizontalAbsListView$FlingRunnable;)V

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->mCheckFlywheel:Ljava/lang/Runnable;

    .line 7049
    new-instance v0, Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    .line 7048
    return-void
.end method


# virtual methods
.method edgeReached(I)V
    .locals 6
    .param p1, "delta"    # I

    .prologue
    const/4 v5, 0x0

    .line 7094
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v3}, Landroid/widget/SemHorizontalAbsListView;->-get30(Landroid/widget/SemHorizontalAbsListView;)I

    move-result v3

    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget v4, v4, Landroid/widget/SemHorizontalAbsListView;->mOverflingDistance:I

    invoke-virtual {v2, v3, v5, v4}, Landroid/widget/OverScroller;->notifyHorizontalEdgeReached(III)V

    .line 7095
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v2}, Landroid/view/View;->getOverScrollMode()I

    move-result v0

    .line 7096
    .local v0, "overscrollMode":I
    if-eqz v0, :cond_2

    .line 7097
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v2}, Landroid/widget/SemHorizontalAbsListView;->-wrap1(Landroid/widget/SemHorizontalAbsListView;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7106
    :cond_0
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    const/4 v3, -0x1

    iput v3, v2, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    .line 7107
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-object v2, v2, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    if-eqz v2, :cond_1

    .line 7108
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-object v2, v2, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    invoke-virtual {v2}, Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;->stop()V

    .line 7111
    :cond_1
    :goto_0
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 7112
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v2, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 7093
    return-void

    .line 7098
    :cond_2
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    const/4 v3, 0x6

    iput v3, v2, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    .line 7099
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v2

    float-to-int v1, v2

    .line 7100
    .local v1, "vel":I
    if-lez p1, :cond_3

    .line 7101
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v2}, Landroid/widget/SemHorizontalAbsListView;->-get6(Landroid/widget/SemHorizontalAbsListView;)Landroid/widget/EdgeEffect;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_0

    .line 7103
    :cond_3
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v2}, Landroid/widget/SemHorizontalAbsListView;->-get7(Landroid/widget/SemHorizontalAbsListView;)Landroid/widget/EdgeEffect;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_0
.end method

.method endFling()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 7125
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    .line 7127
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 7128
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->mCheckFlywheel:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 7130
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SemHorizontalAbsListView;->reportScrollStateChange(I)V

    .line 7131
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v0}, Landroid/widget/SemHorizontalAbsListView;->-wrap5(Landroid/widget/SemHorizontalAbsListView;)V

    .line 7132
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 7134
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v0}, Landroid/widget/SemHorizontalAbsListView;->-get11(Landroid/widget/SemHorizontalAbsListView;)Landroid/os/StrictMode$Span;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7135
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v0}, Landroid/widget/SemHorizontalAbsListView;->-get11(Landroid/widget/SemHorizontalAbsListView;)Landroid/os/StrictMode$Span;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    .line 7136
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v0, v2}, Landroid/widget/SemHorizontalAbsListView;->-set1(Landroid/widget/SemHorizontalAbsListView;Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;

    .line 7124
    :cond_0
    return-void
.end method

.method flywheelTouch()V
    .locals 4

    .prologue
    .line 7141
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->mCheckFlywheel:Ljava/lang/Runnable;

    const-wide/16 v2, 0x28

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 7140
    return-void
.end method

.method public run()V
    .locals 29

    .prologue
    .line 7146
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget v2, v2, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    packed-switch v2, :pswitch_data_0

    .line 7148
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->endFling()V

    .line 7149
    return-void

    .line 7152
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7153
    return-void

    .line 7157
    :cond_0
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-boolean v2, v2, Landroid/widget/AdapterView;->mDataChanged:Z

    if-eqz v2, :cond_1

    .line 7158
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v2}, Landroid/widget/SemHorizontalAbsListView;->layoutChildren()V

    .line 7161
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget v2, v2, Landroid/widget/AdapterView;->mItemCount:I

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-nez v2, :cond_3

    .line 7162
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->endFling()V

    .line 7163
    return-void

    .line 7166
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v26, v0

    .line 7167
    .local v26, "scroller":Landroid/widget/OverScroller;
    invoke-virtual/range {v26 .. v26}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v22

    .line 7168
    .local v22, "more":Z
    invoke-virtual/range {v26 .. v26}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v28

    .line 7172
    .local v28, "x":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->mLastFlingX:I

    sub-int v19, v2, v28

    .line 7175
    .local v19, "delta":I
    if-lez v19, :cond_7

    .line 7177
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget v4, v4, Landroid/widget/AdapterView;->mFirstPosition:I

    iput v4, v2, Landroid/widget/SemHorizontalAbsListView;->mMotionPosition:I

    .line 7178
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    .line 7179
    .local v20, "firstView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLeft()I

    move-result v4

    iput v4, v2, Landroid/widget/SemHorizontalAbsListView;->mMotionViewOriginalLeft:I

    .line 7182
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v4}, Landroid/widget/SemHorizontalAbsListView;->-get20(Landroid/widget/SemHorizontalAbsListView;)I

    move-result v4

    sub-int/2addr v2, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v4}, Landroid/widget/SemHorizontalAbsListView;->-get19(Landroid/widget/SemHorizontalAbsListView;)I

    move-result v4

    sub-int/2addr v2, v4

    add-int/lit8 v2, v2, -0x1

    move/from16 v0, v19

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v19

    .line 7196
    .end local v20    # "firstView":Landroid/view/View;
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget v4, v4, Landroid/widget/SemHorizontalAbsListView;->mMotionPosition:I

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget v6, v6, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v4, v6

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v23

    .line 7197
    .local v23, "motionView":Landroid/view/View;
    const/16 v25, 0x0

    .line 7198
    .local v25, "oldLeft":I
    if-eqz v23, :cond_4

    .line 7199
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getLeft()I

    move-result v25

    .line 7203
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    move/from16 v0, v19

    move/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Landroid/widget/SemHorizontalAbsListView;->trackMotionScroll(II)Z

    move-result v14

    .line 7204
    .local v14, "atEdge":Z
    if-eqz v14, :cond_8

    if-eqz v19, :cond_8

    const/4 v15, 0x1

    .line 7206
    .local v15, "atEnd":Z
    :goto_1
    if-eqz v15, :cond_9

    .line 7207
    if-eqz v23, :cond_5

    .line 7209
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int v2, v2, v25

    sub-int v2, v19, v2

    neg-int v3, v2

    .line 7210
    .local v3, "overshoot":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v4}, Landroid/widget/SemHorizontalAbsListView;->-get30(Landroid/widget/SemHorizontalAbsListView;)I

    move-result v5

    .line 7211
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget v9, v4, Landroid/widget/SemHorizontalAbsListView;->mOverflingDistance:I

    .line 7210
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 7211
    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 7210
    invoke-static/range {v2 .. v11}, Landroid/widget/SemHorizontalAbsListView;->-wrap2(Landroid/widget/SemHorizontalAbsListView;IIIIIIIIZ)Z

    .line 7213
    .end local v3    # "overshoot":I
    :cond_5
    if-eqz v22, :cond_6

    .line 7214
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->edgeReached(I)V

    .line 7145
    .end local v14    # "atEdge":Z
    .end local v15    # "atEnd":Z
    .end local v19    # "delta":I
    .end local v22    # "more":Z
    .end local v23    # "motionView":Landroid/view/View;
    .end local v25    # "oldLeft":I
    .end local v28    # "x":I
    :cond_6
    :goto_2
    return-void

    .line 7185
    .restart local v19    # "delta":I
    .restart local v22    # "more":Z
    .restart local v28    # "x":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v24, v2, -0x1

    .line 7186
    .local v24, "offsetToLast":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget v4, v4, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int v4, v4, v24

    iput v4, v2, Landroid/widget/SemHorizontalAbsListView;->mMotionPosition:I

    .line 7188
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    move/from16 v0, v24

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    .line 7189
    .local v21, "lastView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getLeft()I

    move-result v4

    iput v4, v2, Landroid/widget/SemHorizontalAbsListView;->mMotionViewOriginalLeft:I

    .line 7192
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v4}, Landroid/widget/SemHorizontalAbsListView;->-get20(Landroid/widget/SemHorizontalAbsListView;)I

    move-result v4

    sub-int/2addr v2, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v4}, Landroid/widget/SemHorizontalAbsListView;->-get19(Landroid/widget/SemHorizontalAbsListView;)I

    move-result v4

    sub-int/2addr v2, v4

    add-int/lit8 v2, v2, -0x1

    neg-int v2, v2

    move/from16 v0, v19

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v19

    goto/16 :goto_0

    .line 7204
    .end local v21    # "lastView":Landroid/view/View;
    .end local v24    # "offsetToLast":I
    .restart local v14    # "atEdge":Z
    .restart local v23    # "motionView":Landroid/view/View;
    .restart local v25    # "oldLeft":I
    :cond_8
    const/4 v15, 0x0

    goto/16 :goto_1

    .line 7219
    .restart local v15    # "atEnd":Z
    :cond_9
    if-eqz v22, :cond_a

    if-eqz v15, :cond_b

    .line 7224
    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->endFling()V

    .line 7238
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v2}, Landroid/widget/SemHorizontalAbsListView;->-get16(Landroid/widget/SemHorizontalAbsListView;)I

    move-result v2

    invoke-static {}, Landroid/widget/SemHorizontalAbsListView;->-get0()I

    move-result v4

    if-ne v2, v4, :cond_6

    .line 7239
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget v2, v2, Landroid/widget/AdapterView;->mFirstPosition:I

    if-nez v2, :cond_6

    if-nez v19, :cond_6

    .line 7240
    if-nez v22, :cond_6

    .line 7241
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {}, Landroid/widget/SemHorizontalAbsListView;->-get1()I

    move-result v4

    invoke-static {v2, v4}, Landroid/widget/SemHorizontalAbsListView;->-set3(Landroid/widget/SemHorizontalAbsListView;I)I

    .line 7242
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v2}, Landroid/widget/SemHorizontalAbsListView;->-wrap7(Landroid/widget/SemHorizontalAbsListView;)V

    goto/16 :goto_2

    .line 7220
    :cond_b
    if-eqz v14, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 7221
    :cond_c
    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->mLastFlingX:I

    .line 7222
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_3

    .line 7249
    .end local v14    # "atEdge":Z
    .end local v15    # "atEnd":Z
    .end local v19    # "delta":I
    .end local v22    # "more":Z
    .end local v23    # "motionView":Landroid/view/View;
    .end local v25    # "oldLeft":I
    .end local v26    # "scroller":Landroid/widget/OverScroller;
    .end local v28    # "x":I
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v26, v0

    .line 7250
    .restart local v26    # "scroller":Landroid/widget/OverScroller;
    invoke-virtual/range {v26 .. v26}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 7251
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v2}, Landroid/widget/SemHorizontalAbsListView;->-get30(Landroid/widget/SemHorizontalAbsListView;)I

    move-result v7

    .line 7252
    .local v7, "scrollX":I
    invoke-virtual/range {v26 .. v26}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v18

    .line 7253
    .local v18, "currX":I
    sub-int v5, v18, v7

    .line 7254
    .local v5, "deltaX":I
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    .line 7255
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget v11, v2, Landroid/widget/SemHorizontalAbsListView;->mOverflingDistance:I

    .line 7254
    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 7255
    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 7254
    invoke-static/range {v4 .. v13}, Landroid/widget/SemHorizontalAbsListView;->-wrap2(Landroid/widget/SemHorizontalAbsListView;IIIIIIIIZ)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 7256
    if-gtz v7, :cond_f

    if-lez v18, :cond_f

    const/16 v17, 0x1

    .line 7257
    .local v17, "crossRight":Z
    :goto_4
    if-ltz v7, :cond_10

    if-gez v18, :cond_10

    const/16 v16, 0x1

    .line 7258
    .local v16, "crossLeft":Z
    :goto_5
    if-nez v17, :cond_d

    if-eqz v16, :cond_11

    .line 7259
    :cond_d
    invoke-virtual/range {v26 .. v26}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v2

    float-to-int v0, v2

    move/from16 v27, v0

    .line 7260
    .local v27, "velocity":I
    if-eqz v16, :cond_e

    move/from16 v0, v27

    neg-int v0, v0

    move/from16 v27, v0

    .line 7263
    :cond_e
    invoke-virtual/range {v26 .. v26}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 7264
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->start(I)V

    goto/16 :goto_2

    .line 7256
    .end local v16    # "crossLeft":Z
    .end local v17    # "crossRight":Z
    .end local v27    # "velocity":I
    :cond_f
    const/16 v17, 0x0

    .restart local v17    # "crossRight":Z
    goto :goto_4

    .line 7257
    :cond_10
    const/16 v16, 0x0

    .restart local v16    # "crossLeft":Z
    goto :goto_5

    .line 7266
    :cond_11
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->startSpringback()V

    goto/16 :goto_2

    .line 7269
    .end local v16    # "crossLeft":Z
    .end local v17    # "crossRight":Z
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 7270
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_2

    .line 7273
    .end local v5    # "deltaX":I
    .end local v7    # "scrollX":I
    .end local v18    # "currX":I
    :cond_13
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->endFling()V

    goto/16 :goto_2

    .line 7146
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method start(I)V
    .locals 9
    .param p1, "initialVelocity"    # I

    .prologue
    const/4 v3, 0x0

    const v6, 0x7fffffff

    const/4 v2, 0x0

    .line 7053
    if-gez p1, :cond_1

    move v1, v6

    .line 7054
    .local v1, "initialX":I
    :goto_0
    iput v1, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->mLastFlingX:I

    .line 7055
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0, v3}, Landroid/widget/OverScroller;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 7056
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    move v3, p1

    move v4, v2

    move v5, v2

    move v7, v2

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 7058
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    const/4 v2, 0x4

    iput v2, v0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    .line 7059
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v0, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 7068
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v0}, Landroid/widget/SemHorizontalAbsListView;->-get11(Landroid/widget/SemHorizontalAbsListView;)Landroid/os/StrictMode$Span;

    move-result-object v0

    if-nez v0, :cond_0

    .line 7069
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    const-string/jumbo v2, "SemHorizontalAbsListView-fling"

    invoke-static {v2}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/widget/SemHorizontalAbsListView;->-set1(Landroid/widget/SemHorizontalAbsListView;Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;

    .line 7052
    :cond_0
    return-void

    .end local v1    # "initialX":I
    :cond_1
    move v1, v2

    .line 7053
    goto :goto_0
.end method

.method startOverfling(I)V
    .locals 11
    .param p1, "initialVelocity"    # I

    .prologue
    const/4 v2, 0x0

    .line 7085
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/OverScroller;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 7086
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v1}, Landroid/widget/SemHorizontalAbsListView;->-get30(Landroid/widget/SemHorizontalAbsListView;)I

    move-result v1

    .line 7087
    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v9

    .line 7086
    const/high16 v5, -0x80000000

    const v6, 0x7fffffff

    move v3, p1

    move v4, v2

    move v7, v2

    move v8, v2

    move v10, v2

    invoke-virtual/range {v0 .. v10}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 7088
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    const/4 v1, 0x6

    iput v1, v0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    .line 7089
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 7090
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v0, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 7084
    return-void
.end method

.method startScroll(IIZ)V
    .locals 6
    .param p1, "distance"    # I
    .param p2, "duration"    # I
    .param p3, "linear"    # Z

    .prologue
    const/4 v2, 0x0

    .line 7116
    if-gez p1, :cond_0

    const v1, 0x7fffffff

    .line 7117
    .local v1, "initialX":I
    :goto_0
    iput v1, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->mLastFlingX:I

    .line 7118
    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    if-eqz p3, :cond_1

    sget-object v0, Landroid/widget/SemHorizontalAbsListView;->sLinearInterpolator:Landroid/view/animation/Interpolator;

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/OverScroller;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 7119
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    move v3, p1

    move v4, v2

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 7120
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    const/4 v2, 0x4

    iput v2, v0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    .line 7121
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v0, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 7115
    return-void

    .end local v1    # "initialX":I
    :cond_0
    move v1, v2

    .line 7116
    goto :goto_0

    .line 7118
    .restart local v1    # "initialX":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method startSpringback()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 7074
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v1}, Landroid/widget/SemHorizontalAbsListView;->-get30(Landroid/widget/SemHorizontalAbsListView;)I

    move-result v1

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7075
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    const/4 v1, 0x6

    iput v1, v0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    .line 7076
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 7077
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v0, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 7073
    :goto_0
    return-void

    .line 7079
    :cond_0
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    .line 7080
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v0, v2}, Landroid/widget/SemHorizontalAbsListView;->reportScrollStateChange(I)V

    goto :goto_0
.end method