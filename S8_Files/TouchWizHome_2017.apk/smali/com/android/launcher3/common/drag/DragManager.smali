.class public Lcom/android/launcher3/common/drag/DragManager;
.super Ljava/lang/Object;
.source "DragManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/common/drag/DragManager$ScrollRunnable;,
        Lcom/android/launcher3/common/drag/DragManager$DragListener;
    }
.end annotation


# static fields
.field private static final DELAY_TO_MOVE_EXTRA_ITEM:I = 0xa

.field public static final DRAG_ACTION_COPY:I = 0x1

.field public static final DRAG_ACTION_MOVE:I = 0x0

.field private static final MOVE_STAGE_TIME:I = 0x3e8

.field private static final PROFILE_DRAWING_DURING_DRAG:Z = false

.field public static final RESCROLL_DELAY:I

.field public static final RESET_LAST_TOUCHUP_TIME:J = -0x1L

.field public static final SCROLL_DELAY:I = 0x1f4

.field public static final SCROLL_LEFT:I = 0x0

.field public static final SCROLL_NONE:I = -0x1

.field private static final SCROLL_OUTSIDE_ZONE:I = 0x0

.field public static final SCROLL_RIGHT:I = 0x1

.field private static final SCROLL_WAITING_IN_ZONE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Launcher.DragManager"


# instance fields
.field private final mCoordinatesTemp:[I

.field private mDistanceSinceScroll:I

.field private mDragLayerRect:Landroid/graphics/Rect;

.field private mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

.field private mDragScroller:Lcom/android/launcher3/common/drag/DragScroller;

.field private mDragging:Z

.field private mDropTargets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/drag/DropTarget;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mLastDropTarget:Lcom/android/launcher3/common/drag/DropTarget;

.field private mLastTouch:[I

.field private mLastTouchUpTime:J

.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/drag/DragManager$DragListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMotionDownX:I

.field private mMotionDownY:I

.field private mMoveStageAlarm:Lcom/android/launcher3/util/alarm/Alarm;

.field private mMoveTarget:Landroid/view/View;

.field private mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

.field private mOutlineColor:I

.field private mQuickOptionView:Lcom/android/launcher3/common/quickoption/QuickOptionView;

.field private mRectTemp:Landroid/graphics/Rect;

.field private mScrollRunnable:Lcom/android/launcher3/common/drag/DragManager$ScrollRunnable;

.field private mScrollState:I

.field private mScrollView:Landroid/view/View;

.field private mScrollZone:I

.field private mTmpPoint:[I

.field private mWindowToken:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    sget v0, Lcom/android/launcher3/common/base/view/PagedView;->PAGE_SNAP_ANIMATION_DURATION:I

    add-int/lit16 v0, v0, 0x96

    sput v0, Lcom/android/launcher3/common/drag/DragManager;->RESCROLL_DELAY:I

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/Launcher;)V
    .locals 5
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mRectTemp:Landroid/graphics/Rect;

    .line 92
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mCoordinatesTemp:[I

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mDropTargets:Ljava/util/ArrayList;

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mListeners:Ljava/util/ArrayList;

    .line 136
    iput v3, p0, Lcom/android/launcher3/common/drag/DragManager;->mScrollState:I

    .line 137
    new-instance v0, Lcom/android/launcher3/common/drag/DragManager$ScrollRunnable;

    invoke-direct {v0, p0}, Lcom/android/launcher3/common/drag/DragManager$ScrollRunnable;-><init>(Lcom/android/launcher3/common/drag/DragManager;)V

    iput-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mScrollRunnable:Lcom/android/launcher3/common/drag/DragManager$ScrollRunnable;

    .line 143
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mLastTouch:[I

    .line 144
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mLastTouchUpTime:J

    .line 145
    iput v3, p0, Lcom/android/launcher3/common/drag/DragManager;->mDistanceSinceScroll:I

    .line 147
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mTmpPoint:[I

    .line 148
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragLayerRect:Landroid/graphics/Rect;

    .line 155
    iput-object v4, p0, Lcom/android/launcher3/common/drag/DragManager;->mQuickOptionView:Lcom/android/launcher3/common/quickoption/QuickOptionView;

    .line 157
    iput-object v4, p0, Lcom/android/launcher3/common/drag/DragManager;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    .line 187
    iput-object p1, p0, Lcom/android/launcher3/common/drag/DragManager;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 188
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mHandler:Landroid/os/Handler;

    .line 190
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportMoveToHomeAppsByLongPress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    new-instance v0, Lcom/android/launcher3/util/alarm/Alarm;

    invoke-direct {v0}, Lcom/android/launcher3/util/alarm/Alarm;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mMoveStageAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    .line 194
    :cond_0
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportMultiSelect()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 195
    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getMultiSelectManager()Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    .line 197
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/common/drag/DragManager;)Lcom/android/launcher3/Launcher;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/drag/DragManager;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher3/common/drag/DragManager;)Lcom/android/launcher3/common/drag/DragScroller;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/drag/DragManager;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragScroller:Lcom/android/launcher3/common/drag/DragScroller;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/launcher3/common/drag/DragManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/common/drag/DragManager;
    .param p1, "x1"    # I

    .prologue
    .line 60
    iput p1, p0, Lcom/android/launcher3/common/drag/DragManager;->mScrollState:I

    return p1
.end method

.method static synthetic access$302(Lcom/android/launcher3/common/drag/DragManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/common/drag/DragManager;
    .param p1, "x1"    # I

    .prologue
    .line 60
    iput p1, p0, Lcom/android/launcher3/common/drag/DragManager;->mDistanceSinceScroll:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/launcher3/common/drag/DragManager;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/drag/DragManager;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mLastTouch:[I

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/launcher3/common/drag/DragManager;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/common/drag/DragManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/common/drag/DragManager;->checkScrollState(II)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/launcher3/common/drag/DragManager;)Lcom/android/launcher3/common/quickoption/QuickOptionView;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/drag/DragManager;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mQuickOptionView:Lcom/android/launcher3/common/quickoption/QuickOptionView;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/launcher3/common/drag/DragManager;Lcom/android/launcher3/common/quickoption/QuickOptionView;)Lcom/android/launcher3/common/quickoption/QuickOptionView;
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/common/drag/DragManager;
    .param p1, "x1"    # Lcom/android/launcher3/common/quickoption/QuickOptionView;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/launcher3/common/drag/DragManager;->mQuickOptionView:Lcom/android/launcher3/common/quickoption/QuickOptionView;

    return-object p1
.end method

.method private checkScrollState(II)V
    .locals 10
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 772
    iget-object v6, p0, Lcom/android/launcher3/common/drag/DragManager;->mLastDropTarget:Lcom/android/launcher3/common/drag/DropTarget;

    instance-of v6, v6, Lcom/android/launcher3/common/drag/DragScroller;

    if-nez v6, :cond_1

    .line 773
    invoke-direct {p0}, Lcom/android/launcher3/common/drag/DragManager;->clearScrollRunnable()V

    .line 801
    :cond_0
    :goto_0
    return-void

    .line 777
    :cond_1
    iget-object v6, p0, Lcom/android/launcher3/common/drag/DragManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v6}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledWindowTouchSlop()I

    move-result v3

    .line 778
    .local v3, "slop":I
    iget v6, p0, Lcom/android/launcher3/common/drag/DragManager;->mDistanceSinceScroll:I

    if-ge v6, v3, :cond_2

    sget v1, Lcom/android/launcher3/common/drag/DragManager;->RESCROLL_DELAY:I

    .line 779
    .local v1, "delay":I
    :goto_1
    sget-boolean v6, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v6, :cond_3

    move v2, v4

    .line 780
    .local v2, "forwardDirection":I
    :goto_2
    sget-boolean v6, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v6, :cond_4

    move v0, v5

    .line 782
    .local v0, "backwardsDirection":I
    :goto_3
    iget v5, p0, Lcom/android/launcher3/common/drag/DragManager;->mScrollZone:I

    if-ge p1, v5, :cond_5

    .line 783
    iget v5, p0, Lcom/android/launcher3/common/drag/DragManager;->mScrollState:I

    if-nez v5, :cond_0

    .line 784
    iget-object v5, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragScroller:Lcom/android/launcher3/common/drag/DragScroller;

    invoke-interface {v5, p1, p2, v2}, Lcom/android/launcher3/common/drag/DragScroller;->onEnterScrollArea(III)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 785
    iget-object v5, p0, Lcom/android/launcher3/common/drag/DragManager;->mScrollRunnable:Lcom/android/launcher3/common/drag/DragManager$ScrollRunnable;

    invoke-virtual {v5, v2}, Lcom/android/launcher3/common/drag/DragManager$ScrollRunnable;->setDirection(I)V

    .line 786
    iget-object v5, p0, Lcom/android/launcher3/common/drag/DragManager;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/launcher3/common/drag/DragManager;->mScrollRunnable:Lcom/android/launcher3/common/drag/DragManager$ScrollRunnable;

    int-to-long v8, v1

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 787
    iput v4, p0, Lcom/android/launcher3/common/drag/DragManager;->mScrollState:I

    goto :goto_0

    .line 778
    .end local v0    # "backwardsDirection":I
    .end local v1    # "delay":I
    .end local v2    # "forwardDirection":I
    :cond_2
    const/16 v1, 0x1f4

    goto :goto_1

    .restart local v1    # "delay":I
    :cond_3
    move v2, v5

    .line 779
    goto :goto_2

    .restart local v2    # "forwardDirection":I
    :cond_4
    move v0, v4

    .line 780
    goto :goto_3

    .line 790
    .restart local v0    # "backwardsDirection":I
    :cond_5
    iget-object v5, p0, Lcom/android/launcher3/common/drag/DragManager;->mScrollView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    iget v6, p0, Lcom/android/launcher3/common/drag/DragManager;->mScrollZone:I

    sub-int/2addr v5, v6

    if-le p1, v5, :cond_6

    .line 791
    iget v5, p0, Lcom/android/launcher3/common/drag/DragManager;->mScrollState:I

    if-nez v5, :cond_0

    .line 792
    iget-object v5, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragScroller:Lcom/android/launcher3/common/drag/DragScroller;

    invoke-interface {v5, p1, p2, v0}, Lcom/android/launcher3/common/drag/DragScroller;->onEnterScrollArea(III)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 793
    iget-object v5, p0, Lcom/android/launcher3/common/drag/DragManager;->mScrollRunnable:Lcom/android/launcher3/common/drag/DragManager$ScrollRunnable;

    invoke-virtual {v5, v0}, Lcom/android/launcher3/common/drag/DragManager$ScrollRunnable;->setDirection(I)V

    .line 794
    iget-object v5, p0, Lcom/android/launcher3/common/drag/DragManager;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/launcher3/common/drag/DragManager;->mScrollRunnable:Lcom/android/launcher3/common/drag/DragManager$ScrollRunnable;

    int-to-long v8, v1

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 795
    iput v4, p0, Lcom/android/launcher3/common/drag/DragManager;->mScrollState:I

    goto :goto_0

    .line 799
    :cond_6
    invoke-direct {p0}, Lcom/android/launcher3/common/drag/DragManager;->clearScrollRunnable()V

    goto :goto_0
.end method

.method private checkTouchMove(Lcom/android/launcher3/common/drag/DropTarget;)V
    .locals 3
    .param p1, "dropTarget"    # Lcom/android/launcher3/common/drag/DropTarget;

    .prologue
    const/4 v2, 0x1

    .line 755
    if-eqz p1, :cond_3

    .line 756
    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mLastDropTarget:Lcom/android/launcher3/common/drag/DropTarget;

    if-eq v0, p1, :cond_1

    .line 757
    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mLastDropTarget:Lcom/android/launcher3/common/drag/DropTarget;

    if-eqz v0, :cond_0

    .line 758
    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mLastDropTarget:Lcom/android/launcher3/common/drag/DropTarget;

    iget-object v1, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    invoke-interface {v0, v1, v2}, Lcom/android/launcher3/common/drag/DropTarget;->onDragExit(Lcom/android/launcher3/common/drag/DropTarget$DragObject;Z)V

    .line 760
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    invoke-interface {p1, v0, v2}, Lcom/android/launcher3/common/drag/DropTarget;->onDragEnter(Lcom/android/launcher3/common/drag/DropTarget$DragObject;Z)V

    .line 762
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    invoke-interface {p1, v0}, Lcom/android/launcher3/common/drag/DropTarget;->onDragOver(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V

    .line 768
    :cond_2
    :goto_0
    iput-object p1, p0, Lcom/android/launcher3/common/drag/DragManager;->mLastDropTarget:Lcom/android/launcher3/common/drag/DropTarget;

    .line 769
    return-void

    .line 764
    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mLastDropTarget:Lcom/android/launcher3/common/drag/DropTarget;

    if-eqz v0, :cond_2

    .line 765
    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mLastDropTarget:Lcom/android/launcher3/common/drag/DropTarget;

    iget-object v1, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/launcher3/common/drag/DropTarget;->onDragExit(Lcom/android/launcher3/common/drag/DropTarget$DragObject;Z)V

    goto :goto_0
.end method

.method private clearScrollRunnable()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 679
    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/launcher3/common/drag/DragManager;->mScrollRunnable:Lcom/android/launcher3/common/drag/DragManager$ScrollRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 680
    iget v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mScrollState:I

    if-ne v0, v2, :cond_0

    .line 681
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mScrollState:I

    .line 682
    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mScrollRunnable:Lcom/android/launcher3/common/drag/DragManager$ScrollRunnable;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/common/drag/DragManager$ScrollRunnable;->setDirection(I)V

    .line 683
    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragScroller:Lcom/android/launcher3/common/drag/DragScroller;

    invoke-interface {v0}, Lcom/android/launcher3/common/drag/DragScroller;->onExitScrollArea()Z

    .line 685
    :cond_0
    return-void
.end method

.method private countItemsBelowThanDraggedItemRank(Lcom/android/launcher3/common/drag/DropTarget$DragObject;I)I
    .locals 4
    .param p1, "d"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .param p2, "count"    # I

    .prologue
    .line 1078
    iget-object v0, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget v1, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v0, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v0, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-wide v2, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    iget-object v0, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-wide v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-wide v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v2, -0x66

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1081
    add-int/lit8 p2, p2, 0x1

    .line 1083
    :cond_0
    return p2
.end method

.method private createQuickOptionView(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V
    .locals 4
    .param p1, "d"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .prologue
    const/4 v3, 0x0

    .line 1000
    iget-object v1, p0, Lcom/android/launcher3/common/drag/DragManager;->mQuickOptionView:Lcom/android/launcher3/common/quickoption/QuickOptionView;

    if-eqz v1, :cond_0

    .line 1001
    iget-object v1, p0, Lcom/android/launcher3/common/drag/DragManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/common/drag/DragManager;->mQuickOptionView:Lcom/android/launcher3/common/quickoption/QuickOptionView;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/common/view/DragLayer;->removeViewInLayout(Landroid/view/View;)V

    .line 1002
    iput-object v3, p0, Lcom/android/launcher3/common/drag/DragManager;->mQuickOptionView:Lcom/android/launcher3/common/quickoption/QuickOptionView;

    .line 1005
    :cond_0
    iget-object v1, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/common/drag/DragSource;

    invoke-interface {v1, p1}, Lcom/android/launcher3/common/drag/DragSource;->getQuickOptionFlags(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)I

    move-result v0

    .line 1006
    .local v0, "optionFlag":I
    if-nez v0, :cond_2

    .line 1014
    :cond_1
    :goto_0
    return-void

    .line 1010
    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/common/drag/DragManager;->mLauncher:Lcom/android/launcher3/Launcher;

    const v2, 0x7f030038

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/quickoption/QuickOptionView;

    iput-object v1, p0, Lcom/android/launcher3/common/drag/DragManager;->mQuickOptionView:Lcom/android/launcher3/common/quickoption/QuickOptionView;

    .line 1011
    iget-object v1, p0, Lcom/android/launcher3/common/drag/DragManager;->mQuickOptionView:Lcom/android/launcher3/common/quickoption/QuickOptionView;

    if-eqz v1, :cond_1

    .line 1012
    iget-object v1, p0, Lcom/android/launcher3/common/drag/DragManager;->mQuickOptionView:Lcom/android/launcher3/common/quickoption/QuickOptionView;

    invoke-virtual {v1, p1, v0}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->show(Lcom/android/launcher3/common/drag/DropTarget$DragObject;I)V

    goto :goto_0
.end method

.method private dragOutOfQuickOptionBoundary(II)Z
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 1017
    iget v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mMotionDownX:I

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-double v0, v0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget v2, p0, Lcom/android/launcher3/common/drag/DragManager;->mMotionDownY:I

    sub-int/2addr v2, p2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-double v2, v2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iget-object v2, p0, Lcom/android/launcher3/common/drag/DragManager;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 1018
    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0044

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-double v2, v2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private drop(FF)V
    .locals 13
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 856
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportQuickOption()Z

    move-result v9

    if-eqz v9, :cond_0

    float-to-int v9, p1

    float-to-int v10, p2

    invoke-direct {p0, v9, v10}, Lcom/android/launcher3/common/drag/DragManager;->dragOutOfQuickOptionBoundary(II)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 857
    invoke-virtual {p0}, Lcom/android/launcher3/common/drag/DragManager;->removeQuickOptionView()V

    .line 859
    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/common/drag/DragManager;->mCoordinatesTemp:[I

    .line 860
    .local v2, "coordinates":[I
    float-to-int v9, p1

    float-to-int v10, p2

    invoke-direct {p0, v9, v10, v2, v7}, Lcom/android/launcher3/common/drag/DragManager;->findDropTarget(II[IZ)Lcom/android/launcher3/common/drag/DropTarget;

    move-result-object v4

    .line 862
    .local v4, "dropTarget":Lcom/android/launcher3/common/drag/DropTarget;
    iget-object v9, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    aget v10, v2, v8

    iput v10, v9, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->x:I

    .line 863
    iget-object v9, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    aget v10, v2, v7

    iput v10, v9, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->y:I

    .line 864
    const/4 v0, 0x0

    .line 865
    .local v0, "accepted":Z
    if-eqz v4, :cond_6

    .line 866
    iget-object v9, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iput-boolean v7, v9, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragComplete:Z

    .line 867
    iget-object v9, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    invoke-interface {v4, v9, v8}, Lcom/android/launcher3/common/drag/DropTarget;->onDragExit(Lcom/android/launcher3/common/drag/DropTarget$DragObject;Z)V

    .line 868
    iget-object v9, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    invoke-interface {v4, v9}, Lcom/android/launcher3/common/drag/DropTarget;->acceptDrop(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 869
    iget-object v9, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    invoke-interface {v4, v9}, Lcom/android/launcher3/common/drag/DropTarget;->onDrop(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V

    .line 870
    const/4 v0, 0x1

    .line 872
    :cond_1
    iget-object v9, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v9, v9, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/common/drag/DragSource;

    invoke-interface {v4}, Lcom/android/launcher3/common/drag/DropTarget;->getTargetView()Landroid/view/View;

    move-result-object v10

    iget-object v11, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    if-eqz v0, :cond_3

    iget-object v12, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-boolean v12, v12, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->cancelled:Z

    if-nez v12, :cond_3

    :goto_0
    invoke-interface {v9, v10, v11, v7}, Lcom/android/launcher3/common/drag/DragSource;->onDropCompleted(Landroid/view/View;Lcom/android/launcher3/common/drag/DropTarget$DragObject;Z)V

    .line 875
    iget-object v7, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v7, v7, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v7, v7, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragSourceList:Ljava/util/ArrayList;

    if-eqz v7, :cond_6

    .line 876
    iget-object v7, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v7, v7, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragSourceList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/common/drag/DragSource;

    .line 877
    .local v5, "extraDragSource":Lcom/android/launcher3/common/drag/DragSource;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 878
    .local v6, "targetExtraDragObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 880
    .local v1, "cancelledExtraDragObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    iget-object v8, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v8, v8, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .line 881
    .local v3, "d":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    iget-object v9, v3, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/common/drag/DragSource;

    invoke-virtual {v5, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 882
    if-eqz v0, :cond_4

    iget-boolean v9, v3, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->cancelled:Z

    if-nez v9, :cond_4

    .line 883
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .end local v1    # "cancelledExtraDragObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    .end local v3    # "d":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .end local v5    # "extraDragSource":Lcom/android/launcher3/common/drag/DragSource;
    .end local v6    # "targetExtraDragObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    :cond_3
    move v7, v8

    .line 872
    goto :goto_0

    .line 885
    .restart local v1    # "cancelledExtraDragObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    .restart local v3    # "d":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .restart local v5    # "extraDragSource":Lcom/android/launcher3/common/drag/DragSource;
    .restart local v6    # "targetExtraDragObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    :cond_4
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 890
    .end local v3    # "d":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    :cond_5
    invoke-interface {v4}, Lcom/android/launcher3/common/drag/DropTarget;->getTargetView()Landroid/view/View;

    move-result-object v8

    invoke-interface {v5, v8, v6, v1}, Lcom/android/launcher3/common/drag/DragSource;->onExtraObjectDropCompleted(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_1

    .line 895
    .end local v1    # "cancelledExtraDragObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    .end local v5    # "extraDragSource":Lcom/android/launcher3/common/drag/DragSource;
    .end local v6    # "targetExtraDragObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    :cond_6
    return-void
.end method

.method private endDrag()V
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 542
    iget-boolean v5, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragging:Z

    if-eqz v5, :cond_4

    .line 543
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragging:Z

    .line 544
    invoke-direct {p0}, Lcom/android/launcher3/common/drag/DragManager;->clearScrollRunnable()V

    .line 545
    const/4 v3, 0x0

    .line 546
    .local v3, "isDeferred":Z
    iget-object v5, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v5, v5, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    if-eqz v5, :cond_3

    .line 547
    iget-object v5, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-boolean v3, v5, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    .line 548
    if-nez v3, :cond_0

    .line 549
    iget-object v5, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v5, v5, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v5}, Lcom/android/launcher3/common/drag/DragView;->remove()V

    .line 551
    iget-object v5, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v5, v5, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    if-eqz v5, :cond_2

    .line 552
    iget-object v5, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v5, v5, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .line 553
    .local v1, "extraDrag":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    iget-object v6, v1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v6}, Lcom/android/launcher3/common/drag/DragView;->remove()V

    goto :goto_0

    .line 557
    .end local v1    # "extraDrag":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    :cond_0
    iget-object v5, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v5, v5, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    if-eqz v5, :cond_2

    .line 558
    iget-object v5, p0, Lcom/android/launcher3/common/drag/DragManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0019

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 559
    .local v0, "delay":I
    iget-object v5, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v5, v5, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .line 560
    .restart local v1    # "extraDrag":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    iget-object v2, v1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    .line 561
    .local v2, "extraDragView":Lcom/android/launcher3/common/drag/DragView;
    iget-boolean v6, v1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    if-eqz v6, :cond_1

    .line 562
    new-instance v6, Lcom/android/launcher3/common/drag/DragManager$2;

    invoke-direct {v6, p0, v2}, Lcom/android/launcher3/common/drag/DragManager$2;-><init>(Lcom/android/launcher3/common/drag/DragManager;Lcom/android/launcher3/common/drag/DragView;)V

    int-to-long v8, v0

    invoke-virtual {v2, v6, v8, v9}, Lcom/android/launcher3/common/drag/DragView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 569
    :cond_1
    invoke-virtual {v2}, Lcom/android/launcher3/common/drag/DragView;->remove()V

    goto :goto_1

    .line 574
    .end local v0    # "delay":I
    .end local v1    # "extraDrag":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .end local v2    # "extraDragView":Lcom/android/launcher3/common/drag/DragView;
    :cond_2
    iget-object v5, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iput-object v7, v5, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    .line 575
    iget-object v5, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iput-object v7, v5, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    .line 576
    iget-object v5, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iput-object v7, v5, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragSourceList:Ljava/util/ArrayList;

    .line 580
    :cond_3
    if-nez v3, :cond_4

    .line 581
    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/launcher3/common/drag/DragManager;->mListeners:Ljava/util/ArrayList;

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/common/drag/DragManager$DragListener;

    .line 582
    .local v4, "listener":Lcom/android/launcher3/common/drag/DragManager$DragListener;
    invoke-interface {v4}, Lcom/android/launcher3/common/drag/DragManager$DragListener;->onDragEnd()Z

    goto :goto_2

    .line 586
    .end local v3    # "isDeferred":Z
    .end local v4    # "listener":Lcom/android/launcher3/common/drag/DragManager$DragListener;
    :cond_4
    return-void
.end method

.method private findDropTarget(II[IZ)Lcom/android/launcher3/common/drag/DropTarget;
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "dropCoordinates"    # [I
    .param p4, "isDrop"    # Z

    .prologue
    .line 898
    iget-object v3, p0, Lcom/android/launcher3/common/drag/DragManager;->mRectTemp:Landroid/graphics/Rect;

    .line 900
    .local v3, "r":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/launcher3/common/drag/DragManager;->mDropTargets:Ljava/util/ArrayList;

    .line 901
    .local v1, "dropTargets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 902
    .local v0, "count":I
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 903
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/common/drag/DropTarget;

    .line 904
    .local v4, "target":Lcom/android/launcher3/common/drag/DropTarget;
    invoke-interface {v4, p4}, Lcom/android/launcher3/common/drag/DropTarget;->isDropEnabled(Z)Z

    move-result v5

    if-nez v5, :cond_1

    .line 902
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 908
    :cond_1
    invoke-interface {v4, v3}, Lcom/android/launcher3/common/drag/DropTarget;->getHitRectRelativeToDragLayer(Landroid/graphics/Rect;)V

    .line 910
    iget-object v5, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iput p1, v5, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->x:I

    .line 911
    iget-object v5, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iput p2, v5, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->y:I

    .line 912
    invoke-virtual {v3, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 913
    const/4 v5, 0x0

    aput p1, p3, v5

    .line 914
    const/4 v5, 0x1

    aput p2, p3, v5

    .line 915
    iget-object v5, p0, Lcom/android/launcher3/common/drag/DragManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v5

    invoke-interface {v4}, Lcom/android/launcher3/common/drag/DropTarget;->getTargetView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v5, v6, p3}, Lcom/android/launcher3/common/view/DragLayer;->mapCoordInSelfToDescendent(Landroid/view/View;[I)F

    .line 920
    .end local v4    # "target":Lcom/android/launcher3/common/drag/DropTarget;
    :goto_1
    return-object v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private getClampedDragLayerPos(FF)[I
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 606
    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragLayerRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/view/DragLayer;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 607
    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mTmpPoint:[I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragLayerRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragLayerRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    invoke-static {p1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    float-to-int v2, v2

    aput v2, v0, v1

    .line 608
    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mTmpPoint:[I

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragLayerRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragLayerRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    invoke-static {p2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    float-to-int v2, v2

    aput v2, v0, v1

    .line 609
    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mTmpPoint:[I

    return-object v0
.end method

.method private handleMoveEvent(II)V
    .locals 20
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 688
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportQuickOption()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-direct/range {p0 .. p2}, Lcom/android/launcher3/common/drag/DragManager;->dragOutOfQuickOptionBoundary(II)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 689
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/common/drag/DragManager;->mMoveStageAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    if-eqz v13, :cond_0

    .line 690
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/common/drag/DragManager;->mMoveStageAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v13}, Lcom/android/launcher3/util/alarm/Alarm;->cancelAlarm()V

    .line 692
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/drag/DragManager;->removeQuickOptionView()V

    .line 695
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v13, v13, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v13, v13, Lcom/android/launcher3/common/base/item/IconInfo;

    if-nez v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v13, v13, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v13, v13, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v13, :cond_3

    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/common/drag/DragManager;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/common/drag/DragManager;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    .line 696
    invoke-virtual {v13}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->isMultiSelectMode()Z

    move-result v13

    if-nez v13, :cond_3

    .line 697
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v13, v13, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v13}, Lcom/android/launcher3/common/drag/DragView;->animateUp()V

    .line 701
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v13, v13, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v13, v0, v1}, Lcom/android/launcher3/common/drag/DragView;->move(II)V

    .line 703
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v13, v13, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    if-eqz v13, :cond_4

    .line 704
    move/from16 v11, p1

    .line 705
    .local v11, "touchX":I
    move/from16 v12, p2

    .line 706
    .local v12, "touchY":I
    const/4 v5, 0x0

    .line 708
    .local v5, "count":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v13, v13, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .line 709
    .local v7, "extraDrag":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    iget-object v10, v7, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    .line 710
    .local v10, "targetView":Lcom/android/launcher3/common/drag/DragView;
    add-int/lit8 v5, v5, 0x1

    .line 712
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/common/drag/DragManager;->mHandler:Landroid/os/Handler;

    new-instance v15, Lcom/android/launcher3/common/drag/DragManager$3;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v10, v11, v12}, Lcom/android/launcher3/common/drag/DragManager$3;-><init>(Lcom/android/launcher3/common/drag/DragManager;Lcom/android/launcher3/common/drag/DragView;II)V

    mul-int/lit8 v16, v5, 0xa

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    invoke-virtual/range {v14 .. v17}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 724
    .end local v5    # "count":I
    .end local v7    # "extraDrag":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .end local v10    # "targetView":Lcom/android/launcher3/common/drag/DragView;
    .end local v11    # "touchX":I
    .end local v12    # "touchY":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/common/drag/DragManager;->mCoordinatesTemp:[I

    .line 725
    .local v4, "coordinates":[I
    const/4 v13, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v4, v13}, Lcom/android/launcher3/common/drag/DragManager;->findDropTarget(II[IZ)Lcom/android/launcher3/common/drag/DropTarget;

    move-result-object v6

    .line 726
    .local v6, "dropTarget":Lcom/android/launcher3/common/drag/DropTarget;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    const/4 v14, 0x0

    aget v14, v4, v14

    iput v14, v13, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->x:I

    .line 727
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    const/4 v14, 0x1

    aget v14, v4, v14

    iput v14, v13, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->y:I

    .line 728
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/launcher3/common/drag/DragManager;->checkTouchMove(Lcom/android/launcher3/common/drag/DropTarget;)V

    .line 730
    if-nez v6, :cond_7

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/launcher3/common/drag/DragManager;->mOutlineColor:I

    .line 731
    .local v9, "outlineColor":I
    :goto_1
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher3/common/drag/DragManager;->mOutlineColor:I

    if-eq v9, v13, :cond_6

    .line 732
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v13, v13, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v13}, Lcom/android/launcher3/common/drag/DragView;->getDragOutline()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 733
    .local v8, "outline":Landroid/graphics/drawable/Drawable;
    if-eqz v8, :cond_5

    .line 734
    sget-object v13, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v8, v9, v13}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 736
    :cond_5
    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/launcher3/common/drag/DragManager;->mOutlineColor:I

    .line 740
    .end local v8    # "outline":Landroid/graphics/drawable/Drawable;
    :cond_6
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher3/common/drag/DragManager;->mDistanceSinceScroll:I

    int-to-double v14, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/common/drag/DragManager;->mLastTouch:[I

    const/16 v16, 0x0

    aget v13, v13, v16

    sub-int v13, v13, p1

    int-to-double v0, v13

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/common/drag/DragManager;->mLastTouch:[I

    const/16 v18, 0x1

    aget v13, v13, v18

    sub-int v13, v13, p2

    int-to-double v0, v13

    move-wide/from16 v18, v0

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v16

    add-double v14, v14, v16

    double-to-int v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/launcher3/common/drag/DragManager;->mDistanceSinceScroll:I

    .line 741
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/common/drag/DragManager;->mLastTouch:[I

    const/4 v14, 0x0

    aput p1, v13, v14

    .line 742
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/common/drag/DragManager;->mLastTouch:[I

    const/4 v14, 0x1

    aput p2, v13, v14

    .line 743
    invoke-direct/range {p0 .. p2}, Lcom/android/launcher3/common/drag/DragManager;->checkScrollState(II)V

    .line 744
    return-void

    .line 730
    .end local v9    # "outlineColor":I
    :cond_7
    invoke-interface {v6}, Lcom/android/launcher3/common/drag/DropTarget;->getOutlineColor()I

    move-result v9

    goto :goto_1
.end method


# virtual methods
.method public addDragListener(Lcom/android/launcher3/common/drag/DragManager$DragListener;)V
    .locals 1
    .param p1, "l"    # Lcom/android/launcher3/common/drag/DragManager$DragListener;

    .prologue
    .line 937
    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 938
    return-void
.end method

.method public addDropTarget(Lcom/android/launcher3/common/drag/DropTarget;)V
    .locals 1
    .param p1, "target"    # Lcom/android/launcher3/common/drag/DropTarget;

    .prologue
    .line 951
    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mDropTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 952
    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mDropTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 954
    :cond_0
    return-void
.end method

.method public cancelDrag()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 489
    iget-object v3, p0, Lcom/android/launcher3/common/drag/DragManager;->mMoveStageAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    if-eqz v3, :cond_0

    .line 490
    iget-object v3, p0, Lcom/android/launcher3/common/drag/DragManager;->mMoveStageAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v3}, Lcom/android/launcher3/util/alarm/Alarm;->cancelAlarm()V

    .line 493
    :cond_0
    iget-boolean v3, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragging:Z

    if-eqz v3, :cond_4

    .line 494
    iget-object v3, p0, Lcom/android/launcher3/common/drag/DragManager;->mLastDropTarget:Lcom/android/launcher3/common/drag/DropTarget;

    if-eqz v3, :cond_1

    .line 495
    iget-object v3, p0, Lcom/android/launcher3/common/drag/DragManager;->mLastDropTarget:Lcom/android/launcher3/common/drag/DropTarget;

    iget-object v4, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    invoke-interface {v3, v4, v5}, Lcom/android/launcher3/common/drag/DropTarget;->onDragExit(Lcom/android/launcher3/common/drag/DropTarget$DragObject;Z)V

    .line 497
    :cond_1
    iget-object v3, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iput-boolean v5, v3, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    .line 498
    iget-object v3, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iput-boolean v6, v3, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->cancelled:Z

    .line 499
    iget-object v3, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iput-boolean v6, v3, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragComplete:Z

    .line 500
    iget-object v3, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v3, v3, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/common/drag/DragSource;

    iget-object v4, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    invoke-interface {v3, v7, v4, v5}, Lcom/android/launcher3/common/drag/DragSource;->onDropCompleted(Landroid/view/View;Lcom/android/launcher3/common/drag/DropTarget$DragObject;Z)V

    .line 502
    iget-object v3, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v3, v3, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v3, v3, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragSourceList:Ljava/util/ArrayList;

    if-eqz v3, :cond_4

    .line 503
    iget-object v3, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v3, v3, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragSourceList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/drag/DragSource;

    .line 504
    .local v1, "extraDragSource":Lcom/android/launcher3/common/drag/DragSource;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 505
    .local v2, "targetExtraDragObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    iget-object v4, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v4, v4, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .line 506
    .local v0, "d":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    iget-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/common/drag/DragSource;

    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 507
    iput-boolean v6, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->cancelled:Z

    .line 508
    iput-boolean v6, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragComplete:Z

    .line 509
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 512
    .end local v0    # "d":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    :cond_3
    invoke-interface {v1, v7, v7, v2}, Lcom/android/launcher3/common/drag/DragSource;->onExtraObjectDropCompleted(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 516
    .end local v1    # "extraDragSource":Lcom/android/launcher3/common/drag/DragSource;
    .end local v2    # "targetExtraDragObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    :cond_4
    invoke-direct {p0}, Lcom/android/launcher3/common/drag/DragManager;->endDrag()V

    .line 517
    return-void
.end method

.method public createDragView(Landroid/view/View;II)Lcom/android/launcher3/common/drag/DragView;
    .locals 20
    .param p1, "appView"    # Landroid/view/View;
    .param p2, "targetLocationX"    # I
    .param p3, "targetLocationY"    # I

    .prologue
    .line 1061
    const/4 v3, 0x2

    new-array v0, v3, [I

    move-object/from16 v19, v0

    .line 1062
    .local v19, "tempPt":[I
    new-instance v18, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x6

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 1063
    .local v18, "padding":Ljava/util/concurrent/atomic/AtomicInteger;
    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-static {v0, v1, v3}, Lcom/android/launcher3/common/drag/DragViewHelper;->createDragBitmap(Landroid/view/View;Ljava/util/concurrent/atomic/AtomicInteger;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1064
    .local v4, "viewBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    .line 1065
    .local v17, "bmpWidth":I
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    .line 1066
    .local v16, "bmpHeight":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/common/drag/DragManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v3

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v3, v0, v1}, Lcom/android/launcher3/common/view/DragLayer;->getLocationInDragLayer(Landroid/view/View;[I)F

    move-result v11

    .line 1067
    .local v11, "appScale":F
    const/4 v3, 0x0

    aget v3, v19, v3

    int-to-float v3, v3

    move/from16 v0, v17

    int-to-float v5, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v11

    sub-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    sub-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v14

    .line 1068
    .local v14, "appX":I
    const/4 v3, 0x1

    aget v3, v19, v3

    int-to-float v3, v3

    move/from16 v0, v16

    int-to-float v5, v0

    move/from16 v0, v16

    int-to-float v6, v0

    mul-float/2addr v6, v11

    sub-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    sub-float/2addr v3, v5

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v15

    .line 1070
    .local v15, "appY":I
    new-instance v2, Lcom/android/launcher3/common/drag/DragView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/common/drag/DragManager;->mLauncher:Lcom/android/launcher3/Launcher;

    neg-int v5, v14

    neg-int v6, v15

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 1071
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v13, 0x0

    invoke-direct/range {v2 .. v13}, Lcom/android/launcher3/common/drag/DragView;-><init>(Lcom/android/launcher3/Launcher;Landroid/graphics/Bitmap;IIIIIIFFZ)V

    .line 1072
    .local v2, "dragView":Lcom/android/launcher3/common/drag/DragView;
    sub-int v3, p2, v14

    sub-int v5, p3, v15

    invoke-virtual {v2, v3, v5}, Lcom/android/launcher3/common/drag/DragView;->setTargetOffset(II)V

    .line 1074
    return-object v2
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 470
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportQuickOption()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mQuickOptionView:Lcom/android/launcher3/common/quickoption/QuickOptionView;

    if-eqz v0, :cond_1

    .line 471
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 472
    const-string v0, "1"

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/drag/DragManager;->removeQuickOptionView(Ljava/lang/String;)V

    .line 476
    :goto_0
    const/4 v0, 0x1

    .line 478
    :goto_1
    return v0

    .line 474
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/common/drag/DragManager;->removeQuickOptionView()V

    goto :goto_0

    .line 478
    :cond_1
    iget-boolean v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragging:Z

    goto :goto_1
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 1
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I

    .prologue
    .line 675
    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mMoveTarget:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mMoveTarget:Landroid/view/View;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dragging()Z
    .locals 1

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragging:Z

    return v0
.end method

.method public enableQuickOptionView()V
    .locals 1

    .prologue
    .line 1030
    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mQuickOptionView:Lcom/android/launcher3/common/quickoption/QuickOptionView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mQuickOptionView:Lcom/android/launcher3/common/quickoption/QuickOptionView;

    invoke-virtual {v0}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->enable()V

    .line 1031
    :cond_0
    return-void
.end method

.method public forceTouchMove()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 747
    iget-object v1, p0, Lcom/android/launcher3/common/drag/DragManager;->mCoordinatesTemp:[I

    .line 748
    .local v1, "dummyCoordinates":[I
    iget-object v2, p0, Lcom/android/launcher3/common/drag/DragManager;->mLastTouch:[I

    aget v2, v2, v4

    iget-object v3, p0, Lcom/android/launcher3/common/drag/DragManager;->mLastTouch:[I

    aget v3, v3, v5

    invoke-direct {p0, v2, v3, v1, v4}, Lcom/android/launcher3/common/drag/DragManager;->findDropTarget(II[IZ)Lcom/android/launcher3/common/drag/DropTarget;

    move-result-object v0

    .line 749
    .local v0, "dropTarget":Lcom/android/launcher3/common/drag/DropTarget;
    iget-object v2, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    aget v3, v1, v4

    iput v3, v2, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->x:I

    .line 750
    iget-object v2, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    aget v3, v1, v5

    iput v3, v2, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->y:I

    .line 751
    invoke-direct {p0, v0}, Lcom/android/launcher3/common/drag/DragManager;->checkTouchMove(Lcom/android/launcher3/common/drag/DropTarget;)V

    .line 752
    return-void
.end method

.method public getDragObject()Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .locals 1

    .prologue
    .line 1087
    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    return-object v0
.end method

.method public getLastGestureUpTime()J
    .locals 2

    .prologue
    .line 613
    iget-boolean v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragging:Z

    if-eqz v0, :cond_0

    .line 614
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 616
    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mLastTouchUpTime:J

    goto :goto_0
.end method

.method public getQuickOptionView()Lcom/android/launcher3/common/quickoption/QuickOptionView;
    .locals 1

    .prologue
    .line 1022
    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mQuickOptionView:Lcom/android/launcher3/common/quickoption/QuickOptionView;

    return-object v0
.end method

.method public isDragging()Z
    .locals 1

    .prologue
    .line 482
    iget-boolean v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragging:Z

    return v0
.end method

.method public isQuickOptionShowing()Z
    .locals 1

    .prologue
    .line 1026
    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mQuickOptionView:Lcom/android/launcher3/common/quickoption/QuickOptionView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mQuickOptionView:Lcom/android/launcher3/common/quickoption/QuickOptionView;

    invoke-virtual {v0}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->getState()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAppsRemoved(Ljava/util/ArrayList;Ljava/util/HashSet;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashSet",
            "<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 521
    .local p1, "packageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, "cns":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    iget-object v5, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    if-eqz v5, :cond_2

    .line 522
    iget-object v5, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v4, v5, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    .line 523
    .local v4, "rawDragInfo":Ljava/lang/Object;
    instance-of v5, v4, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v5, :cond_2

    move-object v2, v4

    .line 524
    check-cast v2, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 525
    .local v2, "dragInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    invoke-virtual {p2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 527
    .local v1, "componentName":Landroid/content/ComponentName;
    if-eqz v2, :cond_0

    iget-object v6, v2, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    if-eqz v6, :cond_0

    .line 528
    iget-object v6, v2, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 529
    .local v0, "cn":Landroid/content/ComponentName;
    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    if-eqz p1, :cond_3

    .line 530
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_1
    const/4 v3, 0x1

    .line 531
    .local v3, "isSameComponent":Z
    :goto_0
    if-eqz v3, :cond_0

    .line 532
    invoke-virtual {p0}, Lcom/android/launcher3/common/drag/DragManager;->cancelDrag()V

    .line 539
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v1    # "componentName":Landroid/content/ComponentName;
    .end local v2    # "dragInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v3    # "isSameComponent":Z
    .end local v4    # "rawDragInfo":Ljava/lang/Object;
    :cond_2
    return-void

    .line 530
    .restart local v0    # "cn":Landroid/content/ComponentName;
    .restart local v1    # "componentName":Landroid/content/ComponentName;
    .restart local v2    # "dragInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    .restart local v4    # "rawDragInfo":Ljava/lang/Object;
    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public onDeferredEndDrag(Lcom/android/launcher3/common/drag/DragView;)V
    .locals 3
    .param p1, "dragView"    # Lcom/android/launcher3/common/drag/DragView;

    .prologue
    .line 592
    invoke-virtual {p1}, Lcom/android/launcher3/common/drag/DragView;->remove()V

    .line 594
    iget-object v1, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-boolean v1, v1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    if-eqz v1, :cond_0

    .line 596
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/launcher3/common/drag/DragManager;->mListeners:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/drag/DragManager$DragListener;

    .line 597
    .local v0, "listener":Lcom/android/launcher3/common/drag/DragManager$DragListener;
    invoke-interface {v0}, Lcom/android/launcher3/common/drag/DragManager$DragListener;->onDragEnd()Z

    goto :goto_0

    .line 600
    .end local v0    # "listener":Lcom/android/launcher3/common/drag/DragManager$DragListener;
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 629
    const/4 v1, 0x0

    .line 635
    .local v1, "debug":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 636
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-direct {p0, v5, v6}, Lcom/android/launcher3/common/drag/DragManager;->getClampedDragLayerPos(FF)[I

    move-result-object v2

    .line 637
    .local v2, "dragLayerPos":[I
    const/4 v5, 0x0

    aget v3, v2, v5

    .line 638
    .local v3, "dragLayerX":I
    const/4 v5, 0x1

    aget v4, v2, v5

    .line 640
    .local v4, "dragLayerY":I
    packed-switch v0, :pswitch_data_0

    .line 664
    :goto_0
    :pswitch_0
    iget-boolean v5, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragging:Z

    return v5

    .line 645
    :pswitch_1
    iput v3, p0, Lcom/android/launcher3/common/drag/DragManager;->mMotionDownX:I

    .line 646
    iput v4, p0, Lcom/android/launcher3/common/drag/DragManager;->mMotionDownY:I

    .line 647
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/launcher3/common/drag/DragManager;->mLastDropTarget:Lcom/android/launcher3/common/drag/DropTarget;

    goto :goto_0

    .line 650
    :pswitch_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/launcher3/common/drag/DragManager;->mLastTouchUpTime:J

    .line 651
    iget-object v5, p0, Lcom/android/launcher3/common/drag/DragManager;->mMoveStageAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    if-eqz v5, :cond_0

    .line 652
    iget-object v5, p0, Lcom/android/launcher3/common/drag/DragManager;->mMoveStageAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v5}, Lcom/android/launcher3/util/alarm/Alarm;->cancelAlarm()V

    .line 654
    :cond_0
    iget-boolean v5, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragging:Z

    if-eqz v5, :cond_1

    .line 655
    int-to-float v5, v3

    int-to-float v6, v4

    invoke-direct {p0, v5, v6}, Lcom/android/launcher3/common/drag/DragManager;->drop(FF)V

    .line 657
    :cond_1
    invoke-direct {p0}, Lcom/android/launcher3/common/drag/DragManager;->endDrag()V

    goto :goto_0

    .line 660
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/launcher3/common/drag/DragManager;->cancelDrag()V

    goto :goto_0

    .line 640
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 807
    iget-boolean v6, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragging:Z

    if-nez v6, :cond_0

    .line 852
    :goto_0
    return v4

    .line 811
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 812
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-direct {p0, v6, v7}, Lcom/android/launcher3/common/drag/DragManager;->getClampedDragLayerPos(FF)[I

    move-result-object v1

    .line 813
    .local v1, "dragLayerPos":[I
    aget v2, v1, v4

    .line 814
    .local v2, "dragLayerX":I
    aget v3, v1, v5

    .line 816
    .local v3, "dragLayerY":I
    packed-switch v0, :pswitch_data_0

    :goto_1
    move v4, v5

    .line 852
    goto :goto_0

    .line 819
    :pswitch_0
    iput v2, p0, Lcom/android/launcher3/common/drag/DragManager;->mMotionDownX:I

    .line 820
    iput v3, p0, Lcom/android/launcher3/common/drag/DragManager;->mMotionDownY:I

    .line 822
    iget v6, p0, Lcom/android/launcher3/common/drag/DragManager;->mScrollZone:I

    if-lt v2, v6, :cond_1

    iget-object v6, p0, Lcom/android/launcher3/common/drag/DragManager;->mScrollView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    iget v7, p0, Lcom/android/launcher3/common/drag/DragManager;->mScrollZone:I

    sub-int/2addr v6, v7

    if-le v2, v6, :cond_2

    .line 823
    :cond_1
    iput v5, p0, Lcom/android/launcher3/common/drag/DragManager;->mScrollState:I

    .line 824
    iget-object v4, p0, Lcom/android/launcher3/common/drag/DragManager;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/launcher3/common/drag/DragManager;->mScrollRunnable:Lcom/android/launcher3/common/drag/DragManager$ScrollRunnable;

    const-wide/16 v8, 0x1f4

    invoke-virtual {v4, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 828
    :goto_2
    invoke-direct {p0, v2, v3}, Lcom/android/launcher3/common/drag/DragManager;->handleMoveEvent(II)V

    goto :goto_1

    .line 826
    :cond_2
    iput v4, p0, Lcom/android/launcher3/common/drag/DragManager;->mScrollState:I

    goto :goto_2

    .line 831
    :pswitch_1
    invoke-direct {p0, v2, v3}, Lcom/android/launcher3/common/drag/DragManager;->handleMoveEvent(II)V

    goto :goto_1

    .line 835
    :pswitch_2
    invoke-direct {p0, v2, v3}, Lcom/android/launcher3/common/drag/DragManager;->handleMoveEvent(II)V

    .line 836
    iget-object v4, p0, Lcom/android/launcher3/common/drag/DragManager;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/launcher3/common/drag/DragManager;->mScrollRunnable:Lcom/android/launcher3/common/drag/DragManager$ScrollRunnable;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 838
    iget-object v4, p0, Lcom/android/launcher3/common/drag/DragManager;->mMoveStageAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    if-eqz v4, :cond_3

    .line 839
    iget-object v4, p0, Lcom/android/launcher3/common/drag/DragManager;->mMoveStageAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v4}, Lcom/android/launcher3/util/alarm/Alarm;->cancelAlarm()V

    .line 841
    :cond_3
    iget-boolean v4, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragging:Z

    if-eqz v4, :cond_4

    .line 842
    int-to-float v4, v2

    int-to-float v6, v3

    invoke-direct {p0, v4, v6}, Lcom/android/launcher3/common/drag/DragManager;->drop(FF)V

    .line 844
    :cond_4
    invoke-direct {p0}, Lcom/android/launcher3/common/drag/DragManager;->endDrag()V

    goto :goto_1

    .line 847
    :pswitch_3
    iget-object v4, p0, Lcom/android/launcher3/common/drag/DragManager;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/launcher3/common/drag/DragManager;->mScrollRunnable:Lcom/android/launcher3/common/drag/DragManager$ScrollRunnable;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 848
    invoke-virtual {p0}, Lcom/android/launcher3/common/drag/DragManager;->cancelDrag()V

    goto :goto_1

    .line 816
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public removeDragListener(Lcom/android/launcher3/common/drag/DragManager$DragListener;)V
    .locals 1
    .param p1, "l"    # Lcom/android/launcher3/common/drag/DragManager$DragListener;

    .prologue
    .line 944
    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 945
    return-void
.end method

.method public removeDropTarget(Lcom/android/launcher3/common/drag/DropTarget;)V
    .locals 1
    .param p1, "target"    # Lcom/android/launcher3/common/drag/DropTarget;

    .prologue
    .line 960
    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mDropTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 961
    return-void
.end method

.method public removeExtraDragSourceViewAndReorder()V
    .locals 12

    .prologue
    .line 437
    iget-object v7, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v7, v7, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragSourceList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/common/drag/DragSource;

    .line 438
    .local v4, "extraDragSource":Lcom/android/launcher3/common/drag/DragSource;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 439
    .local v6, "targetExtraDragObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    iget-object v7, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v7, v7, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v7, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget v2, v7, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    .line 440
    .local v2, "dragObjectRank":I
    const/4 v0, 0x0

    .line 441
    .local v0, "count":I
    iget-object v7, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v7, v7, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .line 442
    .local v1, "d":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    iget-object v9, v1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/common/drag/DragSource;

    invoke-virtual {v4, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 443
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 445
    :cond_2
    instance-of v9, v4, Lcom/android/launcher3/allapps/controller/AppsDragController;

    if-eqz v9, :cond_1

    .line 446
    invoke-direct {p0, v1, v0}, Lcom/android/launcher3/common/drag/DragManager;->countItemsBelowThanDraggedItemRank(Lcom/android/launcher3/common/drag/DropTarget$DragObject;I)I

    move-result v0

    goto :goto_1

    .line 449
    .end local v1    # "d":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    :cond_3
    sub-int v3, v2, v0

    .line 450
    .local v3, "emptyRank":I
    iget-object v7, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v7, v7, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v7, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-wide v10, v7, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    long-to-int v5, v10

    .line 451
    .local v5, "screenId":I
    invoke-interface {v4, v6}, Lcom/android/launcher3/common/drag/DragSource;->onExtraObjectDragged(Ljava/util/ArrayList;)V

    .line 452
    instance-of v7, v4, Lcom/android/launcher3/allapps/controller/AppsDragController;

    if-eqz v7, :cond_0

    .line 453
    check-cast v4, Lcom/android/launcher3/allapps/controller/AppsDragController;

    .end local v4    # "extraDragSource":Lcom/android/launcher3/common/drag/DragSource;
    iget-object v7, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    invoke-virtual {v4, v7, v3, v2, v5}, Lcom/android/launcher3/allapps/controller/AppsDragController;->onAdjustDraggedObjectPosition(Lcom/android/launcher3/common/drag/DropTarget$DragObject;III)V

    goto :goto_0

    .line 457
    .end local v0    # "count":I
    .end local v2    # "dragObjectRank":I
    .end local v3    # "emptyRank":I
    .end local v5    # "screenId":I
    .end local v6    # "targetExtraDragObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    :cond_4
    return-void
.end method

.method public removeQuickOptionView()V
    .locals 1

    .prologue
    .line 1034
    const-string v0, "4"

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/drag/DragManager;->removeQuickOptionView(Ljava/lang/String;)V

    .line 1035
    return-void
.end method

.method public removeQuickOptionView(Ljava/lang/String;)V
    .locals 3
    .param p1, "detailOfremove"    # Ljava/lang/String;

    .prologue
    .line 1038
    iget-object v1, p0, Lcom/android/launcher3/common/drag/DragManager;->mQuickOptionView:Lcom/android/launcher3/common/quickoption/QuickOptionView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/common/drag/DragManager;->mQuickOptionView:Lcom/android/launcher3/common/quickoption/QuickOptionView;

    invoke-virtual {v1}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->getHideAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1058
    :cond_0
    :goto_0
    return-void

    .line 1042
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/common/drag/DragManager;->mQuickOptionView:Lcom/android/launcher3/common/quickoption/QuickOptionView;

    invoke-virtual {v1}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->getShowAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1043
    iget-object v1, p0, Lcom/android/launcher3/common/drag/DragManager;->mQuickOptionView:Lcom/android/launcher3/common/quickoption/QuickOptionView;

    invoke-virtual {v1}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->getShowAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1046
    :cond_2
    new-instance v0, Lcom/android/launcher3/common/drag/DragManager$4;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/common/drag/DragManager$4;-><init>(Lcom/android/launcher3/common/drag/DragManager;Ljava/lang/String;)V

    .line 1057
    .local v0, "removeCallback":Ljava/lang/Runnable;
    iget-object v2, p0, Lcom/android/launcher3/common/drag/DragManager;->mQuickOptionView:Lcom/android/launcher3/common/quickoption/QuickOptionView;

    iget-object v1, p0, Lcom/android/launcher3/common/drag/DragManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->hasWindowFocus()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v2, v0, v1}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->remove(Ljava/lang/Runnable;Z)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public resetLastGestureUpTime()V
    .locals 2

    .prologue
    .line 621
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mLastTouchUpTime:J

    .line 622
    return-void
.end method

.method public setDragScroller(Lcom/android/launcher3/common/drag/DragScroller;)V
    .locals 1
    .param p1, "scroller"    # Lcom/android/launcher3/common/drag/DragScroller;

    .prologue
    .line 924
    invoke-direct {p0}, Lcom/android/launcher3/common/drag/DragManager;->clearScrollRunnable()V

    .line 925
    iput-object p1, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragScroller:Lcom/android/launcher3/common/drag/DragScroller;

    .line 926
    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragScroller:Lcom/android/launcher3/common/drag/DragScroller;

    invoke-interface {v0}, Lcom/android/launcher3/common/drag/DragScroller;->getScrollZone()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mScrollZone:I

    .line 927
    return-void
.end method

.method public setMoveTarget(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 671
    iput-object p1, p0, Lcom/android/launcher3/common/drag/DragManager;->mMoveTarget:Landroid/view/View;

    .line 672
    return-void
.end method

.method public setScrollView(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 967
    iput-object p1, p0, Lcom/android/launcher3/common/drag/DragManager;->mScrollView:Landroid/view/View;

    .line 968
    return-void
.end method

.method public setWindowToken(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 930
    iput-object p1, p0, Lcom/android/launcher3/common/drag/DragManager;->mWindowToken:Landroid/os/IBinder;

    .line 931
    return-void
.end method

.method public startDrag(Landroid/graphics/Bitmap;IILcom/android/launcher3/common/drag/DragSource;Ljava/lang/Object;ILandroid/graphics/Point;Landroid/graphics/Rect;FLandroid/graphics/drawable/Drawable;ZZ)Lcom/android/launcher3/common/drag/DragView;
    .locals 55
    .param p1, "b"    # Landroid/graphics/Bitmap;
    .param p2, "dragLayerX"    # I
    .param p3, "dragLayerY"    # I
    .param p4, "source"    # Lcom/android/launcher3/common/drag/DragSource;
    .param p5, "dragInfo"    # Ljava/lang/Object;
    .param p6, "dragAction"    # I
    .param p7, "dragOffset"    # Landroid/graphics/Point;
    .param p8, "dragRegion"    # Landroid/graphics/Rect;
    .param p9, "initialDragViewScale"    # F
    .param p10, "outline"    # Landroid/graphics/drawable/Drawable;
    .param p11, "allowQuickOption"    # Z
    .param p12, "fromEmptyCell"    # Z

    .prologue
    .line 257
    if-eqz p4, :cond_0

    .line 258
    invoke-interface/range {p4 .. p4}, Lcom/android/launcher3/common/drag/DragSource;->getOutlineColor()I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/launcher3/common/drag/DragManager;->mOutlineColor:I

    .line 262
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DragManager;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    if-nez v5, :cond_1

    .line 263
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DragManager;->mLauncher:Lcom/android/launcher3/Launcher;

    const-string v6, "input_method"

    .line 264
    invoke-virtual {v5, v6}, Lcom/android/launcher3/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodManager;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/launcher3/common/drag/DragManager;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 266
    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DragManager;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/common/drag/DragManager;->mWindowToken:Landroid/os/IBinder;

    const/4 v10, 0x0

    invoke-virtual {v5, v6, v10}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 268
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DragManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Lcom/android/launcher3/common/drag/DragManager$DragListener;

    .line 269
    .local v44, "listener":Lcom/android/launcher3/common/drag/DragManager$DragListener;
    move-object/from16 v0, v44

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move/from16 v3, p6

    invoke-interface {v0, v1, v2, v3}, Lcom/android/launcher3/common/drag/DragManager$DragListener;->onDragStart(Lcom/android/launcher3/common/drag/DragSource;Ljava/lang/Object;I)Z

    goto :goto_0

    .line 272
    .end local v44    # "listener":Lcom/android/launcher3/common/drag/DragManager$DragListener;
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    div-int/lit8 v33, v5, 0x2

    .line 273
    .local v33, "emptyCellOffsetX":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int/lit8 v34, v5, 0x2

    .line 275
    .local v34, "emptyCellOffsetY":I
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher3/common/drag/DragManager;->mMotionDownX:I

    sub-int v7, v5, p2

    .line 276
    .local v7, "registrationX":I
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher3/common/drag/DragManager;->mMotionDownY:I

    sub-int v8, v5, p3

    .line 278
    .local v8, "registrationY":I
    if-nez p8, :cond_a

    const/16 v31, 0x0

    .line 279
    .local v31, "dragRegionLeft":I
    :goto_1
    if-nez p8, :cond_b

    const/16 v32, 0x0

    .line 281
    .local v32, "dragRegionTop":I
    :goto_2
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/launcher3/common/drag/DragManager;->mDragging:Z

    .line 283
    new-instance v5, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    invoke-direct {v5}, Lcom/android/launcher3/common/drag/DropTarget$DragObject;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .line 285
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragComplete:Z

    .line 286
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    if-eqz p12, :cond_c

    move/from16 v5, v33

    :goto_3
    iput v5, v6, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->xOffset:I

    .line 288
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    if-eqz p12, :cond_d

    move/from16 v5, v34

    :goto_4
    iput v5, v6, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->yOffset:I

    .line 291
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    move-object/from16 v0, p4

    iput-object v0, v5, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/common/drag/DragSource;

    .line 292
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    move-object/from16 v0, p5

    iput-object v0, v5, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    .line 294
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    new-instance v4, Lcom/android/launcher3/common/drag/DragView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DragManager;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 295
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    move-object/from16 v6, p1

    move/from16 v13, p9

    invoke-direct/range {v4 .. v13}, Lcom/android/launcher3/common/drag/DragView;-><init>(Lcom/android/launcher3/Launcher;Landroid/graphics/Bitmap;IIIIIIF)V

    iput-object v4, v14, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    .line 296
    .local v4, "dragView":Lcom/android/launcher3/common/drag/DragView;
    move-object/from16 v0, p10

    invoke-virtual {v4, v0}, Lcom/android/launcher3/common/drag/DragView;->setDragOutline(Landroid/graphics/drawable/Drawable;)V

    .line 298
    if-eqz p7, :cond_3

    .line 299
    new-instance v5, Landroid/graphics/Point;

    move-object/from16 v0, p7

    invoke-direct {v5, v0}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    invoke-virtual {v4, v5}, Lcom/android/launcher3/common/drag/DragView;->setDragVisualizeOffset(Landroid/graphics/Point;)V

    .line 301
    :cond_3
    if-eqz p8, :cond_4

    .line 302
    new-instance v5, Landroid/graphics/Rect;

    move-object/from16 v0, p8

    invoke-direct {v5, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v4, v5}, Lcom/android/launcher3/common/drag/DragView;->setDragRegion(Landroid/graphics/Rect;)V

    .line 305
    :cond_4
    if-eqz p12, :cond_5

    .line 306
    sub-int v5, v7, v33

    sub-int v6, v8, v34

    invoke-virtual {v4, v5, v6}, Lcom/android/launcher3/common/drag/DragView;->setTargetOffset(II)V

    .line 309
    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DragManager;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    if-eqz v5, :cond_17

    .line 310
    new-instance v21, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DragManager;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v5}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->getCheckedAppsViewList()Ljava/util/ArrayList;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 311
    .local v21, "appsViewList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object/from16 v0, p5

    instance-of v5, v0, Lcom/android/launcher3/folder/FolderInfo;

    if-nez v5, :cond_6

    move-object/from16 v0, p5

    instance-of v5, v0, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v5, :cond_17

    :cond_6
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_17

    .line 312
    new-instance v37, Ljava/util/ArrayList;

    invoke-direct/range {v37 .. v37}, Ljava/util/ArrayList;-><init>()V

    .line 313
    .local v37, "extraDragObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    new-instance v39, Ljava/util/ArrayList;

    invoke-direct/range {v39 .. v39}, Ljava/util/ArrayList;-><init>()V

    .line 315
    .local v39, "extraDragSources":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DragSource;>;"
    const/16 v40, 0x0

    .line 316
    .local v40, "extraOrder":I
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v54

    :cond_7
    :goto_5
    invoke-interface/range {v54 .. v54}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-interface/range {v54 .. v54}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/view/View;

    .line 317
    .local v22, "checkedApp":Landroid/view/View;
    new-instance v29, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    invoke-direct/range {v29 .. v29}, Lcom/android/launcher3/common/drag/DropTarget$DragObject;-><init>()V

    .line 318
    .local v29, "dragObject":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DragManager;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->getCheckedAppDragSource(I)Lcom/android/launcher3/common/drag/DragSource;

    move-result-object v5

    move-object/from16 v0, v29

    iput-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/common/drag/DragSource;

    .line 319
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v0, v29

    iput-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    .line 321
    const/4 v5, 0x2

    new-array v0, v5, [I

    move-object/from16 v52, v0

    .line 322
    .local v52, "tempPt":[I
    new-instance v46, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v5, 0x6

    move-object/from16 v0, v46

    invoke-direct {v0, v5}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 323
    .local v46, "padding":Ljava/util/concurrent/atomic/AtomicInteger;
    const/4 v5, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v46

    invoke-static {v0, v1, v5}, Lcom/android/launcher3/common/drag/DragViewHelper;->createDragBitmap(Landroid/view/View;Ljava/util/concurrent/atomic/AtomicInteger;Z)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 324
    .local v11, "viewBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    .line 325
    .local v16, "bmpWidth":I
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    .line 327
    .local v17, "bmpHeight":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DragManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v5

    move-object/from16 v0, v22

    move-object/from16 v1, v52

    invoke-virtual {v5, v0, v1}, Lcom/android/launcher3/common/view/DragLayer;->getLocationInDragLayer(Landroid/view/View;[I)F

    move-result v18

    .line 328
    .local v18, "checkedAppScale":F
    const/4 v5, 0x0

    aget v5, v52, v5

    int-to-float v5, v5

    move/from16 v0, v16

    int-to-float v6, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getWidth()I

    move-result v10

    int-to-float v10, v10

    mul-float v10, v10, v18

    sub-float/2addr v6, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v6, v10

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v23

    .line 329
    .local v23, "checkedAppX":I
    const/4 v5, 0x1

    aget v5, v52, v5

    int-to-float v5, v5

    move/from16 v0, v17

    int-to-float v6, v0

    move/from16 v0, v17

    int-to-float v10, v0

    mul-float v10, v10, v18

    sub-float/2addr v6, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v6, v10

    sub-float/2addr v5, v6

    .line 330
    invoke-virtual/range {v46 .. v46}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    int-to-float v6, v6

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v6, v10

    sub-float/2addr v5, v6

    .line 329
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v24

    .line 332
    .local v24, "checkedAppY":I
    invoke-virtual {v4}, Lcom/android/launcher3/common/drag/DragView;->getDragRegionWidth()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x3f800000    # 1.0f

    mul-float/2addr v5, v6

    .line 333
    invoke-virtual/range {v46 .. v46}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    sub-int v6, v16, v6

    int-to-float v6, v6

    div-float v19, v5, v6

    .line 334
    .local v19, "scaleFactor":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sub-int v5, v5, v16

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v6, v19, v6

    mul-float/2addr v5, v6

    float-to-int v0, v5

    move/from16 v48, v0

    .line 336
    .local v48, "scaleValue":I
    invoke-virtual {v4}, Lcom/android/launcher3/common/drag/DragView;->getDragRegionLeft()I

    move-result v5

    invoke-virtual/range {v46 .. v46}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    sub-int v27, v5, v6

    .line 337
    .local v27, "deltaX":I
    invoke-virtual {v4}, Lcom/android/launcher3/common/drag/DragView;->getDragRegionTop()I

    move-result v5

    invoke-virtual/range {v46 .. v46}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    sub-int v28, v5, v6

    .line 339
    .local v28, "deltaY":I
    const/16 v47, 0x0

    .line 340
    .local v47, "pageDeltaX":I
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 341
    .local v43, "itemInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    move-object/from16 v0, v43

    iget-wide v12, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v14, 0x0

    cmp-long v5, v12, v14

    if-lez v5, :cond_8

    move-object/from16 v0, v29

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/common/drag/DragSource;

    if-eqz v5, :cond_8

    .line 342
    move-object/from16 v0, v29

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/common/drag/DragSource;

    move-object/from16 v0, v43

    invoke-interface {v5, v0}, Lcom/android/launcher3/common/drag/DragSource;->getPageIndexForDragView(Lcom/android/launcher3/common/base/item/ItemInfo;)I

    move-result v51

    .line 343
    .local v51, "targetPage":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v5, v5, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/common/drag/DragSource;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Lcom/android/launcher3/common/drag/DragSource;->getPageIndexForDragView(Lcom/android/launcher3/common/base/item/ItemInfo;)I

    move-result v45

    .line 344
    .local v45, "nextPage":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DragManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v0, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v53, v0

    .line 345
    .local v53, "widthPixels":I
    sub-int v5, v45, v51

    mul-int v47, v5, v53

    .line 348
    .end local v45    # "nextPage":I
    .end local v51    # "targetPage":I
    .end local v53    # "widthPixels":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DragManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0900fe

    .line 349
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v41

    .line 350
    .local v41, "extraViewOffsetDelta":I
    add-int/lit8 v40, v40, 0x1

    .line 351
    new-instance v9, Lcom/android/launcher3/common/drag/DragView;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher3/common/drag/DragManager;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher3/common/drag/DragManager;->mMotionDownX:I

    sub-int v5, v5, v23

    mul-int v6, v41, v40

    add-int v6, v6, v27

    add-int v6, v6, v48

    sub-int/2addr v5, v6

    add-int v12, v5, v47

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher3/common/drag/DragManager;->mMotionDownY:I

    sub-int v5, v5, v24

    mul-int v6, v41, v40

    add-int v6, v6, v28

    add-int v6, v6, v48

    sub-int v13, v5, v6

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v20, 0x1

    invoke-direct/range {v9 .. v20}, Lcom/android/launcher3/common/drag/DragView;-><init>(Lcom/android/launcher3/Launcher;Landroid/graphics/Bitmap;IIIIIIFFZ)V

    move-object/from16 v0, v29

    iput-object v9, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    .line 357
    .local v9, "extraDragView":Lcom/android/launcher3/common/drag/DragView;
    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Lcom/android/launcher3/common/drag/DragView;->setSourceView(Landroid/view/View;)V

    .line 358
    if-eqz p12, :cond_e

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher3/common/drag/DragManager;->mMotionDownX:I

    sub-int v5, v5, v23

    add-int v5, v5, v47

    sub-int v5, v5, v33

    move v6, v5

    :goto_6
    if-eqz p12, :cond_f

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher3/common/drag/DragManager;->mMotionDownY:I

    sub-int v5, v5, v24

    sub-int v5, v5, v34

    :goto_7
    invoke-virtual {v9, v6, v5}, Lcom/android/launcher3/common/drag/DragView;->setTargetOffset(II)V

    .line 363
    move/from16 v0, v28

    invoke-virtual {v9, v0}, Lcom/android/launcher3/common/drag/DragView;->setTopDelta(I)V

    .line 364
    if-eqz p7, :cond_9

    .line 365
    new-instance v5, Landroid/graphics/Point;

    move-object/from16 v0, p7

    invoke-direct {v5, v0}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    invoke-virtual {v9, v5}, Lcom/android/launcher3/common/drag/DragView;->setDragVisualizeOffset(Landroid/graphics/Point;)V

    .line 368
    :cond_9
    move-object/from16 v0, v37

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 369
    move-object/from16 v0, v29

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/common/drag/DragSource;

    move-object/from16 v0, v39

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 370
    move-object/from16 v0, v29

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/common/drag/DragSource;

    move-object/from16 v0, v39

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 278
    .end local v4    # "dragView":Lcom/android/launcher3/common/drag/DragView;
    .end local v9    # "extraDragView":Lcom/android/launcher3/common/drag/DragView;
    .end local v11    # "viewBitmap":Landroid/graphics/Bitmap;
    .end local v16    # "bmpWidth":I
    .end local v17    # "bmpHeight":I
    .end local v18    # "checkedAppScale":F
    .end local v19    # "scaleFactor":F
    .end local v21    # "appsViewList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v22    # "checkedApp":Landroid/view/View;
    .end local v23    # "checkedAppX":I
    .end local v24    # "checkedAppY":I
    .end local v27    # "deltaX":I
    .end local v28    # "deltaY":I
    .end local v29    # "dragObject":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .end local v31    # "dragRegionLeft":I
    .end local v32    # "dragRegionTop":I
    .end local v37    # "extraDragObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    .end local v39    # "extraDragSources":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DragSource;>;"
    .end local v40    # "extraOrder":I
    .end local v41    # "extraViewOffsetDelta":I
    .end local v43    # "itemInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v46    # "padding":Ljava/util/concurrent/atomic/AtomicInteger;
    .end local v47    # "pageDeltaX":I
    .end local v48    # "scaleValue":I
    .end local v52    # "tempPt":[I
    :cond_a
    move-object/from16 v0, p8

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v31, v0

    goto/16 :goto_1

    .line 279
    .restart local v31    # "dragRegionLeft":I
    :cond_b
    move-object/from16 v0, p8

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v32, v0

    goto/16 :goto_2

    .line 286
    .restart local v32    # "dragRegionTop":I
    :cond_c
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher3/common/drag/DragManager;->mMotionDownX:I

    add-int v10, p2, v31

    sub-int/2addr v5, v10

    goto/16 :goto_3

    .line 288
    :cond_d
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher3/common/drag/DragManager;->mMotionDownY:I

    add-int v10, p3, v32

    sub-int/2addr v5, v10

    goto/16 :goto_4

    .line 358
    .restart local v4    # "dragView":Lcom/android/launcher3/common/drag/DragView;
    .restart local v9    # "extraDragView":Lcom/android/launcher3/common/drag/DragView;
    .restart local v11    # "viewBitmap":Landroid/graphics/Bitmap;
    .restart local v16    # "bmpWidth":I
    .restart local v17    # "bmpHeight":I
    .restart local v18    # "checkedAppScale":F
    .restart local v19    # "scaleFactor":F
    .restart local v21    # "appsViewList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v22    # "checkedApp":Landroid/view/View;
    .restart local v23    # "checkedAppX":I
    .restart local v24    # "checkedAppY":I
    .restart local v27    # "deltaX":I
    .restart local v28    # "deltaY":I
    .restart local v29    # "dragObject":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .restart local v37    # "extraDragObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    .restart local v39    # "extraDragSources":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DragSource;>;"
    .restart local v40    # "extraOrder":I
    .restart local v41    # "extraViewOffsetDelta":I
    .restart local v43    # "itemInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    .restart local v46    # "padding":Ljava/util/concurrent/atomic/AtomicInteger;
    .restart local v47    # "pageDeltaX":I
    .restart local v48    # "scaleValue":I
    .restart local v52    # "tempPt":[I
    :cond_e
    sub-int v5, p2, v23

    add-int v5, v5, v47

    move v6, v5

    goto :goto_6

    :cond_f
    sub-int v5, p3, v24

    goto :goto_7

    .line 374
    .end local v9    # "extraDragView":Lcom/android/launcher3/common/drag/DragView;
    .end local v11    # "viewBitmap":Landroid/graphics/Bitmap;
    .end local v16    # "bmpWidth":I
    .end local v17    # "bmpHeight":I
    .end local v18    # "checkedAppScale":F
    .end local v19    # "scaleFactor":F
    .end local v22    # "checkedApp":Landroid/view/View;
    .end local v23    # "checkedAppX":I
    .end local v24    # "checkedAppY":I
    .end local v27    # "deltaX":I
    .end local v28    # "deltaY":I
    .end local v29    # "dragObject":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .end local v41    # "extraViewOffsetDelta":I
    .end local v43    # "itemInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v46    # "padding":Ljava/util/concurrent/atomic/AtomicInteger;
    .end local v47    # "pageDeltaX":I
    .end local v48    # "scaleValue":I
    .end local v52    # "tempPt":[I
    :cond_10
    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_17

    .line 375
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    move-object/from16 v0, v37

    iput-object v0, v5, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    .line 376
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    move-object/from16 v0, v39

    iput-object v0, v5, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragSourceList:Ljava/util/ArrayList;

    .line 378
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v5, v5, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v42, v5, -0x1

    .local v42, "i":I
    :goto_8
    if-ltz v42, :cond_12

    .line 379
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v5, v5, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    move/from16 v0, v42

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .line 380
    .local v36, "extraDragObject":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    move-object/from16 v0, v36

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    if-eqz v5, :cond_11

    .line 381
    move-object/from16 v0, v36

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher3/common/drag/DragManager;->mMotionDownX:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/launcher3/common/drag/DragManager;->mMotionDownY:I

    invoke-virtual {v5, v6, v10}, Lcom/android/launcher3/common/drag/DragView;->show(II)V

    .line 378
    :cond_11
    add-int/lit8 v42, v42, -0x1

    goto :goto_8

    .line 385
    .end local v36    # "extraDragObject":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    :cond_12
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v5, v5, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragSourceList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_13
    :goto_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_17

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lcom/android/launcher3/common/drag/DragSource;

    .line 386
    .local v38, "extraDragSource":Lcom/android/launcher3/common/drag/DragSource;
    new-instance v50, Ljava/util/ArrayList;

    invoke-direct/range {v50 .. v50}, Ljava/util/ArrayList;-><init>()V

    .line 387
    .local v50, "targetExtraDragObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v5, v5, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v5, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget v0, v5, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    move/from16 v30, v0

    .line 388
    .local v30, "dragObjectRank":I
    const/16 v25, 0x0

    .line 389
    .local v25, "count":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v5, v5, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_14
    :goto_a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_16

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .line 390
    .local v26, "d":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    move-object/from16 v0, v26

    iget-object v10, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/common/drag/DragSource;

    move-object/from16 v0, v38

    invoke-virtual {v0, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_15

    .line 391
    move-object/from16 v0, v50

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 393
    :cond_15
    move-object/from16 v0, v38

    instance-of v10, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;

    if-eqz v10, :cond_14

    .line 394
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/common/drag/DragManager;->countItemsBelowThanDraggedItemRank(Lcom/android/launcher3/common/drag/DropTarget$DragObject;I)I

    move-result v25

    goto :goto_a

    .line 397
    .end local v26    # "d":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    :cond_16
    sub-int v35, v30, v25

    .line 398
    .local v35, "emptyRank":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v5, v5, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v5, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-wide v12, v5, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    long-to-int v0, v12

    move/from16 v49, v0

    .line 399
    .local v49, "screenId":I
    move-object/from16 v0, v38

    move-object/from16 v1, v50

    invoke-interface {v0, v1}, Lcom/android/launcher3/common/drag/DragSource;->onExtraObjectDragged(Ljava/util/ArrayList;)V

    .line 400
    move-object/from16 v0, v38

    instance-of v5, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;

    if-eqz v5, :cond_13

    .line 401
    check-cast v38, Lcom/android/launcher3/allapps/controller/AppsDragController;

    .end local v38    # "extraDragSource":Lcom/android/launcher3/common/drag/DragSource;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    move-object/from16 v0, v38

    move/from16 v1, v35

    move/from16 v2, v30

    move/from16 v3, v49

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/android/launcher3/allapps/controller/AppsDragController;->onAdjustDraggedObjectPosition(Lcom/android/launcher3/common/drag/DropTarget$DragObject;III)V

    goto/16 :goto_9

    .line 409
    .end local v21    # "appsViewList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v25    # "count":I
    .end local v30    # "dragObjectRank":I
    .end local v35    # "emptyRank":I
    .end local v37    # "extraDragObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    .end local v39    # "extraDragSources":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DragSource;>;"
    .end local v40    # "extraOrder":I
    .end local v42    # "i":I
    .end local v49    # "screenId":I
    .end local v50    # "targetExtraDragObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    :cond_17
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher3/common/drag/DragManager;->mMotionDownX:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher3/common/drag/DragManager;->mMotionDownY:I

    invoke-virtual {v4, v5, v6}, Lcom/android/launcher3/common/drag/DragView;->show(II)V

    .line 411
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportQuickOption()Z

    move-result v5

    if-eqz v5, :cond_18

    if-eqz p11, :cond_18

    .line 412
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/launcher3/common/drag/DragManager;->createQuickOptionView(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V

    .line 415
    :cond_18
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DragManager;->mMoveStageAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    if-eqz v5, :cond_1a

    if-eqz p4, :cond_1a

    .line 416
    invoke-interface/range {p4 .. p4}, Lcom/android/launcher3/common/drag/DragSource;->getDragSourceType()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_19

    invoke-interface/range {p4 .. p4}, Lcom/android/launcher3/common/drag/DragSource;->getDragSourceType()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_1a

    .line 417
    :cond_19
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DragManager;->mMoveStageAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v5}, Lcom/android/launcher3/util/alarm/Alarm;->cancelAlarm()V

    .line 418
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DragManager;->mMoveStageAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    const-wide/16 v12, 0x3e8

    invoke-virtual {v5, v12, v13}, Lcom/android/launcher3/util/alarm/Alarm;->setAlarm(J)V

    .line 419
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DragManager;->mMoveStageAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    new-instance v6, Lcom/android/launcher3/common/drag/DragManager$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v6, v0, v1}, Lcom/android/launcher3/common/drag/DragManager$1;-><init>(Lcom/android/launcher3/common/drag/DragManager;Lcom/android/launcher3/common/drag/DragSource;)V

    invoke-virtual {v5, v6}, Lcom/android/launcher3/util/alarm/Alarm;->setOnAlarmListener(Lcom/android/launcher3/util/alarm/OnAlarmListener;)V

    .line 432
    :cond_1a
    return-object v4
.end method

.method public startDrag(Landroid/view/View;Landroid/graphics/Bitmap;Lcom/android/launcher3/common/drag/DragSource;Ljava/lang/Object;Landroid/graphics/Rect;IFLandroid/graphics/drawable/Drawable;Z)V
    .locals 17
    .param p1, "v"    # Landroid/view/View;
    .param p2, "bmp"    # Landroid/graphics/Bitmap;
    .param p3, "source"    # Lcom/android/launcher3/common/drag/DragSource;
    .param p4, "dragInfo"    # Ljava/lang/Object;
    .param p5, "viewImageBounds"    # Landroid/graphics/Rect;
    .param p6, "dragAction"    # I
    .param p7, "initialDragViewScale"    # F
    .param p8, "outline"    # Landroid/graphics/drawable/Drawable;
    .param p9, "alignCenter"    # Z

    .prologue
    .line 216
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/common/drag/DragManager;->mCoordinatesTemp:[I

    .line 217
    .local v14, "loc":[I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/common/drag/DragManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v14}, Lcom/android/launcher3/common/view/DragLayer;->getLocationInDragLayer(Landroid/view/View;[I)F

    .line 219
    if-eqz p9, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v15, v1, 0x2

    .line 220
    .local v15, "offsetX":I
    :goto_0
    if-eqz p9, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v16, v1, 0x2

    .line 222
    .local v16, "offsetY":I
    :goto_1
    const/4 v1, 0x0

    aget v1, v14, v1

    move-object/from16 v0, p5

    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    add-int/2addr v1, v15

    .line 223
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, p7

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v2, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v2, v5

    float-to-int v2, v2

    add-int v3, v1, v2

    .line 224
    .local v3, "dragLayerX":I
    const/4 v1, 0x1

    aget v1, v14, v1

    move-object/from16 v0, p5

    iget v2, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    add-int v1, v1, v16

    .line 225
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, p7

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v2, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v2, v5

    float-to-int v2, v2

    add-int v4, v1, v2

    .line 227
    .local v4, "dragLayerY":I
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p6

    move/from16 v10, p7

    move-object/from16 v11, p8

    invoke-virtual/range {v1 .. v13}, Lcom/android/launcher3/common/drag/DragManager;->startDrag(Landroid/graphics/Bitmap;IILcom/android/launcher3/common/drag/DragSource;Ljava/lang/Object;ILandroid/graphics/Point;Landroid/graphics/Rect;FLandroid/graphics/drawable/Drawable;ZZ)Lcom/android/launcher3/common/drag/DragView;

    .line 230
    if-nez p6, :cond_0

    .line 231
    const/16 v1, 0x8

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 233
    :cond_0
    return-void

    .line 219
    .end local v3    # "dragLayerX":I
    .end local v4    # "dragLayerY":I
    .end local v15    # "offsetX":I
    .end local v16    # "offsetY":I
    :cond_1
    const/4 v15, 0x0

    goto :goto_0

    .line 220
    .restart local v15    # "offsetX":I
    :cond_2
    const/16 v16, 0x0

    goto :goto_1
.end method
