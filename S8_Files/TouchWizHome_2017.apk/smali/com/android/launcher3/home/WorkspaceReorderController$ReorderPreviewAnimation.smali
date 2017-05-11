.class Lcom/android/launcher3/home/WorkspaceReorderController$ReorderPreviewAnimation;
.super Ljava/lang/Object;
.source "WorkspaceReorderController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/home/WorkspaceReorderController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReorderPreviewAnimation"
.end annotation


# static fields
.field static final MODE_HINT:I = 0x0

.field static final MODE_PREVIEW:I = 0x1

.field private static final PREVIEW_DURATION:I = 0x12c


# instance fields
.field animator:Landroid/animation/Animator;

.field child:Landroid/view/View;

.field finalDeltaX:F

.field finalDeltaY:F

.field initDeltaX:F

.field initDeltaY:F

.field mode:I

.field repeating:Z

.field final synthetic this$0:Lcom/android/launcher3/home/WorkspaceReorderController;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/home/WorkspaceReorderController;Landroid/view/View;IIIIIII)V
    .locals 17
    .param p2, "child"    # Landroid/view/View;
    .param p3, "mode"    # I
    .param p4, "cellX0"    # I
    .param p5, "cellY0"    # I
    .param p6, "cellX1"    # I
    .param p7, "cellY1"    # I
    .param p8, "spanX"    # I
    .param p9, "spanY"    # I

    .prologue
    .line 915
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher3/home/WorkspaceReorderController$ReorderPreviewAnimation;->this$0:Lcom/android/launcher3/home/WorkspaceReorderController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 906
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController$ReorderPreviewAnimation;->repeating:Z

    .line 916
    # getter for: Lcom/android/launcher3/home/WorkspaceReorderController;->mLayout:Lcom/android/launcher3/common/base/view/CellLayout;
    invoke-static/range {p1 .. p1}, Lcom/android/launcher3/home/WorkspaceReorderController;->access$300(Lcom/android/launcher3/home/WorkspaceReorderController;)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v2

    # getter for: Lcom/android/launcher3/home/WorkspaceReorderController;->mTmpPoint:[I
    invoke-static/range {p1 .. p1}, Lcom/android/launcher3/home/WorkspaceReorderController;->access$200(Lcom/android/launcher3/home/WorkspaceReorderController;)[I

    move-result-object v7

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p8

    move/from16 v6, p9

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/common/base/view/CellLayout;->regionToCenterPoint(IIII[I)V

    .line 917
    # getter for: Lcom/android/launcher3/home/WorkspaceReorderController;->mTmpPoint:[I
    invoke-static/range {p1 .. p1}, Lcom/android/launcher3/home/WorkspaceReorderController;->access$200(Lcom/android/launcher3/home/WorkspaceReorderController;)[I

    move-result-object v2

    const/4 v3, 0x0

    aget v13, v2, v3

    .line 918
    .local v13, "x0":I
    # getter for: Lcom/android/launcher3/home/WorkspaceReorderController;->mTmpPoint:[I
    invoke-static/range {p1 .. p1}, Lcom/android/launcher3/home/WorkspaceReorderController;->access$200(Lcom/android/launcher3/home/WorkspaceReorderController;)[I

    move-result-object v2

    const/4 v3, 0x1

    aget v15, v2, v3

    .line 919
    .local v15, "y0":I
    # getter for: Lcom/android/launcher3/home/WorkspaceReorderController;->mLayout:Lcom/android/launcher3/common/base/view/CellLayout;
    invoke-static/range {p1 .. p1}, Lcom/android/launcher3/home/WorkspaceReorderController;->access$300(Lcom/android/launcher3/home/WorkspaceReorderController;)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v2

    # getter for: Lcom/android/launcher3/home/WorkspaceReorderController;->mTmpPoint:[I
    invoke-static/range {p1 .. p1}, Lcom/android/launcher3/home/WorkspaceReorderController;->access$200(Lcom/android/launcher3/home/WorkspaceReorderController;)[I

    move-result-object v7

    move/from16 v3, p6

    move/from16 v4, p7

    move/from16 v5, p8

    move/from16 v6, p9

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/common/base/view/CellLayout;->regionToCenterPoint(IIII[I)V

    .line 920
    # getter for: Lcom/android/launcher3/home/WorkspaceReorderController;->mTmpPoint:[I
    invoke-static/range {p1 .. p1}, Lcom/android/launcher3/home/WorkspaceReorderController;->access$200(Lcom/android/launcher3/home/WorkspaceReorderController;)[I

    move-result-object v2

    const/4 v3, 0x0

    aget v14, v2, v3

    .line 921
    .local v14, "x1":I
    # getter for: Lcom/android/launcher3/home/WorkspaceReorderController;->mTmpPoint:[I
    invoke-static/range {p1 .. p1}, Lcom/android/launcher3/home/WorkspaceReorderController;->access$200(Lcom/android/launcher3/home/WorkspaceReorderController;)[I

    move-result-object v2

    const/4 v3, 0x1

    aget v16, v2, v3

    .line 922
    .local v16, "y1":I
    sub-int v10, v14, v13

    .line 923
    .local v10, "dX":I
    sub-int v11, v16, v15

    .line 924
    .local v11, "dY":I
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController$ReorderPreviewAnimation;->finalDeltaX:F

    .line 925
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController$ReorderPreviewAnimation;->finalDeltaY:F

    .line 926
    if-nez p3, :cond_0

    const/4 v12, -0x1

    .line 927
    .local v12, "dir":I
    :goto_0
    if-ne v10, v11, :cond_1

    if-nez v10, :cond_1

    .line 941
    :goto_1
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher3/home/WorkspaceReorderController$ReorderPreviewAnimation;->mode:I

    .line 942
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTranslationX()F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController$ReorderPreviewAnimation;->initDeltaX:F

    .line 943
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController$ReorderPreviewAnimation;->initDeltaY:F

    .line 944
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher3/home/WorkspaceReorderController$ReorderPreviewAnimation;->child:Landroid/view/View;

    .line 945
    return-void

    .line 926
    .end local v12    # "dir":I
    :cond_0
    const/4 v12, 0x1

    goto :goto_0

    .line 929
    .restart local v12    # "dir":I
    :cond_1
    if-nez v11, :cond_2

    .line 930
    neg-int v2, v12

    int-to-float v2, v2

    int-to-float v3, v10

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    mul-float/2addr v2, v3

    const/high16 v3, 0x41a00000    # 20.0f

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController$ReorderPreviewAnimation;->finalDeltaX:F

    goto :goto_1

    .line 931
    :cond_2
    if-nez v10, :cond_3

    .line 932
    neg-int v2, v12

    int-to-float v2, v2

    int-to-float v3, v11

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    mul-float/2addr v2, v3

    const/high16 v3, 0x41a00000    # 20.0f

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController$ReorderPreviewAnimation;->finalDeltaY:F

    goto :goto_1

    .line 934
    :cond_3
    int-to-float v2, v11

    int-to-float v3, v10

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D

    move-result-wide v8

    .line 935
    .local v8, "angle":D
    neg-int v2, v12

    int-to-float v2, v2

    int-to-float v3, v10

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    mul-float/2addr v2, v3

    float-to-double v2, v2

    .line 936
    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x4034000000000000L    # 20.0

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController$ReorderPreviewAnimation;->finalDeltaX:F

    .line 937
    neg-int v2, v12

    int-to-float v2, v2

    int-to-float v3, v11

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    mul-float/2addr v2, v3

    float-to-double v2, v2

    .line 938
    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x4034000000000000L    # 20.0

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController$ReorderPreviewAnimation;->finalDeltaY:F

    goto/16 :goto_1
.end method

.method private cancel()V
    .locals 1

    .prologue
    .line 989
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ReorderPreviewAnimation;->animator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 990
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ReorderPreviewAnimation;->animator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 992
    :cond_0
    return-void
.end method


# virtual methods
.method animate()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 948
    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ReorderPreviewAnimation;->this$0:Lcom/android/launcher3/home/WorkspaceReorderController;

    # getter for: Lcom/android/launcher3/home/WorkspaceReorderController;->mShakeAnimators:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/android/launcher3/home/WorkspaceReorderController;->access$400(Lcom/android/launcher3/home/WorkspaceReorderController;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ReorderPreviewAnimation;->child:Landroid/view/View;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 949
    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ReorderPreviewAnimation;->this$0:Lcom/android/launcher3/home/WorkspaceReorderController;

    # getter for: Lcom/android/launcher3/home/WorkspaceReorderController;->mShakeAnimators:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/android/launcher3/home/WorkspaceReorderController;->access$400(Lcom/android/launcher3/home/WorkspaceReorderController;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ReorderPreviewAnimation;->child:Landroid/view/View;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/home/WorkspaceReorderController$ReorderPreviewAnimation;

    .line 950
    .local v0, "oldAnimation":Lcom/android/launcher3/home/WorkspaceReorderController$ReorderPreviewAnimation;
    invoke-direct {v0}, Lcom/android/launcher3/home/WorkspaceReorderController$ReorderPreviewAnimation;->cancel()V

    .line 951
    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ReorderPreviewAnimation;->this$0:Lcom/android/launcher3/home/WorkspaceReorderController;

    # getter for: Lcom/android/launcher3/home/WorkspaceReorderController;->mShakeAnimators:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/android/launcher3/home/WorkspaceReorderController;->access$400(Lcom/android/launcher3/home/WorkspaceReorderController;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ReorderPreviewAnimation;->child:Landroid/view/View;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 952
    iget v2, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ReorderPreviewAnimation;->finalDeltaX:F

    cmpl-float v2, v2, v4

    if-nez v2, :cond_1

    iget v2, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ReorderPreviewAnimation;->finalDeltaY:F

    cmpl-float v2, v2, v4

    if-nez v2, :cond_1

    .line 953
    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceReorderController$ReorderPreviewAnimation;->completeAnimationImmediately()V

    .line 986
    .end local v0    # "oldAnimation":Lcom/android/launcher3/home/WorkspaceReorderController$ReorderPreviewAnimation;
    :cond_0
    :goto_0
    return-void

    .line 957
    :cond_1
    iget v2, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ReorderPreviewAnimation;->finalDeltaX:F

    cmpl-float v2, v2, v4

    if-nez v2, :cond_2

    iget v2, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ReorderPreviewAnimation;->finalDeltaY:F

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_0

    .line 960
    :cond_2
    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ReorderPreviewAnimation;->child:Landroid/view/View;

    new-array v3, v5, [F

    fill-array-data v3, :array_0

    invoke-static {v2, v3}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;[F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 961
    .local v1, "va":Landroid/animation/ValueAnimator;
    iput-object v1, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ReorderPreviewAnimation;->animator:Landroid/animation/Animator;

    .line 962
    invoke-virtual {v1, v5}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 963
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 964
    iget v2, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ReorderPreviewAnimation;->mode:I

    if-nez v2, :cond_3

    const-wide/16 v2, 0x15e

    :goto_1
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 965
    new-instance v2, Lcom/android/launcher3/home/WorkspaceReorderController$ReorderPreviewAnimation$1;

    invoke-direct {v2, p0}, Lcom/android/launcher3/home/WorkspaceReorderController$ReorderPreviewAnimation$1;-><init>(Lcom/android/launcher3/home/WorkspaceReorderController$ReorderPreviewAnimation;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 976
    new-instance v2, Lcom/android/launcher3/home/WorkspaceReorderController$ReorderPreviewAnimation$2;

    invoke-direct {v2, p0}, Lcom/android/launcher3/home/WorkspaceReorderController$ReorderPreviewAnimation$2;-><init>(Lcom/android/launcher3/home/WorkspaceReorderController$ReorderPreviewAnimation;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 984
    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ReorderPreviewAnimation;->this$0:Lcom/android/launcher3/home/WorkspaceReorderController;

    # getter for: Lcom/android/launcher3/home/WorkspaceReorderController;->mShakeAnimators:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/android/launcher3/home/WorkspaceReorderController;->access$400(Lcom/android/launcher3/home/WorkspaceReorderController;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ReorderPreviewAnimation;->child:Landroid/view/View;

    invoke-virtual {v2, v3, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 985
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 964
    :cond_3
    const-wide/16 v2, 0x12c

    goto :goto_1

    .line 960
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method completeAnimationImmediately()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 995
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ReorderPreviewAnimation;->animator:Landroid/animation/Animator;

    if-eqz v1, :cond_0

    .line 996
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ReorderPreviewAnimation;->animator:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 999
    :cond_0
    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v0

    .line 1000
    .local v0, "s":Landroid/animation/AnimatorSet;
    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ReorderPreviewAnimation;->animator:Landroid/animation/Animator;

    .line 1001
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ReorderPreviewAnimation;->child:Landroid/view/View;

    const-string v3, "translationX"

    new-array v4, v6, [F

    aput v7, v4, v5

    .line 1002
    invoke-static {v2, v3, v4}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ReorderPreviewAnimation;->child:Landroid/view/View;

    const-string v3, "translationY"

    new-array v4, v6, [F

    aput v7, v4, v5

    .line 1003
    invoke-static {v2, v3, v4}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    .line 1001
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1005
    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1006
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1007
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1008
    return-void
.end method