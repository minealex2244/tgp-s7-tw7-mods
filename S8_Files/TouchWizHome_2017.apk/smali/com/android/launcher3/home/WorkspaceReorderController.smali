.class Lcom/android/launcher3/home/WorkspaceReorderController;
.super Ljava/lang/Object;
.source "WorkspaceReorderController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;,
        Lcom/android/launcher3/home/WorkspaceReorderController$ReorderAlarmListener;,
        Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;,
        Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;,
        Lcom/android/launcher3/home/WorkspaceReorderController$ReorderPreviewAnimation;,
        Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;
    }
.end annotation


# static fields
.field private static final INVALID_DIRECTION:I = -0x64

.field private static final MODE_ACCEPT_DROP:I = 0x4

.field private static final MODE_DRAG_OVER:I = 0x1

.field static final MODE_ON_DROP:I = 0x2

.field static final MODE_ON_DROP_EXTERNAL:I = 0x3

.field private static final MODE_SHOW_REORDER_HINT:I = 0x0

.field private static final REORDER_ANIMATION_DURATION:I = 0x96

.field private static final REORDER_PREVIEW_MAGNITUDE:I = 0x14

.field private static final REORDER_TIMEOUT:I = 0x15e

.field private static final TAG:Ljava/lang/String; = "WSReorderController"


# instance fields
.field private mCountX:I

.field private mCountY:I

.field private mDirectionVector:[I

.field private mIntersectingViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mItemPlacementDirty:Z

.field private mLastReorderX:I

.field private mLastReorderY:I

.field private mLayout:Lcom/android/launcher3/common/base/view/CellLayout;

.field private mOccupied:[[Z

.field private mOccupiedRect:Landroid/graphics/Rect;

.field private mPreviousReorderDirection:[I

.field private final mReorderAlarm:Lcom/android/launcher3/util/alarm/Alarm;

.field private mShakeAnimators:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Lcom/android/launcher3/home/WorkspaceReorderController$ReorderPreviewAnimation;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetState:Lcom/android/launcher3/common/drag/DragState;

.field private final mTempLocation:[I

.field private mTmpOccupied:[[Z

.field private final mTmpPoint:[I


# direct methods
.method constructor <init>(Lcom/android/launcher3/common/drag/DragState;)V
    .locals 3
    .param p1, "targetState"    # Lcom/android/launcher3/common/drag/DragState;

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x2

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mTmpPoint:[I

    .line 54
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mTempLocation:[I

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mShakeAnimators:Ljava/util/HashMap;

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mItemPlacementDirty:Z

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mIntersectingViews:Ljava/util/ArrayList;

    .line 74
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mOccupiedRect:Landroid/graphics/Rect;

    .line 75
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mDirectionVector:[I

    .line 76
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mPreviousReorderDirection:[I

    .line 79
    new-instance v0, Lcom/android/launcher3/util/alarm/Alarm;

    invoke-direct {v0}, Lcom/android/launcher3/util/alarm/Alarm;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mReorderAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    .line 80
    iput v2, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mLastReorderX:I

    .line 81
    iput v2, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mLastReorderY:I

    .line 85
    iput-object p1, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mTargetState:Lcom/android/launcher3/common/drag/DragState;

    .line 86
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/home/WorkspaceReorderController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/WorkspaceReorderController;

    .prologue
    .line 46
    iget v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mCountY:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/launcher3/home/WorkspaceReorderController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/WorkspaceReorderController;

    .prologue
    .line 46
    iget v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mCountX:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/launcher3/home/WorkspaceReorderController;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/WorkspaceReorderController;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mTmpPoint:[I

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/launcher3/home/WorkspaceReorderController;)Lcom/android/launcher3/common/base/view/CellLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/WorkspaceReorderController;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/launcher3/home/WorkspaceReorderController;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/WorkspaceReorderController;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mShakeAnimators:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/launcher3/home/WorkspaceReorderController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/home/WorkspaceReorderController;
    .param p1, "x1"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mLastReorderX:I

    return p1
.end method

.method static synthetic access$702(Lcom/android/launcher3/home/WorkspaceReorderController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/home/WorkspaceReorderController;
    .param p1, "x1"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mLastReorderY:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/launcher3/home/WorkspaceReorderController;)Lcom/android/launcher3/common/drag/DragState;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/WorkspaceReorderController;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mTargetState:Lcom/android/launcher3/common/drag/DragState;

    return-object v0
.end method

.method private addViewToTempLocation(Landroid/view/View;Landroid/graphics/Rect;[ILcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;)Z
    .locals 11
    .param p1, "v"    # Landroid/view/View;
    .param p2, "rectOccupiedByPotentialDrop"    # Landroid/graphics/Rect;
    .param p3, "direction"    # [I
    .param p4, "currentState"    # Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;

    .prologue
    .line 167
    iget-object v0, p4, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;

    .line 168
    .local v9, "c":Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;
    const/4 v10, 0x0

    .line 169
    .local v10, "success":Z
    iget v1, v9, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->x:I

    iget v2, v9, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->y:I

    iget v3, v9, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->spanX:I

    iget v4, v9, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->spanY:I

    iget-object v5, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mTmpOccupied:[[Z

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/home/WorkspaceReorderController;->markCellsForView(IIII[[ZZ)V

    .line 170
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mTmpOccupied:[[Z

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Lcom/android/launcher3/home/WorkspaceReorderController;->markCellsForRect(Landroid/graphics/Rect;[[ZZ)V

    .line 172
    iget v1, v9, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->x:I

    iget v2, v9, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->y:I

    iget v3, v9, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->spanX:I

    iget v4, v9, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->spanY:I

    iget-object v6, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mTmpOccupied:[[Z

    const/4 v7, 0x0

    check-cast v7, [[Z

    iget-object v8, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mTempLocation:[I

    move-object v0, p0

    move-object v5, p3

    invoke-direct/range {v0 .. v8}, Lcom/android/launcher3/home/WorkspaceReorderController;->findNearestArea(IIII[I[[Z[[Z[I)[I

    .line 174
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mTempLocation:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mTempLocation:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    if-ltz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mTempLocation:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, v9, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->x:I

    .line 176
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mTempLocation:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, v9, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->y:I

    .line 177
    const/4 v10, 0x1

    .line 179
    :cond_0
    iget v1, v9, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->x:I

    iget v2, v9, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->y:I

    iget v3, v9, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->spanX:I

    iget v4, v9, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->spanY:I

    iget-object v5, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mTmpOccupied:[[Z

    const/4 v6, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/home/WorkspaceReorderController;->markCellsForView(IIII[[ZZ)V

    .line 180
    return v10
.end method

.method private addViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;)Z
    .locals 25
    .param p2, "rectOccupiedByPotentialDrop"    # Landroid/graphics/Rect;
    .param p3, "direction"    # [I
    .param p4, "dragView"    # Landroid/view/View;
    .param p5, "currentState"    # Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/graphics/Rect;",
            "[I",
            "Landroid/view/View;",
            "Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 517
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    const/16 v22, 0x1

    .line 569
    :cond_0
    return v22

    .line 519
    :cond_1
    const/16 v22, 0x0

    .line 520
    .local v22, "success":Z
    const/16 v17, 0x0

    .line 522
    .local v17, "boundingRect":Landroid/graphics/Rect;
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/view/View;

    .line 523
    .local v24, "v":Landroid/view/View;
    move-object/from16 v0, p5

    iget-object v3, v0, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->map:Ljava/util/HashMap;

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;

    .line 524
    .local v18, "c":Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;
    if-nez v17, :cond_2

    .line 525
    new-instance v17, Landroid/graphics/Rect;

    .end local v17    # "boundingRect":Landroid/graphics/Rect;
    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->x:I

    move-object/from16 v0, v18

    iget v4, v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->y:I

    move-object/from16 v0, v18

    iget v5, v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->x:I

    move-object/from16 v0, v18

    iget v6, v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->spanX:I

    add-int/2addr v5, v6

    move-object/from16 v0, v18

    iget v6, v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->y:I

    move-object/from16 v0, v18

    iget v8, v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->spanY:I

    add-int/2addr v6, v8

    move-object/from16 v0, v17

    invoke-direct {v0, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .restart local v17    # "boundingRect":Landroid/graphics/Rect;
    goto :goto_0

    .line 527
    :cond_2
    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->x:I

    move-object/from16 v0, v18

    iget v4, v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->y:I

    move-object/from16 v0, v18

    iget v5, v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->x:I

    move-object/from16 v0, v18

    iget v6, v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->spanX:I

    add-int/2addr v5, v6

    move-object/from16 v0, v18

    iget v6, v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->y:I

    move-object/from16 v0, v18

    iget v8, v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->spanY:I

    add-int/2addr v6, v8

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Rect;->union(IIII)V

    goto :goto_0

    .line 532
    .end local v18    # "c":Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;
    .end local v24    # "v":Landroid/view/View;
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/view/View;

    .line 533
    .restart local v24    # "v":Landroid/view/View;
    move-object/from16 v0, p5

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->map:Ljava/util/HashMap;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;

    .line 534
    .restart local v18    # "c":Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;
    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->x:I

    move-object/from16 v0, v18

    iget v4, v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->y:I

    move-object/from16 v0, v18

    iget v5, v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->spanX:I

    move-object/from16 v0, v18

    iget v6, v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->spanY:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/WorkspaceReorderController;->mTmpOccupied:[[Z

    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/launcher3/home/WorkspaceReorderController;->markCellsForView(IIII[[ZZ)V

    goto :goto_1

    .line 537
    .end local v18    # "c":Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;
    .end local v24    # "v":Landroid/view/View;
    :cond_4
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->height()I

    move-result v3

    filled-new-array {v2, v3}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[Z

    .line 538
    .local v7, "blockOccupied":[[Z
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    .line 539
    .local v23, "top":I
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    .line 542
    .local v21, "left":I
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/view/View;

    .line 543
    .restart local v24    # "v":Landroid/view/View;
    move-object/from16 v0, p5

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->map:Ljava/util/HashMap;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;

    .line 544
    .restart local v18    # "c":Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;
    move-object/from16 v0, v18

    iget v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->x:I

    sub-int v3, v2, v21

    move-object/from16 v0, v18

    iget v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->y:I

    sub-int v4, v2, v23

    move-object/from16 v0, v18

    iget v5, v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->spanX:I

    move-object/from16 v0, v18

    iget v6, v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->spanY:I

    const/4 v8, 0x1

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/launcher3/home/WorkspaceReorderController;->markCellsForView(IIII[[ZZ)V

    goto :goto_2

    .line 547
    .end local v18    # "c":Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;
    .end local v24    # "v":Landroid/view/View;
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController;->mTmpOccupied:[[Z

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher3/home/WorkspaceReorderController;->markCellsForRect(Landroid/graphics/Rect;[[ZZ)V

    .line 549
    move-object/from16 v0, v17

    iget v9, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v17

    iget v10, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->width()I

    move-result v11

    .line 550
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->height()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/home/WorkspaceReorderController;->mTmpOccupied:[[Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/WorkspaceReorderController;->mTempLocation:[I

    move-object/from16 v16, v0

    move-object/from16 v8, p0

    move-object/from16 v13, p3

    move-object v15, v7

    .line 549
    invoke-direct/range {v8 .. v16}, Lcom/android/launcher3/home/WorkspaceReorderController;->findNearestArea(IIII[I[[Z[[Z[I)[I

    .line 553
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController;->mTempLocation:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    if-ltz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController;->mTempLocation:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    if-ltz v2, :cond_7

    .line 554
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController;->mTempLocation:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    move-object/from16 v0, v17

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int v19, v2, v3

    .line 555
    .local v19, "deltaX":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController;->mTempLocation:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    move-object/from16 v0, v17

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int v20, v2, v3

    .line 556
    .local v20, "deltaY":I
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/view/View;

    .line 557
    .restart local v24    # "v":Landroid/view/View;
    move-object/from16 v0, p5

    iget-object v3, v0, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->map:Ljava/util/HashMap;

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;

    .line 558
    .restart local v18    # "c":Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;
    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->x:I

    add-int v3, v3, v19

    move-object/from16 v0, v18

    iput v3, v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->x:I

    .line 559
    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->y:I

    add-int v3, v3, v20

    move-object/from16 v0, v18

    iput v3, v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->y:I

    goto :goto_3

    .line 561
    .end local v18    # "c":Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;
    .end local v24    # "v":Landroid/view/View;
    :cond_6
    const/16 v22, 0x1

    .line 565
    .end local v19    # "deltaX":I
    .end local v20    # "deltaY":I
    :cond_7
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/view/View;

    .line 566
    .restart local v24    # "v":Landroid/view/View;
    move-object/from16 v0, p5

    iget-object v3, v0, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->map:Ljava/util/HashMap;

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;

    .line 567
    .restart local v18    # "c":Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;
    move-object/from16 v0, v18

    iget v9, v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->x:I

    move-object/from16 v0, v18

    iget v10, v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->y:I

    move-object/from16 v0, v18

    iget v11, v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->spanX:I

    move-object/from16 v0, v18

    iget v12, v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->spanY:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/home/WorkspaceReorderController;->mTmpOccupied:[[Z

    const/4 v14, 0x1

    move-object/from16 v8, p0

    invoke-direct/range {v8 .. v14}, Lcom/android/launcher3/home/WorkspaceReorderController;->markCellsForView(IIII[[ZZ)V

    goto :goto_4
.end method

.method private animateItemsToSolution(Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;Landroid/view/View;Z)V
    .locals 16
    .param p1, "solution"    # Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;
    .param p2, "dragView"    # Landroid/view/View;
    .param p3, "commitDragView"    # Z

    .prologue
    .line 849
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher3/home/WorkspaceReorderController;->mTmpOccupied:[[Z

    .line 850
    .local v15, "occupied":[[Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/home/WorkspaceReorderController;->mLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v12

    .line 852
    .local v12, "clc":Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/launcher3/home/WorkspaceReorderController;->mCountX:I

    if-ge v13, v1, :cond_1

    .line 853
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/launcher3/home/WorkspaceReorderController;->mCountY:I

    if-ge v14, v1, :cond_0

    .line 854
    aget-object v1, v15, v13

    const/4 v3, 0x0

    aput-boolean v3, v1, v14

    .line 853
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 852
    :cond_0
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 858
    .end local v14    # "j":I
    :cond_1
    invoke-virtual {v12}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v11

    .line 859
    .local v11, "childCount":I
    const/4 v13, 0x0

    :goto_2
    if-ge v13, v11, :cond_4

    .line 860
    invoke-virtual {v12, v13}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 861
    .local v2, "child":Landroid/view/View;
    move-object/from16 v0, p2

    if-ne v2, v0, :cond_3

    .line 859
    :cond_2
    :goto_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 862
    :cond_3
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;

    .line 863
    .local v10, "c":Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;
    if-eqz v10, :cond_2

    .line 864
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/home/WorkspaceReorderController;->mLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    iget v3, v10, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->x:I

    iget v4, v10, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->y:I

    const/16 v5, 0x96

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher3/home/WorkspaceReorderController;->mTmpOccupied:[[Z

    invoke-virtual/range {v1 .. v9}, Lcom/android/launcher3/common/base/view/CellLayout;->animateChildToPosition(Landroid/view/View;IIIIZZ[[Z)Z

    .line 866
    iget v4, v10, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->x:I

    iget v5, v10, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->y:I

    iget v6, v10, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->spanX:I

    iget v7, v10, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->spanY:I

    const/4 v9, 0x1

    move-object/from16 v3, p0

    move-object v8, v15

    invoke-direct/range {v3 .. v9}, Lcom/android/launcher3/home/WorkspaceReorderController;->markCellsForView(IIII[[ZZ)V

    goto :goto_3

    .line 870
    .end local v2    # "child":Landroid/view/View;
    .end local v10    # "c":Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;
    :cond_4
    if-eqz p3, :cond_5

    .line 871
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->dragViewX:I

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->dragViewY:I

    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->dragViewSpanX:I

    move-object/from16 v0, p1

    iget v7, v0, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->dragViewSpanY:I

    const/4 v9, 0x1

    move-object/from16 v3, p0

    move-object v8, v15

    invoke-direct/range {v3 .. v9}, Lcom/android/launcher3/home/WorkspaceReorderController;->markCellsForView(IIII[[ZZ)V

    .line 874
    :cond_5
    return-void
.end method

.method private attemptPushInDirection(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;)Z
    .locals 5
    .param p2, "occupied"    # Landroid/graphics/Rect;
    .param p3, "direction"    # [I
    .param p4, "ignoreView"    # Landroid/view/View;
    .param p5, "solution"    # Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/graphics/Rect;",
            "[I",
            "Landroid/view/View;",
            "Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "intersectingViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 577
    aget v3, p3, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    aget v4, p3, v1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    add-int/2addr v3, v4

    if-le v3, v1, :cond_2

    .line 580
    aget v0, p3, v1

    .line 581
    .local v0, "temp":I
    aput v2, p3, v1

    .line 583
    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/home/WorkspaceReorderController;->pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 666
    .end local v0    # "temp":I
    :cond_0
    :goto_0
    return v1

    .line 587
    .restart local v0    # "temp":I
    :cond_1
    aput v0, p3, v1

    .line 588
    aget v0, p3, v2

    .line 589
    aput v2, p3, v2

    .line 591
    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/home/WorkspaceReorderController;->pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 596
    aput v0, p3, v2

    .line 599
    aget v3, p3, v2

    mul-int/lit8 v3, v3, -0x1

    aput v3, p3, v2

    .line 600
    aget v3, p3, v1

    mul-int/lit8 v3, v3, -0x1

    aput v3, p3, v1

    .line 601
    aget v0, p3, v1

    .line 602
    aput v2, p3, v1

    .line 603
    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/home/WorkspaceReorderController;->pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 608
    aput v0, p3, v1

    .line 609
    aget v0, p3, v2

    .line 610
    aput v2, p3, v2

    .line 611
    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/home/WorkspaceReorderController;->pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 616
    aput v0, p3, v2

    .line 617
    aget v3, p3, v2

    mul-int/lit8 v3, v3, -0x1

    aput v3, p3, v2

    .line 618
    aget v3, p3, v1

    mul-int/lit8 v3, v3, -0x1

    aput v3, p3, v1

    :goto_1
    move v1, v2

    .line 666
    goto :goto_0

    .line 623
    .end local v0    # "temp":I
    :cond_2
    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/home/WorkspaceReorderController;->pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 628
    aget v3, p3, v2

    mul-int/lit8 v3, v3, -0x1

    aput v3, p3, v2

    .line 629
    aget v3, p3, v1

    mul-int/lit8 v3, v3, -0x1

    aput v3, p3, v1

    .line 630
    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/home/WorkspaceReorderController;->pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 635
    aget v3, p3, v2

    mul-int/lit8 v3, v3, -0x1

    aput v3, p3, v2

    .line 636
    aget v3, p3, v1

    mul-int/lit8 v3, v3, -0x1

    aput v3, p3, v1

    .line 642
    aget v0, p3, v1

    .line 643
    .restart local v0    # "temp":I
    aget v3, p3, v2

    aput v3, p3, v1

    .line 644
    aput v0, p3, v2

    .line 645
    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/home/WorkspaceReorderController;->pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 651
    aget v3, p3, v2

    mul-int/lit8 v3, v3, -0x1

    aput v3, p3, v2

    .line 652
    aget v3, p3, v1

    mul-int/lit8 v3, v3, -0x1

    aput v3, p3, v1

    .line 653
    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/home/WorkspaceReorderController;->pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 658
    aget v3, p3, v2

    mul-int/lit8 v3, v3, -0x1

    aput v3, p3, v2

    .line 659
    aget v3, p3, v1

    mul-int/lit8 v3, v3, -0x1

    aput v3, p3, v1

    .line 662
    aget v0, p3, v1

    .line 663
    aget v3, p3, v2

    aput v3, p3, v1

    .line 664
    aput v0, p3, v2

    goto :goto_1
.end method

.method private beginOrAdjustReorderPreviewAnimations(Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;Landroid/view/View;I)V
    .locals 17
    .param p1, "solution"    # Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;
    .param p2, "dragView"    # Landroid/view/View;
    .param p3, "mode"    # I

    .prologue
    .line 878
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController;->mLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v2}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v13

    .line 879
    .local v13, "clc":Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    invoke-virtual {v13}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v12

    .line 881
    .local v12, "childCount":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    if-ge v14, v12, :cond_3

    .line 882
    invoke-virtual {v13, v14}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 883
    .local v3, "child":Landroid/view/View;
    move-object/from16 v0, p2

    if-ne v3, v0, :cond_1

    .line 881
    :cond_0
    :goto_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 884
    :cond_1
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;

    .line 885
    .local v11, "c":Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;
    if-nez p3, :cond_2

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->intersectingViews:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->intersectingViews:Ljava/util/ArrayList;

    .line 886
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const/16 v16, 0x1

    .line 888
    .local v16, "skip":Z
    :goto_2
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    .line 889
    .local v15, "lp":Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;
    if-eqz v11, :cond_0

    if-nez v16, :cond_0

    .line 890
    new-instance v1, Lcom/android/launcher3/home/WorkspaceReorderController$ReorderPreviewAnimation;

    iget v5, v15, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellX:I

    iget v6, v15, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellY:I

    iget v7, v11, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->x:I

    iget v8, v11, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->y:I

    iget v9, v11, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->spanX:I

    iget v10, v11, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->spanY:I

    move-object/from16 v2, p0

    move/from16 v4, p3

    invoke-direct/range {v1 .. v10}, Lcom/android/launcher3/home/WorkspaceReorderController$ReorderPreviewAnimation;-><init>(Lcom/android/launcher3/home/WorkspaceReorderController;Landroid/view/View;IIIIIII)V

    .line 892
    .local v1, "rha":Lcom/android/launcher3/home/WorkspaceReorderController$ReorderPreviewAnimation;
    invoke-virtual {v1}, Lcom/android/launcher3/home/WorkspaceReorderController$ReorderPreviewAnimation;->animate()V

    goto :goto_1

    .line 886
    .end local v1    # "rha":Lcom/android/launcher3/home/WorkspaceReorderController$ReorderPreviewAnimation;
    .end local v15    # "lp":Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;
    .end local v16    # "skip":Z
    :cond_2
    const/16 v16, 0x0

    goto :goto_2

    .line 895
    .end local v3    # "child":Landroid/view/View;
    .end local v11    # "c":Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;
    :cond_3
    return-void
.end method

.method private commitTempPlacement()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 1019
    iget-object v6, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v6}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v2

    .line 1021
    .local v2, "clc":Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v6, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mCountX:I

    if-ge v3, v6, :cond_0

    .line 1022
    iget-object v6, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mTmpOccupied:[[Z

    aget-object v6, v6, v3

    iget-object v7, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mOccupied:[[Z

    aget-object v7, v7, v3

    iget v8, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mCountY:I

    invoke-static {v6, v9, v7, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1021
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1024
    :cond_0
    invoke-virtual {v2}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v1

    .line 1025
    .local v1, "childCount":I
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_4

    .line 1026
    invoke-virtual {v2, v3}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1027
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    .line 1028
    .local v5, "lp":Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 1031
    .local v4, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    if-eqz v4, :cond_3

    .line 1032
    iget v6, v4, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    iget v7, v5, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->tmpCellX:I

    if-ne v6, v7, :cond_1

    iget v6, v4, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    iget v7, v5, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->tmpCellY:I

    if-ne v6, v7, :cond_1

    iget v6, v4, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    iget v7, v5, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellHSpan:I

    if-ne v6, v7, :cond_1

    iget v6, v4, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    iget v7, v5, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellVSpan:I

    if-eq v6, v7, :cond_2

    .line 1034
    :cond_1
    const/4 v6, 0x1

    iput-boolean v6, v4, Lcom/android/launcher3/common/base/item/ItemInfo;->requiresDbUpdate:Z

    .line 1036
    :cond_2
    iget v6, v5, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->tmpCellX:I

    iput v6, v5, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellX:I

    iput v6, v4, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    .line 1037
    iget v6, v5, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->tmpCellY:I

    iput v6, v5, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellY:I

    iput v6, v4, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    .line 1038
    iget v6, v5, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellHSpan:I

    iput v6, v4, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    .line 1039
    iget v6, v5, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellVSpan:I

    iput v6, v4, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    .line 1025
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1043
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v5    # "lp":Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;
    :cond_4
    iget-object v6, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mTargetState:Lcom/android/launcher3/common/drag/DragState;

    iget-object v7, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-interface {v6, v7}, Lcom/android/launcher3/common/drag/DragState;->commit(Lcom/android/launcher3/common/base/view/CellLayout;)V

    .line 1044
    return-void
.end method

.method private completeAndClearReorderPreviewAnimations()V
    .locals 3

    .prologue
    .line 1012
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mShakeAnimators:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/home/WorkspaceReorderController$ReorderPreviewAnimation;

    .line 1013
    .local v0, "a":Lcom/android/launcher3/home/WorkspaceReorderController$ReorderPreviewAnimation;
    invoke-virtual {v0}, Lcom/android/launcher3/home/WorkspaceReorderController$ReorderPreviewAnimation;->completeAnimationImmediately()V

    goto :goto_0

    .line 1015
    .end local v0    # "a":Lcom/android/launcher3/home/WorkspaceReorderController$ReorderPreviewAnimation;
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mShakeAnimators:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 1016
    return-void
.end method

.method private computeDirectionVector(FF[I)V
    .locals 8
    .param p1, "deltaX"    # F
    .param p2, "deltaY"    # F
    .param p3, "result"    # [I

    .prologue
    const/4 v5, 0x1

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    const/4 v4, 0x0

    .line 730
    div-float v2, p2, p1

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    .line 732
    .local v0, "angle":D
    aput v4, p3, v4

    .line 733
    aput v4, p3, v5

    .line 734
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v2, v2, v6

    if-lez v2, :cond_0

    .line 735
    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result v2

    float-to-int v2, v2

    aput v2, p3, v4

    .line 737
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v2, v2, v6

    if-lez v2, :cond_1

    .line 738
    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    float-to-int v2, v2

    aput v2, p3, v5

    .line 740
    :cond_1
    return-void
.end method

.method private copyCurrentStateToSolution(Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;)V
    .locals 10
    .param p1, "solution"    # Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;

    .prologue
    .line 809
    iget-object v6, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v6}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v3

    .line 810
    .local v3, "clc":Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    invoke-virtual {v3}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v2

    .line 812
    .local v2, "childCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 813
    invoke-virtual {v3, v4}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 814
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    .line 816
    .local v5, "lp":Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;
    new-instance v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;

    iget v6, v5, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellX:I

    iget v7, v5, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellY:I

    iget v8, v5, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellHSpan:I

    iget v9, v5, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellVSpan:I

    invoke-direct {v0, v6, v7, v8, v9}, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;-><init>(IIII)V

    .line 817
    .local v0, "c":Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;
    invoke-virtual {p1, v1, v0}, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->add(Landroid/view/View;Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;)V

    .line 812
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 819
    .end local v0    # "c":Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;
    .end local v1    # "child":Landroid/view/View;
    .end local v5    # "lp":Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method private copyOccupiedArray([[Z)V
    .locals 5
    .param p1, "occupied"    # [[Z

    .prologue
    const/4 v4, 0x0

    .line 743
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mCountX:I

    if-ge v0, v1, :cond_0

    .line 744
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mOccupied:[[Z

    aget-object v1, v1, v0

    aget-object v2, p1, v0

    iget v3, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mCountY:I

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 743
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 746
    :cond_0
    return-void
.end method

.method private copySolutionToTempState(Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;Landroid/view/View;)V
    .locals 15
    .param p1, "solution"    # Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;
    .param p2, "dragView"    # Landroid/view/View;

    .prologue
    .line 822
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v11

    .line 824
    .local v11, "clc":Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    iget v1, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mCountX:I

    if-ge v12, v1, :cond_1

    .line 825
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_1
    iget v1, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mCountY:I

    if-ge v13, v1, :cond_0

    .line 826
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mTmpOccupied:[[Z

    aget-object v1, v1, v12

    const/4 v2, 0x0

    aput-boolean v2, v1, v13

    .line 825
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 824
    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 830
    .end local v13    # "j":I
    :cond_1
    invoke-virtual {v11}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v10

    .line 831
    .local v10, "childCount":I
    const/4 v12, 0x0

    :goto_2
    if-ge v12, v10, :cond_4

    .line 832
    invoke-virtual {v11, v12}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 833
    .local v9, "child":Landroid/view/View;
    move-object/from16 v0, p2

    if-ne v9, v0, :cond_3

    .line 831
    :cond_2
    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 834
    :cond_3
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    .line 835
    .local v14, "lp":Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;

    .line 836
    .local v8, "c":Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;
    if-eqz v8, :cond_2

    .line 837
    iget v1, v8, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->x:I

    iput v1, v14, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->tmpCellX:I

    .line 838
    iget v1, v8, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->y:I

    iput v1, v14, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->tmpCellY:I

    .line 839
    iget v1, v8, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->spanX:I

    iput v1, v14, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellHSpan:I

    .line 840
    iget v1, v8, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->spanY:I

    iput v1, v14, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellVSpan:I

    .line 841
    iget v2, v8, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->x:I

    iget v3, v8, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->y:I

    iget v4, v8, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->spanX:I

    iget v5, v8, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->spanY:I

    iget-object v6, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mTmpOccupied:[[Z

    const/4 v7, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/launcher3/home/WorkspaceReorderController;->markCellsForView(IIII[[ZZ)V

    goto :goto_3

    .line 844
    .end local v8    # "c":Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;
    .end local v9    # "child":Landroid/view/View;
    .end local v14    # "lp":Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;
    :cond_4
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->dragViewX:I

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->dragViewY:I

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->dragViewSpanX:I

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->dragViewSpanY:I

    iget-object v6, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mTmpOccupied:[[Z

    const/4 v7, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/launcher3/home/WorkspaceReorderController;->markCellsForView(IIII[[ZZ)V

    .line 846
    return-void
.end method

.method private findConfigurationNoShuffle(IILcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;)Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;
    .locals 20
    .param p1, "pixelX"    # I
    .param p2, "pixelY"    # I
    .param p3, "spanInfo"    # Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;
    .param p4, "solution"    # Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;

    .prologue
    .line 1057
    const/4 v2, 0x2

    new-array v7, v2, [I

    .line 1058
    .local v7, "result":[I
    const/4 v2, 0x2

    new-array v0, v2, [I

    move-object/from16 v16, v0

    .line 1060
    .local v16, "resultSpan":[I
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->supportSpans:Ljava/util/ArrayList;

    if-eqz v2, :cond_5

    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->supportSpans:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 1061
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->supportSpans:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 1064
    .local v19, "size":I
    const/16 v17, 0x0

    .local v17, "index":I
    :goto_0
    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_0

    .line 1065
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->supportSpans:Ljava/util/ArrayList;

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [I

    .line 1066
    .local v18, "s":[I
    move-object/from16 v0, p3

    iget v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->spanX:I

    const/4 v3, 0x0

    aget v3, v18, v3

    if-ne v2, v3, :cond_2

    move-object/from16 v0, p3

    iget v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->spanY:I

    const/4 v3, 0x1

    aget v3, v18, v3

    if-ne v2, v3, :cond_2

    .line 1070
    .end local v18    # "s":[I
    :cond_0
    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_4

    .line 1071
    :goto_1
    if-ltz v17, :cond_1

    .line 1072
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->supportSpans:Ljava/util/ArrayList;

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [I

    .line 1073
    .restart local v18    # "s":[I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController;->mLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    const/4 v3, 0x0

    aget v5, v18, v3

    const/4 v3, 0x1

    aget v6, v18, v3

    move/from16 v3, p1

    move/from16 v4, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/common/base/view/CellLayout;->findNearestVacantArea(IIII[I)[I

    .line 1074
    const/4 v2, 0x0

    aget v2, v7, v2

    if-ltz v2, :cond_3

    const/4 v2, 0x1

    aget v2, v7, v2

    if-ltz v2, :cond_3

    .line 1075
    const/4 v2, 0x0

    const/4 v3, 0x0

    aget v3, v18, v3

    aput v3, v16, v2

    .line 1076
    const/4 v2, 0x1

    const/4 v3, 0x1

    aget v3, v18, v3

    aput v3, v16, v2

    .line 1088
    .end local v17    # "index":I
    .end local v18    # "s":[I
    .end local v19    # "size":I
    :cond_1
    :goto_2
    const/4 v2, 0x0

    aget v2, v7, v2

    if-ltz v2, :cond_6

    const/4 v2, 0x1

    aget v2, v7, v2

    if-ltz v2, :cond_6

    .line 1089
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/android/launcher3/home/WorkspaceReorderController;->copyCurrentStateToSolution(Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;)V

    .line 1090
    const/4 v2, 0x0

    aget v2, v7, v2

    move-object/from16 v0, p4

    iput v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->dragViewX:I

    .line 1091
    const/4 v2, 0x1

    aget v2, v7, v2

    move-object/from16 v0, p4

    iput v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->dragViewY:I

    .line 1092
    const/4 v2, 0x0

    aget v2, v16, v2

    move-object/from16 v0, p4

    iput v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->dragViewSpanX:I

    .line 1093
    const/4 v2, 0x1

    aget v2, v16, v2

    move-object/from16 v0, p4

    iput v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->dragViewSpanY:I

    .line 1094
    const/4 v2, 0x1

    move-object/from16 v0, p4

    iput-boolean v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->isSolution:Z

    .line 1098
    :goto_3
    return-object p4

    .line 1064
    .restart local v17    # "index":I
    .restart local v18    # "s":[I
    .restart local v19    # "size":I
    :cond_2
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_0

    .line 1071
    :cond_3
    add-int/lit8 v17, v17, -0x1

    goto :goto_1

    .line 1081
    .end local v18    # "s":[I
    :cond_4
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, -0x1

    aput v4, v7, v3

    aput v4, v7, v2

    goto :goto_2

    .line 1084
    .end local v17    # "index":I
    .end local v19    # "size":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/home/WorkspaceReorderController;->mLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v0, p3

    iget v11, v0, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->minSpanX:I

    move-object/from16 v0, p3

    iget v12, v0, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->minSpanY:I

    move-object/from16 v0, p3

    iget v13, v0, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->spanX:I

    move-object/from16 v0, p3

    iget v14, v0, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->spanY:I

    move/from16 v9, p1

    move/from16 v10, p2

    move-object v15, v7

    invoke-virtual/range {v8 .. v16}, Lcom/android/launcher3/common/base/view/CellLayout;->findNearestVacantArea(IIIIII[I[I)[I

    goto :goto_2

    .line 1096
    :cond_6
    const/4 v2, 0x0

    move-object/from16 v0, p4

    iput-boolean v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->isSolution:Z

    goto :goto_3
.end method

.method private findNearestArea(IIII[I[[Z[[Z[I)[I
    .locals 22
    .param p1, "cellX"    # I
    .param p2, "cellY"    # I
    .param p3, "spanX"    # I
    .param p4, "spanY"    # I
    .param p5, "direction"    # [I
    .param p6, "occupied"    # [[Z
    .param p7, "blockOccupied"    # [[Z
    .param p8, "result"    # [I

    .prologue
    .line 112
    if-eqz p8, :cond_1

    move-object/from16 v4, p8

    .line 113
    .local v4, "bestXY":[I
    :goto_0
    const v3, 0x7f7fffff    # Float.MAX_VALUE

    .line 114
    .local v3, "bestDistance":F
    const/high16 v2, -0x80000000

    .line 116
    .local v2, "bestDirectionScore":I
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher3/home/WorkspaceReorderController;->mCountX:I

    .line 117
    .local v5, "countX":I
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher3/home/WorkspaceReorderController;->mCountY:I

    .line 119
    .local v6, "countY":I
    const/16 v17, 0x0

    .local v17, "y":I
    :goto_1
    add-int/lit8 v18, p4, -0x1

    sub-int v18, v6, v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_a

    .line 121
    const/16 v16, 0x0

    .local v16, "x":I
    :goto_2
    add-int/lit8 v18, p3, -0x1

    sub-int v18, v5, v18

    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_9

    .line 123
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_3
    move/from16 v0, p3

    if-ge v14, v0, :cond_4

    .line 124
    const/4 v15, 0x0

    .local v15, "j":I
    :goto_4
    move/from16 v0, p4

    if-ge v15, v0, :cond_3

    .line 125
    add-int v18, v16, v14

    aget-object v18, p6, v18

    add-int v19, v17, v15

    aget-boolean v18, v18, v19

    if-eqz v18, :cond_2

    if-eqz p7, :cond_0

    aget-object v18, p7, v14

    aget-boolean v18, v18, v15

    if-eqz v18, :cond_2

    .line 121
    .end local v15    # "j":I
    :cond_0
    :goto_5
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 112
    .end local v2    # "bestDirectionScore":I
    .end local v3    # "bestDistance":F
    .end local v4    # "bestXY":[I
    .end local v5    # "countX":I
    .end local v6    # "countY":I
    .end local v14    # "i":I
    .end local v16    # "x":I
    .end local v17    # "y":I
    :cond_1
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v4, v0, [I

    goto :goto_0

    .line 124
    .restart local v2    # "bestDirectionScore":I
    .restart local v3    # "bestDistance":F
    .restart local v4    # "bestXY":[I
    .restart local v5    # "countX":I
    .restart local v6    # "countY":I
    .restart local v14    # "i":I
    .restart local v15    # "j":I
    .restart local v16    # "x":I
    .restart local v17    # "y":I
    :cond_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 123
    :cond_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 131
    .end local v15    # "j":I
    :cond_4
    sub-int v18, v16, p1

    move/from16 v0, v18

    int-to-float v11, v0

    .line 132
    .local v11, "distanceX":F
    sub-int v18, v17, p2

    move/from16 v0, v18

    int-to-float v12, v0

    .line 133
    .local v12, "distanceY":F
    float-to-double v0, v11

    move-wide/from16 v18, v0

    float-to-double v0, v12

    move-wide/from16 v20, v0

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v10, v0

    .line 135
    .local v10, "distance":F
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/WorkspaceReorderController;->mTmpPoint:[I

    .line 136
    .local v7, "curDirection":[I
    const/16 v18, 0x0

    invoke-static {v11}, Ljava/lang/Math;->signum(F)F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    aput v19, v7, v18

    .line 137
    const/16 v18, 0x1

    invoke-static {v12}, Ljava/lang/Math;->signum(F)F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    aput v19, v7, v18

    .line 141
    const/16 v18, 0x0

    aget v18, p5, v18

    const/16 v19, 0x0

    aget v19, v7, v19

    mul-int v18, v18, v19

    const/16 v19, 0x1

    aget v19, p5, v19

    const/16 v20, 0x1

    aget v20, v7, v20

    mul-int v19, v19, v20

    add-int v8, v18, v19

    .line 143
    .local v8, "curDirectionScore":I
    const/4 v13, 0x0

    .line 144
    .local v13, "exactDirectionOnly":Z
    const/16 v18, 0x0

    aget v18, p5, v18

    const/16 v19, 0x0

    aget v19, v7, v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    const/16 v18, 0x1

    aget v18, p5, v18

    const/16 v19, 0x1

    aget v19, v7, v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    const/4 v9, 0x1

    .line 146
    .local v9, "directionMatches":Z
    :goto_6
    if-nez v9, :cond_5

    if-nez v13, :cond_6

    .line 147
    :cond_5
    invoke-static {v10, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v18

    if-ltz v18, :cond_7

    :cond_6
    invoke-static {v10, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v18

    if-nez v18, :cond_0

    if-le v8, v2, :cond_0

    .line 149
    :cond_7
    move v3, v10

    .line 150
    move v2, v8

    .line 151
    const/16 v18, 0x0

    aput v16, v4, v18

    .line 152
    const/16 v18, 0x1

    aput v17, v4, v18

    goto/16 :goto_5

    .line 144
    .end local v9    # "directionMatches":Z
    :cond_8
    const/4 v9, 0x0

    goto :goto_6

    .line 119
    .end local v7    # "curDirection":[I
    .end local v8    # "curDirectionScore":I
    .end local v10    # "distance":F
    .end local v11    # "distanceX":F
    .end local v12    # "distanceY":F
    .end local v13    # "exactDirectionOnly":Z
    .end local v14    # "i":I
    :cond_9
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_1

    .line 158
    .end local v16    # "x":I
    :cond_a
    const v18, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v18, v3, v18

    if-nez v18, :cond_b

    .line 159
    const/16 v18, 0x0

    const/16 v19, -0x1

    aput v19, v4, v18

    .line 160
    const/16 v18, 0x1

    const/16 v19, -0x1

    aput v19, v4, v18

    .line 162
    :cond_b
    return-object v4
.end method

.method private findReorderSolution(IILcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;[ILandroid/view/View;ZLcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;)Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;
    .locals 21
    .param p1, "pixelX"    # I
    .param p2, "pixelY"    # I
    .param p3, "spanInfo"    # Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;
    .param p4, "direction"    # [I
    .param p5, "dragView"    # Landroid/view/View;
    .param p6, "decX"    # Z
    .param p7, "solution"    # Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;

    .prologue
    .line 752
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-direct {v0, v1}, Lcom/android/launcher3/home/WorkspaceReorderController;->copyCurrentStateToSolution(Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;)V

    .line 755
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController;->mTmpOccupied:[[Z

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/launcher3/home/WorkspaceReorderController;->copyOccupiedArray([[Z)V

    .line 759
    const/4 v2, 0x2

    new-array v7, v2, [I

    .line 760
    .local v7, "result":[I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController;->mLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v0, p3

    iget v5, v0, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->spanX:I

    move-object/from16 v0, p3

    iget v6, v0, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->spanY:I

    move/from16 v3, p1

    move/from16 v4, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/common/base/view/CellLayout;->findNearestArea(IIII[I)[I

    move-result-object v7

    .line 765
    const/4 v2, 0x0

    aget v9, v7, v2

    const/4 v2, 0x1

    aget v10, v7, v2

    move-object/from16 v0, p3

    iget v11, v0, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->spanX:I

    move-object/from16 v0, p3

    iget v12, v0, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->spanY:I

    move-object/from16 v8, p0

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    move-object/from16 v15, p7

    invoke-direct/range {v8 .. v15}, Lcom/android/launcher3/home/WorkspaceReorderController;->rearrangementExists(IIII[ILandroid/view/View;Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;)Z

    move-result v20

    .line 768
    .local v20, "success":Z
    if-nez v20, :cond_6

    .line 769
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->supportSpans:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->supportSpans:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 770
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->supportSpans:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 773
    .local v19, "size":I
    const/16 v17, 0x0

    .local v17, "index":I
    :goto_0
    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_0

    .line 774
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->supportSpans:Ljava/util/ArrayList;

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [I

    .line 775
    .local v18, "s":[I
    move-object/from16 v0, p3

    iget v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->spanX:I

    const/4 v3, 0x0

    aget v3, v18, v3

    if-ne v2, v3, :cond_1

    move-object/from16 v0, p3

    iget v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->spanY:I

    const/4 v3, 0x1

    aget v3, v18, v3

    if-ne v2, v3, :cond_1

    .line 779
    .end local v18    # "s":[I
    :cond_0
    if-lez v17, :cond_5

    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_5

    .line 780
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->supportSpans:Ljava/util/ArrayList;

    add-int/lit8 v3, v17, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [I

    .line 781
    .restart local v18    # "s":[I
    new-instance v8, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;

    move-object/from16 v0, p3

    iget v9, v0, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->minSpanX:I

    move-object/from16 v0, p3

    iget v10, v0, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->minSpanY:I

    const/4 v2, 0x0

    aget v11, v18, v2

    const/4 v2, 0x1

    aget v12, v18, v2

    move-object/from16 v0, p3

    iget-object v13, v0, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->supportSpans:Ljava/util/ArrayList;

    invoke-direct/range {v8 .. v13}, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;-><init>(IIIILjava/util/ArrayList;)V

    .line 783
    .local v8, "decSpanInfo":Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;
    const/4 v15, 0x1

    move-object/from16 v9, p0

    move/from16 v10, p1

    move/from16 v11, p2

    move-object v12, v8

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    move-object/from16 v16, p7

    invoke-direct/range {v9 .. v16}, Lcom/android/launcher3/home/WorkspaceReorderController;->findReorderSolution(IILcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;[ILandroid/view/View;ZLcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;)Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;

    move-result-object p7

    .line 805
    .end local v8    # "decSpanInfo":Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;
    .end local v17    # "index":I
    .end local v18    # "s":[I
    .end local v19    # "size":I
    .end local p7    # "solution":Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;
    :goto_1
    return-object p7

    .line 773
    .restart local v17    # "index":I
    .restart local v18    # "s":[I
    .restart local v19    # "size":I
    .restart local p7    # "solution":Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;
    :cond_1
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 785
    .end local v17    # "index":I
    .end local v18    # "s":[I
    .end local v19    # "size":I
    :cond_2
    move-object/from16 v0, p3

    iget v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->spanX:I

    move-object/from16 v0, p3

    iget v3, v0, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->minSpanX:I

    if-le v2, v3, :cond_4

    move-object/from16 v0, p3

    iget v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->minSpanY:I

    move-object/from16 v0, p3

    iget v3, v0, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->spanY:I

    if-eq v2, v3, :cond_3

    if-eqz p6, :cond_4

    .line 789
    :cond_3
    new-instance v8, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;

    move-object/from16 v0, p3

    iget v9, v0, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->minSpanX:I

    move-object/from16 v0, p3

    iget v10, v0, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->minSpanX:I

    move-object/from16 v0, p3

    iget v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->spanX:I

    add-int/lit8 v11, v2, -0x1

    move-object/from16 v0, p3

    iget v12, v0, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->spanY:I

    move-object/from16 v0, p3

    iget-object v13, v0, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->supportSpans:Ljava/util/ArrayList;

    invoke-direct/range {v8 .. v13}, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;-><init>(IIIILjava/util/ArrayList;)V

    .line 791
    .restart local v8    # "decSpanInfo":Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;
    const/4 v15, 0x0

    move-object/from16 v9, p0

    move/from16 v10, p1

    move/from16 v11, p2

    move-object v12, v8

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    move-object/from16 v16, p7

    invoke-direct/range {v9 .. v16}, Lcom/android/launcher3/home/WorkspaceReorderController;->findReorderSolution(IILcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;[ILandroid/view/View;ZLcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;)Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;

    move-result-object p7

    goto :goto_1

    .line 792
    .end local v8    # "decSpanInfo":Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;
    :cond_4
    move-object/from16 v0, p3

    iget v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->spanY:I

    move-object/from16 v0, p3

    iget v3, v0, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->minSpanY:I

    if-le v2, v3, :cond_5

    .line 793
    new-instance v8, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;

    move-object/from16 v0, p3

    iget v9, v0, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->minSpanX:I

    move-object/from16 v0, p3

    iget v10, v0, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->minSpanX:I

    move-object/from16 v0, p3

    iget v11, v0, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->spanX:I

    move-object/from16 v0, p3

    iget v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->spanY:I

    add-int/lit8 v12, v2, -0x1

    move-object/from16 v0, p3

    iget-object v13, v0, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->supportSpans:Ljava/util/ArrayList;

    invoke-direct/range {v8 .. v13}, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;-><init>(IIIILjava/util/ArrayList;)V

    .line 795
    .restart local v8    # "decSpanInfo":Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;
    const/4 v15, 0x1

    move-object/from16 v9, p0

    move/from16 v10, p1

    move/from16 v11, p2

    move-object v12, v8

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    move-object/from16 v16, p7

    invoke-direct/range {v9 .. v16}, Lcom/android/launcher3/home/WorkspaceReorderController;->findReorderSolution(IILcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;[ILandroid/view/View;ZLcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;)Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;

    move-result-object p7

    goto :goto_1

    .line 797
    .end local v8    # "decSpanInfo":Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;
    :cond_5
    const/4 v2, 0x0

    move-object/from16 v0, p7

    iput-boolean v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->isSolution:Z

    goto/16 :goto_1

    .line 799
    :cond_6
    const/4 v2, 0x1

    move-object/from16 v0, p7

    iput-boolean v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->isSolution:Z

    .line 800
    const/4 v2, 0x0

    aget v2, v7, v2

    move-object/from16 v0, p7

    iput v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->dragViewX:I

    .line 801
    const/4 v2, 0x1

    aget v2, v7, v2

    move-object/from16 v0, p7

    iput v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->dragViewY:I

    .line 802
    move-object/from16 v0, p3

    iget v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->spanX:I

    move-object/from16 v0, p7

    iput v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->dragViewSpanX:I

    .line 803
    move-object/from16 v0, p3

    iget v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->spanY:I

    move-object/from16 v0, p7

    iput v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->dragViewSpanY:I

    goto/16 :goto_1
.end method

.method private getDirectionVectorForDrop(IIIILandroid/view/View;[I)V
    .locals 26
    .param p1, "dragViewCenterX"    # I
    .param p2, "dragViewCenterY"    # I
    .param p3, "spanX"    # I
    .param p4, "spanY"    # I
    .param p5, "dragView"    # Landroid/view/View;
    .param p6, "resultDirection"    # [I

    .prologue
    .line 1111
    const/4 v2, 0x2

    new-array v7, v2, [I

    .line 1113
    .local v7, "targetDestination":[I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController;->mLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/common/base/view/CellLayout;->findNearestArea(IIII[I)[I

    .line 1114
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    .line 1115
    .local v13, "dragRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/home/WorkspaceReorderController;->mLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    const/4 v2, 0x0

    aget v9, v7, v2

    const/4 v2, 0x1

    aget v10, v7, v2

    move/from16 v11, p3

    move/from16 v12, p4

    invoke-virtual/range {v8 .. v13}, Lcom/android/launcher3/common/base/view/CellLayout;->regionToRect(IIIILandroid/graphics/Rect;)V

    .line 1116
    invoke-virtual {v13}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    sub-int v2, p1, v2

    invoke-virtual {v13}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    sub-int v3, p2, v3

    invoke-virtual {v13, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 1118
    new-instance v20, Landroid/graphics/Rect;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Rect;-><init>()V

    .line 1119
    .local v20, "dropRegionRect":Landroid/graphics/Rect;
    const/4 v2, 0x0

    aget v15, v7, v2

    const/4 v2, 0x1

    aget v16, v7, v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/WorkspaceReorderController;->mIntersectingViews:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v14, p0

    move/from16 v17, p3

    move/from16 v18, p4

    move-object/from16 v19, p5

    invoke-direct/range {v14 .. v21}, Lcom/android/launcher3/home/WorkspaceReorderController;->getViewsIntersectingRegion(IIIILandroid/view/View;Landroid/graphics/Rect;Ljava/util/ArrayList;)V

    .line 1122
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->width()I

    move-result v24

    .line 1123
    .local v24, "dropRegionSpanX":I
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->height()I

    move-result v25

    .line 1125
    .local v25, "dropRegionSpanY":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher3/home/WorkspaceReorderController;->mLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->width()I

    move-result v18

    .line 1126
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->height()I

    move-result v19

    .line 1125
    invoke-virtual/range {v15 .. v20}, Lcom/android/launcher3/common/base/view/CellLayout;->regionToRect(IIIILandroid/graphics/Rect;)V

    .line 1128
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    sub-int v2, v2, p1

    div-int v22, v2, p3

    .line 1129
    .local v22, "deltaX":I
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    sub-int v2, v2, p2

    div-int v23, v2, p4

    .line 1131
    .local v23, "deltaY":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController;->mCountX:I

    move/from16 v0, v24

    if-eq v0, v2, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController;->mCountX:I

    move/from16 v0, p3

    if-ne v0, v2, :cond_1

    .line 1132
    :cond_0
    const/16 v22, 0x0

    .line 1134
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController;->mCountY:I

    move/from16 v0, v25

    if-eq v0, v2, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController;->mCountY:I

    move/from16 v0, p4

    if-ne v0, v2, :cond_3

    .line 1135
    :cond_2
    const/16 v23, 0x0

    .line 1138
    :cond_3
    if-nez v22, :cond_5

    if-nez v23, :cond_5

    .line 1140
    const/4 v2, 0x0

    const/4 v3, 0x1

    aput v3, p6, v2

    .line 1141
    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, p6, v2

    .line 1146
    :goto_0
    sget-boolean v2, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v2, :cond_4

    .line 1147
    const/4 v2, 0x0

    const/4 v3, 0x0

    aget v3, p6, v3

    mul-int/lit8 v3, v3, -0x1

    aput v3, p6, v2

    .line 1149
    :cond_4
    return-void

    .line 1143
    :cond_5
    move/from16 v0, v22

    int-to-float v2, v0

    move/from16 v0, v23

    int-to-float v3, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v2, v3, v1}, Lcom/android/launcher3/home/WorkspaceReorderController;->computeDirectionVector(FF[I)V

    goto :goto_0
.end method

.method private getViewsIntersectingRegion(IIIILandroid/view/View;Landroid/graphics/Rect;Ljava/util/ArrayList;)V
    .locals 13
    .param p1, "cellX"    # I
    .param p2, "cellY"    # I
    .param p3, "spanX"    # I
    .param p4, "spanY"    # I
    .param p5, "dragView"    # Landroid/view/View;
    .param p6, "boundingRect"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Landroid/view/View;",
            "Landroid/graphics/Rect;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1154
    .local p7, "intersectingViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iget-object v8, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v8}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v2

    .line 1155
    .local v2, "clc":Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    if-eqz p6, :cond_0

    .line 1156
    add-int v8, p1, p3

    add-int v9, p2, p4

    move-object/from16 v0, p6

    invoke-virtual {v0, p1, p2, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 1158
    :cond_0
    invoke-virtual/range {p7 .. p7}, Ljava/util/ArrayList;->clear()V

    .line 1159
    new-instance v6, Landroid/graphics/Rect;

    add-int v8, p1, p3

    add-int v9, p2, p4

    invoke-direct {v6, p1, p2, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1160
    .local v6, "r0":Landroid/graphics/Rect;
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 1161
    .local v7, "r1":Landroid/graphics/Rect;
    invoke-virtual {v2}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v3

    .line 1162
    .local v3, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_3

    .line 1163
    invoke-virtual {v2, v4}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1164
    .local v1, "child":Landroid/view/View;
    move-object/from16 v0, p5

    if-ne v1, v0, :cond_2

    .line 1162
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1165
    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    .line 1166
    .local v5, "lp":Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;
    iget v8, v5, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellX:I

    iget v9, v5, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellY:I

    iget v10, v5, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellX:I

    iget v11, v5, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellHSpan:I

    add-int/2addr v10, v11

    iget v11, v5, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellY:I

    iget v12, v5, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellVSpan:I

    add-int/2addr v11, v12

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 1167
    invoke-static {v6, v7}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1168
    iget-object v8, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mIntersectingViews:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1169
    if-eqz p6, :cond_1

    .line 1170
    move-object/from16 v0, p6

    invoke-virtual {v0, v7}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 1174
    .end local v1    # "child":Landroid/view/View;
    .end local v5    # "lp":Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;
    :cond_3
    return-void
.end method

.method private isItemPlacementDirty()Z
    .locals 1

    .prologue
    .line 1389
    iget-boolean v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mItemPlacementDirty:Z

    return v0
.end method

.method private isNearestDropLocationOccupied(IIIILandroid/view/View;[I)Z
    .locals 8
    .param p1, "pixelX"    # I
    .param p2, "pixelY"    # I
    .param p3, "spanX"    # I
    .param p4, "spanY"    # I
    .param p5, "dragView"    # Landroid/view/View;
    .param p6, "result"    # [I

    .prologue
    .line 1178
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1183
    :goto_0
    return v0

    .line 1180
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/common/base/view/CellLayout;->findNearestArea(IIII[I)[I

    move-result-object p6

    .line 1181
    const/4 v0, 0x0

    aget v1, p6, v0

    const/4 v0, 0x1

    aget v2, p6, v0

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mIntersectingViews:Ljava/util/ArrayList;

    move-object v0, p0

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/home/WorkspaceReorderController;->getViewsIntersectingRegion(IIIILandroid/view/View;Landroid/graphics/Rect;Ljava/util/ArrayList;)V

    .line 1183
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mIntersectingViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private markCellsForRect(Landroid/graphics/Rect;[[ZZ)V
    .locals 7
    .param p1, "r"    # Landroid/graphics/Rect;
    .param p2, "occupied"    # [[Z
    .param p3, "value"    # Z

    .prologue
    .line 1498
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    move-object v0, p0

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/home/WorkspaceReorderController;->markCellsForView(IIII[[ZZ)V

    .line 1499
    return-void
.end method

.method private markCellsForView(IIII[[ZZ)V
    .locals 3
    .param p1, "cellX"    # I
    .param p2, "cellY"    # I
    .param p3, "spanX"    # I
    .param p4, "spanY"    # I
    .param p5, "occupied"    # [[Z
    .param p6, "value"    # Z

    .prologue
    .line 1503
    if-ltz p1, :cond_0

    if-gez p2, :cond_1

    .line 1509
    :cond_0
    return-void

    .line 1504
    :cond_1
    move v0, p1

    .local v0, "x":I
    :goto_0
    add-int v2, p1, p3

    if-ge v0, v2, :cond_0

    iget v2, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mCountX:I

    if-ge v0, v2, :cond_0

    .line 1505
    move v1, p2

    .local v1, "y":I
    :goto_1
    add-int v2, p2, p4

    if-ge v1, v2, :cond_2

    iget v2, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mCountY:I

    if-ge v1, v2, :cond_2

    .line 1506
    aget-object v2, p5, v0

    aput-boolean p6, v2, v1

    .line 1505
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1504
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;)Z
    .locals 20
    .param p2, "rectOccupiedByPotentialDrop"    # Landroid/graphics/Rect;
    .param p3, "direction"    # [I
    .param p4, "dragView"    # Landroid/view/View;
    .param p5, "currentState"    # Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/graphics/Rect;",
            "[I",
            "Landroid/view/View;",
            "Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 423
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v11, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    invoke-direct {v11, v0, v1, v2}, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;-><init>(Lcom/android/launcher3/home/WorkspaceReorderController;Ljava/util/ArrayList;Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;)V

    .line 424
    .local v11, "cluster":Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;
    invoke-virtual {v11}, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->getBoundingRect()Landroid/graphics/Rect;

    move-result-object v12

    .line 427
    .local v12, "clusterRect":Landroid/graphics/Rect;
    const/4 v13, 0x0

    .line 431
    .local v13, "fail":Z
    const/4 v3, 0x0

    aget v3, p3, v3

    if-gez v3, :cond_1

    .line 432
    const/16 v18, 0x0

    .line 433
    .local v18, "whichEdge":I
    iget v3, v12, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/Rect;->left:I

    sub-int v16, v3, v4

    .line 446
    .local v16, "pushDistance":I
    :goto_0
    if-gtz v16, :cond_4

    .line 447
    const/4 v14, 0x0

    .line 512
    :cond_0
    return v14

    .line 434
    .end local v16    # "pushDistance":I
    .end local v18    # "whichEdge":I
    :cond_1
    const/4 v3, 0x0

    aget v3, p3, v3

    if-lez v3, :cond_2

    .line 435
    const/16 v18, 0x2

    .line 436
    .restart local v18    # "whichEdge":I
    move-object/from16 v0, p2

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v4, v12, Landroid/graphics/Rect;->left:I

    sub-int v16, v3, v4

    .restart local v16    # "pushDistance":I
    goto :goto_0

    .line 437
    .end local v16    # "pushDistance":I
    .end local v18    # "whichEdge":I
    :cond_2
    const/4 v3, 0x1

    aget v3, p3, v3

    if-gez v3, :cond_3

    .line 438
    const/16 v18, 0x1

    .line 439
    .restart local v18    # "whichEdge":I
    iget v3, v12, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/Rect;->top:I

    sub-int v16, v3, v4

    .restart local v16    # "pushDistance":I
    goto :goto_0

    .line 441
    .end local v16    # "pushDistance":I
    .end local v18    # "whichEdge":I
    :cond_3
    const/16 v18, 0x3

    .line 442
    .restart local v18    # "whichEdge":I
    move-object/from16 v0, p2

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    iget v4, v12, Landroid/graphics/Rect;->top:I

    sub-int v16, v3, v4

    .restart local v16    # "pushDistance":I
    goto :goto_0

    .line 451
    :cond_4
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/view/View;

    .line 452
    .local v17, "v":Landroid/view/View;
    move-object/from16 v0, p5

    iget-object v3, v0, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->map:Ljava/util/HashMap;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;

    .line 453
    .local v10, "c":Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;
    iget v4, v10, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->x:I

    iget v5, v10, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->y:I

    iget v6, v10, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->spanX:I

    iget v7, v10, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->spanY:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/home/WorkspaceReorderController;->mTmpOccupied:[[Z

    const/4 v9, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/launcher3/home/WorkspaceReorderController;->markCellsForView(IIII[[ZZ)V

    goto :goto_1

    .line 459
    .end local v10    # "c":Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;
    .end local v17    # "v":Landroid/view/View;
    :cond_5
    invoke-virtual/range {p5 .. p5}, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->save()V

    .line 464
    move/from16 v0, v18

    invoke-virtual {v11, v0}, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->sortConfigurationForEdgePush(I)V

    .line 466
    :goto_2
    if-lez v16, :cond_9

    if-nez v13, :cond_9

    .line 467
    move-object/from16 v0, p5

    iget-object v3, v0, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->sortedViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_6
    :goto_3
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/view/View;

    .line 471
    .restart local v17    # "v":Landroid/view/View;
    iget-object v3, v11, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->views:Ljava/util/ArrayList;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    move-object/from16 v0, v17

    move-object/from16 v1, p4

    if-eq v0, v1, :cond_6

    .line 472
    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->isViewTouchingEdge(Landroid/view/View;I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 473
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    .line 474
    .local v15, "lp":Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;
    iget-boolean v3, v15, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->canReorder:Z

    if-nez v3, :cond_8

    .line 476
    const/4 v13, 0x1

    .line 487
    .end local v15    # "lp":Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;
    .end local v17    # "v":Landroid/view/View;
    :cond_7
    add-int/lit8 v16, v16, -0x1

    .line 491
    const/4 v3, 0x1

    move/from16 v0, v18

    invoke-virtual {v11, v0, v3}, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->shift(II)V

    goto :goto_2

    .line 479
    .restart local v15    # "lp":Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;
    .restart local v17    # "v":Landroid/view/View;
    :cond_8
    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->addView(Landroid/view/View;)V

    .line 480
    move-object/from16 v0, p5

    iget-object v3, v0, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->map:Ljava/util/HashMap;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;

    .line 483
    .restart local v10    # "c":Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;
    iget v4, v10, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->x:I

    iget v5, v10, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->y:I

    iget v6, v10, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->spanX:I

    iget v7, v10, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->spanY:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/home/WorkspaceReorderController;->mTmpOccupied:[[Z

    const/4 v9, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/launcher3/home/WorkspaceReorderController;->markCellsForView(IIII[[ZZ)V

    goto :goto_3

    .line 494
    .end local v10    # "c":Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;
    .end local v15    # "lp":Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;
    .end local v17    # "v":Landroid/view/View;
    :cond_9
    const/4 v14, 0x0

    .line 495
    .local v14, "foundSolution":Z
    invoke-virtual {v11}, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->getBoundingRect()Landroid/graphics/Rect;

    move-result-object v12

    .line 499
    if-nez v13, :cond_a

    iget v3, v12, Landroid/graphics/Rect;->left:I

    if-ltz v3, :cond_a

    iget v3, v12, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher3/home/WorkspaceReorderController;->mCountX:I

    if-gt v3, v4, :cond_a

    iget v3, v12, Landroid/graphics/Rect;->top:I

    if-ltz v3, :cond_a

    iget v3, v12, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher3/home/WorkspaceReorderController;->mCountY:I

    if-gt v3, v4, :cond_a

    .line 501
    const/4 v14, 0x1

    .line 507
    :goto_4
    iget-object v3, v11, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->views:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_5
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/view/View;

    .line 508
    .restart local v17    # "v":Landroid/view/View;
    move-object/from16 v0, p5

    iget-object v3, v0, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->map:Ljava/util/HashMap;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;

    .line 509
    .restart local v10    # "c":Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;
    iget v4, v10, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->x:I

    iget v5, v10, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->y:I

    iget v6, v10, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->spanX:I

    iget v7, v10, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->spanY:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/home/WorkspaceReorderController;->mTmpOccupied:[[Z

    const/4 v9, 0x1

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/launcher3/home/WorkspaceReorderController;->markCellsForView(IIII[[ZZ)V

    goto :goto_5

    .line 503
    .end local v10    # "c":Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;
    .end local v17    # "v":Landroid/view/View;
    :cond_a
    invoke-virtual/range {p5 .. p5}, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->restore()V

    goto :goto_4
.end method

.method private rearrangementExists(IIII[ILandroid/view/View;Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;)Z
    .locals 14
    .param p1, "cellX"    # I
    .param p2, "cellY"    # I
    .param p3, "spanX"    # I
    .param p4, "spanY"    # I
    .param p5, "direction"    # [I
    .param p6, "ignoreView"    # Landroid/view/View;
    .param p7, "solution"    # Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;

    .prologue
    .line 672
    if-ltz p1, :cond_0

    if-gez p2, :cond_1

    :cond_0
    const/4 v2, 0x0

    .line 722
    :goto_0
    return v2

    .line 674
    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mIntersectingViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 675
    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mOccupiedRect:Landroid/graphics/Rect;

    add-int v3, p1, p3

    add-int v4, p2, p4

    move/from16 v0, p2

    invoke-virtual {v2, p1, v0, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 678
    if-eqz p6, :cond_2

    .line 679
    move-object/from16 v0, p7

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->map:Ljava/util/HashMap;

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;

    .line 680
    .local v8, "c":Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;
    if-eqz v8, :cond_2

    .line 681
    iput p1, v8, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->x:I

    .line 682
    move/from16 v0, p2

    iput v0, v8, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->y:I

    .line 685
    .end local v8    # "c":Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;
    :cond_2
    new-instance v11, Landroid/graphics/Rect;

    add-int v2, p1, p3

    add-int v3, p2, p4

    move/from16 v0, p2

    invoke-direct {v11, p1, v0, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 686
    .local v11, "r0":Landroid/graphics/Rect;
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    .line 687
    .local v12, "r1":Landroid/graphics/Rect;
    move-object/from16 v0, p7

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 688
    .local v9, "child":Landroid/view/View;
    move-object/from16 v0, p6

    if-eq v9, v0, :cond_3

    .line 689
    move-object/from16 v0, p7

    iget-object v3, v0, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v3, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;

    .line 690
    .restart local v8    # "c":Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    .line 691
    .local v10, "lp":Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;
    iget v3, v8, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->x:I

    iget v4, v8, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->y:I

    iget v5, v8, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->x:I

    iget v6, v8, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->spanX:I

    add-int/2addr v5, v6

    iget v6, v8, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->y:I

    iget v7, v8, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->spanY:I

    add-int/2addr v6, v7

    invoke-virtual {v12, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 692
    invoke-static {v11, v12}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 693
    iget-boolean v3, v10, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->canReorder:Z

    if-nez v3, :cond_4

    .line 694
    const/4 v2, 0x0

    goto :goto_0

    .line 696
    :cond_4
    iget-object v3, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mIntersectingViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 700
    .end local v8    # "c":Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;
    .end local v9    # "child":Landroid/view/View;
    .end local v10    # "lp":Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;
    :cond_5
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mIntersectingViews:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p7

    iput-object v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->intersectingViews:Ljava/util/ArrayList;

    .line 705
    iget-object v3, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mIntersectingViews:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mOccupiedRect:Landroid/graphics/Rect;

    move-object v2, p0

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher3/home/WorkspaceReorderController;->attemptPushInDirection(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 707
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 711
    :cond_6
    iget-object v3, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mIntersectingViews:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mOccupiedRect:Landroid/graphics/Rect;

    move-object v2, p0

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher3/home/WorkspaceReorderController;->addViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 713
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 717
    :cond_7
    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mIntersectingViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/View;

    .line 718
    .local v13, "v":Landroid/view/View;
    iget-object v3, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mOccupiedRect:Landroid/graphics/Rect;

    move-object/from16 v0, p5

    move-object/from16 v1, p7

    invoke-direct {p0, v13, v3, v0, v1}, Lcom/android/launcher3/home/WorkspaceReorderController;->addViewToTempLocation(Landroid/view/View;Landroid/graphics/Rect;[ILcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 719
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 722
    .end local v13    # "v":Landroid/view/View;
    :cond_9
    const/4 v2, 0x1

    goto/16 :goto_0
.end method

.method private setItemPlacementDirty(Z)V
    .locals 0
    .param p1, "dirty"    # Z

    .prologue
    .line 1385
    iput-boolean p1, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mItemPlacementDirty:Z

    .line 1386
    return-void
.end method


# virtual methods
.method cleanupReorder(Z)V
    .locals 2
    .param p1, "cancelAlarm"    # Z

    .prologue
    const/4 v1, -0x1

    .line 1188
    if-eqz p1, :cond_0

    .line 1189
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mReorderAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/util/alarm/Alarm;->cancelAlarm()V

    .line 1191
    :cond_0
    iput v1, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mLastReorderX:I

    .line 1192
    iput v1, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mLastReorderY:I

    .line 1193
    return-void
.end method

.method createAreaForResize(IIIILandroid/view/View;[IZ)Z
    .locals 20
    .param p1, "cellX"    # I
    .param p2, "cellY"    # I
    .param p3, "spanX"    # I
    .param p4, "spanY"    # I
    .param p5, "dragView"    # Landroid/view/View;
    .param p6, "direction"    # [I
    .param p7, "commit"    # Z

    .prologue
    .line 1218
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceReorderController;->mLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    if-nez v4, :cond_0

    const/4 v4, 0x0

    .line 1251
    :goto_0
    return v4

    .line 1220
    :cond_0
    const/4 v4, 0x2

    new-array v9, v4, [I

    .line 1221
    .local v9, "pixelXY":[I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceReorderController;->mLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher3/common/base/view/CellLayout;->regionToCenterPoint(IIII[I)V

    .line 1222
    sget-boolean v4, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v4, :cond_1

    .line 1223
    const/4 v4, 0x0

    const/4 v5, 0x0

    aget v5, p6, v5

    mul-int/lit8 v5, v5, -0x1

    aput v5, p6, v4

    .line 1227
    :cond_1
    new-instance v10, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;

    const/4 v15, 0x0

    move/from16 v11, p3

    move/from16 v12, p4

    move/from16 v13, p3

    move/from16 v14, p4

    invoke-direct/range {v10 .. v15}, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;-><init>(IIIILjava/util/ArrayList;)V

    .line 1228
    .local v10, "spanInfo":Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;
    const/4 v4, 0x0

    aget v12, v9, v4

    const/4 v4, 0x1

    aget v13, v9, v4

    const/16 v17, 0x1

    new-instance v18, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;

    const/4 v4, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;-><init>(Lcom/android/launcher3/home/WorkspaceReorderController;Lcom/android/launcher3/home/WorkspaceReorderController$1;)V

    move-object/from16 v11, p0

    move-object v14, v10

    move-object/from16 v15, p6

    move-object/from16 v16, p5

    invoke-direct/range {v11 .. v18}, Lcom/android/launcher3/home/WorkspaceReorderController;->findReorderSolution(IILcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;[ILandroid/view/View;ZLcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;)Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;

    move-result-object v19

    .line 1231
    .local v19, "swapSolution":Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/launcher3/home/WorkspaceReorderController;->setUseTempCoords(Z)V

    .line 1232
    move-object/from16 v0, v19

    iget-boolean v4, v0, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->isSolution:Z

    if-eqz v4, :cond_2

    .line 1236
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, p5

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/home/WorkspaceReorderController;->copySolutionToTempState(Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;Landroid/view/View;)V

    .line 1237
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/launcher3/home/WorkspaceReorderController;->setItemPlacementDirty(Z)V

    .line 1238
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, p5

    move/from16 v3, p7

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher3/home/WorkspaceReorderController;->animateItemsToSolution(Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;Landroid/view/View;Z)V

    .line 1240
    if-eqz p7, :cond_3

    .line 1241
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/home/WorkspaceReorderController;->commitTempPlacement()V

    .line 1242
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/home/WorkspaceReorderController;->completeAndClearReorderPreviewAnimations()V

    .line 1243
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/launcher3/home/WorkspaceReorderController;->setItemPlacementDirty(Z)V

    .line 1244
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/launcher3/home/WorkspaceReorderController;->setUseTempCoords(Z)V

    .line 1248
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceReorderController;->mLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v4}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->requestLayout()V

    .line 1251
    :cond_2
    move-object/from16 v0, v19

    iget-boolean v4, v0, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->isSolution:Z

    goto/16 :goto_0

    .line 1246
    :cond_3
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, p5

    invoke-direct {v0, v1, v2, v4}, Lcom/android/launcher3/home/WorkspaceReorderController;->beginOrAdjustReorderPreviewAnimations(Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;Landroid/view/View;I)V

    goto :goto_1
.end method

.method performReorder(IILcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;Landroid/view/View;[I[II)[I
    .locals 17
    .param p1, "pixelX"    # I
    .param p2, "pixelY"    # I
    .param p3, "spanInfo"    # Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;
    .param p4, "dragView"    # Landroid/view/View;
    .param p5, "result"    # [I
    .param p6, "resultSpan"    # [I
    .param p7, "mode"    # I

    .prologue
    .line 1256
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceReorderController;->mLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    if-nez v4, :cond_0

    move-object/from16 v15, p5

    .line 1350
    .end local p5    # "result":[I
    .local v15, "result":[I
    :goto_0
    return-object v15

    .line 1259
    .end local v15    # "result":[I
    .restart local p5    # "result":[I
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceReorderController;->mLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v0, p3

    iget v7, v0, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->spanX:I

    move-object/from16 v0, p3

    iget v8, v0, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->spanY:I

    move/from16 v5, p1

    move/from16 v6, p2

    move-object/from16 v9, p5

    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher3/common/base/view/CellLayout;->findNearestArea(IIII[I)[I

    move-result-object p5

    .line 1261
    if-nez p6, :cond_1

    .line 1262
    const/4 v4, 0x2

    new-array v0, v4, [I

    move-object/from16 p6, v0

    .line 1268
    :cond_1
    const/4 v4, 0x2

    move/from16 v0, p7

    if-eq v0, v4, :cond_2

    const/4 v4, 0x3

    move/from16 v0, p7

    if-eq v0, v4, :cond_2

    const/4 v4, 0x4

    move/from16 v0, p7

    if-ne v0, v4, :cond_6

    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceReorderController;->mPreviousReorderDirection:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    const/16 v5, -0x64

    if-eq v4, v5, :cond_6

    .line 1270
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceReorderController;->mDirectionVector:[I

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceReorderController;->mPreviousReorderDirection:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v4, v5

    .line 1271
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceReorderController;->mDirectionVector:[I

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceReorderController;->mPreviousReorderDirection:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    aput v6, v4, v5

    .line 1273
    const/4 v4, 0x2

    move/from16 v0, p7

    if-eq v0, v4, :cond_3

    const/4 v4, 0x3

    move/from16 v0, p7

    if-ne v0, v4, :cond_4

    .line 1274
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceReorderController;->mPreviousReorderDirection:[I

    const/4 v5, 0x0

    const/16 v6, -0x64

    aput v6, v4, v5

    .line 1275
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceReorderController;->mPreviousReorderDirection:[I

    const/4 v5, 0x1

    const/16 v6, -0x64

    aput v6, v4, v5

    .line 1285
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/home/WorkspaceReorderController;->mDirectionVector:[I

    const/4 v10, 0x1

    new-instance v11, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v4}, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;-><init>(Lcom/android/launcher3/home/WorkspaceReorderController;Lcom/android/launcher3/home/WorkspaceReorderController$1;)V

    move-object/from16 v4, p0

    move/from16 v5, p1

    move/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v9, p4

    invoke-direct/range {v4 .. v11}, Lcom/android/launcher3/home/WorkspaceReorderController;->findReorderSolution(IILcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;[ILandroid/view/View;ZLcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;)Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;

    move-result-object v16

    .line 1289
    .local v16, "swapSolution":Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;
    new-instance v4, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;-><init>(Lcom/android/launcher3/home/WorkspaceReorderController;Lcom/android/launcher3/home/WorkspaceReorderController$1;)V

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/launcher3/home/WorkspaceReorderController;->findConfigurationNoShuffle(IILcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;)Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;

    move-result-object v14

    .line 1292
    .local v14, "noShuffleSolution":Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;
    const/4 v12, 0x0

    .line 1296
    .local v12, "finalSolution":Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;
    move-object/from16 v0, v16

    iget-boolean v4, v0, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->isSolution:Z

    if-eqz v4, :cond_7

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->area()I

    move-result v4

    invoke-virtual {v14}, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->area()I

    move-result v5

    if-lt v4, v5, :cond_7

    .line 1297
    move-object/from16 v12, v16

    .line 1302
    :cond_5
    :goto_2
    if-nez p7, :cond_9

    .line 1303
    if-eqz v12, :cond_8

    .line 1304
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v12, v1, v4}, Lcom/android/launcher3/home/WorkspaceReorderController;->beginOrAdjustReorderPreviewAnimations(Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;Landroid/view/View;I)V

    .line 1305
    const/4 v4, 0x0

    iget v5, v12, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->dragViewX:I

    aput v5, p5, v4

    .line 1306
    const/4 v4, 0x1

    iget v5, v12, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->dragViewY:I

    aput v5, p5, v4

    .line 1307
    const/4 v4, 0x0

    iget v5, v12, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->dragViewSpanX:I

    aput v5, p6, v4

    .line 1308
    const/4 v4, 0x1

    iget v5, v12, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->dragViewSpanY:I

    aput v5, p6, v4

    :goto_3
    move-object/from16 v15, p5

    .line 1312
    .end local p5    # "result":[I
    .restart local v15    # "result":[I
    goto/16 :goto_0

    .line 1278
    .end local v12    # "finalSolution":Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;
    .end local v14    # "noShuffleSolution":Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;
    .end local v15    # "result":[I
    .end local v16    # "swapSolution":Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;
    .restart local p5    # "result":[I
    :cond_6
    move-object/from16 v0, p3

    iget v7, v0, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->spanX:I

    move-object/from16 v0, p3

    iget v8, v0, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->spanY:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher3/home/WorkspaceReorderController;->mDirectionVector:[I

    move-object/from16 v4, p0

    move/from16 v5, p1

    move/from16 v6, p2

    move-object/from16 v9, p4

    invoke-direct/range {v4 .. v10}, Lcom/android/launcher3/home/WorkspaceReorderController;->getDirectionVectorForDrop(IIIILandroid/view/View;[I)V

    .line 1280
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceReorderController;->mPreviousReorderDirection:[I

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceReorderController;->mDirectionVector:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v4, v5

    .line 1281
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceReorderController;->mPreviousReorderDirection:[I

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceReorderController;->mDirectionVector:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    aput v6, v4, v5

    goto/16 :goto_1

    .line 1298
    .restart local v12    # "finalSolution":Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;
    .restart local v14    # "noShuffleSolution":Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;
    .restart local v16    # "swapSolution":Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;
    :cond_7
    iget-boolean v4, v14, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->isSolution:Z

    if-eqz v4, :cond_5

    .line 1299
    move-object v12, v14

    goto :goto_2

    .line 1310
    :cond_8
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, -0x1

    aput v8, p6, v7

    aput v8, p6, v6

    aput v8, p5, v5

    aput v8, p5, v4

    goto :goto_3

    .line 1315
    :cond_9
    const/4 v13, 0x1

    .line 1316
    .local v13, "foundSolution":Z
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/launcher3/home/WorkspaceReorderController;->setUseTempCoords(Z)V

    .line 1318
    if-eqz v12, :cond_11

    .line 1319
    const/4 v4, 0x0

    iget v5, v12, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->dragViewX:I

    aput v5, p5, v4

    .line 1320
    const/4 v4, 0x1

    iget v5, v12, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->dragViewY:I

    aput v5, p5, v4

    .line 1321
    const/4 v4, 0x0

    iget v5, v12, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->dragViewSpanX:I

    aput v5, p6, v4

    .line 1322
    const/4 v4, 0x1

    iget v5, v12, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->dragViewSpanY:I

    aput v5, p6, v4

    .line 1327
    const/4 v4, 0x1

    move/from16 v0, p7

    if-eq v0, v4, :cond_a

    const/4 v4, 0x2

    move/from16 v0, p7

    if-eq v0, v4, :cond_a

    const/4 v4, 0x3

    move/from16 v0, p7

    if-ne v0, v4, :cond_c

    .line 1328
    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v12, v1}, Lcom/android/launcher3/home/WorkspaceReorderController;->copySolutionToTempState(Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;Landroid/view/View;)V

    .line 1329
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/launcher3/home/WorkspaceReorderController;->setItemPlacementDirty(Z)V

    .line 1330
    const/4 v4, 0x2

    move/from16 v0, p7

    if-ne v0, v4, :cond_f

    const/4 v4, 0x1

    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v12, v1, v4}, Lcom/android/launcher3/home/WorkspaceReorderController;->animateItemsToSolution(Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;Landroid/view/View;Z)V

    .line 1332
    const/4 v4, 0x2

    move/from16 v0, p7

    if-eq v0, v4, :cond_b

    const/4 v4, 0x3

    move/from16 v0, p7

    if-ne v0, v4, :cond_10

    .line 1333
    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/home/WorkspaceReorderController;->commitTempPlacement()V

    .line 1334
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/home/WorkspaceReorderController;->completeAndClearReorderPreviewAnimations()V

    .line 1335
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/launcher3/home/WorkspaceReorderController;->setItemPlacementDirty(Z)V

    .line 1345
    :cond_c
    :goto_5
    const/4 v4, 0x2

    move/from16 v0, p7

    if-eq v0, v4, :cond_d

    const/4 v4, 0x3

    move/from16 v0, p7

    if-eq v0, v4, :cond_d

    if-nez v13, :cond_e

    .line 1346
    :cond_d
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/launcher3/home/WorkspaceReorderController;->setUseTempCoords(Z)V

    .line 1349
    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceReorderController;->mLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v4}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->requestLayout()V

    move-object/from16 v15, p5

    .line 1350
    .end local p5    # "result":[I
    .restart local v15    # "result":[I
    goto/16 :goto_0

    .line 1330
    .end local v15    # "result":[I
    .restart local p5    # "result":[I
    :cond_f
    const/4 v4, 0x0

    goto :goto_4

    .line 1337
    :cond_10
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v12, v1, v4}, Lcom/android/launcher3/home/WorkspaceReorderController;->beginOrAdjustReorderPreviewAnimations(Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;Landroid/view/View;I)V

    goto :goto_5

    .line 1341
    :cond_11
    const/4 v13, 0x0

    .line 1342
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, -0x1

    aput v8, p6, v7

    aput v8, p6, v6

    aput v8, p5, v5

    aput v8, p5, v4

    goto :goto_5
.end method

.method prepareChildForDrag(Lcom/android/launcher3/common/base/view/CellLayout;Landroid/view/View;)V
    .locals 0
    .param p1, "layout"    # Lcom/android/launcher3/common/base/view/CellLayout;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 89
    invoke-virtual {p1, p2}, Lcom/android/launcher3/common/base/view/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 90
    return-void
.end method

.method revertTempState()V
    .locals 13

    .prologue
    const/4 v5, 0x0

    .line 1196
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    if-nez v0, :cond_1

    .line 1214
    :cond_0
    :goto_0
    return-void

    .line 1198
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v9

    .line 1199
    .local v9, "clc":Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    invoke-direct {p0}, Lcom/android/launcher3/home/WorkspaceReorderController;->completeAndClearReorderPreviewAnimations()V

    .line 1200
    invoke-direct {p0}, Lcom/android/launcher3/home/WorkspaceReorderController;->isItemPlacementDirty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1201
    invoke-virtual {v9}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v10

    .line 1202
    .local v10, "count":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    if-ge v11, v10, :cond_4

    .line 1203
    invoke-virtual {v9, v11}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1204
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    .line 1205
    .local v12, "lp":Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;
    iget v0, v12, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->tmpCellX:I

    iget v2, v12, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellX:I

    if-ne v0, v2, :cond_2

    iget v0, v12, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->tmpCellY:I

    iget v2, v12, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellY:I

    if-eq v0, v2, :cond_3

    .line 1206
    :cond_2
    iget v0, v12, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellX:I

    iput v0, v12, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->tmpCellX:I

    .line 1207
    iget v0, v12, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellY:I

    iput v0, v12, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->tmpCellY:I

    .line 1208
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    iget v2, v12, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellX:I

    iget v3, v12, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellY:I

    const/16 v4, 0x96

    iget-object v8, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mTmpOccupied:[[Z

    move v6, v5

    move v7, v5

    invoke-virtual/range {v0 .. v8}, Lcom/android/launcher3/common/base/view/CellLayout;->animateChildToPosition(Landroid/view/View;IIIIZZ[[Z)Z

    .line 1202
    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 1212
    .end local v1    # "child":Landroid/view/View;
    .end local v12    # "lp":Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;
    :cond_4
    invoke-direct {p0, v5}, Lcom/android/launcher3/home/WorkspaceReorderController;->setItemPlacementDirty(Z)V

    goto :goto_0
.end method

.method setReorderTarget(Lcom/android/launcher3/common/base/view/CellLayout;)V
    .locals 3
    .param p1, "layout"    # Lcom/android/launcher3/common/base/view/CellLayout;

    .prologue
    const/16 v2, -0x64

    .line 93
    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceReorderController;->revertTempState()V

    .line 95
    iput-object p1, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    .line 97
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountX()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mCountX:I

    .line 99
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountY()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mCountY:I

    .line 101
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->getOccupied()[[Z

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mOccupied:[[Z

    .line 102
    iget v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mCountX:I

    iget v1, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mCountY:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mTmpOccupied:[[Z

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mPreviousReorderDirection:[I

    const/4 v1, 0x0

    aput v2, v0, v1

    .line 106
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mPreviousReorderDirection:[I

    const/4 v1, 0x1

    aput v2, v0, v1

    .line 107
    return-void
.end method

.method setUseTempCoords(Z)V
    .locals 5
    .param p1, "useTempCoords"    # Z

    .prologue
    .line 1047
    iget-object v4, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v4}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v1

    .line 1048
    .local v1, "clc":Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v0

    .line 1049
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1050
    invoke-virtual {v1, v2}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    .line 1051
    .local v3, "lp":Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;
    iput-boolean p1, v3, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->useTmpCoords:Z

    .line 1049
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1053
    .end local v3    # "lp":Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method startReorder([F[ILcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;Lcom/android/launcher3/common/drag/DropTarget$DragObject;Landroid/view/View;I)Z
    .locals 19
    .param p1, "dragViewCenter"    # [F
    .param p2, "targetCell"    # [I
    .param p3, "spanInfo"    # Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;
    .param p4, "d"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .param p5, "child"    # Landroid/view/View;
    .param p6, "dragMode"    # I

    .prologue
    .line 1355
    const/4 v2, 0x0

    aget v17, p2, v2

    .line 1356
    .local v17, "reorderX":I
    const/4 v2, 0x1

    aget v18, p2, v2

    .line 1358
    .local v18, "reorderY":I
    const/4 v2, 0x0

    aget v2, p1, v2

    float-to-int v3, v2

    const/4 v2, 0x1

    aget v2, p1, v2

    float-to-int v4, v2

    move-object/from16 v0, p3

    iget v5, v0, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->spanX:I

    move-object/from16 v0, p3

    iget v6, v0, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->spanY:I

    move-object/from16 v2, p0

    move-object/from16 v7, p5

    move-object/from16 v8, p2

    invoke-direct/range {v2 .. v8}, Lcom/android/launcher3/home/WorkspaceReorderController;->isNearestDropLocationOccupied(IIIILandroid/view/View;[I)Z

    move-result v16

    .line 1361
    .local v16, "nearestDropOccupied":Z
    if-nez v16, :cond_1

    .line 1362
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/home/WorkspaceReorderController;->revertTempState()V

    .line 1363
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController;->mLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v0, p4

    iget-object v3, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v3, Lcom/android/launcher3/common/base/item/ItemInfo;

    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v4}, Lcom/android/launcher3/common/drag/DragView;->getDragOutline()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/4 v5, 0x0

    aget v5, p2, v5

    const/4 v6, 0x1

    aget v6, p2, v6

    move-object/from16 v0, p3

    iget v7, v0, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->spanX:I

    move-object/from16 v0, p3

    iget v8, v0, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->spanY:I

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/android/launcher3/common/base/view/CellLayout;->visualizeDropLocation(Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/graphics/drawable/Drawable;IIIIZ)V

    .line 1381
    :cond_0
    :goto_0
    return v16

    .line 1365
    :cond_1
    if-eqz p6, :cond_2

    const/4 v2, 0x3

    move/from16 v0, p6

    if-ne v0, v2, :cond_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController;->mReorderAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    .line 1366
    invoke-virtual {v2}, Lcom/android/launcher3/util/alarm/Alarm;->alarmPending()Z

    move-result v2

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController;->mLastReorderX:I

    move/from16 v0, v17

    if-ne v2, v0, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController;->mLastReorderY:I

    move/from16 v0, v18

    if-eq v2, v0, :cond_0

    .line 1369
    :cond_3
    const/4 v2, 0x2

    new-array v8, v2, [I

    .line 1370
    .local v8, "resultSpan":[I
    const/4 v2, 0x0

    aget v2, p1, v2

    float-to-int v3, v2

    const/4 v2, 0x1

    aget v2, p1, v2

    float-to-int v4, v2

    const/4 v9, 0x0

    move-object/from16 v2, p0

    move-object/from16 v5, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p2

    invoke-virtual/range {v2 .. v9}, Lcom/android/launcher3/home/WorkspaceReorderController;->performReorder(IILcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;Landroid/view/View;[I[II)[I

    .line 1375
    new-instance v9, Lcom/android/launcher3/home/WorkspaceReorderController$ReorderAlarmListener;

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move-object/from16 v15, p5

    invoke-direct/range {v9 .. v15}, Lcom/android/launcher3/home/WorkspaceReorderController$ReorderAlarmListener;-><init>(Lcom/android/launcher3/home/WorkspaceReorderController;[F[ILcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;Lcom/android/launcher3/common/drag/DropTarget$DragObject;Landroid/view/View;)V

    .line 1377
    .local v9, "listener":Lcom/android/launcher3/home/WorkspaceReorderController$ReorderAlarmListener;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController;->mReorderAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v2, v9}, Lcom/android/launcher3/util/alarm/Alarm;->setOnAlarmListener(Lcom/android/launcher3/util/alarm/OnAlarmListener;)V

    .line 1378
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController;->mReorderAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    const-wide/16 v4, 0x15e

    invoke-virtual {v2, v4, v5}, Lcom/android/launcher3/util/alarm/Alarm;->setAlarm(J)V

    goto :goto_0
.end method
