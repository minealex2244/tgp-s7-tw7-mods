.class public Lcom/android/launcher3/allapps/controller/AppsReorderController;
.super Ljava/lang/Object;
.source "AppsReorderController.java"


# static fields
.field private static final INVALID_DIRECTION:I = -0x64

.field public static final MODE_ACCEPT_DROP:I = 0x4

.field public static final MODE_DRAG_OVER:I = 0x1

.field public static final MODE_ON_DROP:I = 0x2

.field public static final MODE_ON_DROP_EXTERNAL:I = 0x3

.field public static final MODE_SHOW_REORDER_HINT:I = 0x0

.field public static final REMOVE_ANIMATION_DURATION:I = 0x96

.field public static final REORDER_ANIMATION_DURATION:I = 0x96

.field private static final REORDER_DEFAULT_DELAY_AMOUNT:I = 0x1e

.field public static final REORDER_LEFT_DIRECTION:I = 0x1

.field private static final REORDER_PREVIEW_MAGNITUDE:I = 0x14

.field public static final REORDER_RIGHT_DIRECTION:I = -0x1

.field public static final REORDER_TIMEOUT:I = 0x15e

.field private static final TAG:Ljava/lang/String; = "AppsReorderController"


# instance fields
.field private isOverLastItemMoved:Z

.field private mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

.field private mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

.field private mCountX:I

.field private mCountY:I

.field private mDirectionVector:[I

.field private mEmptyCell:I

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

.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private mLayout:Lcom/android/launcher3/common/base/view/CellLayout;

.field mOccupied:[[Z

.field private mOccupiedRect:Landroid/graphics/Rect;

.field private mOverLastItemFirstPage:I

.field private mOverLastItemLastPage:I

.field final mPendingAnimations:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field mPreviousReorderDirection:[I

.field private final mReorderAlarm:Lcom/android/launcher3/util/alarm/Alarm;

.field private final mTempLocation:[I

.field mTmpOccupied:[[Z

.field private final mTmpPoint:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/allapps/controller/AppsController;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appsController"    # Lcom/android/launcher3/allapps/controller/AppsController;

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mPendingAnimations:Ljava/util/HashMap;

    .line 39
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mTmpPoint:[I

    .line 40
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mTempLocation:[I

    .line 44
    iput v3, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mEmptyCell:I

    .line 48
    iput-boolean v1, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mItemPlacementDirty:Z

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mIntersectingViews:Ljava/util/ArrayList;

    .line 63
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mOccupiedRect:Landroid/graphics/Rect;

    .line 64
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mDirectionVector:[I

    .line 65
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mPreviousReorderDirection:[I

    .line 70
    new-instance v0, Lcom/android/launcher3/util/alarm/Alarm;

    invoke-direct {v0}, Lcom/android/launcher3/util/alarm/Alarm;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mReorderAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    .line 71
    iput v3, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mLastReorderX:I

    .line 72
    iput v3, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mLastReorderY:I

    .line 74
    iput v1, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mOverLastItemFirstPage:I

    .line 75
    iput v1, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mOverLastItemLastPage:I

    .line 76
    iput-boolean v1, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->isOverLastItemMoved:Z

    .line 79
    check-cast p1, Lcom/android/launcher3/Launcher;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 80
    iput-object p2, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    .line 82
    if-nez p2, :cond_0

    .line 83
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 86
    :cond_0
    invoke-virtual {p2}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsPagedView()Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    .line 87
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/allapps/controller/AppsReorderController;Lcom/android/launcher3/allapps/controller/DragAppIcon;III)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/allapps/controller/AppsReorderController;
    .param p1, "x1"    # Lcom/android/launcher3/allapps/controller/DragAppIcon;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->doRealTimeReorder(Lcom/android/launcher3/allapps/controller/DragAppIcon;III)V

    return-void
.end method

.method private doRealTimeReorder(Lcom/android/launcher3/allapps/controller/DragAppIcon;III)V
    .locals 8
    .param p1, "currentEmpty"    # Lcom/android/launcher3/allapps/controller/DragAppIcon;
    .param p2, "startPos"    # I
    .param p3, "endPos"    # I
    .param p4, "pageE"    # I

    .prologue
    .line 541
    const/high16 v2, 0x41f00000    # 30.0f

    .line 542
    .local v2, "delayAmount":F
    const/4 v5, 0x1

    .line 543
    .local v5, "direction":I
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AppsController;->isAlphabeticalMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 544
    const/4 v1, 0x0

    move-object v0, p0

    move v3, p2

    move v4, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->realTimeReorder(IFIIII)V

    .line 547
    :cond_0
    if-eqz p1, :cond_1

    iget-wide v0, p1, Lcom/android/launcher3/allapps/controller/DragAppIcon;->screenId:J

    int-to-long v6, p4

    cmp-long v0, v0, v6

    if-nez v0, :cond_1

    iget v0, p1, Lcom/android/launcher3/allapps/controller/DragAppIcon;->rank:I

    if-le v0, p2, :cond_1

    iget v0, p1, Lcom/android/launcher3/allapps/controller/DragAppIcon;->rank:I

    if-ge v0, p3, :cond_1

    .line 548
    iget v0, p1, Lcom/android/launcher3/allapps/controller/DragAppIcon;->rank:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lcom/android/launcher3/allapps/controller/DragAppIcon;->rank:I

    .line 550
    :cond_1
    return-void
.end method

.method private startDeleteAnimation(Landroid/animation/AnimatorSet;Lcom/android/launcher3/common/base/view/CellLayout;Landroid/view/View;)V
    .locals 6
    .param p1, "deleteAnimator"    # Landroid/animation/AnimatorSet;
    .param p2, "page"    # Lcom/android/launcher3/common/base/view/CellLayout;
    .param p3, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 619
    instance-of v0, p3, Lcom/android/launcher3/folder/view/FolderIconView;

    if-nez v0, :cond_0

    instance-of v0, p3, Lcom/android/launcher3/common/view/IconView;

    if-eqz v0, :cond_0

    move-object v0, p3

    .line 620
    check-cast v0, Lcom/android/launcher3/common/view/IconView;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/common/view/IconView;->markToRemove(Z)V

    .line 622
    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/animation/Animator;

    sget-object v1, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    .line 623
    invoke-virtual {v1}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [F

    aput v5, v2, v4

    invoke-static {p3, v1, v2}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v0, v4

    sget-object v1, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    .line 624
    invoke-virtual {v1}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [F

    aput v5, v2, v4

    invoke-static {p3, v1, v2}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    .line 625
    invoke-virtual {v2}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [F

    aput v5, v3, v4

    invoke-static {p3, v2, v3}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v0, v1

    .line 622
    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 626
    const-wide/16 v0, 0x96

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 627
    new-instance v0, Lcom/android/launcher3/allapps/controller/AppsReorderController$3;

    invoke-direct {v0, p0, p2, p3}, Lcom/android/launcher3/allapps/controller/AppsReorderController$3;-><init>(Lcom/android/launcher3/allapps/controller/AppsReorderController;Lcom/android/launcher3/common/base/view/CellLayout;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 638
    return-void
.end method


# virtual methods
.method public addViewForRankScreen(Landroid/view/View;Lcom/android/launcher3/common/base/item/ItemInfo;II)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;
    .param p3, "rank"    # I
    .param p4, "screen"    # I

    .prologue
    const/4 v5, 0x1

    .line 109
    move v8, p3

    .line 110
    .local v8, "pagePos":I
    move v7, p4

    .line 111
    .local v7, "pageNo":I
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountX()I

    move-result v6

    .line 113
    .local v6, "countX":I
    iput v8, p2, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    .line 114
    int-to-long v0, v7

    iput-wide v0, p2, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    .line 115
    rem-int v0, v8, v6

    iput v0, p2, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    .line 116
    div-int v0, v8, v6

    iput v0, p2, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    .line 117
    iput-boolean v5, p2, Lcom/android/launcher3/common/base/item/ItemInfo;->mDirty:Z

    .line 119
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    .line 120
    .local v4, "lp":Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;
    rem-int v0, v8, v6

    iput v0, v4, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellX:I

    .line 121
    div-int v0, v8, v6

    iput v0, v4, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellY:I

    .line 122
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v0, v7}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v0

    const/4 v2, -0x1

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, p2}, Lcom/android/launcher3/Launcher;->getViewIdForItem(Lcom/android/launcher3/common/base/item/ItemInfo;)I

    move-result v3

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/common/base/view/CellLayout;->addViewToCellLayout(Landroid/view/View;IILcom/android/launcher3/common/base/view/CellLayout$LayoutParams;Z)Z

    .line 123
    return-void
.end method

.method existsEmptyCell()Z
    .locals 3

    .prologue
    .line 398
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getNextPage()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getItemCountPageAt(I)I

    move-result v0

    .line 399
    .local v0, "c":I
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getMaxItemsPerScreen()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method findAllOccupiedCells()[Z
    .locals 10

    .prologue
    .line 369
    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v5}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getMaxItemsPerScreen()I

    move-result v0

    .line 370
    .local v0, "count":I
    new-array v3, v0, [Z

    .line 371
    .local v3, "ops":[Z
    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v5}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getNextPage()I

    move-result v1

    .line 372
    .local v1, "currentPageNum":I
    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mLauncher:Lcom/android/launcher3/Launcher;

    if-eqz v5, :cond_1

    .line 373
    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getLauncherModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/LauncherModel;->getAppsLoader()Lcom/android/launcher3/allapps/model/AppsLoader;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/allapps/model/AppsLoader;->getTopLevelItemsInApps()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 374
    .local v2, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-wide v6, v2, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    int-to-long v8, v1

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    .line 375
    iget v4, v2, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    .line 376
    .local v4, "pos":I
    if-ltz v4, :cond_0

    if-ge v4, v0, :cond_0

    .line 377
    iget v6, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mEmptyCell:I

    if-eq v4, v6, :cond_0

    .line 378
    const/4 v6, 0x1

    aput-boolean v6, v3, v4

    goto :goto_0

    .line 385
    .end local v2    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v4    # "pos":I
    :cond_1
    return-object v3
.end method

.method public findFirstEmptyCell()I
    .locals 3

    .prologue
    .line 389
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->findAllOccupiedCells()[Z

    move-result-object v1

    .line 391
    .local v1, "ops":[Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 392
    aget-boolean v2, v1, v0

    if-nez v2, :cond_0

    .line 394
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 391
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 394
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getExistOverLastItemMoved()Z
    .locals 1

    .prologue
    .line 429
    iget-boolean v0, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->isOverLastItemMoved:Z

    return v0
.end method

.method public getNumScreenNeededChange(I)I
    .locals 5
    .param p1, "startScreen"    # I

    .prologue
    .line 268
    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getMaxItemsPerScreen()I

    move-result v2

    .line 269
    .local v2, "maxItemCount":I
    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getPageCount()I

    move-result v3

    .line 270
    .local v3, "pageCount":I
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 271
    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v4, v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getItemCountPageAt(I)I

    move-result v1

    .line 272
    .local v1, "itemCountPageAt":I
    if-ge v1, v2, :cond_0

    .line 276
    .end local v0    # "i":I
    .end local v1    # "itemCountPageAt":I
    :goto_1
    return v0

    .line 270
    .restart local v0    # "i":I
    .restart local v1    # "itemCountPageAt":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 276
    .end local v1    # "itemCountPageAt":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getNumScreenNeededChangeForMakeEmptyCellAndReorder(I)I
    .locals 5
    .param p1, "startScreen"    # I

    .prologue
    .line 238
    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getMaxItemsPerScreen()I

    move-result v2

    .line 239
    .local v2, "maxItemCount":I
    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getPageCount()I

    move-result v3

    .line 240
    .local v3, "pageCount":I
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 241
    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v4, v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getItemCountPageAt(I)I

    move-result v1

    .line 242
    .local v1, "itemCountPageAt":I
    if-ge v1, v2, :cond_0

    .line 247
    .end local v0    # "i":I
    .end local v1    # "itemCountPageAt":I
    :goto_1
    return v0

    .line 240
    .restart local v0    # "i":I
    .restart local v1    # "itemCountPageAt":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 247
    .end local v1    # "itemCountPageAt":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getOverLastItemFirstPage()I
    .locals 1

    .prologue
    .line 437
    iget v0, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mOverLastItemFirstPage:I

    return v0
.end method

.method public getOverLastItemLastPage()I
    .locals 1

    .prologue
    .line 441
    iget v0, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mOverLastItemLastPage:I

    return v0
.end method

.method public makeEmptyCellAndReorder(II)V
    .locals 11
    .param p1, "screenId"    # I
    .param p2, "rank"    # I

    .prologue
    .line 202
    if-ltz p2, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getMaxItemsPerScreen()I

    move-result v0

    if-lt p2, v0, :cond_2

    .line 203
    :cond_0
    const-string v0, "AppsReorderController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "rank position = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is wrong"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :cond_1
    :goto_0
    return-void

    .line 208
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getItemCountPageAt(I)I

    move-result v3

    .line 210
    .local v3, "startPos":I
    if-gt v3, p2, :cond_3

    .line 211
    const-string v0, "AppsReorderController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "startPos = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " rank = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", startPos <= rank"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 214
    :cond_3
    move v4, p2

    .line 215
    .local v4, "endPos":I
    move v6, p1

    .line 216
    .local v6, "movePage":I
    const/4 v5, -0x1

    .line 217
    .local v5, "direction":I
    const/4 v1, 0x0

    .line 218
    .local v1, "delay":I
    const/high16 v2, 0x41f00000    # 30.0f

    .line 220
    .local v2, "delayAmount":F
    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->getNumScreenNeededChangeForMakeEmptyCellAndReorder(I)I

    move-result v8

    .line 222
    .local v8, "pageNum":I
    move v7, v8

    .local v7, "i":I
    :goto_1
    if-lt v7, p1, :cond_1

    .line 223
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v0, v7}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getItemCountPageAt(I)I

    move-result v0

    iget-object v9, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v9}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getMaxItemsPerScreen()I

    move-result v9

    if-ne v0, v9, :cond_4

    .line 224
    invoke-virtual {p0, v1, v2, v7}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->overLastItemNextScreenForMakeEmptyCellAndReorder(IFI)V

    .line 226
    :cond_4
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v0, v7}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getItemCountPageAt(I)I

    move-result v3

    .line 227
    if-ne p1, v7, :cond_5

    .line 228
    move v4, p2

    .line 232
    :goto_2
    move v6, v7

    move-object v0, p0

    .line 233
    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->realTimeReorder(IFIIII)V

    .line 222
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 230
    :cond_5
    const/4 v4, 0x0

    goto :goto_2
.end method

.method public overLastItemNextScreen(IFI)V
    .locals 5
    .param p1, "delay"    # I
    .param p2, "delayAmount"    # F
    .param p3, "movePage"    # I

    .prologue
    .line 280
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getPageCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge p3, v2, :cond_1

    .line 281
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2, p3}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v0

    .line 282
    .local v0, "page":Lcom/android/launcher3/common/base/view/CellLayout;
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountX()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountY()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/common/base/view/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v1

    .line 283
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 284
    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/base/view/CellLayout;->removeView(Landroid/view/View;)V

    .line 285
    add-int/lit8 v2, p3, 0x1

    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getExtraEmptyScreenIndex()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 286
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->commitExtraEmptyScreen()I

    .line 288
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/item/ItemInfo;

    const/4 v3, 0x0

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->addViewForRankScreen(Landroid/view/View;Lcom/android/launcher3/common/base/item/ItemInfo;II)V

    .line 289
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->setExistOverLastItemMoved(Z)V

    .line 290
    const-string v2, "AppsReorderController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "overLastItemNextScreen to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    .end local v0    # "page":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v1    # "v":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public overLastItemNextScreenForMakeEmptyCellAndReorder(IFI)V
    .locals 5
    .param p1, "delay"    # I
    .param p2, "delayAmount"    # F
    .param p3, "movePage"    # I

    .prologue
    .line 251
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getPageCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge p3, v2, :cond_1

    .line 252
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2, p3}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v0

    .line 254
    .local v0, "page":Lcom/android/launcher3/common/base/view/CellLayout;
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountX()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountY()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/common/base/view/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v1

    .line 255
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 256
    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/base/view/CellLayout;->removeView(Landroid/view/View;)V

    .line 257
    add-int/lit8 v2, p3, 0x1

    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getExtraEmptyScreenIndex()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 258
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->commitExtraEmptyScreen()I

    .line 260
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/item/ItemInfo;

    const/4 v3, 0x0

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->addViewForRankScreen(Landroid/view/View;Lcom/android/launcher3/common/base/item/ItemInfo;II)V

    .line 263
    .end local v0    # "page":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v1    # "v":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public realTimeReorder(IFIIII)V
    .locals 15
    .param p1, "delay"    # I
    .param p2, "delayAmount"    # F
    .param p3, "startPos"    # I
    .param p4, "endPos"    # I
    .param p5, "direction"    # I
    .param p6, "movePage"    # I

    .prologue
    .line 336
    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    move/from16 v0, p6

    invoke-virtual {v3, v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getItemCountPageAt(I)I

    move-result v3

    if-gtz v3, :cond_1

    .line 366
    :cond_0
    :goto_0
    return-void

    .line 339
    :cond_1
    const-string v3, "AppsReorderController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startPos : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / endPos : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / direction : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / movePage : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p6

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountX()I

    move-result v10

    .line 343
    .local v10, "countX":I
    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountY()I

    move-result v11

    .line 344
    .local v11, "countY":I
    sub-int v3, p4, p3

    if-lez v3, :cond_2

    if-gtz p5, :cond_3

    :cond_2
    sub-int v3, p4, p3

    if-gez v3, :cond_6

    if-gez p5, :cond_6

    .line 345
    :cond_3
    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    move/from16 v0, p6

    invoke-virtual {v3, v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v1

    .line 346
    .local v1, "page":Lcom/android/launcher3/common/base/view/CellLayout;
    move/from16 v12, p3

    .local v12, "i":I
    :goto_1
    move/from16 v0, p4

    if-eq v12, v0, :cond_0

    .line 347
    const/4 v14, -0x1

    .line 348
    .local v14, "rank":I
    add-int v13, v12, p5

    .line 349
    .local v13, "nextPos":I
    rem-int v3, v13, v10

    div-int v4, v13, v10

    invoke-virtual {v1, v3, v4}, Lcom/android/launcher3/common/base/view/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v2

    .line 350
    .local v2, "v":Landroid/view/View;
    if-eqz v2, :cond_4

    .line 351
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget v14, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    .line 352
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/base/item/ItemInfo;

    sub-int v4, v14, p5

    iput v4, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    .line 353
    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/controller/AppsController;->getViewType()Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    move-result-object v3

    sget-object v4, Lcom/android/launcher3/allapps/controller/AppsController$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    if-eq v3, v4, :cond_4

    .line 354
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/base/item/ItemInfo;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->mDirty:Z

    .line 357
    :cond_4
    div-int v3, v12, v10

    if-ge v3, v11, :cond_5

    rem-int v3, v12, v10

    div-int v4, v12, v10

    const/16 v5, 0x96

    const/4 v7, 0x1

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mTmpOccupied:[[Z

    move/from16 v6, p1

    .line 358
    invoke-virtual/range {v1 .. v9}, Lcom/android/launcher3/common/base/view/CellLayout;->animateChildToPosition(Landroid/view/View;IIIIZZ[[Z)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 359
    move/from16 v0, p1

    int-to-float v3, v0

    add-float v3, v3, p2

    float-to-int v0, v3

    move/from16 p1, v0

    .line 360
    const v3, 0x3f666666    # 0.9f

    mul-float p2, p2, v3

    .line 346
    :cond_5
    add-int v12, v12, p5

    goto :goto_1

    .line 364
    .end local v1    # "page":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v2    # "v":Landroid/view/View;
    .end local v12    # "i":I
    .end local v13    # "nextPos":I
    .end local v14    # "rank":I
    :cond_6
    const-string v3, "AppsReorderController"

    const-string v4, "direction is not valid"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public realTimeReorder(Lcom/android/launcher3/allapps/controller/DragAppIcon;Lcom/android/launcher3/allapps/controller/DragAppIcon;)V
    .locals 15
    .param p1, "empty"    # Lcom/android/launcher3/allapps/controller/DragAppIcon;
    .param p2, "target"    # Lcom/android/launcher3/allapps/controller/DragAppIcon;

    .prologue
    .line 132
    const/4 v2, 0x0

    .line 133
    .local v2, "delay":I
    const/high16 v3, 0x41f00000    # 30.0f

    .line 135
    .local v3, "delayAmount":F
    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher3/allapps/controller/DragAppIcon;->getScreenId()I

    move-result v11

    .line 136
    .local v11, "pageT":I
    move-object/from16 v0, p2

    iget v13, v0, Lcom/android/launcher3/allapps/controller/DragAppIcon;->rank:I

    .line 138
    .local v13, "rankT":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/allapps/controller/DragAppIcon;->getScreenId()I

    move-result v9

    .line 139
    .local v9, "pageE":I
    move-object/from16 v0, p1

    iget v12, v0, Lcom/android/launcher3/allapps/controller/DragAppIcon;->rank:I

    .line 141
    .local v12, "rankE":I
    const/4 v4, 0x0

    .local v4, "startPos":I
    const/4 v5, 0x0

    .line 142
    .local v5, "endPos":I
    const/16 v6, -0x64

    .line 143
    .local v6, "direction":I
    move v7, v9

    .line 145
    .local v7, "movePage":I
    if-ne v9, v11, :cond_2

    .line 146
    move v4, v12

    .line 147
    move v5, v13

    .line 149
    if-le v13, v12, :cond_1

    .line 150
    const/4 v6, 0x1

    :goto_0
    move-object v1, p0

    .line 156
    invoke-virtual/range {v1 .. v7}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->realTimeReorder(IFIIII)V

    .line 198
    :cond_0
    return-void

    .line 151
    :cond_1
    if-ge v13, v12, :cond_0

    .line 152
    const/4 v6, -0x1

    goto :goto_0

    .line 159
    :cond_2
    move v4, v12

    .line 161
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v1, v9}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getItemCountPageAt(I)I

    move-result v5

    .line 162
    move v7, v9

    .line 164
    const/4 v6, 0x1

    move-object v1, p0

    .line 167
    invoke-virtual/range {v1 .. v7}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->realTimeReorder(IFIIII)V

    .line 169
    invoke-virtual {p0, v11}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->getNumScreenNeededChange(I)I

    move-result v10

    .line 171
    .local v10, "pageNum":I
    iput v10, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mOverLastItemLastPage:I

    .line 172
    iput v11, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mOverLastItemFirstPage:I

    .line 174
    move v8, v10

    .local v8, "i":I
    :goto_1
    if-lt v8, v11, :cond_0

    .line 175
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v1, v8}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getItemCountPageAt(I)I

    move-result v1

    iget-object v14, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v14}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getMaxItemsPerScreen()I

    move-result v14

    if-lt v1, v14, :cond_3

    .line 176
    invoke-virtual {p0, v2, v3, v8}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->overLastItemNextScreen(IFI)V

    .line 181
    :cond_3
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v1, v8}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getItemCountPageAt(I)I

    move-result v4

    .line 182
    if-ne v11, v8, :cond_5

    .line 183
    move v5, v13

    .line 188
    :goto_2
    move v7, v8

    .line 189
    const/4 v6, 0x1

    .line 190
    if-le v4, v5, :cond_4

    .line 192
    const/4 v6, -0x1

    :cond_4
    move-object v1, p0

    .line 195
    invoke-virtual/range {v1 .. v7}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->realTimeReorder(IFIIII)V

    .line 174
    add-int/lit8 v8, v8, -0x1

    goto :goto_1

    .line 185
    :cond_5
    const/4 v5, 0x0

    goto :goto_2
.end method

.method public removeEmptyCell(Lcom/android/launcher3/allapps/controller/DragAppIcon;)V
    .locals 10
    .param p1, "empty"    # Lcom/android/launcher3/allapps/controller/DragAppIcon;

    .prologue
    .line 445
    const/high16 v2, 0x41f00000    # 30.0f

    .line 448
    .local v2, "delayAmount":F
    const/4 v5, 0x1

    .line 450
    .local v5, "direction":I
    iget v8, p1, Lcom/android/launcher3/allapps/controller/DragAppIcon;->rank:I

    .line 451
    .local v8, "rankE":I
    invoke-virtual {p1}, Lcom/android/launcher3/allapps/controller/DragAppIcon;->getScreenId()I

    move-result v6

    .line 453
    .local v6, "pageE":I
    move v3, v8

    .line 454
    .local v3, "startPos":I
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v0, v6}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getItemCountPageAt(I)I

    move-result v4

    .line 456
    .local v4, "endPos":I
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v0, v6}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v7

    .line 457
    .local v7, "page":Lcom/android/launcher3/common/base/view/CellLayout;
    if-nez v7, :cond_0

    .line 458
    const-string v0, "AppsReorderController"

    const-string v1, "This was removed!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    :goto_0
    return-void

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountX()I

    move-result v0

    rem-int v0, v3, v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountX()I

    move-result v1

    div-int v1, v3, v1

    invoke-virtual {v7, v0, v1}, Lcom/android/launcher3/common/base/view/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v9

    .line 462
    .local v9, "v":Landroid/view/View;
    if-eqz v9, :cond_1

    .line 463
    const-string v0, "AppsReorderController"

    const-string v1, "This cell is not empty cell!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 467
    :cond_1
    const/4 v1, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->realTimeReorder(IFIIII)V

    goto :goto_0
.end method

.method public removeEmptyCellAtPage(IIIZ)V
    .locals 17
    .param p1, "startPos"    # I
    .param p2, "endPos"    # I
    .param p3, "pageIndex"    # I
    .param p4, "animate"    # Z

    .prologue
    .line 592
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountX()I

    move-result v2

    .line 593
    .local v2, "countX":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v14

    .line 594
    .local v14, "page":Lcom/android/launcher3/common/base/view/CellLayout;
    if-nez v14, :cond_1

    .line 595
    const-string v3, "AppsReorderController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "page is not exist : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    :cond_0
    return-void

    .line 599
    :cond_1
    const/4 v5, 0x0

    .line 600
    .local v5, "pageRank":I
    const/4 v15, 0x0

    .line 601
    .local v15, "startDelay":I
    const/high16 v12, 0x41f00000    # 30.0f

    .line 602
    .local v12, "delayAmount":F
    move/from16 v13, p1

    .local v13, "i":I
    :goto_0
    move/from16 v0, p2

    if-gt v13, v0, :cond_0

    .line 603
    rem-int v3, v13, v2

    div-int v6, v13, v2

    invoke-virtual {v14, v3, v6}, Lcom/android/launcher3/common/base/view/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v16

    check-cast v16, Lcom/android/launcher3/common/view/IconView;

    .line 604
    .local v16, "v":Lcom/android/launcher3/common/view/IconView;
    if-eqz v16, :cond_3

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher3/common/view/IconView;->isMarkToRemove()Z

    move-result v3

    if-nez v3, :cond_3

    .line 605
    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher3/common/view/IconView;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 606
    .local v4, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    if-eq v13, v5, :cond_2

    .line 607
    move/from16 v0, p3

    int-to-long v6, v0

    if-eqz p4, :cond_4

    int-to-float v3, v15

    add-float/2addr v3, v12

    float-to-int v15, v3

    int-to-long v8, v15

    :goto_1
    if-eqz p4, :cond_5

    const/4 v10, -0x1

    :goto_2
    const/4 v11, 0x0

    check-cast v11, [[Z

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v11}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->updateItemToNewPosition(Lcom/android/launcher3/common/base/item/ItemInfo;IJJI[[Z)V

    .line 609
    const v3, 0x3f666666    # 0.9f

    mul-float/2addr v12, v3

    .line 610
    int-to-float v3, v15

    add-float/2addr v3, v12

    float-to-int v15, v3

    .line 611
    const/4 v3, 0x1

    iput-boolean v3, v4, Lcom/android/launcher3/common/base/item/ItemInfo;->mDirty:Z

    .line 613
    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 602
    .end local v4    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 607
    .restart local v4    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_4
    const-wide/16 v8, 0x0

    goto :goto_1

    :cond_5
    const/4 v10, 0x0

    goto :goto_2
.end method

.method public removeEmptyCellsAndViews(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 553
    .local p1, "removeItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->removeEmptyCellsAndViews(Ljava/util/ArrayList;Z)V

    .line 554
    return-void
.end method

.method public removeEmptyCellsAndViews(Ljava/util/ArrayList;Lcom/android/launcher3/allapps/controller/DragAppIcon;Z)V
    .locals 17
    .param p2, "currentEmpty"    # Lcom/android/launcher3/allapps/controller/DragAppIcon;
    .param p3, "animate"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/allapps/controller/DragAppIcon;",
            ">;",
            "Lcom/android/launcher3/allapps/controller/DragAppIcon;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 473
    .local p1, "listToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/allapps/controller/DragAppIcon;>;"
    new-instance v2, Lcom/android/launcher3/allapps/controller/AppsReorderController$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/launcher3/allapps/controller/AppsReorderController$1;-><init>(Lcom/android/launcher3/allapps/controller/AppsReorderController;)V

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 480
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountX()I

    move-result v10

    .line 482
    .local v10, "countX":I
    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v12

    .line 484
    .local v12, "removeViewAnimSet":Landroid/animation/AnimatorSet;
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_0
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher3/allapps/controller/DragAppIcon;

    .line 485
    .local v11, "empty":Lcom/android/launcher3/allapps/controller/DragAppIcon;
    iget v7, v11, Lcom/android/launcher3/allapps/controller/DragAppIcon;->rank:I

    .line 487
    .local v7, "startPos":I
    invoke-virtual {v11}, Lcom/android/launcher3/allapps/controller/DragAppIcon;->getScreenId()I

    move-result v9

    .line 489
    .local v9, "pageE":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2, v9}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v4

    .line 490
    .local v4, "page":Lcom/android/launcher3/common/base/view/CellLayout;
    if-nez v4, :cond_2

    .line 491
    const-string v2, "AppsReorderController"

    const-string v3, "This was removed!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    .end local v4    # "page":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v7    # "startPos":I
    .end local v9    # "pageE":I
    .end local v11    # "empty":Lcom/android/launcher3/allapps/controller/DragAppIcon;
    :cond_1
    :goto_1
    return-void

    .line 494
    .restart local v4    # "page":Lcom/android/launcher3/common/base/view/CellLayout;
    .restart local v7    # "startPos":I
    .restart local v9    # "pageE":I
    .restart local v11    # "empty":Lcom/android/launcher3/allapps/controller/DragAppIcon;
    :cond_2
    if-gez v7, :cond_3

    .line 495
    const-string v2, "AppsReorderController"

    const-string v3, "startPos is invalid!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 499
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2, v9}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getItemCountPageAt(I)I

    move-result v8

    .line 500
    .local v8, "endPos":I
    rem-int v2, v7, v10

    div-int v3, v7, v10

    invoke-virtual {v4, v2, v3}, Lcom/android/launcher3/common/base/view/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v5

    .line 501
    .local v5, "v":Landroid/view/View;
    if-eqz v5, :cond_6

    .line 502
    if-nez p3, :cond_4

    .line 503
    invoke-virtual {v4, v5}, Lcom/android/launcher3/common/base/view/CellLayout;->removeView(Landroid/view/View;)V

    .line 531
    :goto_2
    if-nez p3, :cond_0

    .line 532
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v7, v8, v9}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->doRealTimeReorder(Lcom/android/launcher3/allapps/controller/DragAppIcon;III)V

    goto :goto_0

    .line 505
    :cond_4
    instance-of v2, v5, Lcom/android/launcher3/folder/view/FolderIconView;

    if-nez v2, :cond_5

    instance-of v2, v5, Lcom/android/launcher3/common/view/IconView;

    if-eqz v2, :cond_5

    move-object v2, v5

    .line 506
    check-cast v2, Lcom/android/launcher3/common/view/IconView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/launcher3/common/view/IconView;->markToRemove(Z)V

    .line 508
    :cond_5
    const/4 v2, 0x3

    new-array v2, v2, [Landroid/animation/Animator;

    const/4 v3, 0x0

    sget-object v6, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    .line 509
    invoke-virtual {v6}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v14, 0x1

    new-array v14, v14, [F

    const/4 v15, 0x0

    const/16 v16, 0x0

    aput v16, v14, v15

    invoke-static {v5, v6, v14}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v2, v3

    const/4 v3, 0x1

    sget-object v6, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    .line 510
    invoke-virtual {v6}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v14, 0x1

    new-array v14, v14, [F

    const/4 v15, 0x0

    const/16 v16, 0x0

    aput v16, v14, v15

    invoke-static {v5, v6, v14}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v2, v3

    const/4 v3, 0x2

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    .line 511
    invoke-virtual {v6}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v14, 0x1

    new-array v14, v14, [F

    const/4 v15, 0x0

    const/16 v16, 0x0

    aput v16, v14, v15

    invoke-static {v5, v6, v14}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v2, v3

    .line 508
    invoke-virtual {v12, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 512
    const-wide/16 v2, 0x96

    invoke-virtual {v12, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 513
    new-instance v2, Lcom/android/launcher3/allapps/controller/AppsReorderController$2;

    move-object/from16 v3, p0

    move-object/from16 v6, p2

    invoke-direct/range {v2 .. v9}, Lcom/android/launcher3/allapps/controller/AppsReorderController$2;-><init>(Lcom/android/launcher3/allapps/controller/AppsReorderController;Lcom/android/launcher3/common/base/view/CellLayout;Landroid/view/View;Lcom/android/launcher3/allapps/controller/DragAppIcon;III)V

    invoke-virtual {v12, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_2

    .line 528
    :cond_6
    const-string v2, "AppsReorderController"

    const-string v3, "This cell is already removed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 535
    .end local v4    # "page":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v5    # "v":Landroid/view/View;
    .end local v7    # "startPos":I
    .end local v8    # "endPos":I
    .end local v9    # "pageE":I
    .end local v11    # "empty":Lcom/android/launcher3/allapps/controller/DragAppIcon;
    :cond_7
    if-eqz p3, :cond_1

    .line 536
    invoke-virtual {v12}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_1
.end method

.method public removeEmptyCellsAndViews(Ljava/util/ArrayList;Z)V
    .locals 16
    .param p2, "animate"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 557
    .local p1, "removeItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 558
    .local v3, "dirtyScreen":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    if-eqz p2, :cond_2

    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v2

    .line 559
    .local v2, "deleteAnimator":Landroid/animation/AnimatorSet;
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 560
    .local v5, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    iget-wide v12, v5, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    invoke-virtual {v11, v12, v13}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsIconByItemId(J)Landroid/view/View;

    move-result-object v7

    .line 561
    .local v7, "v":Landroid/view/View;
    if-eqz v7, :cond_1

    .line 562
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    iget-wide v12, v5, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    long-to-int v12, v12

    invoke-virtual {v11, v12}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v6

    .line 563
    .local v6, "parent":Lcom/android/launcher3/common/base/view/CellLayout;
    if-eqz v6, :cond_4

    .line 564
    if-eqz p2, :cond_3

    .line 565
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6, v7}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->startDeleteAnimation(Landroid/animation/AnimatorSet;Lcom/android/launcher3/common/base/view/CellLayout;Landroid/view/View;)V

    .line 573
    .end local v6    # "parent":Lcom/android/launcher3/common/base/view/CellLayout;
    :cond_1
    :goto_2
    iget-wide v12, v5, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 574
    iget-wide v12, v5, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 558
    .end local v2    # "deleteAnimator":Landroid/animation/AnimatorSet;
    .end local v5    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v7    # "v":Landroid/view/View;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 567
    .restart local v2    # "deleteAnimator":Landroid/animation/AnimatorSet;
    .restart local v5    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    .restart local v6    # "parent":Lcom/android/launcher3/common/base/view/CellLayout;
    .restart local v7    # "v":Landroid/view/View;
    :cond_3
    invoke-virtual {v6, v7}, Lcom/android/launcher3/common/base/view/CellLayout;->removeView(Landroid/view/View;)V

    goto :goto_2

    .line 570
    :cond_4
    const-string v11, "AppsReorderController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "celllayout is not exist : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-wide v14, v5, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 577
    .end local v5    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v6    # "parent":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v7    # "v":Landroid/view/View;
    :cond_5
    if-eqz v2, :cond_6

    .line 578
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 581
    :cond_6
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v10}, Lcom/android/launcher3/allapps/controller/AppsController;->getViewType()Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    move-result-object v10

    sget-object v11, Lcom/android/launcher3/allapps/controller/AppsController$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    if-ne v10, v11, :cond_8

    .line 589
    :cond_7
    return-void

    .line 585
    :cond_8
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 586
    .local v8, "screen":J
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v10}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountX()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v12}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountY()I

    move-result v12

    mul-int/2addr v10, v12

    add-int/lit8 v4, v10, -0x1

    .line 587
    .local v4, "endPos":I
    const/4 v10, 0x0

    long-to-int v12, v8

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v10, v4, v12, v1}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->removeEmptyCellAtPage(IIIZ)V

    goto :goto_3
.end method

.method public setEmptyCell(I)V
    .locals 0
    .param p1, "empty"    # I

    .prologue
    .line 332
    iput p1, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mEmptyCell:I

    .line 333
    return-void
.end method

.method public setExistOverLastItemMoved(Z)V
    .locals 0
    .param p1, "moved"    # Z

    .prologue
    .line 433
    iput-boolean p1, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->isOverLastItemMoved:Z

    .line 434
    return-void
.end method

.method protected setItemLocation(Lcom/android/launcher3/common/base/item/ItemInfo;IJ)V
    .locals 3
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;
    .param p2, "position"    # I
    .param p3, "screen"    # J

    .prologue
    .line 421
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 422
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid position"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 424
    :cond_0
    iput-wide p3, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    .line 425
    iput p2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    .line 426
    return-void
.end method

.method public setReorderTarget(Lcom/android/launcher3/common/base/view/CellLayout;)V
    .locals 3
    .param p1, "layout"    # Lcom/android/launcher3/common/base/view/CellLayout;

    .prologue
    const/16 v2, -0x64

    .line 90
    iput-object p1, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    .line 92
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountX()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mCountX:I

    .line 94
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountY()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mCountY:I

    .line 96
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->getOccupied()[[Z

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mOccupied:[[Z

    .line 97
    iget v0, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mCountX:I

    iget v1, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mCountY:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mTmpOccupied:[[Z

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mPreviousReorderDirection:[I

    const/4 v1, 0x0

    aput v2, v0, v1

    .line 101
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mPreviousReorderDirection:[I

    const/4 v1, 0x1

    aput v2, v0, v1

    .line 102
    return-void
.end method

.method public undoOverLastItemNextScreen(IFI)V
    .locals 5
    .param p1, "delay"    # I
    .param p2, "delayAmount"    # F
    .param p3, "movePage"    # I

    .prologue
    const/4 v3, 0x0

    .line 319
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getPageCount()I

    move-result v2

    if-ge p3, v2, :cond_0

    .line 320
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2, p3}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v0

    .line 321
    .local v0, "page":Lcom/android/launcher3/common/base/view/CellLayout;
    invoke-virtual {v0, v3, v3}, Lcom/android/launcher3/common/base/view/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v1

    .line 322
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 323
    const-string v3, "AppsReorderController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "undoOverLastItemNextScreen : movePage = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " v = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-object v2, v2, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/base/view/CellLayout;->removeView(Landroid/view/View;)V

    .line 326
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getMaxItemsPerScreen()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->addViewForRankScreen(Landroid/view/View;Lcom/android/launcher3/common/base/item/ItemInfo;II)V

    .line 329
    .end local v0    # "page":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v1    # "v":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public undoOverLastItems()V
    .locals 11

    .prologue
    const/16 v1, 0x1e

    const/4 v2, 0x0

    .line 296
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->getOverLastItemFirstPage()I

    move-result v7

    .line 297
    .local v7, "firstPage":I
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->getOverLastItemLastPage()I

    move-result v8

    .line 299
    .local v8, "lastPage":I
    move v6, v7

    .local v6, "movePage":I
    :goto_0
    if-gt v6, v8, :cond_2

    .line 300
    const/4 v3, 0x0

    .line 301
    .local v3, "startPos":I
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v0, v6}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getItemCountPageAt(I)I

    move-result v4

    .line 302
    .local v4, "endPos":I
    const/4 v5, 0x1

    .line 303
    .local v5, "direction":I
    const-string v0, "AppsReorderController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "movePage : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "endPos : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    if-eq v6, v7, :cond_0

    move-object v0, p0

    .line 307
    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->realTimeReorder(IFIIII)V

    .line 310
    :cond_0
    if-eq v6, v8, :cond_1

    .line 311
    add-int/lit8 v0, v6, 0x1

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->undoOverLastItemNextScreen(IFI)V

    .line 299
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 314
    .end local v3    # "startPos":I
    .end local v4    # "endPos":I
    .end local v5    # "direction":I
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->setExistOverLastItemMoved(Z)V

    .line 315
    return-void
.end method

.method public updateItemToNewPosition(Lcom/android/launcher3/common/base/item/ItemInfo;IJ)V
    .locals 11
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;
    .param p2, "pos"    # I
    .param p3, "startDelay"    # J

    .prologue
    .line 403
    iget-wide v4, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    const/4 v8, -0x1

    iget-object v9, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mTmpOccupied:[[Z

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v6, p3

    invoke-virtual/range {v1 .. v9}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->updateItemToNewPosition(Lcom/android/launcher3/common/base/item/ItemInfo;IJJI[[Z)V

    .line 404
    return-void
.end method

.method public updateItemToNewPosition(Lcom/android/launcher3/common/base/item/ItemInfo;IJJI[[Z)V
    .locals 9
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;
    .param p2, "pos"    # I
    .param p3, "screen"    # J
    .param p5, "startDelay"    # J
    .param p7, "duration"    # I
    .param p8, "occupied"    # [[Z

    .prologue
    .line 407
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    long-to-int v3, p3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v0

    .line 408
    .local v0, "page":Lcom/android/launcher3/common/base/view/CellLayout;
    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(Lcom/android/launcher3/common/base/item/ItemInfo;)Landroid/view/View;

    move-result-object v1

    .line 409
    .local v1, "v":Landroid/view/View;
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->setItemLocation(Lcom/android/launcher3/common/base/item/ItemInfo;IJ)V

    .line 410
    if-gez p7, :cond_0

    const/16 p7, 0x96

    .line 411
    :cond_0
    iget v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountX()I

    move-result v3

    rem-int/2addr v2, v3

    iget v3, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountX()I

    move-result v4

    div-int/2addr v3, v4

    long-to-int v5, p5

    const/4 v6, 0x1

    const/4 v7, 0x1

    move/from16 v4, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/android/launcher3/common/base/view/CellLayout;->animateChildToPosition(Landroid/view/View;IIIIZZ[[Z)Z

    .line 413
    return-void
.end method
