.class public Lcom/android/launcher3/home/ZeroPageController;
.super Ljava/lang/Object;
.source "ZeroPageController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/home/ZeroPageController$VirtualScreenHandler;,
        Lcom/android/launcher3/home/ZeroPageController$ZeroPagePreviewTask;
    }
.end annotation


# static fields
.field private static final ACTION_INTENT_ACTIVE_ZEROPAGE:Ljava/lang/String; = "com.sec.android.intent.action.ACTIVE_ZERO_PAGE"

.field public static final ACTION_INTENT_SET_ZEROPAGE:Ljava/lang/String; = "com.sec.android.intent.action.SET_ZERO_PAGE"

.field private static final FROM_HOMEPAGE:I = 0x2

.field private static final FROM_ZEROPAGE:I = 0x1

.field private static final METADATA_ZEROPAGE:Ljava/lang/String; = "com.samsung.launcher.zeropage.metadata"

.field private static final MINIMUM_SNAP_VELOCITY:I = 0x5dc

.field private static final MOVE_CONTINUE:I = 0x16

.field private static final MOVE_NONE:I = 0x0

.field private static final PAGE_SNAP_MOVING_RATIO:F = 0.33f

.field private static final PAGE_SNAP_VALUE_ANIMATION_DURATION:I = 0x12c

.field private static TAG:Ljava/lang/String; = null

.field private static final THREAD_EXIT_DELAY:I = 0xbb8

.field private static final TO_HOMEPAGE:I = 0x8

.field private static final TO_ZEROEPAGE:I = 0x4

.field public static final ZERO_PAGE_SCREEN_INDEX:I = -0x1

.field private static sActiveZeroPage:Z

.field private static sEnableZeroPage:Z

.field private static sSupportVirtualScreen:Z

.field private static sVirtualScreenAvailableChecked:Z

.field private static sVirtualScreenManager:Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;

.field public static sZeroPageCompName:Landroid/content/ComponentName;


# instance fields
.field private mAppName:Ljava/lang/String;

.field private mAppPrevResId:I

.field private mAppPreview:Lcom/android/launcher3/common/drawable/FastBitmapDrawable;

.field private mBezelSize:I

.field private mBezelSwipe:Z

.field private mDownX:I

.field private mInstalled:Z

.field private mInterval:J

.field private mIsFromZeroPageSetting:Z

.field private mLastDownX:I

.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private mMaximumVelocity:I

.field private mMovedToVirtualScreen:Z

.field private mMovingState:I

.field private mPreValues:I

.field private mThreadExitAlarm:Lcom/android/launcher3/util/alarm/Alarm;

.field private mTouchDowned:Z

.field private mTouchSlop:I

.field private mValueAnimator:Landroid/animation/ValueAnimator;

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mVirtualScreenHandler:Lcom/android/launcher3/home/ZeroPageController$VirtualScreenHandler;

.field private mVirtualScreenThread:Landroid/os/HandlerThread;

.field private mWorkspace:Lcom/android/launcher3/home/Workspace;

.field private mZeroPageBgView:Landroid/widget/LinearLayout;

.field private mZeroPageBitmapHeight:I

.field private mZeroPageBitmapWidth:I

.field private mZeroPagePreviewTask:Lcom/android/launcher3/home/ZeroPageController$ZeroPagePreviewTask;

.field private mZeropageDownloadDialog:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 86
    const-class v0, Lcom/android/launcher3/home/ZeroPageController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/home/ZeroPageController;->TAG:Ljava/lang/String;

    .line 96
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.samsung.android.app.spage"

    const-string v2, "com.samsung.android.app.spage.main.MainActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/home/ZeroPageController;->sZeroPageCompName:Landroid/content/ComponentName;

    .line 105
    sput-boolean v4, Lcom/android/launcher3/home/ZeroPageController;->sEnableZeroPage:Z

    .line 106
    sput-boolean v4, Lcom/android/launcher3/home/ZeroPageController;->sActiveZeroPage:Z

    .line 153
    sput-boolean v3, Lcom/android/launcher3/home/ZeroPageController;->sSupportVirtualScreen:Z

    .line 154
    sput-boolean v3, Lcom/android/launcher3/home/ZeroPageController;->sVirtualScreenAvailableChecked:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/launcher3/home/Workspace;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "workspace"    # Lcom/android/launcher3/home/Workspace;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object v3, p0, Lcom/android/launcher3/home/ZeroPageController;->mZeropageDownloadDialog:Landroid/app/AlertDialog;

    .line 125
    iput v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mMovingState:I

    .line 126
    iput v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mDownX:I

    .line 127
    iput v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mLastDownX:I

    .line 128
    iput v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mPreValues:I

    .line 130
    iput-boolean v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mTouchDowned:Z

    .line 131
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 136
    iput-boolean v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mBezelSwipe:Z

    .line 137
    iput v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mBezelSize:I

    .line 138
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mInterval:J

    .line 140
    iput-object v3, p0, Lcom/android/launcher3/home/ZeroPageController;->mZeroPageBgView:Landroid/widget/LinearLayout;

    .line 151
    iput-boolean v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mIsFromZeroPageSetting:Z

    .line 157
    check-cast p1, Lcom/android/launcher3/Launcher;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 158
    iput-object p2, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    .line 160
    invoke-direct {p0}, Lcom/android/launcher3/home/ZeroPageController;->init()V

    .line 161
    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/home/ZeroPageController;->setZeroPageActiveState(Landroid/content/Context;)V

    .line 162
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/android/launcher3/home/ZeroPageController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher3/home/ZeroPageController;)Lcom/android/launcher3/Launcher;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/ZeroPageController;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/launcher3/home/ZeroPageController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/home/ZeroPageController;
    .param p1, "x1"    # I

    .prologue
    .line 85
    iput p1, p0, Lcom/android/launcher3/home/ZeroPageController;->mPreValues:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/launcher3/home/ZeroPageController;)Lcom/android/launcher3/home/Workspace;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/ZeroPageController;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/launcher3/home/ZeroPageController;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/launcher3/home/ZeroPageController;

    .prologue
    .line 85
    iget-wide v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mInterval:J

    return-wide v0
.end method

.method static synthetic access$1202(Lcom/android/launcher3/home/ZeroPageController;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/ZeroPageController;
    .param p1, "x1"    # J

    .prologue
    .line 85
    iput-wide p1, p0, Lcom/android/launcher3/home/ZeroPageController;->mInterval:J

    return-wide p1
.end method

.method static synthetic access$1300(Lcom/android/launcher3/home/ZeroPageController;IIZJ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/home/ZeroPageController;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z
    .param p4, "x4"    # J

    .prologue
    .line 85
    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/home/ZeroPageController;->setOffsetMsg(IIZJ)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/launcher3/home/ZeroPageController;IIZ)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/ZeroPageController;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 85
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/home/ZeroPageController;->setOffset(IIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/launcher3/home/ZeroPageController;)Lcom/android/launcher3/util/alarm/Alarm;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/ZeroPageController;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mThreadExitAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/launcher3/home/ZeroPageController;Landroid/widget/Switch;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/home/ZeroPageController;
    .param p1, "x1"    # Landroid/widget/Switch;
    .param p2, "x2"    # Z

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/home/ZeroPageController;->showZeroPageDownloadDialog(Landroid/widget/Switch;Z)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/launcher3/home/ZeroPageController;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/home/ZeroPageController;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/home/ZeroPageController;->updateZeroPageBg(ZZ)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/launcher3/home/ZeroPageController;Landroid/content/Context;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/home/ZeroPageController;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z

    .prologue
    .line 85
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/home/ZeroPageController;->startActivityInVirtualScreen(Landroid/content/Context;ZZ)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/launcher3/home/ZeroPageController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/home/ZeroPageController;

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/launcher3/home/ZeroPageController;->bindVirtualScreen()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/launcher3/home/ZeroPageController;Landroid/content/pm/PackageManager;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/ZeroPageController;
    .param p1, "x1"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/launcher3/home/ZeroPageController;->getPreviewFromPackageManager(Landroid/content/pm/PackageManager;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/launcher3/home/ZeroPageController;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/ZeroPageController;

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/launcher3/home/ZeroPageController;->getZeroPagePackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2102(Lcom/android/launcher3/home/ZeroPageController;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/home/ZeroPageController;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/launcher3/home/ZeroPageController;->mZeropageDownloadDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/launcher3/home/ZeroPageController;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/ZeroPageController;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/launcher3/home/ZeroPageController;->scaleBitmapIfNecessary(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/launcher3/home/ZeroPageController;)Lcom/android/launcher3/common/drawable/FastBitmapDrawable;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/ZeroPageController;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mAppPreview:Lcom/android/launcher3/common/drawable/FastBitmapDrawable;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/launcher3/home/ZeroPageController;Lcom/android/launcher3/common/drawable/FastBitmapDrawable;)Lcom/android/launcher3/common/drawable/FastBitmapDrawable;
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/home/ZeroPageController;
    .param p1, "x1"    # Lcom/android/launcher3/common/drawable/FastBitmapDrawable;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/launcher3/home/ZeroPageController;->mAppPreview:Lcom/android/launcher3/common/drawable/FastBitmapDrawable;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/launcher3/home/ZeroPageController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/ZeroPageController;

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mInstalled:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/launcher3/home/ZeroPageController;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/ZeroPageController;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mZeroPageBgView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/launcher3/home/ZeroPageController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/home/ZeroPageController;
    .param p1, "x1"    # Z

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/android/launcher3/home/ZeroPageController;->mBezelSwipe:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/launcher3/home/ZeroPageController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/ZeroPageController;

    .prologue
    .line 85
    iget v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mMovingState:I

    return v0
.end method

.method static synthetic access$902(Lcom/android/launcher3/home/ZeroPageController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/home/ZeroPageController;
    .param p1, "x1"    # I

    .prologue
    .line 85
    iput p1, p0, Lcom/android/launcher3/home/ZeroPageController;->mMovingState:I

    return p1
.end method

.method private acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 891
    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 892
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 894
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 895
    return-void
.end method

.method private addZeroPageSwitch(Lcom/android/launcher3/home/WorkspaceCellLayout;)V
    .locals 5
    .param p1, "zeroPageScreen"    # Lcom/android/launcher3/home/WorkspaceCellLayout;

    .prologue
    const/4 v4, 0x0

    .line 1081
    new-instance v0, Lcom/android/launcher3/home/ZeroPageController$6;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/home/ZeroPageController$6;-><init>(Lcom/android/launcher3/home/ZeroPageController;Lcom/android/launcher3/home/WorkspaceCellLayout;)V

    .line 1118
    .local v0, "ccl":Landroid/widget/CompoundButton$OnCheckedChangeListener;
    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mAppName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v2, v4}, Lcom/android/launcher3/home/ZeroPageController;->getZeroPageActiveState(Landroid/content/Context;Z)Z

    move-result v2

    invoke-virtual {p1, v1, v2, v0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->addZeroPageSwitch(Ljava/lang/String;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1119
    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {p1}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getZeroPageSwitchLayout()Landroid/widget/LinearLayout;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/launcher3/home/Workspace;->setAlphaWithVisibility(Landroid/view/View;IZ)V

    .line 1120
    return-void
.end method

.method private animatePage(IIZ)V
    .locals 6
    .param p1, "offset"    # I
    .param p2, "duration"    # I
    .param p3, "pageChanged"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 756
    iget-object v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-nez v2, :cond_0

    .line 757
    new-instance v2, Landroid/animation/ValueAnimator;

    invoke-direct {v2}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 760
    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v2

    if-nez v2, :cond_1

    .line 761
    iget-object v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 762
    iget-object v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 764
    iget-object v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 765
    .local v1, "widthPixels":I
    const/4 v0, 0x0

    .line 766
    .local v0, "values":I
    if-eqz p3, :cond_7

    .line 767
    iget v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mMovingState:I

    if-nez v2, :cond_3

    .line 768
    sget-boolean v2, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v2, :cond_2

    neg-int v0, v1

    .line 790
    :goto_0
    iput v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mPreValues:I

    .line 792
    if-eqz p1, :cond_b

    if-ne p1, v0, :cond_b

    .line 793
    iput-boolean v4, p0, Lcom/android/launcher3/home/ZeroPageController;->mBezelSwipe:Z

    .line 794
    iput v4, p0, Lcom/android/launcher3/home/ZeroPageController;->mMovingState:I

    .line 847
    .end local v0    # "values":I
    .end local v1    # "widthPixels":I
    :cond_1
    :goto_1
    return-void

    .restart local v0    # "values":I
    .restart local v1    # "widthPixels":I
    :cond_2
    move v0, v1

    .line 768
    goto :goto_0

    .line 770
    :cond_3
    iget v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mMovingState:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4

    .line 771
    const/4 v0, 0x0

    goto :goto_0

    .line 772
    :cond_4
    iget v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mMovingState:I

    and-int/lit8 v2, v2, 0x16

    const/16 v3, 0x16

    if-ne v2, v3, :cond_5

    .line 773
    iget v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mPreValues:I

    goto :goto_0

    .line 775
    :cond_5
    sget-boolean v2, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v2, :cond_6

    neg-int v0, v1

    :goto_2
    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_2

    .line 779
    :cond_7
    iget v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mMovingState:I

    if-nez v2, :cond_8

    .line 780
    const/4 v0, 0x0

    goto :goto_0

    .line 782
    :cond_8
    iget v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mMovingState:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v5, :cond_a

    .line 783
    sget-boolean v2, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v2, :cond_9

    neg-int v0, v1

    :goto_3
    goto :goto_0

    :cond_9
    move v0, v1

    goto :goto_3

    .line 785
    :cond_a
    const/4 v0, 0x0

    goto :goto_0

    .line 798
    :cond_b
    iget-boolean v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mMovedToVirtualScreen:Z

    if-nez v2, :cond_c

    iget v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mMovingState:I

    if-nez v2, :cond_c

    .line 799
    iget-object v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {p0, v2, v4, v4}, Lcom/android/launcher3/home/ZeroPageController;->startActivityInVirtualScreen(Landroid/content/Context;ZZ)V

    .line 802
    :cond_c
    iget-object v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mValueAnimator:Landroid/animation/ValueAnimator;

    const/4 v3, 0x2

    new-array v3, v3, [I

    aput p1, v3, v4

    aput v0, v3, v5

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 803
    iget-object v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/android/launcher3/common/base/view/PagedView$ScrollInterpolator;

    invoke-direct {v3}, Lcom/android/launcher3/common/base/view/PagedView$ScrollInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 804
    iget-object v4, p0, Lcom/android/launcher3/home/ZeroPageController;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-nez p1, :cond_d

    if-nez v0, :cond_d

    const-wide/16 v2, 0x0

    :goto_4
    invoke-virtual {v4, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 806
    iget-object v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/android/launcher3/home/ZeroPageController$2;

    invoke-direct {v3, p0, p3}, Lcom/android/launcher3/home/ZeroPageController$2;-><init>(Lcom/android/launcher3/home/ZeroPageController;Z)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 836
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mInterval:J

    .line 837
    iget-object v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/android/launcher3/home/ZeroPageController$3;

    invoke-direct {v3, p0}, Lcom/android/launcher3/home/ZeroPageController$3;-><init>(Lcom/android/launcher3/home/ZeroPageController;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 845
    iget-object v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_1

    .line 804
    :cond_d
    int-to-long v2, p2

    goto :goto_4
.end method

.method private bindVirtualScreen()V
    .locals 1

    .prologue
    .line 492
    sget-object v0, Lcom/android/launcher3/home/ZeroPageController;->sVirtualScreenManager:Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;

    if-eqz v0, :cond_0

    .line 493
    sget-object v0, Lcom/android/launcher3/home/ZeroPageController;->sVirtualScreenManager:Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;->bindVirtualScreen()Z

    .line 495
    :cond_0
    return-void
.end method

.method private cancelAnimation()V
    .locals 1

    .prologue
    .line 877
    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 878
    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 879
    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 880
    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 882
    :cond_0
    return-void
.end method

.method private cancelZeroPagePreviewTask()V
    .locals 2

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mZeroPagePreviewTask:Lcom/android/launcher3/home/ZeroPageController$ZeroPagePreviewTask;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mZeroPagePreviewTask:Lcom/android/launcher3/home/ZeroPageController$ZeroPagePreviewTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/ZeroPageController$ZeroPagePreviewTask;->cancel(Z)Z

    .line 285
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mZeroPagePreviewTask:Lcom/android/launcher3/home/ZeroPageController$ZeroPagePreviewTask;

    .line 287
    :cond_0
    return-void
.end method

.method private getPreviewFromPackageManager(Landroid/content/pm/PackageManager;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 264
    :try_start_0
    sget-object v4, Lcom/android/launcher3/home/ZeroPageController;->sZeroPageCompName:Landroid/content/ComponentName;

    const/16 v5, 0x280

    invoke-virtual {p1, v4, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    .line 266
    .local v2, "info":Landroid/content/pm/ActivityInfo;
    iget-object v4, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v3

    .line 267
    .local v3, "res":Landroid/content/res/Resources;
    iget v4, p0, Lcom/android/launcher3/home/ZeroPageController;->mAppPrevResId:I

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 273
    .end local v2    # "info":Landroid/content/pm/ActivityInfo;
    .end local v3    # "res":Landroid/content/res/Resources;
    :goto_0
    return-object v0

    .line 269
    :catch_0
    move-exception v1

    .line 270
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v4, Lcom/android/launcher3/home/ZeroPageController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPreviewFromPackageManager(): NameNotFoundException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 271
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 270
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getZeroPageActiveState(Landroid/content/Context;Z)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "getPreferences"    # Z

    .prologue
    const/4 v1, 0x0

    .line 436
    sget-boolean v2, Lcom/android/launcher3/home/ZeroPageController;->sEnableZeroPage:Z

    if-nez v2, :cond_0

    .line 446
    :goto_0
    return v1

    .line 440
    :cond_0
    if-eqz p1, :cond_1

    .line 442
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v2

    .line 441
    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 443
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "com.sec.android.app.launcher.zeropage.state.prefs"

    sget-boolean v2, Lcom/android/launcher3/home/ZeroPageController;->sEnableZeroPage:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/launcher3/home/ZeroPageController;->sActiveZeroPage:Z

    .line 446
    .end local v0    # "prefs":Landroid/content/SharedPreferences;
    :cond_1
    sget-boolean v1, Lcom/android/launcher3/home/ZeroPageController;->sActiveZeroPage:Z

    goto :goto_0
.end method

.method private getZeroPageClassName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 406
    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "com.sec.android.app.launcher.zeropage.class.prefs"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getZeroPagePackageName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 396
    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "com.sec.android.app.launcher.zeropage.package.prefs"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 317
    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v2, Lcom/android/launcher3/home/ZeroPageController;->sZeroPageCompName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/launcher3/Utilities;->isPackageExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 318
    .local v0, "isPackageExist":Z
    invoke-static {}, Lcom/android/launcher3/Utilities;->isKnoxMode()Z

    move-result v1

    if-nez v1, :cond_2

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->isChinaModel()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 319
    :cond_0
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/launcher3/home/ZeroPageController;->sEnableZeroPage:Z

    .line 320
    iput-boolean v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mInstalled:Z

    .line 321
    sget-object v1, Lcom/android/launcher3/home/ZeroPageController;->sZeroPageCompName:Landroid/content/ComponentName;

    invoke-direct {p0, v1}, Lcom/android/launcher3/home/ZeroPageController;->updateZeroPageAppMetadata(Landroid/content/ComponentName;)V

    .line 322
    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090160

    .line 323
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mZeroPageBitmapWidth:I

    .line 324
    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09015f

    .line 325
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mZeroPageBitmapHeight:I

    .line 326
    iget-boolean v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mInstalled:Z

    if-nez v1, :cond_1

    .line 327
    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-boolean v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mInstalled:Z

    invoke-static {v1, v2}, Lcom/android/launcher3/home/ZeroPageController;->setZeroPageActiveState(Landroid/content/Context;Z)V

    .line 332
    :cond_1
    :goto_0
    return-void

    .line 330
    :cond_2
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/launcher3/home/ZeroPageController;->sEnableZeroPage:Z

    goto :goto_0
.end method

.method public static isActiveZeroPage(Landroid/content/Context;Z)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "getPreferences"    # Z

    .prologue
    .line 309
    sget-boolean v0, Lcom/android/launcher3/home/ZeroPageController;->sEnableZeroPage:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/android/launcher3/home/ZeroPageController;->getZeroPageActiveState(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEnableZeroPage()Z
    .locals 1

    .prologue
    .line 313
    sget-boolean v0, Lcom/android/launcher3/home/ZeroPageController;->sEnableZeroPage:Z

    return v0
.end method

.method public static isMoving()Z
    .locals 1

    .prologue
    .line 525
    sget-object v0, Lcom/android/launcher3/home/ZeroPageController;->sVirtualScreenManager:Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/launcher3/home/ZeroPageController;->sVirtualScreenManager:Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;->isMoving()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadZeroPagePreviewBitmap()V
    .locals 2

    .prologue
    .line 277
    invoke-direct {p0}, Lcom/android/launcher3/home/ZeroPageController;->cancelZeroPagePreviewTask()V

    .line 278
    new-instance v0, Lcom/android/launcher3/home/ZeroPageController$ZeroPagePreviewTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/home/ZeroPageController$ZeroPagePreviewTask;-><init>(Lcom/android/launcher3/home/ZeroPageController;Lcom/android/launcher3/home/ZeroPageController$1;)V

    iput-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mZeroPagePreviewTask:Lcom/android/launcher3/home/ZeroPageController$ZeroPagePreviewTask;

    .line 279
    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mZeroPagePreviewTask:Lcom/android/launcher3/home/ZeroPageController$ZeroPagePreviewTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/ZeroPageController$ZeroPagePreviewTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 280
    return-void
.end method

.method private moveToVirtualScreen(I)V
    .locals 13
    .param p1, "x"    # I

    .prologue
    const/4 v6, 0x0

    const/16 v12, -0x2ee

    const/16 v11, -0x5dc

    const v10, 0x3ea8f5c3    # 0.33f

    const/4 v5, 0x1

    .line 711
    iget-object v7, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v4, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 713
    .local v4, "widthPixels":I
    iget-object v7, p0, Lcom/android/launcher3/home/ZeroPageController;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v8, 0x3e8

    iget v9, p0, Lcom/android/launcher3/home/ZeroPageController;->mMaximumVelocity:I

    int-to-float v9, v9

    invoke-virtual {v7, v8, v9}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 714
    iget-object v7, p0, Lcom/android/launcher3/home/ZeroPageController;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v7

    float-to-int v3, v7

    .line 715
    .local v3, "velocity":I
    iget v7, p0, Lcom/android/launcher3/home/ZeroPageController;->mDownX:I

    sub-int v1, p1, v7

    .line 716
    .local v1, "offset":I
    sget-boolean v7, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v7, :cond_8

    if-lez v1, :cond_9

    .line 717
    :cond_0
    const/4 v1, 0x0

    .line 722
    :cond_1
    :goto_0
    const/16 v0, 0x2ee

    .line 723
    .local v0, "minSnapVelocity":I
    iget v7, p0, Lcom/android/launcher3/home/ZeroPageController;->mMovingState:I

    if-eqz v7, :cond_3

    .line 724
    sget-boolean v7, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v7, :cond_c

    if-gt v3, v12, :cond_d

    .line 725
    :cond_2
    iget v7, p0, Lcom/android/launcher3/home/ZeroPageController;->mMovingState:I

    or-int/lit8 v7, v7, 0x4

    iput v7, p0, Lcom/android/launcher3/home/ZeroPageController;->mMovingState:I

    .line 733
    :cond_3
    :goto_1
    const/4 v2, 0x0

    .line 734
    .local v2, "pageChanged":Z
    iget v7, p0, Lcom/android/launcher3/home/ZeroPageController;->mMovingState:I

    if-eqz v7, :cond_11

    .line 735
    iget v6, p0, Lcom/android/launcher3/home/ZeroPageController;->mMovingState:I

    and-int/lit8 v6, v6, 0x2

    const/4 v7, 0x2

    if-ne v6, v7, :cond_4

    iget v6, p0, Lcom/android/launcher3/home/ZeroPageController;->mMovingState:I

    and-int/lit8 v6, v6, 0x4

    const/4 v7, 0x4

    if-eq v6, v7, :cond_6

    :cond_4
    iget v6, p0, Lcom/android/launcher3/home/ZeroPageController;->mMovingState:I

    and-int/lit8 v6, v6, 0x1

    if-ne v6, v5, :cond_5

    iget v5, p0, Lcom/android/launcher3/home/ZeroPageController;->mMovingState:I

    and-int/lit8 v5, v5, 0x8

    const/16 v6, 0x8

    if-eq v5, v6, :cond_6

    :cond_5
    iget v5, p0, Lcom/android/launcher3/home/ZeroPageController;->mMovingState:I

    and-int/lit8 v5, v5, 0x16

    const/16 v6, 0x16

    if-ne v5, v6, :cond_7

    .line 740
    :cond_6
    const/4 v2, 0x1

    .line 752
    :cond_7
    :goto_2
    const/16 v5, 0x12c

    invoke-direct {p0, v1, v5, v2}, Lcom/android/launcher3/home/ZeroPageController;->animatePage(IIZ)V

    .line 753
    return-void

    .line 716
    .end local v0    # "minSnapVelocity":I
    .end local v2    # "pageChanged":Z
    :cond_8
    if-ltz v1, :cond_0

    .line 718
    :cond_9
    sget-boolean v7, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v7, :cond_a

    neg-int v7, v4

    if-ge v1, v7, :cond_1

    .line 719
    :goto_3
    sget-boolean v7, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v7, :cond_b

    neg-int v1, v4

    :goto_4
    goto :goto_0

    .line 718
    :cond_a
    if-le v1, v4, :cond_1

    goto :goto_3

    :cond_b
    move v1, v4

    .line 719
    goto :goto_4

    .line 724
    .restart local v0    # "minSnapVelocity":I
    :cond_c
    const/16 v7, 0x2ee

    if-ge v3, v7, :cond_2

    .line 726
    :cond_d
    sget-boolean v7, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v7, :cond_f

    const/16 v7, 0x2ee

    if-lt v3, v7, :cond_10

    .line 727
    :cond_e
    iget v7, p0, Lcom/android/launcher3/home/ZeroPageController;->mMovingState:I

    or-int/lit8 v7, v7, 0x8

    iput v7, p0, Lcom/android/launcher3/home/ZeroPageController;->mMovingState:I

    goto :goto_1

    .line 726
    :cond_f
    if-le v3, v12, :cond_e

    .line 729
    :cond_10
    iget v7, p0, Lcom/android/launcher3/home/ZeroPageController;->mMovingState:I

    or-int/lit8 v7, v7, 0x16

    iput v7, p0, Lcom/android/launcher3/home/ZeroPageController;->mMovingState:I

    goto :goto_1

    .line 743
    .restart local v2    # "pageChanged":Z
    :cond_11
    sget-boolean v7, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v7, :cond_14

    .line 744
    const/16 v7, 0x5dc

    if-ge v3, v7, :cond_13

    if-le v3, v11, :cond_12

    neg-int v7, v1

    int-to-float v7, v7

    int-to-float v8, v4

    mul-float/2addr v8, v10

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_13

    :cond_12
    move v2, v5

    :goto_5
    goto :goto_2

    :cond_13
    move v2, v6

    goto :goto_5

    .line 747
    :cond_14
    if-le v3, v11, :cond_16

    const/16 v7, 0x5dc

    if-ge v3, v7, :cond_15

    int-to-float v7, v1

    int-to-float v8, v4

    mul-float/2addr v8, v10

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_16

    :cond_15
    move v2, v5

    :goto_6
    goto :goto_2

    :cond_16
    move v2, v6

    goto :goto_6
.end method

.method private releaseVelocityTracker()V
    .locals 1

    .prologue
    .line 898
    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 899
    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 900
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 902
    :cond_0
    return-void
.end method

.method private removeMsg()V
    .locals 1

    .prologue
    .line 905
    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mVirtualScreenHandler:Lcom/android/launcher3/home/ZeroPageController$VirtualScreenHandler;

    if-eqz v0, :cond_0

    .line 906
    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mVirtualScreenHandler:Lcom/android/launcher3/home/ZeroPageController$VirtualScreenHandler;

    invoke-virtual {v0}, Lcom/android/launcher3/home/ZeroPageController$VirtualScreenHandler;->removeMsg()V

    .line 908
    :cond_0
    return-void
.end method

.method private resetOffset()V
    .locals 2

    .prologue
    .line 868
    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mVirtualScreenHandler:Lcom/android/launcher3/home/ZeroPageController$VirtualScreenHandler;

    new-instance v1, Lcom/android/launcher3/home/ZeroPageController$4;

    invoke-direct {v1, p0}, Lcom/android/launcher3/home/ZeroPageController$4;-><init>(Lcom/android/launcher3/home/ZeroPageController;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/ZeroPageController$VirtualScreenHandler;->post(Ljava/lang/Runnable;)Z

    .line 874
    return-void
.end method

.method private resetTouchState()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 885
    iput-boolean v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mTouchDowned:Z

    .line 886
    iput-boolean v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mMovedToVirtualScreen:Z

    .line 887
    invoke-direct {p0}, Lcom/android/launcher3/home/ZeroPageController;->releaseVelocityTracker()V

    .line 888
    return-void
.end method

.method private scaleBitmapIfNecessary(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 249
    sget-object v1, Lcom/android/launcher3/home/ZeroPageController;->TAG:Ljava/lang/String;

    const-string v2, "scaleBitmapIfNecessary() "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mZeroPageBitmapWidth:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mZeroPageBitmapHeight:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 251
    :cond_0
    sget-object v1, Lcom/android/launcher3/home/ZeroPageController;->TAG:Ljava/lang/String;

    const-string v2, "scaleBitmapIfNecessary(): scaling bitmap"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mZeroPageBitmapWidth:I

    iget v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mZeroPageBitmapHeight:I

    const/4 v3, 0x1

    invoke-static {p1, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 254
    .local v0, "scaledBitmap":Landroid/graphics/Bitmap;
    if-eq p1, v0, :cond_1

    .line 255
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 257
    :cond_1
    move-object p1, v0

    .line 259
    .end local v0    # "scaledBitmap":Landroid/graphics/Bitmap;
    :cond_2
    return-object p1
.end method

.method private setOffset(IIZ)Z
    .locals 3
    .param p1, "offsetX"    # I
    .param p2, "offsetY"    # I
    .param p3, "force"    # Z

    .prologue
    .line 509
    sget-object v0, Lcom/android/launcher3/home/ZeroPageController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOffset - offsetX = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", force = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    sget-object v0, Lcom/android/launcher3/home/ZeroPageController;->sVirtualScreenManager:Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/launcher3/home/ZeroPageController;->sVirtualScreenManager:Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;->setOffset(IIZ)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setOffsetMsg(IIZJ)V
    .locals 4
    .param p1, "offsetX"    # I
    .param p2, "offsetY"    # I
    .param p3, "force"    # Z
    .param p4, "interval"    # J

    .prologue
    .line 514
    sget-object v1, Lcom/android/launcher3/home/ZeroPageController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setOffsetMsg - offsetX = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", force = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 516
    .local v0, "options":Landroid/os/Bundle;
    const-string v1, "offsetX"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 517
    const-string v1, "force"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 518
    const-string v1, "interval"

    invoke-virtual {v0, v1, p4, p5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 519
    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mVirtualScreenHandler:Lcom/android/launcher3/home/ZeroPageController$VirtualScreenHandler;

    if-eqz v1, :cond_0

    .line 520
    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mVirtualScreenHandler:Lcom/android/launcher3/home/ZeroPageController$VirtualScreenHandler;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/home/ZeroPageController$VirtualScreenHandler;->setOffsetHandler(Landroid/os/Bundle;)V

    .line 522
    :cond_0
    return-void
.end method

.method public static setZeroPageActiveState(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 410
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/launcher3/home/ZeroPageController;->getZeroPageActiveState(Landroid/content/Context;Z)Z

    move-result v0

    invoke-static {p0, v0}, Lcom/android/launcher3/home/ZeroPageController;->setZeroPageActiveState(Landroid/content/Context;Z)V

    .line 411
    return-void
.end method

.method static setZeroPageActiveState(Landroid/content/Context;Z)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "active"    # Z

    .prologue
    .line 414
    sget-object v2, Lcom/android/launcher3/home/ZeroPageController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setZeroPageActiveState, active: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", enable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/launcher3/home/ZeroPageController;->sEnableZeroPage:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    sget-boolean v2, Lcom/android/launcher3/home/ZeroPageController;->sEnableZeroPage:Z

    if-nez v2, :cond_0

    .line 433
    :goto_0
    return-void

    .line 420
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.intent.action.ACTIVE_ZERO_PAGE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 421
    .local v1, "intent":Landroid/content/Intent;
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 422
    const-string v2, "active"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 423
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 426
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 425
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 426
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 427
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "com.sec.android.app.launcher.zeropage.state.prefs"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 428
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 429
    sput-boolean p1, Lcom/android/launcher3/home/ZeroPageController;->sActiveZeroPage:Z

    .line 430
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v3

    .line 431
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0801b7

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget-boolean v2, Lcom/android/launcher3/home/ZeroPageController;->sActiveZeroPage:Z

    if-eqz v2, :cond_1

    const-string v2, "1"

    .line 430
    :goto_1
    invoke-virtual {v3, v4, v2}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 431
    :cond_1
    const-string v2, "0"

    goto :goto_1
.end method

.method private setZeroPageClassName(Ljava/lang/String;)V
    .locals 2
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 400
    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 401
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "com.sec.android.app.launcher.zeropage.class.prefs"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 402
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 403
    return-void
.end method

.method private setZeroPagePackageName(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 390
    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 391
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "com.sec.android.app.launcher.zeropage.package.prefs"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 392
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 393
    return-void
.end method

.method private showZeroPageDownloadDialog(Landroid/widget/Switch;Z)V
    .locals 8
    .param p1, "zeroPageSwitch"    # Landroid/widget/Switch;
    .param p2, "isSwitch"    # Z

    .prologue
    const/4 v7, 0x0

    .line 1315
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1316
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v3, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0800bf

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1317
    .local v2, "zeropage":Ljava/lang/String;
    sget-object v3, Lcom/android/launcher3/home/ZeroPageController;->sZeroPageCompName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1319
    .local v1, "packageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 1320
    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0800be

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v7

    const/4 v6, 0x1

    aput-object v2, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1319
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1322
    iget-object v3, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0800bd

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/launcher3/home/ZeroPageController$7;

    invoke-direct {v4, p0, v1}, Lcom/android/launcher3/home/ZeroPageController$7;-><init>(Lcom/android/launcher3/home/ZeroPageController;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1331
    iget-object v3, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08001d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/launcher3/home/ZeroPageController$8;

    invoke-direct {v4, p0, p2, p1}, Lcom/android/launcher3/home/ZeroPageController$8;-><init>(Lcom/android/launcher3/home/ZeroPageController;ZLandroid/widget/Switch;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1341
    new-instance v3, Lcom/android/launcher3/home/ZeroPageController$9;

    invoke-direct {v3, p0, p2, p1}, Lcom/android/launcher3/home/ZeroPageController$9;-><init>(Lcom/android/launcher3/home/ZeroPageController;ZLandroid/widget/Switch;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 1351
    new-instance v3, Lcom/android/launcher3/home/ZeroPageController$10;

    invoke-direct {v3, p0}, Lcom/android/launcher3/home/ZeroPageController$10;-><init>(Lcom/android/launcher3/home/ZeroPageController;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 1358
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher3/home/ZeroPageController;->mZeropageDownloadDialog:Landroid/app/AlertDialog;

    .line 1359
    iget-object v3, p0, Lcom/android/launcher3/home/ZeroPageController;->mZeropageDownloadDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_0

    .line 1360
    iget-object v3, p0, Lcom/android/launcher3/home/ZeroPageController;->mZeropageDownloadDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3, v7}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1361
    iget-object v3, p0, Lcom/android/launcher3/home/ZeroPageController;->mZeropageDownloadDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1362
    iget-object v3, p0, Lcom/android/launcher3/home/ZeroPageController;->mZeropageDownloadDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 1365
    :cond_0
    return-void
.end method

.method private startActivityInVirtualScreen(Landroid/content/Context;ZZ)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "changeActivity"    # Z
    .param p3, "created"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 450
    sget-object v4, Lcom/android/launcher3/home/ZeroPageController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startActivityInVirtualScreen - changeActivity = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", created = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    sget-object v4, Lcom/android/launcher3/home/ZeroPageController;->sVirtualScreenManager:Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;

    if-nez v4, :cond_0

    .line 454
    sget-object v4, Lcom/android/launcher3/home/ZeroPageController;->TAG:Ljava/lang/String;

    const-string v5, "startActivityInVirtualScreen - return by sVirtualScreenManager is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    :goto_0
    return-void

    .line 458
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 459
    .local v1, "intent":Landroid/content/Intent;
    new-instance v4, Landroid/content/ComponentName;

    invoke-direct {p0}, Lcom/android/launcher3/home/ZeroPageController;->getZeroPagePackageName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0}, Lcom/android/launcher3/home/ZeroPageController;->getZeroPageClassName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 460
    const/high16 v4, 0x4000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 461
    const-string v4, "fromHome"

    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 462
    const-string v4, "fingerSwipe"

    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 463
    const-string v4, "supportRtl"

    sget-boolean v5, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 465
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 466
    .local v3, "realMetrics":Landroid/util/DisplayMetrics;
    iget-object v4, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 467
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0, v3}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 469
    new-instance v2, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;

    invoke-direct {v2}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;-><init>()V

    .line 470
    .local v2, "params":Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;
    sget-boolean v4, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v4, :cond_3

    .line 471
    new-instance v4, Landroid/graphics/Rect;

    iget v5, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v6, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v6, v6, 0x2

    iget v7, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {v4, v5, v8, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, v2, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;->bounds:Landroid/graphics/Rect;

    .line 477
    :goto_1
    iget v4, v2, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;->flags:I

    sget v5, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;->FLAG_BASE_ACTIVITY:I

    or-int/2addr v4, v5

    iput v4, v2, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;->flags:I

    .line 478
    iget v4, v2, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;->flags:I

    sget v5, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;->FLAG_ZEROPAGE_POLICY:I

    or-int/2addr v4, v5

    iput v4, v2, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;->flags:I

    .line 480
    if-eqz p2, :cond_1

    .line 481
    iget v4, v2, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;->flags:I

    sget v5, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;->FLAG_CLEAR_TASKS:I

    or-int/2addr v4, v5

    iput v4, v2, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;->flags:I

    .line 484
    :cond_1
    if-eqz p3, :cond_2

    .line 485
    iget v4, v2, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;->flags:I

    sget v5, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;->FLAG_RECREATE_VIRTUALSCREEN:I

    or-int/2addr v4, v5

    iput v4, v2, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;->flags:I

    .line 488
    :cond_2
    sget-object v4, Lcom/android/launcher3/home/ZeroPageController;->sVirtualScreenManager:Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5, v2}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;)I

    goto :goto_0

    .line 474
    :cond_3
    new-instance v4, Landroid/graphics/Rect;

    iget v5, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    neg-int v5, v5

    iget v6, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {v4, v5, v8, v8, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, v2, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;->bounds:Landroid/graphics/Rect;

    goto :goto_1
.end method

.method public static supportVirtualScreen()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 300
    sget-boolean v1, Lcom/android/launcher3/home/ZeroPageController;->sVirtualScreenAvailableChecked:Z

    if-nez v1, :cond_0

    .line 301
    new-instance v0, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreen;

    invoke-direct {v0}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreen;-><init>()V

    .line 302
    .local v0, "virtualScreen":Lcom/samsung/android/sdk/virtualscreen/SVirtualScreen;
    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreen;->isFeatureEnabled(I)Z

    move-result v1

    sput-boolean v1, Lcom/android/launcher3/home/ZeroPageController;->sSupportVirtualScreen:Z

    .line 303
    sput-boolean v2, Lcom/android/launcher3/home/ZeroPageController;->sVirtualScreenAvailableChecked:Z

    .line 305
    :cond_0
    sget-boolean v1, Lcom/android/launcher3/home/ZeroPageController;->sSupportVirtualScreen:Z

    return v1
.end method

.method private updateZeroPageAppMetadata(Landroid/content/ComponentName;)V
    .locals 14
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    const/4 v11, 0x0

    .line 336
    :try_start_0
    iget-object v10, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v10}, Lcom/android/launcher3/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 337
    .local v6, "pm":Landroid/content/pm/PackageManager;
    const/16 v10, 0x280

    invoke-virtual {v6, p1, v10}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    .line 339
    .local v3, "info":Landroid/content/pm/ActivityInfo;
    const-string v10, "com.samsung.launcher.zeropage.metadata"

    invoke-virtual {v3, v6, v10}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v5

    .line 340
    .local v5, "parser":Landroid/content/res/XmlResourceParser;
    if-nez v5, :cond_0

    .line 341
    sget-object v10, Lcom/android/launcher3/home/ZeroPageController;->TAG:Ljava/lang/String;

    const-string v11, "parser is null"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    .line 387
    .end local v3    # "info":Landroid/content/pm/ActivityInfo;
    .end local v5    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v6    # "pm":Landroid/content/pm/PackageManager;
    :goto_0
    return-void

    .line 347
    .restart local v3    # "info":Landroid/content/pm/ActivityInfo;
    .restart local v5    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v6    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    :try_start_1
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v1

    .line 348
    .local v1, "depth":I
    :cond_1
    :goto_1
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v9

    .local v9, "type":I
    const/4 v10, 0x3

    if-ne v9, v10, :cond_2

    .line 349
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v10

    if-le v10, v1, :cond_4

    :cond_2
    const/4 v10, 0x1

    if-eq v9, v10, :cond_4

    .line 350
    const/4 v10, 0x2

    if-ne v9, v10, :cond_1

    .line 354
    const/4 v10, 0x0

    const-string v12, "apptitle"

    const/4 v13, 0x0

    invoke-interface {v5, v10, v12, v13}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 355
    .local v0, "appnameStrId":I
    const/4 v10, 0x0

    const-string v12, "preview"

    const/4 v13, 0x0

    invoke-interface {v5, v10, v12, v13}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v7

    .line 356
    .local v7, "previewResId":I
    iget-object v10, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v6, v10}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v8

    .line 358
    .local v8, "res":Landroid/content/res/Resources;
    if-eqz v8, :cond_1

    .line 359
    if-eqz v7, :cond_3

    .line 360
    :try_start_2
    iput v7, p0, Lcom/android/launcher3/home/ZeroPageController;->mAppPrevResId:I

    .line 362
    :cond_3
    if-nez v0, :cond_5

    move-object v10, v11

    .line 364
    :goto_2
    iput-object v10, p0, Lcom/android/launcher3/home/ZeroPageController;->mAppName:Ljava/lang/String;
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_1

    .line 366
    :catch_0
    move-exception v2

    .line 367
    .local v2, "e":Landroid/content/res/Resources$NotFoundException;
    :try_start_3
    invoke-virtual {v2}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_1

    .line 370
    .end local v0    # "appnameStrId":I
    .end local v1    # "depth":I
    .end local v2    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v7    # "previewResId":I
    .end local v8    # "res":Landroid/content/res/Resources;
    .end local v9    # "type":I
    :catch_1
    move-exception v2

    .line 371
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_4
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_3

    .line 385
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v3    # "info":Landroid/content/pm/ActivityInfo;
    .end local v5    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v6    # "pm":Landroid/content/pm/PackageManager;
    :cond_4
    :goto_3
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/launcher3/home/ZeroPageController;->setZeroPagePackageName(Ljava/lang/String;)V

    .line 386
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/launcher3/home/ZeroPageController;->setZeroPageClassName(Ljava/lang/String;)V

    goto :goto_0

    .line 362
    .restart local v0    # "appnameStrId":I
    .restart local v1    # "depth":I
    .restart local v3    # "info":Landroid/content/pm/ActivityInfo;
    .restart local v5    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v6    # "pm":Landroid/content/pm/PackageManager;
    .restart local v7    # "previewResId":I
    .restart local v8    # "res":Landroid/content/res/Resources;
    .restart local v9    # "type":I
    :cond_5
    :try_start_5
    sget-boolean v10, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v10, :cond_6

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\u200f"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 363
    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_2

    .line 364
    :cond_6
    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_4

    move-result-object v10

    goto :goto_2

    .line 372
    .end local v0    # "appnameStrId":I
    .end local v1    # "depth":I
    .end local v7    # "previewResId":I
    .end local v8    # "res":Landroid/content/res/Resources;
    .end local v9    # "type":I
    :catch_2
    move-exception v2

    .line 373
    .local v2, "e":Ljava/io/IOException;
    :try_start_6
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_3

    .line 377
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "info":Landroid/content/pm/ActivityInfo;
    .end local v5    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v6    # "pm":Landroid/content/pm/PackageManager;
    :catch_3
    move-exception v2

    .line 378
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v10, Lcom/android/launcher3/home/ZeroPageController;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ZeroApp doesn\'t have Metadata : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iget-boolean v10, p0, Lcom/android/launcher3/home/ZeroPageController;->mInstalled:Z

    if-nez v10, :cond_4

    .line 380
    iget-object v10, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v10}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0800bf

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 381
    .local v4, "name":Ljava/lang/String;
    sget-boolean v10, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v10, :cond_7

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\u200f"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .end local v4    # "name":Ljava/lang/String;
    :cond_7
    iput-object v4, p0, Lcom/android/launcher3/home/ZeroPageController;->mAppName:Ljava/lang/String;

    goto :goto_3

    .line 374
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v3    # "info":Landroid/content/pm/ActivityInfo;
    .restart local v5    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v6    # "pm":Landroid/content/pm/PackageManager;
    :catch_4
    move-exception v2

    .line 375
    .restart local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_7
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_3
.end method

.method private updateZeroPageBg(ZZ)V
    .locals 6
    .param p1, "isChecked"    # Z
    .param p2, "whiteBg"    # Z

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3ecccccd    # 0.4f

    .line 1173
    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    const-wide/16 v4, -0x12d

    invoke-virtual {v1, v4, v5}, Lcom/android/launcher3/home/Workspace;->getScreenWithId(J)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v0

    .line 1174
    .local v0, "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    if-eqz v0, :cond_0

    .line 1175
    invoke-virtual {p0, p2}, Lcom/android/launcher3/home/ZeroPageController;->changeColorForBg(Z)V

    .line 1176
    if-eqz p1, :cond_2

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/base/view/CellLayout;->setBackgroundAlpha(F)V

    .line 1179
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mZeroPageBgView:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    .line 1180
    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mZeroPageBgView:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_3

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 1182
    :cond_1
    return-void

    :cond_2
    move v1, v3

    .line 1176
    goto :goto_0

    :cond_3
    move v2, v3

    .line 1180
    goto :goto_1
.end method


# virtual methods
.method canScroll()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1002
    invoke-static {}, Lcom/android/launcher3/home/ZeroPageController;->supportVirtualScreen()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v1, v0}, Lcom/android/launcher3/home/ZeroPageController;->isActiveZeroPage(Landroid/content/Context;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mMovedToVirtualScreen:Z

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method changeColorForBg(Z)V
    .locals 4
    .param p1, "whiteBg"    # Z

    .prologue
    .line 1185
    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    const-wide/16 v2, -0x12d

    .line 1186
    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/home/Workspace;->getScreenWithId(J)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/home/WorkspaceCellLayout;

    .line 1187
    .local v0, "cl":Lcom/android/launcher3/home/WorkspaceCellLayout;
    if-eqz v0, :cond_0

    .line 1188
    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getHomeController()Lcom/android/launcher3/home/HomeController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->getState()I

    move-result v2

    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    .line 1189
    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->getDefaultPage()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 1188
    :goto_0
    invoke-virtual {v0, v2, v1, p1}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setBgImageResource(IZZ)V

    .line 1191
    :cond_0
    return-void

    .line 1189
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public changeZeroPage(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    const/4 v1, 0x1

    .line 1278
    sput-object p1, Lcom/android/launcher3/home/ZeroPageController;->sZeroPageCompName:Landroid/content/ComponentName;

    .line 1279
    invoke-direct {p0, p1}, Lcom/android/launcher3/home/ZeroPageController;->updateZeroPageAppMetadata(Landroid/content/ComponentName;)V

    .line 1281
    invoke-virtual {p0}, Lcom/android/launcher3/home/ZeroPageController;->unBindVirtualScreen()V

    .line 1282
    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {p0, v0, v1, v1}, Lcom/android/launcher3/home/ZeroPageController;->startActivityInVirtualScreen(Landroid/content/Context;ZZ)V

    .line 1283
    invoke-direct {p0}, Lcom/android/launcher3/home/ZeroPageController;->bindVirtualScreen()V

    .line 1284
    return-void
.end method

.method public closeZeroPageDownloadDialog()V
    .locals 1

    .prologue
    .line 1368
    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mZeropageDownloadDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1369
    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mZeropageDownloadDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1370
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mZeropageDownloadDialog:Landroid/app/AlertDialog;

    .line 1372
    :cond_0
    return-void
.end method

.method createCustomZeroPage(Z)V
    .locals 14
    .param p1, "force"    # Z

    .prologue
    const-wide/16 v12, -0x12d

    const/4 v3, -0x1

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 1006
    sget-boolean v1, Lcom/android/launcher3/home/ZeroPageController;->sEnableZeroPage:Z

    if-nez v1, :cond_0

    .line 1078
    :goto_0
    return-void

    .line 1010
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 1011
    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v10, 0x7f030050

    iget-object v11, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1, v10, v11, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/home/WorkspaceCellLayout;

    .line 1013
    .local v0, "zeroPageScreen":Lcom/android/launcher3/home/WorkspaceCellLayout;
    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1, v5}, Lcom/android/launcher3/home/Workspace;->setZeroPageMarker(Z)V

    .line 1014
    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->getWorkspaceScreens()Lcom/android/launcher3/util/LongArrayMap;

    move-result-object v1

    invoke-virtual {v1, v12, v13, v0}, Lcom/android/launcher3/util/LongArrayMap;->put(JLjava/lang/Object;)V

    .line 1015
    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->getScreenOrder()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v1, v2, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1017
    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/home/Workspace;->setMarkerStartOffset(I)V

    .line 1018
    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v1, v2}, Lcom/android/launcher3/home/ZeroPageController;->getZeroPageActiveState(Landroid/content/Context;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_2

    .line 1019
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1, v3}, Lcom/android/launcher3/home/Workspace;->addMarkerForView(I)V

    .line 1022
    :cond_2
    invoke-virtual {v0, v3, v3, v2, v2}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setCellDimensions(IIII)V

    .line 1023
    invoke-virtual {v0, v5, v5}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setGridSize(II)V

    .line 1024
    invoke-virtual {v0, v2, v2, v2, v2}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setPadding(IIII)V

    .line 1026
    invoke-direct {p0, v0}, Lcom/android/launcher3/home/ZeroPageController;->addZeroPageSwitch(Lcom/android/launcher3/home/WorkspaceCellLayout;)V

    .line 1027
    invoke-virtual {v0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getZeroPageSwitch()Landroid/widget/Switch;

    move-result-object v8

    .line 1029
    .local v8, "zeroPageSwitch":Landroid/widget/Switch;
    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 1030
    .local v7, "res":Landroid/content/res/Resources;
    new-instance v4, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    invoke-direct {v4, v2, v2, v5, v5}, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;-><init>(IIII)V

    .line 1032
    .local v4, "lp":Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;
    const/high16 v1, 0x42c80000    # 100.0f

    const v10, 0x7f0b0003

    .line 1033
    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    int-to-float v10, v10

    div-float v6, v1, v10

    .line 1034
    .local v6, "overviewShrinkFactorReverse":F
    const v1, 0x7f09011c

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v6

    float-to-int v9, v1

    .line 1037
    .local v9, "zeroPageSwitchHeight":I
    const v1, 0x7f09015c

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v10, 0x7f09015e

    .line 1038
    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    add-int/2addr v10, v9

    const v11, 0x7f09015d

    .line 1039
    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    const v12, 0x7f09015b

    .line 1040
    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    .line 1037
    invoke-virtual {v4, v1, v10, v11, v12}, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->setMargins(IIII)V

    .line 1042
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v10, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v1, v10}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mZeroPageBgView:Landroid/widget/LinearLayout;

    .line 1043
    new-instance v1, Lcom/android/launcher3/home/ZeroPageController$5;

    invoke-direct {v1, p0, v8}, Lcom/android/launcher3/home/ZeroPageController$5;-><init>(Lcom/android/launcher3/home/ZeroPageController;Landroid/widget/Switch;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1056
    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mZeroPageBgView:Landroid/widget/LinearLayout;

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/home/WorkspaceCellLayout;->addViewToCellLayout(Landroid/view/View;IILcom/android/launcher3/common/base/view/CellLayout$LayoutParams;Z)Z

    .line 1058
    invoke-direct {p0}, Lcom/android/launcher3/home/ZeroPageController;->loadZeroPagePreviewBitmap()V

    .line 1060
    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1, v0, v2}, Lcom/android/launcher3/home/Workspace;->addView(Landroid/view/View;I)V

    .line 1061
    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/home/Workspace;->removeMarkerForView(I)V

    .line 1064
    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-object v3, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    .line 1065
    invoke-virtual {v3}, Lcom/android/launcher3/home/Workspace;->getPageCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    iget-object v10, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v10}, Lcom/android/launcher3/home/Workspace;->getDefaultPage()I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-static {v3, v10}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1064
    invoke-virtual {v1, v3, v2}, Lcom/android/launcher3/home/Workspace;->setDefaultPage(IZ)V

    .line 1066
    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v1, v2}, Lcom/android/launcher3/home/ZeroPageController;->getZeroPageActiveState(Landroid/content/Context;Z)Z

    move-result v1

    invoke-static {}, Lcom/android/launcher3/util/WhiteBgManager;->isWhiteBg()Z

    move-result v3

    invoke-direct {p0, v1, v3}, Lcom/android/launcher3/home/ZeroPageController;->updateZeroPageBg(ZZ)V

    .line 1068
    invoke-virtual {v0, v5}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setCustomFlag(Z)V

    .line 1071
    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->getRestorePage()I

    move-result v1

    const/16 v3, -0x3e9

    if-eq v1, v3, :cond_3

    .line 1072
    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-object v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher3/home/Workspace;->getRestorePage()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/launcher3/home/Workspace;->setRestorePage(I)V

    .line 1077
    :goto_1
    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-object v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher3/home/Workspace;->getDefaultPage()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/home/Workspace;->updateDefaultHomePageIndicator(I)V

    goto/16 :goto_0

    .line 1074
    :cond_3
    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-boolean v3, p0, Lcom/android/launcher3/home/ZeroPageController;->mIsFromZeroPageSetting:Z

    if-eqz v3, :cond_4

    :goto_2
    invoke-virtual {v1, v2}, Lcom/android/launcher3/home/Workspace;->setCurrentPage(I)V

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    .line 1075
    invoke-virtual {v2}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 21
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 536
    invoke-static {}, Lcom/android/launcher3/home/ZeroPageController;->supportVirtualScreen()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/android/launcher3/home/ZeroPageController;->isActiveZeroPage(Landroid/content/Context;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 537
    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->isHomeStage()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher3/home/Workspace;->isNormalState()Z

    move-result v2

    if-nez v2, :cond_2

    .line 538
    :cond_0
    const/4 v15, 0x0

    .line 707
    :cond_1
    :goto_0
    return v15

    .line 541
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getHomeController()Lcom/android/launcher3/home/HomeController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeController;->isSwitchingState()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 542
    sget-object v2, Lcom/android/launcher3/home/ZeroPageController;->TAG:Ljava/lang/String;

    const-string v4, "isSwitchingState restore"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/home/ZeroPageController;->restoreOffset()V

    .line 544
    const/4 v15, 0x0

    goto :goto_0

    .line 547
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v10, v2, 0xff

    .line 548
    .local v10, "action":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v0, v2

    move/from16 v20, v0

    .line 549
    .local v20, "x":I
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportZeroPageBezelSwipe()Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mMovedToVirtualScreen:Z

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mBezelSize:I

    move/from16 v0, v20

    if-gt v0, v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    .line 551
    invoke-virtual {v2}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher3/home/Workspace;->isPageMoving()Z

    move-result v2

    if-nez v2, :cond_4

    .line 552
    sget-object v2, Lcom/android/launcher3/home/ZeroPageController;->TAG:Ljava/lang/String;

    const-string v4, "Bezel swipe detected for virtual screen"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mBezelSwipe:Z

    .line 556
    :cond_4
    const/4 v13, 0x0

    .line 557
    .local v13, "endMoving":Z
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mMovedToVirtualScreen:Z

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v2

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    .line 558
    invoke-virtual {v2}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher3/home/Workspace;->getNextPage()I

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mBezelSwipe:Z

    if-eqz v2, :cond_b

    .line 559
    :cond_6
    invoke-direct/range {p0 .. p1}, Lcom/android/launcher3/home/ZeroPageController;->acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V

    .line 561
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/launcher3/home/Workspace;->getScrollForPage(I)I

    move-result v17

    .line 562
    .local v17, "scrollWidth":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_f

    const/4 v11, 0x1

    .line 563
    .local v11, "animating":Z
    :goto_1
    if-nez v11, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v2

    if-nez v2, :cond_11

    sget-boolean v2, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    .line 564
    invoke-virtual {v2}, Lcom/android/launcher3/home/Workspace;->getScrollX()I

    move-result v2

    move/from16 v0, v17

    if-ge v2, v0, :cond_11

    .line 565
    :cond_7
    const/4 v14, 0x1

    .line 567
    .local v14, "movedToSecondPage":Z
    :goto_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mMovingState:I

    if-eqz v2, :cond_8

    if-eqz v11, :cond_a

    :cond_8
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mMovedToVirtualScreen:Z

    if-nez v2, :cond_a

    if-nez v14, :cond_a

    invoke-static {}, Lcom/android/launcher3/home/ZeroPageController;->isMoving()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 568
    const/16 v16, 0x0

    .line 569
    .local v16, "reversed":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 570
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/home/ZeroPageController;->mPreValues:I

    move/from16 v18, v0

    .line 571
    .local v18, "values":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mMovingState:I

    and-int/lit8 v2, v2, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_9

    .line 572
    const/16 v16, 0x1

    .line 574
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/home/ZeroPageController;->cancelAnimation()V

    .line 575
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/home/ZeroPageController;->removeMsg()V

    .line 576
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher3/home/ZeroPageController;->mPreValues:I

    .line 577
    if-eqz v16, :cond_12

    const/4 v2, 0x1

    :goto_3
    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mMovingState:I

    .line 586
    .end local v16    # "reversed":Z
    .end local v18    # "values":I
    :cond_a
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v19, v0

    .line 587
    .local v19, "widthPixels":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mLastDownX:I

    sub-int v2, v20, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v12

    .line 589
    .local v12, "deltaX":I
    packed-switch v10, :pswitch_data_0

    .line 696
    .end local v11    # "animating":Z
    .end local v12    # "deltaX":I
    .end local v14    # "movedToSecondPage":Z
    .end local v17    # "scrollWidth":I
    .end local v19    # "widthPixels":I
    :cond_b
    :goto_5
    const/4 v2, 0x1

    if-eq v10, v2, :cond_c

    const/4 v2, 0x3

    if-eq v10, v2, :cond_c

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mMovingState:I

    and-int/lit8 v2, v2, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_c

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mMovingState:I

    and-int/lit8 v2, v2, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_e

    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 699
    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->isPaused()Z

    move-result v2

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getVisible()Z

    move-result v2

    if-nez v2, :cond_d

    const/4 v2, 0x1

    if-eq v10, v2, :cond_d

    const/4 v2, 0x3

    if-ne v10, v2, :cond_e

    :cond_d
    if-eqz v13, :cond_30

    sget-boolean v2, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v2, :cond_2f

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mDownX:I

    sub-int v2, v20, v2

    if-gez v2, :cond_30

    :cond_e
    const/4 v15, 0x1

    .line 703
    .local v15, "result":Z
    :goto_6
    if-eqz v15, :cond_1

    .line 704
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher3/home/Workspace;->resetTouchState()V

    goto/16 :goto_0

    .line 562
    .end local v15    # "result":Z
    .restart local v17    # "scrollWidth":I
    :cond_f
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 564
    .restart local v11    # "animating":Z
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    .line 565
    invoke-virtual {v2}, Lcom/android/launcher3/home/Workspace;->getScrollX()I

    move-result v2

    move/from16 v0, v17

    if-gt v2, v0, :cond_7

    :cond_11
    const/4 v14, 0x0

    goto/16 :goto_2

    .line 577
    .restart local v14    # "movedToSecondPage":Z
    .restart local v16    # "reversed":Z
    .restart local v18    # "values":I
    :cond_12
    const/4 v2, 0x2

    goto/16 :goto_3

    .line 579
    .end local v18    # "values":I
    :cond_13
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mMovingState:I

    and-int/lit8 v2, v2, 0x1

    const/4 v4, 0x1

    if-ne v2, v4, :cond_14

    .line 580
    const/16 v16, 0x1

    .line 582
    :cond_14
    if-eqz v16, :cond_15

    const/4 v2, 0x2

    :goto_7
    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mMovingState:I

    goto/16 :goto_4

    :cond_15
    const/4 v2, 0x1

    goto :goto_7

    .line 591
    .end local v16    # "reversed":Z
    .restart local v12    # "deltaX":I
    .restart local v19    # "widthPixels":I
    :pswitch_0
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mTouchDowned:Z

    .line 592
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher3/home/ZeroPageController;->mLastDownX:I

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher3/home/ZeroPageController;->mDownX:I

    .line 593
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mMovedToVirtualScreen:Z

    goto/16 :goto_5

    .line 597
    :pswitch_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mTouchDowned:Z

    if-nez v2, :cond_16

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mMovedToVirtualScreen:Z

    if-nez v2, :cond_16

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mMovingState:I

    if-nez v2, :cond_16

    .line 598
    sget-object v2, Lcom/android/launcher3/home/ZeroPageController;->TAG:Ljava/lang/String;

    const-string v4, "dispatchTouchEvent - skipped wrong touch move event on virtual screen"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 602
    :cond_16
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mMovedToVirtualScreen:Z

    if-eqz v2, :cond_22

    .line 603
    sget-boolean v2, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v2, :cond_1b

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mLastDownX:I

    move/from16 v0, v20

    if-ge v2, v0, :cond_17

    .line 604
    :goto_8
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/home/ZeroPageController;->removeMsg()V

    .line 607
    :cond_17
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher3/home/ZeroPageController;->mLastDownX:I

    .line 609
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mDownX:I

    sub-int v3, v20, v2

    .line 610
    .local v3, "offset":I
    sget-boolean v2, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v2, :cond_1c

    if-lez v3, :cond_1d

    .line 611
    :cond_18
    const/4 v3, 0x0

    .line 616
    :cond_19
    :goto_9
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mBezelSwipe:Z

    if-nez v2, :cond_1a

    .line 617
    if-eqz v3, :cond_1a

    sget-boolean v2, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v2, :cond_20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher3/home/Workspace;->getScrollX()I

    move-result v2

    move/from16 v0, v17

    if-ge v2, v0, :cond_1a

    .line 619
    :goto_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/android/launcher3/home/Workspace;->setScrollX(I)V

    .line 623
    :cond_1a
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mMovingState:I

    if-eqz v2, :cond_21

    const/4 v5, 0x1

    :goto_b
    const-wide/16 v6, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher3/home/ZeroPageController;->setOffsetMsg(IIZJ)V

    .line 624
    if-nez v3, :cond_b

    .line 625
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mMovedToVirtualScreen:Z

    .line 626
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mMovingState:I

    goto/16 :goto_5

    .line 603
    .end local v3    # "offset":I
    :cond_1b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mLastDownX:I

    move/from16 v0, v20

    if-le v2, v0, :cond_17

    goto :goto_8

    .line 610
    .restart local v3    # "offset":I
    :cond_1c
    if-ltz v3, :cond_18

    .line 612
    :cond_1d
    sget-boolean v2, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v2, :cond_1e

    move/from16 v0, v19

    neg-int v2, v0

    if-ge v3, v2, :cond_19

    .line 613
    :goto_c
    sget-boolean v2, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v2, :cond_1f

    move/from16 v0, v19

    neg-int v3, v0

    :goto_d
    goto :goto_9

    .line 612
    :cond_1e
    move/from16 v0, v19

    if-le v3, v0, :cond_19

    goto :goto_c

    :cond_1f
    move/from16 v3, v19

    .line 613
    goto :goto_d

    .line 617
    :cond_20
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    .line 618
    invoke-virtual {v2}, Lcom/android/launcher3/home/Workspace;->getScrollX()I

    move-result v2

    move/from16 v0, v17

    if-le v2, v0, :cond_1a

    goto :goto_a

    .line 623
    :cond_21
    const/4 v5, 0x0

    goto :goto_b

    .line 629
    .end local v3    # "offset":I
    :cond_22
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mMovingState:I

    if-nez v2, :cond_25

    sget-boolean v2, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v2, :cond_24

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mLastDownX:I

    move/from16 v0, v20

    if-ge v2, v0, :cond_25

    .line 630
    :cond_23
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mDownX:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mLastDownX:I

    .line 631
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/home/ZeroPageController;->removeMsg()V

    .line 632
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/home/ZeroPageController;->resetOffset()V

    goto/16 :goto_5

    .line 629
    :cond_24
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mLastDownX:I

    move/from16 v0, v20

    if-gt v2, v0, :cond_23

    .line 636
    :cond_25
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mMovingState:I

    if-nez v2, :cond_26

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mTouchSlop:I

    if-lt v12, v2, :cond_b

    .line 637
    invoke-static {}, Lcom/android/launcher3/util/event/ScrollDetector;->isHorizontalScroll()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 638
    :cond_26
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mMovedToVirtualScreen:Z

    .line 639
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher3/home/ZeroPageController;->mDownX:I

    .line 641
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mBezelSwipe:Z

    if-eqz v2, :cond_27

    .line 642
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/home/ZeroPageController;->unBindVirtualScreen()V

    .line 643
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v4}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/android/launcher3/home/Workspace;->snapToPage(II)V

    .line 644
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher3/home/Workspace;->pageEndMoving()V

    .line 649
    :goto_e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mMovingState:I

    if-nez v2, :cond_2a

    .line 650
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getHomeController()Lcom/android/launcher3/home/HomeController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeController;->updateBixbyHomeEnterCount()V

    .line 652
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4, v5}, Lcom/android/launcher3/home/ZeroPageController;->startActivityInVirtualScreen(Landroid/content/Context;ZZ)V

    .line 653
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08018d

    .line 654
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 655
    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0800fe

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Page Scroll"

    .line 653
    invoke-virtual {v2, v4, v5, v6}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    sget-boolean v2, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v2, :cond_28

    const/4 v2, -0x1

    :goto_f
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher3/home/ZeroPageController;->mMovingState:I

    if-eqz v4, :cond_29

    const/4 v4, 0x1

    :goto_10
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v5, v4}, Lcom/android/launcher3/home/ZeroPageController;->setOffset(IIZ)Z

    goto/16 :goto_5

    .line 646
    :cond_27
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/home/ZeroPageController;->bindVirtualScreen()V

    goto :goto_e

    .line 656
    :cond_28
    const/4 v2, 0x1

    goto :goto_f

    :cond_29
    const/4 v4, 0x0

    goto :goto_10

    .line 658
    :cond_2a
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/home/ZeroPageController;->getOffset()Landroid/graphics/Point;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 659
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mDownX:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/home/ZeroPageController;->getOffset()Landroid/graphics/Point;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mDownX:I

    .line 660
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/home/ZeroPageController;->getOffset()Landroid/graphics/Point;

    move-result-object v2

    iget v5, v2, Landroid/graphics/Point;->x:I

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mMovingState:I

    if-eqz v2, :cond_2b

    const/4 v7, 0x1

    :goto_11
    const-wide/16 v8, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/launcher3/home/ZeroPageController;->setOffsetMsg(IIZJ)V

    goto/16 :goto_5

    :cond_2b
    const/4 v7, 0x0

    goto :goto_11

    .line 668
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mTouchDowned:Z

    if-nez v2, :cond_2c

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mMovedToVirtualScreen:Z

    if-nez v2, :cond_2c

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mMovingState:I

    if-nez v2, :cond_2c

    .line 669
    sget-object v2, Lcom/android/launcher3/home/ZeroPageController;->TAG:Ljava/lang/String;

    const-string v4, "dispatchTouchEvent - skipped wrong touch up event on virtual screen"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 673
    :cond_2c
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mMovedToVirtualScreen:Z

    if-eqz v2, :cond_2d

    .line 674
    const/4 v13, 0x1

    .line 675
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/launcher3/home/ZeroPageController;->moveToVirtualScreen(I)V

    .line 684
    :goto_12
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/home/ZeroPageController;->resetTouchState()V

    goto/16 :goto_5

    .line 677
    :cond_2d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mMovingState:I

    if-eqz v2, :cond_2e

    .line 678
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/launcher3/home/ZeroPageController;->moveToVirtualScreen(I)V

    goto :goto_12

    .line 680
    :cond_2e
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mBezelSwipe:Z

    goto :goto_12

    .line 688
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/home/ZeroPageController;->restoreOffset()V

    goto/16 :goto_5

    .line 699
    .end local v11    # "animating":Z
    .end local v12    # "deltaX":I
    .end local v14    # "movedToSecondPage":Z
    .end local v17    # "scrollWidth":I
    .end local v19    # "widthPixels":I
    :cond_2f
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mDownX:I

    sub-int v2, v20, v2

    if-gtz v2, :cond_e

    :cond_30
    const/4 v15, 0x0

    goto/16 :goto_6

    .line 589
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public enterZeroPageSetting()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1223
    iput-boolean v3, p0, Lcom/android/launcher3/home/ZeroPageController;->mIsFromZeroPageSetting:Z

    .line 1224
    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getHomeController()Lcom/android/launcher3/home/HomeController;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/home/HomeController;->enterOverviewState(Z)V

    .line 1225
    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->getZeroPageSwitchLayout()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/home/Workspace;->setAlphaWithVisibility(Landroid/view/View;IZ)V

    .line 1226
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportZeroPageHome()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1227
    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->hideDefaultHomeIcon()V

    .line 1229
    :cond_0
    iput-boolean v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mIsFromZeroPageSetting:Z

    .line 1230
    return-void
.end method

.method getOffset()Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 529
    sget-object v0, Lcom/android/launcher3/home/ZeroPageController;->sVirtualScreenManager:Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;

    if-eqz v0, :cond_0

    .line 530
    sget-object v0, Lcom/android/launcher3/home/ZeroPageController;->sVirtualScreenManager:Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;->getOffset()Landroid/graphics/Point;

    move-result-object v0

    .line 532
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMessages()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 911
    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mVirtualScreenHandler:Lcom/android/launcher3/home/ZeroPageController$VirtualScreenHandler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mVirtualScreenHandler:Lcom/android/launcher3/home/ZeroPageController$VirtualScreenHandler;

    .line 912
    invoke-virtual {v1, v0}, Lcom/android/launcher3/home/ZeroPageController$VirtualScreenHandler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCurrentZeroPage()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 1270
    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v1, v0}, Lcom/android/launcher3/home/ZeroPageController;->isActiveZeroPage(Landroid/content/Context;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-object v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    .line 1271
    invoke-virtual {v2}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v2

    .line 1270
    invoke-virtual {v1, v2}, Lcom/android/launcher3/home/Workspace;->getScreenIdForPageIndex(I)J

    move-result-wide v2

    const-wide/16 v4, -0x12d

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 1272
    const/4 v0, 0x1

    .line 1274
    :cond_0
    return v0
.end method

.method onDestroy()V
    .locals 2

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mVirtualScreenHandler:Lcom/android/launcher3/home/ZeroPageController$VirtualScreenHandler;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mVirtualScreenHandler:Lcom/android/launcher3/home/ZeroPageController$VirtualScreenHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/ZeroPageController$VirtualScreenHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mVirtualScreenThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    .line 295
    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mVirtualScreenThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 297
    :cond_1
    return-void
.end method

.method removeCustomZeroPage(Z)V
    .locals 10
    .param p1, "force"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v4, -0x1

    const-wide/16 v8, -0x12d

    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 1123
    sget-boolean v1, Lcom/android/launcher3/home/ZeroPageController;->sEnableZeroPage:Z

    if-nez v1, :cond_1

    .line 1170
    :cond_0
    :goto_0
    return-void

    .line 1127
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mZeroPageBgView:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_2

    .line 1128
    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mZeroPageBgView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1129
    iput-object v7, p0, Lcom/android/launcher3/home/ZeroPageController;->mZeroPageBgView:Landroid/widget/LinearLayout;

    .line 1132
    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1, v8, v9}, Lcom/android/launcher3/home/Workspace;->getScreenWithId(J)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v0

    .line 1133
    .local v0, "zeroPageScreen":Lcom/android/launcher3/common/base/view/CellLayout;
    if-nez v0, :cond_3

    .line 1134
    sget-object v1, Lcom/android/launcher3/home/ZeroPageController;->TAG:Ljava/lang/String;

    const-string v2, "removeZeroPageContentPage - Expected custom zero page to exist"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1137
    :cond_3
    iget-object v5, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v1, v3}, Lcom/android/launcher3/home/ZeroPageController;->getZeroPageActiveState(Landroid/content/Context;Z)Z

    move-result v1

    if-eqz v1, :cond_7

    if-nez p1, :cond_7

    move v1, v2

    :goto_1
    invoke-virtual {v5, v1}, Lcom/android/launcher3/home/Workspace;->setZeroPageMarker(Z)V

    .line 1138
    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->getWorkspaceScreens()Lcom/android/launcher3/util/LongArrayMap;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Lcom/android/launcher3/util/LongArrayMap;->remove(J)V

    .line 1139
    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->getScreenOrder()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1141
    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/home/Workspace;->removeView(Landroid/view/View;)V

    .line 1142
    invoke-direct {p0}, Lcom/android/launcher3/home/ZeroPageController;->cancelZeroPagePreviewTask()V

    .line 1145
    iget-object v5, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v1, v3}, Lcom/android/launcher3/home/ZeroPageController;->getZeroPageActiveState(Landroid/content/Context;Z)Z

    move-result v1

    if-eqz v1, :cond_8

    move v1, v4

    :goto_2
    iget-object v6, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    .line 1146
    invoke-virtual {v6}, Lcom/android/launcher3/home/Workspace;->getDefaultPage()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    .line 1145
    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v5, v1, v3}, Lcom/android/launcher3/home/Workspace;->setDefaultPage(IZ)V

    .line 1148
    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v1, v3}, Lcom/android/launcher3/home/ZeroPageController;->getZeroPageActiveState(Landroid/content/Context;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    if-nez p1, :cond_4

    .line 1149
    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1, v4}, Lcom/android/launcher3/home/Workspace;->addMarkerForView(I)V

    .line 1150
    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/home/Workspace;->setMarkerStartOffset(I)V

    .line 1154
    :cond_4
    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->getRestorePage()I

    move-result v1

    const/16 v2, -0x3e9

    if-eq v1, v2, :cond_9

    .line 1155
    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-object v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher3/home/Workspace;->getRestorePage()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/launcher3/home/Workspace;->setRestorePage(I)V

    .line 1160
    :goto_3
    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mAppPreview:Lcom/android/launcher3/common/drawable/FastBitmapDrawable;

    if-eqz v1, :cond_6

    .line 1161
    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mAppPreview:Lcom/android/launcher3/common/drawable/FastBitmapDrawable;

    invoke-virtual {v1}, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 1162
    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mAppPreview:Lcom/android/launcher3/common/drawable/FastBitmapDrawable;

    invoke-virtual {v1}, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1164
    :cond_5
    iput-object v7, p0, Lcom/android/launcher3/home/ZeroPageController;->mAppPreview:Lcom/android/launcher3/common/drawable/FastBitmapDrawable;

    .line 1167
    :cond_6
    if-nez p1, :cond_0

    .line 1168
    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-object v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher3/home/Workspace;->getDefaultPage()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/home/Workspace;->updateDefaultHomePageIndicator(I)V

    goto/16 :goto_0

    :cond_7
    move v1, v3

    .line 1137
    goto/16 :goto_1

    :cond_8
    move v1, v3

    .line 1145
    goto :goto_2

    .line 1157
    :cond_9
    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-object v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher3/home/Workspace;->getNextPage()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/launcher3/home/Workspace;->setCurrentPage(I)V

    goto :goto_3
.end method

.method public restoreOffset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 850
    sget-object v0, Lcom/android/launcher3/home/ZeroPageController;->TAG:Ljava/lang/String;

    const-string v1, "restoreOffset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    invoke-direct {p0}, Lcom/android/launcher3/home/ZeroPageController;->cancelAnimation()V

    .line 853
    invoke-direct {p0}, Lcom/android/launcher3/home/ZeroPageController;->removeMsg()V

    .line 854
    invoke-direct {p0}, Lcom/android/launcher3/home/ZeroPageController;->resetTouchState()V

    .line 855
    iput-boolean v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mBezelSwipe:Z

    .line 856
    iput v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mMovingState:I

    .line 857
    iput v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mPreValues:I

    .line 858
    invoke-direct {p0}, Lcom/android/launcher3/home/ZeroPageController;->resetOffset()V

    .line 860
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportZeroPageHome()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    const-string v1, "start_from_zeropage"

    .line 861
    invoke-static {v0, v1}, Lcom/android/launcher3/Utilities;->getZeroPageKey(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 862
    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    const-string v1, "start_from_zeropage"

    invoke-static {v0, v2, v1}, Lcom/android/launcher3/Utilities;->setZeroPageKey(Landroid/content/Context;ZLjava/lang/String;)V

    .line 863
    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/home/ZeroPageProvider;->notifyChange(Landroid/content/Context;)V

    .line 865
    :cond_0
    return-void
.end method

.method setOffset(II)Z
    .locals 3
    .param p1, "offsetX"    # I
    .param p2, "offsetY"    # I

    .prologue
    .line 504
    sget-object v0, Lcom/android/launcher3/home/ZeroPageController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOffset - offsetX = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    sget-object v0, Lcom/android/launcher3/home/ZeroPageController;->sVirtualScreenManager:Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/launcher3/home/ZeroPageController;->sVirtualScreenManager:Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;->setOffset(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setup()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 166
    sget-boolean v3, Lcom/android/launcher3/home/ZeroPageController;->sEnableZeroPage:Z

    if-nez v3, :cond_0

    .line 204
    :goto_0
    return-void

    .line 170
    :cond_0
    new-instance v3, Landroid/os/HandlerThread;

    const-string v4, "VirtualScreenThread"

    invoke-direct {v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/launcher3/home/ZeroPageController;->mVirtualScreenThread:Landroid/os/HandlerThread;

    .line 171
    iget-object v3, p0, Lcom/android/launcher3/home/ZeroPageController;->mVirtualScreenThread:Landroid/os/HandlerThread;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Landroid/os/HandlerThread;->setPriority(I)V

    .line 172
    iget-object v3, p0, Lcom/android/launcher3/home/ZeroPageController;->mVirtualScreenThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 173
    new-instance v3, Lcom/android/launcher3/home/ZeroPageController$VirtualScreenHandler;

    iget-object v4, p0, Lcom/android/launcher3/home/ZeroPageController;->mVirtualScreenThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, p0, v4}, Lcom/android/launcher3/home/ZeroPageController$VirtualScreenHandler;-><init>(Lcom/android/launcher3/home/ZeroPageController;Lcom/android/launcher3/home/ZeroPageController;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/launcher3/home/ZeroPageController;->mVirtualScreenHandler:Lcom/android/launcher3/home/ZeroPageController$VirtualScreenHandler;

    .line 175
    new-instance v3, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;

    iget-object v4, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v3, v4}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/android/launcher3/home/ZeroPageController;->sVirtualScreenManager:Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;

    .line 178
    iget-object v3, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    const-string v4, "desktopmode"

    .line 179
    invoke-virtual {v3, v4}, Lcom/android/launcher3/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 180
    .local v1, "desktopModeManager":Lcom/samsung/android/desktopmode/SemDesktopModeManager;
    if-eqz v1, :cond_2

    invoke-static {}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->isDesktopMode()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 181
    sget-object v3, Lcom/android/launcher3/home/ZeroPageController;->TAG:Ljava/lang/String;

    const-string v4, "DeX mode - do not startActivityInVirtualScreen"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_1
    :goto_1
    new-instance v3, Lcom/android/launcher3/util/alarm/Alarm;

    invoke-direct {v3}, Lcom/android/launcher3/util/alarm/Alarm;-><init>()V

    iput-object v3, p0, Lcom/android/launcher3/home/ZeroPageController;->mThreadExitAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    .line 190
    iget-object v3, p0, Lcom/android/launcher3/home/ZeroPageController;->mThreadExitAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    new-instance v4, Lcom/android/launcher3/home/ZeroPageController$1;

    invoke-direct {v4, p0}, Lcom/android/launcher3/home/ZeroPageController$1;-><init>(Lcom/android/launcher3/home/ZeroPageController;)V

    invoke-virtual {v3, v4}, Lcom/android/launcher3/util/alarm/Alarm;->setOnAlarmListener(Lcom/android/launcher3/util/alarm/OnAlarmListener;)V

    .line 198
    iget-object v3, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 199
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, Lcom/android/launcher3/home/ZeroPageController;->mTouchSlop:I

    .line 200
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/android/launcher3/home/ZeroPageController;->mMaximumVelocity:I

    .line 202
    iget-object v3, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 203
    .local v2, "res":Landroid/content/res/Resources;
    const v3, 0x7f09015a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/launcher3/home/ZeroPageController;->mBezelSize:I

    goto :goto_0

    .line 183
    .end local v0    # "configuration":Landroid/view/ViewConfiguration;
    .end local v2    # "res":Landroid/content/res/Resources;
    :cond_2
    iget-object v3, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/launcher3/home/ZeroPageController;->getZeroPageActiveState(Landroid/content/Context;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 184
    iget-object v3, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {p0, v3, v5, v5}, Lcom/android/launcher3/home/ZeroPageController;->startActivityInVirtualScreen(Landroid/content/Context;ZZ)V

    .line 185
    invoke-direct {p0}, Lcom/android/launcher3/home/ZeroPageController;->bindVirtualScreen()V

    goto :goto_1
.end method

.method public startDownloadZeroPage(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1375
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1376
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "com.samsung.android.app.spage"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1377
    const-string v1, "samsungapps://ProductDetail/com.samsung.android.app.spage"

    .line 1378
    .local v1, "zeroPageUri":Ljava/lang/String;
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1379
    const-string v2, "type"

    const-string v3, "cover"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1380
    const v2, 0x14000020

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1382
    iget-object v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2, v0}, Lcom/android/launcher3/Launcher;->startActivity(Landroid/content/Intent;)V

    .line 1384
    .end local v1    # "zeroPageUri":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public startZeroPage()V
    .locals 10

    .prologue
    .line 1233
    sget-object v1, Lcom/android/launcher3/home/ZeroPageController;->TAG:Ljava/lang/String;

    const-string v2, "launch zeropage Activity."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    :try_start_0
    sget-object v1, Lcom/android/launcher3/home/ZeroPageController;->sVirtualScreenManager:Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;

    iget-object v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;->getDisplayIdByPackage(Ljava/lang/String;)I

    move-result v0

    .line 1236
    .local v0, "displayId":I
    const/4 v1, -0x1

    if-le v0, v1, :cond_1

    .line 1237
    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/android/launcher3/home/ZeroPageController;->startActivityInVirtualScreen(Landroid/content/Context;ZZ)V

    .line 1238
    invoke-direct {p0}, Lcom/android/launcher3/home/ZeroPageController;->bindVirtualScreen()V

    .line 1240
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 1241
    .local v8, "intent":Landroid/content/Intent;
    invoke-direct {p0}, Lcom/android/launcher3/home/ZeroPageController;->getZeroPagePackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/launcher3/home/ZeroPageController;->getZeroPageClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1242
    const/high16 v1, 0x10000000

    invoke-virtual {v8, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1244
    new-instance v9, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;

    invoke-direct {v9}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;-><init>()V

    .line 1245
    .local v9, "params":Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;
    iget v1, v9, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;->flags:I

    sget v2, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;->FLAG_BASE_ACTIVITY:I

    or-int/2addr v1, v2

    iput v1, v9, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;->flags:I

    .line 1246
    iput v0, v9, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;->baseDisplayId:I

    .line 1247
    sget-object v1, Lcom/android/launcher3/home/ZeroPageController;->sVirtualScreenManager:Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;

    invoke-virtual {v1, v8, v9}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;->updateMultiScreenLaunchParams(Landroid/content/Intent;Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;)Landroid/content/Intent;

    move-result-object v8

    .line 1248
    const-string v1, "fromHome"

    const/4 v2, 0x1

    invoke-virtual {v8, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1250
    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, v8}, Lcom/android/launcher3/Launcher;->startActivity(Landroid/content/Intent;)V

    .line 1251
    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getHomeController()Lcom/android/launcher3/home/HomeController;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/home/HomeController;->enterNormalState(ZZ)V

    .line 1253
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportZeroPageHome()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1254
    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v2, 0x1

    const-string v3, "start_from_zeropage"

    invoke-static {v1, v2, v3}, Lcom/android/launcher3/Utilities;->setZeroPageKey(Landroid/content/Context;ZLjava/lang/String;)V

    .line 1255
    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v1}, Lcom/android/launcher3/home/ZeroPageProvider;->notifyChange(Landroid/content/Context;)V

    .line 1258
    :cond_0
    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v1

    const-string v2, "ZPEN"

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 1260
    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/util/logging/GSIMLogging;->setZeroPageStartTime()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1267
    .end local v0    # "displayId":I
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v9    # "params":Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;
    :cond_1
    :goto_0
    return-void

    .line 1262
    :catch_0
    move-exception v7

    .line 1263
    .local v7, "e":Landroid/content/ActivityNotFoundException;
    sget-object v1, Lcom/android/launcher3/home/ZeroPageController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startZeroPage:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1264
    .end local v7    # "e":Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v7

    .line 1265
    .local v7, "e":Ljava/lang/NullPointerException;
    sget-object v1, Lcom/android/launcher3/home/ZeroPageController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startZeroPage:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method switchToZeroPage()V
    .locals 3

    .prologue
    .line 1219
    const/4 v0, 0x0

    const/16 v1, 0x12c

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/launcher3/home/ZeroPageController;->animatePage(IIZ)V

    .line 1220
    return-void
.end method

.method unBindVirtualScreen()V
    .locals 1

    .prologue
    .line 498
    sget-object v0, Lcom/android/launcher3/home/ZeroPageController;->sVirtualScreenManager:Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;

    if-eqz v0, :cond_0

    .line 499
    sget-object v0, Lcom/android/launcher3/home/ZeroPageController;->sVirtualScreenManager:Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;->unBindVirtualScreen()Z

    .line 501
    :cond_0
    return-void
.end method

.method public updatePageIndicatorForZeroPage(ZZ)V
    .locals 4
    .param p1, "visible"    # Z
    .param p2, "forceUpdate"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1194
    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0, v2}, Lcom/android/launcher3/home/ZeroPageController;->isActiveZeroPage(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1195
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->getPageIndicator()Lcom/android/launcher3/common/view/PageIndicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/view/PageIndicator;->getMarkerStartOffset()I

    move-result v0

    if-nez v0, :cond_1

    .line 1196
    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/home/Workspace;->setZeroPageMarker(Z)V

    .line 1197
    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/Workspace;->addMarkerForView(I)V

    .line 1198
    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/home/Workspace;->setMarkerStartOffset(I)V

    .line 1199
    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/Workspace;->setActiveMarker(I)V

    .line 1216
    :cond_0
    :goto_0
    return-void

    .line 1200
    :cond_1
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->getPageIndicator()Lcom/android/launcher3/common/view/PageIndicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/view/PageIndicator;->getMarkerStartOffset()I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 1201
    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/home/Workspace;->setMarkerStartOffset(I)V

    .line 1202
    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/home/Workspace;->removeMarkerForView(I)V

    .line 1203
    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/home/Workspace;->setZeroPageMarker(Z)V

    .line 1204
    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/Workspace;->setActiveMarker(I)V

    goto :goto_0

    .line 1205
    :cond_2
    if-eqz p2, :cond_0

    .line 1206
    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/Workspace;->setActiveMarker(I)V

    goto :goto_0

    .line 1209
    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->getPageIndicator()Lcom/android/launcher3/common/view/PageIndicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/view/PageIndicator;->getMarkerStartOffset()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 1210
    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/home/Workspace;->setZeroPageMarker(Z)V

    .line 1211
    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/home/Workspace;->setMarkerStartOffset(I)V

    .line 1212
    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/Workspace;->setActiveMarker(I)V

    .line 1213
    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/home/Workspace;->removeMarkerForView(I)V

    goto :goto_0
.end method

.method updateZeroPage(I)V
    .locals 7
    .param p1, "op"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 1287
    iget-object v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    if-eqz v2, :cond_1

    .line 1288
    iget-object v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v2, v3}, Lcom/android/launcher3/home/ZeroPageController;->getZeroPageActiveState(Landroid/content/Context;Z)Z

    move-result v0

    .line 1289
    .local v0, "active":Z
    const/4 v2, 0x3

    if-ne p1, v2, :cond_2

    .line 1290
    const/4 v0, 0x0

    .line 1291
    iput-boolean v3, p0, Lcom/android/launcher3/home/ZeroPageController;->mInstalled:Z

    .line 1297
    :cond_0
    :goto_0
    sget-object v2, Lcom/android/launcher3/home/ZeroPageController;->sZeroPageCompName:Landroid/content/ComponentName;

    invoke-direct {p0, v2}, Lcom/android/launcher3/home/ZeroPageController;->updateZeroPageAppMetadata(Landroid/content/ComponentName;)V

    .line 1298
    iget-object v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v2, v0}, Lcom/android/launcher3/home/ZeroPageController;->setZeroPageActiveState(Landroid/content/Context;Z)V

    .line 1300
    iget-object v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    const-wide/16 v4, -0x12d

    .line 1301
    invoke-virtual {v2, v4, v5}, Lcom/android/launcher3/home/Workspace;->getScreenWithId(J)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v1

    .line 1302
    .local v1, "zeroPageScreen":Lcom/android/launcher3/common/base/view/CellLayout;
    instance-of v2, v1, Lcom/android/launcher3/home/WorkspaceCellLayout;

    if-eqz v2, :cond_3

    .line 1303
    check-cast v1, Lcom/android/launcher3/home/WorkspaceCellLayout;

    .end local v1    # "zeroPageScreen":Lcom/android/launcher3/common/base/view/CellLayout;
    invoke-virtual {v1}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getZeroPageSwitch()Landroid/widget/Switch;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1304
    invoke-direct {p0}, Lcom/android/launcher3/home/ZeroPageController;->loadZeroPagePreviewBitmap()V

    .line 1312
    .end local v0    # "active":Z
    :cond_1
    :goto_1
    return-void

    .line 1292
    .restart local v0    # "active":Z
    :cond_2
    if-ne p1, v6, :cond_0

    .line 1293
    const/4 v0, 0x1

    .line 1294
    iput-boolean v6, p0, Lcom/android/launcher3/home/ZeroPageController;->mInstalled:Z

    goto :goto_0

    .line 1306
    .restart local v1    # "zeroPageScreen":Lcom/android/launcher3/common/base/view/CellLayout;
    :cond_3
    if-eqz v0, :cond_1

    .line 1307
    iget-object v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {p0, v2, v3, v6}, Lcom/android/launcher3/home/ZeroPageController;->startActivityInVirtualScreen(Landroid/content/Context;ZZ)V

    .line 1308
    invoke-direct {p0}, Lcom/android/launcher3/home/ZeroPageController;->bindVirtualScreen()V

    goto :goto_1
.end method
