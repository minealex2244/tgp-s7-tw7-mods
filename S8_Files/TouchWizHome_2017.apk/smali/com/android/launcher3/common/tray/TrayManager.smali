.class public Lcom/android/launcher3/common/tray/TrayManager;
.super Ljava/lang/Object;
.source "TrayManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;,
        Lcom/android/launcher3/common/tray/TrayManager$TrayEvent;,
        Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;
    }
.end annotation


# static fields
.field private static final BLUR_INTERVAL:I = 0x2

.field private static final BLUR_MAX_AMOUNT:F = 0.3f

.field private static final BLUR_VALID_DECIMAL_PLACE:I = 0x2

.field public static final DIRECTION_BOTTOM:I = 0x1

.field public static final DIRECTION_NONE:I = -0x1

.field public static final DIRECTION_TOP:I = 0x0

.field private static final FLING_THRESHOLD_VELOCITY:I = 0x1f4

.field private static final INVALID_POINTER:I = -0x1

.field public static final KEY_SUPPRESS_CHANGE_STAGE_ONCE:Ljava/lang/String; = "KEY_SUPPRESS_CHANGE_STAGE_ONCE"

.field private static final TAG:Ljava/lang/String; = "TrayManager"

.field public static final TRANSITION_0_CLEAR_BORDER:I = 0x0

.field public static final TRANSITION_1_CLEAR_BORDER_WITH_SEARCHBAR:I = 0x1

.field public static final TRANSITION_2_HOME_APPS_FADE_IN_OUT:I = 0x2

.field public static final TRANSITION_3_HOME_APPS_SCALE_AND_FADE:I = 0x3

.field public static final TRANSITION_ADAPTIVE_BLUR:Z = true

.field public static final TRANSITION_LOOPING:Z = true

.field public static final TRANSITION_TYPE:I = 0x3


# instance fields
.field private mActivePointerId:I

.field private mCurrentChangedOffsetY:F

.field private mDirection:I

.field private mDisallowCallBacksVisibity:Z

.field private mDragManager:Lcom/android/launcher3/common/drag/DragManager;

.field private mFakeOvergroundView:Lcom/android/launcher3/common/tray/FakeView;

.field private mFakeUndergroundView:Lcom/android/launcher3/common/tray/FakeView;

.field private mFakeViewAnimation:Lcom/android/launcher3/common/tray/FakeViewAnimation;

.field private mFakeViewAnimationTime:I

.field private mFakeViewDragEventListener:Lcom/android/launcher3/common/tray/FakeView$DragEventCallback;

.field private mFakeViewExtraMoveRange:I

.field private mFakeViewHeightToShow:I

.field private mFakeViewMaxHeight:I

.field private mFakeViewToBeShownOnChangeStage:Lcom/android/launcher3/common/tray/FakeView;

.field private mFakeViewTranslationListener:Lcom/android/launcher3/common/tray/FakeView$TranslationCallback;

.field private mFirstDownY:F

.field private mFlingThresholdVelocity:I

.field private mHighlightHeight:I

.field private mHightlightView:Landroid/view/View;

.field private mIsRunningSwipeAnimation:Z

.field private mLastDownX:F

.field private mLastDownY:F

.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private mMaximumVelocity:I

.field private mMoved:Z

.field private mOffset:F

.field private mShadowDarkBgColor:I

.field private mShadowHeight:I

.field private mShadowView:Landroid/view/View;

.field private mStartOffsetY:F

.field private mStartPoint:Landroid/graphics/Point;

.field private mSwipeDistanceRatio:F

.field private mTouchSlop:I

.field private mTransferPanelBottomView:Lcom/android/launcher3/common/tray/FakeView;

.field private mTransferPanelTopView:Lcom/android/launcher3/common/tray/FakeView;

.field private mTrayBorderTopLimit:I

.field private mTrayEventCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;",
            ">;"
        }
    .end annotation
.end field

.field private mTrayHeight:I

.field private mTraySlipY:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput v2, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTrayHeight:I

    .line 110
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mSwipeDistanceRatio:F

    .line 112
    iput v1, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFirstDownY:F

    iput v1, p0, Lcom/android/launcher3/common/tray/TrayManager;->mLastDownX:F

    iput v1, p0, Lcom/android/launcher3/common/tray/TrayManager;->mLastDownY:F

    .line 113
    iput v1, p0, Lcom/android/launcher3/common/tray/TrayManager;->mOffset:F

    .line 114
    iput v1, p0, Lcom/android/launcher3/common/tray/TrayManager;->mCurrentChangedOffsetY:F

    .line 115
    iput v1, p0, Lcom/android/launcher3/common/tray/TrayManager;->mStartOffsetY:F

    .line 116
    iput-boolean v2, p0, Lcom/android/launcher3/common/tray/TrayManager;->mMoved:Z

    .line 117
    iput v2, p0, Lcom/android/launcher3/common/tray/TrayManager;->mDirection:I

    .line 118
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mActivePointerId:I

    .line 167
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTrayEventCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 168
    new-instance v0, Lcom/android/launcher3/common/tray/TrayManager$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/common/tray/TrayManager$1;-><init>(Lcom/android/launcher3/common/tray/TrayManager;)V

    iput-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeViewTranslationListener:Lcom/android/launcher3/common/tray/FakeView$TranslationCallback;

    .line 186
    new-instance v0, Lcom/android/launcher3/common/tray/TrayManager$2;

    invoke-direct {v0, p0}, Lcom/android/launcher3/common/tray/TrayManager$2;-><init>(Lcom/android/launcher3/common/tray/TrayManager;)V

    iput-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeViewDragEventListener:Lcom/android/launcher3/common/tray/FakeView$DragEventCallback;

    .line 212
    new-instance v0, Lcom/android/launcher3/common/tray/FakeViewAnimation;

    invoke-direct {v0}, Lcom/android/launcher3/common/tray/FakeViewAnimation;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeViewAnimation:Lcom/android/launcher3/common/tray/FakeViewAnimation;

    .line 213
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/common/tray/TrayManager;)Lcom/android/launcher3/common/tray/FakeView;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/tray/TrayManager;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeViewToBeShownOnChangeStage:Lcom/android/launcher3/common/tray/FakeView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher3/common/tray/TrayManager;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/tray/TrayManager;

    .prologue
    .line 50
    iget v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mCurrentChangedOffsetY:F

    return v0
.end method

.method static synthetic access$200(Lcom/android/launcher3/common/tray/TrayManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/tray/TrayManager;

    .prologue
    .line 50
    iget v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTrayHeight:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/launcher3/common/tray/TrayManager;Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/common/tray/TrayManager;
    .param p1, "x1"    # Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/common/tray/TrayManager;->changeStageWithDrag(Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;II)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/launcher3/common/tray/TrayManager;Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;)Lcom/android/launcher3/common/drag/DropTarget;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/tray/TrayManager;
    .param p1, "x1"    # Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/launcher3/common/tray/TrayManager;->findDropTarget(Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;)Lcom/android/launcher3/common/drag/DropTarget;

    move-result-object v0

    return-object v0
.end method

.method private acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 912
    iget-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 913
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 915
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 916
    return-void
.end method

.method private animateFakeView(Landroid/view/View;IZ)V
    .locals 2
    .param p1, "targetView"    # Landroid/view/View;
    .param p2, "toTranslationY"    # I
    .param p3, "toBeShown"    # Z

    .prologue
    .line 586
    iget-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeViewAnimation:Lcom/android/launcher3/common/tray/FakeViewAnimation;

    iget v1, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeViewAnimationTime:I

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/android/launcher3/common/tray/FakeViewAnimation;->animate(Landroid/view/View;IZI)V

    .line 587
    return-void
.end method

.method private cancelFakeViewAnimation(Landroid/view/View;)V
    .locals 1
    .param p1, "targetView"    # Landroid/view/View;

    .prologue
    .line 590
    iget-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeViewAnimation:Lcom/android/launcher3/common/tray/FakeViewAnimation;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/tray/FakeViewAnimation;->cancel(Landroid/view/View;)V

    .line 591
    return-void
.end method

.method private changeStageWithDrag(Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;II)V
    .locals 4
    .param p1, "targetLevel"    # Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;
    .param p2, "direction"    # I
    .param p3, "dragSourceType"    # I

    .prologue
    .line 972
    iget-object v2, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTrayEventCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v2, :cond_2

    .line 973
    sget-object v2, Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;->Overground:Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;

    if-ne p1, v2, :cond_0

    .line 974
    invoke-direct {p0, p2, p3}, Lcom/android/launcher3/common/tray/TrayManager;->loggingDirection(II)V

    .line 977
    :cond_0
    new-instance v1, Lcom/android/launcher3/common/tray/TrayManager$TrayEvent;

    const/16 v2, 0xa

    invoke-virtual {p1}, Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;->ordinal()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {v1, v2, v3}, Lcom/android/launcher3/common/tray/TrayManager$TrayEvent;-><init>(IF)V

    .line 978
    .local v1, "trayEvent":Lcom/android/launcher3/common/tray/TrayManager$TrayEvent;
    iget-object v2, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTrayEventCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;

    .line 979
    .local v0, "cb":Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;
    invoke-interface {v0, v1}, Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;->onReceiveTrayEvent(Lcom/android/launcher3/common/tray/TrayManager$TrayEvent;)V

    goto :goto_0

    .line 982
    .end local v0    # "cb":Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/launcher3/common/tray/TrayManager;->prepareFakeViewOnChangeStageWithDrag(Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;)V

    .line 984
    .end local v1    # "trayEvent":Lcom/android/launcher3/common/tray/TrayManager$TrayEvent;
    :cond_2
    return-void
.end method

.method private determineStageChange(Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;IF)Z
    .locals 6
    .param p1, "sender"    # Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;
    .param p2, "velocity"    # I
    .param p3, "offset"    # F

    .prologue
    .line 940
    if-eqz p1, :cond_0

    iget v3, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFirstDownY:F

    iget v4, p0, Lcom/android/launcher3/common/tray/TrayManager;->mLastDownY:F

    iget v5, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFlingThresholdVelocity:I

    move-object v0, p1

    move v1, p2

    move v2, p3

    invoke-interface/range {v0 .. v5}, Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;->determineStageChange(IFFFI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 941
    const/4 v0, 0x1

    .line 943
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private findDropTarget(Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;)Lcom/android/launcher3/common/drag/DropTarget;
    .locals 4
    .param p1, "targetLevel"    # Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;

    .prologue
    .line 1000
    const/4 v1, 0x0

    .line 1001
    .local v1, "dropTarget":Lcom/android/launcher3/common/drag/DropTarget;
    iget-object v2, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTrayEventCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v2, :cond_1

    .line 1002
    iget-object v2, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTrayEventCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;

    .line 1003
    .local v0, "cb":Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;
    invoke-interface {v0}, Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;->getTrayLevel()Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1004
    invoke-interface {v0}, Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;->getDropTarget()Lcom/android/launcher3/common/drag/DropTarget;

    move-result-object v1

    .line 1009
    .end local v0    # "cb":Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;
    :cond_1
    return-object v1
.end method

.method private getOffsetLimit(Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;I)Landroid/graphics/Rect;
    .locals 3
    .param p1, "senderLevel"    # Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;
    .param p2, "direction"    # I

    .prologue
    const/4 v2, 0x0

    .line 896
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 897
    .local v0, "limit":Landroid/graphics/Rect;
    if-lez p2, :cond_0

    sget-object v1, Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;->Overground:Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;

    .line 898
    invoke-virtual {v1, p1}, Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    if-gez p2, :cond_2

    sget-object v1, Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;->Underground:Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;

    .line 899
    invoke-virtual {v1, p1}, Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 900
    :cond_1
    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 901
    iget v1, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTraySlipY:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 908
    :goto_0
    return-object v0

    .line 904
    :cond_2
    iget v1, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTraySlipY:I

    neg-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 906
    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0
.end method

.method private getPackageAndTitleString(Lcom/android/launcher3/common/base/item/ItemInfo;)Ljava/lang/String;
    .locals 3
    .param p1, "info"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 1027
    const-string v0, ""

    .line 1029
    .local v0, "result":Ljava/lang/String;
    instance-of v1, p1, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v1, :cond_1

    move-object v1, p1

    .line 1030
    check-cast v1, Lcom/android/launcher3/common/base/item/IconInfo;

    iget-object v1, v1, Lcom/android/launcher3/common/base/item/IconInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    .line 1031
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v1, p1

    check-cast v1, Lcom/android/launcher3/common/base/item/IconInfo;

    iget-object v1, v1, Lcom/android/launcher3/common/base/item/IconInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1037
    :cond_0
    :goto_0
    return-object v0

    .line 1033
    :cond_1
    instance-of v1, p1, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v1, :cond_0

    .line 1034
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private handleFakeViews(FI)V
    .locals 6
    .param p1, "offsetY"    # F
    .param p2, "trayHeight"    # I

    .prologue
    const/16 v5, 0x8

    .line 563
    int-to-float v3, p2

    add-float v0, p1, v3

    .line 564
    .local v0, "borderY":F
    int-to-float v3, p2

    cmpl-float v3, v0, v3

    if-lez v3, :cond_0

    .line 565
    int-to-float v0, p2

    .line 568
    :cond_0
    iget v3, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTraySlipY:I

    sub-int v1, p2, v3

    .line 570
    .local v1, "overgroundLimit":I
    iget v3, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeViewMaxHeight:I

    sub-int v2, p2, v3

    .line 572
    .local v2, "undergroundLimit":I
    iget-object v3, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeOvergroundView:Lcom/android/launcher3/common/tray/FakeView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeOvergroundView:Lcom/android/launcher3/common/tray/FakeView;

    invoke-virtual {v3}, Lcom/android/launcher3/common/tray/FakeView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    int-to-float v3, v1

    cmpl-float v3, v0, v3

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeOvergroundView:Lcom/android/launcher3/common/tray/FakeView;

    iget-object v4, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeViewToBeShownOnChangeStage:Lcom/android/launcher3/common/tray/FakeView;

    .line 573
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 574
    iget-object v3, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeOvergroundView:Lcom/android/launcher3/common/tray/FakeView;

    invoke-direct {p0, v3}, Lcom/android/launcher3/common/tray/TrayManager;->cancelFakeViewAnimation(Landroid/view/View;)V

    .line 575
    iget-object v3, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeOvergroundView:Lcom/android/launcher3/common/tray/FakeView;

    invoke-virtual {v3, v5}, Lcom/android/launcher3/common/tray/FakeView;->setVisibility(I)V

    .line 578
    :cond_1
    iget-object v3, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeUndergroundView:Lcom/android/launcher3/common/tray/FakeView;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeUndergroundView:Lcom/android/launcher3/common/tray/FakeView;

    invoke-virtual {v3}, Lcom/android/launcher3/common/tray/FakeView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    int-to-float v3, v2

    cmpg-float v3, v0, v3

    if-gez v3, :cond_2

    iget-object v3, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeUndergroundView:Lcom/android/launcher3/common/tray/FakeView;

    iget-object v4, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeViewToBeShownOnChangeStage:Lcom/android/launcher3/common/tray/FakeView;

    .line 579
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 580
    iget-object v3, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeUndergroundView:Lcom/android/launcher3/common/tray/FakeView;

    invoke-direct {p0, v3}, Lcom/android/launcher3/common/tray/TrayManager;->cancelFakeViewAnimation(Landroid/view/View;)V

    .line 581
    iget-object v3, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeUndergroundView:Lcom/android/launcher3/common/tray/FakeView;

    invoke-virtual {v3, v5}, Lcom/android/launcher3/common/tray/FakeView;->setVisibility(I)V

    .line 583
    :cond_2
    return-void
.end method

.method private handleHighlightAndShadow(FI)V
    .locals 0
    .param p1, "offsetY"    # F
    .param p2, "trayHeight"    # I

    .prologue
    .line 511
    return-void
.end method

.method private handleWallpaperBlur(F)V
    .locals 8
    .param p1, "offsetY"    # F

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 626
    iget-boolean v3, p0, Lcom/android/launcher3/common/tray/TrayManager;->mIsRunningSwipeAnimation:Z

    if-nez v3, :cond_0

    .line 628
    invoke-virtual {p0}, Lcom/android/launcher3/common/tray/TrayManager;->getTrayMovingRange()I

    move-result v1

    .line 629
    .local v1, "movingRange":I
    cmpl-float v3, p1, v5

    if-ltz v3, :cond_1

    .line 630
    int-to-float v3, v1

    div-float v2, p1, v3

    .line 634
    .local v2, "value":F
    :goto_0
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 637
    const v3, 0x3e99999a    # 0.3f

    mul-float/2addr v3, v2

    invoke-static {v3, v6, v6}, Lcom/android/launcher3/Utilities;->simplifyDecimalFraction(FII)F

    move-result v0

    .line 639
    .local v0, "blurAmount":F
    cmpl-float v3, v2, v5

    if-lez v3, :cond_2

    const/4 v3, 0x1

    :goto_1
    iget-object v4, p0, Lcom/android/launcher3/common/tray/TrayManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v4

    const-wide/16 v6, 0x0

    invoke-static {v3, v4, v0, v6, v7}, Lcom/android/launcher3/util/BlurUtils;->blurByWindowManager(ZLandroid/view/Window;FJ)V

    .line 644
    .end local v0    # "blurAmount":F
    .end local v1    # "movingRange":I
    .end local v2    # "value":F
    :cond_0
    return-void

    .line 632
    .restart local v1    # "movingRange":I
    :cond_1
    neg-float v3, p1

    int-to-float v4, v1

    div-float v2, v3, v4

    .restart local v2    # "value":F
    goto :goto_0

    .line 639
    .restart local v0    # "blurAmount":F
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private loggingDirection(II)V
    .locals 13
    .param p1, "direction"    # I
    .param p2, "dragSourceType"    # I

    .prologue
    const/4 v4, 0x1

    .line 1041
    iget-object v1, p0, Lcom/android/launcher3/common/tray/TrayManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 1042
    .local v10, "res":Landroid/content/res/Resources;
    const/4 v9, 0x0

    .line 1043
    .local v9, "isMultiSelectMode":Z
    const/4 v11, 0x1

    .line 1044
    .local v11, "value":I
    const/4 v2, 0x0

    .line 1045
    .local v2, "screenID":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1046
    .local v3, "eventID":Ljava/lang/String;
    const-string v6, ""

    .line 1048
    .local v6, "detail":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/launcher3/common/tray/TrayManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDragMgr()Lcom/android/launcher3/common/drag/DragManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/common/drag/DragManager;->getDragObject()Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1049
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v1, p0, Lcom/android/launcher3/common/tray/TrayManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDragMgr()Lcom/android/launcher3/common/drag/DragManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/common/drag/DragManager;->getDragObject()Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-direct {p0, v1}, Lcom/android/launcher3/common/tray/TrayManager;->getPackageAndTitleString(Lcom/android/launcher3/common/base/item/ItemInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1051
    iget-object v1, p0, Lcom/android/launcher3/common/tray/TrayManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDragMgr()Lcom/android/launcher3/common/drag/DragManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/common/drag/DragManager;->getDragObject()Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 1052
    iget-object v1, p0, Lcom/android/launcher3/common/tray/TrayManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDragMgr()Lcom/android/launcher3/common/drag/DragManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/common/drag/DragManager;->getDragObject()Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    move-result-object v1

    iget-object v0, v1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    .line 1053
    .local v0, "extraDragInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 1054
    .local v8, "extraItemsCount":I
    if-lez v8, :cond_1

    move v9, v4

    .line 1055
    :goto_0
    add-int/2addr v11, v8

    .line 1057
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .line 1058
    .local v7, "extraDragObject":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    iget-object v1, v7, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-eqz v1, :cond_0

    .line 1059
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v12, ","

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v1, v7, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-direct {p0, v1}, Lcom/android/launcher3/common/tray/TrayManager;->getPackageAndTitleString(Lcom/android/launcher3/common/base/item/ItemInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 1054
    .end local v7    # "extraDragObject":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    :cond_1
    const/4 v9, 0x0

    goto :goto_0

    .line 1065
    .end local v0    # "extraDragInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    .end local v8    # "extraItemsCount":I
    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/common/tray/TrayManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->isAppsStage()Z

    move-result v1

    if-nez v1, :cond_3

    if-ne p2, v4, :cond_7

    .line 1066
    :cond_3
    if-eqz v9, :cond_6

    const v1, 0x7f080182

    .line 1067
    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1073
    :cond_4
    :goto_2
    packed-switch p1, :pswitch_data_0

    .line 1083
    const v1, 0x7f0800e2

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1086
    :goto_3
    if-eqz v2, :cond_5

    if-eqz v3, :cond_5

    .line 1087
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v1

    int-to-long v4, v11

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 1089
    :cond_5
    return-void

    .line 1067
    :cond_6
    const v1, 0x7f080183

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 1068
    :cond_7
    const/4 v1, 0x4

    if-ne p2, v1, :cond_4

    .line 1069
    if-eqz v9, :cond_8

    const v1, 0x7f08017b

    .line 1070
    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_4
    goto :goto_2

    :cond_8
    const v1, 0x7f08017c

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 1075
    :pswitch_0
    const v1, 0x7f0800e3

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1076
    goto :goto_3

    .line 1079
    :pswitch_1
    const v1, 0x7f0800e1

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1080
    goto :goto_3

    .line 1073
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onSecondaryPointerUp(Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;Landroid/view/MotionEvent;)V
    .locals 11
    .param p1, "sender"    # Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;
    .param p2, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 872
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    const v10, 0xff00

    and-int/2addr v9, v10

    shr-int/lit8 v5, v9, 0x8

    .line 874
    .local v5, "pointerIndex":I
    invoke-virtual {p2, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    .line 875
    .local v4, "pointerId":I
    iget v9, p0, Lcom/android/launcher3/common/tray/TrayManager;->mActivePointerId:I

    if-ne v4, v9, :cond_0

    .line 878
    if-nez v5, :cond_1

    const/4 v1, 0x1

    .line 879
    .local v1, "newPointerIndex":I
    :goto_0
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 880
    .local v2, "newX":F
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    .line 881
    .local v3, "newY":F
    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;->getTrayScale()F

    move-result v8

    .line 882
    .local v8, "viewScale":F
    :goto_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v9

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    mul-float/2addr v10, v8

    sub-float v6, v9, v10

    .line 883
    .local v6, "rawOffsetX":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    mul-float/2addr v10, v8

    sub-float v7, v9, v10

    .line 884
    .local v7, "rawOffsetY":F
    iget v9, p0, Lcom/android/launcher3/common/tray/TrayManager;->mLastDownY:F

    iget v10, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFirstDownY:F

    sub-float v0, v9, v10

    .line 885
    .local v0, "gap":F
    add-float v9, v2, v6

    iput v9, p0, Lcom/android/launcher3/common/tray/TrayManager;->mLastDownX:F

    .line 886
    add-float v9, v3, v7

    iput v9, p0, Lcom/android/launcher3/common/tray/TrayManager;->mLastDownY:F

    .line 887
    iget v9, p0, Lcom/android/launcher3/common/tray/TrayManager;->mLastDownY:F

    sub-float/2addr v9, v0

    iput v9, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFirstDownY:F

    .line 888
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    iput v9, p0, Lcom/android/launcher3/common/tray/TrayManager;->mActivePointerId:I

    .line 889
    iget-object v9, p0, Lcom/android/launcher3/common/tray/TrayManager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v9, :cond_0

    .line 890
    iget-object v9, p0, Lcom/android/launcher3/common/tray/TrayManager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9}, Landroid/view/VelocityTracker;->clear()V

    .line 893
    .end local v0    # "gap":F
    .end local v1    # "newPointerIndex":I
    .end local v2    # "newX":F
    .end local v3    # "newY":F
    .end local v6    # "rawOffsetX":F
    .end local v7    # "rawOffsetY":F
    .end local v8    # "viewScale":F
    :cond_0
    return-void

    .line 878
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 881
    .restart local v1    # "newPointerIndex":I
    .restart local v2    # "newX":F
    .restart local v3    # "newY":F
    :cond_2
    const/high16 v8, 0x3f800000    # 1.0f

    goto :goto_1
.end method

.method private prepareFakeViewOnChangeStageWithDrag(Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;)V
    .locals 3
    .param p1, "levelToBeChanged"    # Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;

    .prologue
    .line 957
    sget-object v1, Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;->Overground:Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 958
    iget-object v1, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeUndergroundView:Lcom/android/launcher3/common/tray/FakeView;

    iput-object v1, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeViewToBeShownOnChangeStage:Lcom/android/launcher3/common/tray/FakeView;

    .line 959
    iget v1, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTrayHeight:I

    iget v2, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeViewHeightToShow:I

    sub-int v0, v1, v2

    .line 966
    .local v0, "toTranslationY":I
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeViewToBeShownOnChangeStage:Lcom/android/launcher3/common/tray/FakeView;

    if-eqz v1, :cond_0

    .line 967
    iget-object v1, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeViewToBeShownOnChangeStage:Lcom/android/launcher3/common/tray/FakeView;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Lcom/android/launcher3/common/tray/FakeView;->setTranslationY(F)V

    .line 969
    :cond_0
    return-void

    .line 962
    .end local v0    # "toTranslationY":I
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeOvergroundView:Lcom/android/launcher3/common/tray/FakeView;

    iput-object v1, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeViewToBeShownOnChangeStage:Lcom/android/launcher3/common/tray/FakeView;

    .line 963
    iget v1, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeViewExtraMoveRange:I

    neg-int v0, v1

    .restart local v0    # "toTranslationY":I
    goto :goto_0
.end method

.method private prepareTrayMove(Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;Landroid/view/MotionEvent;FFI)V
    .locals 9
    .param p1, "sender"    # Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;
    .param p2, "ev"    # Landroid/view/MotionEvent;
    .param p3, "rawOffsetX"    # F
    .param p4, "rawOffsetY"    # F
    .param p5, "activePointerIndex"    # I

    .prologue
    .line 831
    const/4 v4, 0x0

    .line 832
    .local v4, "x":F
    const/4 v5, 0x0

    .line 834
    .local v5, "y":F
    :try_start_0
    invoke-virtual {p2, p5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    add-float v4, v6, p3

    .line 835
    invoke-virtual {p2, p5}, Landroid/view/MotionEvent;->getY(I)F
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    add-float v5, v6, p4

    .line 842
    iget v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mLastDownY:F

    sub-float v6, v5, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 843
    .local v0, "deltaY":F
    invoke-direct {p0, v0}, Lcom/android/launcher3/common/tray/TrayManager;->willMove(F)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 844
    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->onDestroyActivity()V

    .line 846
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mMoved:Z

    .line 847
    iget v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mLastDownY:F

    sub-float v6, v5, v6

    float-to-int v6, v6

    iput v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mDirection:I

    .line 848
    iput v5, p0, Lcom/android/launcher3/common/tray/TrayManager;->mLastDownY:F

    .line 850
    if-eqz p1, :cond_0

    .line 851
    invoke-interface {p1}, Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;->getTrayLevel()Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;

    move-result-object v3

    .line 856
    .local v3, "senderLevel":Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;
    sget-object v6, Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;->Underground:Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;

    invoke-virtual {v6, v3}, Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 857
    iget v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mDirection:I

    invoke-direct {p0, v3, v6}, Lcom/android/launcher3/common/tray/TrayManager;->getOffsetLimit(Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;I)Landroid/graphics/Rect;

    move-result-object v2

    .line 858
    .local v2, "limit":Landroid/graphics/Rect;
    iget v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mCurrentChangedOffsetY:F

    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_2

    .line 859
    iget v6, v2, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    invoke-direct {p0, v6}, Lcom/android/launcher3/common/tray/TrayManager;->setTrayTranslationY(F)V

    .line 866
    .end local v2    # "limit":Landroid/graphics/Rect;
    .end local v3    # "senderLevel":Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;
    :cond_0
    :goto_0
    iput v5, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFirstDownY:F

    .line 867
    iget v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mCurrentChangedOffsetY:F

    iput v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mStartOffsetY:F

    .line 869
    .end local v0    # "deltaY":F
    :cond_1
    :goto_1
    return-void

    .line 836
    :catch_0
    move-exception v1

    .line 837
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v6, "TrayManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "activePointerIndex = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 860
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v0    # "deltaY":F
    .restart local v2    # "limit":Landroid/graphics/Rect;
    .restart local v3    # "senderLevel":Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;
    :cond_2
    iget v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mCurrentChangedOffsetY:F

    iget v7, v2, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_0

    .line 861
    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    invoke-direct {p0, v6}, Lcom/android/launcher3/common/tray/TrayManager;->setTrayTranslationY(F)V

    goto :goto_0
.end method

.method private releaseVelocityTracker()V
    .locals 1

    .prologue
    .line 919
    iget-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 920
    iget-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 921
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 923
    :cond_0
    return-void
.end method

.method private setTrayTranslationY(F)V
    .locals 4
    .param p1, "y"    # F

    .prologue
    .line 926
    iget-object v2, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTrayEventCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v2, :cond_0

    .line 927
    new-instance v1, Lcom/android/launcher3/common/tray/TrayManager$TrayEvent;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p1}, Lcom/android/launcher3/common/tray/TrayManager$TrayEvent;-><init>(IF)V

    .line 928
    .local v1, "trayEvent":Lcom/android/launcher3/common/tray/TrayManager$TrayEvent;
    iget-object v2, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTrayEventCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;

    .line 929
    .local v0, "cb":Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;
    invoke-interface {v0, v1}, Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;->onReceiveTrayEvent(Lcom/android/launcher3/common/tray/TrayManager$TrayEvent;)V

    goto :goto_0

    .line 932
    .end local v0    # "cb":Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;
    .end local v1    # "trayEvent":Lcom/android/launcher3/common/tray/TrayManager$TrayEvent;
    :cond_0
    return-void
.end method

.method private trayMoveEnd(Z)V
    .locals 4
    .param p1, "changedStage"    # Z

    .prologue
    .line 947
    iget-object v2, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTrayEventCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v2, :cond_1

    .line 948
    new-instance v1, Lcom/android/launcher3/common/tray/TrayManager$TrayEvent;

    const/4 v3, 0x3

    if-eqz p1, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    :goto_0
    invoke-direct {v1, v3, v2}, Lcom/android/launcher3/common/tray/TrayManager$TrayEvent;-><init>(IF)V

    .line 949
    .local v1, "trayEvent":Lcom/android/launcher3/common/tray/TrayManager$TrayEvent;
    iget-object v2, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTrayEventCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;

    .line 950
    .local v0, "cb":Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;
    invoke-interface {v0, v1}, Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;->onReceiveTrayEvent(Lcom/android/launcher3/common/tray/TrayManager$TrayEvent;)V

    goto :goto_1

    .line 948
    .end local v0    # "cb":Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;
    .end local v1    # "trayEvent":Lcom/android/launcher3/common/tray/TrayManager$TrayEvent;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 953
    :cond_1
    return-void
.end method

.method private updateOvergroundTrayByDragViewPosition(FII)V
    .locals 7
    .param p1, "posY"    # F
    .param p2, "approachingStartY"    # I
    .param p3, "approachingEndY"    # I

    .prologue
    .line 594
    iget-object v4, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeOvergroundView:Lcom/android/launcher3/common/tray/FakeView;

    if-eqz v4, :cond_0

    int-to-float v4, p2

    cmpg-float v4, p1, v4

    if-gtz v4, :cond_0

    if-le p2, p3, :cond_0

    .line 595
    iget v4, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeViewExtraMoveRange:I

    neg-int v1, v4

    .line 596
    .local v1, "fakeViewBaseY":I
    int-to-float v4, p2

    sub-float/2addr v4, p1

    sub-int v5, p2, p3

    int-to-float v5, v5

    div-float v0, v4, v5

    .line 597
    .local v0, "factor":F
    iget v4, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeViewExtraMoveRange:I

    int-to-float v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float v6, v0, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    mul-float v3, v4, v5

    .line 598
    .local v3, "trayExtraY":F
    int-to-float v4, v1

    add-float v2, v4, v3

    .line 599
    .local v2, "fakeViewTranslationY":F
    iget-object v4, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeOvergroundView:Lcom/android/launcher3/common/tray/FakeView;

    invoke-virtual {v4, v2}, Lcom/android/launcher3/common/tray/FakeView;->setTranslationY(F)V

    .line 601
    .end local v0    # "factor":F
    .end local v1    # "fakeViewBaseY":I
    .end local v2    # "fakeViewTranslationY":F
    .end local v3    # "trayExtraY":F
    :cond_0
    return-void
.end method

.method private updateUndergroundTrayByDragViewPosition(FII)V
    .locals 10
    .param p1, "posY"    # F
    .param p2, "approachingStartY"    # I
    .param p3, "approachingEndY"    # I

    .prologue
    const/4 v9, 0x0

    .line 604
    iget-object v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeUndergroundView:Lcom/android/launcher3/common/tray/FakeView;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeUndergroundView:Lcom/android/launcher3/common/tray/FakeView;

    invoke-virtual {v6}, Lcom/android/launcher3/common/tray/FakeView;->getVisibility()I

    move-result v6

    if-nez v6, :cond_0

    .line 605
    const/4 v3, 0x0

    .line 606
    .local v3, "trayBaseY":I
    iget v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTrayHeight:I

    add-int/lit8 v6, v6, 0x0

    iget v7, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeViewHeightToShow:I

    sub-int v1, v6, v7

    .line 608
    .local v1, "fakeViewBaseY":I
    int-to-float v6, p2

    cmpl-float v6, p1, v6

    if-ltz v6, :cond_1

    if-ge p2, p3, :cond_1

    .line 609
    int-to-float v6, p2

    sub-float v6, p1, v6

    sub-int v7, p3, p2

    int-to-float v7, v7

    div-float v0, v6, v7

    .line 610
    .local v0, "factor":F
    iget v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeViewExtraMoveRange:I

    int-to-float v6, v6

    const/high16 v7, 0x3f800000    # 1.0f

    mul-float v8, v0, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    mul-float v4, v6, v7

    .line 611
    .local v4, "trayExtraY":F
    sub-float v5, v9, v4

    .line 612
    .local v5, "trayTranslationY":F
    int-to-float v6, v1

    sub-float v2, v6, v4

    .line 613
    .local v2, "fakeViewTranslationY":F
    iget-object v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeUndergroundView:Lcom/android/launcher3/common/tray/FakeView;

    invoke-virtual {v6, v2}, Lcom/android/launcher3/common/tray/FakeView;->setTranslationY(F)V

    .line 614
    invoke-direct {p0, v5}, Lcom/android/launcher3/common/tray/TrayManager;->setTrayTranslationY(F)V

    .line 623
    .end local v0    # "factor":F
    .end local v1    # "fakeViewBaseY":I
    .end local v2    # "fakeViewTranslationY":F
    .end local v3    # "trayBaseY":I
    .end local v4    # "trayExtraY":F
    .end local v5    # "trayTranslationY":F
    :cond_0
    :goto_0
    return-void

    .line 616
    .restart local v1    # "fakeViewBaseY":I
    .restart local v3    # "trayBaseY":I
    :cond_1
    iget v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mCurrentChangedOffsetY:F

    cmpg-float v6, v6, v9

    if-gez v6, :cond_0

    .line 617
    invoke-direct {p0, v9}, Lcom/android/launcher3/common/tray/TrayManager;->setTrayTranslationY(F)V

    goto :goto_0
.end method

.method private willMove(F)Z
    .locals 1
    .param p1, "deltaY"    # F

    .prologue
    .line 935
    iget v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTouchSlop:I

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1

    .line 936
    invoke-static {}, Lcom/android/launcher3/util/event/ScrollDetector;->isVerticalScroll()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/launcher3/util/event/ScrollDetector;->isMovingOnBlock()Z

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


# virtual methods
.method public addTrayEventCallbacks(Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;)V
    .locals 1
    .param p1, "cb"    # Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTrayEventCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTrayEventCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 311
    :cond_0
    return-void
.end method

.method public approachBorderOnDrag(Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;F)V
    .locals 3
    .param p1, "sender"    # Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;
    .param p2, "touchY"    # F

    .prologue
    .line 493
    invoke-interface {p1}, Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;->getTrayLevel()Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;

    move-result-object v0

    .line 494
    .local v0, "senderLevel":Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;
    sget-object v1, Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;->Overground:Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 495
    invoke-interface {p1}, Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;->getApproachingStartPoint()I

    move-result v1

    invoke-interface {p1}, Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;->getApproachingEndPoint()I

    move-result v2

    invoke-direct {p0, p2, v1, v2}, Lcom/android/launcher3/common/tray/TrayManager;->updateUndergroundTrayByDragViewPosition(FII)V

    .line 499
    :goto_0
    return-void

    .line 497
    :cond_0
    invoke-interface {p1}, Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;->getApproachingStartPoint()I

    move-result v1

    invoke-interface {p1}, Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;->getApproachingEndPoint()I

    move-result v2

    invoke-direct {p0, p2, v1, v2}, Lcom/android/launcher3/common/tray/TrayManager;->updateOvergroundTrayByDragViewPosition(FII)V

    goto :goto_0
.end method

.method public changeStageWithDrag(Lcom/android/launcher3/common/drag/DragSource;)V
    .locals 4
    .param p1, "source"    # Lcom/android/launcher3/common/drag/DragSource;

    .prologue
    .line 987
    sget-object v1, Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;->Overground:Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;

    .line 988
    .local v1, "toLevel":Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;
    iget-object v2, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTrayEventCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    .line 989
    iget-object v2, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTrayEventCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;

    .line 990
    .local v0, "cb":Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;
    invoke-interface {v0}, Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;->getDropTarget()Lcom/android/launcher3/common/drag/DropTarget;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 991
    invoke-interface {v0}, Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;->getTrayLevel()Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;->Underground:Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;

    if-ne v2, v3, :cond_2

    sget-object v1, Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;->Overground:Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;

    .line 996
    .end local v0    # "cb":Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;
    :cond_1
    :goto_0
    const/4 v2, -0x1

    invoke-interface {p1}, Lcom/android/launcher3/common/drag/DragSource;->getDragSourceType()I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/launcher3/common/tray/TrayManager;->changeStageWithDrag(Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;II)V

    .line 997
    return-void

    .line 991
    .restart local v0    # "cb":Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;
    :cond_2
    sget-object v1, Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;->Underground:Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;

    goto :goto_0
.end method

.method public getHeightOfTrayForDrag()I
    .locals 1

    .prologue
    .line 506
    iget v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeViewHeightToShow:I

    return v0
.end method

.method public getTrayMovingRange()I
    .locals 1

    .prologue
    .line 502
    iget v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTraySlipY:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTraySlipY:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->getFullScreenHeight(Landroid/app/Activity;)I

    move-result v0

    goto :goto_0
.end method

.method public isMoving()Z
    .locals 1

    .prologue
    .line 655
    iget-boolean v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mMoved:Z

    return v0
.end method

.method public onChangeTrayTranslationY(Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;FI)V
    .locals 8
    .param p1, "sender"    # Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;
    .param p2, "y"    # F
    .param p3, "trayHeight"    # I

    .prologue
    const/4 v7, 0x0

    .line 320
    iput p2, p0, Lcom/android/launcher3/common/tray/TrayManager;->mCurrentChangedOffsetY:F

    .line 321
    iput p3, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTrayHeight:I

    .line 323
    int-to-float v6, p3

    add-float v1, p2, v6

    .line 324
    .local v1, "borderY":F
    iget-object v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeViewToBeShownOnChangeStage:Lcom/android/launcher3/common/tray/FakeView;

    if-eqz v6, :cond_1

    .line 325
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 326
    .local v4, "r":Landroid/graphics/Rect;
    iget-object v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeViewToBeShownOnChangeStage:Lcom/android/launcher3/common/tray/FakeView;

    invoke-virtual {v6, v4}, Lcom/android/launcher3/common/tray/FakeView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 328
    iget-object v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeViewToBeShownOnChangeStage:Lcom/android/launcher3/common/tray/FakeView;

    invoke-virtual {v6}, Lcom/android/launcher3/common/tray/FakeView;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;

    .line 329
    .local v3, "fakeLevelToBeShown":Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;
    float-to-int v6, v1

    invoke-virtual {v4, v7, v6}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-nez v6, :cond_0

    sget-object v6, Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;->Overground:Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;

    invoke-virtual {v6, v3}, Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTrayBorderTopLimit:I

    int-to-float v6, v6

    cmpg-float v6, v1, v6

    if-gtz v6, :cond_1

    .line 331
    :cond_0
    iget-object v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeViewToBeShownOnChangeStage:Lcom/android/launcher3/common/tray/FakeView;

    invoke-virtual {v6, v7}, Lcom/android/launcher3/common/tray/FakeView;->setVisibility(I)V

    .line 332
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeViewToBeShownOnChangeStage:Lcom/android/launcher3/common/tray/FakeView;

    .line 335
    .end local v3    # "fakeLevelToBeShown":Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;
    .end local v4    # "r":Landroid/graphics/Rect;
    :cond_1
    iget-object v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeOvergroundView:Lcom/android/launcher3/common/tray/FakeView;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeOvergroundView:Lcom/android/launcher3/common/tray/FakeView;

    invoke-virtual {v6}, Lcom/android/launcher3/common/tray/FakeView;->getVisibility()I

    move-result v6

    if-nez v6, :cond_2

    iget v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeViewMaxHeight:I

    int-to-float v6, v6

    cmpg-float v6, v1, v6

    if-gtz v6, :cond_2

    .line 337
    iget-object v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeOvergroundView:Lcom/android/launcher3/common/tray/FakeView;

    invoke-virtual {v6}, Lcom/android/launcher3/common/tray/FakeView;->getTranslationY()F

    move-result v6

    iget-object v7, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeOvergroundView:Lcom/android/launcher3/common/tray/FakeView;

    invoke-virtual {v7}, Lcom/android/launcher3/common/tray/FakeView;->getHeight()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    invoke-static {v1, v6}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 339
    :cond_2
    iget-object v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeUndergroundView:Lcom/android/launcher3/common/tray/FakeView;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeUndergroundView:Lcom/android/launcher3/common/tray/FakeView;

    invoke-virtual {v6}, Lcom/android/launcher3/common/tray/FakeView;->getVisibility()I

    move-result v6

    if-nez v6, :cond_3

    iget v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeViewMaxHeight:I

    sub-int v6, p3, v6

    int-to-float v6, v6

    cmpl-float v6, v1, v6

    if-ltz v6, :cond_3

    .line 341
    iget-object v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeUndergroundView:Lcom/android/launcher3/common/tray/FakeView;

    invoke-virtual {v6}, Lcom/android/launcher3/common/tray/FakeView;->getTranslationY()F

    move-result v6

    invoke-static {v1, v6}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 344
    :cond_3
    int-to-float v6, p3

    sub-float v0, v1, v6

    .line 345
    .local v0, "adjustedOffsetY":F
    iget-object v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTrayEventCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v6, :cond_4

    .line 346
    new-instance v5, Lcom/android/launcher3/common/tray/TrayManager$TrayEvent;

    const/4 v6, 0x2

    invoke-direct {v5, v6, v0}, Lcom/android/launcher3/common/tray/TrayManager$TrayEvent;-><init>(IF)V

    .line 347
    .local v5, "trayEvent":Lcom/android/launcher3/common/tray/TrayManager$TrayEvent;
    iget-boolean v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mDisallowCallBacksVisibity:Z

    iput-boolean v6, v5, Lcom/android/launcher3/common/tray/TrayManager$TrayEvent;->mDisallowVisible:Z

    .line 348
    iget-object v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTrayEventCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;

    .line 350
    .local v2, "cb":Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;
    invoke-interface {v2, v5}, Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;->onReceiveTrayEvent(Lcom/android/launcher3/common/tray/TrayManager$TrayEvent;)V

    goto :goto_0

    .line 355
    .end local v2    # "cb":Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;
    .end local v5    # "trayEvent":Lcom/android/launcher3/common/tray/TrayManager$TrayEvent;
    :cond_4
    invoke-direct {p0, v0, p3}, Lcom/android/launcher3/common/tray/TrayManager;->handleHighlightAndShadow(FI)V

    .line 356
    invoke-direct {p0, v0, p3}, Lcom/android/launcher3/common/tray/TrayManager;->handleFakeViews(FI)V

    .line 359
    invoke-direct {p0, v0}, Lcom/android/launcher3/common/tray/TrayManager;->handleWallpaperBlur(F)V

    .line 361
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 288
    iget-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTrayEventCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 289
    iget-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeOvergroundView:Lcom/android/launcher3/common/tray/FakeView;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeOvergroundView:Lcom/android/launcher3/common/tray/FakeView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/tray/FakeView;->setTranslationListener(Lcom/android/launcher3/common/tray/FakeView$TranslationCallback;)V

    .line 291
    iget-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeOvergroundView:Lcom/android/launcher3/common/tray/FakeView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/tray/FakeView;->setDragEventListener(Lcom/android/launcher3/common/tray/FakeView$DragEventCallback;)V

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeUndergroundView:Lcom/android/launcher3/common/tray/FakeView;

    if-eqz v0, :cond_1

    .line 294
    iget-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeUndergroundView:Lcom/android/launcher3/common/tray/FakeView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/tray/FakeView;->setTranslationListener(Lcom/android/launcher3/common/tray/FakeView$TranslationCallback;)V

    .line 295
    iget-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeUndergroundView:Lcom/android/launcher3/common/tray/FakeView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/tray/FakeView;->setDragEventListener(Lcom/android/launcher3/common/tray/FakeView$DragEventCallback;)V

    .line 297
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTransferPanelTopView:Lcom/android/launcher3/common/tray/FakeView;

    if-eqz v0, :cond_2

    .line 298
    iget-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTransferPanelTopView:Lcom/android/launcher3/common/tray/FakeView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/tray/FakeView;->setTranslationListener(Lcom/android/launcher3/common/tray/FakeView$TranslationCallback;)V

    .line 299
    iget-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTransferPanelTopView:Lcom/android/launcher3/common/tray/FakeView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/tray/FakeView;->setDragEventListener(Lcom/android/launcher3/common/tray/FakeView$DragEventCallback;)V

    .line 301
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTransferPanelBottomView:Lcom/android/launcher3/common/tray/FakeView;

    if-eqz v0, :cond_3

    .line 302
    iget-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTransferPanelBottomView:Lcom/android/launcher3/common/tray/FakeView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/tray/FakeView;->setTranslationListener(Lcom/android/launcher3/common/tray/FakeView$TranslationCallback;)V

    .line 303
    iget-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTransferPanelBottomView:Lcom/android/launcher3/common/tray/FakeView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/tray/FakeView;->setDragEventListener(Lcom/android/launcher3/common/tray/FakeView$DragEventCallback;)V

    .line 305
    :cond_3
    return-void
.end method

.method public onInterceptTouchEvent(Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "sender"    # Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;
    .param p2, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 675
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    .line 676
    .local v6, "action":I
    const/4 v0, 0x2

    if-ne v6, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mMoved:Z

    if-eqz v0, :cond_0

    .line 677
    const/4 v0, 0x1

    .line 733
    :goto_0
    return v0

    .line 679
    :cond_0
    const/4 v9, 0x0

    .line 681
    .local v9, "interceptMotion":Z
    packed-switch v6, :pswitch_data_0

    .line 733
    :cond_1
    :goto_1
    :pswitch_0
    if-nez v9, :cond_2

    iget-boolean v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mMoved:Z

    if-eqz v0, :cond_4

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 683
    :pswitch_1
    iget v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mActivePointerId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 684
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v11

    .line 685
    .local v11, "x":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v12

    .line 686
    .local v12, "y":F
    iget v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mLastDownX:F

    sub-float v0, v11, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 687
    .local v7, "deltaX":F
    iget v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mLastDownY:F

    sub-float v0, v12, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v8

    .line 688
    .local v8, "deltaY":F
    if-eqz p1, :cond_1

    invoke-direct {p0, v8}, Lcom/android/launcher3/common/tray/TrayManager;->willMove(F)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 689
    invoke-interface {p1}, Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;->startTrayMove()V

    .line 690
    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->onDestroyActivity()V

    .line 691
    const/4 v9, 0x1

    .line 692
    iget v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mActivePointerId:I

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v5

    .line 693
    .local v5, "activePointerIndex":I
    invoke-interface {p1}, Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;->getTrayScale()F

    move-result v10

    .line 694
    .local v10, "viewScale":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    mul-float/2addr v1, v10

    sub-float v3, v0, v1

    .line 695
    .local v3, "rawOffsetX":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    mul-float/2addr v1, v10

    sub-float v4, v0, v1

    .local v4, "rawOffsetY":F
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 696
    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/common/tray/TrayManager;->prepareTrayMove(Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;Landroid/view/MotionEvent;FFI)V

    .line 697
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mMoved:Z

    goto :goto_1

    .line 703
    .end local v3    # "rawOffsetX":F
    .end local v4    # "rawOffsetY":F
    .end local v5    # "activePointerIndex":I
    .end local v7    # "deltaX":F
    .end local v8    # "deltaY":F
    .end local v10    # "viewScale":F
    .end local v11    # "x":F
    .end local v12    # "y":F
    :pswitch_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mLastDownX:F

    .line 704
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mLastDownY:F

    iput v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFirstDownY:F

    .line 705
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mOffset:F

    .line 706
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mMoved:Z

    .line 707
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mDirection:I

    .line 708
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mActivePointerId:I

    .line 709
    if-eqz p1, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;->onSwipeBlockListener(FF)V

    .line 710
    :cond_3
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mStartPoint:Landroid/graphics/Point;

    goto/16 :goto_1

    .line 715
    :pswitch_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mMoved:Z

    .line 716
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mDirection:I

    .line 717
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mActivePointerId:I

    goto/16 :goto_1

    .line 721
    :pswitch_4
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/common/tray/TrayManager;->onSecondaryPointerUp(Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;Landroid/view/MotionEvent;)V

    .line 722
    invoke-direct {p0}, Lcom/android/launcher3/common/tray/TrayManager;->releaseVelocityTracker()V

    goto/16 :goto_1

    .line 733
    :cond_4
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 681
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public onTouchEvent(Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;Landroid/view/MotionEvent;)Z
    .locals 20
    .param p1, "sender"    # Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;
    .param p2, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 737
    invoke-static/range {p2 .. p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v8

    .line 738
    .local v8, "rawEv":Landroid/view/MotionEvent;
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v15

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v16

    sub-float v15, v15, v16

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v16

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v17

    sub-float v16, v16, v17

    move/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 739
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/launcher3/common/tray/TrayManager;->acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V

    .line 740
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 742
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    .line 743
    .local v2, "action":I
    invoke-interface/range {p1 .. p1}, Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;->getTrayScale()F

    move-result v14

    .line 744
    .local v14, "viewScale":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v15

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v16

    mul-float v16, v16, v14

    sub-float v9, v15, v16

    .line 745
    .local v9, "rawOffsetX":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v15

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v16

    mul-float v16, v16, v14

    sub-float v10, v15, v16

    .line 746
    .local v10, "rawOffsetY":F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher3/common/tray/TrayManager;->mActivePointerId:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 748
    .local v3, "activePointerIndex":I
    packed-switch v2, :pswitch_data_0

    .line 827
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v15, 0x1

    return v15

    .line 751
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/launcher3/common/tray/TrayManager;->mLastDownX:F

    .line 752
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/launcher3/common/tray/TrayManager;->mLastDownY:F

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/launcher3/common/tray/TrayManager;->mFirstDownY:F

    .line 753
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/launcher3/common/tray/TrayManager;->mOffset:F

    .line 754
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/launcher3/common/tray/TrayManager;->mMoved:Z

    .line 755
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/launcher3/common/tray/TrayManager;->mDirection:I

    .line 756
    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/launcher3/common/tray/TrayManager;->mActivePointerId:I

    goto :goto_0

    .line 760
    :pswitch_2
    const/4 v15, -0x1

    if-eq v3, v15, :cond_0

    .line 761
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/launcher3/common/tray/TrayManager;->mMoved:Z

    if-eqz v15, :cond_0

    .line 762
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v15

    add-float/2addr v15, v9

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/launcher3/common/tray/TrayManager;->mLastDownX:F

    .line 763
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v15

    add-float/2addr v15, v10

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/launcher3/common/tray/TrayManager;->mLastDownY:F

    .line 765
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher3/common/tray/TrayManager;->mLastDownY:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/tray/TrayManager;->mFirstDownY:F

    move/from16 v16, v0

    sub-float v12, v15, v16

    .line 767
    .local v12, "touchDistance":F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher3/common/tray/TrayManager;->mSwipeDistanceRatio:F

    mul-float/2addr v12, v15

    .line 769
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher3/common/tray/TrayManager;->mStartOffsetY:F

    add-float v7, v15, v12

    .line 770
    .local v7, "offset":F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher3/common/tray/TrayManager;->mTrayHeight:I

    if-lez v15, :cond_3

    .line 771
    const/4 v5, 0x0

    .line 772
    .local v5, "ignoredDistance":I
    invoke-interface/range {p1 .. p1}, Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;->getTrayLevel()Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/tray/TrayManager;->mDirection:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/android/launcher3/common/tray/TrayManager;->getOffsetLimit(Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;I)Landroid/graphics/Rect;

    move-result-object v6

    .line 773
    .local v6, "limit":Landroid/graphics/Rect;
    iget v15, v6, Landroid/graphics/Rect;->top:I

    int-to-float v15, v15

    cmpg-float v15, v7, v15

    if-gez v15, :cond_1

    .line 774
    iget v15, v6, Landroid/graphics/Rect;->top:I

    int-to-float v15, v15

    sub-float v15, v7, v15

    float-to-int v5, v15

    .line 775
    iget v15, v6, Landroid/graphics/Rect;->top:I

    int-to-float v7, v15

    .line 777
    :cond_1
    iget v15, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v15, v15

    cmpl-float v15, v7, v15

    if-lez v15, :cond_2

    .line 778
    iget v15, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v15, v15

    sub-float v15, v7, v15

    float-to-int v5, v15

    .line 779
    iget v15, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v15

    .line 781
    :cond_2
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher3/common/tray/TrayManager;->mFirstDownY:F

    int-to-float v0, v5

    move/from16 v16, v0

    add-float v15, v15, v16

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/launcher3/common/tray/TrayManager;->mFirstDownY:F

    .line 783
    .end local v5    # "ignoredDistance":I
    .end local v6    # "limit":Landroid/graphics/Rect;
    :cond_3
    invoke-static {}, Lcom/android/launcher3/util/event/ScrollDetector;->isMovingOnBlock()Z

    move-result v15

    if-nez v15, :cond_4

    .line 784
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/launcher3/common/tray/TrayManager;->setTrayTranslationY(F)V

    .line 786
    :cond_4
    move-object/from16 v0, p0

    iput v7, v0, Lcom/android/launcher3/common/tray/TrayManager;->mOffset:F

    goto/16 :goto_0

    .line 793
    .end local v7    # "offset":F
    .end local v12    # "touchDistance":F
    :pswitch_3
    invoke-static {}, Lcom/android/launcher3/util/event/ScrollDetector;->isMovingOnBlock()Z

    move-result v15

    if-nez v15, :cond_a

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/launcher3/common/tray/TrayManager;->mMoved:Z

    if-eqz v15, :cond_a

    .line 794
    const/4 v4, 0x0

    .line 795
    .local v4, "changedStage":Z
    const/4 v15, -0x1

    if-eq v3, v15, :cond_7

    .line 796
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher3/common/tray/TrayManager;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v16, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/tray/TrayManager;->mMaximumVelocity:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 797
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher3/common/tray/TrayManager;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/tray/TrayManager;->mActivePointerId:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v15

    float-to-int v13, v15

    .line 798
    .local v13, "velocity":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/tray/TrayManager;->mLastDownX:F

    move/from16 v16, v0

    sub-float v15, v15, v16

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/launcher3/common/tray/TrayManager;->willMove(F)Z

    move-result v15

    if-eqz v15, :cond_8

    invoke-static {}, Lcom/android/launcher3/util/event/ScrollDetector;->isLocked()Z

    move-result v15

    if-nez v15, :cond_8

    const/4 v11, 0x1

    .line 799
    .local v11, "scrollDetected":Z
    :goto_1
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher3/common/tray/TrayManager;->mOffset:F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13, v15}, Lcom/android/launcher3/common/tray/TrayManager;->determineStageChange(Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;IF)Z

    move-result v15

    if-nez v15, :cond_5

    if-eqz v11, :cond_9

    :cond_5
    const/4 v4, 0x1

    .line 800
    :goto_2
    if-eqz v4, :cond_6

    .line 801
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v15

    .line 802
    invoke-interface/range {p1 .. p1}, Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;->getTrayLevel()Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;->ordinal()I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/tray/TrayManager;->mStartPoint:Landroid/graphics/Point;

    move-object/from16 v17, v0

    .line 803
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    .line 801
    invoke-virtual/range {v15 .. v19}, Lcom/android/launcher3/util/logging/SALogging;->insertGesturePointOnTrayChange(ILandroid/graphics/Point;II)V

    .line 805
    :cond_6
    const-string v15, "TrayManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " : v = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", threshold = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/tray/TrayManager;->mFlingThresholdVelocity:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", scroll = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    .end local v11    # "scrollDetected":Z
    .end local v13    # "velocity":I
    :cond_7
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/launcher3/common/tray/TrayManager;->trayMoveEnd(Z)V

    .line 809
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/launcher3/common/tray/TrayManager;->mMoved:Z

    .line 813
    .end local v4    # "changedStage":Z
    :goto_3
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/launcher3/common/tray/TrayManager;->mDirection:I

    .line 814
    const/4 v15, -0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/launcher3/common/tray/TrayManager;->mActivePointerId:I

    .line 815
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/common/tray/TrayManager;->releaseVelocityTracker()V

    goto/16 :goto_0

    .line 798
    .restart local v4    # "changedStage":Z
    .restart local v13    # "velocity":I
    :cond_8
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 799
    .restart local v11    # "scrollDetected":Z
    :cond_9
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 811
    .end local v4    # "changedStage":Z
    .end local v11    # "scrollDetected":Z
    .end local v13    # "velocity":I
    :cond_a
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/launcher3/common/tray/TrayManager;->trayMoveEnd(Z)V

    goto :goto_3

    .line 819
    :pswitch_4
    invoke-direct/range {p0 .. p2}, Lcom/android/launcher3/common/tray/TrayManager;->onSecondaryPointerUp(Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;Landroid/view/MotionEvent;)V

    .line 820
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/common/tray/TrayManager;->releaseVelocityTracker()V

    goto/16 :goto_0

    .line 748
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public pullTrayForDrag(Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;I)V
    .locals 9
    .param p1, "sender"    # Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;
    .param p2, "trayHeight"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 376
    iput p2, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTrayHeight:I

    .line 377
    invoke-interface {p1}, Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;->getTrayLevel()Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;

    move-result-object v3

    .line 383
    .local v3, "senderLevel":Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;
    sget-object v5, Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;->Overground:Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;

    invoke-virtual {v5, v3}, Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 384
    sget-object v4, Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;->Underground:Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;

    .line 385
    .local v4, "toLevel":Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;
    const-string v2, ""

    .line 386
    .local v2, "descTop":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/launcher3/common/tray/TrayManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f08016d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 393
    .local v1, "descBottom":Ljava/lang/String;
    :goto_0
    iget-object v5, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTransferPanelTopView:Lcom/android/launcher3/common/tray/FakeView;

    invoke-virtual {v5, v4}, Lcom/android/launcher3/common/tray/FakeView;->setTrayLevel(Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;)V

    .line 394
    iget-object v5, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTransferPanelTopView:Lcom/android/launcher3/common/tray/FakeView;

    invoke-virtual {v5, v2}, Lcom/android/launcher3/common/tray/FakeView;->setDescription(Ljava/lang/CharSequence;)V

    .line 395
    iget-object v5, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTransferPanelTopView:Lcom/android/launcher3/common/tray/FakeView;

    invoke-direct {p0, v5, v7, v8}, Lcom/android/launcher3/common/tray/TrayManager;->animateFakeView(Landroid/view/View;IZ)V

    .line 397
    invoke-static {}, Lcom/android/launcher3/Utilities;->isMobileKeyboardMode()Z

    move-result v5

    if-nez v5, :cond_1

    .line 398
    iget-object v5, p0, Lcom/android/launcher3/common/tray/TrayManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-static {v5, v8}, Lcom/android/launcher3/Utilities;->hideNavigationBar(Landroid/view/Window;Z)V

    .line 399
    iget-object v5, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTransferPanelBottomView:Lcom/android/launcher3/common/tray/FakeView;

    invoke-virtual {v5, v4}, Lcom/android/launcher3/common/tray/FakeView;->setTrayLevel(Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;)V

    .line 400
    iget-object v5, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTransferPanelBottomView:Lcom/android/launcher3/common/tray/FakeView;

    invoke-virtual {v5, v1}, Lcom/android/launcher3/common/tray/FakeView;->setDescription(Ljava/lang/CharSequence;)V

    .line 401
    iget-object v5, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTransferPanelBottomView:Lcom/android/launcher3/common/tray/FakeView;

    invoke-virtual {v5}, Lcom/android/launcher3/common/tray/FakeView;->getHeight()I

    move-result v0

    .line 402
    .local v0, "bottomViewHeight":I
    if-nez v0, :cond_0

    .line 403
    iget-object v5, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTransferPanelBottomView:Lcom/android/launcher3/common/tray/FakeView;

    invoke-virtual {v5, v7, v7}, Lcom/android/launcher3/common/tray/FakeView;->measure(II)V

    .line 404
    iget-object v5, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTransferPanelBottomView:Lcom/android/launcher3/common/tray/FakeView;

    invoke-virtual {v5}, Lcom/android/launcher3/common/tray/FakeView;->getMeasuredHeight()I

    move-result v0

    .line 406
    :cond_0
    iget-object v5, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTransferPanelBottomView:Lcom/android/launcher3/common/tray/FakeView;

    sub-int v6, p2, v0

    invoke-direct {p0, v5, v6, v8}, Lcom/android/launcher3/common/tray/TrayManager;->animateFakeView(Landroid/view/View;IZ)V

    .line 409
    .end local v0    # "bottomViewHeight":I
    :cond_1
    sget-object v5, Lcom/android/launcher3/util/LightingEffectManager;->INSTANCE:Lcom/android/launcher3/util/LightingEffectManager;

    iget v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeViewAnimationTime:I

    invoke-static {}, Lcom/android/launcher3/Utilities;->isMobileKeyboardMode()Z

    move-result v7

    invoke-virtual {v5, v8, v6, v7}, Lcom/android/launcher3/util/LightingEffectManager;->showEffect(ZIZ)V

    .line 411
    iget-object v5, p0, Lcom/android/launcher3/common/tray/TrayManager;->mDragManager:Lcom/android/launcher3/common/drag/DragManager;

    if-eqz v5, :cond_2

    .line 412
    iget-object v5, p0, Lcom/android/launcher3/common/tray/TrayManager;->mDragManager:Lcom/android/launcher3/common/drag/DragManager;

    iget-object v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTransferPanelTopView:Lcom/android/launcher3/common/tray/FakeView;

    invoke-virtual {v5, v6}, Lcom/android/launcher3/common/drag/DragManager;->removeDropTarget(Lcom/android/launcher3/common/drag/DropTarget;)V

    .line 413
    iget-object v5, p0, Lcom/android/launcher3/common/tray/TrayManager;->mDragManager:Lcom/android/launcher3/common/drag/DragManager;

    iget-object v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTransferPanelTopView:Lcom/android/launcher3/common/tray/FakeView;

    invoke-virtual {v5, v6}, Lcom/android/launcher3/common/drag/DragManager;->addDropTarget(Lcom/android/launcher3/common/drag/DropTarget;)V

    .line 414
    invoke-static {}, Lcom/android/launcher3/Utilities;->isMobileKeyboardMode()Z

    move-result v5

    if-nez v5, :cond_2

    .line 415
    iget-object v5, p0, Lcom/android/launcher3/common/tray/TrayManager;->mDragManager:Lcom/android/launcher3/common/drag/DragManager;

    iget-object v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTransferPanelBottomView:Lcom/android/launcher3/common/tray/FakeView;

    invoke-virtual {v5, v6}, Lcom/android/launcher3/common/drag/DragManager;->removeDropTarget(Lcom/android/launcher3/common/drag/DropTarget;)V

    .line 416
    iget-object v5, p0, Lcom/android/launcher3/common/tray/TrayManager;->mDragManager:Lcom/android/launcher3/common/drag/DragManager;

    iget-object v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTransferPanelBottomView:Lcom/android/launcher3/common/tray/FakeView;

    invoke-virtual {v5, v6}, Lcom/android/launcher3/common/drag/DragManager;->addDropTarget(Lcom/android/launcher3/common/drag/DropTarget;)V

    .line 456
    :cond_2
    return-void

    .line 388
    .end local v1    # "descBottom":Ljava/lang/String;
    .end local v2    # "descTop":Ljava/lang/String;
    .end local v4    # "toLevel":Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;
    :cond_3
    sget-object v4, Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;->Overground:Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;

    .line 389
    .restart local v4    # "toLevel":Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;
    iget-object v5, p0, Lcom/android/launcher3/common/tray/TrayManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f08004f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 390
    .restart local v2    # "descTop":Ljava/lang/String;
    const-string v1, ""

    .restart local v1    # "descBottom":Ljava/lang/String;
    goto/16 :goto_0
.end method

.method public releaseTrayForDrag(Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;I)V
    .locals 4
    .param p1, "sender"    # Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;
    .param p2, "trayHeight"    # I

    .prologue
    const/4 v3, 0x0

    .line 459
    iput p2, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTrayHeight:I

    .line 462
    iget-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/android/launcher3/Utilities;->hideNavigationBar(Landroid/view/Window;Z)V

    .line 463
    sget-object v0, Lcom/android/launcher3/util/LightingEffectManager;->INSTANCE:Lcom/android/launcher3/util/LightingEffectManager;

    iget v1, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeViewAnimationTime:I

    invoke-static {}, Lcom/android/launcher3/Utilities;->isMobileKeyboardMode()Z

    move-result v2

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/launcher3/util/LightingEffectManager;->showEffect(ZIZ)V

    .line 464
    iget-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTransferPanelTopView:Lcom/android/launcher3/common/tray/FakeView;

    invoke-direct {p0, v0, v3, v3}, Lcom/android/launcher3/common/tray/TrayManager;->animateFakeView(Landroid/view/View;IZ)V

    .line 465
    iget-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTransferPanelBottomView:Lcom/android/launcher3/common/tray/FakeView;

    iget-object v1, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTransferPanelBottomView:Lcom/android/launcher3/common/tray/FakeView;

    invoke-virtual {v1}, Lcom/android/launcher3/common/tray/FakeView;->getHeight()I

    move-result v1

    sub-int v1, p2, v1

    invoke-direct {p0, v0, v1, v3}, Lcom/android/launcher3/common/tray/TrayManager;->animateFakeView(Landroid/view/View;IZ)V

    .line 467
    iget-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mDragManager:Lcom/android/launcher3/common/drag/DragManager;

    if-eqz v0, :cond_0

    .line 468
    iget-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mDragManager:Lcom/android/launcher3/common/drag/DragManager;

    iget-object v1, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTransferPanelTopView:Lcom/android/launcher3/common/tray/FakeView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/drag/DragManager;->removeDropTarget(Lcom/android/launcher3/common/drag/DropTarget;)V

    .line 469
    iget-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mDragManager:Lcom/android/launcher3/common/drag/DragManager;

    iget-object v1, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTransferPanelBottomView:Lcom/android/launcher3/common/tray/FakeView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/drag/DragManager;->removeDropTarget(Lcom/android/launcher3/common/drag/DropTarget;)V

    .line 490
    :cond_0
    return-void
.end method

.method public removeTrayEventCallbacks(Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;)V
    .locals 1
    .param p1, "cb"    # Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTrayEventCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTrayEventCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 317
    :cond_0
    return-void
.end method

.method public resetMoving()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 659
    iget-boolean v1, p0, Lcom/android/launcher3/common/tray/TrayManager;->mMoved:Z

    if-eqz v1, :cond_1

    .line 660
    invoke-direct {p0, v3}, Lcom/android/launcher3/common/tray/TrayManager;->trayMoveEnd(Z)V

    .line 661
    iput-boolean v3, p0, Lcom/android/launcher3/common/tray/TrayManager;->mMoved:Z

    .line 662
    iput v2, p0, Lcom/android/launcher3/common/tray/TrayManager;->mActivePointerId:I

    .line 672
    :cond_0
    :goto_0
    return-void

    .line 663
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/common/tray/TrayManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->isHomeStage()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 664
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/launcher3/common/tray/TrayManager;->setTrayTranslationY(F)V

    goto :goto_0

    .line 665
    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/common/tray/TrayManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->isAppsStage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 666
    sget-object v1, Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;->Overground:Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;

    invoke-direct {p0, v1, v2}, Lcom/android/launcher3/common/tray/TrayManager;->getOffsetLimit(Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;I)Landroid/graphics/Rect;

    move-result-object v0

    .line 667
    .local v0, "limit":Landroid/graphics/Rect;
    iget v1, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTrayBorderTopLimit:I

    if-lez v1, :cond_3

    .line 668
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTrayBorderTopLimit:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 670
    :cond_3
    iget v1, v0, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-direct {p0, v1}, Lcom/android/launcher3/common/tray/TrayManager;->setTrayTranslationY(F)V

    goto :goto_0
.end method

.method public setBottomViewDragEnable()V
    .locals 2

    .prologue
    .line 1017
    iget-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTransferPanelBottomView:Lcom/android/launcher3/common/tray/FakeView;

    if-eqz v0, :cond_0

    .line 1018
    invoke-static {}, Lcom/android/launcher3/Utilities;->isMobileKeyboardMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1019
    iget-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTransferPanelBottomView:Lcom/android/launcher3/common/tray/FakeView;

    iget-object v1, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeViewDragEventListener:Lcom/android/launcher3/common/tray/FakeView$DragEventCallback;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/tray/FakeView;->setDragEventListener(Lcom/android/launcher3/common/tray/FakeView$DragEventCallback;)V

    .line 1024
    :cond_0
    :goto_0
    return-void

    .line 1021
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTransferPanelBottomView:Lcom/android/launcher3/common/tray/FakeView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/tray/FakeView;->setDragEventListener(Lcom/android/launcher3/common/tray/FakeView$DragEventCallback;)V

    goto :goto_0
.end method

.method public setDisallowCallBacksVisibity(Z)V
    .locals 0
    .param p1, "disallow"    # Z

    .prologue
    .line 1013
    iput-boolean p1, p0, Lcom/android/launcher3/common/tray/TrayManager;->mDisallowCallBacksVisibity:Z

    .line 1014
    return-void
.end method

.method public setSuppressChangeStageOnce()V
    .locals 2

    .prologue
    .line 364
    const-string v0, "TrayManager"

    const-string v1, "setSuppressChangeStageOnce"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    iget-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTransferPanelTopView:Lcom/android/launcher3/common/tray/FakeView;

    invoke-virtual {v0}, Lcom/android/launcher3/common/tray/FakeView;->setSuppressChangeStageOnce()V

    .line 368
    iget-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTransferPanelBottomView:Lcom/android/launcher3/common/tray/FakeView;

    invoke-virtual {v0}, Lcom/android/launcher3/common/tray/FakeView;->setSuppressChangeStageOnce()V

    .line 373
    return-void
.end method

.method public setSwipeAnimationStatus(ZFJ)V
    .locals 3
    .param p1, "isStart"    # Z
    .param p2, "toTranslation"    # F
    .param p3, "animDuration"    # J

    .prologue
    const/4 v1, 0x0

    .line 647
    if-eqz p1, :cond_1

    .line 648
    cmpl-float v2, p2, v1

    if-nez v2, :cond_2

    const/4 v0, 0x0

    .line 649
    .local v0, "blur":Z
    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/common/tray/TrayManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz v0, :cond_0

    const v1, 0x3e99999a    # 0.3f

    :cond_0
    invoke-static {v0, v2, v1, p3, p4}, Lcom/android/launcher3/util/BlurUtils;->blurByWindowManager(ZLandroid/view/Window;FJ)V

    .line 651
    .end local v0    # "blur":Z
    :cond_1
    iput-boolean p1, p0, Lcom/android/launcher3/common/tray/TrayManager;->mIsRunningSwipeAnimation:Z

    .line 652
    return-void

    .line 648
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setup(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 216
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/common/tray/TrayManager;->setup(Landroid/app/Activity;Lcom/android/launcher3/common/drag/DragManager;)V

    .line 217
    return-void
.end method

.method public setup(Landroid/app/Activity;Lcom/android/launcher3/common/drag/DragManager;)V
    .locals 9
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "dragMgr"    # Lcom/android/launcher3/common/drag/DragManager;

    .prologue
    const/4 v8, 0x1

    .line 220
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .local v1, "configuration":Landroid/view/ViewConfiguration;
    move-object v6, p1

    .line 221
    check-cast v6, Lcom/android/launcher3/Launcher;

    iput-object v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 222
    iput-object p2, p0, Lcom/android/launcher3/common/tray/TrayManager;->mDragManager:Lcom/android/launcher3/common/drag/DragManager;

    .line 224
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 225
    .local v3, "res":Landroid/content/res/Resources;
    iget-object v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v6}, Lcom/android/launcher3/Utilities;->getFullScreenHeight(Landroid/app/Activity;)I

    move-result v4

    .line 227
    .local v4, "screenHeight":I
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v6

    iput v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mMaximumVelocity:I

    .line 228
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v6

    iput v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTouchSlop:I

    .line 229
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v2, v6, Landroid/util/DisplayMetrics;->density:F

    .line 230
    .local v2, "density":F
    const/high16 v6, 0x43fa0000    # 500.0f

    mul-float/2addr v6, v2

    float-to-int v6, v6

    iput v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFlingThresholdVelocity:I

    .line 232
    const v6, 0x7f0f009b

    invoke-virtual {p1, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewStub;

    .line 233
    .local v5, "topStub":Landroid/view/ViewStub;
    const v6, 0x7f0f009d

    invoke-virtual {p1, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 235
    .local v0, "bottomStub":Landroid/view/ViewStub;
    const v6, 0x7f030042

    invoke-virtual {v5, v6}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 236
    invoke-virtual {v5}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/common/tray/FakeView;

    iput-object v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTransferPanelTopView:Lcom/android/launcher3/common/tray/FakeView;

    .line 237
    iget-object v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTransferPanelTopView:Lcom/android/launcher3/common/tray/FakeView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/launcher3/common/tray/FakeView;->setDirection(I)V

    .line 238
    iget-object v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTransferPanelTopView:Lcom/android/launcher3/common/tray/FakeView;

    iget-object v7, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeViewDragEventListener:Lcom/android/launcher3/common/tray/FakeView$DragEventCallback;

    invoke-virtual {v6, v7}, Lcom/android/launcher3/common/tray/FakeView;->setDragEventListener(Lcom/android/launcher3/common/tray/FakeView$DragEventCallback;)V

    .line 240
    const v6, 0x7f030041

    invoke-virtual {v0, v6}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 241
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/common/tray/FakeView;

    iput-object v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTransferPanelBottomView:Lcom/android/launcher3/common/tray/FakeView;

    .line 242
    iget-object v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTransferPanelBottomView:Lcom/android/launcher3/common/tray/FakeView;

    invoke-virtual {v6, v8}, Lcom/android/launcher3/common/tray/FakeView;->setDirection(I)V

    .line 243
    invoke-virtual {p0}, Lcom/android/launcher3/common/tray/TrayManager;->setBottomViewDragEnable()V

    .line 260
    const v6, 0x7f090144

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeViewMaxHeight:I

    .line 261
    const v6, 0x7f090143

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeViewHeightToShow:I

    .line 262
    iget v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeViewMaxHeight:I

    iget v7, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeViewHeightToShow:I

    sub-int/2addr v6, v7

    iput v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeViewExtraMoveRange:I

    .line 263
    const v6, 0x7f0b002c

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iput v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mFakeViewAnimationTime:I

    .line 265
    const v6, 0x7f0f00a0

    invoke-virtual {p1, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mHightlightView:Landroid/view/View;

    .line 266
    const v6, 0x7f0f009f

    invoke-virtual {p1, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mShadowView:Landroid/view/View;

    .line 267
    const v6, 0x7f090145

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mHighlightHeight:I

    .line 268
    const v6, 0x7f090149

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mShadowHeight:I

    .line 269
    const v6, 0x7f0d002c

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v6

    iput v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mShadowDarkBgColor:I

    .line 270
    const/4 v6, 0x0

    invoke-direct {p0, v6, v4}, Lcom/android/launcher3/common/tray/TrayManager;->handleHighlightAndShadow(FI)V

    .line 282
    const v6, 0x7f09014b

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mTraySlipY:I

    .line 283
    const v6, 0x7f0e000a

    invoke-virtual {v3, v6, v8, v8}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v6

    iput v6, p0, Lcom/android/launcher3/common/tray/TrayManager;->mSwipeDistanceRatio:F

    .line 285
    return-void
.end method
