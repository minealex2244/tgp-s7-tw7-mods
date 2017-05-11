.class public Lcom/android/launcher3/allapps/view/AppsPagedView;
.super Lcom/android/launcher3/common/base/view/PagedView;
.source "AppsPagedView.java"

# interfaces
.implements Lcom/android/launcher3/common/base/view/Insettable;


# static fields
.field static final EXTRA_EMPTY_SCREEN:Ljava/lang/String; = "extra_empty_screen"

.field protected static final FADE_EMPTY_SCREEN_DURATION:I = 0x96

.field protected static final SNAP_OFF_EMPTY_SCREEN_DURATION:I = 0x190

.field static final TAG:Ljava/lang/String; = "Launcher.AppsPagedView"


# instance fields
.field private mApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

.field private mAppsDragController:Lcom/android/launcher3/allapps/controller/AppsDragController;

.field private final mBindPages:Ljava/lang/Runnable;

.field private mCellLayouts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/allapps/view/AppsViewCellLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private mNumAppsPages:I

.field private mOldPageCount:I

.field private mRemoveEmptyScreenRunnable:Ljava/lang/Runnable;

.field private mSaveInstanceStateItemIndex:I

.field private removedScreen:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 105
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/common/base/view/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mSaveInstanceStateItemIndex:I

    .line 89
    iput v2, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mOldPageCount:I

    .line 93
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mCellLayouts:Ljava/util/ArrayList;

    .line 94
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->removedScreen:Ljava/util/ArrayList;

    .line 96
    new-instance v1, Lcom/android/launcher3/allapps/view/AppsPagedView$1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/allapps/view/AppsPagedView$1;-><init>(Lcom/android/launcher3/allapps/view/AppsPagedView;)V

    iput-object v1, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mBindPages:Ljava/lang/Runnable;

    .line 106
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 107
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mApps:Ljava/util/ArrayList;

    .line 109
    check-cast p1, Lcom/android/launcher3/Launcher;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 111
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 114
    .local v0, "res":Landroid/content/res/Resources;
    iput-boolean v2, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mFadeInAdjacentScreens:Z

    .line 117
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getImportantForAccessibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 118
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->setImportantForAccessibility(I)V

    .line 121
    :cond_0
    const v1, 0x7f090098

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mPageSpacing:I

    .line 122
    new-instance v1, Lcom/android/launcher3/allapps/controller/AppsDragController;

    iget-object v2, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v1, v2, p0}, Lcom/android/launcher3/allapps/controller/AppsDragController;-><init>(Landroid/content/Context;Lcom/android/launcher3/allapps/view/AppsPagedView;)V

    iput-object v1, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mAppsDragController:Lcom/android/launcher3/allapps/controller/AppsDragController;

    .line 124
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->setMinScale(F)V

    .line 126
    const v1, 0x7f0900d1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mHintPageWidth:I

    .line 127
    const v1, 0x7f0900d0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mHintPageLeftZone:I

    .line 128
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mHintPageLeftZone:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mHintPageRightZone:I

    .line 129
    const v1, 0x7f0900a6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mTranslatePagesOffset:F

    .line 130
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/allapps/view/AppsPagedView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/view/AppsPagedView;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mCellLayouts:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher3/allapps/view/AppsPagedView;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/view/AppsPagedView;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mRemoveEmptyScreenRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private createAppsPage(Ljava/lang/String;)Lcom/android/launcher3/allapps/view/AppsViewCellLayout;
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 449
    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030016

    const/4 v3, 0x0

    .line 450
    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;

    .line 451
    .local v0, "cell":Lcom/android/launcher3/allapps/view/AppsViewCellLayout;
    if-eqz p1, :cond_0

    .line 452
    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->setTag(Ljava/lang/Object;)V

    .line 455
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/controller/AppsController;->getState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->setBgImage(I)V

    .line 456
    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/controller/AppsController;->isChangeGridState()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 457
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->setBackgroundAlpha(F)V

    .line 459
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mCellLayouts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 460
    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->addView(Landroid/view/View;)V

    .line 461
    return-object v0
.end method

.method private fadeAndRemoveEmptyScreen(IILjava/lang/Runnable;)V
    .locals 9
    .param p1, "delay"    # I
    .param p2, "duration"    # I
    .param p3, "onComplete"    # Ljava/lang/Runnable;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 268
    const-string v4, "alpha"

    new-array v5, v7, [F

    aput v8, v5, v6

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 269
    .local v0, "alpha":Landroid/animation/PropertyValuesHolder;
    const-string v4, "backgroundAlpha"

    new-array v5, v7, [F

    aput v8, v5, v6

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 271
    .local v1, "bgAlpha":Landroid/animation/PropertyValuesHolder;
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getExtraEmptyScreen()Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v2

    .line 273
    .local v2, "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    new-instance v4, Lcom/android/launcher3/allapps/view/AppsPagedView$3;

    invoke-direct {v4, p0, v2}, Lcom/android/launcher3/allapps/view/AppsPagedView$3;-><init>(Lcom/android/launcher3/allapps/view/AppsPagedView;Lcom/android/launcher3/common/base/view/CellLayout;)V

    iput-object v4, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mRemoveEmptyScreenRunnable:Ljava/lang/Runnable;

    .line 285
    const/4 v4, 0x2

    new-array v4, v4, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v4, v6

    aput-object v1, v4, v7

    invoke-static {v2, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 286
    .local v3, "oa":Landroid/animation/ObjectAnimator;
    int-to-long v4, p2

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 287
    int-to-long v4, p1

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 288
    new-instance v4, Lcom/android/launcher3/allapps/view/AppsPagedView$4;

    invoke-direct {v4, p0, p3}, Lcom/android/launcher3/allapps/view/AppsPagedView$4;-><init>(Lcom/android/launcher3/allapps/view/AppsPagedView;Ljava/lang/Runnable;)V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 299
    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->start()V

    .line 300
    return-void
.end method

.method private getMiddleComponentIndexOnCurrentPage()I
    .locals 7

    .prologue
    .line 165
    const/4 v2, -0x1

    .line 166
    .local v2, "i":I
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getPageCount()I

    move-result v5

    if-lez v5, :cond_0

    .line 167
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCurrentPage()I

    move-result v1

    .line 168
    .local v1, "currentPage":I
    iget v5, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mNumAppsPages:I

    if-ge v1, v5, :cond_0

    .line 169
    invoke-virtual {p0, v1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v3

    .line 170
    .local v3, "layout":Lcom/android/launcher3/common/base/view/CellLayout;
    invoke-virtual {v3}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountX()I

    move-result v5

    invoke-virtual {v3}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountY()I

    move-result v6

    mul-int v4, v5, v6

    .line 171
    .local v4, "numItemsPerPage":I
    invoke-virtual {v3}, Lcom/android/launcher3/common/base/view/CellLayout;->getChildCount()I

    move-result v0

    .line 172
    .local v0, "Count":I
    if-lez v0, :cond_0

    .line 173
    mul-int v5, v1, v4

    div-int/lit8 v6, v0, 0x2

    add-int v2, v5, v6

    .line 177
    .end local v0    # "Count":I
    .end local v1    # "currentPage":I
    .end local v3    # "layout":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v4    # "numItemsPerPage":I
    :cond_0
    return v2
.end method

.method private updateAccessibilityFlags(Lcom/android/launcher3/common/base/view/CellLayout;Z)V
    .locals 4
    .param p1, "page"    # Lcom/android/launcher3/common/base/view/CellLayout;
    .param p2, "show"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 554
    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/controller/AppsController;->getState()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    .line 555
    invoke-virtual {v1}, Lcom/android/launcher3/allapps/controller/AppsController;->getState()I

    move-result v1

    if-ne v1, v2, :cond_1

    :cond_0
    if-eqz p2, :cond_1

    const/4 v0, 0x0

    .line 558
    .local v0, "accessible":I
    :goto_0
    invoke-virtual {p1, v2}, Lcom/android/launcher3/common/base/view/CellLayout;->setImportantForAccessibility(I)V

    .line 559
    invoke-virtual {p1}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->setImportantForAccessibility(I)V

    .line 560
    invoke-virtual {p1, v3}, Lcom/android/launcher3/common/base/view/CellLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 561
    invoke-virtual {p1, v3}, Lcom/android/launcher3/common/base/view/CellLayout;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 562
    return-void

    .line 555
    .end local v0    # "accessible":I
    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private updateDragPageAlphaValues(III)V
    .locals 6
    .param p1, "screenCenter"    # I
    .param p2, "leftScreen"    # I
    .param p3, "rightScreen"    # I

    .prologue
    .line 187
    iget-object v4, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/controller/AppsController;->isSwitchingState()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/controller/AppsController;->isChangeGridState()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 199
    :cond_0
    return-void

    .line 191
    :cond_1
    move v2, p2

    .local v2, "i":I
    :goto_0
    if-gt v2, p3, :cond_0

    .line 192
    invoke-virtual {p0, v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 193
    .local v1, "child":Lcom/android/launcher3/common/base/view/CellLayout;
    if-eqz v1, :cond_2

    .line 194
    invoke-virtual {p0, p1, v1, v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getScrollProgress(ILandroid/view/View;I)F

    move-result v3

    .line 195
    .local v3, "scrollProgress":F
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 196
    .local v0, "alpha":F
    invoke-virtual {v1, v0}, Lcom/android/launcher3/common/base/view/CellLayout;->setBackgroundAlpha(F)V

    .line 191
    .end local v0    # "alpha":F
    .end local v3    # "scrollProgress":F
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private updatePageAlphaValues(III)V
    .locals 1
    .param p1, "screenCenter"    # I
    .param p2, "leftScreen"    # I
    .param p3, "rightScreen"    # I

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AppsController;->getState()I

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/allapps/view/AppsPagedView;->updateDragPageAlphaValues(III)V

    .line 184
    :cond_0
    return-void
.end method

.method private updatePageCounts()V
    .locals 4

    .prologue
    .line 407
    iget-object v2, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v2

    iget-object v0, v2, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    .line 408
    .local v0, "appsGrid":Lcom/android/launcher3/common/deviceprofile/GridInfo;
    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountX()I

    move-result v2

    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountY()I

    move-result v3

    mul-int v1, v2, v3

    .line 409
    .local v1, "count":I
    iget-object v2, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v1

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iput v2, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mNumAppsPages:I

    .line 410
    return-void
.end method


# virtual methods
.method public addExtraEmptyScreenOnDrag()V
    .locals 2

    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AppsController;->getViewType()Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/allapps/controller/AppsController$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    if-ne v0, v1, :cond_1

    .line 311
    :cond_0
    :goto_0
    return-void

    .line 306
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mRemoveEmptyScreenRunnable:Ljava/lang/Runnable;

    .line 308
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->hasExtraEmptyScreen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 309
    const-string v0, "extra_empty_screen"

    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->createAppsPage(Ljava/lang/String;)Lcom/android/launcher3/allapps/view/AppsViewCellLayout;

    goto :goto_0
.end method

.method public bindController(Lcom/android/launcher3/common/base/controller/ControllerBase;)V
    .locals 0
    .param p1, "controller"    # Lcom/android/launcher3/common/base/controller/ControllerBase;

    .prologue
    .line 139
    check-cast p1, Lcom/android/launcher3/allapps/controller/AppsController;

    .end local p1    # "controller":Lcom/android/launcher3/common/base/controller/ControllerBase;
    iput-object p1, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    .line 140
    return-void
.end method

.method protected canOverScroll()Z
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AppsController;->getState()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clearRemovedScreen()V
    .locals 1

    .prologue
    .line 785
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->removedScreen:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 786
    return-void
.end method

.method public commitExtraEmptyScreen()I
    .locals 3

    .prologue
    .line 318
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getExtraEmptyScreenIndex()I

    move-result v0

    .line 321
    .local v0, "screenId":I
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->hasExtraEmptyScreen()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 322
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getExtraEmptyScreen()Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 323
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getExtraEmptyScreen()Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/launcher3/common/base/view/CellLayout;->setTag(Ljava/lang/Object;)V

    .line 325
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getPageIndicator()Lcom/android/launcher3/common/view/PageIndicator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/common/view/PageIndicator;->isGrouping()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 326
    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->removeMarkerForView(I)V

    .line 332
    :cond_1
    :goto_0
    return v0

    .line 328
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getPageIndicatorMarker(I)Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->updateMarker(ILcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;)V

    goto :goto_0
.end method

.method public createAppsPage()Lcom/android/launcher3/allapps/view/AppsViewCellLayout;
    .locals 1

    .prologue
    .line 465
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->createAppsPage(Ljava/lang/String;)Lcom/android/launcher3/allapps/view/AppsViewCellLayout;

    move-result-object v0

    return-object v0
.end method

.method protected determineScrollingStart(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 766
    invoke-super {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected determineScrollingStart(Landroid/view/MotionEvent;F)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "touchSlopScale"    # F

    .prologue
    .line 771
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AppsController;->isSelectState()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x40200000    # 2.5f

    mul-float/2addr p2, v0

    .end local p2    # "touchSlopScale":F
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/common/base/view/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;F)Z

    move-result v0

    return v0
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 1
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I

    .prologue
    .line 157
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/common/base/view/PagedView;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public getCellCountX()I
    .locals 1

    .prologue
    .line 479
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountX()I

    move-result v0

    return v0
.end method

.method public getCellCountY()I
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountY()I

    move-result v0

    return v0
.end method

.method public getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 492
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mCellLayouts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 493
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mCellLayouts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    goto :goto_0
.end method

.method public getComingPageForLiveIcon()I
    .locals 1

    .prologue
    .line 690
    iget v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mNextPage:I

    return v0
.end method

.method public getCustomPageCount()I
    .locals 1

    .prologue
    .line 834
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->hasExtraEmptyScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDragController()Lcom/android/launcher3/allapps/controller/AppsDragController;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mAppsDragController:Lcom/android/launcher3/allapps/controller/AppsDragController;

    return-object v0
.end method

.method public getExtraEmptyScreen()Lcom/android/launcher3/common/base/view/CellLayout;
    .locals 2

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->hasExtraEmptyScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mCellLayouts:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mCellLayouts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 218
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getExtraEmptyScreenIndex()I
    .locals 1

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->hasExtraEmptyScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mCellLayouts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 225
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getIdForScreen(Lcom/android/launcher3/common/base/view/CellLayout;)J
    .locals 2
    .param p1, "layout"    # Lcom/android/launcher3/common/base/view/CellLayout;

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mCellLayouts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getItemCountPageAt(I)I
    .locals 4
    .param p1, "pageNum"    # I

    .prologue
    const/4 v2, 0x0

    .line 576
    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v1

    .line 577
    .local v1, "page":Landroid/view/ViewGroup;
    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    if-eqz v3, :cond_0

    .line 578
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    .line 579
    .local v0, "cellLayoutChildren":Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v2

    .line 581
    .end local v0    # "cellLayoutChildren":Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    :cond_0
    return v2
.end method

.method public getMaxItemsPerScreen()I
    .locals 3

    .prologue
    .line 487
    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v1

    iget-object v0, v1, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    .line 488
    .local v0, "appsGrid":Lcom/android/launcher3/common/deviceprofile/GridInfo;
    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountX()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountY()I

    move-result v2

    mul-int/2addr v1, v2

    return v1
.end method

.method protected getPageIndicatorMarker(I)Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;
    .locals 3
    .param p1, "pageIndex"    # I

    .prologue
    .line 372
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getExtraEmptyScreenIndex()I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 373
    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mCellLayouts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 374
    .local v0, "count":I
    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 375
    new-instance v1, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;

    sget-object v2, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;->PLUS:Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;

    invoke-direct {v1, v2}, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;-><init>(Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;)V

    .line 378
    .end local v0    # "count":I
    :goto_0
    return-object v1

    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->getPageIndicatorMarker(I)Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;

    move-result-object v1

    goto :goto_0
.end method

.method public getRankForNewItem(I)I
    .locals 2
    .param p1, "pageNum"    # I

    .prologue
    .line 584
    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getItemCountPageAt(I)I

    move-result v0

    .line 585
    .local v0, "nextRank":I
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getMaxItemsPerScreen()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 586
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getMaxItemsPerScreen()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 588
    :cond_0
    return v0
.end method

.method public getRemovedScreen()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 781
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->removedScreen:Ljava/util/ArrayList;

    return-object v0
.end method

.method getSaveInstanceStateIndex()I
    .locals 2

    .prologue
    .line 392
    iget v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mSaveInstanceStateItemIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 393
    invoke-direct {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getMiddleComponentIndexOnCurrentPage()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mSaveInstanceStateItemIndex:I

    .line 395
    :cond_0
    iget v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mSaveInstanceStateItemIndex:I

    return v0
.end method

.method public getSupportCustomPageCount()I
    .locals 1

    .prologue
    .line 839
    const/4 v0, 0x1

    return v0
.end method

.method public hasExtraEmptyScreen()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 202
    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mCellLayouts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x2

    if-ge v1, v3, :cond_0

    move v1, v2

    .line 211
    :goto_0
    return v1

    .line 207
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mCellLayouts:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mCellLayouts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 208
    .local v0, "tag":Ljava/lang/Object;
    if-eqz v0, :cond_1

    .line 209
    const-string v1, "extra_empty_screen"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v2

    .line 211
    goto :goto_0
.end method

.method protected init()V
    .locals 1

    .prologue
    .line 134
    invoke-super {p0}, Lcom/android/launcher3/common/base/view/PagedView;->init()V

    .line 135
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mCenterPagesVertically:Z

    .line 136
    return-void
.end method

.method public isTouchActive()Z
    .locals 1

    .prologue
    .line 737
    iget v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mTouchState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loggingPageCount()V
    .locals 7

    .prologue
    .line 861
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getPageCount()I

    move-result v0

    .line 862
    .local v0, "pageCount":I
    iget v1, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mOldPageCount:I

    if-eq v1, v0, :cond_0

    if-lez v0, :cond_0

    .line 863
    iput v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mOldPageCount:I

    .line 864
    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v1

    const-string v2, "APPS"

    const/4 v3, 0x0

    int-to-long v4, v0

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 866
    :cond_0
    return-void
.end method

.method public mapPointFromSelfToChild(Landroid/view/View;[F)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "xy"    # [F

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 571
    aget v0, p2, v2

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    aput v0, p2, v2

    .line 572
    aget v0, p2, v3

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    aput v0, p2, v3

    .line 573
    return-void
.end method

.method protected notifyPageChange(III)V
    .locals 1
    .param p1, "page"    # I
    .param p2, "scrollX"    # I
    .param p3, "pageCount"    # I

    .prologue
    .line 813
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AppsController;->isSelectState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 814
    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/common/base/view/PagedView;->notifyPageChange(III)V

    .line 816
    :cond_0
    return-void
.end method

.method protected notifyPageScroll(IIIII)V
    .locals 1
    .param p1, "page"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "scrollX"    # I
    .param p5, "pageCount"    # I

    .prologue
    .line 806
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AppsController;->isSelectState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 807
    invoke-super/range {p0 .. p5}, Lcom/android/launcher3/common/base/view/PagedView;->notifyPageScroll(IIIII)V

    .line 809
    :cond_0
    return-void
.end method

.method public onChangeScreenGrid(II)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 719
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getChildCount()I

    move-result v2

    .line 720
    .local v2, "screenCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 721
    invoke-virtual {p0, v1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;

    .line 722
    .local v0, "appsCellLayout":Lcom/android/launcher3/allapps/view/AppsViewCellLayout;
    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->setGridSize(II)V

    .line 720
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 724
    .end local v0    # "appsCellLayout":Lcom/android/launcher3/allapps/view/AppsViewCellLayout;
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->updpateLayout()V

    .line 725
    return-void
.end method

.method protected onDataReady(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 413
    invoke-direct {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->updatePageCounts()V

    .line 414
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 442
    invoke-super {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->onDraw(Landroid/graphics/Canvas;)V

    .line 445
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->postBindPages()V

    .line 446
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 418
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 419
    .local v1, "width":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 420
    .local v0, "height":I
    iget-object v2, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 421
    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->setMeasuredDimension(II)V

    .line 422
    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->onDataReady(II)V

    .line 425
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/common/base/view/PagedView;->onMeasure(II)V

    .line 426
    return-void
.end method

.method protected onPageBeginMoving()V
    .locals 2

    .prologue
    .line 757
    invoke-super {p0}, Lcom/android/launcher3/common/base/view/PagedView;->onPageBeginMoving()V

    .line 758
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportQuickOption()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragMgr()Lcom/android/launcher3/common/drag/DragManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/drag/DragManager;->isQuickOptionShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mCurrentPage:I

    iget v1, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mNextPage:I

    if-eq v0, v1, :cond_0

    .line 760
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    invoke-virtual {v0}, Lcom/android/launcher3/common/drag/DragManager;->removeQuickOptionView()V

    .line 762
    :cond_0
    return-void
.end method

.method protected onPageEndMoving()V
    .locals 3

    .prologue
    .line 742
    invoke-super {p0}, Lcom/android/launcher3/common/base/view/PagedView;->onPageEndMoving()V

    .line 743
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    invoke-virtual {v0}, Lcom/android/launcher3/common/drag/DragManager;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 744
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AppsController;->getState()I

    move-result v0

    if-nez v0, :cond_0

    .line 747
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    invoke-virtual {v0}, Lcom/android/launcher3/common/drag/DragManager;->forceTouchMove()V

    .line 750
    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/SemGateConfig;->isGateEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 751
    const-string v0, "GATE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<GATE-M>SCREEN_LOADED_APP_MENU_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCurrentPage()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</GATE-M>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    :cond_1
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 777
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/common/base/view/PagedView;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 790
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 791
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AppsController;->initBounceAnimation()V

    .line 793
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_2

    .line 794
    const/4 v0, 0x1

    .line 796
    :goto_0
    return v0

    :cond_2
    invoke-super {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected pageBeginMoving()V
    .locals 0

    .prologue
    .line 593
    invoke-super {p0}, Lcom/android/launcher3/common/base/view/PagedView;->pageBeginMoving()V

    .line 594
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->updateClockLiveIcon()V

    .line 595
    return-void
.end method

.method public postBindPages()V
    .locals 2

    .prologue
    .line 430
    const/4 v0, 0x0

    .line 432
    .local v0, "needDefferToBind":Z
    :try_start_0
    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/controller/AppsController;->needDefferToBind()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 435
    :goto_0
    if-nez v0, :cond_0

    .line 436
    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mBindPages:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->post(Ljava/lang/Runnable;)Z

    .line 438
    :cond_0
    return-void

    .line 433
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public removeAllPages()V
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mCellLayouts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 470
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->removeAllViews()V

    .line 471
    return-void
.end method

.method public removeEmptyScreen()Z
    .locals 4

    .prologue
    .line 341
    const/4 v0, 0x0

    .line 342
    .local v0, "hasRemovedPage":Z
    iget-object v2, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->removedScreen:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 343
    iget-object v2, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mCellLayouts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 344
    invoke-virtual {p0, v1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getItemCountPageAt(I)I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getExtraEmptyScreenIndex()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 345
    invoke-virtual {p0, v1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->removePageAt(I)V

    .line 346
    iget-object v2, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->removedScreen:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    const/4 v0, 0x1

    .line 343
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 350
    :cond_1
    if-eqz v0, :cond_2

    .line 351
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCurrentPage()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->snapToPage(I)V

    .line 353
    :cond_2
    sget-boolean v2, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v2, :cond_3

    .line 354
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->updateCurrentPageScroll()V

    .line 357
    :cond_3
    return v0
.end method

.method public removeExtraEmptyScreen()V
    .locals 2

    .prologue
    .line 229
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->removeExtraEmptyScreenDelayed(Ljava/lang/Runnable;I)V

    .line 230
    return-void
.end method

.method public removeExtraEmptyScreenDelayed(Ljava/lang/Runnable;I)V
    .locals 5
    .param p1, "onComplete"    # Ljava/lang/Runnable;
    .param p2, "delay"    # I

    .prologue
    const/16 v4, 0x190

    const/16 v3, 0x96

    const/4 v2, 0x0

    .line 234
    if-lez p2, :cond_1

    .line 235
    new-instance v1, Lcom/android/launcher3/allapps/view/AppsPagedView$2;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/allapps/view/AppsPagedView$2;-><init>(Lcom/android/launcher3/allapps/view/AppsPagedView;Ljava/lang/Runnable;)V

    int-to-long v2, p2

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/launcher3/allapps/view/AppsPagedView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 244
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->hasExtraEmptyScreen()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 245
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getExtraEmptyScreenIndex()I

    move-result v0

    .line 246
    .local v0, "emptyIndex":I
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getNextPage()I

    move-result v1

    if-ne v1, v0, :cond_2

    .line 247
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getNextPage()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v4}, Lcom/android/launcher3/allapps/view/AppsPagedView;->snapToPage(II)V

    .line 248
    invoke-direct {p0, v4, v3, p1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->fadeAndRemoveEmptyScreen(IILjava/lang/Runnable;)V

    .line 255
    :goto_1
    sget-boolean v1, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v1, :cond_0

    .line 256
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->updateCurrentPageScroll()V

    goto :goto_0

    .line 251
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getNextPage()I

    move-result v1

    invoke-virtual {p0, v1, v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->snapToPage(II)V

    .line 252
    invoke-direct {p0, v2, v3, p1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->fadeAndRemoveEmptyScreen(IILjava/lang/Runnable;)V

    goto :goto_1

    .line 261
    .end local v0    # "emptyIndex":I
    :cond_3
    if-eqz p1, :cond_0

    .line 262
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public removePageAt(I)V
    .locals 1
    .param p1, "screenId"    # I

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mCellLayouts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->removeView(Landroid/view/View;)V

    .line 337
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mCellLayouts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 338
    return-void
.end method

.method public removeScreenToRightSideEndPage(I)V
    .locals 5
    .param p1, "fromIndex"    # I

    .prologue
    .line 361
    const-string v2, "Launcher.AppsPagedView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeScreenToRightSideEndPage : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getPageCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    iget-object v2, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mCellLayouts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 363
    .local v0, "cellLayoutSize":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-lt v1, p1, :cond_1

    .line 364
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getExtraEmptyScreenIndex()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 365
    invoke-virtual {p0, v1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->removePageAt(I)V

    .line 363
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 368
    :cond_1
    return-void
.end method

.method protected resetTransitionEffect(Landroid/view/View;)V
    .locals 2
    .param p1, "page"    # Landroid/view/View;

    .prologue
    .line 599
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AppsController;->getState()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    .line 600
    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AppsController;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    .line 601
    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AppsController;->isRunningStateChangeAnimation()Z

    move-result v0

    if-nez v0, :cond_1

    .line 602
    invoke-super {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->resetTransitionEffect(Landroid/view/View;)V

    .line 604
    :cond_1
    return-void
.end method

.method restorePageForIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 402
    if-gez p1, :cond_0

    .line 404
    :goto_0
    return-void

    .line 403
    :cond_0
    iput p1, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mSaveInstanceStateItemIndex:I

    goto :goto_0
.end method

.method protected screenScrolled(III)V
    .locals 0
    .param p1, "screenCenter"    # I
    .param p2, "leftScreen"    # I
    .param p3, "rightScreen"    # I

    .prologue
    .line 383
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/allapps/view/AppsPagedView;->updatePageAlphaValues(III)V

    .line 386
    return-void
.end method

.method public scrollTo(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 827
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AppsController;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    if-ltz p1, :cond_1

    .line 828
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getMaxScrollX()I

    move-result v0

    if-gt p1, v0, :cond_1

    .line 829
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/common/base/view/PagedView;->scrollTo(II)V

    .line 831
    :cond_1
    return-void
.end method

.method public final setInsets(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "insets"    # Landroid/graphics/Rect;

    .prologue
    .line 498
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 499
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->updateBackgroundAndPaddings()V

    .line 500
    return-void
.end method

.method public setup(Lcom/android/launcher3/common/drag/DragManager;Lcom/android/launcher3/common/view/DragLayer;)V
    .locals 2
    .param p1, "dragMgr"    # Lcom/android/launcher3/common/drag/DragManager;
    .param p2, "dragLayer"    # Lcom/android/launcher3/common/view/DragLayer;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    .line 147
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mAppsDragController:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/drag/DragManager;->addDragListener(Lcom/android/launcher3/common/drag/DragManager$DragListener;)V

    .line 148
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mAppsDragController:Lcom/android/launcher3/allapps/controller/AppsDragController;

    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v0, p2, v1}, Lcom/android/launcher3/allapps/controller/AppsDragController;->setup(Lcom/android/launcher3/common/view/DragLayer;Lcom/android/launcher3/allapps/controller/AppsController;)V

    .line 149
    return-void
.end method

.method public snapToPageSALoggging(Z)V
    .locals 8
    .param p1, "isPageIndicator"    # Z

    .prologue
    const v4, 0x7f080132

    .line 844
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 845
    .local v0, "method":I
    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 846
    .local v1, "res":Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getMultiSelectManager()Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->isMultiSelectMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 847
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v2

    const v3, 0x7f080182

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 848
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    int-to-long v6, v0

    .line 847
    invoke-virtual {v2, v3, v4, v6, v7}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    .line 858
    :goto_1
    return-void

    .line 844
    .end local v0    # "method":I
    .end local v1    # "res":Landroid/content/res/Resources;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 851
    .restart local v0    # "method":I
    .restart local v1    # "res":Landroid/content/res/Resources;
    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/controller/AppsController;->getState()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 852
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v2

    const v3, 0x7f080180

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0800e7

    .line 853
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    int-to-long v6, v0

    .line 852
    invoke-virtual {v2, v3, v4, v6, v7}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_1

    .line 856
    :cond_2
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v2

    const v3, 0x7f08017f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 857
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    int-to-long v6, v0

    .line 856
    invoke-virtual {v2, v3, v4, v6, v7}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_1
.end method

.method public supportWhiteBg()Z
    .locals 1

    .prologue
    .line 801
    const/4 v0, 0x0

    return v0
.end method

.method public updateAccessibilityFlags(Z)V
    .locals 4
    .param p1, "show"    # Z

    .prologue
    .line 543
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getPageCount()I

    move-result v1

    .line 544
    .local v1, "total":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 545
    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->updateAccessibilityFlags(Lcom/android/launcher3/common/base/view/CellLayout;Z)V

    .line 544
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 547
    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/controller/AppsController;->getState()I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    .line 548
    invoke-virtual {v2}, Lcom/android/launcher3/allapps/controller/AppsController;->getState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    :cond_1
    const/4 v2, 0x0

    .line 547
    :goto_1
    invoke-virtual {p0, v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->setImportantForAccessibility(I)V

    .line 551
    return-void

    .line 548
    :cond_2
    const/4 v2, 0x4

    goto :goto_1
.end method

.method public updateBackgroundAndPaddings()V
    .locals 0

    .prologue
    .line 539
    return-void
.end method

.method public updateCheckBox(Z)V
    .locals 9
    .param p1, "visible"    # Z

    .prologue
    .line 694
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getPageCount()I

    move-result v5

    .line 695
    .local v5, "pageCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v5, :cond_5

    .line 696
    invoke-virtual {p0, v3}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 697
    .local v1, "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v2

    .line 698
    .local v2, "clc":Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    invoke-virtual {v2}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v0

    .line 699
    .local v0, "childCount":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    if-ge v4, v0, :cond_4

    .line 700
    invoke-virtual {v2, v4}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 701
    .local v6, "v":Landroid/view/View;
    instance-of v7, v6, Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v7, :cond_3

    .line 702
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFolderSelect()Z

    move-result v7

    if-nez v7, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move-object v7, v6

    .line 703
    check-cast v7, Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v7, p1}, Lcom/android/launcher3/folder/view/FolderIconView;->updateCheckBox(Z)V

    move-object v7, v6

    .line 704
    check-cast v7, Lcom/android/launcher3/folder/view/FolderIconView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/launcher3/folder/view/FolderIconView;->refreshCountBadge(I)V

    .line 706
    :cond_1
    check-cast v6, Lcom/android/launcher3/folder/view/FolderIconView;

    .end local v6    # "v":Landroid/view/View;
    invoke-virtual {v6}, Lcom/android/launcher3/folder/view/FolderIconView;->refreshBadge()V

    .line 699
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 707
    .restart local v6    # "v":Landroid/view/View;
    :cond_3
    instance-of v7, v6, Lcom/android/launcher3/common/view/IconView;

    if-eqz v7, :cond_2

    .line 708
    check-cast v6, Lcom/android/launcher3/common/view/IconView;

    .end local v6    # "v":Landroid/view/View;
    invoke-virtual {v6, p1}, Lcom/android/launcher3/common/view/IconView;->updateCheckBox(Z)V

    goto :goto_2

    .line 695
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 712
    .end local v0    # "childCount":I
    .end local v1    # "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v2    # "clc":Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    .end local v4    # "j":I
    :cond_5
    return-void
.end method

.method public updateClockLiveIcon()V
    .locals 14

    .prologue
    .line 607
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getComingPageForLiveIcon()I

    move-result v10

    .line 608
    .local v10, "page":I
    const/4 v12, -0x1

    if-ne v10, v12, :cond_1

    .line 646
    :cond_0
    return-void

    .line 612
    :cond_1
    invoke-virtual {p0, v10}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 613
    .local v0, "cellLayout":Lcom/android/launcher3/common/base/view/CellLayout;
    if-eqz v0, :cond_0

    .line 614
    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v1

    .line 615
    .local v1, "cl":Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v2

    .line 616
    .local v2, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 617
    invoke-virtual {v1, v4}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 618
    .local v11, "view":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 619
    .local v6, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    instance-of v12, v6, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v12, :cond_3

    .line 620
    iget-object v12, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v12, :cond_2

    .line 621
    iget-object v12, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 622
    .local v9, "packageName":Ljava/lang/String;
    invoke-static {v9}, Lcom/android/launcher3/Utilities;->checkClockPackageName(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 623
    check-cast v11, Lcom/android/launcher3/common/view/IconView;

    .end local v11    # "view":Landroid/view/View;
    check-cast v6, Lcom/android/launcher3/common/base/item/IconInfo;

    .end local v6    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    invoke-virtual {v11, v6}, Lcom/android/launcher3/common/view/IconView;->applyFromApplicationInfo(Lcom/android/launcher3/common/base/item/IconInfo;)V

    .line 616
    .end local v9    # "packageName":Ljava/lang/String;
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 626
    .restart local v6    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    .restart local v11    # "view":Landroid/view/View;
    :cond_3
    instance-of v12, v6, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v12, :cond_2

    .line 627
    const/4 v8, 0x0

    .line 628
    .local v8, "needToRefreshFolderIcon":Z
    invoke-virtual {v1, v6}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(Lcom/android/launcher3/common/base/item/ItemInfo;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/folder/view/FolderIconView;

    .line 629
    .local v3, "folderIconView":Lcom/android/launcher3/folder/view/FolderIconView;
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_2
    invoke-virtual {v3}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v12

    iget-object v12, v12, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v7, v12, :cond_4

    .line 630
    invoke-virtual {v3}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v12

    iget-object v12, v12, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 631
    .local v5, "insideItem":Lcom/android/launcher3/common/base/item/IconInfo;
    if-eqz v5, :cond_5

    invoke-virtual {v3}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v12

    iget-object v12, v12, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v12}, Lcom/android/launcher3/common/base/item/IconInfo;->getIntent()Landroid/content/Intent;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    if-eqz v12, :cond_5

    .line 632
    invoke-virtual {v3}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v12

    iget-object v12, v12, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v12}, Lcom/android/launcher3/common/base/item/IconInfo;->getIntent()Landroid/content/Intent;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 633
    .restart local v9    # "packageName":Ljava/lang/String;
    if-eqz v9, :cond_5

    iget v12, v5, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    const/16 v13, 0x9

    if-ge v12, v13, :cond_5

    .line 634
    invoke-static {v9}, Lcom/android/launcher3/Utilities;->checkClockPackageName(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 635
    const/4 v8, 0x1

    .line 640
    .end local v5    # "insideItem":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v9    # "packageName":Ljava/lang/String;
    :cond_4
    if-eqz v8, :cond_2

    .line 641
    invoke-virtual {v3}, Lcom/android/launcher3/folder/view/FolderIconView;->refreshFolderIcon()V

    goto :goto_1

    .line 629
    .restart local v5    # "insideItem":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_2
.end method

.method public updateLayoutByConfigurationChanged()V
    .locals 0

    .prologue
    .line 715
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->updpateLayout()V

    .line 716
    return-void
.end method

.method public updateLiveIcon()V
    .locals 14

    .prologue
    .line 649
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCurrentPage()I

    move-result v10

    .line 650
    .local v10, "page":I
    const/4 v12, -0x1

    if-ne v10, v12, :cond_1

    .line 687
    :cond_0
    return-void

    .line 654
    :cond_1
    invoke-virtual {p0, v10}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 655
    .local v0, "cellLayout":Lcom/android/launcher3/common/base/view/CellLayout;
    if-eqz v0, :cond_0

    .line 656
    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v1

    .line 657
    .local v1, "cl":Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v2

    .line 658
    .local v2, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 659
    invoke-virtual {v1, v4}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 660
    .local v11, "view":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 661
    .local v6, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    instance-of v12, v6, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v12, :cond_3

    .line 662
    iget-object v12, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 663
    .local v9, "packageName":Ljava/lang/String;
    if-eqz v9, :cond_2

    invoke-static {v9}, Lcom/android/launcher3/common/view/LiveIconManager;->isLiveIconPackage(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    move-object v12, v11

    .line 664
    check-cast v12, Lcom/android/launcher3/common/view/IconView;

    check-cast v6, Lcom/android/launcher3/common/base/item/IconInfo;

    .end local v6    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    invoke-virtual {v12, v6}, Lcom/android/launcher3/common/view/IconView;->applyFromApplicationInfo(Lcom/android/launcher3/common/base/item/IconInfo;)V

    .line 665
    invoke-virtual {v11}, Landroid/view/View;->invalidate()V

    .line 658
    .end local v9    # "packageName":Ljava/lang/String;
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 667
    .restart local v6    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_3
    instance-of v12, v6, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v12, :cond_2

    .line 668
    const/4 v8, 0x0

    .line 669
    .local v8, "needToRefreshFolderIcon":Z
    invoke-virtual {v1, v6}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(Lcom/android/launcher3/common/base/item/ItemInfo;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/folder/view/FolderIconView;

    .line 670
    .local v3, "folderIconView":Lcom/android/launcher3/folder/view/FolderIconView;
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_2
    invoke-virtual {v3}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v12

    iget-object v12, v12, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v7, v12, :cond_4

    .line 671
    invoke-virtual {v3}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v12

    iget-object v12, v12, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 672
    .local v5, "insideItem":Lcom/android/launcher3/common/base/item/IconInfo;
    if-eqz v5, :cond_5

    invoke-virtual {v3}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v12

    iget-object v12, v12, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v12}, Lcom/android/launcher3/common/base/item/IconInfo;->getIntent()Landroid/content/Intent;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    if-eqz v12, :cond_5

    .line 673
    invoke-virtual {v3}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v12

    iget-object v12, v12, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v12}, Lcom/android/launcher3/common/base/item/IconInfo;->getIntent()Landroid/content/Intent;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 674
    .restart local v9    # "packageName":Ljava/lang/String;
    if-eqz v9, :cond_5

    iget v12, v5, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    const/16 v13, 0x9

    if-ge v12, v13, :cond_5

    .line 675
    invoke-static {v9}, Lcom/android/launcher3/common/view/LiveIconManager;->isLiveIconPackage(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 676
    const/4 v8, 0x1

    .line 681
    .end local v5    # "insideItem":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v9    # "packageName":Ljava/lang/String;
    :cond_4
    if-eqz v8, :cond_2

    .line 682
    invoke-virtual {v3}, Lcom/android/launcher3/folder/view/FolderIconView;->refreshFolderIcon()V

    goto :goto_1

    .line 670
    .restart local v5    # "insideItem":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_2
.end method

.method protected updatePageTransform(Landroid/view/View;II)V
    .locals 1
    .param p1, "page"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "screenCenter"    # I

    .prologue
    .line 820
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AppsController;->getState()I

    move-result v0

    if-nez v0, :cond_0

    .line 821
    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/common/base/view/PagedView;->updatePageTransform(Landroid/view/View;II)V

    .line 823
    :cond_0
    return-void
.end method

.method public updpateLayout()V
    .locals 3

    .prologue
    .line 728
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getChildCount()I

    move-result v2

    .line 729
    .local v2, "screenCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 730
    invoke-virtual {p0, v1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;

    .line 731
    .local v0, "appsCellLayout":Lcom/android/launcher3/allapps/view/AppsViewCellLayout;
    invoke-virtual {v0}, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->setCellDimensions()V

    .line 732
    invoke-virtual {v0}, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->updateIconViews()V

    .line 729
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 734
    .end local v0    # "appsCellLayout":Lcom/android/launcher3/allapps/view/AppsViewCellLayout;
    :cond_0
    return-void
.end method
