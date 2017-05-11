.class public Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;
.super Lcom/android/launcher3/common/base/view/CellLayoutChildren;
.source "WorkspaceCellLayoutChildren.java"


# static fields
.field private static final GRID_CHANGE_ANIMATION_DELAY:I = 0x190

.field private static final GRID_CHANGE_ANIMATION_DURATION:I = 0x12c


# instance fields
.field private final mGridChangeAnimationSet:Landroid/view/animation/AnimationSet;

.field private mIsGridChanging:Z

.field private mPreviousRectMap:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;-><init>(Landroid/content/Context;)V

    .line 42
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;->mPreviousRectMap:Landroid/util/LongSparseArray;

    .line 43
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;->mGridChangeAnimationSet:Landroid/view/animation/AnimationSet;

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;->mIsGridChanging:Z

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;)Landroid/view/animation/AnimationSet;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;->mGridChangeAnimationSet:Landroid/view/animation/AnimationSet;

    return-object v0
.end method

.method private startGridChangeAnimation()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 76
    iput-boolean v2, p0, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;->mIsGridChanging:Z

    .line 77
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;->mPreviousRectMap:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->clear()V

    .line 79
    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 80
    .local v0, "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    if-eqz v0, :cond_0

    .line 81
    const/16 v1, 0x8

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/common/base/view/CellLayout;->setCrossHairAnimatedVisibility(IZ)V

    .line 82
    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->invalidate()V

    .line 85
    :cond_0
    new-instance v1, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren$1;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren$1;-><init>(Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;Lcom/android/launcher3/common/base/view/CellLayout;)V

    invoke-virtual {p0, v1}, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;->post(Ljava/lang/Runnable;)Z

    .line 111
    return-void
.end method


# virtual methods
.method protected buildCustomAnimationSet(Landroid/view/View;IIII)V
    .locals 35
    .param p1, "childView"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 115
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;->mIsGridChanging:Z

    if-nez v6, :cond_1

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 120
    .local v26, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    if-nez v26, :cond_4

    const-wide/16 v24, -0x64

    .line 121
    .local v24, "dbId":J
    :goto_1
    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v29

    .line 122
    .local v29, "pairItem":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;>;"
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;->mPreviousRectMap:Landroid/util/LongSparseArray;

    move-wide/from16 v0, v24

    invoke-virtual {v6, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/graphics/Rect;

    .line 123
    .local v31, "prevRect":Landroid/graphics/Rect;
    if-eqz v31, :cond_0

    .line 124
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;->mPreviousRectMap:Landroid/util/LongSparseArray;

    move-wide/from16 v0, v24

    invoke-virtual {v6, v0, v1}, Landroid/util/LongSparseArray;->remove(J)V

    .line 125
    const/4 v6, 0x2

    new-array v0, v6, [I

    move-object/from16 v17, v0

    .line 126
    .local v17, "absXY":[I
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 129
    const/4 v6, 0x2

    new-array v0, v6, [I

    move-object/from16 v30, v0

    .line 130
    .local v30, "parentOffset":[I
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;->getLocationOnScreen([I)V

    .line 131
    const/4 v6, 0x0

    aget v8, v17, v6

    const/4 v10, 0x0

    aget v10, v30, v10

    sub-int/2addr v8, v10

    aput v8, v17, v6

    .line 133
    move-object/from16 v0, p1

    instance-of v6, v0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    if-eqz v6, :cond_2

    .line 134
    move/from16 v0, p4

    int-to-float v6, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScaleX()F

    move-result v8

    mul-float/2addr v6, v8

    float-to-int v0, v6

    move/from16 p4, v0

    .line 135
    move/from16 v0, p2

    int-to-float v6, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScaleX()F

    move-result v8

    mul-float/2addr v6, v8

    float-to-int v0, v6

    move/from16 p2, v0

    .line 136
    move/from16 v0, p5

    int-to-float v6, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScaleY()F

    move-result v8

    mul-float/2addr v6, v8

    float-to-int v0, v6

    move/from16 p5, v0

    .line 137
    move/from16 v0, p3

    int-to-float v6, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScaleY()F

    move-result v8

    mul-float/2addr v6, v8

    float-to-int v0, v6

    move/from16 p3, v0

    .line 140
    :cond_2
    new-instance v23, Landroid/graphics/Rect;

    const/4 v6, 0x0

    aget v6, v17, v6

    const/4 v8, 0x1

    aget v8, v17, v8

    const/4 v10, 0x0

    aget v10, v17, v10

    sub-int v11, p4, p2

    add-int/2addr v10, v11

    const/4 v11, 0x1

    aget v11, v17, v11

    sub-int v12, p5, p3

    add-int/2addr v11, v12

    move-object/from16 v0, v23

    invoke-direct {v0, v6, v8, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 145
    .local v23, "currentRect":Landroid/graphics/Rect;
    move-object/from16 v0, p1

    instance-of v6, v0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    if-eqz v6, :cond_5

    .line 147
    invoke-virtual/range {v31 .. v31}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    div-float v5, v6, v8

    .line 148
    .local v5, "scaleX":F
    invoke-virtual/range {v31 .. v31}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    div-float v7, v6, v8

    .line 150
    .local v7, "scaleY":F
    move-object/from16 v0, v31

    iget v6, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v23

    iget v8, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v8

    int-to-float v6, v6

    div-float v27, v6, v5

    .line 151
    .local v27, "moveX":F
    move-object/from16 v0, v31

    iget v6, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v23

    iget v8, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v8

    int-to-float v6, v6

    div-float v28, v6, v7

    .line 153
    .local v28, "moveY":F
    new-instance v4, Landroid/view/animation/ScaleAnimation;

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-direct/range {v4 .. v12}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 155
    .local v4, "scaleAnim":Landroid/view/animation/ScaleAnimation;
    new-instance v34, Landroid/view/animation/TranslateAnimation;

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-direct {v0, v1, v6, v2, v8}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 174
    .end local v5    # "scaleX":F
    .end local v7    # "scaleY":F
    .local v34, "translate":Landroid/view/animation/TranslateAnimation;
    :goto_2
    new-instance v20, Landroid/view/animation/AnimationSet;

    const/4 v6, 0x1

    move-object/from16 v0, v20

    invoke-direct {v0, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 175
    .local v20, "childAnimationSet":Landroid/view/animation/AnimationSet;
    const-wide/16 v10, 0x12c

    move-object/from16 v0, v20

    invoke-virtual {v0, v10, v11}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 177
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    instance-of v6, v6, Lcom/android/launcher3/common/base/view/CellLayout;

    if-eqz v6, :cond_3

    .line 178
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;->getParent()Landroid/view/ViewParent;

    move-result-object v19

    check-cast v19, Lcom/android/launcher3/home/WorkspaceCellLayout;

    .line 179
    .local v19, "cellLayout":Lcom/android/launcher3/home/WorkspaceCellLayout;
    move-object/from16 v0, v19

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mRestoredItems:Ljava/util/List;

    move-object/from16 v0, v29

    invoke-interface {v6, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 180
    new-instance v18, Landroid/view/animation/AlphaAnimation;

    const/4 v6, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    move-object/from16 v0, v18

    invoke-direct {v0, v6, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 181
    .local v18, "alpha":Landroid/view/animation/AlphaAnimation;
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 187
    .end local v18    # "alpha":Landroid/view/animation/AlphaAnimation;
    .end local v19    # "cellLayout":Lcom/android/launcher3/home/WorkspaceCellLayout;
    :cond_3
    :goto_3
    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 188
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 190
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;->mGridChangeAnimationSet:Landroid/view/animation/AnimationSet;

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 120
    .end local v4    # "scaleAnim":Landroid/view/animation/ScaleAnimation;
    .end local v17    # "absXY":[I
    .end local v20    # "childAnimationSet":Landroid/view/animation/AnimationSet;
    .end local v23    # "currentRect":Landroid/graphics/Rect;
    .end local v24    # "dbId":J
    .end local v27    # "moveX":F
    .end local v28    # "moveY":F
    .end local v29    # "pairItem":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;>;"
    .end local v30    # "parentOffset":[I
    .end local v31    # "prevRect":Landroid/graphics/Rect;
    .end local v34    # "translate":Landroid/view/animation/TranslateAnimation;
    :cond_4
    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    move-wide/from16 v24, v0

    goto/16 :goto_1

    .line 159
    .restart local v17    # "absXY":[I
    .restart local v23    # "currentRect":Landroid/graphics/Rect;
    .restart local v24    # "dbId":J
    .restart local v29    # "pairItem":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;>;"
    .restart local v30    # "parentOffset":[I
    .restart local v31    # "prevRect":Landroid/graphics/Rect;
    :cond_5
    invoke-virtual/range {v31 .. v31}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    div-float v9, v6, v8

    .line 161
    .local v9, "scale":F
    move-object/from16 v0, v31

    iget v6, v0, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    invoke-virtual/range {v31 .. v31}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v8, v10

    add-float v32, v6, v8

    .line 162
    .local v32, "previousCenterX":F
    move-object/from16 v0, v31

    iget v6, v0, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    invoke-virtual/range {v31 .. v31}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v8, v10

    add-float v33, v6, v8

    .line 163
    .local v33, "previousCenterY":F
    move-object/from16 v0, v23

    iget v6, v0, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v8, v10

    add-float v21, v6, v8

    .line 164
    .local v21, "currentCenterX":F
    move-object/from16 v0, v23

    iget v6, v0, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v8, v10

    add-float v22, v6, v8

    .line 166
    .local v22, "currentCenterY":F
    sub-float v6, v32, v21

    div-float v27, v6, v9

    .line 167
    .restart local v27    # "moveX":F
    sub-float v6, v33, v22

    div-float v28, v6, v9

    .line 169
    .restart local v28    # "moveY":F
    new-instance v4, Landroid/view/animation/ScaleAnimation;

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v13, 0x1

    const/high16 v14, 0x3f000000    # 0.5f

    const/4 v15, 0x1

    const/high16 v16, 0x3f000000    # 0.5f

    move-object v8, v4

    move v11, v9

    invoke-direct/range {v8 .. v16}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 171
    .restart local v4    # "scaleAnim":Landroid/view/animation/ScaleAnimation;
    new-instance v34, Landroid/view/animation/TranslateAnimation;

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-direct {v0, v1, v6, v2, v8}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .restart local v34    # "translate":Landroid/view/animation/TranslateAnimation;
    goto/16 :goto_2

    .line 183
    .end local v9    # "scale":F
    .end local v21    # "currentCenterX":F
    .end local v22    # "currentCenterY":F
    .end local v32    # "previousCenterX":F
    .end local v33    # "previousCenterY":F
    .restart local v19    # "cellLayout":Lcom/android/launcher3/home/WorkspaceCellLayout;
    .restart local v20    # "childAnimationSet":Landroid/view/animation/AnimationSet;
    :cond_6
    move-object/from16 v0, v20

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_3
.end method

.method public getDescendantFocusability()I
    .locals 2

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 53
    .local v0, "workspace":Lcom/android/launcher3/home/Workspace;
    :goto_0
    if-eqz v0, :cond_2

    .line 54
    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->isOverviewState()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->isScreenGridState()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 55
    :cond_0
    const/high16 v1, 0x60000

    .line 57
    :goto_1
    return v1

    .line 52
    .end local v0    # "workspace":Lcom/android/launcher3/home/Workspace;
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/home/Workspace;

    check-cast v1, Lcom/android/launcher3/home/Workspace;

    move-object v0, v1

    goto :goto_0

    .line 57
    .restart local v0    # "workspace":Lcom/android/launcher3/home/Workspace;
    :cond_2
    invoke-super {p0}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getDescendantFocusability()I

    move-result v1

    goto :goto_1
.end method

.method public isGridChanging()Z
    .locals 1

    .prologue
    .line 231
    iget-boolean v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;->mIsGridChanging:Z

    return v0
.end method

.method public makePreviousRectMap(Landroid/view/View;)V
    .locals 18
    .param p1, "childView"    # Landroid/view/View;

    .prologue
    .line 195
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v12

    .line 198
    .local v12, "tag":Ljava/lang/Object;
    const/4 v14, 0x2

    new-array v2, v14, [I

    .line 199
    .local v2, "absXY":[I
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 202
    const/4 v14, 0x2

    new-array v8, v14, [I

    .line 203
    .local v8, "parentOffset":[I
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;->getLocationOnScreen([I)V

    .line 204
    const/4 v14, 0x0

    aget v15, v2, v14

    const/16 v16, 0x0

    aget v16, v8, v16

    sub-int v15, v15, v16

    aput v15, v2, v14

    .line 207
    if-nez v12, :cond_1

    const-wide/16 v6, -0x64

    .line 209
    .end local v12    # "tag":Ljava/lang/Object;
    .local v6, "dbId":J
    :goto_0
    const/high16 v10, 0x3f800000    # 1.0f

    .line 210
    .local v10, "scaleX":F
    const/high16 v11, 0x3f800000    # 1.0f

    .line 212
    .local v11, "scaleY":F
    move-object/from16 v0, p1

    instance-of v14, v0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    if-eqz v14, :cond_0

    .line 213
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScaleX()F

    move-result v10

    .line 214
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScaleY()F

    move-result v11

    .line 217
    :cond_0
    const/4 v14, 0x0

    aget v14, v2, v14

    int-to-float v5, v14

    .line 218
    .local v5, "left":F
    const/4 v14, 0x1

    aget v14, v2, v14

    int-to-float v13, v14

    .line 219
    .local v13, "top":F
    const/4 v14, 0x0

    aget v14, v2, v14

    int-to-float v14, v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v15

    int-to-float v15, v15

    mul-float/2addr v15, v10

    add-float v9, v14, v15

    .line 220
    .local v9, "right":F
    const/4 v14, 0x1

    aget v14, v2, v14

    int-to-float v14, v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v15

    int-to-float v15, v15

    mul-float/2addr v15, v11

    add-float v3, v14, v15

    .line 222
    .local v3, "bottom":F
    new-instance v4, Landroid/graphics/Rect;

    float-to-int v14, v5

    float-to-int v15, v13

    float-to-int v0, v9

    move/from16 v16, v0

    float-to-int v0, v3

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v4, v14, v15, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 223
    .local v4, "childViewRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;->mPreviousRectMap:Landroid/util/LongSparseArray;

    invoke-virtual {v14, v6, v7, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 224
    return-void

    .line 207
    .end local v3    # "bottom":F
    .end local v4    # "childViewRect":Landroid/graphics/Rect;
    .end local v5    # "left":F
    .end local v6    # "dbId":J
    .end local v9    # "right":F
    .end local v10    # "scaleX":F
    .end local v11    # "scaleY":F
    .end local v13    # "top":F
    .restart local v12    # "tag":Ljava/lang/Object;
    :cond_1
    check-cast v12, Lcom/android/launcher3/common/base/item/ItemInfo;

    .end local v12    # "tag":Ljava/lang/Object;
    iget-wide v6, v12, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/home/Workspace;

    check-cast v0, Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->isOverviewState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/home/Workspace;

    check-cast v0, Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->isScreenGridState()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 68
    invoke-super/range {p0 .. p5}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->onLayout(ZIIII)V

    .line 70
    iget-boolean v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;->mIsGridChanging:Z

    if-eqz v0, :cond_0

    .line 71
    invoke-direct {p0}, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;->startGridChangeAnimation()V

    .line 73
    :cond_0
    return-void
.end method

.method public setGridChangeState(Z)V
    .locals 0
    .param p1, "isGridChanging"    # Z

    .prologue
    .line 227
    iput-boolean p1, p0, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;->mIsGridChanging:Z

    .line 228
    return-void
.end method
