.class public Lcom/android/launcher3/home/Workspace;
.super Lcom/android/launcher3/common/base/view/PagedView;
.source "Workspace.java"

# interfaces
.implements Lcom/android/launcher3/common/base/view/LauncherTransitionable;
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;
.implements Lcom/android/launcher3/common/base/view/Insettable;
.implements Lcom/android/launcher3/Stats$LaunchSourceProvider;


# static fields
.field public static final EXTRA_FESTIVALPAGE_SCREEN_ID:J = -0x1f5L

.field public static final EXTRA_PLUS_SCREEN_ID:J = -0x191L

.field public static final EXTRA_ZEROPAGE_SCREEN_ID:J = -0x12dL

.field protected static final FADE_EMPTY_SCREEN_DURATION:I = 0x96

.field private static final FADE_HOME_ICON_DURATION:I = 0x12c

.field private static final PAGE_REMOVE_POPUP_DELAY:I = 0x12c

.field protected static final PINCH_DISTANCE_DELTA:I = 0x32

.field protected static final SNAP_OFF_EMPTY_SCREEN_DURATION:I = 0x190

.field private static final TAG:Ljava/lang/String; = "Launcher.Workspace"


# instance fields
.field private mAdditionalCount:I

.field private final mBindPages:Ljava/lang/Runnable;

.field mChildrenLayersEnabled:Z

.field private mCustomPage:Lcom/android/launcher3/home/WorkspaceCellLayout;

.field private mDefaultHomeIcon:Landroid/view/View;

.field private mDefaultHomeScreenId:J

.field private mDefaultPage:I

.field private mDeferRemoveExtraEmptyScreen:Z

.field private mDelayedResizeRunnable:Ljava/lang/Runnable;

.field private mDelayedSnapToPageRunnable:Ljava/lang/Runnable;

.field private mDisplaySize:Landroid/graphics/Point;

.field private mDownRawX:F

.field private mDownRawY:F

.field private mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

.field private mHomeBindController:Lcom/android/launcher3/home/HomeBindController;

.field private mHomeController:Lcom/android/launcher3/home/HomeController;

.field private mIsDefaultZeroPage:Z

.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private mLayoutTransition:Landroid/animation/LayoutTransition;

.field private mOverviewShrinkFactor:F

.field private mRemoveEmptyScreenRunnable:Ljava/lang/Runnable;

.field private mRemoveScreenDialog:Landroid/app/AlertDialog;

.field private mRestartZeroPage:Z

.field private final mRestoredPages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSavedStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenOrder:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mTempCell:[I

.field private mTempVisiblePagesRange:[I

.field private final mWallpaperManager:Landroid/app/WallpaperManager;

.field private mWindowToken:Landroid/os/IBinder;

.field private mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/LongArrayMap",
            "<",
            "Lcom/android/launcher3/common/base/view/CellLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mWsDragController:Lcom/android/launcher3/home/WorkspaceDragController;

.field private mXDown:F

.field private mYDown:F

.field private mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 186
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/home/Workspace;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 187
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 197
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/common/base/view/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 123
    new-instance v2, Lcom/android/launcher3/util/LongArrayMap;

    invoke-direct {v2}, Lcom/android/launcher3/util/LongArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/launcher3/home/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    .line 124
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/launcher3/home/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    .line 127
    iput-boolean v3, p0, Lcom/android/launcher3/home/Workspace;->mDeferRemoveExtraEmptyScreen:Z

    .line 136
    new-array v2, v5, [I

    iput-object v2, p0, Lcom/android/launcher3/home/Workspace;->mTempCell:[I

    .line 140
    iput-boolean v4, p0, Lcom/android/launcher3/home/Workspace;->mChildrenLayersEnabled:Z

    .line 142
    new-array v2, v5, [I

    iput-object v2, p0, Lcom/android/launcher3/home/Workspace;->mTempVisiblePagesRange:[I

    .line 146
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, Lcom/android/launcher3/home/Workspace;->mDisplaySize:Landroid/graphics/Point;

    .line 155
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/launcher3/home/Workspace;->mRestoredPages:Ljava/util/ArrayList;

    .line 161
    iput-object v6, p0, Lcom/android/launcher3/home/Workspace;->mDefaultHomeIcon:Landroid/view/View;

    .line 166
    iput v3, p0, Lcom/android/launcher3/home/Workspace;->mAdditionalCount:I

    .line 168
    iput-object v6, p0, Lcom/android/launcher3/home/Workspace;->mCustomPage:Lcom/android/launcher3/home/WorkspaceCellLayout;

    .line 169
    iput-boolean v3, p0, Lcom/android/launcher3/home/Workspace;->mRestartZeroPage:Z

    .line 171
    new-instance v2, Lcom/android/launcher3/home/Workspace$1;

    invoke-direct {v2, p0}, Lcom/android/launcher3/home/Workspace$1;-><init>(Lcom/android/launcher3/home/Workspace;)V

    iput-object v2, p0, Lcom/android/launcher3/home/Workspace;->mBindPages:Ljava/lang/Runnable;

    move-object v2, p1

    .line 199
    check-cast v2, Lcom/android/launcher3/Launcher;

    iput-object v2, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 201
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 202
    .local v1, "res":Landroid/content/res/Resources;
    iput-boolean v3, p0, Lcom/android/launcher3/home/Workspace;->mFadeInAdjacentScreens:Z

    .line 203
    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/home/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 205
    invoke-static {}, Lcom/android/launcher3/home/ZeroPageController;->supportVirtualScreen()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 206
    new-instance v2, Lcom/android/launcher3/home/ZeroPageController;

    invoke-direct {v2, p1, p0}, Lcom/android/launcher3/home/ZeroPageController;-><init>(Landroid/content/Context;Lcom/android/launcher3/home/Workspace;)V

    iput-object v2, p0, Lcom/android/launcher3/home/Workspace;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    .line 209
    :cond_0
    sget-object v2, Lcom/sec/android/app/launcher/R$styleable;->Workspace:[I

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 210
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 211
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->setupShrinkFactor()V

    .line 213
    iget-object v2, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v2}, Lcom/android/launcher3/Utilities;->getHomeDefaultPageKey(Landroid/content/Context;)I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/home/Workspace;->mDefaultPage:I

    .line 215
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportZeroPageHome()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 216
    iget v2, p0, Lcom/android/launcher3/home/Workspace;->mDefaultPage:I

    invoke-direct {p0, v2, v4}, Lcom/android/launcher3/home/Workspace;->updateHomeDefaultZeroPageKey(IZ)V

    .line 219
    :cond_1
    const v2, 0x7f0900ef

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/home/Workspace;->mPageSpacing:I

    .line 220
    invoke-virtual {p0, p0}, Lcom/android/launcher3/home/Workspace;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 221
    invoke-virtual {p0, v3}, Lcom/android/launcher3/home/Workspace;->setHapticFeedbackEnabled(Z)V

    .line 223
    invoke-direct {p0}, Lcom/android/launcher3/home/Workspace;->initWorkspace()V

    .line 225
    new-instance v2, Lcom/android/launcher3/home/WorkspaceDragController;

    iget-object v3, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v2, v3, p0}, Lcom/android/launcher3/home/WorkspaceDragController;-><init>(Landroid/content/Context;Lcom/android/launcher3/home/Workspace;)V

    iput-object v2, p0, Lcom/android/launcher3/home/Workspace;->mWsDragController:Lcom/android/launcher3/home/WorkspaceDragController;

    .line 228
    invoke-virtual {p0, v4}, Lcom/android/launcher3/home/Workspace;->setMotionEventSplittingEnabled(Z)V

    .line 230
    const v2, 0x7f0900d1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/home/Workspace;->mHintPageWidth:I

    .line 231
    const v2, 0x7f0900d0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/home/Workspace;->mHintPageLeftZone:I

    .line 232
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, p0, Lcom/android/launcher3/home/Workspace;->mHintPageLeftZone:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/android/launcher3/home/Workspace;->mHintPageRightZone:I

    .line 233
    const v2, 0x7f0900db

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/launcher3/home/Workspace;->mTranslatePagesOffset:F

    .line 234
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/home/Workspace;IILjava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/home/Workspace;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/Runnable;

    .prologue
    .line 100
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/home/Workspace;->fadeAndRemoveEmptyScreen(IILjava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/launcher3/home/Workspace;)Lcom/android/launcher3/util/LongArrayMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/Workspace;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/launcher3/home/Workspace;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/Workspace;

    .prologue
    .line 100
    iget v0, p0, Lcom/android/launcher3/home/Workspace;->mDefaultPage:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/launcher3/home/Workspace;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/Workspace;

    .prologue
    .line 100
    iget v0, p0, Lcom/android/launcher3/home/Workspace;->mCurrentPage:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/launcher3/home/Workspace;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/Workspace;

    .prologue
    .line 100
    iget v0, p0, Lcom/android/launcher3/home/Workspace;->mCurrentPage:I

    return v0
.end method

.method static synthetic access$1302(Lcom/android/launcher3/home/Workspace;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/home/Workspace;
    .param p1, "x1"    # Z

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/android/launcher3/home/Workspace;->mFirstLayout:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/launcher3/home/Workspace;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/Workspace;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/launcher3/home/Workspace;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/Workspace;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mRemoveEmptyScreenRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/launcher3/home/Workspace;)Lcom/android/launcher3/home/ZeroPageController;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/Workspace;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/launcher3/home/Workspace;)Lcom/android/launcher3/home/HomeController;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/Workspace;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/launcher3/home/Workspace;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/home/Workspace;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 100
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/home/Workspace;->setCustomFlagOnChild(ZZ)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/launcher3/home/Workspace;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/Workspace;

    .prologue
    .line 100
    iget v0, p0, Lcom/android/launcher3/home/Workspace;->mCurrentPage:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/launcher3/home/Workspace;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/Workspace;

    .prologue
    .line 100
    iget v0, p0, Lcom/android/launcher3/home/Workspace;->mCurrentPage:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/launcher3/home/Workspace;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/home/Workspace;

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/launcher3/home/Workspace;->showRemoveScreenPopup()V

    return-void
.end method

.method private addCustomLayout(Lcom/android/launcher3/home/WorkspaceCellLayout;)V
    .locals 9
    .param p1, "child"    # Lcom/android/launcher3/home/WorkspaceCellLayout;

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 1745
    new-instance v3, Lcom/android/launcher3/home/Workspace$9;

    invoke-direct {v3, p0}, Lcom/android/launcher3/home/Workspace$9;-><init>(Lcom/android/launcher3/home/Workspace;)V

    .line 1753
    .local v3, "alignTopClickListner":Landroid/view/View$OnClickListener;
    new-instance v0, Lcom/android/launcher3/home/Workspace$10;

    invoke-direct {v0, p0}, Lcom/android/launcher3/home/Workspace$10;-><init>(Lcom/android/launcher3/home/Workspace;)V

    .line 1761
    .local v0, "alignBottomClickListner":Landroid/view/View$OnClickListener;
    new-instance v4, Lcom/android/launcher3/home/Workspace$11;

    invoke-direct {v4, p0}, Lcom/android/launcher3/home/Workspace$11;-><init>(Lcom/android/launcher3/home/Workspace;)V

    .line 1778
    .local v4, "pageDeleteClickListner":Landroid/view/View$OnClickListener;
    invoke-virtual {p1, v3}, Lcom/android/launcher3/home/WorkspaceCellLayout;->addAlignLayoutTop(Landroid/view/View$OnClickListener;)V

    .line 1779
    invoke-virtual {p1, v0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->addAlignLayoutBottom(Landroid/view/View$OnClickListener;)V

    .line 1780
    invoke-virtual {p1, v4}, Lcom/android/launcher3/home/WorkspaceCellLayout;->addPageDeleteBtn(Landroid/view/View$OnClickListener;)V

    .line 1782
    invoke-virtual {p1}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getAlignLayoutList()Ljava/util/ArrayList;

    move-result-object v2

    .line 1783
    .local v2, "alignLayoutList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/LinearLayout;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 1784
    .local v1, "alignLayout":Landroid/widget/LinearLayout;
    invoke-virtual {p0, v1, v8, v7}, Lcom/android/launcher3/home/Workspace;->setAlphaWithVisibility(Landroid/view/View;IZ)V

    goto :goto_0

    .line 1786
    .end local v1    # "alignLayout":Landroid/widget/LinearLayout;
    :cond_0
    invoke-virtual {p1}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getPageDeleteBtn()Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0, v5, v8, v7}, Lcom/android/launcher3/home/Workspace;->setAlphaWithVisibility(Landroid/view/View;IZ)V

    .line 1787
    return-void
.end method

.method private backgroundAlphaThreshold(F)F
    .locals 4
    .param p1, "r"    # F

    .prologue
    .line 1005
    const/4 v0, 0x0

    .line 1006
    .local v0, "pivotA":F
    const v1, 0x3e99999a    # 0.3f

    .line 1007
    .local v1, "pivotB":F
    cmpg-float v2, p1, v0

    if-gez v2, :cond_0

    .line 1008
    const/4 v2, 0x0

    .line 1012
    :goto_0
    return v2

    .line 1009
    :cond_0
    cmpl-float v2, p1, v1

    if-lez v2, :cond_1

    .line 1010
    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    .line 1012
    :cond_1
    sub-float v2, p1, v0

    sub-float v3, v1, v0

    div-float/2addr v2, v3

    goto :goto_0
.end method

.method private canDeleteScreen()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 2060
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->isOverviewState()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2061
    invoke-static {}, Lcom/android/launcher3/home/ZeroPageController;->isEnableZeroPage()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getChildCount()I

    move-result v2

    const/4 v3, 0x3

    if-le v2, v3, :cond_1

    .line 2063
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 2061
    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getChildCount()I

    move-result v2

    const/4 v3, 0x2

    if-gt v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    .line 2063
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getChildCount()I

    move-result v2

    if-gt v2, v0, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private changePlusPageColorFilterForBg(Z)V
    .locals 4
    .param p1, "whiteBg"    # Z

    .prologue
    .line 2096
    const-wide/16 v2, -0x191

    invoke-virtual {p0, v2, v3}, Lcom/android/launcher3/home/Workspace;->getScreenWithId(J)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/home/WorkspaceCellLayout;

    .line 2097
    .local v0, "cl":Lcom/android/launcher3/home/WorkspaceCellLayout;
    if-eqz v0, :cond_0

    .line 2098
    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v1, v2, p1}, Lcom/android/launcher3/util/WhiteBgManager;->changeColorFilterForBg(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Z)V

    .line 2100
    :cond_0
    return-void
.end method

.method private checkAlignButtonEnabled(I)V
    .locals 6
    .param p1, "pageIndex"    # I

    .prologue
    const/4 v5, 0x1

    .line 1923
    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/home/WorkspaceCellLayout;

    .line 1924
    .local v2, "child":Lcom/android/launcher3/home/WorkspaceCellLayout;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getAlignLayoutList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1925
    iget-object v3, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v3, v5, v5, p1}, Lcom/android/launcher3/home/HomeController;->autoAlignItems(ZZI)Z

    move-result v1

    .line 1926
    .local v1, "canAlignTop":Z
    iget-object v3, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v5, p1}, Lcom/android/launcher3/home/HomeController;->autoAlignItems(ZZI)Z

    move-result v0

    .line 1927
    .local v0, "canAlignBottom":Z
    invoke-virtual {v2, v1, v0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setEnabledOnAlignButton(ZZ)V

    .line 1929
    .end local v0    # "canAlignBottom":Z
    .end local v1    # "canAlignTop":Z
    :cond_0
    return-void
.end method

.method private checkVisibilityOfPageDeleteBtn()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1980
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHomeModeChange()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1981
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->isOverviewState()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1982
    iget v3, p0, Lcom/android/launcher3/home/Workspace;->mCurrentPage:I

    invoke-virtual {p0, v3}, Lcom/android/launcher3/home/Workspace;->getPageDeleteBtn(I)Landroid/view/View;

    move-result-object v0

    .line 1983
    .local v0, "pageDeleteBtn":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1984
    iget v3, p0, Lcom/android/launcher3/home/Workspace;->mCurrentPage:I

    invoke-virtual {p0, v3}, Lcom/android/launcher3/home/Workspace;->isEmptyPage(I)Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    .line 1985
    .local v1, "visibility":I
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v1, :cond_0

    .line 1986
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/launcher3/home/Workspace;->setAlphaWithVisibility(Landroid/view/View;IZ)V

    .line 1990
    .end local v0    # "pageDeleteBtn":Landroid/view/View;
    .end local v1    # "visibility":I
    :cond_0
    return-void

    .line 1984
    .restart local v0    # "pageDeleteBtn":Landroid/view/View;
    :cond_1
    const/16 v1, 0x8

    goto :goto_0
.end method

.method private clearChildrenCache()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1116
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getChildCount()I

    move-result v2

    .line 1117
    .local v2, "screenCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 1118
    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 1119
    .local v1, "layout":Lcom/android/launcher3/common/base/view/CellLayout;
    invoke-virtual {v1, v4}, Lcom/android/launcher3/common/base/view/CellLayout;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 1121
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->isHardwareAccelerated()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1122
    invoke-virtual {v1, v4}, Lcom/android/launcher3/common/base/view/CellLayout;->setChildrenDrawingCacheEnabled(Z)V

    .line 1117
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1125
    .end local v1    # "layout":Lcom/android/launcher3/common/base/view/CellLayout;
    :cond_1
    return-void
.end method

.method private createPage(JI)Lcom/android/launcher3/home/WorkspaceCellLayout;
    .locals 5
    .param p1, "screenId"    # J
    .param p3, "insertIndex"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1569
    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030050

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/home/WorkspaceCellLayout;

    .line 1572
    .local v0, "newScreen":Lcom/android/launcher3/home/WorkspaceCellLayout;
    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->getState()I

    move-result v1

    invoke-virtual {v0, v1, v3}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setBgImage(IZ)V

    .line 1573
    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1574
    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1575
    invoke-virtual {v0, v3}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setSoundEffectsEnabled(Z)V

    .line 1577
    invoke-direct {p0, v0}, Lcom/android/launcher3/home/Workspace;->addCustomLayout(Lcom/android/launcher3/home/WorkspaceCellLayout;)V

    .line 1579
    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v1, p1, p2, v0}, Lcom/android/launcher3/util/LongArrayMap;->put(JLjava/lang/Object;)V

    .line 1580
    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, p3, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1581
    invoke-virtual {p0, v0, p3}, Lcom/android/launcher3/home/Workspace;->addView(Landroid/view/View;I)V

    .line 1583
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->isOverviewState()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1584
    invoke-virtual {p0, v4}, Lcom/android/launcher3/home/Workspace;->updateAccessibilityFlags(Z)V

    .line 1585
    invoke-virtual {v0, v4}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setCustomFlag(Z)V

    .line 1586
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->checkAlignButtonEnabled()V

    .line 1589
    :cond_0
    return-object v0
.end method

.method private disableLayoutTransitions()V
    .locals 1

    .prologue
    .line 316
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/Workspace;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 317
    return-void
.end method

.method private enableChildrenCache(II)V
    .locals 6
    .param p1, "fromPage"    # I
    .param p2, "toPage"    # I

    .prologue
    const/4 v5, 0x1

    .line 1097
    if-le p1, p2, :cond_0

    .line 1098
    move v3, p1

    .line 1099
    .local v3, "temp":I
    move p1, p2

    .line 1100
    move p2, v3

    .line 1103
    .end local v3    # "temp":I
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getChildCount()I

    move-result v2

    .line 1105
    .local v2, "screenCount":I
    const/4 v4, 0x0

    invoke-static {p1, v4}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1106
    add-int/lit8 v4, v2, -0x1

    invoke-static {p2, v4}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 1108
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-gt v0, p2, :cond_1

    .line 1109
    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 1110
    .local v1, "layout":Lcom/android/launcher3/common/base/view/CellLayout;
    invoke-virtual {v1, v5}, Lcom/android/launcher3/common/base/view/CellLayout;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 1111
    invoke-virtual {v1, v5}, Lcom/android/launcher3/common/base/view/CellLayout;->setChildrenDrawingCacheEnabled(Z)V

    .line 1108
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1113
    .end local v1    # "layout":Lcom/android/launcher3/common/base/view/CellLayout;
    :cond_1
    return-void
.end method

.method private enableHwLayersOnVisiblePages()V
    .locals 14

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1151
    iget-boolean v10, p0, Lcom/android/launcher3/home/Workspace;->mChildrenLayersEnabled:Z

    if-eqz v10, :cond_3

    .line 1152
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getChildCount()I

    move-result v7

    .line 1153
    .local v7, "screenCount":I
    iget-object v10, p0, Lcom/android/launcher3/home/Workspace;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v10}, Lcom/android/launcher3/home/Workspace;->getVisiblePages([I)V

    .line 1154
    iget-object v10, p0, Lcom/android/launcher3/home/Workspace;->mTempVisiblePagesRange:[I

    aget v5, v10, v9

    .line 1155
    .local v5, "leftScreen":I
    iget-object v10, p0, Lcom/android/launcher3/home/Workspace;->mTempVisiblePagesRange:[I

    aget v6, v10, v8

    .line 1156
    .local v6, "rightScreen":I
    if-ne v5, v6, :cond_0

    .line 1158
    add-int/lit8 v10, v7, -0x1

    if-ge v6, v10, :cond_1

    .line 1159
    add-int/lit8 v6, v6, 0x1

    .line 1165
    :cond_0
    :goto_0
    iget-object v10, p0, Lcom/android/launcher3/home/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    const-wide/16 v12, -0x12d

    invoke-virtual {v10, v12, v13}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 1166
    .local v0, "customScreen":Lcom/android/launcher3/common/base/view/CellLayout;
    iget-object v10, p0, Lcom/android/launcher3/home/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    const-wide/16 v12, -0x1f5

    invoke-virtual {v10, v12, v13}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 1167
    .local v2, "festivalScreen":Lcom/android/launcher3/common/base/view/CellLayout;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v7, :cond_3

    .line 1168
    invoke-virtual {p0, v3}, Lcom/android/launcher3/home/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 1172
    .local v4, "layout":Lcom/android/launcher3/common/base/view/CellLayout;
    if-eq v4, v0, :cond_2

    if-eq v4, v2, :cond_2

    if-gt v5, v3, :cond_2

    if-gt v3, v6, :cond_2

    .line 1173
    invoke-virtual {p0, v4}, Lcom/android/launcher3/home/Workspace;->shouldDrawChild(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_2

    move v1, v8

    .line 1174
    .local v1, "enableLayer":Z
    :goto_2
    invoke-virtual {v4, v1}, Lcom/android/launcher3/common/base/view/CellLayout;->enableHardwareLayer(Z)V

    .line 1167
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1160
    .end local v0    # "customScreen":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v1    # "enableLayer":Z
    .end local v2    # "festivalScreen":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v3    # "i":I
    .end local v4    # "layout":Lcom/android/launcher3/common/base/view/CellLayout;
    :cond_1
    if-lez v5, :cond_0

    .line 1161
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .restart local v0    # "customScreen":Lcom/android/launcher3/common/base/view/CellLayout;
    .restart local v2    # "festivalScreen":Lcom/android/launcher3/common/base/view/CellLayout;
    .restart local v3    # "i":I
    .restart local v4    # "layout":Lcom/android/launcher3/common/base/view/CellLayout;
    :cond_2
    move v1, v9

    .line 1173
    goto :goto_2

    .line 1177
    .end local v0    # "customScreen":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v2    # "festivalScreen":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v3    # "i":I
    .end local v4    # "layout":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v5    # "leftScreen":I
    .end local v6    # "rightScreen":I
    .end local v7    # "screenCount":I
    :cond_3
    return-void
.end method

.method private enableLayoutTransitions()V
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/Workspace;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 313
    return-void
.end method

.method private fadeAndRemoveEmptyScreen(IILjava/lang/Runnable;)V
    .locals 10
    .param p1, "delay"    # I
    .param p2, "duration"    # I
    .param p3, "onComplete"    # Ljava/lang/Runnable;

    .prologue
    const/4 v6, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 501
    const-string v4, "alpha"

    new-array v5, v9, [F

    aput v6, v5, v8

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 502
    .local v0, "alpha":Landroid/animation/PropertyValuesHolder;
    const-string v4, "backgroundAlpha"

    new-array v5, v9, [F

    aput v6, v5, v8

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 504
    .local v1, "bgAlpha":Landroid/animation/PropertyValuesHolder;
    iget-object v4, p0, Lcom/android/launcher3/home/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    const-wide/16 v6, -0xc9

    invoke-virtual {v4, v6, v7}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 506
    .local v2, "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    new-instance v4, Lcom/android/launcher3/home/Workspace$4;

    invoke-direct {v4, p0, v2}, Lcom/android/launcher3/home/Workspace$4;-><init>(Lcom/android/launcher3/home/Workspace;Lcom/android/launcher3/common/base/view/CellLayout;)V

    iput-object v4, p0, Lcom/android/launcher3/home/Workspace;->mRemoveEmptyScreenRunnable:Ljava/lang/Runnable;

    .line 517
    const/4 v4, 0x2

    new-array v4, v4, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v4, v8

    aput-object v1, v4, v9

    invoke-static {v2, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 518
    .local v3, "oa":Landroid/animation/ObjectAnimator;
    int-to-long v4, p2

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 519
    int-to-long v4, p1

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 520
    new-instance v4, Lcom/android/launcher3/home/Workspace$5;

    invoke-direct {v4, p0, p3}, Lcom/android/launcher3/home/Workspace$5;-><init>(Lcom/android/launcher3/home/Workspace;Ljava/lang/Runnable;)V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 531
    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->start()V

    .line 532
    return-void
.end method

.method private getPageDescription(IZ)Ljava/lang/String;
    .locals 9
    .param p1, "page"    # I
    .param p2, "needToSwipeAffordance"    # Z

    .prologue
    .line 1469
    const-string v3, ""

    .line 1470
    .local v3, "pageDescription":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/launcher3/home/Workspace;->getPageIndexToStart()I

    move-result v1

    .line 1471
    .local v1, "delta":I
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getChildCount()I

    move-result v4

    sub-int v2, v4, v1

    .line 1472
    .local v2, "lastPage":I
    add-int/lit8 v4, p1, 0x1

    sub-int v0, v4, v1

    .line 1474
    .local v0, "currentPage":I
    if-eqz p2, :cond_0

    .line 1475
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f08009b

    .line 1476
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1479
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1480
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f08001f

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    .line 1479
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1482
    iget v4, p0, Lcom/android/launcher3/home/Workspace;->mDefaultPage:I

    add-int/lit8 v4, v4, 0x1

    sub-int/2addr v4, v1

    if-ne v0, v4, :cond_2

    .line 1483
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f08001e

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1488
    :cond_1
    :goto_0
    return-object v3

    .line 1484
    :cond_2
    if-ne v0, v2, :cond_1

    .line 1485
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f080049

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private getPageIndexToStart()I
    .locals 2

    .prologue
    .line 430
    const-wide/16 v0, -0x12d

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/home/Workspace;->hasCustomContentPage(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasCustomContentPage(J)Z
    .locals 11
    .param p1, "screenId"    # J

    .prologue
    const-wide/16 v8, -0x12d

    const-wide/16 v6, -0x191

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 417
    const/4 v0, 0x0

    .line 418
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 419
    cmp-long v1, p1, v8

    if-nez v1, :cond_2

    .line 420
    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v1, v4, v8

    if-nez v1, :cond_1

    move v0, v2

    .line 426
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v3

    .line 420
    goto :goto_0

    .line 421
    :cond_2
    cmp-long v1, p1, v6

    if-nez v1, :cond_0

    .line 422
    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/launcher3/home/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v1, v4, v6

    if-nez v1, :cond_3

    move v0, v2

    :goto_1
    goto :goto_0

    :cond_3
    move v0, v3

    goto :goto_1
.end method

.method private initWorkspace()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 284
    iget v1, p0, Lcom/android/launcher3/home/Workspace;->mDefaultPage:I

    iput v1, p0, Lcom/android/launcher3/home/Workspace;->mCurrentPage:I

    .line 285
    invoke-virtual {p0, v2}, Lcom/android/launcher3/home/Workspace;->setWillNotDraw(Z)V

    .line 286
    invoke-virtual {p0, v2}, Lcom/android/launcher3/home/Workspace;->setClipChildren(Z)V

    .line 287
    invoke-virtual {p0, v2}, Lcom/android/launcher3/home/Workspace;->setClipToPadding(Z)V

    .line 288
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/home/Workspace;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 290
    iget v1, p0, Lcom/android/launcher3/home/Workspace;->mOverviewShrinkFactor:F

    invoke-virtual {p0, v1}, Lcom/android/launcher3/home/Workspace;->setMinScale(F)V

    .line 291
    invoke-direct {p0}, Lcom/android/launcher3/home/Workspace;->setupLayoutTransition()V

    .line 293
    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 294
    .local v0, "display":Landroid/view/Display;
    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 297
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->setWallpaperDimension()V

    .line 298
    return-void
.end method

.method private insertPage(II)J
    .locals 6
    .param p1, "currentIndex"    # I
    .param p2, "targetIndex"    # I

    .prologue
    .line 2264
    invoke-static {}, Lcom/android/launcher3/common/model/FavoritesProvider;->getInstance()Lcom/android/launcher3/common/model/FavoritesProvider;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/common/model/FavoritesProvider;->generateNewScreenId()J

    move-result-wide v2

    .line 2265
    .local v2, "newId":J
    iget v0, p0, Lcom/android/launcher3/home/Workspace;->mCurrentPage:I

    .line 2267
    .local v0, "currentPage":I
    invoke-direct {p0, v2, v3, p2}, Lcom/android/launcher3/home/Workspace;->createPage(JI)Lcom/android/launcher3/home/WorkspaceCellLayout;

    move-result-object v1

    .line 2269
    .local v1, "newScreen":Lcom/android/launcher3/home/WorkspaceCellLayout;
    invoke-direct {p0, v1}, Lcom/android/launcher3/home/Workspace;->startAlphaAnimation(Lcom/android/launcher3/common/base/view/CellLayout;)V

    .line 2271
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->isOverviewState()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2272
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/launcher3/home/Workspace;->showDefaultHomeIcon(Z)V

    .line 2275
    :cond_0
    if-le v0, p1, :cond_1

    .line 2276
    add-int/lit8 v0, v0, 0x1

    .line 2280
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getPageIndicator()Lcom/android/launcher3/common/view/PageIndicator;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 2281
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getPageIndicator()Lcom/android/launcher3/common/view/PageIndicator;

    move-result-object v4

    invoke-virtual {p0, p2}, Lcom/android/launcher3/home/Workspace;->getPageIndicatorMarker(I)Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;

    move-result-object v5

    invoke-virtual {v4, p2, v5}, Lcom/android/launcher3/common/view/PageIndicator;->updateMarker(ILcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;)V

    .line 2282
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getPageIndicator()Lcom/android/launcher3/common/view/PageIndicator;

    move-result-object v4

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/Workspace;->getPageIndicatorMarker(I)Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lcom/android/launcher3/common/view/PageIndicator;->updateMarker(ILcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;)V

    .line 2285
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/Workspace;->setCurrentPage(I)V

    .line 2286
    return-wide v2
.end method

.method private isCurrentTransitionEffectDefault()Z
    .locals 1

    .prologue
    .line 2374
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getPageTransitionManager()Lcom/android/launcher3/pagetransition/PageTransitionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/pagetransition/PageTransitionManager;->getCurrentTransitionEffect()Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2375
    const/4 v0, 0x1

    .line 2377
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLastScreen(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 2056
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private removeItemsOnScreen(J)V
    .locals 11
    .param p1, "screenId"    # J

    .prologue
    .line 535
    iget-object v8, p0, Lcom/android/launcher3/home/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v8, p1, p2}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 536
    .local v1, "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v2

    .line 537
    .local v2, "clc":Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    invoke-virtual {v2}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v3

    .line 538
    .local v3, "count":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 539
    .local v6, "moveToAppsItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 541
    .local v7, "removeItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_3

    .line 542
    invoke-virtual {v2, v4}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 543
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 544
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 547
    .local v5, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher3/LauncherAppState;->getCloneItemEnabled()Z

    move-result v8

    if-nez v8, :cond_0

    iget v8, v5, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    if-eqz v8, :cond_2

    iget v8, v5, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    const/4 v9, 0x2

    if-eq v8, v9, :cond_2

    .line 550
    :cond_0
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 541
    .end local v5    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 552
    .restart local v5    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_2
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 557
    .end local v0    # "child":Landroid/view/View;
    .end local v5    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_3
    iget-object v8, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v8, v7, v6}, Lcom/android/launcher3/home/HomeController;->removeItemsOnScreen(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 558
    return-void
.end method

.method private setCustomFlagOnChild(ZZ)V
    .locals 3
    .param p1, "needCustomLayout"    # Z
    .param p2, "needRequestLayout"    # Z

    .prologue
    .line 1350
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getChildCount()I

    move-result v1

    .line 1351
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1352
    invoke-virtual {p0, v2}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/home/WorkspaceCellLayout;

    .line 1353
    .local v0, "cellLayout":Lcom/android/launcher3/home/WorkspaceCellLayout;
    if-eqz v0, :cond_0

    .line 1354
    invoke-virtual {v0, p1}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setCustomFlag(Z)V

    .line 1355
    if-eqz p2, :cond_0

    .line 1356
    invoke-virtual {v0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->requestLayout()V

    .line 1351
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1360
    .end local v0    # "cellLayout":Lcom/android/launcher3/home/WorkspaceCellLayout;
    :cond_1
    return-void
.end method

.method private setupLayoutTransition()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 302
    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/home/Workspace;->mLayoutTransition:Landroid/animation/LayoutTransition;

    .line 303
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mLayoutTransition:Landroid/animation/LayoutTransition;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 304
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v0, v4}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 305
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mLayoutTransition:Landroid/animation/LayoutTransition;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 306
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mLayoutTransition:Landroid/animation/LayoutTransition;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 307
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mLayoutTransition:Landroid/animation/LayoutTransition;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v4, v2, v3}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    .line 308
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/Workspace;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 309
    return-void
.end method

.method private showRemoveScreenPopup()V
    .locals 3

    .prologue
    .line 2536
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mRemoveScreenDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    .line 2537
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f08008e

    .line 2538
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f08008f

    new-instance v2, Lcom/android/launcher3/home/Workspace$18;

    invoke-direct {v2, p0}, Lcom/android/launcher3/home/Workspace$18;-><init>(Lcom/android/launcher3/home/Workspace;)V

    .line 2539
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    new-instance v2, Lcom/android/launcher3/home/Workspace$17;

    invoke-direct {v2, p0}, Lcom/android/launcher3/home/Workspace$17;-><init>(Lcom/android/launcher3/home/Workspace;)V

    .line 2551
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/home/Workspace$16;

    invoke-direct {v1, p0}, Lcom/android/launcher3/home/Workspace$16;-><init>(Lcom/android/launcher3/home/Workspace;)V

    .line 2558
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2565
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/home/Workspace;->mRemoveScreenDialog:Landroid/app/AlertDialog;

    .line 2567
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mRemoveScreenDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 2568
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getTopViewChangedMessageHandler()Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;

    move-result-object v0

    const/16 v1, 0xc

    .line 2569
    invoke-virtual {v0, v1}, Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;->sendMessage(I)V

    .line 2570
    return-void
.end method

.method private snapToScreenId(JLjava/lang/Runnable;)V
    .locals 1
    .param p1, "screenId"    # J
    .param p3, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 912
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/home/Workspace;->getPageIndexForScreenId(J)I

    move-result v0

    invoke-virtual {p0, v0, p3}, Lcom/android/launcher3/home/Workspace;->snapToPage(ILjava/lang/Runnable;)V

    .line 913
    return-void
.end method

.method private startAlphaAnimation(Lcom/android/launcher3/common/base/view/CellLayout;)V
    .locals 4
    .param p1, "target"    # Lcom/android/launcher3/common/base/view/CellLayout;

    .prologue
    .line 1709
    const-string v1, "backgroundAlpha"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1710
    .local v0, "bgAnim":Landroid/animation/ValueAnimator;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1711
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1712
    return-void

    .line 1709
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private updateAccessibilityFlags(Lcom/android/launcher3/common/base/view/CellLayout;IZ)V
    .locals 6
    .param p1, "page"    # Lcom/android/launcher3/common/base/view/CellLayout;
    .param p2, "pageNo"    # I
    .param p3, "show"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x4

    .line 1269
    iget-object v3, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v3}, Lcom/android/launcher3/home/HomeController;->getState()I

    move-result v1

    .line 1271
    .local v1, "state":I
    if-ne v1, v0, :cond_0

    if-eqz p3, :cond_0

    .line 1272
    invoke-virtual {p1, v4}, Lcom/android/launcher3/common/base/view/CellLayout;->setImportantForAccessibility(I)V

    .line 1273
    invoke-virtual {p1}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->setImportantForAccessibility(I)V

    .line 1275
    invoke-direct {p0, p2, v2}, Lcom/android/launcher3/home/Workspace;->getPageDescription(IZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/launcher3/common/base/view/CellLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1285
    :goto_0
    return-void

    .line 1277
    :cond_0
    if-eq v1, v4, :cond_1

    const/4 v3, 0x6

    if-ne v1, v3, :cond_2

    :cond_1
    if-eqz p3, :cond_2

    move v0, v2

    .line 1280
    .local v0, "accessible":I
    :cond_2
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lcom/android/launcher3/common/base/view/CellLayout;->setImportantForAccessibility(I)V

    .line 1281
    invoke-virtual {p1}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->setImportantForAccessibility(I)V

    .line 1282
    invoke-virtual {p1, v5}, Lcom/android/launcher3/common/base/view/CellLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1283
    invoke-virtual {p1, v5}, Lcom/android/launcher3/common/base/view/CellLayout;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    goto :goto_0
.end method

.method private updateChildrenLayersEnabled(ZZ)V
    .locals 9
    .param p1, "force"    # Z
    .param p2, "show"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1132
    iget-object v7, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v7}, Lcom/android/launcher3/home/HomeController;->getState()I

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_2

    if-eqz p2, :cond_2

    move v4, v5

    .line 1133
    .local v4, "small":Z
    :goto_0
    iget-object v7, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v7}, Lcom/android/launcher3/home/HomeController;->isSwitchingState()Z

    move-result v3

    .line 1135
    .local v3, "isSwitching":Z
    if-nez p1, :cond_0

    if-nez v4, :cond_0

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->isPageMoving()Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_0
    move v1, v5

    .line 1137
    .local v1, "enableChildrenLayers":Z
    :goto_1
    iget-boolean v5, p0, Lcom/android/launcher3/home/Workspace;->mChildrenLayersEnabled:Z

    if-eq v1, v5, :cond_1

    .line 1138
    iput-boolean v1, p0, Lcom/android/launcher3/home/Workspace;->mChildrenLayersEnabled:Z

    .line 1139
    iget-boolean v5, p0, Lcom/android/launcher3/home/Workspace;->mChildrenLayersEnabled:Z

    if-eqz v5, :cond_4

    .line 1140
    invoke-direct {p0}, Lcom/android/launcher3/home/Workspace;->enableHwLayersOnVisiblePages()V

    .line 1148
    :cond_1
    return-void

    .end local v1    # "enableChildrenLayers":Z
    .end local v3    # "isSwitching":Z
    .end local v4    # "small":Z
    :cond_2
    move v4, v6

    .line 1132
    goto :goto_0

    .restart local v3    # "isSwitching":Z
    .restart local v4    # "small":Z
    :cond_3
    move v1, v6

    .line 1135
    goto :goto_1

    .line 1142
    .restart local v1    # "enableChildrenLayers":Z
    :cond_4
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getPageCount()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 1143
    invoke-virtual {p0, v2}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 1144
    .local v0, "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    invoke-virtual {v0, v6}, Lcom/android/launcher3/common/base/view/CellLayout;->enableHardwareLayer(Z)V

    .line 1142
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method private updateDefaultHome()V
    .locals 8

    .prologue
    .line 1888
    iget v2, p0, Lcom/android/launcher3/home/Workspace;->mCurrentPage:I

    iget v3, p0, Lcom/android/launcher3/home/Workspace;->mDefaultPage:I

    if-ge v2, v3, :cond_1

    .line 1889
    iget v2, p0, Lcom/android/launcher3/home/Workspace;->mDefaultPage:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lcom/android/launcher3/home/Workspace;->setDefaultPage(I)V

    .line 1890
    iget v2, p0, Lcom/android/launcher3/home/Workspace;->mCurrentPage:I

    invoke-direct {p0, v2}, Lcom/android/launcher3/home/Workspace;->updateDefaultHomeIcon(I)V

    .line 1897
    :cond_0
    :goto_0
    return-void

    .line 1891
    :cond_1
    iget v2, p0, Lcom/android/launcher3/home/Workspace;->mCurrentPage:I

    iget v3, p0, Lcom/android/launcher3/home/Workspace;->mDefaultPage:I

    if-ne v2, v3, :cond_0

    .line 1892
    iget v1, p0, Lcom/android/launcher3/home/Workspace;->mDefaultPage:I

    .line 1893
    .local v1, "preDefaultPage":I
    iget v3, p0, Lcom/android/launcher3/home/Workspace;->mCurrentPage:I

    iget v2, p0, Lcom/android/launcher3/home/Workspace;->mCurrentPage:I

    .line 1894
    invoke-virtual {p0, v2}, Lcom/android/launcher3/home/Workspace;->getScreenIdForPageIndex(I)J

    move-result-wide v4

    const-wide/16 v6, -0x191

    cmp-long v2, v4, v6

    if-nez v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    sub-int v0, v3, v2

    .line 1895
    .local v0, "newDefaultPage":I
    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/home/Workspace;->updateDefaultHome(II)V

    goto :goto_0

    .line 1894
    .end local v0    # "newDefaultPage":I
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private updateDefaultHomeIcon(I)V
    .locals 5
    .param p1, "currentPage"    # I

    .prologue
    .line 1851
    iget-object v3, p0, Lcom/android/launcher3/home/Workspace;->mDefaultHomeIcon:Landroid/view/View;

    iget v2, p0, Lcom/android/launcher3/home/Workspace;->mDefaultPage:I

    if-ne p1, v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v3, v2}, Landroid/view/View;->setSelected(Z)V

    .line 1853
    iget v2, p0, Lcom/android/launcher3/home/Workspace;->mDefaultPage:I

    if-ne p1, v2, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080092

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1855
    .local v1, "selectTTS":Ljava/lang/String;
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08001e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1857
    .local v0, "defaultDescription":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/launcher3/home/Workspace;->mDefaultHomeIcon:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1858
    return-void

    .line 1851
    .end local v0    # "defaultDescription":Ljava/lang/String;
    .end local v1    # "selectTTS":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 1854
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080068

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private updateDragPageAlphaValues(III)V
    .locals 6
    .param p1, "screenCenter"    # I
    .param p2, "leftScreen"    # I
    .param p3, "rightScreen"    # I

    .prologue
    .line 977
    iget-object v4, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v4}, Lcom/android/launcher3/home/HomeController;->isSwitchingState()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 993
    :cond_0
    return-void

    .line 981
    :cond_1
    move v2, p2

    .local v2, "i":I
    :goto_0
    if-gt v2, p3, :cond_0

    .line 982
    invoke-virtual {p0, v2}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 983
    .local v1, "child":Lcom/android/launcher3/common/base/view/CellLayout;
    if-eqz v1, :cond_2

    .line 984
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getNextPage()I

    move-result v4

    if-ne v2, v4, :cond_3

    .line 985
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/android/launcher3/common/base/view/CellLayout;->setBackgroundAlpha(F)V

    .line 981
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 987
    :cond_3
    invoke-virtual {p0, p1, v1, v2}, Lcom/android/launcher3/home/Workspace;->getScrollProgress(ILandroid/view/View;I)F

    move-result v3

    .line 988
    .local v3, "scrollProgress":F
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 989
    .local v0, "alpha":F
    invoke-virtual {v1, v0}, Lcom/android/launcher3/common/base/view/CellLayout;->setBackgroundAlpha(F)V

    goto :goto_1
.end method

.method private updateHomeDefaultZeroPageKey(IZ)V
    .locals 6
    .param p1, "defaultPage"    # I
    .param p2, "init"    # Z

    .prologue
    .line 1527
    const/4 v0, 0x0

    .line 1530
    .local v0, "isDefaultZeroPage":Z
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 1531
    const/4 v0, 0x1

    .line 1532
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080189

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1533
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0800f6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    int-to-long v4, p1

    .line 1532
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    .line 1536
    :cond_0
    if-nez p2, :cond_1

    iget-boolean v1, p0, Lcom/android/launcher3/home/Workspace;->mIsDefaultZeroPage:Z

    if-eq v0, v1, :cond_2

    .line 1537
    :cond_1
    iput-boolean v0, p0, Lcom/android/launcher3/home/Workspace;->mIsDefaultZeroPage:Z

    .line 1538
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "zeropage_default_home"

    invoke-static {v1, v0, v2}, Lcom/android/launcher3/Utilities;->setZeroPageKey(Landroid/content/Context;ZLjava/lang/String;)V

    .line 1540
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/home/ZeroPageProvider;->notifyChange(Landroid/content/Context;)V

    .line 1542
    :cond_2
    return-void
.end method

.method private updateNormalPageAlphaValues(III)V
    .locals 5
    .param p1, "screenCenter"    # I
    .param p2, "leftScreen"    # I
    .param p3, "rightScreen"    # I

    .prologue
    .line 958
    iget-object v4, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v4}, Lcom/android/launcher3/home/HomeController;->isSwitchingState()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->isPageMoving()Z

    move-result v4

    if-nez v4, :cond_1

    .line 974
    :cond_0
    return-void

    .line 962
    :cond_1
    move v2, p2

    .local v2, "i":I
    :goto_0
    if-gt v2, p3, :cond_0

    .line 963
    invoke-virtual {p0, v2}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 964
    .local v1, "child":Lcom/android/launcher3/common/base/view/CellLayout;
    if-eqz v1, :cond_2

    .line 965
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v4

    if-nez v4, :cond_3

    .line 966
    invoke-virtual {p0, p1, v1, v2}, Lcom/android/launcher3/home/Workspace;->getScrollProgress(ILandroid/view/View;I)F

    move-result v3

    .line 967
    .local v3, "scrollProgress":F
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/launcher3/home/Workspace;->backgroundAlphaThreshold(F)F

    move-result v0

    .line 968
    .local v0, "alpha":F
    invoke-virtual {v1, v0}, Lcom/android/launcher3/common/base/view/CellLayout;->setBackgroundAlpha(F)V

    .line 962
    .end local v0    # "alpha":F
    .end local v3    # "scrollProgress":F
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 970
    :cond_3
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/android/launcher3/common/base/view/CellLayout;->setBackgroundAlpha(F)V

    goto :goto_1
.end method

.method private updatePageAlphaValues(III)V
    .locals 2
    .param p1, "screenCenter"    # I
    .param p2, "leftScreen"    # I
    .param p3, "rightScreen"    # I

    .prologue
    .line 946
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->isOverviewState()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->isScreenGridState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 955
    :cond_0
    :goto_0
    return-void

    .line 950
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 951
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/home/Workspace;->updateNormalPageAlphaValues(III)V

    goto :goto_0

    .line 953
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/home/Workspace;->updateDragPageAlphaValues(III)V

    goto :goto_0
.end method


# virtual methods
.method addExtraEmptyScreen()Z
    .locals 4

    .prologue
    const-wide/16 v2, -0xc9

    .line 443
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/util/LongArrayMap;->containsKey(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 444
    invoke-virtual {p0, v2, v3}, Lcom/android/launcher3/home/Workspace;->insertNewWorkspaceScreen(J)J

    .line 445
    const/4 v0, 0x1

    .line 447
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method addExtraEmptyScreenOnDrag()V
    .locals 4

    .prologue
    const-wide/16 v2, -0xc9

    .line 435
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/home/Workspace;->mRemoveEmptyScreenRunnable:Ljava/lang/Runnable;

    .line 437
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/util/LongArrayMap;->containsKey(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 438
    invoke-virtual {p0, v2, v3}, Lcom/android/launcher3/home/Workspace;->insertNewWorkspaceScreen(J)J

    .line 440
    :cond_0
    return-void
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 2
    .param p2, "direction"    # I
    .param p3, "focusableMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 1086
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->isAppsStage()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1087
    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getOpenFolderView()Lcom/android/launcher3/folder/view/FolderView;

    move-result-object v0

    .line 1088
    .local v0, "openFolder":Lcom/android/launcher3/folder/view/FolderView;
    if-eqz v0, :cond_1

    .line 1089
    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/folder/view/FolderView;->addFocusables(Ljava/util/ArrayList;I)V

    .line 1094
    .end local v0    # "openFolder":Lcom/android/launcher3/folder/view/FolderView;
    :cond_0
    :goto_0
    return-void

    .line 1091
    .restart local v0    # "openFolder":Lcom/android/launcher3/folder/view/FolderView;
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/common/base/view/PagedView;->addFocusables(Ljava/util/ArrayList;II)V

    goto :goto_0
.end method

.method addNewWorkspaceScreen()J
    .locals 10

    .prologue
    const/4 v4, 0x1

    .line 1661
    iget-object v5, p0, Lcom/android/launcher3/home/Workspace;->mHomeBindController:Lcom/android/launcher3/home/HomeBindController;

    invoke-virtual {v5}, Lcom/android/launcher3/home/HomeBindController;->isWorkspaceLoading()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1663
    const-string v5, "Launcher.Workspace"

    const-string v6, "    - workspace loading, skip"

    invoke-static {v5, v6, v4}, Lcom/android/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1664
    const-wide/16 v2, -0x1

    .line 1692
    :goto_0
    return-wide v2

    .line 1667
    :cond_0
    const-wide/16 v6, -0x191

    invoke-virtual {p0, v6, v7}, Lcom/android/launcher3/home/Workspace;->getPageIndexForScreenId(J)I

    move-result v0

    .line 1669
    .local v0, "insertIndex":I
    invoke-static {}, Lcom/android/launcher3/common/model/FavoritesProvider;->getInstance()Lcom/android/launcher3/common/model/FavoritesProvider;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/common/model/FavoritesProvider;->generateNewScreenId()J

    move-result-wide v2

    .line 1671
    .local v2, "newId":J
    invoke-direct {p0, v2, v3, v0}, Lcom/android/launcher3/home/Workspace;->createPage(JI)Lcom/android/launcher3/home/WorkspaceCellLayout;

    move-result-object v1

    .line 1673
    .local v1, "newScreen":Lcom/android/launcher3/home/WorkspaceCellLayout;
    invoke-direct {p0, v1}, Lcom/android/launcher3/home/Workspace;->startAlphaAnimation(Lcom/android/launcher3/common/base/view/CellLayout;)V

    .line 1676
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getPageIndicator()Lcom/android/launcher3/common/view/PageIndicator;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 1677
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getPageIndicator()Lcom/android/launcher3/common/view/PageIndicator;

    move-result-object v5

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/Workspace;->getPageIndicatorMarker(I)Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Lcom/android/launcher3/common/view/PageIndicator;->updateMarker(ILcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;)V

    .line 1680
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->isOverviewState()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1681
    invoke-virtual {p0, v4}, Lcom/android/launcher3/home/Workspace;->showDefaultHomeIcon(Z)V

    .line 1682
    invoke-virtual {p0, v4, v4}, Lcom/android/launcher3/home/Workspace;->setVisibilityOnCustomLayout(ZZ)V

    .line 1686
    :cond_2
    iget-object v5, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    iget-object v6, p0, Lcom/android/launcher3/home/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Lcom/android/launcher3/home/HomeController;->updateWorkspaceScreenOrder(Ljava/util/ArrayList;)V

    .line 1687
    sget-object v5, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    const v6, 0x7f080066

    invoke-virtual {v5, v6}, Lcom/android/launcher3/util/Talk;->say(I)V

    .line 1688
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080189

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1689
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0800ca

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getPageCount()I

    move-result v8

    .line 1690
    invoke-static {}, Lcom/android/launcher3/home/ZeroPageController;->isEnableZeroPage()Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v4, 0x2

    :cond_3
    sub-int v4, v8, v4

    int-to-long v8, v4

    .line 1688
    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0
.end method

.method public announceForAccessibility(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 940
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isAppsStage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 941
    invoke-super {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 943
    :cond_0
    return-void
.end method

.method public autoAlignItems(Z)V
    .locals 6
    .param p1, "upward"    # Z

    .prologue
    .line 1724
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->checkNeedDisplayAutoalignDialog()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1725
    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-static {v1, v2, p1}, Lcom/android/launcher3/home/AutoAlignConfirmDialog;->createAndShow(Landroid/app/FragmentManager;Lcom/android/launcher3/home/HomeController;Z)V

    .line 1727
    const/4 v0, 0x0

    .line 1732
    .local v0, "checkPopup":I
    :goto_0
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v2

    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f080189

    .line 1733
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 1734
    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0800cc

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1735
    :goto_1
    int-to-long v4, v0

    .line 1732
    invoke-virtual {v2, v3, v1, v4, v5}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    .line 1736
    return-void

    .line 1729
    .end local v0    # "checkPopup":I
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/android/launcher3/home/HomeController;->autoAlignItems(ZZ)Z

    .line 1730
    const/4 v0, 0x1

    .restart local v0    # "checkPopup":I
    goto :goto_0

    .line 1734
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 1735
    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0800cb

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method bindController(Lcom/android/launcher3/common/base/controller/ControllerBase;)V
    .locals 1
    .param p1, "controller"    # Lcom/android/launcher3/common/base/controller/ControllerBase;

    .prologue
    .line 242
    check-cast p1, Lcom/android/launcher3/home/HomeController;

    .end local p1    # "controller":Lcom/android/launcher3/common/base/controller/ControllerBase;
    iput-object p1, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    .line 243
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->getBindController()Lcom/android/launcher3/home/HomeBindController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/home/Workspace;->mHomeBindController:Lcom/android/launcher3/home/HomeBindController;

    .line 244
    return-void
.end method

.method public buildPageHardwareLayers()V
    .locals 4

    .prologue
    .line 1181
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/launcher3/home/Workspace;->updateChildrenLayersEnabled(Z)V

    .line 1182
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1183
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getChildCount()I

    move-result v0

    .line 1184
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1185
    invoke-virtual {p0, v2}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 1186
    .local v1, "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/CellLayout;->buildHardwareLayer()V

    .line 1184
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1189
    .end local v0    # "childCount":I
    .end local v1    # "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v2    # "i":I
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/launcher3/home/Workspace;->updateChildrenLayersEnabled(Z)V

    .line 1190
    return-void
.end method

.method protected canOverScroll()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2434
    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->getState()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method changeColorForBg(Z)V
    .locals 10
    .param p1, "whiteBg"    # Z

    .prologue
    .line 2067
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getPageCount()I

    move-result v5

    .line 2071
    .local v5, "pageCount":I
    iget-object v8, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v9, p0, Lcom/android/launcher3/home/Workspace;->mDefaultHomeIcon:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-static {v8, v9, p1}, Lcom/android/launcher3/util/WhiteBgManager;->changeColorFilterForBg(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Z)V

    .line 2073
    const/4 v3, 0x0

    .local v3, "currentPage":I
    :goto_0
    if-ge v3, v5, :cond_3

    .line 2074
    invoke-virtual {p0, v3}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/home/WorkspaceCellLayout;

    .line 2075
    .local v1, "cl":Lcom/android/launcher3/home/WorkspaceCellLayout;
    invoke-virtual {v1}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v2

    .line 2076
    .local v2, "clItems":Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    invoke-virtual {v2}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v0

    .line 2077
    .local v0, "childCount":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    if-ge v4, v0, :cond_1

    .line 2078
    invoke-virtual {v2, v4}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 2079
    .local v7, "v":Landroid/view/View;
    instance-of v8, v7, Lcom/android/launcher3/common/view/IconView;

    if-eqz v8, :cond_0

    .line 2080
    check-cast v7, Lcom/android/launcher3/common/view/IconView;

    .end local v7    # "v":Landroid/view/View;
    invoke-virtual {v7, p1}, Lcom/android/launcher3/common/view/IconView;->changeTextColorForBg(Z)V

    .line 2077
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2083
    :cond_1
    iget-object v8, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v8}, Lcom/android/launcher3/home/HomeController;->getState()I

    move-result v9

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getDefaultPage()I

    move-result v8

    if-ne v3, v8, :cond_2

    const/4 v8, 0x1

    :goto_2
    invoke-virtual {v1, v9, v8, p1}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setBgImageResource(IZZ)V

    .line 2084
    invoke-virtual {v1, p1}, Lcom/android/launcher3/home/WorkspaceCellLayout;->changeColorForBg(Z)V

    .line 2073
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2083
    :cond_2
    const/4 v8, 0x0

    goto :goto_2

    .line 2087
    .end local v0    # "childCount":I
    .end local v1    # "cl":Lcom/android/launcher3/home/WorkspaceCellLayout;
    .end local v2    # "clItems":Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    .end local v4    # "j":I
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/launcher3/home/Workspace;->changePlusPageColorFilterForBg(Z)V

    .line 2089
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getPageIndicator()Lcom/android/launcher3/common/view/PageIndicator;

    move-result-object v6

    .line 2090
    .local v6, "pageIndicator":Lcom/android/launcher3/common/view/PageIndicator;
    if-eqz v6, :cond_4

    .line 2091
    invoke-virtual {v6, p1}, Lcom/android/launcher3/common/view/PageIndicator;->changeColorForBg(Z)V

    .line 2093
    :cond_4
    return-void
.end method

.method checkAlignButtonEnabled()V
    .locals 1

    .prologue
    .line 1919
    iget v0, p0, Lcom/android/launcher3/home/Workspace;->mCurrentPage:I

    invoke-direct {p0, v0}, Lcom/android/launcher3/home/Workspace;->checkAlignButtonEnabled(I)V

    .line 1920
    return-void
.end method

.method public checkNeedDisplayAutoalignDialog()Z
    .locals 4

    .prologue
    .line 1739
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1740
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 1739
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1741
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "com.sec.android.app.launcher.showdialog.prefs"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method checkVisibilityOfCustomLayout(I)V
    .locals 3
    .param p1, "nextIndex"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1973
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->isOverviewState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1974
    iget v0, p0, Lcom/android/launcher3/home/Workspace;->mCurrentPage:I

    invoke-virtual {p0, v1, v2, v1, v0}, Lcom/android/launcher3/home/Workspace;->setVisibilityOnCustomLayout(ZZZI)V

    .line 1975
    invoke-virtual {p0, v2, v2, v1, p1}, Lcom/android/launcher3/home/Workspace;->setVisibilityOnCustomLayout(ZZZI)V

    .line 1977
    :cond_0
    return-void
.end method

.method commitExtraEmptyScreen()J
    .locals 8

    .prologue
    const-wide/16 v6, -0xc9

    .line 567
    iget-object v4, p0, Lcom/android/launcher3/home/Workspace;->mHomeBindController:Lcom/android/launcher3/home/HomeBindController;

    invoke-virtual {v4}, Lcom/android/launcher3/home/HomeBindController;->isWorkspaceLoading()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 569
    const-string v4, "Launcher.Workspace"

    const-string v5, "    - workspace loading, skip"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/android/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 570
    const-wide/16 v2, -0x1

    .line 593
    :goto_0
    return-wide v2

    .line 573
    :cond_0
    invoke-virtual {p0, v6, v7}, Lcom/android/launcher3/home/Workspace;->getPageIndexForScreenId(J)I

    move-result v1

    .line 574
    .local v1, "index":I
    iget-object v4, p0, Lcom/android/launcher3/home/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v4, v6, v7}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 575
    .local v0, "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    iget-object v4, p0, Lcom/android/launcher3/home/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v4, v6, v7}, Lcom/android/launcher3/util/LongArrayMap;->remove(J)V

    .line 576
    iget-object v4, p0, Lcom/android/launcher3/home/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 578
    invoke-static {}, Lcom/android/launcher3/common/model/FavoritesProvider;->getInstance()Lcom/android/launcher3/common/model/FavoritesProvider;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/common/model/FavoritesProvider;->generateNewScreenId()J

    move-result-wide v2

    .line 579
    .local v2, "newId":J
    iget-object v4, p0, Lcom/android/launcher3/home/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v4, v2, v3, v0}, Lcom/android/launcher3/util/LongArrayMap;->put(JLjava/lang/Object;)V

    .line 580
    iget-object v4, p0, Lcom/android/launcher3/home/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 583
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getPageIndicator()Lcom/android/launcher3/common/view/PageIndicator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/common/view/PageIndicator;->isGrouping()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 584
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getPageIndicator()Lcom/android/launcher3/common/view/PageIndicator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/common/view/PageIndicator;->getMarkerStartOffset()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {p0, v4}, Lcom/android/launcher3/home/Workspace;->removeMarkerForView(I)V

    .line 591
    :goto_1
    iget-object v4, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    iget-object v5, p0, Lcom/android/launcher3/home/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/home/HomeController;->updateWorkspaceScreenOrder(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 586
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getPageIndicator()Lcom/android/launcher3/common/view/PageIndicator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/common/view/PageIndicator;->getMarkerStartOffset()I

    move-result v4

    add-int/2addr v4, v1

    .line 587
    invoke-virtual {p0, v1}, Lcom/android/launcher3/home/Workspace;->getPageIndicatorMarker(I)Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;

    move-result-object v5

    .line 586
    invoke-virtual {p0, v4, v5}, Lcom/android/launcher3/home/Workspace;->updateMarker(ILcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;)V

    goto :goto_1
.end method

.method createCustomPlusPage()V
    .locals 14

    .prologue
    const-wide/16 v12, -0x191

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1593
    iget-object v7, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 1594
    invoke-virtual {v7}, Lcom/android/launcher3/Launcher;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f030050

    invoke-virtual {v7, v8, p0, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/home/WorkspaceCellLayout;

    .line 1596
    .local v3, "customScreen":Lcom/android/launcher3/home/WorkspaceCellLayout;
    const/4 v7, 0x4

    invoke-virtual {v3, v7, v10}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setBgImage(IZ)V

    .line 1597
    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v3, v7}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setBackgroundAlpha(F)V

    .line 1598
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0200d2

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, "addBtn":Landroid/graphics/drawable/Drawable;
    move-object v7, v0

    .line 1600
    check-cast v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1601
    .local v1, "b":Landroid/graphics/Bitmap;
    const/high16 v7, 0x42c80000    # 100.0f

    .line 1602
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b0003

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    int-to-float v8, v8

    div-float v4, v7, v8

    .line 1603
    .local v4, "overviewShrinkFactorReverse":F
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v4

    float-to-int v5, v7

    .line 1604
    .local v5, "sizeX":I
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v4

    float-to-int v6, v7

    .line 1606
    .local v6, "sizeY":I
    invoke-static {v1, v5, v6, v10}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1607
    .local v2, "bitmapResized":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    .end local v0    # "addBtn":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-direct {v0, v7, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 1609
    .restart local v0    # "addBtn":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v3, v0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 1610
    const/16 v7, 0x11

    invoke-virtual {v3, v7}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setForegroundGravity(I)V

    .line 1612
    new-instance v7, Lcom/android/launcher3/home/Workspace$8;

    invoke-direct {v7, p0}, Lcom/android/launcher3/home/Workspace$8;-><init>(Lcom/android/launcher3/home/Workspace;)V

    invoke-virtual {v3, v7}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1625
    iget-object v7, p0, Lcom/android/launcher3/home/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v7, v12, v13, v3}, Lcom/android/launcher3/util/LongArrayMap;->put(JLjava/lang/Object;)V

    .line 1626
    iget-object v7, p0, Lcom/android/launcher3/home/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getChildCount()I

    move-result v8

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1627
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getPageIndicator()Lcom/android/launcher3/common/view/PageIndicator;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 1628
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getPageIndicator()Lcom/android/launcher3/common/view/PageIndicator;

    move-result-object v7

    invoke-virtual {v7, v11}, Lcom/android/launcher3/common/view/PageIndicator;->setPlusPage(Z)V

    .line 1630
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getChildCount()I

    move-result v7

    invoke-virtual {p0, v3, v7}, Lcom/android/launcher3/home/Workspace;->addView(Landroid/view/View;I)V

    .line 1632
    invoke-virtual {v3, v11}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setCustomFlag(Z)V

    .line 1634
    invoke-static {}, Lcom/android/launcher3/util/WhiteBgManager;->isWhiteBg()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1635
    invoke-direct {p0, v11}, Lcom/android/launcher3/home/Workspace;->changePlusPageColorFilterForBg(Z)V

    .line 1637
    :cond_1
    return-void
.end method

.method protected determineScrollingStart(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x0

    .line 757
    iget-object v6, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v6}, Lcom/android/launcher3/home/HomeController;->isSwitchingState()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 772
    :cond_0
    :goto_0
    return v5

    .line 759
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iget v7, p0, Lcom/android/launcher3/home/Workspace;->mXDown:F

    sub-float v2, v6, v7

    .line 760
    .local v2, "deltaX":F
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 761
    .local v0, "absDeltaX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iget v7, p0, Lcom/android/launcher3/home/Workspace;->mYDown:F

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 763
    .local v1, "absDeltaY":F
    const/4 v6, 0x0

    invoke-static {v0, v6}, Ljava/lang/Float;->compare(FF)I

    move-result v6

    if-eqz v6, :cond_0

    .line 765
    div-float v3, v1, v0

    .line 766
    .local v3, "slope":F
    float-to-double v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->atan(D)D

    move-result-wide v6

    double-to-float v4, v6

    .line 768
    .local v4, "theta":F
    iget v5, p0, Lcom/android/launcher3/home/Workspace;->mTouchSlop:I

    int-to-float v5, v5

    cmpl-float v5, v0, v5

    if-gtz v5, :cond_2

    iget v5, p0, Lcom/android/launcher3/home/Workspace;->mTouchSlop:I

    int-to-float v5, v5

    cmpl-float v5, v1, v5

    if-lez v5, :cond_3

    .line 769
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->cancelCurrentPageLongPress()V

    .line 772
    :cond_3
    invoke-super {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;)Z

    move-result v5

    goto :goto_0
.end method

.method protected determineScrollingStart(Landroid/view/MotionEvent;F)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "touchSlopScale"    # F

    .prologue
    .line 777
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->isSelectState()Z

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

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
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
    .line 1388
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iput-object p1, p0, Lcom/android/launcher3/home/Workspace;->mSavedStates:Landroid/util/SparseArray;

    .line 1389
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1550
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/home/ZeroPageController;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1551
    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 1
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I

    .prologue
    .line 673
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->isModalState()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->isSwitchingState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 675
    :cond_0
    const/4 v0, 0x0

    .line 677
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/common/base/view/PagedView;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    goto :goto_0
.end method

.method public dropCompletedFromHotseat(Ljava/util/ArrayList;Ljava/lang/Runnable;Z)V
    .locals 1
    .param p2, "postRunnable"    # Ljava/lang/Runnable;
    .param p3, "fromOther"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/drag/DropTarget$DragObject;",
            ">;",
            "Ljava/lang/Runnable;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 2455
    .local p1, "extraDragObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mWsDragController:Lcom/android/launcher3/home/WorkspaceDragController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/launcher3/home/WorkspaceDragController;->dropCompletedFromHotseat(Ljava/util/ArrayList;Ljava/lang/Runnable;Z)V

    .line 2456
    return-void
.end method

.method estimateItemPosition(Lcom/android/launcher3/common/base/view/CellLayout;IIII)Landroid/graphics/Rect;
    .locals 6
    .param p1, "cl"    # Lcom/android/launcher3/common/base/view/CellLayout;
    .param p2, "hCell"    # I
    .param p3, "vCell"    # I
    .param p4, "hSpan"    # I
    .param p5, "vSpan"    # I

    .prologue
    .line 274
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .local v5, "r":Landroid/graphics/Rect;
    move-object v0, p1

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    .line 275
    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/common/base/view/CellLayout;->cellToRect(IIIILandroid/graphics/Rect;)V

    .line 276
    return-object v5
.end method

.method public estimateItemSize(Lcom/android/launcher3/common/base/item/ItemInfo;)[I
    .locals 9
    .param p1, "itemInfo"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    const v3, 0x7fffffff

    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 258
    const/4 v0, 0x2

    new-array v7, v0, [I

    .line 259
    .local v7, "size":[I
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 261
    invoke-direct {p0}, Lcom/android/launcher3/home/Workspace;->getPageIndexToStart()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 262
    .local v1, "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    iget v4, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    iget v5, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    move-object v0, p0

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/home/Workspace;->estimateItemPosition(Lcom/android/launcher3/common/base/view/CellLayout;IIII)Landroid/graphics/Rect;

    move-result-object v6

    .line 263
    .local v6, "r":Landroid/graphics/Rect;
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v0

    aput v0, v7, v2

    .line 264
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v0

    aput v0, v7, v8

    .line 269
    .end local v1    # "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v6    # "r":Landroid/graphics/Rect;
    :goto_0
    return-object v7

    .line 267
    :cond_0
    aput v3, v7, v2

    .line 268
    aput v3, v7, v8

    goto :goto_0
.end method

.method public fillInLaunchSourceData(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "sourceData"    # Landroid/os/Bundle;

    .prologue
    .line 1493
    const-string v0, "container"

    const-string v1, "homescreen"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1494
    const-string v0, "container_page"

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1495
    return-void
.end method

.method public findWidgetView(Landroid/content/ComponentName;)Lcom/android/launcher3/home/LauncherAppWidgetHostView;
    .locals 12
    .param p1, "cn"    # Landroid/content/ComponentName;

    .prologue
    const/4 v9, 0x0

    .line 2348
    if-nez p1, :cond_0

    move-object v8, v9

    .line 2370
    :goto_0
    return-object v8

    .line 2352
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getPageCount()I

    move-result v7

    .line 2353
    .local v7, "pageCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v7, :cond_3

    .line 2354
    invoke-virtual {p0, v4}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 2355
    .local v1, "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v2

    .line 2356
    .local v2, "clc":Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    invoke-virtual {v2}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v0

    .line 2358
    .local v0, "childCount":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_2
    if-ge v6, v0, :cond_2

    .line 2359
    invoke-virtual {v2, v6}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 2360
    .local v8, "v":Landroid/view/View;
    instance-of v10, v8, Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    if-eqz v10, :cond_1

    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    instance-of v10, v10, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    if-eqz v10, :cond_1

    .line 2361
    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    .line 2362
    .local v5, "info":Lcom/android/launcher3/home/LauncherAppWidgetInfo;
    iget-object v3, v5, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    .line 2363
    .local v3, "compareCn":Landroid/content/ComponentName;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 2364
    check-cast v8, Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    goto :goto_0

    .line 2358
    .end local v3    # "compareCn":Landroid/content/ComponentName;
    .end local v5    # "info":Lcom/android/launcher3/home/LauncherAppWidgetInfo;
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 2353
    .end local v8    # "v":Landroid/view/View;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v0    # "childCount":I
    .end local v1    # "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v2    # "clc":Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    .end local v6    # "j":I
    :cond_3
    move-object v8, v9

    .line 2370
    goto :goto_0
.end method

.method getAdditionPageCount()I
    .locals 1

    .prologue
    .line 2146
    iget v0, p0, Lcom/android/launcher3/home/Workspace;->mAdditionalCount:I

    return v0
.end method

.method public getAlignLayoutList()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/LinearLayout;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1932
    iget v2, p0, Lcom/android/launcher3/home/Workspace;->mCurrentPage:I

    invoke-virtual {p0, v2}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/home/WorkspaceCellLayout;

    .line 1933
    .local v1, "child":Lcom/android/launcher3/home/WorkspaceCellLayout;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1934
    .local v0, "alignLayoutList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/LinearLayout;>;"
    if-eqz v1, :cond_0

    .line 1935
    invoke-virtual {v1}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getAlignLayoutList()Ljava/util/ArrayList;

    move-result-object v0

    .line 1937
    :cond_0
    return-object v0
.end method

.method public getCurrentPageDescription()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1463
    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->isNormalState()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    .line 1464
    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->isStartedSwipeAffordanceAnim()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 1465
    .local v0, "needToSwipeAffordance":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getNextPage()I

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/android/launcher3/home/Workspace;->getPageDescription(IZ)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1464
    .end local v0    # "needToSwipeAffordance":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getCurrentPageOffsetFromCustomContent()I
    .locals 2

    .prologue
    .line 1380
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getNextPage()I

    move-result v0

    invoke-direct {p0}, Lcom/android/launcher3/home/Workspace;->getPageIndexToStart()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getCustomPageCount()I
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2629
    const-wide/16 v4, -0x12d

    invoke-direct {p0, v4, v5}, Lcom/android/launcher3/home/Workspace;->hasCustomContentPage(J)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    const-wide/16 v4, -0x191

    .line 2630
    invoke-direct {p0, v4, v5}, Lcom/android/launcher3/home/Workspace;->hasCustomContentPage(J)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v1

    :goto_1
    add-int/2addr v0, v3

    .line 2631
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->hasExtraEmptyScreen()Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_2
    add-int/2addr v0, v1

    return v0

    :cond_0
    move v0, v2

    .line 2629
    goto :goto_0

    :cond_1
    move v3, v2

    .line 2630
    goto :goto_1

    :cond_2
    move v1, v2

    .line 2631
    goto :goto_2
.end method

.method public getDefaultPage()I
    .locals 1

    .prologue
    .line 1523
    iget v0, p0, Lcom/android/launcher3/home/Workspace;->mDefaultPage:I

    return v0
.end method

.method public getDownRawXY()Landroid/graphics/Point;
    .locals 2

    .prologue
    .line 2341
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 2342
    .local v0, "down":Landroid/graphics/Point;
    iget v1, p0, Lcom/android/launcher3/home/Workspace;->mDownRawX:F

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 2343
    iget v1, p0, Lcom/android/launcher3/home/Workspace;->mDownRawY:F

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 2344
    return-object v0
.end method

.method public getDragController()Lcom/android/launcher3/home/WorkspaceDragController;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mWsDragController:Lcom/android/launcher3/home/WorkspaceDragController;

    return-object v0
.end method

.method getIconView(Landroid/content/ComponentName;)Landroid/view/View;
    .locals 12
    .param p1, "cn"    # Landroid/content/ComponentName;

    .prologue
    const/4 v8, 0x0

    .line 2577
    if-nez p1, :cond_1

    move-object v7, v8

    .line 2610
    :cond_0
    :goto_0
    return-object v7

    .line 2581
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getPageCount()I

    move-result v6

    .line 2583
    .local v6, "pageCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v6, :cond_7

    .line 2584
    invoke-virtual {p0, v3}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 2585
    .local v0, "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    if-nez v0, :cond_2

    .line 2586
    const-string v9, "Launcher.Workspace"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getIconView(), getChildAt( "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ") return null object"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v8

    .line 2587
    goto :goto_0

    .line 2589
    :cond_2
    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v1

    .line 2591
    .local v1, "clc":Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_2
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v9

    if-ge v5, v9, :cond_6

    .line 2592
    invoke-virtual {v1, v5}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 2594
    .local v7, "v":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    instance-of v9, v9, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v9, :cond_4

    .line 2595
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 2596
    .local v4, "info":Lcom/android/launcher3/common/base/item/IconInfo;
    invoke-virtual {v4}, Lcom/android/launcher3/common/base/item/IconInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {p1, v9}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 2591
    .end local v4    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 2599
    :cond_4
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    instance-of v9, v9, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v9, :cond_3

    .line 2600
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/folder/FolderInfo;

    .line 2601
    .local v2, "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    iget-object v9, v2, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 2602
    .restart local v4    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    invoke-virtual {v4}, Lcom/android/launcher3/common/base/item/IconInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {p1, v10}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    goto/16 :goto_0

    .line 2583
    .end local v2    # "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    .end local v4    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v7    # "v":Landroid/view/View;
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 2609
    .end local v0    # "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v1    # "clc":Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    .end local v5    # "j":I
    :cond_7
    const-string v9, "Launcher.Workspace"

    const-string v10, "getIconView(), Could\'t find app icon"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v8

    .line 2610
    goto/16 :goto_0
.end method

.method getIdForScreen(Lcom/android/launcher3/common/base/view/CellLayout;)J
    .locals 4
    .param p1, "layout"    # Lcom/android/launcher3/common/base/view/CellLayout;

    .prologue
    .line 602
    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/util/LongArrayMap;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    .line 603
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 604
    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/util/LongArrayMap;->keyAt(I)J

    move-result-wide v2

    .line 606
    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, -0x1

    goto :goto_0
.end method

.method protected getNearestHoverOverPageIndex()I
    .locals 4

    .prologue
    .line 1697
    invoke-super {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getNearestHoverOverPageIndex()I

    move-result v0

    .line 1699
    .local v0, "index":I
    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    const-wide/16 v2, -0x191

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    const-wide/16 v2, -0x12d

    .line 1700
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    const-wide/16 v2, -0x1f5

    .line 1701
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 1702
    :cond_0
    const/4 v0, -0x1

    .line 1704
    .end local v0    # "index":I
    :cond_1
    return v0
.end method

.method public getPageDeleteBtn()Landroid/view/View;
    .locals 3

    .prologue
    .line 1950
    iget v2, p0, Lcom/android/launcher3/home/Workspace;->mCurrentPage:I

    invoke-virtual {p0, v2}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/home/WorkspaceCellLayout;

    .line 1951
    .local v0, "child":Lcom/android/launcher3/home/WorkspaceCellLayout;
    const/4 v1, 0x0

    .line 1952
    .local v1, "pageDeleteBtn":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1953
    invoke-virtual {v0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getPageDeleteBtn()Landroid/view/View;

    move-result-object v1

    .line 1955
    :cond_0
    return-object v1
.end method

.method public getPageDeleteBtn(I)Landroid/view/View;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 1941
    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/home/WorkspaceCellLayout;

    .line 1942
    .local v0, "child":Lcom/android/launcher3/home/WorkspaceCellLayout;
    const/4 v1, 0x0

    .line 1943
    .local v1, "pageDeleteBtn":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1944
    invoke-virtual {v0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getPageDeleteBtn()Landroid/view/View;

    move-result-object v1

    .line 1946
    :cond_0
    return-object v1
.end method

.method getPageIndexForScreenId(J)I
    .locals 1
    .param p1, "screenId"    # J

    .prologue
    .line 610
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method protected getPageIndicatorDescription()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1458
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080045

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1459
    .local v0, "settings":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getNextPage()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/launcher3/home/Workspace;->getPageDescription(IZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getPageIndicatorMarker(I)Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;
    .locals 7
    .param p1, "pageIndex"    # I

    .prologue
    const/4 v6, 0x1

    .line 1431
    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/Workspace;->getScreenIdForPageIndex(I)J

    move-result-wide v2

    .line 1432
    .local v2, "screenId":J
    const-wide/16 v4, -0xc9

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    const-wide/16 v4, -0x191

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 1433
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {p0}, Lcom/android/launcher3/home/Workspace;->getPageIndexToStart()I

    move-result v4

    sub-int v0, v1, v4

    .line 1434
    .local v0, "count":I
    if-le v0, v6, :cond_5

    .line 1435
    new-instance v1, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;

    sget-object v4, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;->PLUS:Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;

    invoke-direct {v1, v4}, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;-><init>(Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;)V

    .line 1454
    .end local v0    # "count":I
    :goto_0
    return-object v1

    .line 1437
    :cond_1
    const-wide/16 v4, -0x1f5

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    .line 1438
    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {p0}, Lcom/android/launcher3/home/Workspace;->getPageIndexToStart()I

    move-result v4

    sub-int v0, v1, v4

    .line 1439
    .restart local v0    # "count":I
    if-le v0, v6, :cond_5

    .line 1440
    new-instance v1, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;

    sget-object v4, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;->FESTIVAL:Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;

    invoke-direct {v1, v4}, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;-><init>(Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;)V

    goto :goto_0

    .line 1442
    .end local v0    # "count":I
    :cond_2
    iget v1, p0, Lcom/android/launcher3/home/Workspace;->mDefaultPage:I

    if-ne p1, v1, :cond_3

    .line 1443
    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {p0}, Lcom/android/launcher3/home/Workspace;->getPageIndexToStart()I

    move-result v4

    sub-int v0, v1, v4

    .line 1444
    .restart local v0    # "count":I
    if-lez v0, :cond_5

    .line 1445
    new-instance v1, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;

    sget-object v4, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;->HOME:Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;

    invoke-direct {v1, v4}, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;-><init>(Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;)V

    goto :goto_0

    .line 1447
    .end local v0    # "count":I
    :cond_3
    const-wide/16 v4, -0x12d

    cmp-long v1, v2, v4

    if-eqz v1, :cond_4

    const/4 v1, -0x1

    if-ne p1, v1, :cond_5

    .line 1448
    :cond_4
    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {p0}, Lcom/android/launcher3/home/Workspace;->getPageIndexToStart()I

    move-result v4

    sub-int v0, v1, v4

    .line 1449
    .restart local v0    # "count":I
    if-lez v0, :cond_5

    .line 1450
    new-instance v1, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;

    sget-object v4, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;->ZEROPAGE:Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;

    invoke-direct {v1, v4}, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;-><init>(Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;)V

    goto :goto_0

    .line 1454
    .end local v0    # "count":I
    :cond_5
    invoke-super {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->getPageIndicatorMarker(I)Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;

    move-result-object v1

    goto :goto_0
.end method

.method public getRestorePage()I
    .locals 1

    .prologue
    .line 1719
    iget v0, p0, Lcom/android/launcher3/home/Workspace;->mRestorePage:I

    return v0
.end method

.method getScreenIdForPageIndex(I)J
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 614
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 615
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 617
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method getScreenOrder()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 625
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    return-object v0
.end method

.method getScreenWithId(J)Lcom/android/launcher3/common/base/view/CellLayout;
    .locals 3
    .param p1, "screenId"    # J

    .prologue
    .line 597
    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v1, p1, p2}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 598
    .local v0, "layout":Lcom/android/launcher3/common/base/view/CellLayout;
    return-object v0
.end method

.method public getSupportCustomPageCount()I
    .locals 1

    .prologue
    .line 2636
    invoke-static {}, Lcom/android/launcher3/home/ZeroPageController;->isEnableZeroPage()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getToken()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 2478
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mWindowToken:Landroid/os/IBinder;

    return-object v0
.end method

.method getWorkspaceScreens()Lcom/android/launcher3/util/LongArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/launcher3/util/LongArrayMap",
            "<",
            "Lcom/android/launcher3/common/base/view/CellLayout;",
            ">;"
        }
    .end annotation

    .prologue
    .line 621
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    return-object v0
.end method

.method getZeroPageController()Lcom/android/launcher3/home/ZeroPageController;
    .locals 1

    .prologue
    .line 1545
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    return-object v0
.end method

.method public getZeroPageSwitchLayout()Landroid/widget/LinearLayout;
    .locals 3

    .prologue
    .line 1959
    iget v2, p0, Lcom/android/launcher3/home/Workspace;->mCurrentPage:I

    invoke-virtual {p0, v2}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/home/WorkspaceCellLayout;

    .line 1960
    .local v0, "child":Lcom/android/launcher3/home/WorkspaceCellLayout;
    const/4 v1, 0x0

    .line 1961
    .local v1, "zeroPageSwitchLayout":Landroid/widget/LinearLayout;
    if-eqz v0, :cond_0

    .line 1962
    invoke-virtual {v0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getZeroPageSwitchLayout()Landroid/widget/LinearLayout;

    move-result-object v1

    .line 1964
    :cond_0
    return-object v1
.end method

.method hasExtraEmptyScreen()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 561
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getChildCount()I

    move-result v0

    .line 562
    .local v0, "nScreens":I
    invoke-direct {p0}, Lcom/android/launcher3/home/Workspace;->getPageIndexToStart()I

    move-result v2

    sub-int/2addr v0, v2

    .line 563
    iget-object v2, p0, Lcom/android/launcher3/home/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    const-wide/16 v4, -0xc9

    invoke-virtual {v2, v4, v5}, Lcom/android/launcher3/util/LongArrayMap;->containsKey(J)Z

    move-result v2

    if-eqz v2, :cond_0

    if-le v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasTargetView()Z
    .locals 4

    .prologue
    .line 2459
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getPageCount()I

    move-result v2

    .line 2460
    .local v2, "pageCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 2461
    invoke-virtual {p0, v1}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 2462
    .local v0, "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->hasTargetView()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2463
    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->hasTargetView()Z

    move-result v3

    .line 2466
    .end local v0    # "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    :goto_1
    return v3

    .line 2460
    .restart local v0    # "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2466
    .end local v0    # "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method hideDefaultHomeIcon()V
    .locals 1

    .prologue
    .line 1909
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/Workspace;->hideDefaultHomeIcon(Z)V

    .line 1910
    return-void
.end method

.method hideDefaultHomeIcon(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .prologue
    .line 1913
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mDefaultHomeIcon:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1914
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mDefaultHomeIcon:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/launcher3/home/Workspace;->setAlphaWithVisibility(Landroid/view/View;IZ)V

    .line 1916
    :cond_0
    return-void
.end method

.method initDefaultHomeIcon()V
    .locals 3

    .prologue
    .line 1827
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mDefaultHomeIcon:Landroid/view/View;

    if-nez v0, :cond_1

    .line 1828
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    const v1, 0x7f0f0078

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/home/Workspace;->mDefaultHomeIcon:Landroid/view/View;

    .line 1829
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mDefaultHomeIcon:Landroid/view/View;

    sget-object v1, Lcom/android/launcher3/home/HomeFocusHelper;->HOME_BUTTON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1830
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mDefaultHomeIcon:Landroid/view/View;

    new-instance v1, Lcom/android/launcher3/home/Workspace$12;

    invoke-direct {v1, p0}, Lcom/android/launcher3/home/Workspace$12;-><init>(Lcom/android/launcher3/home/Workspace;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1841
    invoke-static {}, Lcom/android/launcher3/util/WhiteBgManager;->isWhiteBg()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1842
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mDefaultHomeIcon:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/util/WhiteBgManager;->changeColorFilterForBg(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Z)V

    .line 1844
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mDefaultHomeIcon:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 1847
    :cond_1
    iget v0, p0, Lcom/android/launcher3/home/Workspace;->mCurrentPage:I

    invoke-direct {p0, v0}, Lcom/android/launcher3/home/Workspace;->updateDefaultHomeIcon(I)V

    .line 1848
    return-void
.end method

.method insertAdditionalPageAndMoveItems(IILjava/util/List;)V
    .locals 28
    .param p1, "currentIndex"    # I
    .param p2, "targetIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            "Landroid/view/View;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 2214
    .local p3, "againMoveItems":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;>;>;"
    const-string v7, "Launcher.Workspace"

    const-string v8, "insertAdditionalPageAndMoveItems()"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2215
    invoke-direct/range {p0 .. p2}, Lcom/android/launcher3/home/Workspace;->insertPage(II)J

    move-result-wide v26

    .line 2217
    .local v26, "screenID":J
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/android/launcher3/home/WorkspaceCellLayout;

    .line 2218
    .local v20, "currentCellLayout":Lcom/android/launcher3/home/WorkspaceCellLayout;
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/home/WorkspaceCellLayout;

    .line 2219
    .local v4, "targetCellLayout":Lcom/android/launcher3/home/WorkspaceCellLayout;
    const/4 v7, 0x1

    iput-boolean v7, v4, Lcom/android/launcher3/home/WorkspaceCellLayout;->mTempPage:Z

    .line 2220
    move-object/from16 v22, p3

    .line 2221
    .local v22, "moveItems":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;>;>;"
    const/4 v5, 0x0

    .line 2222
    .local v5, "cellX":I
    const/4 v6, 0x0

    .line 2224
    .local v6, "cellY":I
    const/16 v24, 0x1

    .line 2225
    .local v24, "previousSpanY":I
    invoke-virtual {v4}, Lcom/android/launcher3/home/WorkspaceCellLayout;->clearOccupiedCells()V

    .line 2227
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :goto_0
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/util/Pair;

    .line 2228
    .local v23, "pairItem":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;>;"
    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 2229
    .local v21, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    move-wide/from16 v0, v26

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    .line 2231
    move-object/from16 v0, v21

    iget v7, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    add-int/2addr v7, v5

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getCountX()I

    move-result v8

    if-le v7, v8, :cond_0

    .line 2232
    const/4 v5, 0x0

    .line 2233
    add-int v6, v6, v24

    .line 2236
    :cond_0
    const/4 v7, 0x2

    new-array v9, v7, [I

    .line 2237
    .local v9, "tmpXY":[I
    move-object/from16 v0, v21

    iget v7, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    move-object/from16 v0, v21

    iget v8, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Lcom/android/launcher3/home/WorkspaceCellLayout;->findNearestVacantAreaWithCell(IIII[IZ)V

    .line 2240
    const/4 v7, 0x0

    aget v7, v9, v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_1

    const/4 v7, 0x1

    aget v7, v9, v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_1

    .line 2241
    const/4 v7, 0x0

    aget v7, v9, v7

    move-object/from16 v0, v21

    iput v7, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    .line 2242
    const/4 v7, 0x1

    aget v7, v9, v7

    move-object/from16 v0, v21

    iput v7, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    .line 2245
    :cond_1
    move-object/from16 v0, v21

    instance-of v7, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    if-eqz v7, :cond_2

    .line 2246
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v7, v21

    check-cast v7, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    iget-object v11, v7, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    move-object/from16 v0, v21

    iget-wide v12, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    move-object/from16 v0, v21

    iget-wide v14, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    move/from16 v16, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    move/from16 v17, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    move/from16 v18, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    move/from16 v19, v0

    invoke-virtual/range {v10 .. v19}, Lcom/android/launcher3/home/HomeController;->addInScreen(Landroid/view/View;JJIIII)V

    .line 2254
    :goto_1
    move-object/from16 v0, v21

    iget v7, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    add-int/2addr v5, v7

    .line 2256
    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    move/from16 v24, v0

    .line 2257
    goto/16 :goto_0

    .line 2250
    :cond_2
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, v23

    iget-object v11, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Landroid/view/View;

    move-object/from16 v0, v21

    iget-wide v12, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    move-object/from16 v0, v21

    iget-wide v14, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    move/from16 v16, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    move/from16 v17, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    move/from16 v18, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    move/from16 v19, v0

    invoke-virtual/range {v10 .. v19}, Lcom/android/launcher3/home/HomeController;->addInScreen(Landroid/view/View;JJIIII)V

    goto :goto_1

    .line 2258
    .end local v9    # "tmpXY":[I
    .end local v21    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v23    # "pairItem":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;>;"
    :cond_3
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/launcher3/home/Workspace;->mAdditionalCount:I

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    iput v7, v0, Lcom/android/launcher3/home/Workspace;->mAdditionalCount:I

    .line 2259
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setCrossHairAnimatedVisibility(IZ)V

    .line 2260
    const/4 v7, 0x1

    iput-boolean v7, v4, Lcom/android/launcher3/home/WorkspaceCellLayout;->mGridChanged:Z

    .line 2261
    return-void
.end method

.method insertNewWorkspaceScreen(J)J
    .locals 3
    .param p1, "screenId"    # J

    .prologue
    .line 385
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getChildCount()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher3/home/Workspace;->insertNewWorkspaceScreen(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method insertNewWorkspaceScreen(JI)J
    .locals 5
    .param p1, "screenId"    # J
    .param p3, "insertIndex"    # I

    .prologue
    const/4 v3, 0x0

    .line 389
    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v1, p1, p2}, Lcom/android/launcher3/util/LongArrayMap;->containsKey(J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 390
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Screen id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " already exists!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 393
    :cond_0
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFestivalPage()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->getFestivalPageController()Lcom/android/launcher3/home/FestivalPageController;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 394
    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->getFestivalPageController()Lcom/android/launcher3/home/FestivalPageController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/home/FestivalPageController;->removeCustomFestivalPage()V

    .line 395
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getChildCount()I

    move-result v1

    if-le p3, v1, :cond_1

    .line 396
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getChildCount()I

    move-result p3

    .line 399
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/home/Workspace;->createPage(JI)Lcom/android/launcher3/home/WorkspaceCellLayout;

    move-result-object v0

    .line 401
    .local v0, "newScreen":Lcom/android/launcher3/home/WorkspaceCellLayout;
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->isOverviewState()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 402
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setBackgroundAlpha(F)V

    .line 405
    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->getState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 406
    invoke-virtual {v0, v3, v3}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setCrossHairAnimatedVisibility(IZ)V

    .line 408
    :cond_3
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFestivalPage()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->getState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    .line 409
    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->getFestivalPageController()Lcom/android/launcher3/home/FestivalPageController;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 410
    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->getFestivalPageController()Lcom/android/launcher3/home/FestivalPageController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/home/FestivalPageController;->createCustomFestivalPage()V

    .line 413
    :cond_4
    return-wide p1
.end method

.method insertNewWorkspaceScreenBeforeEmptyScreen(J)J
    .locals 5
    .param p1, "screenId"    # J

    .prologue
    .line 374
    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    const-wide/16 v2, -0xc9

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 375
    .local v0, "insertIndex":I
    if-gez v0, :cond_0

    .line 376
    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    const-wide/16 v2, -0x191

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 378
    :cond_0
    if-gez v0, :cond_1

    .line 379
    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 381
    :cond_1
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher3/home/Workspace;->insertNewWorkspaceScreen(JI)J

    move-result-wide v2

    return-wide v2
.end method

.method insertPageAndMoveItems(II)V
    .locals 29
    .param p1, "currentIndex"    # I
    .param p2, "targetIndex"    # I

    .prologue
    .line 2154
    invoke-direct/range {p0 .. p2}, Lcom/android/launcher3/home/Workspace;->insertPage(II)J

    move-result-wide v26

    .line 2156
    .local v26, "screenID":J
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Lcom/android/launcher3/home/WorkspaceCellLayout;

    .line 2157
    .local v21, "currentCellLayout":Lcom/android/launcher3/home/WorkspaceCellLayout;
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/home/WorkspaceCellLayout;

    .line 2158
    .local v4, "targetCellLayout":Lcom/android/launcher3/home/WorkspaceCellLayout;
    const/4 v7, 0x1

    iput-boolean v7, v4, Lcom/android/launcher3/home/WorkspaceCellLayout;->mTempPage:Z

    .line 2159
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mOutSideItems:Ljava/util/List;

    move-object/from16 v23, v0

    .line 2160
    .local v23, "moveItems":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;>;>;"
    const/4 v5, 0x0

    .line 2161
    .local v5, "cellX":I
    const/4 v6, 0x0

    .line 2162
    .local v6, "cellY":I
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 2164
    .local v20, "againMoveItems":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;>;>;"
    const/16 v25, 0x1

    .line 2165
    .local v25, "previousSpanY":I
    invoke-virtual {v4}, Lcom/android/launcher3/home/WorkspaceCellLayout;->clearOccupiedCells()V

    .line 2167
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v28

    :goto_0
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/util/Pair;

    .line 2168
    .local v24, "pairItem":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;>;"
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 2169
    .local v22, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    move-wide/from16 v0, v26

    move-object/from16 v2, v22

    iput-wide v0, v2, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    .line 2171
    move-object/from16 v0, v22

    iget v7, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    add-int/2addr v7, v5

    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getCountX()I

    move-result v8

    if-le v7, v8, :cond_0

    .line 2172
    const/4 v5, 0x0

    .line 2173
    add-int v6, v6, v25

    .line 2176
    :cond_0
    move-object/from16 v0, v22

    iget v7, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    add-int/2addr v7, v6

    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getCountY()I

    move-result v8

    if-le v7, v8, :cond_1

    .line 2177
    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2179
    :cond_1
    const/4 v7, 0x2

    new-array v9, v7, [I

    .line 2180
    .local v9, "tmpXY":[I
    move-object/from16 v0, v22

    iget v7, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    move-object/from16 v0, v22

    iget v8, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Lcom/android/launcher3/home/WorkspaceCellLayout;->findNearestVacantAreaWithCell(IIII[IZ)V

    .line 2183
    const/4 v7, 0x0

    aget v7, v9, v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_2

    const/4 v7, 0x1

    aget v7, v9, v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_2

    .line 2184
    const/4 v7, 0x0

    aget v7, v9, v7

    move-object/from16 v0, v22

    iput v7, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    .line 2185
    const/4 v7, 0x1

    aget v7, v9, v7

    move-object/from16 v0, v22

    iput v7, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    .line 2188
    :cond_2
    move-object/from16 v0, v22

    instance-of v7, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    if-eqz v7, :cond_3

    .line 2189
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v7, v22

    check-cast v7, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    iget-object v11, v7, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    move-object/from16 v0, v22

    iget-wide v12, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    move-object/from16 v0, v22

    iget-wide v14, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    move/from16 v16, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    move/from16 v17, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    move/from16 v18, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    move/from16 v19, v0

    invoke-virtual/range {v10 .. v19}, Lcom/android/launcher3/home/HomeController;->addInScreen(Landroid/view/View;JJIIII)V

    .line 2197
    :goto_1
    move-object/from16 v0, v22

    iget v7, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    add-int/2addr v5, v7

    .line 2199
    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    move/from16 v25, v0

    goto/16 :goto_0

    .line 2193
    :cond_3
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, v24

    iget-object v11, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Landroid/view/View;

    move-object/from16 v0, v22

    iget-wide v12, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    move-object/from16 v0, v22

    iget-wide v14, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    move/from16 v16, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    move/from16 v17, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    move/from16 v18, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    move/from16 v19, v0

    invoke-virtual/range {v10 .. v19}, Lcom/android/launcher3/home/HomeController;->addInScreen(Landroid/view/View;JJIIII)V

    goto :goto_1

    .line 2203
    .end local v9    # "tmpXY":[I
    .end local v22    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v24    # "pairItem":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;>;"
    :cond_4
    if-eqz v20, :cond_5

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_5

    .line 2204
    add-int/lit8 v7, p1, 0x1

    add-int/lit8 v8, p2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v7, v8, v1}, Lcom/android/launcher3/home/Workspace;->insertAdditionalPageAndMoveItems(IILjava/util/List;)V

    .line 2207
    :cond_5
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setCrossHairAnimatedVisibility(IZ)V

    .line 2208
    const/4 v7, 0x1

    iput-boolean v7, v4, Lcom/android/launcher3/home/WorkspaceCellLayout;->mGridChanged:Z

    .line 2209
    return-void
.end method

.method isDeferRemoveExtraEmptyScreen()Z
    .locals 1

    .prologue
    .line 2128
    iget-boolean v0, p0, Lcom/android/launcher3/home/Workspace;->mDeferRemoveExtraEmptyScreen:Z

    return v0
.end method

.method public isEmptyPage(I)Z
    .locals 2
    .param p1, "pageIndex"    # I

    .prologue
    .line 2333
    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 2334
    .local v0, "indexPage":Lcom/android/launcher3/common/base/view/CellLayout;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 2335
    const/4 v1, 0x1

    .line 2337
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method isNormalState()Z
    .locals 1

    .prologue
    .line 1246
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->isNormalState()Z

    move-result v0

    return v0
.end method

.method isOverviewState()Z
    .locals 1

    .prologue
    .line 1242
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->isOverviewState()Z

    move-result v0

    return v0
.end method

.method isPinchZoomState()Z
    .locals 2

    .prologue
    .line 2291
    iget v0, p0, Lcom/android/launcher3/home/Workspace;->mTouchState:I

    and-int/lit8 v0, v0, 0x3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isScreenGridState()Z
    .locals 1

    .prologue
    .line 1250
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->isScreenGridState()Z

    move-result v0

    return v0
.end method

.method public isTouchActive()Z
    .locals 1

    .prologue
    .line 343
    iget v0, p0, Lcom/android/launcher3/home/Workspace;->mTouchState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isVisibleGridPanel()Z
    .locals 1

    .prologue
    .line 1254
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->isVisibleGridPanel()Z

    move-result v0

    return v0
.end method

.method mapPointFromSelfToChild(Landroid/view/View;[F)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "xy"    # [F

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1363
    aget v0, p2, v2

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    aput v0, p2, v2

    .line 1364
    aget v0, p2, v3

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    aput v0, p2, v3

    .line 1365
    return-void
.end method

.method public moveToDefaultScreen(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .prologue
    .line 1426
    iget v0, p0, Lcom/android/launcher3/home/Workspace;->mDefaultPage:I

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/home/Workspace;->moveToScreen(IZ)V

    .line 1427
    return-void
.end method

.method moveToScreen(IZ)V
    .locals 1
    .param p1, "page"    # I
    .param p2, "animate"    # Z

    .prologue
    .line 1413
    if-eqz p2, :cond_1

    .line 1414
    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/Workspace;->snapToPage(I)V

    .line 1419
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1420
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1421
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1423
    :cond_0
    return-void

    .line 1416
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/Workspace;->setCurrentPage(I)V

    goto :goto_0
.end method

.method protected notifyPageChange(III)V
    .locals 1
    .param p1, "page"    # I
    .param p2, "scrollX"    # I
    .param p3, "pageCount"    # I

    .prologue
    .line 2622
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->isSelectState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2623
    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/common/base/view/PagedView;->notifyPageChange(III)V

    .line 2625
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
    .line 2615
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->isSelectState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2616
    invoke-super/range {p0 .. p5}, Lcom/android/launcher3/common/base/view/PagedView;->notifyPageScroll(IIIII)V

    .line 2618
    :cond_0
    return-void
.end method

.method protected notifyPageSwitchListener()V
    .locals 0

    .prologue
    .line 856
    invoke-super {p0}, Lcom/android/launcher3/common/base/view/PagedView;->notifyPageSwitchListener()V

    .line 857
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 1023
    invoke-super {p0}, Lcom/android/launcher3/common/base/view/PagedView;->onAttachedToWindow()V

    .line 1025
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/home/Workspace;->mWindowToken:Landroid/os/IBinder;

    .line 1026
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->computeScroll()V

    .line 1027
    return-void
.end method

.method onChangeChildState()V
    .locals 0

    .prologue
    .line 1968
    invoke-direct {p0}, Lcom/android/launcher3/home/Workspace;->checkVisibilityOfPageDeleteBtn()V

    .line 1969
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->checkAlignButtonEnabled()V

    .line 1970
    return-void
.end method

.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 5
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    .line 321
    instance-of v2, p2, Lcom/android/launcher3/common/base/view/CellLayout;

    if-nez v2, :cond_0

    .line 322
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "A Workspace can only have CellLayout children."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 325
    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/home/Workspace;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/launcher3/home/ZeroPageController;->isActiveZeroPage(Landroid/content/Context;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 326
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getPageIndicator()Lcom/android/launcher3/common/view/PageIndicator;

    move-result-object v1

    .line 327
    .local v1, "pageIndicator":Lcom/android/launcher3/common/view/PageIndicator;
    if-eqz v1, :cond_1

    .line 328
    invoke-virtual {v1}, Lcom/android/launcher3/common/view/PageIndicator;->getMarkers()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/android/launcher3/common/view/PageIndicator;->getMarkers()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 329
    invoke-virtual {p0, v4}, Lcom/android/launcher3/home/Workspace;->setZeroPageMarker(Z)V

    .line 330
    invoke-virtual {p0, v4}, Lcom/android/launcher3/home/Workspace;->setMarkerStartOffset(I)V

    .line 331
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/android/launcher3/home/Workspace;->addMarkerForView(I)V

    .end local v1    # "pageIndicator":Lcom/android/launcher3/common/view/PageIndicator;
    :cond_1
    move-object v0, p2

    .line 336
    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 337
    .local v0, "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    invoke-virtual {v0, v4}, Lcom/android/launcher3/common/base/view/CellLayout;->setClickable(Z)V

    .line 338
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/launcher3/common/base/view/CellLayout;->setImportantForAccessibility(I)V

    .line 339
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/common/base/view/PagedView;->onChildViewAdded(Landroid/view/View;Landroid/view/View;)V

    .line 340
    return-void
.end method

.method onConfigurationChangedIfNeeded()V
    .locals 9

    .prologue
    .line 2490
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->setupShrinkFactor()V

    .line 2491
    iget v6, p0, Lcom/android/launcher3/home/Workspace;->mOverviewShrinkFactor:F

    invoke-virtual {p0, v6}, Lcom/android/launcher3/home/Workspace;->setMinScale(F)V

    .line 2493
    iget-object v6, p0, Lcom/android/launcher3/home/Workspace;->mDefaultHomeIcon:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2494
    .local v1, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090041

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    iput v6, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 2495
    iget-object v6, p0, Lcom/android/launcher3/home/Workspace;->mDefaultHomeIcon:Landroid/view/View;

    invoke-virtual {v6, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2497
    iget-object v6, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 2498
    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v6

    iget-object v6, v6, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v6}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getIndicatorBottom()I

    move-result v6

    int-to-float v3, v6

    .line 2500
    .local v3, "pageIndicatorMarginBottomNormal":F
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->isOverviewState()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2501
    iget v6, p0, Lcom/android/launcher3/home/Workspace;->mOverviewShrinkFactor:F

    invoke-virtual {p0, v6}, Lcom/android/launcher3/home/Workspace;->setScaleX(F)V

    .line 2502
    iget v6, p0, Lcom/android/launcher3/home/Workspace;->mOverviewShrinkFactor:F

    invoke-virtual {p0, v6}, Lcom/android/launcher3/home/Workspace;->setScaleY(F)V

    .line 2503
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090026

    .line 2504
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    int-to-float v6, v6

    .line 2503
    invoke-virtual {p0, v6}, Lcom/android/launcher3/home/Workspace;->setTranslationY(F)V

    .line 2505
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getPageIndicator()Lcom/android/launcher3/common/view/PageIndicator;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 2506
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getPageIndicator()Lcom/android/launcher3/common/view/PageIndicator;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090029

    .line 2507
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    int-to-float v7, v7

    sub-float v7, v3, v7

    .line 2506
    invoke-virtual {v6, v7}, Lcom/android/launcher3/common/view/PageIndicator;->setTranslationY(F)V

    .line 2522
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getPageCount()I

    move-result v2

    .line 2523
    .local v2, "pageCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_2

    .line 2524
    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/home/WorkspaceCellLayout;

    .line 2525
    .local v5, "workspaceCellLayout":Lcom/android/launcher3/home/WorkspaceCellLayout;
    invoke-virtual {v5}, Lcom/android/launcher3/home/WorkspaceCellLayout;->onConfigurationChangedIfNeeded()V

    .line 2523
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2509
    .end local v0    # "i":I
    .end local v2    # "pageCount":I
    .end local v5    # "workspaceCellLayout":Lcom/android/launcher3/home/WorkspaceCellLayout;
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->isScreenGridState()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2510
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b000b

    .line 2511
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x42c80000    # 100.0f

    div-float v4, v6, v7

    .line 2512
    .local v4, "screengridShrinkFactor":F
    invoke-virtual {p0, v4}, Lcom/android/launcher3/home/Workspace;->setScaleX(F)V

    .line 2513
    invoke-virtual {p0, v4}, Lcom/android/launcher3/home/Workspace;->setScaleY(F)V

    .line 2514
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090027

    .line 2515
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    int-to-float v6, v6

    .line 2514
    invoke-virtual {p0, v6}, Lcom/android/launcher3/home/Workspace;->setTranslationY(F)V

    .line 2516
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getPageIndicator()Lcom/android/launcher3/common/view/PageIndicator;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 2517
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getPageIndicator()Lcom/android/launcher3/common/view/PageIndicator;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f09002a

    .line 2518
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    int-to-float v7, v7

    sub-float v7, v3, v7

    .line 2517
    invoke-virtual {v6, v7}, Lcom/android/launcher3/common/view/PageIndicator;->setTranslationY(F)V

    goto :goto_0

    .line 2528
    .end local v4    # "screengridShrinkFactor":F
    .restart local v0    # "i":I
    .restart local v2    # "pageCount":I
    :cond_2
    new-instance v6, Lcom/android/launcher3/home/Workspace$15;

    invoke-direct {v6, p0}, Lcom/android/launcher3/home/Workspace$15;-><init>(Lcom/android/launcher3/home/Workspace;)V

    invoke-virtual {p0, v6}, Lcom/android/launcher3/home/Workspace;->post(Ljava/lang/Runnable;)Z

    .line 2533
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 1030
    invoke-super {p0}, Lcom/android/launcher3/common/base/view/PagedView;->onDetachedFromWindow()V

    .line 1031
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/home/Workspace;->mWindowToken:Landroid/os/IBinder;

    .line 1032
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1070
    invoke-super {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->onDraw(Landroid/graphics/Canvas;)V

    .line 1073
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mBindPages:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/Workspace;->post(Ljava/lang/Runnable;)Z

    .line 1074
    return-void
.end method

.method public onEndReordering()V
    .locals 6

    .prologue
    .line 1216
    invoke-super {p0}, Lcom/android/launcher3/common/base/view/PagedView;->onEndReordering()V

    .line 1218
    iget-object v3, p0, Lcom/android/launcher3/home/Workspace;->mHomeBindController:Lcom/android/launcher3/home/HomeBindController;

    invoke-virtual {v3}, Lcom/android/launcher3/home/HomeBindController;->isWorkspaceLoading()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1239
    :goto_0
    return-void

    .line 1223
    :cond_0
    iget-object v3, p0, Lcom/android/launcher3/home/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1224
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getChildCount()I

    move-result v1

    .line 1225
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_1

    .line 1226
    invoke-virtual {p0, v2}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 1227
    .local v0, "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    iget-object v3, p0, Lcom/android/launcher3/home/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/Workspace;->getIdForScreen(Lcom/android/launcher3/common/base/view/CellLayout;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1225
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1230
    .end local v0    # "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    :cond_1
    iget-object v3, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    iget-object v4, p0, Lcom/android/launcher3/home/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Lcom/android/launcher3/home/HomeController;->updateWorkspaceScreenOrder(Ljava/util/ArrayList;)V

    .line 1232
    iget v3, p0, Lcom/android/launcher3/home/Workspace;->mDefaultPage:I

    iget-wide v4, p0, Lcom/android/launcher3/home/Workspace;->mDefaultHomeScreenId:J

    invoke-virtual {p0, v4, v5}, Lcom/android/launcher3/home/Workspace;->getPageIndexForScreenId(J)I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 1233
    iget-wide v4, p0, Lcom/android/launcher3/home/Workspace;->mDefaultHomeScreenId:J

    invoke-virtual {p0, v4, v5}, Lcom/android/launcher3/home/Workspace;->getPageIndexForScreenId(J)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/launcher3/home/Workspace;->setDefaultPage(I)V

    .line 1234
    iget v3, p0, Lcom/android/launcher3/home/Workspace;->mDefaultPage:I

    invoke-virtual {p0, v3}, Lcom/android/launcher3/home/Workspace;->updateDefaultHomePageIndicator(I)V

    .line 1238
    :cond_2
    invoke-direct {p0}, Lcom/android/launcher3/home/Workspace;->enableLayoutTransitions()V

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 682
    iget-object v6, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v6}, Lcom/android/launcher3/home/HomeController;->getState()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1

    .line 683
    iget-object v6, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    invoke-virtual {v6, v7, v8}, Lcom/android/launcher3/common/view/DragLayer;->isResizeFrameArea(FF)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 752
    :goto_0
    return v4

    .line 686
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_1

    .line 687
    invoke-static {}, Lcom/android/launcher3/util/event/ScrollDetector;->reset()V

    .line 688
    iget-object v4, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    const-string v6, "2"

    invoke-virtual {v4, v5, v6}, Lcom/android/launcher3/home/HomeController;->exitResizeState(ZLjava/lang/String;)V

    move v4, v5

    .line 689
    goto :goto_0

    .line 694
    :cond_1
    iget-object v6, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v6}, Lcom/android/launcher3/home/HomeController;->getHomeContainer()Lcom/android/launcher3/home/HomeContainer;

    move-result-object v1

    .line 695
    .local v1, "homeContainer":Lcom/android/launcher3/home/HomeContainer;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    and-int/lit16 v6, v6, 0xff

    packed-switch v6, :pswitch_data_0

    .line 752
    :cond_2
    :goto_1
    :pswitch_0
    invoke-super {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    goto :goto_0

    .line 697
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, p0, Lcom/android/launcher3/home/Workspace;->mXDown:F

    .line 698
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, p0, Lcom/android/launcher3/home/Workspace;->mYDown:F

    .line 699
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    iput v4, p0, Lcom/android/launcher3/home/Workspace;->mDownRawX:F

    .line 700
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    iput v4, p0, Lcom/android/launcher3/home/Workspace;->mDownRawY:F

    goto :goto_1

    .line 704
    :pswitch_2
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportTransitionEffects()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 705
    iget v6, p0, Lcom/android/launcher3/home/Workspace;->mXDown:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_7

    .line 706
    iget-object v6, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getPageTransitionManager()Lcom/android/launcher3/pagetransition/PageTransitionManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/launcher3/pagetransition/PageTransitionManager;->setLeftScroll(Z)V

    .line 711
    :cond_3
    :goto_2
    iget-object v6, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v6}, Lcom/android/launcher3/home/HomeController;->isNormalState()Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v6}, Lcom/android/launcher3/home/HomeController;->isOverviewState()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 712
    :cond_4
    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeContainer;->isMultiTouch()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 713
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->cancelCurrentPageLongPress()V

    .line 715
    iget v6, p0, Lcom/android/launcher3/home/Workspace;->mTouchState:I

    if-eqz v6, :cond_5

    .line 716
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->snapToDestination()V

    .line 719
    :cond_5
    iput v4, p0, Lcom/android/launcher3/home/Workspace;->mTouchState:I

    .line 721
    iget-object v4, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v4}, Lcom/android/launcher3/home/HomeController;->isSwitchingState()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {}, Lcom/android/launcher3/home/ZeroPageController;->isMoving()Z

    move-result v4

    if-nez v4, :cond_2

    .line 722
    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeContainer;->getPinchDelta()I

    move-result v2

    .line 723
    .local v2, "pinchDelta":I
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v4

    const/16 v6, 0x32

    if-le v4, v6, :cond_2

    .line 724
    iget v4, p0, Lcom/android/launcher3/home/Workspace;->mTouchState:I

    or-int/lit8 v4, v4, 0x3

    iput v4, p0, Lcom/android/launcher3/home/Workspace;->mTouchState:I

    .line 725
    if-lez v2, :cond_8

    iget-object v4, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v4}, Lcom/android/launcher3/home/HomeController;->isNormalState()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 726
    const-string v4, "Launcher.Workspace"

    const-string v6, "enter Overview by pinch zoom"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    iget-object v4, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/home/HomeController;->enterOverviewState(Z)V

    .line 728
    iget-object v4, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 729
    .local v3, "res":Landroid/content/res/Resources;
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v4

    const v6, 0x7f08018d

    .line 730
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f08011f

    .line 731
    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "1"

    .line 729
    invoke-virtual {v4, v6, v7, v8}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .end local v3    # "res":Landroid/content/res/Resources;
    :cond_6
    :goto_3
    move v4, v5

    .line 735
    goto/16 :goto_0

    .line 708
    .end local v2    # "pinchDelta":I
    :cond_7
    iget-object v6, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getPageTransitionManager()Lcom/android/launcher3/pagetransition/PageTransitionManager;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/android/launcher3/pagetransition/PageTransitionManager;->setLeftScroll(Z)V

    goto/16 :goto_2

    .line 732
    .restart local v2    # "pinchDelta":I
    :cond_8
    if-gez v2, :cond_6

    iget-object v4, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v4}, Lcom/android/launcher3/home/HomeController;->isOverviewState()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 733
    iget-object v4, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/home/HomeController;->enterNormalState(Z)V

    goto :goto_3

    .line 743
    .end local v2    # "pinchDelta":I
    :pswitch_3
    iget v4, p0, Lcom/android/launcher3/home/Workspace;->mTouchState:I

    if-nez v4, :cond_2

    .line 744
    iget v4, p0, Lcom/android/launcher3/home/Workspace;->mCurrentPage:I

    invoke-virtual {p0, v4}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 745
    .local v0, "currentPage":Lcom/android/launcher3/common/base/view/CellLayout;
    if-eqz v0, :cond_2

    .line 746
    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/Workspace;->onWallpaperTap(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 695
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onLauncherTransitionEnd(Lcom/android/launcher3/Launcher;ZZLcom/android/launcher3/common/stage/StageEntry;)V
    .locals 3
    .param p1, "l"    # Lcom/android/launcher3/Launcher;
    .param p2, "animated"    # Z
    .param p3, "toWorkspace"    # Z
    .param p4, "data"    # Lcom/android/launcher3/common/stage/StageEntry;

    .prologue
    const/4 v2, 0x1

    .line 1328
    const/4 v0, 0x0

    invoke-direct {p0, v0, p3}, Lcom/android/launcher3/home/Workspace;->updateChildrenLayersEnabled(ZZ)V

    .line 1329
    if-eqz p3, :cond_0

    invoke-virtual {p4}, Lcom/android/launcher3/common/stage/StageEntry;->getInternalStateFrom()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p4}, Lcom/android/launcher3/common/stage/StageEntry;->getInternalStateTo()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 1330
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/home/HomeController;->removeCustomPage(I)V

    .line 1331
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/launcher3/home/Workspace$7;

    invoke-direct {v1, p0}, Lcom/android/launcher3/home/Workspace$7;-><init>(Lcom/android/launcher3/home/Workspace;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1341
    :cond_0
    if-eqz p3, :cond_2

    invoke-virtual {p4}, Lcom/android/launcher3/common/stage/StageEntry;->getInternalStateTo()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 1342
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->pageEndMoving()V

    .line 1347
    :cond_1
    :goto_0
    return-void

    .line 1343
    :cond_2
    if-eqz p4, :cond_1

    iget v0, p4, Lcom/android/launcher3/common/stage/StageEntry;->fromStage:I

    if-ne v0, v2, :cond_1

    .line 1344
    invoke-virtual {p4}, Lcom/android/launcher3/common/stage/StageEntry;->getInternalStateTo()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 1345
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->resetAllPageAlphaValues()V

    goto :goto_0
.end method

.method public onLauncherTransitionPrepare(Lcom/android/launcher3/Launcher;ZZLcom/android/launcher3/common/stage/StageEntry;)V
    .locals 10
    .param p1, "l"    # Lcom/android/launcher3/Launcher;
    .param p2, "animated"    # Z
    .param p3, "toWorkspace"    # Z
    .param p4, "data"    # Lcom/android/launcher3/common/stage/StageEntry;

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x4

    const/4 v4, 0x1

    .line 1289
    if-eqz p3, :cond_3

    .line 1290
    invoke-virtual {p4}, Lcom/android/launcher3/common/stage/StageEntry;->getInternalStateFrom()I

    move-result v2

    .line 1291
    .local v2, "internalStateFrom":I
    invoke-virtual {p4}, Lcom/android/launcher3/common/stage/StageEntry;->getInternalStateTo()I

    move-result v3

    .line 1292
    .local v3, "internalStateTo":I
    if-ne v2, v4, :cond_0

    if-eq v3, v7, :cond_2

    :cond_0
    if-ne v2, v7, :cond_1

    const/4 v6, 0x2

    if-eq v3, v6, :cond_2

    :cond_1
    const/4 v6, 0x5

    if-ne v2, v6, :cond_5

    if-ne v3, v4, :cond_5

    .line 1295
    :cond_2
    if-ne v3, v7, :cond_4

    :goto_0
    invoke-direct {p0, v4, v5}, Lcom/android/launcher3/home/Workspace;->setCustomFlagOnChild(ZZ)V

    .line 1316
    .end local v2    # "internalStateFrom":I
    .end local v3    # "internalStateTo":I
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->invalidate()V

    .line 1318
    invoke-direct {p0, v5, p3}, Lcom/android/launcher3/home/Workspace;->updateChildrenLayersEnabled(ZZ)V

    .line 1319
    return-void

    .restart local v2    # "internalStateFrom":I
    .restart local v3    # "internalStateTo":I
    :cond_4
    move v4, v5

    .line 1295
    goto :goto_0

    .line 1296
    :cond_5
    if-ne v2, v7, :cond_3

    if-ne v3, v4, :cond_3

    .line 1297
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v0

    .line 1298
    .local v0, "currentPage":I
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0031

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 1299
    .local v1, "duration":I
    invoke-static {}, Lcom/android/launcher3/home/ZeroPageController;->isEnableZeroPage()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1300
    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/Workspace;->getScreenIdForPageIndex(I)J

    move-result-wide v6

    const-wide/16 v8, -0x12d

    cmp-long v6, v6, v8

    if-nez v6, :cond_7

    .line 1301
    if-eqz p2, :cond_6

    .line 1302
    invoke-virtual {p0, v4, v1}, Lcom/android/launcher3/home/Workspace;->snapToPage(II)V

    goto :goto_1

    .line 1304
    :cond_6
    invoke-virtual {p0, v4}, Lcom/android/launcher3/home/Workspace;->snapToPageImmediately(I)V

    goto :goto_1

    .line 1306
    :cond_7
    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/Workspace;->getScreenIdForPageIndex(I)J

    move-result-wide v6

    const-wide/16 v8, -0x191

    cmp-long v4, v6, v8

    if-nez v4, :cond_3

    .line 1307
    if-eqz p2, :cond_8

    .line 1308
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getPageCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {p0, v4, v1}, Lcom/android/launcher3/home/Workspace;->snapToPage(II)V

    goto :goto_1

    .line 1310
    :cond_8
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getPageCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {p0, v4}, Lcom/android/launcher3/home/Workspace;->snapToPageImmediately(I)V

    goto :goto_1
.end method

.method public onLauncherTransitionStart(Lcom/android/launcher3/Launcher;ZZLcom/android/launcher3/common/stage/StageEntry;)V
    .locals 0
    .param p1, "l"    # Lcom/android/launcher3/Launcher;
    .param p2, "animated"    # Z
    .param p3, "toWorkspace"    # Z
    .param p4, "data"    # Lcom/android/launcher3/common/stage/StageEntry;

    .prologue
    .line 1324
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 2383
    invoke-super/range {p0 .. p5}, Lcom/android/launcher3/common/base/view/PagedView;->onLayout(ZIIII)V

    .line 2384
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportTransitionEffects()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2385
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getPageTransitionManager()Lcom/android/launcher3/pagetransition/PageTransitionManager;

    move-result-object v0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/pagetransition/PageTransitionManager;->onLayout(Landroid/view/ViewGroup;ZIIII)V

    .line 2387
    :cond_0
    return-void
.end method

.method protected onPageBeginMoving()V
    .locals 2

    .prologue
    .line 782
    invoke-super {p0}, Lcom/android/launcher3/common/base/view/PagedView;->onPageBeginMoving()V

    .line 783
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportTransitionEffects()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 784
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getPageTransitionManager()Lcom/android/launcher3/pagetransition/PageTransitionManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 785
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getPageTransitionManager()Lcom/android/launcher3/pagetransition/PageTransitionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/pagetransition/PageTransitionManager;->onPageBeginMoving()V

    .line 788
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/launcher3/home/Workspace;->mCurrentPage:I

    iget v1, p0, Lcom/android/launcher3/home/Workspace;->mNextPage:I

    if-eq v0, v1, :cond_1

    .line 789
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/HomeController;->exitResizeState(Z)V

    .line 792
    :cond_1
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportQuickOption()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragMgr()Lcom/android/launcher3/common/drag/DragManager;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 793
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragMgr()Lcom/android/launcher3/common/drag/DragManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/drag/DragManager;->isQuickOptionShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/launcher3/home/Workspace;->mCurrentPage:I

    iget v1, p0, Lcom/android/launcher3/home/Workspace;->mNextPage:I

    if-eq v0, v1, :cond_2

    .line 794
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    invoke-virtual {v0}, Lcom/android/launcher3/common/drag/DragManager;->removeQuickOptionView()V

    .line 797
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->stopEdgeLight()V

    .line 798
    return-void
.end method

.method protected onPageEndMoving()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 801
    invoke-super {p0}, Lcom/android/launcher3/common/base/view/PagedView;->onPageEndMoving()V

    .line 802
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportTransitionEffects()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getPageTransitionManager()Lcom/android/launcher3/pagetransition/PageTransitionManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 803
    iget-object v2, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getPageTransitionManager()Lcom/android/launcher3/pagetransition/PageTransitionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/pagetransition/PageTransitionManager;->onPageEndMoving()V

    .line 806
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->isHardwareAccelerated()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 807
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/launcher3/home/Workspace;->updateChildrenLayersEnabled(Z)V

    .line 812
    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/home/Workspace;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    invoke-virtual {v2}, Lcom/android/launcher3/common/drag/DragManager;->isDragging()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 813
    iget-object v2, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeController;->isModalState()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 816
    iget-object v2, p0, Lcom/android/launcher3/home/Workspace;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    invoke-virtual {v2}, Lcom/android/launcher3/common/drag/DragManager;->forceTouchMove()V

    .line 819
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v1

    .line 820
    .local v1, "page":I
    invoke-virtual {p0, v1}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 821
    .local v0, "cell":Lcom/android/launcher3/common/base/view/CellLayout;
    iget-object v2, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v2, v0}, Lcom/android/launcher3/home/HomeController;->updateLiveIcon(Lcom/android/launcher3/common/base/view/CellLayout;)V

    .line 823
    iget-object v2, p0, Lcom/android/launcher3/home/Workspace;->mDelayedResizeRunnable:Ljava/lang/Runnable;

    if-eqz v2, :cond_2

    .line 824
    iget-object v2, p0, Lcom/android/launcher3/home/Workspace;->mDelayedResizeRunnable:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 825
    iput-object v3, p0, Lcom/android/launcher3/home/Workspace;->mDelayedResizeRunnable:Ljava/lang/Runnable;

    .line 828
    :cond_2
    iget-object v2, p0, Lcom/android/launcher3/home/Workspace;->mDelayedSnapToPageRunnable:Ljava/lang/Runnable;

    if-eqz v2, :cond_3

    .line 829
    iget-object v2, p0, Lcom/android/launcher3/home/Workspace;->mDelayedSnapToPageRunnable:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 830
    iput-object v3, p0, Lcom/android/launcher3/home/Workspace;->mDelayedSnapToPageRunnable:Ljava/lang/Runnable;

    .line 833
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getDefaultPage()I

    move-result v2

    if-ne v1, v2, :cond_4

    .line 834
    iget-object v2, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeController;->notifyCaptureIfNecessary()V

    .line 837
    :cond_4
    iget-object v2, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeController;->getState()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    .line 838
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHotword()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 839
    iget-object v2, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v3, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/launcher3/Launcher;->isGoogleSearchWidget(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/Launcher;->setHotWordDetection(Z)V

    .line 842
    :cond_5
    iget-object v2, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeController;->startEdgeLight()V

    .line 844
    :cond_6
    return-void

    .line 809
    .end local v0    # "cell":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v1    # "page":I
    :cond_7
    invoke-direct {p0}, Lcom/android/launcher3/home/Workspace;->clearChildrenCache()V

    goto :goto_0
.end method

.method onPause()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 1044
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mRemoveScreenDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mRemoveScreenDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1045
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mRemoveScreenDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1046
    iput-object v3, p0, Lcom/android/launcher3/home/Workspace;->mRemoveScreenDialog:Landroid/app/AlertDialog;

    .line 1049
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    if-eqz v0, :cond_1

    .line 1050
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/ZeroPageController;->closeZeroPageDownloadDialog()V

    .line 1053
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->cancelScroll()V

    .line 1055
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportZeroPageHome()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getVisible()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/launcher3/home/Workspace;->mRestartZeroPage:Z

    if-eqz v0, :cond_2

    .line 1056
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    const-string v1, "start_from_zeropage"

    invoke-static {v0, v1}, Lcom/android/launcher3/Utilities;->getZeroPageKey(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1057
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v1, 0x1

    const-string v2, "start_from_zeropage"

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/Utilities;->setZeroPageKey(Landroid/content/Context;ZLjava/lang/String;)V

    .line 1058
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/home/ZeroPageProvider;->notifyChange(Landroid/content/Context;)V

    .line 1059
    const-string v0, "Launcher.Workspace"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RestartZeroPage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/launcher3/home/Workspace;->mRestartZeroPage:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v1

    const-string v2, "ZPEN"

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 1063
    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/util/logging/GSIMLogging;->setZeroPageStartTime()V

    .line 1066
    :cond_2
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 1078
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isAppsStage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1079
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/common/base/view/PagedView;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result v0

    .line 1081
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onResume()V
    .locals 1

    .prologue
    .line 1037
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->hasWallpaperChangedSinceLastCheck()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1038
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->setWallpaperDimension()V

    .line 1040
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mBindPages:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/Workspace;->post(Ljava/lang/Runnable;)Z

    .line 1041
    return-void
.end method

.method protected onScrollInteractionBegin()V
    .locals 0

    .prologue
    .line 847
    invoke-super {p0}, Lcom/android/launcher3/common/base/view/PagedView;->onScrollInteractionEnd()V

    .line 848
    return-void
.end method

.method protected onScrollInteractionEnd()V
    .locals 0

    .prologue
    .line 851
    invoke-super {p0}, Lcom/android/launcher3/common/base/view/PagedView;->onScrollInteractionEnd()V

    .line 852
    return-void
.end method

.method public onStartReordering()V
    .locals 2

    .prologue
    .line 1208
    invoke-super {p0}, Lcom/android/launcher3/common/base/view/PagedView;->onStartReordering()V

    .line 1210
    invoke-direct {p0}, Lcom/android/launcher3/home/Workspace;->disableLayoutTransitions()V

    .line 1211
    iget v0, p0, Lcom/android/launcher3/home/Workspace;->mDefaultPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/Workspace;->getScreenIdForPageIndex(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/launcher3/home/Workspace;->mDefaultHomeScreenId:J

    .line 1212
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 630
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 632
    .local v0, "action":I
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->isOverviewState()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 633
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    float-to-int v2, v4

    .line 634
    .local v2, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    float-to-int v3, v4

    .line 636
    .local v3, "y":I
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 637
    .local v1, "homeIconRect":Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/android/launcher3/home/Workspace;->mDefaultHomeIcon:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 639
    if-nez v0, :cond_0

    .line 640
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 641
    const/4 v4, 0x0

    .line 649
    .end local v1    # "homeIconRect":Landroid/graphics/Rect;
    .end local v2    # "x":I
    .end local v3    # "y":I
    :goto_0
    return v4

    .line 646
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 647
    :cond_1
    iget-object v4, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v4}, Lcom/android/launcher3/home/HomeController;->initBounceAnimation()V

    .line 649
    :cond_2
    invoke-super {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    goto :goto_0
.end method

.method protected onUnhandledTap(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 655
    return-void
.end method

.method protected onWallpaperTap(Landroid/view/MotionEvent;)V
    .locals 9
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1193
    iget-object v8, p0, Lcom/android/launcher3/home/Workspace;->mTempCell:[I

    .line 1194
    .local v8, "position":[I
    invoke-virtual {p0, v8}, Lcom/android/launcher3/home/Workspace;->getLocationOnScreen([I)V

    .line 1196
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v7

    .line 1197
    .local v7, "pointerIndex":I
    aget v0, v8, v5

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    aput v0, v8, v5

    .line 1198
    aget v0, v8, v4

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    aput v0, v8, v4

    .line 1200
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    .line 1201
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v4, :cond_0

    const-string v2, "android.wallpaper.tap"

    :goto_0
    aget v3, v8, v5

    aget v4, v8, v4

    const/4 v6, 0x0

    .line 1200
    invoke-virtual/range {v0 .. v6}, Landroid/app/WallpaperManager;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V

    .line 1204
    return-void

    .line 1201
    :cond_0
    const-string v2, "android.wallpaper.secondaryTap"

    goto :goto_0
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 3
    .param p1, "visibility"    # I

    .prologue
    const/4 v2, 0x1

    .line 658
    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/Launcher;->onWindowVisibilityChanged(I)V

    .line 659
    const/16 v1, 0x8

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/launcher3/home/Workspace;->mRestartZeroPage:Z

    if-nez v1, :cond_1

    .line 660
    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/ZeroPageController;->getOffset()Landroid/graphics/Point;

    move-result-object v0

    .line 661
    .local v0, "offset":Landroid/graphics/Point;
    if-eqz v0, :cond_0

    .line 662
    iget v1, v0, Landroid/graphics/Point;->x:I

    if-le v1, v2, :cond_0

    .line 663
    iput-boolean v2, p0, Lcom/android/launcher3/home/Workspace;->mRestartZeroPage:Z

    .line 669
    .end local v0    # "offset":Landroid/graphics/Point;
    :cond_0
    :goto_0
    return-void

    .line 666
    :cond_1
    if-nez p1, :cond_0

    .line 667
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher3/home/Workspace;->mRestartZeroPage:Z

    goto :goto_0
.end method

.method protected overScroll(I)V
    .locals 2
    .param p1, "amount"    # I

    .prologue
    .line 2391
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher3/home/ZeroPageController;->isActiveZeroPage(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v0, :cond_1

    if-lez p1, :cond_2

    .line 2395
    :cond_0
    :goto_0
    return-void

    .line 2391
    :cond_1
    if-ltz p1, :cond_0

    .line 2393
    :cond_2
    invoke-super {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->overScroll(I)V

    goto :goto_0
.end method

.method public pageEndMoving()V
    .locals 0

    .prologue
    .line 2482
    invoke-super {p0}, Lcom/android/launcher3/common/base/view/PagedView;->pageEndMoving()V

    .line 2483
    return-void
.end method

.method removeAllWorkspaceScreens()V
    .locals 2

    .prologue
    .line 350
    invoke-direct {p0}, Lcom/android/launcher3/home/Workspace;->disableLayoutTransitions()V

    .line 354
    const-wide/16 v0, -0x12d

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/home/Workspace;->hasCustomContentPage(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/ZeroPageController;->removeCustomZeroPage(Z)V

    .line 358
    :cond_0
    const-wide/16 v0, -0x191

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/home/Workspace;->hasCustomContentPage(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 359
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->removeCustomPlusPage()V

    .line 363
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->removeAllViews()V

    .line 364
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 365
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LongArrayMap;->clear()V

    .line 368
    invoke-direct {p0}, Lcom/android/launcher3/home/Workspace;->enableLayoutTransitions()V

    .line 369
    return-void
.end method

.method removeCustomPlusPage()V
    .locals 6

    .prologue
    const-wide/16 v4, -0x191

    .line 1640
    invoke-virtual {p0, v4, v5}, Lcom/android/launcher3/home/Workspace;->getScreenWithId(J)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v1

    .line 1641
    .local v1, "customScreen":Lcom/android/launcher3/common/base/view/CellLayout;
    if-nez v1, :cond_0

    .line 1642
    const-string v2, "Launcher.Workspace"

    const-string v3, "Expected custom plus page to exist"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1658
    :goto_0
    return-void

    .line 1646
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v0

    .line 1648
    .local v0, "currentIndex":I
    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/Workspace;->getScreenIdForPageIndex(I)J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 1649
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Lcom/android/launcher3/home/Workspace;->setCurrentPage(I)V

    .line 1652
    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/home/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v2, v4, v5}, Lcom/android/launcher3/util/LongArrayMap;->remove(J)V

    .line 1653
    iget-object v2, p0, Lcom/android/launcher3/home/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1654
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getPageIndicator()Lcom/android/launcher3/common/view/PageIndicator;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1655
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getPageIndicator()Lcom/android/launcher3/common/view/PageIndicator;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/launcher3/common/view/PageIndicator;->setPlusPage(Z)V

    .line 1657
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/launcher3/home/Workspace;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method removeExtraEmptyScreen()V
    .locals 2

    .prologue
    .line 451
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/home/Workspace;->removeExtraEmptyScreenDelayed(Ljava/lang/Runnable;I)V

    .line 452
    return-void
.end method

.method removeExtraEmptyScreenDelayed(Ljava/lang/Runnable;I)V
    .locals 7
    .param p1, "onComplete"    # Ljava/lang/Runnable;
    .param p2, "delay"    # I

    .prologue
    const/16 v6, 0x190

    .line 455
    iget-object v2, p0, Lcom/android/launcher3/home/Workspace;->mHomeBindController:Lcom/android/launcher3/home/HomeBindController;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeBindController;->isWorkspaceLoading()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 456
    const-string v2, "Launcher.Workspace"

    const-string v3, "    - workspace loading, skip"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 497
    :cond_0
    :goto_0
    return-void

    .line 460
    :cond_1
    if-lez p2, :cond_2

    .line 461
    new-instance v2, Lcom/android/launcher3/home/Workspace$2;

    invoke-direct {v2, p0, p1}, Lcom/android/launcher3/home/Workspace$2;-><init>(Lcom/android/launcher3/home/Workspace;Ljava/lang/Runnable;)V

    int-to-long v4, p2

    invoke-virtual {p0, v2, v4, v5}, Lcom/android/launcher3/home/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 470
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->hasExtraEmptyScreen()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 471
    iget-object v2, p0, Lcom/android/launcher3/home/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    const-wide/16 v4, -0xc9

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 472
    .local v0, "emptyIndex":I
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getNextPage()I

    move-result v2

    if-ne v2, v0, :cond_3

    .line 473
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getNextPage()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2, v6}, Lcom/android/launcher3/home/Workspace;->snapToPage(II)V

    .line 474
    const/16 v2, 0x96

    invoke-direct {p0, v6, v2, p1}, Lcom/android/launcher3/home/Workspace;->fadeAndRemoveEmptyScreen(IILjava/lang/Runnable;)V

    goto :goto_0

    .line 477
    :cond_3
    new-instance v1, Lcom/android/launcher3/home/Workspace$3;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/home/Workspace$3;-><init>(Lcom/android/launcher3/home/Workspace;Ljava/lang/Runnable;)V

    .line 485
    .local v1, "r":Ljava/lang/Runnable;
    sget-boolean v2, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->isPageMoving()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 486
    invoke-virtual {p0, v1}, Lcom/android/launcher3/home/Workspace;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 488
    :cond_4
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 494
    .end local v0    # "emptyIndex":I
    .end local v1    # "r":Ljava/lang/Runnable;
    :cond_5
    if-eqz p1, :cond_0

    .line 495
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method removeScreenWithItem()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1798
    iget v1, p0, Lcom/android/launcher3/home/Workspace;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/home/WorkspaceCellLayout;

    .line 1799
    .local v0, "child":Lcom/android/launcher3/home/WorkspaceCellLayout;
    if-nez v0, :cond_1

    .line 1824
    :cond_0
    :goto_0
    return-void

    .line 1803
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/Workspace;->getIdForScreen(Lcom/android/launcher3/common/base/view/CellLayout;)J

    move-result-wide v2

    .line 1805
    .local v2, "screenId":J
    invoke-direct {p0, v2, v3}, Lcom/android/launcher3/home/Workspace;->removeItemsOnScreen(J)V

    .line 1806
    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/util/LongArrayMap;->remove(J)V

    .line 1807
    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1808
    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/Workspace;->removeView(Landroid/view/View;)V

    .line 1810
    invoke-direct {p0}, Lcom/android/launcher3/home/Workspace;->updateDefaultHome()V

    .line 1813
    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    iget-object v4, p0, Lcom/android/launcher3/home/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Lcom/android/launcher3/home/HomeController;->updateWorkspaceScreenOrder(Ljava/util/ArrayList;)V

    .line 1815
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->isOverviewState()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1816
    invoke-virtual {p0, v5}, Lcom/android/launcher3/home/Workspace;->updateAccessibilityFlags(Z)V

    .line 1819
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p0, v5, v1, v5}, Lcom/android/launcher3/home/Workspace;->setVisibilityOnCustomLayout(ZZZ)V

    .line 1821
    iget v1, p0, Lcom/android/launcher3/home/Workspace;->mCurrentPage:I

    invoke-direct {p0, v1}, Lcom/android/launcher3/home/Workspace;->isLastScreen(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1822
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->hideDefaultHomeIcon()V

    goto :goto_0
.end method

.method removeTempPage(Lcom/android/launcher3/common/base/view/CellLayout;)V
    .locals 5
    .param p1, "layout"    # Lcom/android/launcher3/common/base/view/CellLayout;

    .prologue
    .line 2133
    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/Workspace;->getIdForScreen(Lcom/android/launcher3/common/base/view/CellLayout;)J

    move-result-wide v2

    .line 2134
    .local v2, "screenId":J
    invoke-virtual {p0, v2, v3}, Lcom/android/launcher3/home/Workspace;->getPageIndexForScreenId(J)I

    move-result v0

    .line 2136
    .local v0, "index":I
    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/util/LongArrayMap;->remove(J)V

    .line 2137
    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2138
    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/Workspace;->removeView(Landroid/view/View;)V

    .line 2140
    iget v1, p0, Lcom/android/launcher3/home/Workspace;->mCurrentPage:I

    if-lt v1, v0, :cond_0

    .line 2141
    iget v1, p0, Lcom/android/launcher3/home/Workspace;->mCurrentPage:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/launcher3/home/Workspace;->mCurrentPage:I

    .line 2143
    :cond_0
    return-void
.end method

.method resetAdditionalPageCount()V
    .locals 1

    .prologue
    .line 2150
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/home/Workspace;->mAdditionalCount:I

    .line 2151
    return-void
.end method

.method resetAllPageAlphaValues()V
    .locals 3

    .prologue
    .line 996
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getPageCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 997
    invoke-virtual {p0, v1}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 998
    .local v0, "child":Lcom/android/launcher3/common/base/view/CellLayout;
    if-eqz v0, :cond_0

    .line 999
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/common/base/view/CellLayout;->setBackgroundAlpha(F)V

    .line 996
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1002
    .end local v0    # "child":Lcom/android/launcher3/common/base/view/CellLayout;
    :cond_1
    return-void
.end method

.method public resetTouchState()V
    .locals 1

    .prologue
    .line 2486
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/home/Workspace;->mTouchState:I

    .line 2487
    return-void
.end method

.method protected resetTransitionEffect(Landroid/view/View;)V
    .locals 2
    .param p1, "page"    # Landroid/view/View;

    .prologue
    .line 2439
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->isSwitchingState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2440
    invoke-direct {p0}, Lcom/android/launcher3/home/Workspace;->isCurrentTransitionEffectDefault()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2441
    invoke-super {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->resetTransitionEffect(Landroid/view/View;)V

    .line 2446
    :cond_0
    :goto_0
    return-void

    .line 2443
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getPageTransitionManager()Lcom/android/launcher3/pagetransition/PageTransitionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/pagetransition/PageTransitionManager;->reset(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected resetTransitionEffectForInvisiblePage(Landroid/view/View;)V
    .locals 0
    .param p1, "page"    # Landroid/view/View;

    .prologue
    .line 2450
    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/Workspace;->resetTransitionEffect(Landroid/view/View;)V

    .line 2451
    return-void
.end method

.method restoreInstanceStateForChild(I)V
    .locals 3
    .param p1, "child"    # I

    .prologue
    .line 1392
    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mSavedStates:Landroid/util/SparseArray;

    if-eqz v1, :cond_0

    .line 1393
    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mRestoredPages:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1394
    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 1395
    .local v0, "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    if-eqz v0, :cond_0

    .line 1396
    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mSavedStates:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/base/view/CellLayout;->restoreInstanceState(Landroid/util/SparseArray;)V

    .line 1399
    .end local v0    # "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    :cond_0
    return-void
.end method

.method restoreInstanceStateForRemainingPages()V
    .locals 4

    .prologue
    .line 1402
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getChildCount()I

    move-result v0

    .line 1403
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1404
    iget-object v2, p0, Lcom/android/launcher3/home/Workspace;->mRestoredPages:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1405
    invoke-virtual {p0, v1}, Lcom/android/launcher3/home/Workspace;->restoreInstanceStateForChild(I)V

    .line 1403
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1408
    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/home/Workspace;->mRestoredPages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1409
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/launcher3/home/Workspace;->mSavedStates:Landroid/util/SparseArray;

    .line 1410
    return-void
.end method

.method protected screenScrolled(III)V
    .locals 1
    .param p1, "screenCenter"    # I
    .param p2, "leftScreen"    # I
    .param p3, "rightScreen"    # I

    .prologue
    .line 1018
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/home/Workspace;->updatePageAlphaValues(III)V

    .line 1019
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/Workspace;->getVisiblePages([I)V

    .line 1020
    return-void
.end method

.method public scrollBy(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1556
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/ZeroPageController;->canScroll()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1557
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/common/base/view/PagedView;->scrollBy(II)V

    .line 1559
    :cond_1
    return-void
.end method

.method public scrollTo(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1563
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->isSelectState()Z

    move-result v0

    if-eqz v0, :cond_0

    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getMaxScrollX()I

    move-result v0

    if-gt p1, v0, :cond_1

    .line 1564
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/common/base/view/PagedView;->scrollTo(II)V

    .line 1566
    :cond_1
    return-void
.end method

.method setAlphaWithVisibility(Landroid/view/View;IZ)V
    .locals 8
    .param p1, "target"    # Landroid/view/View;
    .param p2, "visibility"    # I
    .param p3, "animate"    # Z

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 2295
    if-nez p1, :cond_0

    .line 2330
    :goto_0
    return-void

    .line 2299
    :cond_0
    if-nez p2, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2300
    .local v0, "alpha":F
    :goto_1
    if-eqz p3, :cond_3

    .line 2301
    const-string v4, "alpha"

    new-array v5, v6, [F

    aput v3, v5, v7

    invoke-static {p1, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 2302
    .local v1, "alphaAnimator":Landroid/animation/ObjectAnimator;
    const-wide/16 v4, 0x12c

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2303
    invoke-virtual {v1, v6}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    .line 2304
    new-array v3, v6, [F

    aput v0, v3, v7

    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 2308
    if-nez p2, :cond_2

    .line 2309
    new-instance v2, Lcom/android/launcher3/home/Workspace$13;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/launcher3/home/Workspace$13;-><init>(Lcom/android/launcher3/home/Workspace;Landroid/view/View;I)V

    .line 2324
    .local v2, "listener":Landroid/animation/AnimatorListenerAdapter;
    :goto_2
    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2325
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .end local v0    # "alpha":F
    .end local v1    # "alphaAnimator":Landroid/animation/ObjectAnimator;
    .end local v2    # "listener":Landroid/animation/AnimatorListenerAdapter;
    :cond_1
    move v0, v3

    .line 2299
    goto :goto_1

    .line 2316
    .restart local v0    # "alpha":F
    .restart local v1    # "alphaAnimator":Landroid/animation/ObjectAnimator;
    :cond_2
    new-instance v2, Lcom/android/launcher3/home/Workspace$14;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/launcher3/home/Workspace$14;-><init>(Lcom/android/launcher3/home/Workspace;Landroid/view/View;I)V

    .restart local v2    # "listener":Landroid/animation/AnimatorListenerAdapter;
    goto :goto_2

    .line 2327
    .end local v1    # "alphaAnimator":Landroid/animation/ObjectAnimator;
    .end local v2    # "listener":Landroid/animation/AnimatorListenerAdapter;
    :cond_3
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 2328
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method

.method setDefaultPage(I)V
    .locals 1
    .param p1, "defaultPage"    # I

    .prologue
    .line 1502
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/home/Workspace;->setDefaultPage(IZ)V

    .line 1503
    return-void
.end method

.method setDefaultPage(IZ)V
    .locals 6
    .param p1, "defaultPage"    # I
    .param p2, "setPref"    # Z

    .prologue
    .line 1506
    if-eqz p2, :cond_1

    iget v1, p0, Lcom/android/launcher3/home/Workspace;->mDefaultPage:I

    if-eq v1, p1, :cond_1

    .line 1507
    invoke-static {}, Lcom/android/launcher3/home/ZeroPageController;->isEnableZeroPage()Z

    move-result v1

    if-eqz v1, :cond_2

    add-int/lit8 v0, p1, -0x1

    .line 1509
    .local v0, "defaultPageOnNormalState":I
    :goto_0
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080189

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1510
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0800f6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    int-to-long v4, v0

    .line 1509
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    .line 1512
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportZeroPageHome()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1513
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/home/Workspace;->updateHomeDefaultZeroPageKey(IZ)V

    .line 1516
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v1, v0}, Lcom/android/launcher3/Utilities;->setHomeDefaultPageKey(Landroid/content/Context;I)V

    .line 1519
    .end local v0    # "defaultPageOnNormalState":I
    :cond_1
    iput p1, p0, Lcom/android/launcher3/home/Workspace;->mDefaultPage:I

    .line 1520
    return-void

    :cond_2
    move v0, p1

    .line 1507
    goto :goto_0
.end method

.method setDeferRemoveExtraEmptyScreen(Z)V
    .locals 0
    .param p1, "defer"    # Z

    .prologue
    .line 2124
    iput-boolean p1, p0, Lcom/android/launcher3/home/Workspace;->mDeferRemoveExtraEmptyScreen:Z

    .line 2125
    return-void
.end method

.method setDelayedResizeRunnable(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "addResizeFrame"    # Ljava/lang/Runnable;

    .prologue
    .line 1498
    iput-object p1, p0, Lcom/android/launcher3/home/Workspace;->mDelayedResizeRunnable:Ljava/lang/Runnable;

    .line 1499
    return-void
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "insets"    # Landroid/graphics/Rect;

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 253
    return-void
.end method

.method public setRestorePage(I)V
    .locals 0
    .param p1, "restorePage"    # I

    .prologue
    .line 1715
    iput p1, p0, Lcom/android/launcher3/home/Workspace;->mRestorePage:I

    .line 1716
    return-void
.end method

.method public setTargetView(Landroid/view/View;)V
    .locals 3
    .param p1, "targetView"    # Landroid/view/View;

    .prologue
    .line 2470
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getPageCount()I

    move-result v2

    .line 2471
    .local v2, "pageCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 2472
    invoke-virtual {p0, v1}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 2473
    .local v0, "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/base/view/CellLayout;->setTargetView(Landroid/view/View;)V

    .line 2471
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2475
    .end local v0    # "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    :cond_0
    return-void
.end method

.method setVisibilityOnCustomLayout(ZZ)V
    .locals 1
    .param p1, "visible"    # Z
    .param p2, "checkVisibility"    # Z

    .prologue
    .line 1993
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher3/home/Workspace;->setVisibilityOnCustomLayout(ZZZ)V

    .line 1994
    return-void
.end method

.method setVisibilityOnCustomLayout(ZZZ)V
    .locals 1
    .param p1, "visible"    # Z
    .param p2, "checkVisibility"    # Z
    .param p3, "animate"    # Z

    .prologue
    .line 1997
    iget v0, p0, Lcom/android/launcher3/home/Workspace;->mCurrentPage:I

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/launcher3/home/Workspace;->setVisibilityOnCustomLayout(ZZZI)V

    .line 1998
    return-void
.end method

.method setVisibilityOnCustomLayout(ZZZI)V
    .locals 11
    .param p1, "visible"    # Z
    .param p2, "checkVisibility"    # Z
    .param p3, "animate"    # Z
    .param p4, "pageIndex"    # I

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 2002
    invoke-virtual {p0, p4}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/home/WorkspaceCellLayout;

    .line 2003
    .local v2, "child":Lcom/android/launcher3/home/WorkspaceCellLayout;
    if-nez v2, :cond_1

    .line 2053
    :cond_0
    :goto_0
    return-void

    .line 2007
    :cond_1
    if-eqz p1, :cond_5

    .line 2008
    iput-object v2, p0, Lcom/android/launcher3/home/Workspace;->mCustomPage:Lcom/android/launcher3/home/WorkspaceCellLayout;

    .line 2015
    :cond_2
    :goto_1
    invoke-virtual {v2}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getAlignLayoutList()Ljava/util/ArrayList;

    move-result-object v1

    .line 2016
    .local v1, "alignLayoutList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/LinearLayout;>;"
    const/4 v4, 0x0

    .line 2017
    .local v4, "updateAlignButtonState":Z
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_3
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 2018
    .local v0, "alignLayout":Landroid/widget/LinearLayout;
    if-eqz v0, :cond_3

    .line 2019
    if-eqz p2, :cond_4

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v10

    if-eqz p1, :cond_6

    move v6, v8

    :goto_3
    if-ne v10, v6, :cond_3

    .line 2020
    :cond_4
    if-eqz p1, :cond_7

    move v6, v7

    :goto_4
    invoke-virtual {p0, v0, v6, p3}, Lcom/android/launcher3/home/Workspace;->setAlphaWithVisibility(Landroid/view/View;IZ)V

    .line 2021
    move v4, p1

    goto :goto_2

    .line 2009
    .end local v0    # "alignLayout":Landroid/widget/LinearLayout;
    .end local v1    # "alignLayoutList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/LinearLayout;>;"
    .end local v4    # "updateAlignButtonState":Z
    :cond_5
    iget-object v6, p0, Lcom/android/launcher3/home/Workspace;->mCustomPage:Lcom/android/launcher3/home/WorkspaceCellLayout;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/launcher3/home/Workspace;->mCustomPage:Lcom/android/launcher3/home/WorkspaceCellLayout;

    invoke-virtual {v2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 2010
    const-string v6, "Launcher.Workspace"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setVisibilityOnCustomLayout : pageIndex = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", indexOfChild(mCustomPage) = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/launcher3/home/Workspace;->mCustomPage:Lcom/android/launcher3/home/WorkspaceCellLayout;

    .line 2011
    invoke-virtual {p0, v10}, Lcom/android/launcher3/home/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2010
    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2012
    iget-object v2, p0, Lcom/android/launcher3/home/Workspace;->mCustomPage:Lcom/android/launcher3/home/WorkspaceCellLayout;

    goto :goto_1

    .restart local v0    # "alignLayout":Landroid/widget/LinearLayout;
    .restart local v1    # "alignLayoutList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/LinearLayout;>;"
    .restart local v4    # "updateAlignButtonState":Z
    :cond_6
    move v6, v7

    .line 2019
    goto :goto_3

    :cond_7
    move v6, v8

    .line 2020
    goto :goto_4

    .line 2026
    .end local v0    # "alignLayout":Landroid/widget/LinearLayout;
    :cond_8
    if-eqz v4, :cond_9

    .line 2027
    invoke-direct {p0, p4}, Lcom/android/launcher3/home/Workspace;->checkAlignButtonEnabled(I)V

    .line 2030
    :cond_9
    invoke-virtual {v2}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getZeroPageSwitchLayout()Landroid/widget/LinearLayout;

    move-result-object v5

    .line 2031
    .local v5, "zeroPageSwitchLayout":Landroid/widget/LinearLayout;
    if-eqz v5, :cond_b

    .line 2032
    if-eqz p2, :cond_a

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v9

    if-eqz p1, :cond_f

    move v6, v8

    :goto_5
    if-ne v9, v6, :cond_b

    .line 2033
    :cond_a
    if-eqz p1, :cond_10

    move v6, v7

    :goto_6
    invoke-virtual {p0, v5, v6, p3}, Lcom/android/launcher3/home/Workspace;->setAlphaWithVisibility(Landroid/view/View;IZ)V

    .line 2037
    :cond_b
    if-eqz p1, :cond_c

    invoke-direct {p0}, Lcom/android/launcher3/home/Workspace;->canDeleteScreen()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2038
    :cond_c
    invoke-virtual {v2}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getPageDeleteBtn()Landroid/view/View;

    move-result-object v3

    .line 2039
    .local v3, "pageDeleteBtn":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 2040
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-virtual {p0, p4}, Lcom/android/launcher3/home/Workspace;->isEmptyPage(I)Z

    move-result v6

    if-nez v6, :cond_d

    .line 2041
    if-nez p1, :cond_0

    .line 2044
    const/4 p2, 0x1

    .line 2048
    :cond_d
    if-eqz p2, :cond_e

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-eqz p1, :cond_11

    move v6, v8

    :goto_7
    if-ne v9, v6, :cond_0

    .line 2049
    :cond_e
    if-eqz p1, :cond_12

    :goto_8
    invoke-virtual {p0, v3, v7, p3}, Lcom/android/launcher3/home/Workspace;->setAlphaWithVisibility(Landroid/view/View;IZ)V

    goto/16 :goto_0

    .end local v3    # "pageDeleteBtn":Landroid/view/View;
    :cond_f
    move v6, v7

    .line 2032
    goto :goto_5

    :cond_10
    move v6, v8

    .line 2033
    goto :goto_6

    .restart local v3    # "pageDeleteBtn":Landroid/view/View;
    :cond_11
    move v6, v7

    .line 2048
    goto :goto_7

    :cond_12
    move v7, v8

    .line 2049
    goto :goto_8
.end method

.method protected setWallpaperDimension()V
    .locals 0

    .prologue
    .line 871
    return-void
.end method

.method setup(Lcom/android/launcher3/common/drag/DragManager;Lcom/android/launcher3/common/view/DragLayer;)V
    .locals 3
    .param p1, "dragMgr"    # Lcom/android/launcher3/common/drag/DragManager;
    .param p2, "dragLayer"    # Lcom/android/launcher3/common/view/DragLayer;

    .prologue
    .line 1368
    iput-object p1, p0, Lcom/android/launcher3/home/Workspace;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    .line 1372
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/Workspace;->updateChildrenLayersEnabled(Z)V

    .line 1374
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mWsDragController:Lcom/android/launcher3/home/WorkspaceDragController;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/drag/DragManager;->addDragListener(Lcom/android/launcher3/common/drag/DragManager$DragListener;)V

    .line 1375
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mWsDragController:Lcom/android/launcher3/home/WorkspaceDragController;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/drag/DragManager;->addDropTarget(Lcom/android/launcher3/common/drag/DropTarget;)V

    .line 1376
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mWsDragController:Lcom/android/launcher3/home/WorkspaceDragController;

    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    iget-object v2, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0, v1, p2, v2}, Lcom/android/launcher3/home/WorkspaceDragController;->setup(Lcom/android/launcher3/common/drag/DragManager;Lcom/android/launcher3/common/view/DragLayer;Lcom/android/launcher3/home/HomeController;)V

    .line 1377
    return-void
.end method

.method setupShrinkFactor()V
    .locals 2

    .prologue
    .line 237
    .line 238
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/home/Workspace;->mOverviewShrinkFactor:F

    .line 239
    return-void
.end method

.method showDefaultHomeIcon(Z)V
    .locals 4
    .param p1, "isCheck"    # Z

    .prologue
    .line 1900
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/launcher3/home/Workspace;->mCurrentPage:I

    const-wide/16 v2, -0x191

    invoke-virtual {p0, v2, v3}, Lcom/android/launcher3/home/Workspace;->getPageIndexForScreenId(J)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1906
    :goto_0
    return-void

    .line 1904
    :cond_0
    iget v0, p0, Lcom/android/launcher3/home/Workspace;->mCurrentPage:I

    invoke-direct {p0, v0}, Lcom/android/launcher3/home/Workspace;->updateDefaultHomeIcon(I)V

    .line 1905
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mDefaultHomeIcon:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/launcher3/home/Workspace;->setAlphaWithVisibility(Landroid/view/View;IZ)V

    goto :goto_0
.end method

.method protected snapToPage(IIIZLandroid/animation/TimeInterpolator;)V
    .locals 4
    .param p1, "whichPage"    # I
    .param p2, "delta"    # I
    .param p3, "duration"    # I
    .param p4, "immediate"    # Z
    .param p5, "interpolator"    # Landroid/animation/TimeInterpolator;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 918
    invoke-super/range {p0 .. p5}, Lcom/android/launcher3/common/base/view/PagedView;->snapToPage(IIIZLandroid/animation/TimeInterpolator;)V

    .line 920
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->isOverviewState()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/launcher3/home/Workspace;->mCurrentPage:I

    if-eq v0, p1, :cond_2

    .line 921
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportZeroPageHome()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, -0x12d

    .line 922
    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/home/Workspace;->getPageIndexForScreenId(J)I

    move-result v0

    if-eq p1, v0, :cond_1

    :cond_0
    const-wide/16 v0, -0x191

    .line 923
    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/home/Workspace;->getPageIndexForScreenId(J)I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 924
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->hideDefaultHomeIcon()V

    .line 929
    :goto_0
    iget v0, p0, Lcom/android/launcher3/home/Workspace;->mTouchState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 930
    invoke-direct {p0, p1}, Lcom/android/launcher3/home/Workspace;->updateDefaultHomeIcon(I)V

    .line 931
    iget v0, p0, Lcom/android/launcher3/home/Workspace;->mCurrentPage:I

    invoke-virtual {p0, v2, v2, v3, v0}, Lcom/android/launcher3/home/Workspace;->setVisibilityOnCustomLayout(ZZZI)V

    .line 932
    invoke-virtual {p0, v3, v2, v3, p1}, Lcom/android/launcher3/home/Workspace;->setVisibilityOnCustomLayout(ZZZI)V

    .line 935
    :cond_2
    return-void

    .line 926
    :cond_3
    invoke-virtual {p0, v2}, Lcom/android/launcher3/home/Workspace;->showDefaultHomeIcon(Z)V

    goto :goto_0
.end method

.method public snapToPage(IILandroid/animation/TimeInterpolator;)V
    .locals 1
    .param p1, "whichPage"    # I
    .param p2, "duration"    # I
    .param p3, "interpolator"    # Landroid/animation/TimeInterpolator;

    .prologue
    .line 904
    const/4 v0, 0x0

    invoke-super {p0, p1, p2, v0, p3}, Lcom/android/launcher3/common/base/view/PagedView;->snapToPage(IIZLandroid/animation/TimeInterpolator;)V

    .line 905
    return-void
.end method

.method protected snapToPage(IILjava/lang/Runnable;)V
    .locals 1
    .param p1, "whichPage"    # I
    .param p2, "duration"    # I
    .param p3, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 878
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mDelayedSnapToPageRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 879
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mDelayedSnapToPageRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 881
    :cond_0
    iput-object p3, p0, Lcom/android/launcher3/home/Workspace;->mDelayedSnapToPageRunnable:Ljava/lang/Runnable;

    .line 882
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/common/base/view/PagedView;->snapToPage(II)V

    .line 883
    return-void
.end method

.method protected snapToPage(IIZLandroid/animation/TimeInterpolator;)V
    .locals 2
    .param p1, "whichPage"    # I
    .param p2, "duration"    # I
    .param p3, "immediate"    # Z
    .param p4, "interpolator"    # Landroid/animation/TimeInterpolator;

    .prologue
    .line 888
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/launcher3/common/base/view/PagedView;->snapToPage(IIZLandroid/animation/TimeInterpolator;)V

    .line 890
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->isModalState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 891
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v1, 0x0

    .line 892
    invoke-static {v0, v1}, Lcom/android/launcher3/home/ZeroPageController;->isActiveZeroPage(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 893
    new-instance v0, Lcom/android/launcher3/home/Workspace$6;

    invoke-direct {v0, p0}, Lcom/android/launcher3/home/Workspace$6;-><init>(Lcom/android/launcher3/home/Workspace;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/Workspace;->post(Ljava/lang/Runnable;)Z

    .line 901
    :cond_0
    return-void
.end method

.method protected snapToPage(ILjava/lang/Runnable;)V
    .locals 1
    .param p1, "whichPage"    # I
    .param p2, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 874
    const/16 v0, 0x3b6

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/launcher3/home/Workspace;->snapToPage(IILjava/lang/Runnable;)V

    .line 875
    return-void
.end method

.method public snapToPageSALoggging(Z)V
    .locals 8
    .param p1, "isPageIndicator"    # Z

    .prologue
    .line 2641
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 2642
    .local v0, "method":I
    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 2643
    .local v1, "res":Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getMultiSelectManager()Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->isMultiSelectMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2644
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v2

    const v3, 0x7f08018f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f080155

    .line 2645
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    int-to-long v6, v0

    .line 2644
    invoke-virtual {v2, v3, v4, v6, v7}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    .line 2653
    :goto_1
    return-void

    .line 2641
    .end local v0    # "method":I
    .end local v1    # "res":Landroid/content/res/Resources;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2646
    .restart local v0    # "method":I
    .restart local v1    # "res":Landroid/content/res/Resources;
    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeController;->getState()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 2647
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v2

    const v3, 0x7f080189

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0800f9

    .line 2648
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    int-to-long v6, v0

    .line 2647
    invoke-virtual {v2, v3, v4, v6, v7}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_1

    .line 2650
    :cond_2
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v2

    const v3, 0x7f08018d

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f080132

    .line 2651
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    int-to-long v6, v0

    .line 2650
    invoke-virtual {v2, v3, v4, v6, v7}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_1
.end method

.method snapToScreenId(J)V
    .locals 1
    .param p1, "screenId"    # J

    .prologue
    .line 908
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/home/Workspace;->snapToScreenId(JLjava/lang/Runnable;)V

    .line 909
    return-void
.end method

.method public touchPageDeleteButton()V
    .locals 2

    .prologue
    .line 1790
    iget v1, p0, Lcom/android/launcher3/home/Workspace;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/home/WorkspaceCellLayout;

    .line 1791
    .local v0, "child":Lcom/android/launcher3/home/WorkspaceCellLayout;
    if-nez v0, :cond_0

    .line 1795
    :goto_0
    return-void

    .line 1794
    :cond_0
    invoke-virtual {v0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->touchPageDeleteBtn()V

    goto :goto_0
.end method

.method updateAccessibilityFlags(Z)V
    .locals 3
    .param p1, "show"    # Z

    .prologue
    .line 1258
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getPageCount()I

    move-result v1

    .line 1259
    .local v1, "total":I
    invoke-direct {p0}, Lcom/android/launcher3/home/Workspace;->getPageIndexToStart()I

    move-result v0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1260
    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-direct {p0, v2, v0, p1}, Lcom/android/launcher3/home/Workspace;->updateAccessibilityFlags(Lcom/android/launcher3/common/base/view/CellLayout;IZ)V

    .line 1259
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1263
    :cond_0
    if-eqz p1, :cond_1

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p0, v2}, Lcom/android/launcher3/home/Workspace;->setImportantForAccessibility(I)V

    .line 1266
    return-void

    .line 1263
    :cond_1
    const/4 v2, 0x4

    goto :goto_1
.end method

.method updateCheckBox(Z)V
    .locals 9
    .param p1, "visible"    # Z

    .prologue
    .line 2103
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getPageCount()I

    move-result v5

    .line 2104
    .local v5, "pageCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v5, :cond_5

    .line 2105
    invoke-virtual {p0, v3}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 2106
    .local v1, "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v2

    .line 2107
    .local v2, "clc":Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    invoke-virtual {v2}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v0

    .line 2108
    .local v0, "childCount":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    if-ge v4, v0, :cond_4

    .line 2109
    invoke-virtual {v2, v4}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2110
    .local v6, "v":Landroid/view/View;
    instance-of v7, v6, Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v7, :cond_3

    .line 2111
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFolderSelect()Z

    move-result v7

    if-nez v7, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move-object v7, v6

    .line 2112
    check-cast v7, Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v7, p1}, Lcom/android/launcher3/folder/view/FolderIconView;->updateCheckBox(Z)V

    move-object v7, v6

    .line 2113
    check-cast v7, Lcom/android/launcher3/folder/view/FolderIconView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/launcher3/folder/view/FolderIconView;->refreshCountBadge(I)V

    .line 2115
    :cond_1
    check-cast v6, Lcom/android/launcher3/folder/view/FolderIconView;

    .end local v6    # "v":Landroid/view/View;
    invoke-virtual {v6}, Lcom/android/launcher3/folder/view/FolderIconView;->refreshBadge()V

    .line 2108
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2116
    .restart local v6    # "v":Landroid/view/View;
    :cond_3
    instance-of v7, v6, Lcom/android/launcher3/common/view/IconView;

    if-eqz v7, :cond_2

    .line 2117
    check-cast v6, Lcom/android/launcher3/common/view/IconView;

    .end local v6    # "v":Landroid/view/View;
    invoke-virtual {v6, p1}, Lcom/android/launcher3/common/view/IconView;->updateCheckBox(Z)V

    goto :goto_2

    .line 2104
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2121
    .end local v0    # "childCount":I
    .end local v1    # "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v2    # "clc":Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    .end local v4    # "j":I
    :cond_5
    return-void
.end method

.method updateChildrenLayersEnabled(Z)V
    .locals 1
    .param p1, "force"    # Z

    .prologue
    .line 1128
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/home/Workspace;->updateChildrenLayersEnabled(ZZ)V

    .line 1129
    return-void
.end method

.method updateDefaultHome(II)V
    .locals 5
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    const/4 v4, 0x0

    .line 1873
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/android/launcher3/home/ZeroPageController;->isActiveZeroPage(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1874
    invoke-virtual {p0, p2}, Lcom/android/launcher3/home/Workspace;->getScreenIdForPageIndex(I)J

    move-result-wide v0

    const-wide/16 v2, -0x12d

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1885
    :goto_0
    return-void

    .line 1877
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/launcher3/home/Workspace;->setDefaultPage(I)V

    .line 1878
    iget v0, p0, Lcom/android/launcher3/home/Workspace;->mCurrentPage:I

    invoke-direct {p0, v0}, Lcom/android/launcher3/home/Workspace;->updateDefaultHomeIcon(I)V

    .line 1879
    invoke-virtual {p0, p2}, Lcom/android/launcher3/home/Workspace;->updateDefaultHomePageIndicator(I)V

    .line 1880
    if-eq p1, p2, :cond_1

    .line 1881
    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/home/WorkspaceCellLayout;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/Workspace;->updateDefaultHomePageBg(Lcom/android/launcher3/home/WorkspaceCellLayout;)V

    .line 1883
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/home/WorkspaceCellLayout;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/Workspace;->updateDefaultHomePageBg(Lcom/android/launcher3/home/WorkspaceCellLayout;)V

    .line 1884
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0, v4}, Lcom/android/launcher3/home/HomeController;->notifyCapture(Z)V

    goto :goto_0
.end method

.method updateDefaultHomePageBg(Lcom/android/launcher3/home/WorkspaceCellLayout;)V
    .locals 3
    .param p1, "child"    # Lcom/android/launcher3/home/WorkspaceCellLayout;

    .prologue
    .line 1867
    if-eqz p1, :cond_0

    .line 1868
    const/4 v1, 0x4

    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iget v2, p0, Lcom/android/launcher3/home/Workspace;->mDefaultPage:I

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v1, v0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setBgImage(IZ)V

    .line 1870
    :cond_0
    return-void

    .line 1868
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method updateDefaultHomePageIndicator(I)V
    .locals 2
    .param p1, "to"    # I

    .prologue
    .line 1861
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getPageIndicator()Lcom/android/launcher3/common/view/PageIndicator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1862
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getPageIndicator()Lcom/android/launcher3/common/view/PageIndicator;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/Workspace;->getPageIndicatorMarker(I)Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/common/view/PageIndicator;->updateHomeMarker(ILcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;)V

    .line 1864
    :cond_0
    return-void
.end method

.method updateDefaultHomeScreenId(J)V
    .locals 1
    .param p1, "screenId"    # J

    .prologue
    .line 2573
    iput-wide p1, p0, Lcom/android/launcher3/home/Workspace;->mDefaultHomeScreenId:J

    .line 2574
    return-void
.end method

.method protected updatePageTransform(Landroid/view/View;II)V
    .locals 6
    .param p1, "page"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "screenCenter"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 2408
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->getState()I

    move-result v1

    if-eq v1, v5, :cond_1

    .line 2430
    :cond_0
    :goto_0
    return-void

    .line 2412
    :cond_1
    invoke-virtual {p0, p3, p1, p2}, Lcom/android/launcher3/home/Workspace;->getScrollProgress(ILandroid/view/View;I)F

    move-result v0

    .line 2413
    .local v0, "scrollProgress":F
    invoke-direct {p0}, Lcom/android/launcher3/home/Workspace;->isCurrentTransitionEffectDefault()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2414
    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v1, v4}, Lcom/android/launcher3/home/ZeroPageController;->isActiveZeroPage(Landroid/content/Context;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    if-nez p2, :cond_4

    sget-boolean v1, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v1, :cond_3

    cmpl-float v1, v0, v3

    if-lez v1, :cond_4

    .line 2418
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/Workspace;->resetTransitionEffect(Landroid/view/View;)V

    goto :goto_0

    .line 2414
    :cond_3
    cmpg-float v1, v0, v3

    if-ltz v1, :cond_2

    .line 2416
    :cond_4
    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/common/base/view/PagedView;->updatePageTransform(Landroid/view/View;II)V

    goto :goto_0

    .line 2423
    :cond_5
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_6

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v3

    if-nez v1, :cond_7

    .line 2424
    :cond_6
    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getPageTransitionManager()Lcom/android/launcher3/pagetransition/PageTransitionManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/launcher3/pagetransition/PageTransitionManager;->reset(Landroid/view/View;)V

    .line 2427
    :cond_7
    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mTempVisiblePagesRange:[I

    aget v1, v1, v4

    if-gt v1, p2, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mTempVisiblePagesRange:[I

    aget v1, v1, v5

    if-gt p2, v1, :cond_0

    .line 2428
    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getPageTransitionManager()Lcom/android/launcher3/pagetransition/PageTransitionManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/android/launcher3/pagetransition/PageTransitionManager;->transformPage(Landroid/view/View;F)V

    goto :goto_0
.end method
