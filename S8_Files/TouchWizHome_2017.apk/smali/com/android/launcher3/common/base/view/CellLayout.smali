.class public abstract Lcom/android/launcher3/common/base/view/CellLayout;
.super Landroid/view/ViewGroup;
.source "CellLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/common/base/view/CellLayout$CrossHairView;,
        Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;,
        Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;
    }
.end annotation


# static fields
.field private static final BADGE_SCALE_ANIM_DURATION:I = 0xc8

.field private static final CREATE_FOLDER_SCALE:F = 0.3f

.field private static final CREATE_FOLDER_SCALE_DURATION:I = 0x14d

.field static final TAG:Ljava/lang/String; = "CellLayout"

.field private static sCrosshairsDrawable:Landroid/graphics/drawable/Drawable;

.field private static final sPaint:Landroid/graphics/Paint;


# instance fields
.field private mBackgroundAlpha:F

.field protected mCellHeight:I

.field protected mCellWidth:I

.field protected mChildren:Lcom/android/launcher3/common/base/view/CellLayoutChildren;

.field protected mCountX:I

.field protected mCountY:I

.field protected mCrossHairView:Lcom/android/launcher3/common/base/view/CellLayout$CrossHairView;

.field private final mDragCell:[I

.field private mDragOutlineAlphas:[F

.field private mDragOutlineAnims:[Lcom/android/launcher3/util/animation/InterruptibleInOutAnimator;

.field private mDragOutlineCurrent:I

.field private mDragOutlines:[Landroid/graphics/Rect;

.field private final mDragSpan:[I

.field private mDragging:Z

.field private mEaseOutInterpolator:Landroid/animation/TimeInterpolator;

.field protected mFixedCellHeight:I

.field protected mFixedCellWidth:I

.field private mFixedHeight:I

.field private mFixedWidth:I

.field private mFolderOuterRings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;",
            ">;"
        }
    .end annotation
.end field

.field protected mHeightGap:I

.field protected mLauncher:Lcom/android/launcher3/Launcher;

.field protected mOccupied:[[Z

.field private mReorderAnimators:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempLocation:[I

.field private final mTempRect:Landroid/graphics/Rect;

.field protected final mTempRectStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpPoint:[I

.field protected mWidthGap:I

.field private targetView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 120
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/launcher3/common/base/view/CellLayout;->sPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 126
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/common/base/view/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 127
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 130
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/common/base/view/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 131
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x2

    const/4 v5, 0x0

    const/4 v3, -0x1

    .line 135
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 82
    new-array v1, v2, [I

    iput-object v1, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mTmpPoint:[I

    .line 83
    new-array v1, v2, [I

    iput-object v1, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mTempLocation:[I

    .line 87
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mFolderOuterRings:Ljava/util/ArrayList;

    .line 92
    iput v3, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mFixedWidth:I

    .line 93
    iput v3, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mFixedHeight:I

    .line 97
    const/4 v1, 0x4

    new-array v1, v1, [Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    .line 98
    iget-object v1, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    array-length v1, v1

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mDragOutlineAlphas:[F

    .line 99
    iget-object v1, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    array-length v1, v1

    new-array v1, v1, [Lcom/android/launcher3/util/animation/InterruptibleInOutAnimator;

    iput-object v1, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher3/util/animation/InterruptibleInOutAnimator;

    .line 103
    iput v5, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mDragOutlineCurrent:I

    .line 105
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mReorderAnimators:Ljava/util/HashMap;

    .line 108
    new-array v1, v2, [I

    iput-object v1, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mDragCell:[I

    .line 109
    new-array v1, v2, [I

    iput-object v1, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mDragSpan:[I

    .line 111
    iput-boolean v5, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mDragging:Z

    .line 118
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mTempRect:Landroid/graphics/Rect;

    .line 123
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher3/common/base/view/CellLayout;->targetView:Landroid/view/View;

    .line 904
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mTempRectStack:Ljava/util/Stack;

    .line 139
    invoke-virtual {p0, v5}, Lcom/android/launcher3/common/base/view/CellLayout;->setWillNotDraw(Z)V

    .line 140
    invoke-virtual {p0, v5}, Lcom/android/launcher3/common/base/view/CellLayout;->setClipToPadding(Z)V

    move-object v1, p1

    .line 141
    check-cast v1, Lcom/android/launcher3/Launcher;

    iput-object v1, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 143
    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/base/view/CellLayout;->initChildren(Landroid/content/Context;)V

    .line 144
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/CellLayout;->setCellDimensions()V

    .line 146
    iget v1, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCountX:I

    iget v2, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCountY:I

    filled-new-array {v1, v2}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Z

    iput-object v1, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mOccupied:[[Z

    .line 148
    invoke-virtual {p0, v5}, Lcom/android/launcher3/common/base/view/CellLayout;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 151
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x40200000    # 2.5f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v1, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    .line 152
    iget-object v1, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mDragCell:[I

    iget-object v2, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mDragCell:[I

    aput v3, v2, v10

    aput v3, v1, v5

    .line 153
    iget-object v1, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mDragSpan:[I

    iget-object v2, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mDragSpan:[I

    aput v3, v2, v10

    aput v3, v1, v5

    .line 154
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    array-length v1, v1

    if-ge v7, v1, :cond_0

    .line 155
    iget-object v1, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v3, v3, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v2, v1, v7

    .line 154
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 162
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/CellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 163
    .local v8, "res":Landroid/content/res/Resources;
    const v1, 0x7f0b0017

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 164
    .local v6, "duration":I
    iget-object v1, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mDragOutlineAlphas:[F

    invoke-static {v1, v4}, Ljava/util/Arrays;->fill([FF)V

    .line 166
    const/4 v7, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher3/util/animation/InterruptibleInOutAnimator;

    array-length v1, v1

    if-ge v7, v1, :cond_1

    .line 167
    new-instance v0, Lcom/android/launcher3/util/animation/InterruptibleInOutAnimator;

    int-to-long v2, v6

    const/high16 v5, 0x437f0000    # 255.0f

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/util/animation/InterruptibleInOutAnimator;-><init>(Landroid/view/View;JFF)V

    .line 169
    .local v0, "anim":Lcom/android/launcher3/util/animation/InterruptibleInOutAnimator;
    invoke-virtual {v0}, Lcom/android/launcher3/util/animation/InterruptibleInOutAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 170
    move v9, v7

    .line 171
    .local v9, "thisIndex":I
    invoke-virtual {v0}, Lcom/android/launcher3/util/animation/InterruptibleInOutAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/common/base/view/CellLayout$1;

    invoke-direct {v2, p0, v0, v9}, Lcom/android/launcher3/common/base/view/CellLayout$1;-><init>(Lcom/android/launcher3/common/base/view/CellLayout;Lcom/android/launcher3/util/animation/InterruptibleInOutAnimator;I)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 195
    invoke-virtual {v0}, Lcom/android/launcher3/util/animation/InterruptibleInOutAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/common/base/view/CellLayout$2;

    invoke-direct {v2, p0, v0}, Lcom/android/launcher3/common/base/view/CellLayout$2;-><init>(Lcom/android/launcher3/common/base/view/CellLayout;Lcom/android/launcher3/util/animation/InterruptibleInOutAnimator;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 203
    iget-object v1, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher3/util/animation/InterruptibleInOutAnimator;

    aput-object v0, v1, v7

    .line 166
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 206
    .end local v0    # "anim":Lcom/android/launcher3/util/animation/InterruptibleInOutAnimator;
    .end local v9    # "thisIndex":I
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mChildren:Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/common/base/view/CellLayout;->addView(Landroid/view/View;)V

    .line 208
    new-instance v1, Lcom/android/launcher3/common/base/view/CellLayout$CrossHairView;

    invoke-direct {v1, p0, p1, p0}, Lcom/android/launcher3/common/base/view/CellLayout$CrossHairView;-><init>(Lcom/android/launcher3/common/base/view/CellLayout;Landroid/content/Context;Lcom/android/launcher3/common/base/view/CellLayout;)V

    iput-object v1, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCrossHairView:Lcom/android/launcher3/common/base/view/CellLayout$CrossHairView;

    .line 210
    sget-object v1, Lcom/android/launcher3/common/base/view/CellLayout;->sCrosshairsDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_2

    .line 211
    const v1, 0x7f02006b

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/common/base/view/CellLayout;->sCrosshairsDrawable:Landroid/graphics/drawable/Drawable;

    .line 213
    :cond_2
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/common/base/view/CellLayout;)[F
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/base/view/CellLayout;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mDragOutlineAlphas:[F

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher3/common/base/view/CellLayout;)[Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/base/view/CellLayout;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher3/common/base/view/CellLayout;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/base/view/CellLayout;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mReorderAnimators:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$500()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/android/launcher3/common/base/view/CellLayout;->sCrosshairsDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private cellToPoint(III[I)V
    .locals 6
    .param p1, "cellX"    # I
    .param p2, "cellY"    # I
    .param p3, "spanX"    # I
    .param p4, "result"    # [I

    .prologue
    .line 487
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/CellLayout;->getPaddingLeft()I

    move-result v0

    .line 488
    .local v0, "hStartPadding":I
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/CellLayout;->getPaddingTop()I

    move-result v2

    .line 489
    .local v2, "vStartPadding":I
    sget-boolean v3, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCountX:I

    sub-int/2addr v3, p1

    sub-int v1, v3, p3

    .line 491
    .local v1, "tempCellX":I
    :goto_0
    const/4 v3, 0x0

    iget v4, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCellWidth:I

    iget v5, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mWidthGap:I

    add-int/2addr v4, v5

    mul-int/2addr v4, v1

    add-int/2addr v4, v0

    aput v4, p4, v3

    .line 492
    const/4 v3, 0x1

    iget v4, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCellHeight:I

    iget v5, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mHeightGap:I

    add-int/2addr v4, v5

    mul-int/2addr v4, p2

    add-int/2addr v4, v2

    aput v4, p4, v3

    .line 493
    return-void

    .end local v1    # "tempCellX":I
    :cond_0
    move v1, p1

    .line 489
    goto :goto_0
.end method

.method private createFolderVI(Landroid/view/View;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    const v7, 0x3e99999a    # 0.3f

    const/4 v2, 0x0

    .line 402
    instance-of v0, p1, Lcom/android/launcher3/common/view/IconView;

    if-eqz v0, :cond_0

    move-object v1, p1

    .line 403
    check-cast v1, Lcom/android/launcher3/common/view/IconView;

    const/16 v3, 0xc8

    const-wide/16 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/common/view/IconView;->animateBadge(ZIJZ)V

    move-object v1, p1

    .line 404
    check-cast v1, Lcom/android/launcher3/common/view/IconView;

    const-wide/16 v4, 0xc8

    move v3, v2

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/common/view/IconView;->animateTitleView(ZIJZ)V

    .line 406
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x14d

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 407
    invoke-virtual {v0, v7}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 408
    invoke-virtual {v0, v7}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/common/base/view/CellLayout;->targetView:Landroid/view/View;

    .line 409
    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/common/base/view/CellLayout;->targetView:Landroid/view/View;

    .line 410
    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/common/base/view/CellLayout$3;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/common/base/view/CellLayout$3;-><init>(Lcom/android/launcher3/common/base/view/CellLayout;Landroid/view/View;)V

    .line 411
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 431
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 432
    return-void
.end method

.method private findNearestArea(IIIIIIZ[I[I)[I
    .locals 30
    .param p1, "pixelX"    # I
    .param p2, "pixelY"    # I
    .param p3, "minSpanX"    # I
    .param p4, "minSpanY"    # I
    .param p5, "spanX"    # I
    .param p6, "spanY"    # I
    .param p7, "ignoreOccupied"    # Z
    .param p8, "result"    # [I
    .param p9, "resultSpan"    # [I

    .prologue
    .line 938
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/CellLayout;->lazyInitTempRectStack()V

    .line 943
    sget-boolean v26, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v26, :cond_1

    .line 944
    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mCellWidth:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mWidthGap:I

    move/from16 v28, v0

    add-int v27, v27, v28

    add-int/lit8 v28, p5, -0x1

    mul-int v27, v27, v28

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    const/high16 v28, 0x40000000    # 2.0f

    div-float v27, v27, v28

    add-float v26, v26, v27

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 p1, v0

    .line 948
    :goto_0
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mCellHeight:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mHeightGap:I

    move/from16 v28, v0

    add-int v27, v27, v28

    add-int/lit8 v28, p6, -0x1

    mul-int v27, v27, v28

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    const/high16 v28, 0x40000000    # 2.0f

    div-float v27, v27, v28

    sub-float v26, v26, v27

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 p2, v0

    .line 951
    if-eqz p8, :cond_2

    move-object/from16 v7, p8

    .line 952
    .local v7, "bestXY":[I
    :goto_1
    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 953
    .local v4, "bestDistance":D
    new-instance v6, Landroid/graphics/Rect;

    const/16 v26, -0x1

    const/16 v27, -0x1

    const/16 v28, -0x1

    const/16 v29, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-direct {v6, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 954
    .local v6, "bestRect":Landroid/graphics/Rect;
    new-instance v21, Ljava/util/Stack;

    invoke-direct/range {v21 .. v21}, Ljava/util/Stack;-><init>()V

    .line 956
    .local v21, "validRegions":Ljava/util/Stack;, "Ljava/util/Stack<Landroid/graphics/Rect;>;"
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mCountX:I

    .line 957
    .local v10, "countX":I
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mCountY:I

    .line 959
    .local v11, "countY":I
    if-lez p3, :cond_0

    if-lez p4, :cond_0

    if-lez p5, :cond_0

    if-lez p6, :cond_0

    move/from16 v0, p5

    move/from16 v1, p3

    if-lt v0, v1, :cond_0

    move/from16 v0, p6

    move/from16 v1, p4

    if-ge v0, v1, :cond_3

    .line 1055
    :cond_0
    :goto_2
    return-object v7

    .line 946
    .end local v4    # "bestDistance":D
    .end local v6    # "bestRect":Landroid/graphics/Rect;
    .end local v7    # "bestXY":[I
    .end local v10    # "countX":I
    .end local v11    # "countY":I
    .end local v21    # "validRegions":Ljava/util/Stack;, "Ljava/util/Stack<Landroid/graphics/Rect;>;"
    :cond_1
    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mCellWidth:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mWidthGap:I

    move/from16 v28, v0

    add-int v27, v27, v28

    add-int/lit8 v28, p5, -0x1

    mul-int v27, v27, v28

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    const/high16 v28, 0x40000000    # 2.0f

    div-float v27, v27, v28

    sub-float v26, v26, v27

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 p1, v0

    goto/16 :goto_0

    .line 951
    :cond_2
    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v7, v0, [I

    goto :goto_1

    .line 964
    .restart local v4    # "bestDistance":D
    .restart local v6    # "bestRect":Landroid/graphics/Rect;
    .restart local v7    # "bestXY":[I
    .restart local v10    # "countX":I
    .restart local v11    # "countY":I
    .restart local v21    # "validRegions":Ljava/util/Stack;, "Ljava/util/Stack<Landroid/graphics/Rect;>;"
    :cond_3
    const/16 v24, 0x0

    .local v24, "y":I
    :goto_3
    add-int/lit8 v26, p4, -0x1

    sub-int v26, v11, v26

    move/from16 v0, v24

    move/from16 v1, v26

    if-ge v0, v1, :cond_1f

    .line 966
    const/16 v22, 0x0

    .local v22, "x":I
    :goto_4
    add-int/lit8 v26, p3, -0x1

    sub-int v26, v10, v26

    move/from16 v0, v22

    move/from16 v1, v26

    if-ge v0, v1, :cond_1e

    .line 967
    const/16 v25, -0x1

    .line 968
    .local v25, "ySize":I
    const/16 v23, -0x1

    .line 969
    .local v23, "xSize":I
    if-eqz p7, :cond_17

    .line 971
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_5
    move/from16 v0, v17

    move/from16 v1, p3

    if-ge v0, v1, :cond_7

    .line 972
    const/16 v19, 0x0

    .local v19, "j":I
    :goto_6
    move/from16 v0, v19

    move/from16 v1, p4

    if-ge v0, v1, :cond_6

    .line 973
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mOccupied:[[Z

    move-object/from16 v26, v0

    add-int v27, v22, v17

    aget-object v26, v26, v27

    add-int v27, v24, v19

    aget-boolean v26, v26, v27

    if-eqz v26, :cond_5

    .line 966
    .end local v17    # "i":I
    .end local v19    # "j":I
    :cond_4
    :goto_7
    add-int/lit8 v22, v22, 0x1

    goto :goto_4

    .line 972
    .restart local v17    # "i":I
    .restart local v19    # "j":I
    :cond_5
    add-int/lit8 v19, v19, 0x1

    goto :goto_6

    .line 971
    :cond_6
    add-int/lit8 v17, v17, 0x1

    goto :goto_5

    .line 978
    .end local v19    # "j":I
    :cond_7
    move/from16 v23, p3

    .line 979
    move/from16 v25, p4

    .line 984
    const/16 v18, 0x1

    .line 985
    .local v18, "incX":Z
    move/from16 v0, v23

    move/from16 v1, p5

    if-lt v0, v1, :cond_b

    const/4 v13, 0x1

    .line 986
    .local v13, "hitMaxX":Z
    :goto_8
    move/from16 v0, v25

    move/from16 v1, p6

    if-lt v0, v1, :cond_c

    const/16 v16, 0x1

    .line 987
    .local v16, "hitMaxY":Z
    :goto_9
    if-eqz v13, :cond_8

    if-nez v16, :cond_16

    .line 988
    :cond_8
    if-eqz v18, :cond_f

    if-nez v13, :cond_f

    .line 989
    const/16 v19, 0x0

    .restart local v19    # "j":I
    :goto_a
    move/from16 v0, v19

    move/from16 v1, v25

    if-ge v0, v1, :cond_d

    .line 990
    add-int v26, v22, v23

    add-int/lit8 v27, v10, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-gt v0, v1, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mOccupied:[[Z

    move-object/from16 v26, v0

    add-int v27, v22, v23

    aget-object v26, v26, v27

    add-int v27, v24, v19

    aget-boolean v26, v26, v27

    if-eqz v26, :cond_a

    .line 992
    :cond_9
    const/4 v13, 0x1

    .line 989
    :cond_a
    add-int/lit8 v19, v19, 0x1

    goto :goto_a

    .line 985
    .end local v13    # "hitMaxX":Z
    .end local v16    # "hitMaxY":Z
    .end local v19    # "j":I
    :cond_b
    const/4 v13, 0x0

    goto :goto_8

    .line 986
    .restart local v13    # "hitMaxX":Z
    :cond_c
    const/16 v16, 0x0

    goto :goto_9

    .line 995
    .restart local v16    # "hitMaxY":Z
    .restart local v19    # "j":I
    :cond_d
    if-nez v13, :cond_e

    .line 996
    add-int/lit8 v23, v23, 0x1

    .line 1009
    .end local v19    # "j":I
    :cond_e
    :goto_b
    move/from16 v0, v23

    move/from16 v1, p5

    if-lt v0, v1, :cond_13

    const/16 v26, 0x1

    :goto_c
    or-int v13, v13, v26

    .line 1010
    move/from16 v0, v25

    move/from16 v1, p6

    if-lt v0, v1, :cond_14

    const/16 v26, 0x1

    :goto_d
    or-int v16, v16, v26

    .line 1011
    if-nez v18, :cond_15

    const/16 v18, 0x1

    :goto_e
    goto :goto_9

    .line 998
    :cond_f
    if-nez v16, :cond_e

    .line 999
    const/16 v17, 0x0

    :goto_f
    move/from16 v0, v17

    move/from16 v1, v23

    if-ge v0, v1, :cond_12

    .line 1000
    add-int v26, v24, v25

    add-int/lit8 v27, v11, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-gt v0, v1, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mOccupied:[[Z

    move-object/from16 v26, v0

    add-int v27, v22, v17

    aget-object v26, v26, v27

    add-int v27, v24, v25

    aget-boolean v26, v26, v27

    if-eqz v26, :cond_11

    .line 1002
    :cond_10
    const/16 v16, 0x1

    .line 999
    :cond_11
    add-int/lit8 v17, v17, 0x1

    goto :goto_f

    .line 1005
    :cond_12
    if-nez v16, :cond_e

    .line 1006
    add-int/lit8 v25, v25, 0x1

    goto :goto_b

    .line 1009
    :cond_13
    const/16 v26, 0x0

    goto :goto_c

    .line 1010
    :cond_14
    const/16 v26, 0x0

    goto :goto_d

    .line 1011
    :cond_15
    const/16 v18, 0x0

    goto :goto_e

    .line 1013
    :cond_16
    const/16 v18, 0x1

    .line 1014
    move/from16 v0, v23

    move/from16 v1, p5

    if-lt v0, v1, :cond_1d

    const/4 v13, 0x1

    .line 1015
    :goto_10
    move/from16 v0, v25

    move/from16 v1, p6

    if-lt v0, v1, :cond_17

    .line 1017
    .end local v13    # "hitMaxX":Z
    .end local v16    # "hitMaxY":Z
    .end local v17    # "i":I
    .end local v18    # "incX":Z
    :cond_17
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mTmpPoint:[I

    .line 1018
    .local v8, "cellXY":[I
    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2, v8}, Lcom/android/launcher3/common/base/view/CellLayout;->cellToCenterPoint(II[I)V

    .line 1023
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mTempRectStack:Ljava/util/Stack;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Rect;

    .line 1024
    .local v12, "currentRect":Landroid/graphics/Rect;
    add-int v26, v22, v23

    add-int v27, v24, v25

    move/from16 v0, v22

    move/from16 v1, v24

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 1025
    const/4 v9, 0x0

    .line 1026
    .local v9, "contained":Z
    invoke-virtual/range {v21 .. v21}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v26

    :cond_18
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_19

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/graphics/Rect;

    .line 1027
    .local v20, "r":Landroid/graphics/Rect;
    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v27

    if-eqz v27, :cond_18

    .line 1028
    const/4 v9, 0x1

    .line 1032
    .end local v20    # "r":Landroid/graphics/Rect;
    :cond_19
    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1033
    const/16 v26, 0x0

    aget v26, v8, v26

    sub-int v26, v26, p1

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    const/16 v28, 0x1

    aget v28, v8, v28

    sub-int v28, v28, p2

    move/from16 v0, v28

    int-to-double v0, v0

    move-wide/from16 v28, v0

    invoke-static/range {v26 .. v29}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v14

    .line 1035
    .local v14, "distance":D
    cmpg-double v26, v14, v4

    if-gtz v26, :cond_1a

    if-eqz v9, :cond_1b

    .line 1036
    :cond_1a
    invoke-virtual {v12, v6}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v26

    if-eqz v26, :cond_4

    .line 1037
    :cond_1b
    move-wide v4, v14

    .line 1038
    const/16 v26, 0x0

    aput v22, v7, v26

    .line 1039
    const/16 v26, 0x1

    aput v24, v7, v26

    .line 1040
    if-eqz p9, :cond_1c

    .line 1041
    const/16 v26, 0x0

    aput v23, p9, v26

    .line 1042
    const/16 v26, 0x1

    aput v25, p9, v26

    .line 1044
    :cond_1c
    invoke-virtual {v6, v12}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_7

    .line 1014
    .end local v8    # "cellXY":[I
    .end local v9    # "contained":Z
    .end local v12    # "currentRect":Landroid/graphics/Rect;
    .end local v14    # "distance":D
    .restart local v13    # "hitMaxX":Z
    .restart local v16    # "hitMaxY":Z
    .restart local v17    # "i":I
    .restart local v18    # "incX":Z
    :cond_1d
    const/4 v13, 0x0

    goto/16 :goto_10

    .line 964
    .end local v13    # "hitMaxX":Z
    .end local v16    # "hitMaxY":Z
    .end local v17    # "i":I
    .end local v18    # "incX":Z
    .end local v23    # "xSize":I
    .end local v25    # "ySize":I
    :cond_1e
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_3

    .line 1050
    .end local v22    # "x":I
    :cond_1f
    const-wide v26, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpl-double v26, v4, v26

    if-nez v26, :cond_20

    .line 1051
    const/16 v26, 0x0

    const/16 v27, -0x1

    aput v27, v7, v26

    .line 1052
    const/16 v26, 0x1

    const/16 v27, -0x1

    aput v27, v7, v26

    .line 1054
    :cond_20
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/launcher3/common/base/view/CellLayout;->recycleTempRects(Ljava/util/Stack;)V

    goto/16 :goto_2
.end method

.method private lazyInitTempRectStack()V
    .locals 3

    .prologue
    .line 907
    iget-object v1, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mTempRectStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 908
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCountX:I

    iget v2, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCountY:I

    mul-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    .line 909
    iget-object v1, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mTempRectStack:Ljava/util/Stack;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 908
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 912
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private recycleTempRects(Ljava/util/Stack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Stack",
            "<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 915
    .local p1, "used":Ljava/util/Stack;, "Ljava/util/Stack<Landroid/graphics/Rect;>;"
    :goto_0
    invoke-virtual {p1}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 916
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mTempRectStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 918
    :cond_0
    return-void
.end method


# virtual methods
.method public addViewToCellLayout(Landroid/view/View;IILcom/android/launcher3/common/base/view/CellLayout$LayoutParams;Z)Z
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "childId"    # I
    .param p4, "params"    # Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;
    .param p5, "markCells"    # Z

    .prologue
    .line 336
    move-object v0, p4

    .line 340
    .local v0, "lp":Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;
    iget v1, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellX:I

    if-ltz v1, :cond_3

    iget v1, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellX:I

    iget v2, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCountX:I

    add-int/lit8 v2, v2, -0x1

    if-gt v1, v2, :cond_3

    iget v1, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellY:I

    if-ltz v1, :cond_3

    iget v1, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellY:I

    iget v2, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCountY:I

    add-int/lit8 v2, v2, -0x1

    if-gt v1, v2, :cond_3

    .line 343
    iget v1, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellHSpan:I

    if-gez v1, :cond_0

    iget v1, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCountX:I

    iput v1, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellHSpan:I

    .line 344
    :cond_0
    iget v1, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellVSpan:I

    if-gez v1, :cond_1

    iget v1, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCountY:I

    iput v1, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellVSpan:I

    .line 346
    :cond_1
    invoke-virtual {p1, p3}, Landroid/view/View;->setId(I)V

    .line 347
    iget-object v1, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mChildren:Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    invoke-virtual {v1, p1, p2, v0}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 349
    if-eqz p5, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/base/view/CellLayout;->markCellsAsOccupiedForView(Landroid/view/View;)V

    .line 351
    :cond_2
    const/4 v1, 0x1

    .line 353
    :goto_0
    return v1

    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public animateChildToPosition(Landroid/view/View;IIIIZZ[[Z)Z
    .locals 11
    .param p1, "child"    # Landroid/view/View;
    .param p2, "cellX"    # I
    .param p3, "cellY"    # I
    .param p4, "duration"    # I
    .param p5, "delay"    # I
    .param p6, "permanent"    # Z
    .param p7, "adjustOccupied"    # Z
    .param p8, "tempOccupied"    # [[Z

    .prologue
    .line 675
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v10}, Lcom/android/launcher3/common/base/view/CellLayout;->animateChildToPosition(Landroid/view/View;IIIIZZ[[ZILjava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method public animateChildToPosition(Landroid/view/View;IIIIZZ[[ZILjava/lang/Runnable;)Z
    .locals 15
    .param p1, "child"    # Landroid/view/View;
    .param p2, "cellX"    # I
    .param p3, "cellY"    # I
    .param p4, "duration"    # I
    .param p5, "delay"    # I
    .param p6, "permanent"    # Z
    .param p7, "adjustOccupied"    # Z
    .param p8, "tempOccupied"    # [[Z
    .param p9, "deltaX"    # I
    .param p10, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 682
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v10

    .line 683
    .local v10, "clc":Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    iget-object v12, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mOccupied:[[Z

    .line 684
    .local v12, "occupied":[[Z
    if-nez p6, :cond_0

    .line 685
    move-object/from16 v12, p8

    .line 688
    :cond_0
    if-nez v12, :cond_1

    .line 689
    const/4 v2, 0x0

    .line 783
    :goto_0
    return v2

    .line 692
    :cond_1
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->indexOfChild(Landroid/view/View;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_8

    .line 693
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    .line 694
    .local v4, "lp":Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 697
    .local v11, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-object v2, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mReorderAnimators:Ljava/util/HashMap;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 698
    iget-object v2, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mReorderAnimators:Ljava/util/HashMap;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->cancel()V

    .line 699
    iget-object v2, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mReorderAnimators:Ljava/util/HashMap;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 702
    :cond_2
    iget v5, v4, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->x:I

    .line 703
    .local v5, "oldX":I
    iget v7, v4, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->y:I

    .line 704
    .local v7, "oldY":I
    if-eqz p7, :cond_3

    .line 705
    iget v2, v4, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellX:I

    aget-object v2, v12, v2

    iget v3, v4, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellY:I

    const/4 v9, 0x0

    aput-boolean v9, v2, v3

    .line 706
    aget-object v2, v12, p2

    const/4 v3, 0x1

    aput-boolean v3, v2, p3

    .line 708
    :cond_3
    const/4 v2, 0x1

    iput-boolean v2, v4, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 709
    if-eqz p6, :cond_6

    .line 710
    move/from16 v0, p2

    iput v0, v4, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellX:I

    .line 711
    move/from16 v0, p3

    iput v0, v4, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellY:I

    .line 712
    if-eqz v11, :cond_4

    .line 713
    move/from16 v0, p2

    iput v0, v11, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    .line 714
    move/from16 v0, p3

    iput v0, v11, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    .line 720
    :cond_4
    :goto_1
    invoke-virtual {v10, v4}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->setupLp(Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;)V

    .line 721
    move-object/from16 v0, p1

    instance-of v2, v0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    if-eqz v2, :cond_5

    move-object/from16 v2, p1

    .line 722
    check-cast v2, Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    .line 723
    invoke-virtual {v2}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->getResizeResult()Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;

    move-result-object v13

    .line 724
    .local v13, "result":Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;
    if-eqz v13, :cond_5

    .line 725
    iget v2, v13, Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;->width:I

    iput v2, v4, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->width:I

    .line 726
    iget v2, v13, Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;->height:I

    iput v2, v4, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->height:I

    .line 729
    .end local v13    # "result":Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;
    :cond_5
    const/4 v2, 0x0

    iput-boolean v2, v4, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 730
    iget v2, v4, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->x:I

    add-int v6, p9, v2

    .line 731
    .local v6, "newX":I
    iget v8, v4, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->y:I

    .line 733
    .local v8, "newY":I
    iput v5, v4, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->x:I

    .line 734
    iput v7, v4, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->y:I

    .line 737
    if-ne v5, v6, :cond_7

    if-ne v7, v8, :cond_7

    if-nez p10, :cond_7

    .line 738
    const/4 v2, 0x1

    iput-boolean v2, v4, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 739
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 717
    .end local v6    # "newX":I
    .end local v8    # "newY":I
    :cond_6
    move/from16 v0, p2

    iput v0, v4, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->tmpCellX:I

    .line 718
    move/from16 v0, p3

    iput v0, v4, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->tmpCellY:I

    goto :goto_1

    .line 742
    .restart local v6    # "newX":I
    .restart local v8    # "newY":I
    :cond_7
    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;[F)Landroid/animation/ValueAnimator;

    move-result-object v14

    .line 743
    .local v14, "va":Landroid/animation/ValueAnimator;
    move/from16 v0, p4

    int-to-long v2, v0

    invoke-virtual {v14, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 744
    iget-object v2, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mReorderAnimators:Ljava/util/HashMap;

    invoke-virtual {v2, v4, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 746
    new-instance v2, Lcom/android/launcher3/common/base/view/CellLayout$4;

    move-object v3, p0

    move-object/from16 v9, p1

    invoke-direct/range {v2 .. v9}, Lcom/android/launcher3/common/base/view/CellLayout$4;-><init>(Lcom/android/launcher3/common/base/view/CellLayout;Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;IIIILandroid/view/View;)V

    invoke-virtual {v14, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 755
    new-instance v2, Lcom/android/launcher3/common/base/view/CellLayout$5;

    move-object/from16 v0, p1

    move-object/from16 v1, p10

    invoke-direct {v2, p0, v4, v0, v1}, Lcom/android/launcher3/common/base/view/CellLayout$5;-><init>(Lcom/android/launcher3/common/base/view/CellLayout;Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;Landroid/view/View;Ljava/lang/Runnable;)V

    invoke-virtual {v14, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 779
    move/from16 v0, p5

    int-to-long v2, v0

    invoke-virtual {v14, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 780
    invoke-virtual {v14}, Landroid/animation/ValueAnimator;->start()V

    .line 781
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 783
    .end local v4    # "lp":Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;
    .end local v5    # "oldX":I
    .end local v6    # "newX":I
    .end local v7    # "oldY":I
    .end local v8    # "newY":I
    .end local v11    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v14    # "va":Landroid/animation/ValueAnimator;
    :cond_8
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 742
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public buildHardwareLayer()V
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mChildren:Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->buildLayer()V

    .line 230
    return-void
.end method

.method public cancelLongPress()V
    .locals 3

    .prologue
    .line 316
    invoke-super {p0}, Landroid/view/ViewGroup;->cancelLongPress()V

    .line 319
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/CellLayout;->getChildCount()I

    move-result v1

    .line 320
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 321
    invoke-virtual {p0, v2}, Lcom/android/launcher3/common/base/view/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 322
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    .line 320
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 324
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    return-void
.end method

.method cellToCenterPoint(II[I)V
    .locals 6
    .param p1, "cellX"    # I
    .param p2, "cellY"    # I
    .param p3, "result"    # [I

    .prologue
    const/4 v3, 0x1

    .line 503
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, v3

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/common/base/view/CellLayout;->regionToCenterPoint(IIII[I)V

    .line 504
    return-void
.end method

.method public cellToRect(IIIILandroid/graphics/Rect;)V
    .locals 14
    .param p1, "cellX"    # I
    .param p2, "cellY"    # I
    .param p3, "cellHSpan"    # I
    .param p4, "cellVSpan"    # I
    .param p5, "resultRect"    # Landroid/graphics/Rect;

    .prologue
    .line 1168
    iget v2, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCellWidth:I

    .line 1169
    .local v2, "cellWidth":I
    iget v1, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCellHeight:I

    .line 1170
    .local v1, "cellHeight":I
    iget v9, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mWidthGap:I

    .line 1171
    .local v9, "widthGap":I
    iget v5, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mHeightGap:I

    .line 1173
    .local v5, "heightGap":I
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/CellLayout;->getPaddingLeft()I

    move-result v3

    .line 1174
    .local v3, "hStartPadding":I
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/CellLayout;->getPaddingTop()I

    move-result v7

    .line 1175
    .local v7, "vStartPadding":I
    sget-boolean v12, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v12, :cond_0

    iget v12, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCountX:I

    sub-int/2addr v12, p1

    sub-int v6, v12, p3

    .line 1177
    .local v6, "tempCellX":I
    :goto_0
    mul-int v12, p3, v2

    add-int/lit8 v13, p3, -0x1

    mul-int/2addr v13, v9

    add-int v8, v12, v13

    .line 1178
    .local v8, "width":I
    mul-int v12, p4, v1

    add-int/lit8 v13, p4, -0x1

    mul-int/2addr v13, v5

    add-int v4, v12, v13

    .line 1180
    .local v4, "height":I
    add-int v12, v2, v9

    mul-int/2addr v12, v6

    add-int v10, v3, v12

    .line 1181
    .local v10, "x":I
    add-int v12, v1, v5

    mul-int v12, v12, p2

    add-int v11, v7, v12

    .line 1183
    .local v11, "y":I
    add-int v12, v10, v8

    add-int v13, v11, v4

    move-object/from16 v0, p5

    invoke-virtual {v0, v10, v11, v12, v13}, Landroid/graphics/Rect;->set(IIII)V

    .line 1184
    return-void

    .end local v4    # "height":I
    .end local v6    # "tempCellX":I
    .end local v8    # "width":I
    .end local v10    # "x":I
    .end local v11    # "y":I
    :cond_0
    move v6, p1

    .line 1175
    goto :goto_0
.end method

.method protected changeCrossHairFliter(Z)V
    .locals 2
    .param p1, "whiteBg"    # Z

    .prologue
    .line 1473
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v1, Lcom/android/launcher3/common/base/view/CellLayout;->sCrosshairsDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, p1}, Lcom/android/launcher3/util/WhiteBgManager;->changeColorFilterForBg(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Z)V

    .line 1474
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1241
    instance-of v0, p1, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    return v0
.end method

.method public clearDragOutlines()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 860
    iget v0, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mDragOutlineCurrent:I

    .line 861
    .local v0, "oldIndex":I
    iget-object v1, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher3/util/animation/InterruptibleInOutAnimator;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/launcher3/util/animation/InterruptibleInOutAnimator;->animateOut()V

    .line 862
    iget-object v1, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mDragCell:[I

    iget-object v2, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mDragCell:[I

    aput v3, v2, v5

    aput v3, v1, v4

    .line 863
    iget-object v1, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mDragSpan:[I

    iget-object v2, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mDragSpan:[I

    aput v3, v2, v5

    aput v3, v1, v4

    .line 864
    return-void
.end method

.method public clearOccupiedCells()V
    .locals 4

    .prologue
    .line 1187
    const/4 v0, 0x0

    .local v0, "x":I
    :goto_0
    iget v2, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCountX:I

    if-ge v0, v2, :cond_1

    .line 1188
    const/4 v1, 0x0

    .local v1, "y":I
    :goto_1
    iget v2, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCountY:I

    if-ge v1, v2, :cond_0

    .line 1189
    iget-object v2, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mOccupied:[[Z

    aget-object v2, v2, v0

    const/4 v3, 0x0

    aput-boolean v3, v2, v1

    .line 1188
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1187
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1192
    .end local v1    # "y":I
    :cond_1
    return-void
.end method

.method public enableHardwareLayer(Z)V
    .locals 3
    .param p1, "hasLayer"    # Z

    .prologue
    .line 225
    iget-object v1, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mChildren:Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    :goto_0
    sget-object v2, Lcom/android/launcher3/common/base/view/CellLayout;->sPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0, v2}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->setLayerType(ILandroid/graphics/Paint;)V

    .line 226
    return-void

    .line 225
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public findCellForSpan([III)Z
    .locals 9
    .param p1, "cellXY"    # [I
    .param p2, "spanX"    # I
    .param p3, "spanY"    # I

    .prologue
    .line 1087
    const/4 v2, 0x0

    .line 1088
    .local v2, "foundCell":Z
    iget v7, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCountX:I

    add-int/lit8 v8, p2, -0x1

    sub-int v0, v7, v8

    .line 1089
    .local v0, "endX":I
    iget v7, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCountY:I

    add-int/lit8 v8, p3, -0x1

    sub-int v1, v7, v8

    .line 1091
    .local v1, "endY":I
    const/4 v6, 0x0

    .local v6, "y":I
    :goto_0
    if-ge v6, v1, :cond_5

    if-nez v2, :cond_5

    .line 1093
    const/4 v5, 0x0

    .local v5, "x":I
    :goto_1
    if-ge v5, v0, :cond_4

    .line 1094
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, p2, :cond_2

    .line 1095
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_3
    if-ge v4, p3, :cond_1

    .line 1096
    iget-object v7, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mOccupied:[[Z

    add-int v8, v5, v3

    aget-object v7, v7, v8

    add-int v8, v6, v4

    aget-boolean v7, v7, v8

    if-eqz v7, :cond_0

    .line 1099
    add-int/2addr v5, v3

    .line 1093
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1095
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1094
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1104
    .end local v4    # "j":I
    :cond_2
    if-eqz p1, :cond_3

    .line 1105
    const/4 v7, 0x0

    aput v5, p1, v7

    .line 1106
    const/4 v7, 0x1

    aput v6, p1, v7

    .line 1108
    :cond_3
    const/4 v2, 0x1

    .line 1091
    .end local v3    # "i":I
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1113
    .end local v5    # "x":I
    :cond_5
    return v2
.end method

.method public findNearestArea(IIII[I)[I
    .locals 10
    .param p1, "pixelX"    # I
    .param p2, "pixelY"    # I
    .param p3, "spanX"    # I
    .param p4, "spanY"    # I
    .param p5, "result"    # [I

    .prologue
    .line 1071
    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p3

    move v6, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v9}, Lcom/android/launcher3/common/base/view/CellLayout;->findNearestArea(IIIIIIZ[I[I)[I

    move-result-object v0

    return-object v0
.end method

.method public findNearestVacantArea(IIIIII[I[I)[I
    .locals 10
    .param p1, "pixelX"    # I
    .param p2, "pixelY"    # I
    .param p3, "minSpanX"    # I
    .param p4, "minSpanY"    # I
    .param p5, "spanX"    # I
    .param p6, "spanY"    # I
    .param p7, "result"    # [I
    .param p8, "resultSpan"    # [I

    .prologue
    .line 900
    const/4 v7, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/launcher3/common/base/view/CellLayout;->findNearestArea(IIIIIIZ[I[I)[I

    move-result-object v0

    return-object v0
.end method

.method public findNearestVacantArea(IIII[I)[I
    .locals 9
    .param p1, "pixelX"    # I
    .param p2, "pixelY"    # I
    .param p3, "spanX"    # I
    .param p4, "spanY"    # I
    .param p5, "result"    # [I

    .prologue
    .line 880
    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v8}, Lcom/android/launcher3/common/base/view/CellLayout;->findNearestVacantArea(IIIIII[I[I)[I

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1236
    new-instance v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1246
    new-instance v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getBackgroundAlpha()F
    .locals 1

    .prologue
    .line 651
    iget v0, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mBackgroundAlpha:F

    return v0
.end method

.method public getCellHeight()I
    .locals 1

    .prologue
    .line 552
    iget v0, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCellHeight:I

    return v0
.end method

.method public getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    .locals 1

    .prologue
    .line 665
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mChildren:Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    return-object v0
.end method

.method public getCellWidth()I
    .locals 1

    .prologue
    .line 548
    iget v0, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCellWidth:I

    return v0
.end method

.method public getChildAt(II)Landroid/view/View;
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 669
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mChildren:Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getChildOnPageAt(I)Landroid/view/View;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 1477
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mChildren:Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getContentIconSize()I
    .locals 1

    .prologue
    .line 852
    const/4 v0, -0x1

    return v0
.end method

.method public getContentTop()I
    .locals 1

    .prologue
    .line 856
    const/4 v0, -0x1

    return v0
.end method

.method public getCountX()I
    .locals 1

    .prologue
    .line 327
    iget v0, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCountX:I

    return v0
.end method

.method public getCountY()I
    .locals 1

    .prologue
    .line 331
    iget v0, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCountY:I

    return v0
.end method

.method public getDesiredHeight()I
    .locals 3

    .prologue
    .line 1222
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/CellLayout;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/CellLayout;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCountY:I

    iget v2, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCellHeight:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCountY:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    .line 1223
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mHeightGap:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public getDesiredWidth()I
    .locals 3

    .prologue
    .line 1217
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/CellLayout;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/CellLayout;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCountX:I

    iget v2, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCellWidth:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCountX:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    .line 1218
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mWidthGap:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public getDistanceFromCell(FF[I)F
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "cell"    # [I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 543
    aget v0, p3, v3

    aget v1, p3, v4

    iget-object v2, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mTmpPoint:[I

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/launcher3/common/base/view/CellLayout;->cellToCenterPoint(II[I)V

    .line 544
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mTmpPoint:[I

    aget v0, v0, v3

    int-to-float v0, v0

    sub-float v0, p1, v0

    float-to-double v0, v0

    iget-object v2, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mTmpPoint:[I

    aget v2, v2, v4

    int-to-float v2, v2

    sub-float v2, p2, v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getHeightGap()I
    .locals 1

    .prologue
    .line 560
    iget v0, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mHeightGap:I

    return v0
.end method

.method protected getItemPositionDescription(II)Ljava/lang/String;
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 847
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0800a7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    add-int/lit8 v3, p2, 0x1

    .line 848
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    add-int/lit8 v3, p1, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 847
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOccupied()[[Z
    .locals 1

    .prologue
    .line 1442
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mOccupied:[[Z

    return-object v0
.end method

.method public getPageChildCount()I
    .locals 1

    .prologue
    .line 1481
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mChildren:Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v0

    return v0
.end method

.method protected getTopPaddingCustomPage()I
    .locals 1

    .prologue
    .line 1591
    const/4 v0, 0x0

    return v0
.end method

.method public getWidthGap()I
    .locals 1

    .prologue
    .line 556
    iget v0, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mWidthGap:I

    return v0
.end method

.method public hasTargetView()Z
    .locals 1

    .prologue
    .line 1250
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/CellLayout;->targetView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hideFolderAccept(Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;)V
    .locals 1
    .param p1, "fra"    # Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;

    .prologue
    .line 299
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mFolderOuterRings:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mFolderOuterRings:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 302
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/CellLayout;->invalidate()V

    .line 303
    return-void
.end method

.method protected initChildren(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 216
    new-instance v0, Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    invoke-direct {v0, p1}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mChildren:Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    .line 217
    return-void
.end method

.method public isOccupied(II)Z
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1227
    iget v0, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCountX:I

    if-ge p1, v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCountY:I

    if-ge p2, v0, :cond_0

    .line 1228
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mOccupied:[[Z

    aget-object v0, v0, p1

    aget-boolean v0, v0, p2

    return v0

    .line 1230
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Position exceeds the bound of this CellLayout"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isReorderAnimating()Z
    .locals 1

    .prologue
    .line 787
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mReorderAnimators:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public markCellsAsOccupiedForView(Landroid/view/View;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1195
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mChildren:Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    if-eq v0, v1, :cond_1

    .line 1198
    :cond_0
    :goto_0
    return-void

    .line 1196
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    .line 1197
    .local v7, "lp":Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;
    iget v1, v7, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellX:I

    iget v2, v7, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellY:I

    iget v3, v7, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellHSpan:I

    iget v4, v7, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellVSpan:I

    iget-object v5, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mOccupied:[[Z

    const/4 v6, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/common/base/view/CellLayout;->markCellsForView(IIII[[ZZ)V

    goto :goto_0
.end method

.method public markCellsAsUnoccupiedForView(Landroid/view/View;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1201
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mChildren:Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    if-eq v0, v1, :cond_1

    .line 1204
    :cond_0
    :goto_0
    return-void

    .line 1202
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    .line 1203
    .local v7, "lp":Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;
    iget v1, v7, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellX:I

    iget v2, v7, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellY:I

    iget v3, v7, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellHSpan:I

    iget v4, v7, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellVSpan:I

    iget-object v5, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mOccupied:[[Z

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/common/base/view/CellLayout;->markCellsForView(IIII[[ZZ)V

    goto :goto_0
.end method

.method protected markCellsForView(IIII[[ZZ)V
    .locals 3
    .param p1, "cellX"    # I
    .param p2, "cellY"    # I
    .param p3, "spanX"    # I
    .param p4, "spanY"    # I
    .param p5, "occupied"    # [[Z
    .param p6, "value"    # Z

    .prologue
    .line 1208
    if-ltz p1, :cond_0

    if-gez p2, :cond_1

    .line 1214
    :cond_0
    return-void

    .line 1209
    :cond_1
    move v0, p1

    .local v0, "x":I
    :goto_0
    add-int v2, p1, p3

    if-ge v0, v2, :cond_0

    iget v2, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCountX:I

    if-ge v0, v2, :cond_0

    .line 1210
    move v1, p2

    .local v1, "y":I
    :goto_1
    add-int v2, p2, p4

    if-ge v1, v2, :cond_2

    iget v2, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCountY:I

    if-ge v1, v2, :cond_2

    .line 1211
    aget-object v2, p5, v0

    aput-boolean p6, v2, v1

    .line 1210
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1209
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onDragEnter()V
    .locals 1

    .prologue
    .line 1122
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mDragging:Z

    .line 1123
    return-void
.end method

.method public onDragExit()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 1132
    iget-boolean v0, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mDragging:Z

    if-eqz v0, :cond_0

    .line 1133
    iput-boolean v2, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mDragging:Z

    .line 1137
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mDragCell:[I

    iget-object v1, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mDragCell:[I

    aput v3, v1, v4

    aput v3, v0, v2

    .line 1138
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mDragSpan:[I

    iget-object v1, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mDragSpan:[I

    aput v3, v1, v4

    aput v3, v0, v2

    .line 1139
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher3/util/animation/InterruptibleInOutAnimator;

    iget v1, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mDragOutlineCurrent:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/launcher3/util/animation/InterruptibleInOutAnimator;->animateOut()V

    .line 1140
    iget v0, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mDragOutlineCurrent:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher3/util/animation/InterruptibleInOutAnimator;

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mDragOutlineCurrent:I

    .line 1141
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 16
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 253
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    array-length v12, v12

    if-ge v8, v12, :cond_1

    .line 254
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mDragOutlineAlphas:[F

    aget v1, v12, v8

    .line 255
    .local v1, "alpha":F
    const/4 v12, 0x0

    cmpl-float v12, v1, v12

    if-lez v12, :cond_0

    .line 256
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    aget-object v10, v12, v8

    .line 257
    .local v10, "r":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v12, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 258
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-static {v12}, Lcom/android/launcher3/Utilities;->rectAboutCenter(Landroid/graphics/Rect;)V

    .line 259
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher3/util/animation/InterruptibleInOutAnimator;

    aget-object v12, v12, v8

    invoke-virtual {v12}, Lcom/android/launcher3/util/animation/InterruptibleInOutAnimator;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/drawable/Drawable;

    .line 260
    .local v9, "outline":Landroid/graphics/drawable/Drawable;
    float-to-int v12, v1

    invoke-virtual {v9, v12}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 261
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v9, v12}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 262
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 253
    .end local v9    # "outline":Landroid/graphics/drawable/Drawable;
    .end local v10    # "r":Landroid/graphics/Rect;
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 267
    .end local v1    # "alpha":F
    :cond_1
    const/4 v8, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mFolderOuterRings:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v8, v12, :cond_3

    .line 268
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mFolderOuterRings:Ljava/util/ArrayList;

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;

    .line 272
    .local v6, "fra":Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;
    iget v12, v6, Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;->mCellX:I

    iget v13, v6, Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;->mCellY:I

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mTempLocation:[I

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/android/launcher3/common/base/view/CellLayout;->cellToPoint(III[I)V

    .line 273
    iget v12, v6, Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;->mCellX:I

    iget v13, v6, Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;->mCellY:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/launcher3/common/base/view/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v4

    .line 275
    .local v4, "child":Landroid/view/View;
    if-eqz v4, :cond_2

    .line 276
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mTempLocation:[I

    const/4 v13, 0x0

    aget v12, v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mCellWidth:I

    div-int/lit8 v13, v13, 0x2

    add-int v2, v12, v13

    .line 277
    .local v2, "centerX":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mTempLocation:[I

    const/4 v13, 0x1

    aget v12, v12, v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/CellLayout;->getContentIconSize()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    add-int/2addr v12, v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/CellLayout;->getContentTop()I

    move-result v13

    add-int/2addr v12, v13

    .line 278
    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v13

    add-int v3, v12, v13

    .line 280
    .local v3, "centerY":I
    invoke-virtual {v6}, Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;->getInnerRingDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 281
    .local v5, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_2

    .line 282
    invoke-virtual {v6}, Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;->getInnerRingSize()F

    move-result v12

    float-to-int v11, v12

    .line 283
    .local v11, "width":I
    move v7, v11

    .line 284
    .local v7, "height":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 285
    div-int/lit8 v12, v11, 0x2

    sub-int v12, v2, v12

    int-to-float v12, v12

    div-int/lit8 v13, v11, 0x2

    sub-int v13, v3, v13

    int-to-float v13, v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/graphics/Canvas;->translate(FF)V

    .line 286
    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v5, v12, v13, v11, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 287
    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 288
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 267
    .end local v2    # "centerX":I
    .end local v3    # "centerY":I
    .end local v5    # "d":Landroid/graphics/drawable/Drawable;
    .end local v7    # "height":I
    .end local v11    # "width":I
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 292
    .end local v4    # "child":Landroid/view/View;
    .end local v6    # "fra":Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;
    :cond_3
    return-void
.end method

.method public onDropChild(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 1151
    if-eqz p1, :cond_0

    .line 1152
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    .line 1153
    .local v0, "lp":Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->dropped:Z

    .line 1154
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 1156
    .end local v0    # "lp":Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 611
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/CellLayout;->getPaddingLeft()I

    move-result v1

    .line 612
    .local v1, "left":I
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/CellLayout;->getPaddingRight()I

    move-result v2

    .line 613
    .local v2, "right":I
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/CellLayout;->getPaddingTop()I

    move-result v3

    .line 614
    .local v3, "top":I
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/CellLayout;->getPaddingBottom()I

    move-result v0

    .line 616
    .local v0, "bottom":I
    sub-int v4, p4, p2

    sub-int/2addr v4, v2

    sub-int v5, p5, p3

    sub-int/2addr v5, v0

    invoke-virtual {p0, v1, v3, v4, v5}, Lcom/android/launcher3/common/base/view/CellLayout;->setChildrenLayout(IIII)V

    .line 618
    iget-object v4, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCrossHairView:Lcom/android/launcher3/common/base/view/CellLayout$CrossHairView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCrossHairView:Lcom/android/launcher3/common/base/view/CellLayout$CrossHairView;

    invoke-virtual {v4}, Lcom/android/launcher3/common/base/view/CellLayout$CrossHairView;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    .line 619
    iget-object v4, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCrossHairView:Lcom/android/launcher3/common/base/view/CellLayout$CrossHairView;

    sub-int v5, p4, p2

    sub-int/2addr v5, v2

    sub-int v6, p5, p3

    sub-int/2addr v6, v0

    invoke-virtual {v4, v1, v3, v5, v6}, Lcom/android/launcher3/common/base/view/CellLayout$CrossHairView;->layout(IIII)V

    .line 621
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 20
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 570
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v19

    .line 571
    .local v19, "widthSpecMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v13

    .line 572
    .local v13, "heightSpecMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v18

    .line 573
    .local v18, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v12

    .line 574
    .local v12, "heightSize":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/CellLayout;->getPaddingLeft()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/CellLayout;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    sub-int v10, v18, v2

    .line 575
    .local v10, "childWidthSize":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/CellLayout;->getPaddingTop()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/CellLayout;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    sub-int v9, v12, v2

    .line 577
    .local v9, "childHeightSize":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mFixedCellWidth:I

    if-ltz v2, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mFixedCellHeight:I

    if-gez v2, :cond_2

    .line 578
    :cond_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mWidthGap:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mCountX:I

    invoke-static {v10, v2, v3}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->calculateCellWidthOrHeight(III)I

    move-result v11

    .line 579
    .local v11, "cw":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mHeightGap:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mCountY:I

    invoke-static {v9, v2, v3}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->calculateCellWidthOrHeight(III)I

    move-result v8

    .line 580
    .local v8, "ch":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mCellWidth:I

    if-ne v11, v2, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mCellHeight:I

    if-eq v8, v2, :cond_2

    .line 581
    :cond_1
    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mCellWidth:I

    .line 582
    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mCellHeight:I

    .line 583
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mChildren:Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mCellWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mCellHeight:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mWidthGap:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mHeightGap:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mCountX:I

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->setCellDimensions(IIIII)V

    .line 587
    .end local v8    # "ch":I
    .end local v11    # "cw":I
    :cond_2
    move/from16 v17, v10

    .line 588
    .local v17, "newWidth":I
    move/from16 v16, v9

    .line 589
    .local v16, "newHeight":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mFixedWidth:I

    if-lez v2, :cond_4

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mFixedHeight:I

    if-lez v2, :cond_4

    .line 590
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mFixedWidth:I

    move/from16 v17, v0

    .line 591
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mFixedHeight:I

    move/from16 v16, v0

    .line 596
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mChildren:Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    const/high16 v3, 0x40000000    # 2.0f

    .line 597
    move/from16 v0, v17

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    .line 598
    move/from16 v0, v16

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 596
    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->measure(II)V

    .line 600
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mChildren:Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    invoke-virtual {v2}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getMeasuredWidth()I

    move-result v15

    .line 601
    .local v15, "maxWidth":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mChildren:Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    invoke-virtual {v2}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getMeasuredHeight()I

    move-result v14

    .line 602
    .local v14, "maxHeight":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mFixedWidth:I

    if-lez v2, :cond_6

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mFixedHeight:I

    if-lez v2, :cond_6

    .line 603
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v14}, Lcom/android/launcher3/common/base/view/CellLayout;->setMeasuredDimension(II)V

    .line 607
    :goto_0
    return-void

    .line 592
    .end local v14    # "maxHeight":I
    .end local v15    # "maxWidth":I
    :cond_4
    if-eqz v19, :cond_5

    if-nez v13, :cond_3

    .line 593
    :cond_5
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "CellLayout cannot have UNSPECIFIED dimensions"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 605
    .restart local v14    # "maxHeight":I
    .restart local v15    # "maxWidth":I
    :cond_6
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1, v12}, Lcom/android/launcher3/common/base/view/CellLayout;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 629
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 630
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 221
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public pointToCellExact(III[I)V
    .locals 9
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "spanX"    # I
    .param p4, "result"    # [I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 459
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/CellLayout;->getPaddingLeft()I

    move-result v0

    .line 460
    .local v0, "hStartPadding":I
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/CellLayout;->getPaddingTop()I

    move-result v1

    .line 462
    .local v1, "vStartPadding":I
    sub-int v4, p1, v0

    iget v5, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCellWidth:I

    iget v6, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mWidthGap:I

    add-int/2addr v5, v6

    div-int/2addr v4, v5

    aput v4, p4, v7

    .line 463
    sub-int v4, p2, v1

    iget v5, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCellHeight:I

    iget v6, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mHeightGap:I

    add-int/2addr v5, v6

    div-int/2addr v4, v5

    aput v4, p4, v8

    .line 465
    sget-boolean v4, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v4, :cond_0

    .line 466
    iget v4, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCountX:I

    aget v5, p4, v7

    sub-int/2addr v4, v5

    sub-int/2addr v4, p3

    aput v4, p4, v7

    .line 469
    :cond_0
    iget v2, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCountX:I

    .line 470
    .local v2, "xAxis":I
    iget v3, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCountY:I

    .line 472
    .local v3, "yAxis":I
    aget v4, p4, v7

    if-gez v4, :cond_1

    aput v7, p4, v7

    .line 473
    :cond_1
    aget v4, p4, v7

    if-lt v4, v2, :cond_2

    add-int/lit8 v4, v2, -0x1

    aput v4, p4, v7

    .line 474
    :cond_2
    aget v4, p4, v8

    if-gez v4, :cond_3

    aput v7, p4, v8

    .line 475
    :cond_3
    aget v4, p4, v8

    if-lt v4, v3, :cond_4

    add-int/lit8 v4, v3, -0x1

    aput v4, p4, v8

    .line 476
    :cond_4
    return-void
.end method

.method public regionToCenterPoint(IIII[I)V
    .locals 8
    .param p1, "cellX"    # I
    .param p2, "cellY"    # I
    .param p3, "spanX"    # I
    .param p4, "spanY"    # I
    .param p5, "result"    # [I

    .prologue
    .line 514
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/CellLayout;->getPaddingLeft()I

    move-result v0

    .line 515
    .local v0, "hStartPadding":I
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/CellLayout;->getPaddingTop()I

    move-result v2

    .line 516
    .local v2, "vStartPadding":I
    sget-boolean v3, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCountX:I

    sub-int/2addr v3, p1

    sub-int v1, v3, p3

    .line 518
    .local v1, "tempCellX":I
    :goto_0
    const/4 v3, 0x0

    iget v4, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCellWidth:I

    iget v5, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mWidthGap:I

    add-int/2addr v4, v5

    mul-int/2addr v4, v1

    add-int/2addr v4, v0

    iget v5, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCellWidth:I

    mul-int/2addr v5, p3

    add-int/lit8 v6, p3, -0x1

    iget v7, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mWidthGap:I

    mul-int/2addr v6, v7

    add-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    aput v4, p5, v3

    .line 520
    const/4 v3, 0x1

    iget v4, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCellHeight:I

    iget v5, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mHeightGap:I

    add-int/2addr v4, v5

    mul-int/2addr v4, p2

    add-int/2addr v4, v2

    iget v5, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCellHeight:I

    mul-int/2addr v5, p4

    add-int/lit8 v6, p4, -0x1

    iget v7, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mHeightGap:I

    mul-int/2addr v6, v7

    add-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    aput v4, p5, v3

    .line 522
    return-void

    .end local v1    # "tempCellX":I
    :cond_0
    move v1, p1

    .line 516
    goto :goto_0
.end method

.method public regionToRect(IIIILandroid/graphics/Rect;)V
    .locals 9
    .param p1, "cellX"    # I
    .param p2, "cellY"    # I
    .param p3, "spanX"    # I
    .param p4, "spanY"    # I
    .param p5, "result"    # Landroid/graphics/Rect;

    .prologue
    .line 532
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/CellLayout;->getPaddingLeft()I

    move-result v0

    .line 533
    .local v0, "hStartPadding":I
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/CellLayout;->getPaddingTop()I

    move-result v4

    .line 534
    .local v4, "vStartPadding":I
    sget-boolean v5, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCountX:I

    sub-int/2addr v5, p1

    sub-int v2, v5, p3

    .line 536
    .local v2, "tempCellX":I
    :goto_0
    iget v5, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCellWidth:I

    iget v6, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mWidthGap:I

    add-int/2addr v5, v6

    mul-int/2addr v5, v2

    add-int v1, v0, v5

    .line 537
    .local v1, "left":I
    iget v5, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCellHeight:I

    iget v6, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mHeightGap:I

    add-int/2addr v5, v6

    mul-int/2addr v5, p2

    add-int v3, v4, v5

    .line 538
    .local v3, "top":I
    iget v5, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCellWidth:I

    mul-int/2addr v5, p3

    add-int/lit8 v6, p3, -0x1

    iget v7, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mWidthGap:I

    mul-int/2addr v6, v7

    add-int/2addr v5, v6

    add-int/2addr v5, v1

    iget v6, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCellHeight:I

    mul-int/2addr v6, p4

    add-int/lit8 v7, p4, -0x1

    iget v8, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mHeightGap:I

    mul-int/2addr v7, v8

    add-int/2addr v6, v7

    add-int/2addr v6, v3

    invoke-virtual {p5, v1, v3, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 540
    return-void

    .end local v1    # "left":I
    .end local v2    # "tempCellX":I
    .end local v3    # "top":I
    :cond_0
    move v2, p1

    .line 534
    goto :goto_0
.end method

.method public removeAllViews()V
    .locals 1

    .prologue
    .line 358
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/CellLayout;->clearOccupiedCells()V

    .line 359
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mChildren:Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->removeAllViews()V

    .line 360
    return-void
.end method

.method public removeAllViewsInLayout()V
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mChildren:Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 365
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/CellLayout;->clearOccupiedCells()V

    .line 366
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mChildren:Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->removeAllViewsInLayout()V

    .line 368
    :cond_0
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 372
    instance-of v0, p1, Lcom/android/launcher3/common/base/view/CellLayout$CrossHairView;

    if-eqz v0, :cond_0

    .line 373
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 382
    :goto_0
    return-void

    .line 376
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/base/view/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 377
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/CellLayout;->targetView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 378
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mChildren:Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 380
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/launcher3/common/base/view/CellLayout;->createFolderVI(Landroid/view/View;)V

    goto :goto_0
.end method

.method public removeViewAt(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 386
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mChildren:Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/base/view/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 387
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mChildren:Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->removeViewAt(I)V

    .line 388
    return-void
.end method

.method public removeViewInLayout(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 392
    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/base/view/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 393
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/CellLayout;->targetView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mChildren:Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->removeViewInLayout(Landroid/view/View;)V

    .line 398
    :goto_0
    return-void

    .line 396
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/launcher3/common/base/view/CellLayout;->createFolderVI(Landroid/view/View;)V

    goto :goto_0
.end method

.method public removeViews(II)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "count"    # I

    .prologue
    .line 436
    move v0, p1

    .local v0, "i":I
    :goto_0
    add-int v1, p1, p2

    if-ge v0, v1, :cond_0

    .line 437
    iget-object v1, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mChildren:Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/common/base/view/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 436
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 439
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mChildren:Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    invoke-virtual {v1, p1, p2}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->removeViews(II)V

    .line 440
    return-void
.end method

.method public removeViewsInLayout(II)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "count"    # I

    .prologue
    .line 444
    move v0, p1

    .local v0, "i":I
    :goto_0
    add-int v1, p1, p2

    if-ge v0, v1, :cond_0

    .line 445
    iget-object v1, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mChildren:Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/common/base/view/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 444
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 447
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mChildren:Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    invoke-virtual {v1, p1, p2}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->removeViewsInLayout(II)V

    .line 448
    return-void
.end method

.method public restoreInstanceState(Landroid/util/SparseArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 307
    .local p1, "states":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/base/view/CellLayout;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 312
    :goto_0
    return-void

    .line 308
    :catch_0
    move-exception v0

    .line 310
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    const-string v1, "CellLayout"

    const-string v2, "Ignoring an error while restoring a view instance state"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 644
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 645
    if-eqz p1, :cond_0

    .line 646
    iget v0, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mBackgroundAlpha:F

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 648
    :cond_0
    return-void
.end method

.method public setBackgroundAlpha(F)V
    .locals 3
    .param p1, "alpha"    # F

    .prologue
    .line 655
    iget v1, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mBackgroundAlpha:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    .line 656
    iput p1, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mBackgroundAlpha:F

    .line 657
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/CellLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 658
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 659
    iget v1, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mBackgroundAlpha:F

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 662
    .end local v0    # "background":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method

.method protected abstract setCellDimensions()V
.end method

.method public setCellDimensions(IIII)V
    .locals 6
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "widthGap"    # I
    .param p4, "heightGap"    # I

    .prologue
    .line 235
    iput p1, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCellWidth:I

    iput p1, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mFixedCellWidth:I

    .line 236
    iput p2, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCellHeight:I

    iput p2, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mFixedCellHeight:I

    .line 237
    iput p3, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mWidthGap:I

    .line 238
    iput p4, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mHeightGap:I

    .line 239
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mChildren:Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    iget v1, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCellWidth:I

    iget v2, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCellHeight:I

    iget v3, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mWidthGap:I

    iget v4, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mHeightGap:I

    iget v5, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCountX:I

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->setCellDimensions(IIIII)V

    .line 240
    return-void
.end method

.method public setChildrenDrawingCacheEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 634
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mChildren:Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->setChildrenDrawingCacheEnabled(Z)V

    .line 635
    return-void
.end method

.method public setChildrenDrawnWithCacheEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 639
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mChildren:Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 640
    return-void
.end method

.method protected setChildrenLayout(IIII)V
    .locals 1
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .prologue
    .line 624
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mChildren:Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->layout(IIII)V

    .line 625
    return-void
.end method

.method public setCrossHairAnimatedVisibility(IZ)V
    .locals 2
    .param p1, "visibility"    # I
    .param p2, "animate"    # Z

    .prologue
    .line 1447
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCrossHairView:Lcom/android/launcher3/common/base/view/CellLayout$CrossHairView;

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout$CrossHairView;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1448
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCrossHairView:Lcom/android/launcher3/common/base/view/CellLayout$CrossHairView;

    new-instance v1, Lcom/android/launcher3/common/base/view/CellLayout$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/launcher3/common/base/view/CellLayout$6;-><init>(Lcom/android/launcher3/common/base/view/CellLayout;IZ)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/base/view/CellLayout$CrossHairView;->setRunnable(Ljava/lang/Runnable;)V

    .line 1470
    :goto_0
    return-void

    .line 1458
    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCrossHairView:Lcom/android/launcher3/common/base/view/CellLayout$CrossHairView;

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout$CrossHairView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_1

    .line 1459
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCrossHairView:Lcom/android/launcher3/common/base/view/CellLayout$CrossHairView;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/base/view/CellLayout;->addView(Landroid/view/View;)V

    .line 1462
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCrossHairView:Lcom/android/launcher3/common/base/view/CellLayout$CrossHairView;

    invoke-virtual {v0, p2}, Lcom/android/launcher3/common/base/view/CellLayout$CrossHairView;->setAnimate(Z)V

    .line 1464
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/CellLayout;->supportWhiteBg()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/launcher3/util/WhiteBgManager;->isWhiteBg()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1465
    invoke-static {}, Lcom/android/launcher3/util/WhiteBgManager;->isWhiteBg()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/base/view/CellLayout;->changeCrossHairFliter(Z)V

    .line 1469
    :goto_1
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCrossHairView:Lcom/android/launcher3/common/base/view/CellLayout$CrossHairView;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/base/view/CellLayout$CrossHairView;->setVisibility(I)V

    goto :goto_0

    .line 1467
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/base/view/CellLayout;->changeCrossHairFliter(Z)V

    goto :goto_1
.end method

.method public setFixedSize(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 564
    iput p1, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mFixedWidth:I

    .line 565
    iput p2, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mFixedHeight:I

    .line 566
    return-void
.end method

.method public setGridSize(II)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 243
    iput p1, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCountX:I

    .line 244
    iput p2, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCountY:I

    .line 245
    iget v0, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCountX:I

    iget v1, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCountY:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    iput-object v0, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mOccupied:[[Z

    .line 246
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mTempRectStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 247
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mChildren:Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    iget v1, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCellWidth:I

    iget v2, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCellHeight:I

    iget v3, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mWidthGap:I

    iget v4, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mHeightGap:I

    iget v5, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCountX:I

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->setCellDimensions(IIIII)V

    .line 248
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/CellLayout;->requestLayout()V

    .line 249
    return-void
.end method

.method public setTargetView(Landroid/view/View;)V
    .locals 0
    .param p1, "targetView"    # Landroid/view/View;

    .prologue
    .line 1254
    iput-object p1, p0, Lcom/android/launcher3/common/base/view/CellLayout;->targetView:Landroid/view/View;

    .line 1255
    return-void
.end method

.method public showFolderAccept(Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;)V
    .locals 1
    .param p1, "fra"    # Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;

    .prologue
    .line 295
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mFolderOuterRings:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    return-void
.end method

.method protected supportWhiteBg()Z
    .locals 1

    .prologue
    .line 1587
    const/4 v0, 0x1

    return v0
.end method

.method protected updateChildIfReorderAnimationCancel()Z
    .locals 1

    .prologue
    .line 1583
    const/4 v0, 0x0

    return v0
.end method

.method public visualizeDropLocation(Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/graphics/drawable/Drawable;IIIIZ)V
    .locals 22
    .param p1, "info"    # Lcom/android/launcher3/common/base/item/ItemInfo;
    .param p2, "dragOutline"    # Landroid/graphics/drawable/Drawable;
    .param p3, "cellX"    # I
    .param p4, "cellY"    # I
    .param p5, "spanX"    # I
    .param p6, "spanY"    # I
    .param p7, "resize"    # Z

    .prologue
    .line 792
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mDragCell:[I

    const/4 v6, 0x0

    aget v13, v5, v6

    .line 793
    .local v13, "oldDragCellX":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mDragCell:[I

    const/4 v6, 0x1

    aget v14, v5, v6

    .line 794
    .local v14, "oldDragCellY":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mDragSpan:[I

    const/4 v6, 0x0

    aget v15, v5, v6

    .line 795
    .local v15, "oldDragSpanX":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mDragSpan:[I

    const/4 v6, 0x1

    aget v16, v5, v6

    .line 797
    .local v16, "oldDragSpanY":I
    if-nez p2, :cond_1

    .line 844
    :cond_0
    :goto_0
    return-void

    .line 801
    :cond_1
    move/from16 v0, p3

    if-ne v0, v13, :cond_2

    move/from16 v0, p4

    if-ne v0, v14, :cond_2

    move/from16 v0, p5

    if-ne v0, v15, :cond_2

    move/from16 v0, p6

    move/from16 v1, v16

    if-eq v0, v1, :cond_0

    .line 803
    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mDragCell:[I

    const/4 v6, 0x0

    aput p3, v5, v6

    .line 804
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mDragCell:[I

    const/4 v6, 0x1

    aput p4, v5, v6

    .line 805
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mDragSpan:[I

    const/4 v6, 0x0

    aput p5, v5, v6

    .line 806
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mDragSpan:[I

    const/4 v6, 0x1

    aput p6, v5, v6

    .line 809
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mTmpPoint:[I

    move-object/from16 v20, v0

    .line 810
    .local v20, "topLeft":[I
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    move-object/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/launcher3/common/base/view/CellLayout;->cellToPoint(III[I)V

    .line 812
    const/4 v5, 0x0

    aget v12, v20, v5

    .line 813
    .local v12, "left":I
    const/4 v5, 0x1

    aget v19, v20, v5

    .line 815
    .local v19, "top":I
    const/16 v18, -0x1

    .line 816
    .local v18, "outlineTop":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v21

    .line 817
    .local v21, "width":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    .line 818
    .local v11, "height":I
    if-eqz p1, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/common/base/item/ItemInfo;->isAppOrShortcutType()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 819
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/CellLayout;->getContentTop()I

    move-result v18

    .line 820
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/CellLayout;->getContentIconSize()I

    move-result v21

    move/from16 v11, v21

    .line 822
    :cond_3
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mCellWidth:I

    mul-int v5, v5, p5

    add-int/lit8 v6, p5, -0x1

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mWidthGap:I

    mul-int/2addr v6, v7

    add-int/2addr v5, v6

    sub-int v5, v5, v21

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v12, v5

    .line 824
    const/4 v5, -0x1

    move/from16 v0, v18

    if-eq v0, v5, :cond_5

    .line 825
    add-int v19, v19, v18

    .line 830
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mDragOutlineCurrent:I

    move/from16 v17, v0

    .line 831
    .local v17, "oldIndex":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher3/util/animation/InterruptibleInOutAnimator;

    aget-object v5, v5, v17

    invoke-virtual {v5}, Lcom/android/launcher3/util/animation/InterruptibleInOutAnimator;->animateOut()V

    .line 832
    add-int/lit8 v5, v17, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    array-length v6, v6

    rem-int/2addr v5, v6

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mDragOutlineCurrent:I

    .line 833
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mDragOutlineCurrent:I

    aget-object v10, v5, v6

    .line 834
    .local v10, "r":Landroid/graphics/Rect;
    add-int v5, v12, v21

    add-int v6, v19, v11

    move/from16 v0, v19

    invoke-virtual {v10, v12, v0, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 835
    if-eqz p7, :cond_4

    move-object/from16 v5, p0

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    .line 836
    invoke-virtual/range {v5 .. v10}, Lcom/android/launcher3/common/base/view/CellLayout;->cellToRect(IIIILandroid/graphics/Rect;)V

    .line 839
    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher3/util/animation/InterruptibleInOutAnimator;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mDragOutlineCurrent:I

    aget-object v5, v5, v6

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Lcom/android/launcher3/util/animation/InterruptibleInOutAnimator;->setTag(Ljava/lang/Object;)V

    .line 840
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher3/util/animation/InterruptibleInOutAnimator;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mDragOutlineCurrent:I

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lcom/android/launcher3/util/animation/InterruptibleInOutAnimator;->animateIn()V

    .line 842
    sget-object v5, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/common/base/view/CellLayout;->getItemPositionDescription(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/launcher3/util/Talk;->say(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 827
    .end local v10    # "r":Landroid/graphics/Rect;
    .end local v17    # "oldIndex":I
    :cond_5
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mCellHeight:I

    mul-int v5, v5, p6

    add-int/lit8 v6, p6, -0x1

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mHeightGap:I

    mul-int/2addr v6, v7

    add-int/2addr v5, v6

    sub-int/2addr v5, v11

    div-int/lit8 v5, v5, 0x2

    add-int v19, v19, v5

    goto :goto_1
.end method
